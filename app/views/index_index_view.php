<h2>All messages</h2>
<?php if (count($this->messages) > 0){
    foreach ($this->messages as $message){
        return "<div>".$message."</div>";
    }
}
