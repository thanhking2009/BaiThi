
 <div id="danhmucsp">
					<div class="center">
					<h4>Thực Đơn</h4>
					<?php 
					   $sql="select * from danhmuc ";
					   $result=mysqli_query($conn,$sql);
					?>
						<ul>
						<?php 
						   while($row=mysqli_fetch_array($result))
						   {
						?>
							<li><a href="index.php?madm=<?php echo $row['madm'] ?>"><?php echo $row["tendm"];?></a></li>
							<?php } ?>
							
							
						</ul>
					</div><!-- End .center -->
				</div>	<!-- End .menu-left -->
				
			
