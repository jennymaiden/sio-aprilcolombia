<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(document).ready(function() {
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
						$('.modalCuatomer').click('.panel-body',function() {
								document.cookie = "modalCustomer="+ $(this).data('type')+ "; expires=Thu, 18 Dec 2013 12:00:00 UTC; path=/";
						});
						$('#btn_search_contact').click('.panel-body', function(){
							//alert('entro');
							var cc = document.getElementById('txt_nro_documento').value;
							if(cc == '123'){
								$('#old_customer').css('display', 'block');
								$('.div_new_customer').css('display', 'none');
							}else{
								$('.div_new_customer').css('display', 'block');
								$('#old_customer').css('display', 'none');
							}
							
						});
					});
</script>

<div class="container">
	<div class="jumbotron headboard" style="background-color: #f9f9f9;">
		<div class="row">
			<div class="col-md-4">
				<img alt="SIO APRIL logo empresa" class="img_responsive"
					src="http://www.freejpg.com.ar/asset/900/2f/2f74/F100008604.jpg">
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
					<c:forEach items="${quotations}" var="quotation">
						<div class="form-group">
							<label for="lbl_quotation_plan_type" class="col-lg-2 ">Tipo
								plan </label>
							<div class="col-lg-4" id="lbl_inf_plan_type">
								<c:out value="${quotation.tipoemi}"></c:out>
							</div>
							<label for="lbl_quotation_quantity" class="col-lg-3">Numero
								de personas</label>
							<div class="col-lg-2" id="lbl_quotation_quantity">
								<c:out value="${quotation.nropasajeros}"></c:out>
							</div>
						</div>
						<!-- --------------------- -->
						<div class="form-group">
							<label for="lbl_quotation_product" class="col-lg-2">Producto
							</label>
							<div class="col-lg-2" id="lbl_quotation_product">
								<c:out value="${quotation.nom_prod}"></c:out>
							</div>
							<label for="lbl_quotation_price_u" class="col-lg-2 ">Valor
								unitario </label>
							<div class="col-lg-2" id="lbl_quotation_price_u">
								(COP)
								<c:out value="${quotation.vlr_cop}"></c:out>
								(USD)
								<c:out value="${quotation.vlr_usd}"></c:out>
							</div>
							<label for="lbl_quotation_price_t" class="col-lg-2 ">Valor
								Total </label>
							<div class="col-lg-2" id="lbl_quotation_price_u">
								(COP)
								<c:out value="${quotation.vlr_total}"></c:out>
								(USD)150.00
							</div>
						</div>
						<!-- -------------------- -->
						<div class="form-group">
							<label for="lbl_quotation_dates" class="col-lg-2">Fechas
							</label>
							<div class="col-lg-4" id="lbl_quotation_dates">
								<c:out value="${quotation.fechaini}"></c:out>
								hasta
								<c:out value="${quotation.fechafin}"></c:out>
							</div>
							<label for="lbl_quotation_trm" class="col-lg-2">TRM </label>
							<div class="col-lg-4" id="lbl_quotation_trm">
								(COP)
								<c:out value="${quotation.tasac}"></c:out>
							</div>
						</div>
					</c:forEach>
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
