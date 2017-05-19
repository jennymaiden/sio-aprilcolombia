<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="webjars/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css">
<link rel="stylesheet"
	href="webjars/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/SIO_css/SIO_style.css">
<script src="webjars/jquery/2.1.4/jquery.min.js"></script>
<script src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="webjars/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>
<script src="resources/SIO_js/general.js"></script>
<title> ${title}</title>
</head>
<body>
<!-- <h1>la cotizacion id es ${quotation}</h1> -->
	<jsp:include page="../templates/payment_gateway.jsp" />
	<footer>
		<jsp:include page ="../templates/footer.jsp"/>
	</footer>
</body>
</html>