<?php

$servername = "localhost";
$username = "modkeyst_reddragon";
$password = "modkeyst_reddragon";
$dbname = "modkeyst_reddragon";

$conn = mysqli_connect($servername,$username,$password,$dbname);

if(!$conn) {

die(" PROBLEM WITH CONNECTION : " . mysqli_connect_error());

}
  
?>