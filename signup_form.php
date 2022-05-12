<?php
include('dbcon.php');
session_start();
$username = $_POST['username'];
$password = $_POST['password'];
$nombre = $_POST['firstname'];
$apellido = $_POST['lastname'];

$sql = "INSERT INTO users (nombre, apellido, username, password) VALUES (?,?,?,?)";
$stmt= $con->prepare($sql);
$stmt->bind_param("ssss", $nombre, $apellido, $username, $password);
$stmt->execute();

$query = mysqli_query($con,"SELECT * from users where username='$username' and nombre='$nombre' and apellido='$apellido'")or die(mysqli_error($con));
$row = mysqli_fetch_array($query);
$id = $row['user_id'];

$count = mysqli_num_rows($query);
if ($count > 0){
	mysqli_query($con,"update users set password = '$password' where user_id = '$id'")or die(mysqli_error($con));
	$_SESSION['id']=$id;
	echo 'true';
}else{
echo 'false';
}
?>