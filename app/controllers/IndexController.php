<?php


namespace controllers;


use core\View;
use models\MessageModel;

class IndexController
{
    public function index()
    {
        $messages = new MessageModel();
        $view = new View();
        $view->messages = $messages->all();
        session_start();
        $view->render('index_index_view.php', 'default_view.php');
    }
}