<?php
	$tenmaychu='localhost';
	$tentaikhoan='root';
	$pass='';
	$csdl='ngonngon';
	$conn=mysqli_connect($tenmaychu,$tentaikhoan,$pass) or die('Ko kết nối được');
	mysqli_select_db($conn,$csdl);
