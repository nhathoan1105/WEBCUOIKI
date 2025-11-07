	<section class="clear"></section>
	<footer>
		<section class="container">
			<section class="row">
				<section class="col-lg-4">
					<h2>
						About Us
					</h2>
					<section class="footer__box">
						<p>
							Báo chuyên về tin tức ngôi sao giải trí Việt Nam và thế giới, cập nhật nhanh nhất những thông tin nóng hổi, hình ảnh mới nhất về các sao Việt, sao quốc tế.

						<p>						
							Tổng biên tập: Hoàn Phan - Địa chỉ: 239 Đặng Tiến Đông, Đống Đa, Hà Nội. Điện thoại: 0888618239
						</p>
						Contact me: <br>
						<a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
						<a href=""><i class="fa fa-google-plus-square" aria-hidden="true"></i></a>
						<a href=""><i class="fa fa-youtube-square" aria-hidden="true"></i></a>
						<a href=""><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</section>
				</section>
				<section class="col-lg-4">
					<h2>
						Lastest Posts
					</h2>
					<section class="footer__box">
						<?php 

						$lastest = \models\Post::where()->orderBy(['post_time', 'desc'])->limit(4)->get();
						foreach ($lastest as $value): ?>
							
						<section class="footer__box__lastest">
							<a href="<?=getUrl('post?id='.$value->id) ?>"><?=$value->title ?></a>
							<span class="posttime"><br>
								<i class="fa fa-clock-o"></i> <?php
								echo convertTime($value->post_time);
							?>
							</span>
						</section>

						<?php endforeach ?>
						
					</section>
				</section>
<!-- 				<section class="col-lg-3">
					<h2>
						Subcribe Email
						
					</h2>
					<p>
						Enter your email to read the lastest news
					</p>
					<form action="#">
						<input type="email" placeholder="Your email..." required="">
						<button>
							<i class="fa fa-rss" aria-hidden="true"></i>
						</button>
					</form>
				</section> -->
				<section class="col-lg-4">
					<h2>
						Categories
					</h2>
					<?php 
					$categories = \models\Category::all();

					 ?>
					<section class="footer__box__categories">
						<?php foreach ($categories as $value): ?>
						<section class="footer__category">
							<section class="footer__category--left">
								<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
								<a href="#"><?php echo $value->category_name ?></a>
							</section>
							<span>
								<?php echo $value->countPost() ?>
							</span>
						</section>
						<?php endforeach ?>
					</section>
				</section>
			</section>
		</section>
		<section class="footer__bottom">
			<section class="container">
				<section class="row">
					<section class="footer__bottom__left col-lg-6">
						<a href="#">Homepage</a>
						<a href="#">About</a>
						<a href="#">Contact</a>
					</section>
					<section class="footer__bottom__right col-lg-6">
						© Cover by HoanPhan - 2025
					</section>
				</section>
			</section>
		</section>
	</footer>
</body>
</html>