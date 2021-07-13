<?php


namespace controllers;


use models\MessageModel;

class ApiController
{
    public function getallmessages()
    {
        $messages = new MessageModel();
        $msg = $messages->all();
        $json = json_encode($msg);
        header("Content_Type: application/json");
        echo $json;
    }

    public function createmsg()
    {
        $messages = new MessageModel();
        $msg = filter_input(0, 'msg');
        $author = self::getname();
        $date = date("Y-m-d H:i:s");
        if($msg !== '' && $author !== ''){
            $messages->add($msg, $author, $date);
            header($_SERVER["SERVER_PROTOCOL"] . ' 201 Created', true, 201);
        } else {
            header($_SERVER["SERVER_PROTOCOL"] . ' 204 No Content', true, 204);
        }
    }

    public function getname(){
        $user = filter_input(INPUT_POST, 'author');
        header($_SERVER["SERVER_PROTOCOL"] . ' 201 Created', true, 201);
        return $user;
    }
}