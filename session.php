<?php
 session_start(); 
//verifica si la variable de session SESS_MEMBER_ID existe o no
if (!isset($_SESSION['id']) || (trim($_SESSION['id']) == '')) { ?>
<script>
window.location = "index.php";
</script>
<?php
}
$session_id=$_SESSION['id'];

$user_query = mysqli_query($con,"select * from users where user_id = '$session_id'")or die(mysqli_error($con));
$user_row = mysqli_fetch_array($user_query);
$user_username = $user_row['username'];
?>