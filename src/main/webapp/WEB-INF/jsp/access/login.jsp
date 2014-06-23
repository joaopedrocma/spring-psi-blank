<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/font-awesome/css/font-awesome.min.css" />
<script type="text/javascript"
	src="resources/css/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="resources/css/bootstrap/js/bootstrap.min.js"></script>
<title>Login</title>
</head>

<body>
	<div class="container">

		<div class="page-header">
			<h1>
				Simple Login <small>Bootstrap template, demonstrating a
					simple login form</small>
			</h1>
		</div>
		<p class="message">${message}</p>
		<!-- Simple Login - START -->
		<form action="j_spring_security_check" method="post" class="col-md-6">
			<div class="form-group">
				<input type="text" id="j_username" name="j_username"
					class="form-control input-lg" placeholder="Email">
			</div>
			<div class="form-group">
				<input type="password" id="j_password" name="j_password"
					class="form-control input-lg" placeholder="Password">
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary btn-lg btn-block"
					value="Sign In" /> <span><a href="#">Need help?</a></span> <span
					class="pull-right"><a href="/register">New Registration</a></span>
			</div>
		</form>
		<!-- Simple Login - END -->

	</div>

</body>
</html>





