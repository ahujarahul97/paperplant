<?php
	
	$description=$_POST['description'];
//$description ="<pre>".addslashes( $description )."</pre>";

	require("../connection.php");
	$description=str_replace("'","\'",$description);
	//$description=cleanInputSQL($_POST['description']);
	$sql = "INSERT INTO plans (name, cost,description,status)
            VALUES ('".$_POST['planname']."', '".$_POST['cost']."','".$description."','".$_POST['r1']."')";
            $pdo->exec($sql);
    header("location:plans.php");        


?>

