                <div id="menu">
					<ul>
						<li><a href="index.php">TRANG CHỦ</a></li>
						<li><a href="index.php?content=gioithieu">GIỚI THIỆU</a></li>
						<li><a href="index.php?content=sanpham">SẢN PHẨM</a>
						<?php 
								if(isset($_SESSION['cart']))
								$count=count($_SESSION['cart']);
								else $count=0;
								if($count==0){
							?>
							<li><a href="index.php?content=cart">GIỎ HÀNG</a>
							<?php
								}else{	
							?>
							<li><a href="index.php?content=cart">GIỎ HÀNG (<span><?=$count?></span>)</a>
								<?php } ?>
					</ul>
				</div>