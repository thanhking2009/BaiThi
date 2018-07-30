	<?php 
		if(isset($_GET['action']))
    {    $action=$_GET['action'];}
    else $action=""; 
		if(isset($_GET['content']))
				{
					switch ($_GET['content'])
					{
						case "gioithieu":
							include ('gioithieu.php');
							break;
						case "timkiem":
							include ('timkiem.php');
							break;
						case "dangky":
							include ('dangky.php');
							break;
						case "dangnhap":
							include ('dangnhap.php');
							break;
						case "chitietsp":
							include ('chitietsp.php');
							break;
						case "cart":
							include ('cart/index.php');
							break;
						case "sanpham":
							include ('sanpham.php');
							break;
						case "hethang":
							include ('hethang.php');
							break;
					}
				}
			elseif(isset($_GET['madm'])) {
					$sql = "SELECT * FROM sanpham  WHERE madm='{$_GET['madm']}'";	
					if(isset($GET['madm']))
					{
						$sql.="where madm='".$_GET['madm']."'";
					}
					
						if(!isset($_GET['page'])){  
						$page = 1;  
						} else {  
						$page = $_GET['page'];  
						}  
						$max_results = 12;  
						$from = (($page * $max_results) - $max_results);  
						$sql.=  "LIMIT $from, $max_results";
						
					$query=mysqli_query($conn,$sql);
					$total=mysqli_num_rows($query);
					if($total>0)
					{
					?>
						
						<div class="sanpham">	
							<?php
							$sql1="select tendm from danhmuc where madm='{$_GET['madm']}'";
							$query1=mysqli_query($conn,$sql1);
							$row=mysqli_fetch_array($query1);
							?>
						<h2><?php echo $row['tendm']?></h2>
							<div class="sanphamcon">
								
								<?php 
								  while ($result=mysqli_fetch_array($query))
								  { ?>
								
								<div class="monan">
						
									<a href="index.php?content=chitietsp&idsp=<?php echo $result['idsp'] ?>"><img  src="img/uploads/<?php echo $result['hinhanh'];?>"></a>				
									<p><a href="index.php?content=chitietsp&idsp=<?php echo $result['idsp'] ?>" ><?php echo $result['tensp'];?></a></p>
									<h4><?php echo number_format(($result['gia']),0,",",".");?></h4>
									<div class="button">
										<ul>
											<li>
												<h5><a href="index.php?content=chitietsp&idsp=<?php echo $result['idsp'] ?>" class="chitiet"><button>Chi tiết</button></a></h5>
											</li>
											<li>
												<h5><a href="index.php?content=cart&action=add&idsp=<?php echo $result['idsp'] ?>"><button>Cho vào giỏ</button></a></h5>
											</li>
										</ul>
									</div><!-- End .button-->
								</div><!-- End .monan-->
								<?php } ?>
								
							</div><!-- End .sanphamcon-->
							
						</div><!-- End .sanpham-->
						<div class="phantrang">
						<?php 
											
						$total_results = mysqli_num_rows(mysqli_query($conn,"SELECT *  FROM sanpham where madm='{$_GET['madm']}'"));  

						$total_pages = ceil($total_results / $max_results);  
						if($page > 1){  
						$prev = ($page - 1);  
						echo "<a href=\"".$_SERVER['PHP_SELF']."?madm=".$_GET['madm']."&page=$prev\"><button class='trang'>Trang trước</button></a>&nbsp;";  
						}  

						for($i = 1; $i <= $total_pages; $i++){  
						if(($page) == $i){
							
						echo "$i&nbsp;"; 
						} else {  
						echo "<a href=\"".$_SERVER['PHP_SELF']."?madm=".$_GET['madm']."&page=$i\"><button class='so'>$i</button></a>&nbsp;";  
						}  
						}  

						if($page < $total_pages){  
						$next = ($page + 1);  
						echo "<a href=\"".$_SERVER['PHP_SELF']."?madm=".$_GET['madm']."&page=$next\"><button class='trang'>Trang sau</button></a>";  
						}  
						echo "</center>";  	
						?>
						</div>			<?php 
					}
					else {echo "Không có sản phẩm nào";}
				}
				else {
		
	?>
				<div class="sanpham">			
						<h2>MÓN ĂN BÁN CHẠY</h2>
					<div class="sanphamcon">
					    <?php 
						    $sql1="select * from sanpham inner join danhmuc on sanpham.madm = danhmuc.madm order by daban  DESC limit 6 ";
							$result1= mysqli_query($conn,$sql1);
						?>
						<?php 
						  while ($row=mysqli_fetch_array($result1))
						  { ?>
						
						<div class="monan">
							
							<h1><a href="index.php?content=chitietsp&idsp=<?php echo $row['idsp'] ?>"><img  src="img/uploads/<?php echo $row['hinhanh'];?>"></a></h1>				
							<p><a href="index.php?content=chitietsp&idsp=<?php echo $row['idsp'] ?>" ><?php echo $row['tensp'];?></a></p>
							<h4>Giá: <?php echo number_format(($row['gia']),0,",",".");?></h4>
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
				
				
                <div class="sanpham">			
						<h2>MÓN ĂN MỚI</h2>
					<div class="sanphamcon">
					    <?php 
						    $sql1="select * from sanpham inner join danhmuc on sanpham.madm = danhmuc.madm  order by idsp  DESC limit 6 ";
							$result1= mysqli_query($conn,$sql1);
						?>
						<?php 
						  while ($row=mysqli_fetch_array($result1))
						  { ?>
						
						<div class="monan">
							<h1><a href="index.php?content=chitietsp&idsp=<?php echo $row['idsp'] ?>"><img  src="img/uploads/<?php echo $row['hinhanh'];?>"></a></h1>				
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
	<?php } ?>