<?php 
try
{
	session_start();

	$text="".$_POST['description']."";
	 
	require("../connection.php");

	
	$sql = "UPDATE plans SET name='".$_POST['name']."',status=".$_POST['status'].",cost=".$_POST['cost'].",description='".$text."' WHERE id=".$_SESSION['id'].""; 
    $pdo->exec($sql);

    header("location:plans.php");

}
catch(Exception $e)
{
echo $e;
}
?>