<?php
if(isset($_GET['timkiem']))
{
  $tim=$_GET['timkiem'];
  switch($_GET['gia'])
  {
	case "1":
		$sql="select * FROM sanpham WHERE tensp like '%".$tim."%' and (gia between '0' and '30000')";	
	break;
	case "2":
		$sql="select * FROM sanpham WHERE tensp like '%".$tim."%'  and (gia between '30000' and '50000')";	
	break;
	case "3":
		$sql="select * FROM sanpham WHERE tensp like '%".$tim."%'  and (gia >= '50000')";	
	break;
	default:
	  $sql="select * FROM sanpham WHERE tensp like '%$tim%' ";	
	  break;
  }
  
 
	$rows=mysqli_query($conn,$sql);
	$tong=mysqli_num_rows($rows);
    if($tong<0)
     echo"Không tìm được sản phẩm nào";
    else
      {
    ?>
	<div class="sanpham">	
	<h2>Từ khóa <font color="yellow"><b><?php echo $tim ?></b></font> : có <?php echo $tong?> kết quả </h2>
	<div class="sanphamcon">
    <?php

        while($row=mysqli_fetch_array($rows))
        {
?>
		
		<div class="monan">

			<a href="index.php?content=chitietsp&idsp=<?php echo $row['idsp'] ?>"><img  src="img/uploads/<?php echo $row['hinhanh'];?>"></a>					
			<p><a href="index.php?content=chitietsp&idsp=<?php echo $row['idsp'] ?>" ><?php echo $row['tensp'];?></a></p>
			<h4><?php echo number_format(($row['gia']),0,",",".");?></h4>
				<div class="button">
										<ul>
											<li>
												<h5><a href="index.php?content=chitietsp&idsp=<?php echo $row['idsp'] ?>" class="chitiet"><button>Chi tiết</button></a></h5>
											</li>
											<li>
												<h5><a href="index.php?content=cart&action=add&idsp=<?php echo $row['idsp'] ?>"><button>Cho vào giỏ</button></a></h5>
											</li>
										</ul>
									</div><!-- End .button-->
		</div><!-- End .monan-->
	<?php } ?>
		</div><!-- End .sanphamcon-->
	</div><!-- End .sanpham-->
 
<?php 
}}
?>
