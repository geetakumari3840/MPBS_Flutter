<?php
 require('dbconn.php');


// Storing the received JSON into $json variable.
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
 
// Getting name from $obj object.
//$id = $obj['name'];
$name = 'Ajay Kumar';

// Getting email from $obj object.
$email = $obj['email'];

// Getting password from $obj object.
$password = $obj['password'];

// Getting id from $obj object.
//$id = $obj['id'];
 $id = 26;


$Sql_Query = "UPDATE user_registration SET name = '$name', email = '$email', password = '$password' WHERE id = '$id'";

if(mysqli_query($con,$Sql_Query)){
	 
    // If the record inserted successfully then show the message.
   $MSG = 'User data Update Successfully' ;
    
   // Converting the message into JSON format.
   $json = json_encode($MSG);
    
   // Echo the message.
    echo $json ;

}
else{

   echo 'Try Again';

}
mysqli_close($con);
?>
