
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 設定時間 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<%@ page import="java.util.*"%>
<%@ page import="com.forum.model.*"%>
<%@ page import="com.membre.model.*"%>

<%
	ForumService frSvc = new ForumService();
	List<ForumVO> list = frSvc.getAll();
	pageContext.setAttribute("list", list);
%>

<jsp:useBean id="memSvc" scope="page" class="com.membre.model.MembreService" />


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

 <title>listAllForum</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
    
<!--     	left top start -->
      <a class="navbar-brand" href="<%=request.getContextPath()%>/front_end/home/home.jsp">Wedding Navi</a>
<!--     	left top end -->      
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      
<!--       top bar start -->
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/front_end/home/home.jsp">首頁</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/front_end/prod/index.jsp">二手商城</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/back_end/back_end_home.jsp">後台</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/front_end/forum/listAllForum.jsp">討論區</a>
            <p><a class="nav-link" href="<%=request.getContextPath()%>/front_end/forum/addForum.jsp">新增文章</a></p>
          </li>
          
          
<!-- login start -->

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
    	<li class="nav-item text-right myItem" style="margin-right:-20px"><a class="nav-link px-2"> <img style="width:20px; height:20px;" class="rounded" src="<%=request.getContextPath() %>/membre/membre.do?action=getphoto&membre_id=${membrevo.membre_id }"></a></li>
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
    </c:if>	                                      
<!-- login end -->

        </ul>
      </div>
<!--       top bar end -->
      
    </div>
  </nav>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('img/mainimg01_20501200.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
            <h1>Wedding Navi</h1>
            <span class="subheading">A Blog host by Professional team</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
          <c:forEach var="forumVO" items="${list}" >
        <div class="post-preview">
          <a href="<%=request.getContextPath()%>/front_end/forum/forum.do?forum_id=${forumVO.forum_id}&action=getOne_For_Display">
<!--           																		再給文章編號，才不會因為沒抓到值為null，跳到select_page.jsp -->
            <h2 class="post-title">
              ${forumVO.forum_title}
            </h2>
            <h3 class="post-subtitle">
              ${forumVO.forum_class}
            </h3>
          </a>

          <p class="post-meta">Posted by <a href="#">

          								<c:forEach var="membrevo" items="${memSvc.all}">
						                    <c:if test="${forumVO.membre_id==membrevo.membre_id}">
							                    ${membrevo.mem_name}
						                    </c:if>
          								 </c:forEach>
          								 </a>
          								 
           
            on <fmt:formatDate value="${forumVO.forum_addtime}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
        </div>
        	
        </c:forEach>
        <hr>
        
        <!-- Pager -->
        <div class="clearfix">
          <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
        </div>
      </div>
    </div>
  </div>

  <hr>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <ul class="list-inline text-center">
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
          </ul>
          <p class="copyright text-muted">Copyright &copy; Your Website 2020</p>
        </div>
      </div>
    </div>
  </footer>
  

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/clean-blog.min.js"></script>

</body>

</html>

