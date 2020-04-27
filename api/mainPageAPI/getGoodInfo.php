<?php
  header('content-type:text/html;charset=utf-8');
  include_once '../sql/sql.php';
  $goodIndex=$_GET['goodIndex'];
  $type=$_GET['type'];
  $sql="select * from mainPage where type='$type' and goodIndex='$goodIndex'";
  $info=my_query($sql)[0];
  $name=$info['name'];
  $price=$info['price'];
  $comment=$info['comment'];
  $src=$info['src'];
  $head=$info['head'];
  $sql1="update goodPage set name='$name',price='$price',comment='$comment',src='$src',head='$head' where id=0";
  my_edit($sql1);
?>