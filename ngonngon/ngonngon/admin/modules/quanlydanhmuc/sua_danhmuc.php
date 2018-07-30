<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" href="css/them_sanpham.css" />
</head>

<body>
<?php
	include '../include/connect.php';
	


if(isset($_POST['btnthem']))
{
	$madm = $_GET['madm']; 
   $m="";
   if($_POST['tendm'] == NULL){
      echo "Xin vui lòng nhập tên danh mục<br />";
   }else{
      $m=$_POST['tendm'];
   }




   if($m)
   {
	  $m = $_POST['tendm'];
	  $sql="UPDATE danhmuc SET tendm='".$m."' WHERE madm='".$madm."'"; 
	  mysqli_query($conn,$sql);
	  mysqli_error();
      header("location:admin.php?admin=hienthidm");
      //exit();
   }
}

$query=mysqli_query($conn,"SELECT * FROM danhmuc WHERE madm= '{$_GET['madm']}' ");  
$row=mysqli_fetch_array($query);
?>

<form action="?admin=suadm&madm=<?php echo $row['madm']; ?>" method="post" name="frm" onsubmit="return kiemtra()"> 
	<table>
		<tr class="tieude_themsp">
			<td colspan=2 >Sửa Danh Mục</td>
		</tr>
		<tr>
			<td>Tên danh mục</td>
			<td><input type="text" disabled="disabled" name="madm" size="16" value="<?php echo $row['tendm']; ?>" /></td>
		</tr>
		<tr>
			<td>Sửa thành </td>
			<td><input type="text" name="tendm" value="<?php echo $row['tendm']; ?>" /> </td>
		</tr>
		<tr>
				
	   </tr>
	   <tr>
				<td colspan=2 class="input"> <input type="submit" name="btnthem" value="Sửa" />
		</tr>
	</table>
</form>
</body>
</html>

<script language="javascript">
 	function  kiemtra()
	{
	    if(frm.tendm.value=="")
		{
			alert("Bạn chưa nhập tên danh mục. Vui lòng kiểm tra lại");
			frm.tendm.focus();
			return false;	
		}
	}
 </script>