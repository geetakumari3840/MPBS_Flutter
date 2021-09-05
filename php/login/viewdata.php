<?php
 
require('dbconn.php'); 

// Creating SQL command to fetch all records from Fruits Table.
$sql = "SELECT * FROM user_registration";
 
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
