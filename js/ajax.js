function getAllMsg() {
    let xhr = new XMLHttpRequest();
    xhr.open('GET', '/api/getallmessages');
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                let msgJSON = xhr.responseText;
                let messages = JSON.parse(msgJSON);
                let tasksHTML = messages.reduceRight(function (total, msg) {
                    return total + '<div class="msg">' + msg.message + '<div id="char">'+'<div class="author">'+msg.author+'</div>' + '<div class="date">'+msg.date.substr(0,16)+'</div>'+ '</div>' +'</div>';
                }, '<div>') + '</div>';
                let taskDiv = document.getElementById('messages');
                taskDiv.innerHTML = tasksHTML;
            } else {
                console.error('some problems with get all messages');
            }
        }
    };
    xhr.send();
}


getAllMsg();

window.onload = function (){
    let author = prompt("To publish your message enter your name");
    if(author === '' || author === null){
        do{
            alert("Invalid name");
            author = prompt("To publish your message enter your name");
        }while(author === ''|| author === null);
    }
    sessionStorage.setItem('name', author);
};


let createForm = document.forms.msg_create;
createForm.onsubmit = function (event) {
    let msg = document.getElementById('text').value;
    let author = sessionStorage.getItem('name');
    let xhr = new XMLHttpRequest();
    xhr.open('POST', '/api/createmsg');
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 201) {
                getAllMsg();
            } else {
                console.error('some problems with create message');
            }
        }
    };
    xhr.setRequestHeader('Content-Type', "application/x-www-form-urlencoded");
    xhr.send('msg='+msg+'&author='+author);
    document.getElementById('text').value = '';
    event.preventDefault();
};