<?php
 require('dbconn.php');

// Storing the received JSON into $json variable.
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
 
// Getting id from $obj object.
$id = $obj['id'];
// $id = 4;
$Sql_Query = "DELETE FROM user_registration WHERE id = '$id'";

if(mysqli_query($con,$Sql_Query)){
	 
    // If the record inserted successfully then show the message.
   $MSG = 'User Deleted Successfully' ;
    
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
