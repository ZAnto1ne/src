<?php
$id = isset($_GET["id"])? $_GET["id"]: null;


$servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'user';
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        var_dump($conn->connect_error);
    }

    //2.查询前设置编码，防止输出乱码
    $conn->set_charset('utf8');


    $info = $conn->query('select * from list where id='.$id.'');

    // var_dump($info)
    
    $newArr = array();
    while($arry = mysqli_fetch_array($info,MYSQLI_ASSOC))
        {
           array_push($newArr,$arry);
        }

   exit(json_encode($newArr));
?>