<?php

if ($_SERVER["REQUEST_METHOD"] == "POST")
{
  $i=0;
  $error = array();
  if (strlen($_POST["firstname"])==null or strlen($_POST["firstname"])<3 or strlen($_POST["firstname"])>20 or filter_var($_POST["firstname"],FILTER_VALIDATE_STRING)== false )
  {
   $error[$GLOBALS[i]] = "First Name Error";
   $GLOBALS[i]++;
 //  header("location:index.html");
  } 
  
  if (strlen($_POST["lastname"])==null or strlen($_POST["lastname"])<3 or strlen($_POST["lastname"])>20 or filter_var($_POST["lastname"],FILTER_VALIDATE_STRING)==false)
  {
   $error[$GLOBALS[i]] = "Last Name Error";
   //$i++;
    $GLOBALS[i]++;
  // header("location:index.html");
  } 


  {
    if (strlen($_POST["email"])==null or strlen($_POST["email"])<3 or strlen($_POST["email"])>40 or filter_var($_POST["email"],FILTER_VALIDATE_EMAIL)==false )
    {
    $error[$GLOBALS[i]] = "Email-Id is not valid";
    $GLOBALS[i]++;// header("location:index.html");
    }

    else
    {
      try 
      { 
      require("../connection.php");
      //$pdo = new PDO("mysql:host = localhost;dbname=testvkreate"); 
      //$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
      $sql = "SELECT email FROM user_table"; 
      $res = $pdo->query($sql); 
      if ($res->rowCount() > 0) 
        { 
          while ($row = $res->fetch()) 
          { 
            
            //  echo "".$row['remember_tocken'].""; 
            if ( $_POST['email']==$row['email'])
              {
                $error[$GLOBALS[i]] = "Email-Id already exist.";
                $GLOBALS[i]++;
                break;
              }
          } 
        unset($res); 
        } 
    
      } 
        
        catch (PDOException $e)
        { 
        die("ERROR: Could not able to execute $sql. " .$e->getMessage()); 
        } 
        unset($pdo); 
    }
 }

 
 if (strlen($_POST["gender"])==null or strlen($_POST["gender"])<1 or strlen($_POST["gender"])>1 )
 {
  $error[$GLOBALS[i]] = "Gender Error";
  $GLOBALS[i]++;
  // header("location:index.html");
  } 
 
 if (strlen($_POST["password"])==null or strlen($_POST["password"])<8 or strlen($_POST["password"])>30 )
 {
  $error[$GLOBALS[i]] = "Password entered Error";
  $GLOBALS[i]++;
  // header("location:index.html");
  } 

  if ($_POST["confirmpassword"] != $_POST["password"] )
 {
  $error[$GLOBALS[i]] = "Password entered is not matched ";
  $GLOBALS[i]++;
  // header("location:index.html");
  } 

    
    try 
    {
          if ( empty($error) )
          {
            require("D:/Programs/xampp/PHPMailer_5.2.4/PHPMailer_5.2.4/class.phpmailer.php");
            $mail = new PHPMailer(true);

            try 
            {
            $mail->SMTPDebug = 2;                                       // Enable verbose debug output
            $mail->isSMTP();                                            // Set mailer to use SMTP
            $mail->Host       = 'smtp.gmail.com';  // Specify main and backup SMTP servers
            $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
            $mail->Username   = 'sardarounak1997@gmail.com';                     // SMTP username
            $mail->Password   = 'cakixhxluakpcttl';                               // SMTP password
            $mail->SMTPSecure = 'tls';                                  // Enable TLS encryption, `ssl` also accepted
            $mail->Port       = 587;                                    // TCP port to connect to
            $mail->setFrom('sardarounak1997@gmail.com', 'Mailer'); 
            $mail->addAddress($_POST['email'] ,'Rounak Sarda');     // Add a recipient
            $tocken=md5(uniqid(rand(), true));
            $mail->isHTML(true);                                  // Set email format to HTML
            $mail->Subject = 'Please Verify';
            $mail->Body    = "Hello ".$_POST['firstname']."<br><a href=http://localhost/vkreate/test/verify.php?remember_tocken=".$tocken.">verify</a>" ;
            $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
            $mail->send();
            echo 'Message has been sent';  
            }        
            catch (Exception $e) 
            {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
            }
          // require("../connection.php");
            $pdo = new PDO("mysql:host = localhost;dbname=testvkreate"); 
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    ///////////////////////////////////////////////////////////////////////////////////////////////////// Email System End
            $sql = "INSERT INTO user_table (first_name, last_name,email,gender,remember_tocken,password)
            VALUES ('".$_POST['firstname']."', '".$_POST['lastname']."','".$_POST['email']."','".$_POST['gender']."','".$tocken."','".$_POST['password']."')";
    // use exec() because no results are returned
            $pdo->exec($sql);
            session_start();
            $_SESSION["message"] = "Account created successfully ! Please verify your Email-Id to login successfully";
            header("location:../login/index.php");
          }
        
      
          else
          {
   // echo "else";
   // die;
          session_start();
          $_SESSION["error"]= $error;
          header("location:index.php");
    //session_start();
    //$_SESSION["error"]
          }

    }
    
    catch(PDOException $e)
    {
      echo $sql . "<br>" . $e->getMessage();
    }
    
    $pdo = null;


}
?>



