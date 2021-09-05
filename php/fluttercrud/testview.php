<?php
$servername = "localhost";
$username = "id17405903_indiampbs";
$password = "M8734.8734ss";
//Define your MySQL Database Name here.
$DatabaseName = "id17405903_mpbsgzb";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $DatabaseName);
$result=mysqli_query($conn,"SELECT * from user");
$json_array = array();
while ($row = mysqli_fetch_assoc($result)) {
    $json_array[] = $row;
}
print(json_encode($json_array));
mysqli_close($conn);
?>