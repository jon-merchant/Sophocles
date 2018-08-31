<?php
    $link = mysqli_connect('localhost', 'root', 'root', 'sophocles');

    if (!$link) {
        die('Connect Error (' . mysqli_connect_errno() . ') ' . mysqli_connect_error());
    }

?>