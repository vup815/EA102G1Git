<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.vender.model.*"%>

<!DOCTYPE html>
<html lang="en">
  <head>

  </head>
  <body>

<!-- ======= Header ======= -->

<jsp:include page="../home/home_header.jsp" />

<!-- 首頁跳窗開始 -->
	<div class="modal fade" id="regisModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title2" id="exampleModalLabel">註冊成功</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="font-size:16px; text-align:center">
				註冊成功 ! 請至信箱收取驗證信。
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<c:if test="${success != null}">
<script>
$('#regisModal').modal('show');
</script>
</c:if>

<div class="modal fade" id="verifyModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title2" id="exampleModalLabel">驗證成功</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="font-size:16px; text-align:center">
				帳號驗證成功 ! 已將您登入。
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<c:if test="${verifySuccess != null}">
<script>
$('#verifyModal').modal('show');
</script>
</c:if>
<!-- 首頁跳窗結束 -->
	
	<!-- Banner Start -->
	<div class="row">
		<div class="col-md-12">
			<div class="carousel slide carousel-fade" id="carousel-213956" data-ride="carousel" style=" height: 100vh; overflow: hidden;">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-213956">
					</li>
					<li data-slide-to="1" data-target="#carousel-213956">
					</li>
					<li data-slide-to="2" data-target="#carousel-213956" class="active">
					</li>
					<li data-slide-to="3" data-target="#carousel-213956">
					</li>
					<li data-slide-to="4" data-target="#carousel-213956">
					</li>
					<li data-slide-to="5" data-target="#carousel-213956">
					</li>
				</ol>
				
				<div class="carousel-inner">
					<div class="carousel-item" data-interval="3000">
						<a href="https://www.promise-you.com/" target="_blank"> <img
							class="d-block w-100" alt="Carousel img1"
							src="<%=request.getContextPath()%>/back_end/ad/ad_img.do?ad_id=AD001">
						</a>
					</div>

					<div class="carousel-item">
						<a href="https://www.weddings.tw/" target="_blank"> <img class="d-block w-100"
							alt="Carousel img2"
							src="<%=request.getContextPath()%>/back_end/ad/ad_img.do?ad_id=AD002">
						</a>
					</div>

					<div class="carousel-item active">
						<a href="https://www.marry.com.tw/prewedding-home" target="_blank"> <img
							class="d-block w-100" alt="Carousel img3"
							src="<%=request.getContextPath()%>/back_end/ad/ad_img.do?ad_id=AD003">
						</a>
					</div>

					<div class="carousel-item">
						<a href="https://www.vincentimage.com/" target="_blank"> <img
							class="d-block w-100" alt="Carousel img4"
							src="<%=request.getContextPath()%>/back_end/ad/ad_img.do?ad_id=AD004">
						</a>
					</div>

					<div class="carousel-item">
						<a href="https://www.ijwedding.com.tw/" target="_blank"> <img
							class="d-block w-100" alt="img5"
							src="<%=request.getContextPath()%>/back_end/ad/ad_img.do?ad_id=AD005">
						</a>
					</div>

					<div class="carousel-item">
						<a href="https://www.ijwedding.com.tw/" target="_blank"> <img
							class="d-block w-100" alt="img6"
							src="<%=request.getContextPath()%>/back_end/ad/ad_img.do?ad_id=AD006">
						</a>
					</div>					
				</div>
							
				<a class="carousel-control-prev" href="#carousel-213956" data-slide="prev">
					<span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span>
				</a> 
				<a class="carousel-control-next" href="#carousel-213956" data-slide="next">
					<span class="carousel-control-next-icon"></span> 
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<!-- Banner End -->

<!-- 內容頁 Start -->
<div class="container-fluid container">

	<div class="row">
		<div class="col-md-12">
        <!-- Services-->
        <section class="page-section" id="about">
            <div class="container">
                <h2 class="text-center mt-0">為何選擇Wedding Navi?</h2>
                <hr class="divider my-4" />
                <div class="row">
                    <div class="col-lg-3 col-md-6 text-center">
						<img alt="Bootstrap Image Preview" src="<%=request.getContextPath()%>/img/img_for_whyUs/chain.png" class="rounded">
                        <div class="mt-5">
							<h3 class="h4 mb-2">串起廠商顧客</h3>
							<h3 class="h4 mb-2">創造雙贏互益</h3>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
						<img alt="Bootstrap Image Preview" src="<%=request.getContextPath()%>/img/img_for_whyUs/attract.png" class="rounded">
                        <div class="mt-5">
							<h3 class="h4 mb-2">嚴選優質廠商進駐</h3>
							<h3 class="h4 mb-2">完美婚禮輕鬆規劃</h3>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center pic-icon">
						<img alt="Bootstrap Image Preview" src="<%=request.getContextPath()%>/img/img_for_whyUs/buy-a-product_128128.png" class="rounded">
                        <div class="mt-5">
							<h3 class="h4 mb-2">婚禮二手物品挖寶</h3>
							<h3 class="h4 mb-2">閒置出清互利互惠</h3>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
						<img alt="Bootstrap Image Preview" src="<%=request.getContextPath()%>/img/img_for_whyUs/safety.png" class="rounded">
                        <div class="mt-5">
							<h3 class="h4 mb-2">交易履約保證機制</h3>
							<h3 class="h4 mb-2">保障買賣雙方權益</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
		</div>
	</div>
