<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>เดลี่เบเกอรี่</title>
</head>

<body>
<h1>เดลี่เบเกอรี่</h1>

<?php 
include_once("connectdb.php");	// เชื่อมต่อฐานข้อมูล

$sql = "SELECT * FROM `products` ORDER BY `products`.`p_id` ASC";
$rs = mysqli_query($conn, $sql);

while ($data = mysqli_fetch_array($rs)) {
	$img = $data['p_id'].".".$data['p_ext'];
	echo "<img src='images/{$img}' width='240'> <br>";
	echo $data['p_id']."<br>";	
	echo "ชื่อสินค้า: ".$data['p_name']."<br>";	
	echo $data['p_detall']."<br>";	
	echo $data['p_price']." บาท <hr>";	
}

mysqli_close($conn);
?>
</body>
</html>