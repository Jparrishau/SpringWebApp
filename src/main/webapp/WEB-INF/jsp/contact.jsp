<!DOCTYPE html>
<html lang="en">
<head>
<title>Innovative Auto Brokers</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="/css/style.css" rel="stylesheet">

<link href="/css/contact.css" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="_navbar.jsp" />

	<div class="container">
		<div class="jumbotron jumbotron-iab">

			<h1>Contact Us</h1>

			<!-- We're going to place the form here in the next step -->
			<form id="contact-form" method="post" action="contact.php" role="form">

				<div class="messages"></div>

				<div class="controls">

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="form_name">Firstname *</label> <input id="form_name" type="text" name="name" class="form-control"
									placeholder="Please enter your firstname *" required="required" data-error="Firstname is required.">
								<div class="help-block with-errors"></div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="form_lastname">Lastname *</label> <input id="form_lastname" type="text" name="surname"
									class="form-control" placeholder="Please enter your lastname *" required="required"
									data-error="Lastname is required.">
								<div class="help-block with-errors"></div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="form_email">Email *</label> <input id="form_email" type="email" name="email" class="form-control"
									placeholder="Please enter your email *" required="required" data-error="Valid email is required.">
								<div class="help-block with-errors"></div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="form_phone">Phone</label> <input id="form_phone" type="tel" name="phone" class="form-control"
									placeholder="Please enter your phone">
								<div class="help-block with-errors"></div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label for="form_message">Message *</label>
								<textarea id="form_message" name="message" class="form-control" placeholder="Message for me *" rows="4"
									required="required" data-error="Please,leave us a message."></textarea>
								<div class="help-block with-errors"></div>
							</div>
						</div>
						<div class="col-md-12">
							<input type="submit" class="btn btn-success btn-send" value="Send message">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<p class="text-muted">
								<strong>*</strong> These fields are required. .
							</p>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="_footer.jsp" />
</body>
</html>
