<%@page import="java.util.List"%>
<%@page import="com.vender.model.VenderVO"%>
<%@page import="com.membre.model.MembreVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	MembreVO membrevo = (MembreVO)session.getAttribute("membrevo");
	String url = request.getContextPath()+"/wed/wpcase.do?"+request.getQueryString();	
	session.setAttribute("location",url); 

	List<VenderVO> list_vender = (List<VenderVO>)request.getAttribute("VenderVO");
	pageContext.setAttribute("VenderVO",list_vender.get(0));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>${VenderVO.ven_name} 婚禮導航 - Wedding Navi</title>
    <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@300;500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Reenie+Beanie&display=swap" rel="stylesheet">
    <link href="../css/bootstrap_menu.min.css" rel="stylesheet">
    <link href="../css/menu_style.css" rel="stylesheet">
    <link href="../css/icofont/icofont.min.css" rel="stylesheet">
    <link href="../css/boxicons/css/boxicons.min.css" rel="stylesheet">
    <script type="text/javascript">
    $(document).ready(function() {

        $(".service").hide();
        $(window).scroll(function() {
            // last=$("body").height()-$(window).height()
            // 滑動顯示回頂端的圖示
            if ($(window).scrollTop() >= 200) {
                $(".service").fadeIn(500);
            } else {
                $(".service").fadeOut(500);
            }

        });
        $(".service").click(function() {
            $("html,body").animate({ scrollTop: 0 }, "slow");
            // 返回到最頂上
            // return false;
        });
    });
    </script>
</head>
<style type="text/css">
body {
    margin: 0px;
}

.service {
    width: 40px;
    height: 40px;
    border-radius: 5px;
    border: 1px #fff solid;
    background-color: #FF9FBBFF;
    line-height: 40px;
    font-size: 14px;
    color: #fff;
    text-align: center;
    position: fixed;
    left: 93%;
    top: 83%;
    z-index: 1;
}

/*title start*/
.header .title1 {
    width: 100%;
    height: 30px;
    font-size: 10px;
    font-weight: 400;
    background-color: #FFECFFFF;
    /*font-family: "微軟正黑體";*/
    border-bottom: solid 1px #FFEEFFFF;
}

.title1 {
    display: inline-block;
    position: fixed;
    top: 0px;
    z-index: 1;
}

.title1 p {
    display: inline;
    float: right;
    margin: 6px;
    font-size: 12px;
}

h4 {
    float: left;
    font-size: 12px;
    margin-top: 8px;
    font-weight: 500;
}

.logo img {
    width: 180px;
    height: auto;
}

.logo {
    position: fixed;
    top: 4px;
    left: 10px;
    z-index: 5;
    width: 180px;
    height: 63px;
}

.title2 {
    display: inline;
    width: 100%;
    text-align: right;
    position: fixed;
    top: 12px;
    z-index: 2;
}

