<!DOCTYPE html>
<html lang="en">
<head>
<title>Innovative Auto Brokers</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="/css/style.css" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
</head>
<style>
.jumbotron {
	margin-bottom: 20px;
	margin-top: 20px;
}

.jumbotron.jumbotron-iab {
	
}
</style>
</head>
<body>
	<div id="holder">
		<jsp:include page="_navbar.jsp" />
		<div class="container">
			<div class="jumbotron jumbotron-iab">
				<div class="container text-center">
					<h1>Innovative Auto Brokers</h1>
					<p>Wholesale Automobile Dealer</p>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<jsp:include page="_salePanel.jsp" />
				<jsp:include page="_salePanel.jsp" />
				<jsp:include page="_salePanel.jsp" />
				<jsp:include page="_salePanel.jsp" />
				<jsp:include page="_salePanel.jsp" />
				<jsp:include page="_salePanel.jsp" />
				<jsp:include page="_salePanel.jsp" />
				<jsp:include page="_salePanel.jsp" />
				<jsp:include page="_salePanel.jsp" />
			</div>
		</div>
	</div>
	<jsp:include page="_footer.jsp" />
</body>
</html>