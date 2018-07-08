<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Innovative Auto Brokers</title>

<link href="/css/style.css" rel="stylesheet">

<link href="/css/forsale.css" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<jsp:include page="_navbar.jsp" />
	<div class="container">
		<h1 class="my-4">
			For Sale <small>Inventory</small>
		</h1>

		<div class="row">
			<jsp:include page="_forsalePanel.jsp" />
			<jsp:include page="_forsalePanel.jsp" />
			<jsp:include page="_forsalePanel.jsp" />
			<jsp:include page="_forsalePanel.jsp" />
			<jsp:include page="_forsalePanel.jsp" />
			<jsp:include page="_forsalePanel.jsp" />
		</div>

		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
				</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
				</a></li>
		</ul>

	</div>

	<jsp:include page="_footer.jsp" />
</body>
</html>
