<?php

$servername = "mydb";

$username = "root";

$password = "root";

$dbname = "mydb";



// Create connection

$conn = mysqli_connect($servername, $username, $password, $dbname);



// Check connection

if (!$conn) {

  die("Connection failed: " . mysqli_connect_error());

}

echo "Connected successfully";



$sql = "SELECT * FROM user";

$result = mysqli_query($conn, $sql);



if (mysqli_num_rows($result) > 0) {

  // output data of each row

  while($row = mysqli_fetch_assoc($result)) {

    echo "id: " . $row["uid"]. " - Name: " . $row["na"]. "<br>";

  }

} else {

  echo "0 results";

}

mysqli_close($conn);

?>
