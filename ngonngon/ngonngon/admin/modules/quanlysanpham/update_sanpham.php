<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
 <?php
 include ('../include/connect.php');
 include ('function/function.php');
		$tensp=$_POST['tensp'];
		$gia=$_POST['gia'];
		$chitiet=$_POST['chitiet'];

	   
	  $upload_image="../img/uploads/";
		$file_tmp= isset($_FILES['hinhanh']['tmp_name']) ?$_FILES['hinhanh']['tmp_name'] :"";
		$file_name=isset($_FILES['hinhanh']['name']) ?$_FILES['hinhanh']['name'] :"";
		$file_type=isset($_FILES['hinhanh']['type']) ?$_FILES['hinhanh']['type'] :"";
		$file_size=isset($_FILES['hinhanh']['size']) ?$_FILES['hinhanh']['size'] :"";
		$file_error=isset($_FILES['hinhanh']['error']) ?$_FILES['hinhanh']['error'] :"";
		//Lay gio cua he thong
		$dmyhis= date("Y").date("m").date("d").date("H").date("i").date("s");
		//Lay ngay cua he thong
		$ngay=date("Y").":".date("m").":".date("d").":".date("H").":".date("i").":".date("s");
		$file__name__=$dmyhis.$file_name;
		$soluong=$_POST['soluong'];
		$daban=$_POST['daban'];
		$madm=$_POST['danhmuc'];
		$idsp=$_GET['idsp'];
		if($_FILES['hinhanh']['name'] != "")
		{
		move_uploaded_file($file_tmp,$upload_image.$file__name__);
	   
	$sql_update=("
		UPDATE sanpham SET 
							tensp='$tensp',
							soluong='$soluong',
							daban='$daban',
							hinhanh='$file__name__',
							chitiet='$chitiet',
							gia='$gia',
							madm='$madm'
						WHERE idsp='$idsp'
	");
	}
    else {
	   	$sql_update=("
		UPDATE sanpham SET 
							tensp='$tensp',
							soluong='$soluong',
							daban='$daban',
							chitiet='$chitiet',
							gia='$gia',
							madm='$madm'
						WHERE idsp='$idsp'
	");
	}

$update=mysqli_query($conn,$sql_update);
		if($update)
{
		redirect("admin.php?admin=hienthisp", "Bạn đã sửa thành công sản phẩm.", 2 );
	}
else {
	redirect ("admin.php?admin=suasp&idsp=$idsp'", "Sửa thất bại", 2);
	}
	
?>
