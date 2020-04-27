<?php
  header('content-type:text/html;charset=utf-8');
  include_once '../sql/sql.php';
  $info=$_POST;
  $username=$info['username'];
  $phone=$info['phone'];
  $password=$info['password'];
  $sql="select username,phone from user";
  $infos=my_query($sql);
  for($i=0;$i<count($infos);$i++){
    if($username==$infos[$i]['username']){
      $obj=[
        "status"=>101,
        "msg"=>"用户名重复"
      ];
      echo json_encode($obj);
      return;
    }
    if($phone==$infos[$i]['phone']){
      $obj=[
        "status"=>102,
        "msg"=>"该手机号已被注册"
      ];
      echo json_encode($obj);
      return;
    }
  }
  $obj=[
    "status"=>100,
    "msg"=>"注册成功"
  ];
  $sql="insert into user (username,phone,password) values ('$username','$phone','$password')";
  my_edit($sql);
  echo json_encode($obj);
?>