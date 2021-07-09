<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/css/index.css">
</head>
<body>
<header>
    <h1>Messenger</h1>
</header>
<?php
include_once 'app' . DIRECTORY_SEPARATOR . 'views' . DIRECTORY_SEPARATOR . $pageView;
?>
<footer>
    <form name="msg_create">
        <textarea name="msg" placeholder="Enter new message" id="text"></textarea>

        <input type="submit" value="Send" id="send-input">
    </form>
</footer>
<script src="/js/ajax.js"></script>
</body>
</html>