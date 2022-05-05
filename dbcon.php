<?php

$con = mysqli_connect("localhost","root","","SRA");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Error conectando a la Base de Datos: " . mysqli_connect_error();
  }
  mysqli_query($con,"SET NAMES 'utf8'");
?>
