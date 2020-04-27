<?php
  header('content-type:text/html;charset=utf-8');
  include_once '../sql/sql.php';
  $id=$_GET['id'];
  $sql="delete from collectPage where id='$id'";
  my_edit($sql)
?>