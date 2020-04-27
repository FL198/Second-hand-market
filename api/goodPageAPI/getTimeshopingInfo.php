<?php
  header('content-type:text/html;charset=utf-8');
  include_once '../sql/sql.php';
  $id=$_GET['id'];
  $sql="select * from time_shoppingPage where id='$id'";
  $info=my_query($sql)[0];
  $name=$info['name'];
  $price=$info['price'];
  $comment=$info['comment'];
  $src=$info['src'];
  $sql1="update goodPage set name='$name',price='$price',comment='$comment',src='$src' where id=0";
  my_edit($sql1);
?>