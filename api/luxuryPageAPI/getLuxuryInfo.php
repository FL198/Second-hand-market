<?php
  header('content-type:text/html;charset=utf-8');
  include_once '../sql/sql.php';
  $sql="select * from luxuryPage";
  $infos=my_query($sql);
  echo json_encode($infos);
?>