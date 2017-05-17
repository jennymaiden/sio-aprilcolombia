<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						//validacion de responsive
						if (screen.width < 1024) {

							//document.getElementById("infoCustomer").className = "btn btn-success  btn-xs modalCuatomer";
						}

						//boton para enviar el pago
						$('#btn_pay_out').click('.panel-body', function() {
							window.location = "/sioaprilcolombia/confirmation";
						});

						//Boton de editar pagador
						$('#btn_edit_payer').click('.panel-body', function() {
							$('.paymaster').css('display', 'block');
						});

						//Botton de modal para cliente
						$('.modalCuatomer')
								.click(
										'.panel-body',
										function() {
											document.cookie = "modalCustomer="
													+ $(this).data('type')
													+ "; expires=Thu, 18 Dec 2013 12:00:00 UTC; path=/";
										});
					});
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

				<div class="form-horizontal">
					<div class="form-group">
						<label for="lbl_quotation_plan_type" class="col-lg-2 ">Tipo
							plan </label>
						<div class="col-lg-4" id="lbl_inf_plan_type">Familiar</div>
						<label for="lbl_quotation_quantity" class="col-lg-3">Numero
							de personas</label>
						<div class="col-lg-2" id="lbl_quotation_quantity">3</div>
					</div>
					<!-- --------------------- -->
					<div class="form-group">
						<label for="lbl_quotation_product" class="col-lg-2">Producto
						</label>
						<div class="col-lg-2" id="lbl_quotation_product">Silver
							Economy</div>
						<label for="lbl_quotation_price_u" class="col-lg-2 ">Valor
							unitario </label>
						<div class="col-lg-2" id="lbl_quotation_price_u">
							(COP)144.200 (USD)50.00</div>
						<label for="lbl_quotation_price_t" class="col-lg-2 ">Valor
							Total </label>
						<div class="col-lg-2" id="lbl_quotation_price_u">
							(COP)432.600 (USD)150.00</div>
					</div>
					<!-- -------------------- -->
					<div class="form-group">
						<label for="lbl_quotation_dates" class="col-lg-2">Fechas </label>
						<div class="col-lg-4" id="lbl_quotation_dates">25-05-2017
							hasta 31-05-2017</div>
						<label for="lbl_quotation_trm" class="col-lg-2">TRM </label>
						<div class="col-lg-4" id="lbl_quotation_trm">(COP)2.300</div>
					</div>
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
			<button type="button" class="btn btn-xs btn-success"
				data-toggle="modal" data-target="#modalPaymaster">
				<i class="glyphicon glyphicon-ok"></i> pagador
			</button>
			<div class="form-group" align="center">
				<h2>Ingrese la informacion de él o los beneficiarios</h2>
				<!-- Trigger the modal with a button -->
				<button type="button"
					class="btn btn-outline btn-primary modalCuatomer"
					data-toggle="modal" data-target="#modalCustomer"
					data-type="add_beneficiary">Agregar</button>
			</div>

			<hr>

			<!-- -----TABLE CUSTOMER ------ -->
			<%
				String json = (String) session.getAttribute("tableCustomer");
				if (session.getAttribute("tableCustomer") == null) {
					json = "";
				}
			%>

			<div class="table-responsive">
				<table class="table" id="tbl_customer">
					<tr class="paymaster" style="display: none">
						<th>Selecione el pagador</th>
					</tr>
					<%=json%>
					<tr class="paymaster" style="display: none">
						<td style="width: 157px;" align="center"><input type="radio"
							name="pagador" value="otro" class="modalCuatomer"
							data-toggle="modal" data-target="#modalCustomer"></td>
						<td>Otro. ¿Cual?</td>
					</tr>
				</table>
			</div>
			<!-- --- END TABLE CUSTOMER---- -->
			<!-- ----- Contacto de emergencia ----- -->
			<div class="form-group" id="emergency_contact">
				<h2 align="center">Contacto de emergencia</h2>
				<jsp:include page="customer.jsp" />
			</div>
			<!-- ----- END -Contacto de emergencia ----- -->
			<hr>
			<!-- button validator -->
			<div class="row">
				<div class="col-md-6" align="center">
					<button type="button" class="btn btn-primary" id="btn_edit_payer">
						<i class="glyphicon glyphicon-pencil"></i> Editar pagador
					</button>
				</div>
				<div class="col-md-6" align="center">
					<button type="button" class="btn btn-outline btn-success"
						data-toggle="modal" data-target="#modalAbstract">
						<i class="glyphicon glyphicon-ok"></i> Confirmar
					</button>
				</div>
			</div>
			<!-- END -button validator -->

		</div>
	</div>
</div>
<!-- Modal quien va pagar id="modalPaymaster" -->
<jsp:include page="modals/md_paymaster.jsp" />

<!-- Modal search and add customer id="modalCustomer" -->
<jsp:include page="modals/md_customerPay.jsp" />

<!-- Modal abstract of sale id="modalAbstract"  -->
<jsp:include page="modals/md_abstractSale.jsp" />
