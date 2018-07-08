<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Innovative Auto Brokers</title>

<link href="/css/style.css" rel="stylesheet">

<link rel="stylesheet" href="/css/signin.css">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
</head>
<style>
.margin-top-iab {
	margin-top: 1rem;
}
</style>
<body>
	<jsp:include page="_navbar.jsp" />
	<div class="container margin-top-iab">
		<!-- /login?error=true -->
		<c:if test="${param.error == 'true'}">
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<strong>Invalid Credentials</strong> The Username and/or Password combination entered is not valid.
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
		</c:if>

	</div>
	<form name='f' class="form-signin" action="/j_spring_security_check" method='POST'>
		<h2 class="form-signin-heading">Please sign in</h2>
		<label for="inputEmail" class="sr-only">Username</label> <input type='text' name='username' id="inputEmail"
			class="form-control" placeholder="Username" required autofocus> <label for="inputPassword" class="sr-only">Password</label>
		<input type="password" id="inputPassword" class="form-control" name='password' placeholder="Password" required>
		<div class="checkbox">
			<label> <input type="checkbox" value="remember-me"> Remember me
			</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" value="submit" type="submit">Sign in</button>
	</form>
	<div class="container margin-top-iab">

		<h3>Example Accounts:</h3>
		<p>
			dbadmin1/123 <br> dbuser1/123
		</p>
	</div>
</body>
</html>