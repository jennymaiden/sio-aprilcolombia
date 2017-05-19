<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="webjars/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/SIO_css/SIO_style.css">
<script src="webjars/jquery/2.1.4/jquery.min.js"></script>
<script src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="webjars/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>
<script src="resources/SIO_js/general.js"></script>
<title>Pay - Confirmation</title>
</head>
<body>
<div class="container">
	<div class="from-control">
		<h1>Informe de transacción</h1>
		<p>valor pagado</p><br>
		<p>Datos del pagador</p><br>
		<p>codigo de pago</p>
	</div>
	<div class="row headboard">
			<div class="col-md-4">
				<img alt="SIO APRIL logo empresa" class="img_responsive"
					src="http://www.freejpg.com.ar/asset/900/2f/2f74/F100008604.jpg">
			</div>
			<div class="col-md-8">
				<h2>Nombre de la agencia</h2>
				<p>
					<strong>Nit:</strong>123456789
				</p>
				<a href="https://www.google.com.co/" target="_blank">Ir agencia</a>
			</div>
		</div>
</div>
<footer>
		<jsp:include page ="../templates/footer.jsp"/>
	</footer>
</body>
</html>