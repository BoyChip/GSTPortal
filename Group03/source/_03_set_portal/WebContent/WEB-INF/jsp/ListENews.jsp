<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html">
<%@ page import="nguyethuynh.ENews,java.util.List" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<spring:url value="resources/mainCSS.css" var="mainCSS"/>
<spring:url value="resources/mainJS.js" var="mainJS"/>
<link href="${mainCSS}" rel="stylesheet">
<script src="${mainJS}"></script>
<!--[if gte IE 9]
<style type="text/css">
.gradient {
filter: none;
}
</style>
<![endif]-->
<title>e-News List</title>
</head>
<body>
	<header id="header">
		<div class="banner">
			<h1>Royal Malaysian Customs</h1>
			<!-- <img src="resources/image/Banner.png">-->
		</div>
		<!-- main navbar -->
		<nav class="main-navbar navbar">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a href="index.jsp" class="navbar-brand gstBrand">Bahasa Malaysia</a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav main-navbar-content ">
		        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
		        <li><a href="#">About Us</a></li>
		        <li><a href="#">Contact Us</a></li>
		        <li><a href="#">Online Help</a></li>
		        <li><a href="#">Site Map</a></li>
		      </ul>
		      <form class="navbar-form navbar-right" role="search">
		        <div class="form-group">
		          <input type="text" class="form-control" placeholder="Search">
		        </div>
		        <button type="submit" class="btn btn-default">Search</button>
		      </form>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav><!-- /. main-navbar -->

		<nav class="navbar second-navbar">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <p class="navbar-brand">Current time</p>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse">
		      <ul class="nav navbar-nav second-navbar-content">
		        <li class="active"><a href="#">Core Application <span class="sr-only">(current)</span></a></li>
		        <li><a href="#">Call Center Knowledge Base</a></li>
		        <li><a href="#">GST Info</a></li>
		        <li><a href="#">e-Guide</a></li>
		        <li><a href="#">FAQ</a></li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav><!-- /. second-navbar -->
	</header>
	
	<!-- Main page -->
	<section id="page" class="container-fluid main-page">
		<div class="col-sm-12 col-md-3 left-sidebar">
			<div class="login sidebar-content">
				<div class="sidebar-title"><img src="resources/image/Login.png"></div>
				<a href="LoginForm.jsp">Login to MyGseT Portal</a>
				<a href="KDRMSignOn.html">KDRM Single Sign On</a>
			</div>
			<div class="sidebar-content">
				<div class="sidebar-title"><img src="resources/image/OnlineService.png"></div>
				<a href="registration.html">e-Registration</a>
				<a href="enquiry.html">Online Enquiry</a>
				<a href="eaduan.html">e-Aduan</a>
				<a href="forum.html">Forum</a>
			</div>
			<div class="sidebar-content">
				<div class="sidebar-title"><img src="resources/image/FormTemp.png"></div>
				<a href="listForm.html">GST Forms</a>
				<a href="listTemplate.html">GST Templates</a>
			</div>
			<div class="sidebar-content">
				<div class="sidebar-title"><img src="resources/image/eNews.png"></div>
				<a href="#">News 1</a>
				<a href="#">News 2</a>
				<div class="more"><a href="listNews.html">More...</a></div>
				<hr>
				<a href="SubscribeForm.html">Subscribe e-News</a>
				<a href="UnsubscribeForm.html">Unsubscribe e-News</a>
			</div>
		</div><!-- /.left-sidebar -->
		
		<!-- website main content -->
		<div class="col-sm-12 col-md-6  container page-content">
			<h2 class="page-content-title">List of e-News</h2>
		
			<%List<ENews> eNews = (List<ENews>)request.getAttribute("listENews");
				for(ENews e : eNews){%>
				<a href="ENewsDetail.html"><%=e.getTitleE() %></a> <p><%=e.getPushlishDate() %></p>			
			<%} %> 
		</div><!-- /.page-content -->
		
		
		<!-- right sidebar -->
		<div class="col-sm-12 col-md-3 right-sidebar">
			<div class="sidebar-content">
				<div class="sidebar-title"><img src="resources/image/Announcement.png"></div>
				<a href="#">Accouncement 1</a>
				<a href="#">Accouncement 1</a>
				<div class="more"><a href="#" >More...</a></div>
			</div>
			<div class="sidebar-content">
				<div class="sidebar-title"><img src="resources/image/Cal.png"></div>
				<a href="#">Calculate your GST</a>
				<a href="#">GST adjustment calculation sheet</a>
			</div>
			<div class="sidebar-content">
				<div class="sidebar-title"><img src="resources/image/Train.png"></div>
				<a href="#">7 February 2008</a>
				<p>Kangar</p>
				<a href="#">10 February 2008</a>
				<p>Kangar</p>
			</div>
			<div class="sidebar-content">
				<div class="sidebar-title"><img src="resources/image/ePoll.png"></div>
				<form class="formPoll" action="ePoll.jsp" >
					<h5><b>How you rate this portal?</b></h5>
					<p>(Chose one answer)</p>			
					<input type="radio" name="PollAnswer" value="veryGood"> Very Good<br/>
					<input type="radio" name="PollAnswer" value="Good"> Good<br/>
					<input type="radio" name="PollAnswer" value="Poor"> Poor<br/>
					<input type="submit" class="btn btn-primary" value="Submit" name="submitPoll">
				</form>
			</div>
		</div><!-- /.right-sidebar -->
	</section>
	
	<footer id="footer">
		<ul class="footer-link">
			<li><a href="#">About This Site</a></li>
			<li><a href="#">Terms and Conditions</a></li>
			<li><a href="#">Privary Policy</a></li>
		</ul>
		<div class="footer-external-link">
			<a href="#">Vist KDRM Official Website</a>
		</div>
		<p id="copyright">Copyright &copy 2008 Portal Malaysia GST</p>
	</footer>

<!-- our js -->
<script src="<c:url value="/resources/js/main.js" />"></script>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>