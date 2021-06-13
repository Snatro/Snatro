<?php 
header('Content-Type: text/html; charset=utf-8');
 $servername = "localhost"; 
 $username = "root";
  $password = ""; 
  $basename = "sopitas"; 
  // Create connection
  global $dbc;
  $dbc = mysqli_connect($servername, $username, $password, $basename) or 
   die('Error connecting to MySQL server.'.mysqli_error()); 
 
?>