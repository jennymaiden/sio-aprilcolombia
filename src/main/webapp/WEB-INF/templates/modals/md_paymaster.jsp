<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Modal paymaster-->
<div class="modal fade" id="modalPaymaster" role="dialog">
	<div class="modal-dialog modal-lg">

		<!-- Modal content-->
		<div class="modal-content">

			<div class="modal-body">
				<h2>¿Quien sera el pagador?</h2>
				<ol>
					<li><input type="radio" name="md_pagador" class="paymaster">
						fulano</li>
					<li><input type="radio" name="md_pagador" class="paymaster">
						fulano 2</li>
					<li><input type="radio" name="md_pagador" class="paymaster">
						fulano 3</li>
					<li><input type="radio" name="md_pagador" value="otro"
						class="modalCuatomer" data-toggle="modal"
						data-target="#modalCustomer">Otro. ¿Cual?</li>
				</ol>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-success">
					<i class="glyphicon glyphicon-plus"></i>Sigiente
				</button>

			</div>
		</div>

	</div>
</div>
<!-- --- end MODAL ---- -->