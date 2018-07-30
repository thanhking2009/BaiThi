

<?php

if(isset($_GET['admin']))
	switch($_GET['admin'])
	{
		case 'hienthisp':
			include ("modules/quanlysanpham/sanpham.php");
			break;
		case 'themsp':
			include ("modules/quanlysanpham/them_sanpham.php");
			break;
		case 'suasp':
			include ("modules/quanlysanpham/sua_sanpham.php");
			break;
		case 'hienthidm':
			include ("modules/quanlydanhmuc/danhmuc.php");
			break;
		case 'themdm':
			include ("modules/quanlydanhmuc/them_danhmuc.php");
			break;
		case 'xoadm':
			include ("modules/quanlydanhmuc/xoa_danhmuc.php");
			break;
		case 'suadm':
			include ("modules/quanlydanhmuc/sua_danhmuc.php");
			break;
		case 'hienthind':
			include ("modules/quanlynguoidung/nguoidung.php");
			break;
		case 'themnd':
			include ("modules/quanlynguoidung/them_nguoidung.php");
			break;
		case 'suand':
			include ("modules/quanlynguoidung/sua_nguoidung.php");
			break;
		case 'xulynd':
			include ("modules/quanlynguoidung/update_nguoidung.php");
			break;
		case 'themnd':
			include ("modules/quanlynguoidung/them_nguoidung.php");
			break;
		case 'xulyhd':
			include ("modules/quanlyhoadon/xulyhd.php");
			break;
		case 'hienthihd':
			include ("modules/quanlyhoadon/hoadon.php");
			break;
		case 'chitiethoadon':
			include ("modules/quanlyhoadon/chitiethoadon.php");
			break;
		case 'xulysp':
			include ("modules/quanlysanpham/update_sanpham.php");
			break;
		default:
			include ("modules/quanlysanpham/sanpham.php");
			break;
	}
	else 
	{
	?>
		<div id="admincon">
			
			<div id="sanphammoi">
				<table>
				<?php $ngay=date('Y-m-d'); ?>
					<tr class="sanphammoitheongay">
						<td colspan=6>Đơn hàng cần được xử lý</td>
					</tr>
					<tr class="tieudespmoi">
						<td>STT</td>
						<td>Họ tên</td>
						<td>Địa chỉ</td>
						<td>Điện thoại</td>
						<td>Ngày đặt hàng</td>
					</tr>
					<?php 
						$i=1;
						$sql=mysqli_query($conn,"select * from hoadon where trangthai='1'");
						while($row=mysqli_fetch_array($sql))
						{
					
					?>
					<tr>
						<td><?php echo $i++; ?></td>
						<td><?php echo $row['hoten'] ?></td>
						<td><?php echo $row['diachi'] ?></td>
						<td><?php echo $row['dienthoai'] ?></td>
						<td><?php echo $row['ngaydathang'] ?></td>
					</tr>
					<?php } ?>
					<tr>
						<td colspan=6 align="right" style="padding-right:20px; height:30px;"><a href="admin.php?admin=hienthihd">Chi tiết</a></td>
					</tr>
				</table>
			</div>
		</div>
	<?php 
	}

?>