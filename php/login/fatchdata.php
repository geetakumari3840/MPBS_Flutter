<?php
 
require('dbconn.php'); 

// Storing the received JSON into $json variable.
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
 
// Getting id from $obj object.
$id = $obj['id'];
// $id = 33;

// Creating SQL command to fetch all records from Fruits Table.
$sql = "SELECT * FROM user_registration WHERE id = '$id'";
 
$result = $con->query($sql);
 
if ($result->num_rows >0) {
 
 
 while($row[] = $result->fetch_assoc()) {
 
 $item = $row;
 
 $json = json_encode($item);
 
 }
 
} else {
 echo "No Data Found.";
}
 echo $json;
$con->close();
 
?>
