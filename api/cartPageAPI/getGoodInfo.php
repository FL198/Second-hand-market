<?php
  header('content-type:text/html;charset=utf-8');
  include_once '../sql/sql.php';
  $number=$_GET['number'];
  $sql="select * from goodPage where id='$id'";
  $info=my_query($sql)[0];
  $name=$info['name'];
  $price=$info['price'];
  $src=$info['src'];
  $comment=$info['comment'];
  $sql1="insert into cartPage (name,src,price,comment,number) values ('$name','$src','$price','$comment','$number')";
  my_edit($sql1);
?>