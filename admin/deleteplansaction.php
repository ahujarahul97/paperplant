<?php
try
{
require("../connection.php");
$sql="DELETE FROM plans where id='".$_GET['id']."'";
$pdo->exec($sql);
header("location:plans.php");
die;
}
catch(Exception $e)
{
	echo $e;
} 
?>


