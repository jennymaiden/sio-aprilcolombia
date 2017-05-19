<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Modal Customer-->
<div class="modal fade" id="modalCustomer" role="dialog">
	<div class="modal-dialog modal-lg">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Información Beneficiario De La Tarjeta
					de Asistencias</h4>
			</div>
			<div class="modal-body">
				<jsp:include page="../customer.jsp" />
			</div>
			<div class="modal-footer">
				<button type="submit" class="btn btn-success" form="form_customer">
					<i class="glyphicon glyphicon-plus"></i>Agregar
				</button>

			</div>
		</div>

	</div>
</div>
<!-- --- end MODAL ---- -->