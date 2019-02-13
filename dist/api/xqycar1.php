<?php
    $id = isset($_POST["id"])?$_POST["id"]:null;
    $name = isset($_POST["name"])?$_POST["name"]:null;
    $allqty = isset($_POST["allqty"])?$_POST["allqty"]:null;
    $xg = isset($_POST["xg"])?$_POST["xg"]:0;



    

    

    // 1.创建连接,测试是否连接成功
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

    //3.执行插入语句
    
    if($xg!=null){
        $res = $conn->query("update buy set qty=$allqty,allprice=price*qty where name= $name AND id= $id AND buy=0");
        $info = $conn->query('select * from buy where name ="'.$name.'"AND buy="0"');

        $newArr = array();
        while($arry = mysqli_fetch_array($info,MYSQLI_ASSOC)){
           array_push($newArr,$arry);
        }

        exit(json_encode($newArr));
        // echo 2;
    }
    

    


    
    


?>