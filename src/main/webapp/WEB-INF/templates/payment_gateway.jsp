<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
<!--
$(document).ready(function() {
	$('#btn_add_customer').click('.panel-body', function(){
		
		var name			 =	document.getElementById("txt_inf_name").value; 
		var lastname 		 =	document.getElementById("txt_inf_lastname").value; 
		var genero 			 =	document.getElementById("sel_inf_gender").value; 
		var email 			 =	document.getElementById("txt_inf_mail").value; 
		var birth_date 		 =	document.getElementById("txt_inf_birthdate").value; 
		var country_birth	 = 	document.getElementById("sel_inf_country_birth").value; 
		var country_residence = document.getElementById("sel_inf_country_residence").value;
		var city_residence	 =	document.getElementById("sel_inf_city_residence").value;
		var province		 =	document.getElementById("sel_inf_province").value;
		var address			 =	document.getElementById("txt_inf_address").value; 
		var landline		 = 	document.getElementById("txt_inf_landline").value;
		var mobile_phone	 = 	document.getElementById("txt_inf_mobile_phone").value; 
		
	});
});

//-->
</script>
<div class="container">
	<div class="jumbotron" style="background-color: #f9f9f9;">
		<div class="row">
			<div class="col-md-4">
				<img alt="SIO APRIL logo empresa"
					src="https://www.flickr.com/gp/150691688@N03/LVkvWs">
			</div>
			<div class="col-md-8">
				<h2>Nombre de la agencia</h2>
				<p>
					<strong>Nit:</strong>123456789
				</p>
			</div>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			<strong>Informacion general</strong>
		</div>
		<div class="panel-body">
			<form class="form-horizontal" id="form_general_info">

				<div class="form-group">
					<label for="lbl_quotation_plan_type" class="col-lg-2 control-label">Tipo
						plan </label>
					<div class="col-lg-4" id="lbl_inf_plan_type">Familiar</div>
					<label for="lbl_quotation_quantity" class="col-lg-2 control-label">Numero
						de personas</label>
					<div class="col-lg-4" id="lbl_quotation_quantity">3</div>
				</div>
				<!-- --------------------- -->
				<div class="form-group">
					<label for="lbl_quotation_product" class="col-lg-2 control-label">Producto
					</label>
					<div class="col-lg-4" id="lbl_quotation_product">Silver
						Economy</div>
					<label for="lbl_quotation_price_u" class="col-lg-2 control-label">Valor
						unitario </label>
					<div class="col-lg-2" id="lbl_quotation_price_u">
						(COP)144.200 (USD)50.00</div>
					<label for="lbl_quotation_price_t" class="col-lg-2 control-label">Valor
						Total </label>
					<div class="col-lg-2" id="lbl_quotation_price_u">
						(COP)432.600 (USD)150.00</div>
				</div>
				<!-- -------------------- -->
				<div class="form-group">
					<label for="lbl_quotation_dates" class="col-lg-2 control-label">Fechas
					</label>
					<div class="col-lg-4" id="lbl_quotation_dates">25-05-2017
						hasta 31-05-2017</div>
					<label for="lbl_quotation_trm" class="col-lg-2 control-label">TRM
					</label>
					<div class="col-lg-4" id="lbl_quotation_trm">3</div>
				</div>
			</form>

		</div>
	</div>
	<!-- ------- PANEL CUSTOMER---------------- -->
	<div class="panel panel-default">
		<div class="panel-heading">
			<strong>Beneficiarios</strong>
		</div>
		<div class="panel-body">
			<div class="form-group" align="center">
				<h2>Ingrese la informacion de él o los beneficiarios</h2>
				<!-- Trigger the modal with a button -->
				<button type="button" class="btn btn-outline btn-primary"
					data-toggle="modal" data-target="#modalCustomer">Agregar</button>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="modalCustomer" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Información Beneficiario De La
								Tarjeta de Asistencias</h4>
						</div>
						<div class="modal-body">
							<jsp:include page="customer.jsp" />
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-success" form="form_customer">
								<i class="glyphicon glyphicon-plus">Agregar</i>
							</button>
							
						</div>
					</div>

				</div>
			</div>
			<!-- --- end MODAL ---- -->
			<hr>
			<!-- -----TABLE CUSTOMER ------ -->
			<div class="table-responsive">
				<table class="table" id="tbl_customer">

				</table>
			</div>
			<!-- --- END TABLE CUSTOMER---- -->
		</div>
	</div>
</div>

