<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.prod.model.ProdVO, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  
<jsp:include page="/front_end/home/head.jsp">
<jsp:param name="title" value="Registre page"/>
</jsp:include>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>婚禮導航</title>

    <meta name="description" content="Source code generated using layoutit.com">
	<meta name="author" content="LayoutIt!">
	 <!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@300;500&display=swap" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap_4.5.1.css">
	<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
	<!-- ======= 引入新style ======= -->
	<link href="<%=request.getContextPath()%>/css/bootstrap_menu.min.css" rel="stylesheet"> 
	<link href="<%=request.getContextPath()%>/css/menu_style.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/css/icofont/icofont.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/css/boxicons/css/boxicons.min.css" rel="stylesheet">

  </head>
  <body>
  
  <!-- ======= Header ======= -->

<header style="background-color:#ffffff;" id="" class="fixed-top header-transparent col-md-12 heaber-menu">



	<div class="container d-flex align-items-cente">

    <a href="<%=request.getContextPath()%>/front_end/home/home.jsp" target="_blank">
		<img class="logo" style="width:200px; height:63px;" alt="Bootstrap Image Preview" src="<%=request.getContextPath()%>\img\logo.png" class="rounded mx-auto d-block" alt="?">
		</a>
		<nav class="nav-menu d-none d-lg-block col-sm-10 main-nav">
			<ul>
			<li><a href="<%=request.getContextPath()%>/back_end/back_end_home.jsp" target="_blank">後台</a></li>
			<li><a href="<%=request.getContextPath()%>/front_end/vender/vender_home.jsp" target="_blank">廠商專區</a></li>
			<li><a href="<%=request.getContextPath()%>/front_end/carOrder/browseAllCar.jsp" target="_blank">禮車租借</a></li>
			<li><a href="<%=request.getContextPath()%>/front_end/wed_photo/home_WP.jsp" target="_blank">婚禮攝影</a></li>
			<li><a href="<%=request.getContextPath()%>/front_end/dresscase/DressHome.jsp" target="_blank">婚紗租借</a></li>
			<li><a href="<%=request.getContextPath()%>/front_end/forum/listAllForum.jsp" target="_blank">討論區</a></li>
			<li><a href="<%=request.getContextPath()%>/front_end/prod/select_page.jsp" target="_blank">商場</a></li>
			<li><a href="<%=request.getContextPath()%>/front_end/membre_order/membre_order_home.jsp" target="_blank">會員訂單</a></li>
			
            
<nav class="d-flex align-items-center flex-column flex-md-row">
    <ul class="nav ">
    <li class="nav-item d-flex flex-column">
	<div class="dropleft my-auto">
  		
 <div id="content" style="overflow-y:auto; height: 50px;" class="dropdown-menu dropdown-menu-sm-right" aria-labelledby="dropdownMenuLink">
</div>
</div>
    </li>
        			<%String currentLocation = request.getRequestURI();
					String queryString = request.getQueryString();
					request.setAttribute("currentLocation", currentLocation);
					request.setAttribute("queryString", queryString);
				%>
     <c:if test="${membrevo==null }">
    		<div class="widget-header icontext">
    		<c:choose>
    		<c:when test="${queryString ==null }">
    		<a href="<%=request.getContextPath()%>/front_end/membre/login.jsp?location=${currentLocation}">Login</a> |  
    		</c:when>
    		<c:otherwise>
						<a href="<%=request.getContextPath()%>/front_end/membre/login.jsp?location=${currentLocation }?${queryString}">Login</a> |  
			</c:otherwise>
			</c:choose>
						<a href="<%=request.getContextPath()%>/front_end/membre/regis.jsp"> Register</a>
					</div>
			
    </c:if>
    
    <c:if test="${membrevo !=null }">
    	<li class="nav-item text-right myItem" style="margin-right:-20px"><a class="nav-link px-2"> <img style="width:100%; height:26px;" class="rounded" src="<%=request.getContextPath() %>/membre/membre.do?action=getphoto&membre_id=${membrevo.membre_id }"></a></li>
		<li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="http://example.com">${membrevo.mem_name}</a>
		          <div class="dropdown-menu">
		          	<a class="dropdown-item" href="<%=request.getContextPath()%>/front_end/membre_order/membre_order_home.jsp">會員訂單</a>
		   
		            <a class="dropdown-item" href="#">Profile setting</a>
		            <a class="dropdown-item" href="<%=request.getContextPath()%>/order/order.do?action=getDifferentStatusOrders_buyer&order_status=All">My orders</a>
		            <a class="dropdown-item" href="<%=request.getContextPath()%>/order/order.do?action=getDifferentStatusOrders_seller&order_status=All">My orders (Seller Develop Only)</a>
		            <a class="dropdown-item" href="<%=request.getContextPath()%>/front_end/prod/myProds.jsp">My products</a>
		            <div class="dropdown-divider"></div>
		            <a class="dropdown-item" href="<%=request.getContextPath()%>/membre/membre.do?action=logOut">登出</a>
		          </div>
		</li>
		<li class="nav-item text-right myItem"><a href="<%=request.getContextPath()%>/front_end/dresscase/Cart.jsp" target="_blank" width="20px">
		<img style="width:25px; height:20px;" class="rounded" src="<%=request.getContextPath() %>/img/bag.svg"></a></li>
   		<li class="nav-item text-right myItem"><a href="<%=request.getContextPath() %>/front_end/membre_order/membre_dress_listall_track.jsp" >
     	<img style="width:30px; height:20px;" class="rounded" src="<%=request.getContextPath() %>/img/heart3.jpg">
        </a>
   
    </c:if>	
    </ul>
  </nav> <!-- nav .// --> </li>
			</ul>
			
		</nav><!-- .nav-menu -->
		
	</div>
	
	</header>
	


	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<!--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>-->

	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" ></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" ></script>

	<!--<script src="js/main.js"></script>-->
	<script src="<%=request.getContextPath()%>/js/jquery.easing.min.js"></script>

  </body>
</html>
