<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
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
<title>SET Portal Email Newsletter</title>
</head>
<body>
	<div class="container center-div">
		<form class="myForm " role="form" action="subscribe.html">
			<h2>MyGSet e-News Subscription</h2>
			<p>Subscribe to the MyGSet e-News and we will notify you by e-mail when we 
				add news releases, fact sheets, tax tips, or tax alerts to your Web site</p>
		  	<div class="form-group">
			    <label for="email">Email address:</label>
			    <input type="email" id="email" class="form-control" name="subEmail" placeholder="example@gmail.com"><br>
		  	</div>
	  		<button type="submit" class="btn btn-info">Submit</button>
		</form>	
	</div>	
		
<!-- our js -->
<script src="<c:url value="/resources/js/main.js" />"></script>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>