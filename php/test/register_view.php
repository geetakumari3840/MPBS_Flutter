<?php
 
//Define your Server host name here.
$HostName = "localhost";
 
//Define your MySQL Database Name here.
$DatabaseName = "id17405903_mpbsgzb";
 
//Define your Database User Name here.
$HostUser = "id17405903_indiampbs";
 
//Define your Database Password here.
$HostPass = "M8734.8734ss"; 
 
// Creating connection
$conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);
 
if ($conn->connect_error) {
 
 die("Connection failed: " . $conn->connect_error);
} 
 
// Creating SQL command to fetch all records from Fruits Table.
$sql = "SELECT * FROM user_registration";
 
$result = $conn->query($sql);
 
if ($result->num_rows >0) {
 
 
 while($row[] = $result->fetch_assoc()) {
 
 $item = $row;
 
 $json = json_encode($item);
 
 }
 
} else {
 echo "No Data Found.";
}
 echo $json;
$conn->close();
 
?>