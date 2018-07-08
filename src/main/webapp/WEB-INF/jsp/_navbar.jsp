<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<style>
body {
	padding-top: 56px;
}
}
</style>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="/">
			<i class="fas fa-car"></i> Innovative Auto Brokers
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="/">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="/forsale">For Sale</a></li>
				<li class="nav-item"><a class="nav-link" href="/about">About</a></li>
				<li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>
				<li class="nav-item"><a class="nav-link" href="/login">
						<sec:authorize access="!isAuthenticated()">
								Login
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
								Logout
						</sec:authorize>
					</a></li>
			</ul>
		</div>
	</div>
</nav>