<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<form class="form-inline" id="form_search_contact" align="center">
	<div class="form-group">
		<label for="select_tipodoc">Tipo de documento</label> <select
			class="form-control" id="select_tipodoc" name="select_tipodoc">
			<option value="CC">CC</option>
			<option value="CE">CE</option>
			<option value="PA">PA</option>
			<option value="RC">RC</option>
			<option value="TI">TI</option>
			<option value="NIT">NIT</option>
		</select> &nbsp;&nbsp;&nbsp;&nbsp; <label for="txt_nro_documento">N&uacute;mero
			de documento</label> <input type="text" class="form-control"
			id="txt_nro_documento" name="txt_nro_documento"
			placeholder="Ingrese el N&uacute;mero de documento">
		&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-primary" title="crear"
			id="btn_buscar">
			<span class="glyphicon glyphicon-zoom-in"></span>&nbsp;&nbsp;Buscar
		</button>

	</div>

</form>
<hr>
<div id="div_from_customer">
	<form class="form-horizontal" id="form_customer" >

		<div id="inf_customer">
			<div class="alert alert-warning" id="new_customer">
				<small>Ingrese los nombres y apellidos completos como
					aparece en el pasaporte o documento de identidad, los campos
					marcados con ( <code>*</code> ) son obligatorios
				</small>

			</div>
			<!-- --------- -->
			<div class="alert alert-info" id="old_customer">
				<small>Gracias por su preferencia con nosotros.
				</small>

			</div>
			<!-- -------------------- -->
			<div class="form-group">
				<label for="txt_inf_name" class="col-lg-2 control-label"><code>*</code>Nombre</label>
				<div class="col-lg-4">
					<input type="text" class="form-control" id="txt_inf_name"
						name="txt_inf_name" required>
				</div>
				<label for="txt_inf_lastname" class="col-lg-2 control-label"><code>*</code>Apellidos</label>
				<div class="col-lg-4">
					<input type="text" class="form-control" id="txt_inf_lastname"
						name="txt_inf_lastname" required>
				</div>
			</div>
			<!-- ------------------- -->
			<div class="form-group">
				<label for="sel_inf_gender" class="col-lg-2 control-label"><code>*</code>Género</label>
				<div class="col-lg-1">
					<select class="form-control" id="sel_inf_gender"
						name="sel_inf_gender" required>
						<option value="">-</option>
						<option value="M">M</option>
						<option value="F">F</option>
					</select>
				</div>
				<div class="col-xs-3"></div>
				<label for="txt_inf_mail" class="col-lg-2 control-label"><code>*</code>E-Mail</label>
				<div class="col-lg-4">
					<input type="email" class="form-control" id="txt_inf_mail"
						name="txt_inf_mail" required>
				</div>
			</div>
			<!-- ------------------ -->
			<div class="form-group">
				<label for="txt_inf_birth_date" class="col-lg-2 control-label"><code>*</code>Fecha
					de Nacimiento</label>
				<div class="col-lg-4">
					<input type="text" class="form-control" id="txt_inf_birthdate"
						name="txt_inf_birthdate" required>
				</div>
				<label for="sel_inf_country_birth" class="col-lg-2 control-label"><code>*</code>País
					de Nacimiento</label>
				<div class="col-lg-4">
					<select id="sel_inf_country_birth" class="small  form-control"
						name="sel_inf_country_birth" required>
						<option value="">---------</option>
						<option value="690">BOGOTA</option>
						<option value="691">BUENOS AIRES</option>
						<option value="692">TUJUANA</option>
					</select>
				</div>
			</div>
			<!-- ------------------ -->
			<div class="form-group">
				<label for="sel_inf_country_residence"
					class="col-lg-2 control-label">Pais de residencia</label>
				<div class="col-lg-4">
					<select id="sel_inf_country_residence" class="small  form-control"
						name="sel_inf_country_residence" required>
						<option value="0">---------</option>
						<option value="690">COLOMBIA</option>
						<option value="691">ARGENTINA</option>
						<option value="692">MEXICO</option>
					</select>
				</div>
				<label for="sel_inf_city_residence" class="col-lg-2 control-label">Ciudad
					de residencia</label>
				<div class="col-lg-4">
					<select id="sel_inf_city_residence" class="small  form-control"
						name="sel_inf_city_residence" required>
						<option value="0">---------</option>
						<option value="690">BOGOTA</option>
						<option value="691">MEDELLIN</option>
						<option value="692">CALI</option>
					</select>
				</div>
			</div>
			<!-- ------------------ -->
			<div class="form-group">
				<label for="sel_inf_province"
					class="col-lg-2 control-label">Estado/Provincia</label>
				<div class="col-lg-4">
					<select id="sel_inf_province" class="small  form-control"
						name="sel_inf_province" required>
						<option value="0">---------</option>
						<option value="690">CUNDINAMARCA</option>
						<option value="691">BOYACA</option>
						<option value="692">ANTIOQUIA</option>
					</select>
				</div>
				<label for="txt_inf_address" class="col-lg-2 control-label"><code>*</code>Dirección</label>
				<div class="col-lg-4">
					<input type="text" class="form-control" id="txt_inf_address"
						name="txt_inf_address" required>
				</div>
			</div>
			<!-- -------------- -->
			<div class="form-group">
				<label for="txt_inf_landline"
					class="col-lg-2 control-label">Teléfono fijo</label>
				<div class="col-lg-4">
					<input type="number" class="form-control" id="txt_inf_landline"
						name="txt_inf_landline">
				</div>
				<label for="txt_inf_mobile_phone" class="col-lg-2 control-label"><code>*</code>Teléfono móvil</label>
				<div class="col-lg-4">
					<input type="number" class="form-control" id="txt_inf_mobile_phone"
						name="txt_inf_mobile_phone" required>
				</div>
			</div>
			<!-- -------------- -->
		</div>
		
	</form>
</div>

