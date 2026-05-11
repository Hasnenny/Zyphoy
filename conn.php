<?php

$servername = "sql308.infinityfree.com";
$username = "if0_41799775";
$password = "Noidfm5gRHRu";
$dbname = "if0_41799775_123";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if(!$conn) {
    die("PROBLEM WITH CONNECTION : " . mysqli_connect_error());
}