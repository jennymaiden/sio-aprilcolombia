<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Modal RESUMEN -->
<div class="modal fade" id="modalAbstract" role="dialog">
	<div class="modal-dialog modal-lg">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Resumen de compra</h4>
			</div>
			<div class="modal-body">
				<h2>Informacion producto</h2>

				<div class="form-horizontal">
					<div class="form-group">
						<label for="lbl_quotation_plan_type" class="col-lg-2 ">Tipo
							plan </label>
						<div class="col-lg-4" id="lbl_inf_plan_type">Familiar</div>
						<label for="lbl_quotation_quantity" class="col-lg-3">Numero
							de personas</label>
						<div class="col-lg-2" id="lbl_quotation_quantity">3</div>

					</div>

					<!-- -------------------- -->
					<div class="form-group">
						<label for="lbl_quotation_quantity" class="col-lg-2">Producto</label>
						<div class="col-lg-4" id="lbl_quotation_quantity">Silver
							Economy</div>
						<label for="lbl_quotation_dates" class="col-lg-2">Fechas </label>
						<div class="col-lg-4" id="lbl_quotation_dates">25-05-2017
							hasta 31-05-2017</div>


					</div>
					<!-- --------------------- -->
					<div class="form-group">
						<label for="lbl_quotation_price_u" class="col-lg-2 ">Valor
							unitario </label>
						<div class="col-lg-4" id="lbl_quotation_price_u">
							(COP)144.200 (USD)50.00</div>
						<label for="lbl_quotation_trm" class="col-lg-2">TRM </label>
						<div class="col-lg-3" id="lbl_quotation_trm">(COP)2.300</div>


					</div>
					<!-- ------------------ -->
					<div class="row">

						<div class="col-md-6 col-md-offset-6" id="lbl_quotation_price_u">
							<h3>TOTAL: (COP)432.600 (USD)150.00</h3>
						</div>

					</div>
					<!--  END info producto -->
					<hr>
					<h2>Beneficiarios</h2>
					<ol>
						<li>fulano</li>
						<li>fulano 2</li>
						<li>fulano 3</li>
					</ol>
					<hr>
					<h2>Pagador</h2>
					<p class="text-justify">Cosmefulanito</p>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success" id="btn_pay_out">
						<i class="glyphicon glyphicon-check"></i> Pagar
					</button>

				</div>
			</div>

		</div>
	</div>

</div>
<!-- --- end MODAL RESUMEN ---- -->