<!-- ========================= SECTION CONTENT1 ========================= -->
<section class="section-content padding-bottom-sm">
	<div class="container">
	
	<header class="section-heading">
		<a href="#" class="btn btn-outline-primary float-right">See all</a>
		<h3 class="section-title" >禮車租借</h3>
	</header><!-- sect-heading -->
	
	<div class="row">
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/car1.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Just another product name</a>
					<div class="price mt-1">$179.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/car2.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Some item name here</a>
					<div class="price mt-1">$280.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/car3.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Great product name here</a>
					<div class="price mt-1">$56.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/car4.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Just another product name</a>
					<div class="price mt-1">$179.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
	</div> <!-- row.// -->
	
	</div> <!-- container .//  -->
	</section>
	<!-- ========================= SECTION CONTENT1 END// ========================= -->

	<!-- ========================= SECTION2 CONTENT ========================= -->
<section class="section-content padding-bottom-sm">
	<div class="container">
	
	<header class="section-heading">
		<a href="#" class="btn btn-outline-primary float-right">See all</a>
		<h3 class="section-title">婚禮攝影</h3>
	</header><!-- sect-heading -->
	
	<div class="row">
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/photo1.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Just another product name</a>
					<div class="price mt-1">$179.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/photo2.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Some item name here</a>
					<div class="price mt-1">$280.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/photo3.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Great product name here</a>
					<div class="price mt-1">$56.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/photo4.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Just another product name</a>
					<div class="price mt-1">$179.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
	</div> <!-- row.// -->
	
	</div> <!-- container .//  -->
	</section>
	<!-- ========================= SECTION CONTENT2 END// ========================= -->

	<!-- ========================= SECTION CONTENT3 ========================= -->
<section class="section-content padding-bottom-sm">
	<div class="container">
	
	<header class="section-heading">
		<a href="#" class="btn btn-outline-primary float-right">See all</a>
		<h3 class="section-title">婚紗租借</h3>
	</header><!-- sect-heading -->
	
	<div class="row">
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/dress1.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Just another product name</a>
					<div class="price mt-1">$179.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/dress2.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Some item name here</a>
					<div class="price mt-1">$280.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/dress3.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Great product name here</a>
					<div class="price mt-1">$56.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
		<div class="col-md-3">
			<div href="#" class="card card-product-grid">
				<a href="#" class="img-wrap"> <img src="<%=request.getContextPath()%>/img/img_for_pkg/dress4.jpg"> </a>
				<figcaption class="info-wrap">
					<a href="#" class="title">Just another product name</a>
					<div class="price mt-1">$179.00</div> <!-- price-wrap.// -->
				</figcaption>
			</div>
		</div> <!-- col.// -->
	</div> <!-- row.// -->
	
	</div> <!-- container .//  -->
	</section>
	<!-- ========================= SECTION CONTENT3 END// ========================= -->
</div>
	<!-- å§å®¹é  End -->

	<!-- footer Start -->
	<footer>
	<section class="container">
	<div class="row">
		<div class="col-md-4 footer-about">
			<ul>
				<li><a href="#" target="_blank">●關於我們</a></li>
				<li><a href="#" target="_blank">●常見問題</a></li>
				<li><a href="#" target="_blank">●隱私權條款</a></li>
			</ul>
			 
		</div>
		<div class="col-md-4 footer-logo">
			<img  class="logo" alt="Bootstrap Image Preview" src="<%=request.getContextPath()%>/img/logo.png" class="rounded mx-auto d-block" alt="?">
			<div class="col-md-12">
				<a href="#" target="_blank"><img class="col-md-3" alt="fb" src="<%=request.getContextPath()%>\img\img_for_footer\FB_8080.png"></a>
				<a href="#" target="_blank"><img class="col-md-3" alt="ig" src="<%=request.getContextPath()%>\img\img_for_footer\IG_8080.png"></a>
				<a href="#" target="_blank"><img class="col-md-3" alt="line" src="<%=request.getContextPath()%>\img\img_for_footer\LINE_logo_8080.png"></a>
				
				
			</div>
			
		</div>

		<div class="col-md-4 contact-info">
			<div>
				●聯絡我們
			</div>
			<div>
				客服專線 0800-000-482
			</div>
		<br/>
			<div>
				●服務時間
			</div>

			<div>
				週一至週六 09:00-18:00
				<br/>
				(週日與國定假日除外)
			<img alt="qrcode" src="<%=request.getContextPath()%>\img\img_for_footer\lineQR_8080.png">
			</div>
			
		</div>
		
	</div>

</section>


</footer><!-- footer End-->

<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

<div class="copyright">Copyright(C) WeddingNavi. All Rights Reserved.</div>



    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/scripts.js"></script>
	<script src="<%=request.getContextPath()%>/js/main.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.easing.min.js"></script>
  </body>
</html>