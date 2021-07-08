<?php


namespace controllers;


use core\View;

class ApiController
{
    public function index()
    {
        $view = new View();
        $view->render('index_index_view.php', 'default_view.php');
    }
}