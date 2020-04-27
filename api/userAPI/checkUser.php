<?php
  header('content-type:text/html;charset=utf-8');
  session_start();
  if(empty($_SESSION['username'])){
    echo 'false';
    return;
  }
  echo 'true';
?>