.title2 ol {
    list-style-type: none;
    margin-top: 18.5px;
    height: 36px;
    background: -webkit-linear-gradient(#FFFFFFE0, #FFFFFF00);
    background: -o-linear-gradient(#FFFFFFE0, #FFFFFF00);
    background: -moz-linear-gradient(#FFFFFFE0, #FFFFFF00);
    background: linear-gradient(#FFFFFFE0, #FFFFFF00);
}

.title2 ol li {
    margin-left: 5px;
    width: 80px;
    line-height: 34.5px;
    text-align: center;
    letter-spacing: 0.5px;
    margin-right: 0px;
    display: inline-block;
}

.title2 ol li:hover {
    color: #DDDDDDFF;
}

a:visited {
    color: #545454FF;
}

a {
    color: #545454FF;
}

a:hover {
    color: #919191FF;
}

/*title end*/

/*footer start*/
.copyright {
    text-align: center;
    background-color: #FFECFFFF;
}

.footer .col-lg-4 {
    margin-bottom: 25px;
}

.footer_con {
    height: 350px;
    background-color: #FFECFFFF;
    border: 3px #FFECFFFF solid;
    /*margin-top: 20px;*/
    padding-bottom: 20px;
}

@media (max-width: 992px) {
    .footer_con {
        height: 535px;
    }
}

.footer-about ul {
    list-style-type: none;
}

.footer-about ul li {
    line-height: 32px;
}

.footer col-md-4 {
    text-align: center;
}

.Preview img {
    width: 300px;
    height: auto;
    margin: auto;
    display: block;
    margin-bottom: 40px;
}

.foo_img img {
    width: 50px;
    height: auto;
    margin: auto;
    display: block;
}

.contact-info {
    text-align: center;
}

/*footer end*/

/*最新方案 開始*/
.row .col-12 {
    margin-bottom: 30px;
}

.new_case {
    width: 100%;
    height: 100%;
    border-radius: 3px;
    background-color: #FF7FB60B;
    border: 1px solid #FF7FB60B;

    /*box-shadow: #EBD0D0FF 3px 3px 3px 3px;*/
    color: #4F4F4FFF;
}

.new_case:hover {
    border: 1px solid #B6486AFF;
    background-color: #FFF;
}

.img_box img {
    float: left;
    height: auto;
    width: 35%;
    border-radius: 3px;
}

.img_text {
    display: inline-block;
    width: 64%;
    float: right;

}

.img_text:hover {
    color: black;
}

.img_text h5 {
    margin-top: 20px;
    margin-bottom: 20px;
}

.text_time {
    margin-top: 20px;
    margin-bottom: 0;
    margin-right: 5px;
    text-align: right;
    font-size: 14px;
}

.text_new {
    margin-left: 35px;
    margin-right: 5px;
    height: 150px;
    text-align: justify;
    letter-spacing: 1px;
    line-height: 25px;
}

.img_text:hover {
    opacity: 0.87;
}

.img_box img:hover {
    opacity: 0.9;
}

.right_case .img_box img {
    float: right;
    height: auto;
    width: 35%;
    border-radius: 3px;
}

.right_case .img_text {
    display: inline-block;
    width: 64%;
    float: left;

}

/*最新方案 結束*/
.con2head {
    text-align: center;
    color: #D1005AFF;
    margin-bottom: 20px;
    margin-top: 35px;
    font-size: 24px;
    font-weight: 400;
}
/*廠商資訊 開始*/
.ven_map {    
    height: 400px;
    width:100%;
    border: 1px #C13DB3FF solid;
    text-align: center;
}
.ven_info {
    margin-top: 50px;
    height: 300px;
    border: 1px #8C8C8CFF solid;
}


/*廠商資訊 結束*/
</style>
<body>
	<div class="header">
        <div class="title1">
            <h4></h4>
            <p>
            	<c:if test="${membrevo.mem_name != null}">
            	你好 ${membrevo.mem_name }
            	<a href="<%=request.getContextPath()%>/front_end/membre/wp/listAllCollectWP.jsp" id="link1">　我的收藏</a>
            	<a href="<%=request.getContextPath()%>/front_end/membre/wp/listAllWPOrder.jsp" id="link1">　訂單查詢</a>
            	</c:if>
            	<c:if test="${membrevo.mem_name == null}">
                <a href="<%=request.getContextPath()%>/front_end/membre/login.jsp" id="link1" id="link1">　會員登入</a>
                <a href="" id="link1">　我要註冊</a>
                <a href="" id="link1">　廠商專區</a>
                </c:if>
            </p>
        </div>
        <div class="title2">
            <ol>
                <li><a href="<%=request.getContextPath()%>/front_end/wed_photo/home_WP.jsp">婚禮攝影</a></li>
                <li><a href="<%=request.getContextPath()%>/front_end/carOrder/browseAllCar.jsp">禮車租借</a></li>
                <li><a href="<%=request.getContextPath()%>/front_end/dresscase/DressHome.jsp"">婚紗租借</a></li>
                <li><a href="<%=request.getContextPath()%>/front_end/prod/select_page.jsp">二手拍賣</a></li>
                <li><a href="">討論區</a></li>
            </ol>
        </div>
        <div class="logo"><a href="<%=request.getContextPath()%>/front_end/home/home.jsp"><img alt="Bootstrap Image Preview" src="../img/logo-transparent(1450_400).png"></a></div>
    </div>
    <div class="service">TOP</div>
    <div class="ven_info">廠商資訊區塊</div>
    <div class="container">
    	${VenderVO.vender_id } - ${VenderVO.ven_name} - ${VenderVO.ven_addr} - ${VenderVO.ven_phone} - ${VenderVO.ven_mail}
    	<div class="con2head">
            <p>廠商位置</p>
        </div>
        <div class="row">            
            <div class="col-12 ven_map">
                <iframe width="100%" height="100%" frameborder="0" style="border:0" src="" allowfullscreen>
                </iframe>               
            </div>
             <!-- <div class="ven_map" id="map"></div> -->
        </div>
        <div class="con2head">
            <p>全部方案</p>
        </div>
        <div class="row justify-content-between">
        <c:forEach var="list" items="${list_case }">
            <div class="col-12">
                <div class="new_case">
                    <a href="<%=request.getContextPath()%>/wed/wpcase.do?action=getOne_CasePage&wed_photo_case_no=${list.wed_photo_case_no}" target="_blank">
                        <div class="img_box">
                            <img src="<%=request.getContextPath()%>/wed/wpcase.do?action=getOne_WPImg&wed_photo_case_no=${list.wed_photo_case_no}">
                        </div>
                        <div class="img_text">
                            <h5>${list.wed_photo_name }</h5>
                            <div class="text_new">
                            	${list.wed_photo_intro }
                            </div>
                            <div class="text_time">
                                <span style="font-style:oblique;"><fmt:formatDate value="${list.wed_photo_addtime }" pattern="MMM d, yyyy hh:mm aa" /></span>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
         </c:forEach>
         </div>
   </div>
   
   <!-- footer Start -->
    <footer>
        <section class="container-fluid footer_con">
            <div class="row footer">
                <div class="col-md-12 col-lg-4 footer-about">
                    <ul>
                        <li><a href="#" target="_blank">●關於我們</a></li>
                        <li><a href="#" target="_blank">●常見問題</a></li>
                        <li><a href="#" target="_blank">●隱私權條款</a></li>
                    </ul>
                </div>
                <div class="col-md-12 col-lg-4 footer-logo">
                    <div class="row justify-content-between">
                        <div class="col-12 Preview">
                            <img alt="Bootstrap Image Preview" src="../img/logo-transparent(1450_400).png">
                        </div>
                        <div class="col-3 foo_img"><a href="#" target="_blank"><img alt="fb" src="../img/img_for_footer/FB_8080.png"></a></div>
                        <div class="col-3 foo_img"><a href="#" target="_blank"><img alt="ig" src="../img/img_for_footer/IG_8080.jpg"></a></div>
                        <div class="col-3 foo_img"><a href="#" target="_blank"><img alt="line" src="../img/img_for_footer/LINE_logo_8080.png"></a></div>
                        <div class="col-3 foo_img"><a href=""><img alt="qrcode" src="../img/img_for_footer/lineQR_8080.png"></a></div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-4 contact-info">
                    <div>
                        ●聯絡我們
                    </div>
                    <div>
                        客服專線 0800-000-482
                    </div>
                    <div>
                        ●服務時間
                    </div>
                    <div>
                        週一至週六 09:00-18:00<br>
                        (週日與國定假日除外)
                    </div>
                </div>
            </div>
        </section>
    </footer><!-- footer End-->
    <div class="copyright">Copyright(C) WeddingNavi. All Rights Reserved.</div>
    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</body>
<!-- <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyD7LkDHulMgpoqnxVDobzNsfX0Ceb26t1Y&callback=initMap"></script> -->
<script type="text/javascript">
var text_new = document.querySelectorAll('.text_new');
for (var i = 0; i < text_new.length; i++) {
    if (text_new[i].innerText.length > 108) {
        var str = text_new[i].innerText.substring(108);
        var str_new = text_new[i].innerText.replace(str, '...read more');
        text_new[i].innerText = str_new;
    }
}

$('.new_case').each(function(i){
    if(i % 2 == 0){
        $(this).addClass('right_case');
    }
})

var addr2 = '${VenderVO.ven_addr}';
var addr = addr2.substring(0,addr2.lastIndexOf('號')+1);
$('iframe').attr('src', 'https://www.google.com/maps/embed/v1/place?key=AIzaSyD7LkDHulMgpoqnxVDobzNsfX0Ceb26t1Y&q=' + addr)

// 建立 Geocoder() 物件
var gc = new google.maps.Geocoder();
var mymap = new google.maps.Map($('#map').get(0), {
    zoom: 15,
    center: { lat: 25.0479, lng: 121.5170 }
});

var addr = '台中市南屯區永春路60-7號';

// 用使用者輸入的地址查詢
gc.geocode({ 'address': addr }, function(result, status) {
    // 確認 OK
    if (status == google.maps.GeocoderStatus.OK) {
        var latlng = result[0].geometry.location;
        //  取得查詢結果第0筆中的經緯度物件
        mymap.setCenter(latlng); //將查詢結果設為地圖的中心

        var marker = new google.maps.Marker({
            position: { lat: latlng.lat(), lng: latlng.lng() },
            map: mymap,
            animation: google.maps.Animation.DROP, // DROP掉下來、BOUNCE一直彈跳
            draggable: true // true、false可否拖拉
        });

    }
});

</script>
</html>