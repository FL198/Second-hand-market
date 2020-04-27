<?php
  header('content-type:text/html;charset=utf-8');
  include_once '../sql/sql.php';
  $info=$_POST;
  $username=$info['username'];
  $password=$info['password'];
  $sql="select * from user";
  $infos=my_query($sql);
  for($i=0;$i<count($infos);$i++){
    if($username==$infos[$i]['username']){
      if($password!=$infos[$i]['password']){
        $obj=[
          'status'=>101,
          'message'=>'密码错误'
        ];
        echo json_encode($obj);
        return;
      }else{
        $obj=[
          'status'=>100,
          'message'=>'登录成功'
        ];
        session_start();
        $_SESSION['username']=$username;
        echo json_encode($obj);
        return;
      }
    }
  }
  $obj=[
    'status'=>102,
    'message'=>'不存在该用户名'
  ];
  echo json_encode($obj);
?>