<?php
  header('content-type:text/html;charset=utf-8');
  include_once '../sql/sql.php';
  $id=$_GET['id'];
  echo $id;
  $sql="select * from digicamPage where id='$id'";
  $info=my_query($sql)[0];
  $name=$info['name'];
  $price=$info['price'];
  $comment=$info['comment'];
  $src=$info['src'];
  $sql1="insert into collectPage (name,price,comment,src) values ('$name','$price','$comment','$src')";
  my_edit($sql1);
?>