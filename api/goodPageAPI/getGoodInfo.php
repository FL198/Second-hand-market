<?php
  header('content-type:text/html;charset=utf-8');
  include_once '../sql/sql.php';
  $sql="select * from goodPage";
  $info=my_query($sql);
  echo json_encode($info[0]);
?>