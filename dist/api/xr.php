<?php
    $zt = isset($_GET["zt"])? $_GET["zt"]: null;
    $dj = isset($_GET["dj"])? $_GET["dj"]: null;
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
    
    if($id!=null){
        $info = $conn->query('select * from list where id=$id');
    }
    if($zt==1){
        if($dj==1){
            $info = $conn->query('select * from list where id>=40 and id<44');
        }
        if($dj==2){
            $info = $conn->query('select * from list where id>=36 and id<40');
        }
        if($dj==3){
            $info = $conn->query('select * from list where id>=32 and id<36');
        }
    }
    if($zt==2){
        if($dj==1){
            $info = $conn->query('select * from list where id>=16 and id<22');
        }
        if($dj==2){
            $info = $conn->query('select * from list where id>=22 and id<28');
        }
        if($dj==3){
            $info = $conn->query('select * from list where id>=28 and id<34');
        }
        if($dj==4){
            $info = $conn->query('select * from list where id>=1 and id<8');
        }
        if($dj==5){
            $info = $conn->query('select * from list where id>=8 and id<14');
        }
        if($dj==6){
            $info = $conn->query('select * from list where id>=12 and id<18');
        }
    }


    $newArr = array();

    while($arry = mysqli_fetch_array($info,MYSQLI_ASSOC))
    {
       array_push($newArr,$arry);
   }

   exit(json_encode($newArr));
?>