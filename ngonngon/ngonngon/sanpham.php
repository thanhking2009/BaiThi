﻿					

   
		<?php 
	   $sql="select * from danhmuc  order by madm";
	   $result=mysqli_query($conn,$sql);
	
	 
	    while($row=mysqli_fetch_array($result))
		{ 
		?> 	<div class="sanpham"> <?php 
			$sql1="select * from sanpham where madm={$row['madm']} order by idsp  LIMIT 0,6";
			$kq=mysqli_query($conn,$sql1);
			$dem = mysqli_num_rows($kq);
			if($dem>0)
			{
			?>
				
		<h2><?php echo $row["tendm"];?></h2> 
			<div id="xemthem">
				<p><a href="index.php?madm=<?php echo $row['madm']?>">Xem thêm >></a></p>
			</div>
		<?php } ?>
    	<div class="sanphamcon">
			<?php while($rows=mysqli_fetch_array($kq))
			{ ?>
			<div class="monan">
						
									<a href="index.php?content=chitietsp&idsp=<?php echo $rows['idsp'] ?>"><img  src="img/uploads/<?php echo $rows['hinhanh'];?>"></a><br>					
									<p><a href="index.php?content=chitietsp&idsp=<?php echo $rows['idsp'] ?>" ><?php echo $rows['tensp'];?></a></p><br>
									<h4><?php echo number_format(($rows['gia']),0,",",".");?></h4>
									<div class="button">
										<ul>
											<li>
												<h5><a href="index.php?content=chitietsp&idsp=<?php echo $rows['idsp'] ?>" class="chitiet"><button>Chi tiết</button></a></h5>
											</li>
											<li>
												<h5><a href="index.php?content=cart&action=add&idsp=<?php echo $rows['idsp'] ?>"><button>Cho vào giỏ</button></a></h5>
											</li>
										</ul>
									</div><!-- End .button-->
			</div><!-- End .monan-->
			
			<?php } ?>
			
		</div>
		</div><!-- end san pham-->
<?php }?>