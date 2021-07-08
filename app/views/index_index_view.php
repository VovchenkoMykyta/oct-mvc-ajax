<h2>All messages</h2>
<?php if (count($this->messages) > 0){
    foreach ($this->messages as $message){
        echo "<div>".$message['massege']."</div>";
        echo "<div>".$message['author']."</div>";
        echo "<div>".$message['date']."</div>";
    }
}
