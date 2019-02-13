<?php
$qty = isset($_GET["qty"])? $_GET["qty"]: null;
$currentPage = isset($_GET["currentPage"])? $_GET["currentPage"]: 1;
$a = isset($_GET["a"])? $_GET["a"]: null;
$zt = isset($_GET["zt"])? $_GET["zt"]: null;
$b = isset($_GET["b"])? $_GET["b"]: null;
$c = isset($_GET["c"])? $_GET["c"]: null;


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
    
    if($a==null){
        $info = mysqli_query($conn,'select * from list');
    }
    if($a!=null){
        if($c==null){
            $info = mysqli_query($conn,'select * from list where id>='.$a.' and id<'.$a.'+7');
        }
        if($c==1){
            $info = mysqli_query($conn,'select * from list where id>='.$a.' and id<'.$a.'+4');
        }
        if($c==2){
            $info = mysqli_query($conn,'select * from list where id>='.$a.' and id<'.$a.'+6');
        }
    }
    if($zt==1){
        if($b==1){
            $info = mysqli_query($conn,'select * from list ORDER BY price DESC');
        }
        if($b==0){
            $info = mysqli_query($conn,'select * from list ORDER BY price');
        }
    }
    if($zt==2){
        if($b==1){
            $info = mysqli_query($conn,'select * from list ORDER BY rd DESC');
        }
        if($b==0){
            $info = mysqli_query($conn,'select * from list ORDER BY rd');
        }
    }

    

    // $len=mysql_query("select count(*) from list"); //获得记录总数



    $newArr = array();

    while($arry = mysqli_fetch_array($info))
    {
         array_push($newArr,$arry);
    }
    $len = count($newArr);
    $data = array_slice($newArr,($currentPage-1)*$qty,$qty);
    $res = array(
        "data" => $data,
        "len" => $len,
        "qty" => $qty,
        "currentPage" => $currentPage
    );



    // var_dump($newArr);
    // $newArr = json_decode($newArr,true);
    // $len = count($newArr);
    // $data = array_slice($newArr,($currentPage-1)*$qty,$qty);
    // $res = array(
    //     "data" => $data,
    //     "len" => $len,
    //     "qty" => $qty,
    //     "currentPage" => $currentPage
    // );
    exit(json_encode($res,JSON_UNESCAPED_UNICODE));
?>