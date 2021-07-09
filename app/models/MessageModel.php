<?php


namespace models;

include_once "config.php";

class MessageModel
{
    public $db;

    public function __construct()
    {
        $this->db = new \mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    }

    public function all()
    {
        $sql = 'select * from messages order by `date`;';
        $result = $this->db->query($sql);
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function add($message, $author, $date){
        $sql = "insert into messages (message, author, `date`) value ('$message', '$author', '$date')";
        $this->db->query($sql);
    }
}