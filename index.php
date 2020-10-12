<!DOCTYPE html>
<html>
<head>
	<title>Kontaktverwaltung</title>

	<!-- bootstrap css -->
	<link rel="stylesheet" type="text/css" href="assests/bootstrap/css/bootstrap.min.css">
	<!-- datatables css -->
	<link rel="stylesheet" type="text/css" href="assests/datatables/datatables.min.css">

</head>
<body>
	<!-- jquery plugin -->
	<script type="text/javascript" src="assests/jquery/jquery.min.js"></script>
	<!-- bootstrap js -->
	<script type="text/javascript" src="assests/bootstrap/js/bootstrap.min.js"></script>
	<!-- datatables js -->
	<script type="text/javascript" src="assests/datatables/datatables.min.js"></script>
	<!-- include custom index.js -->
	<script type="text/javascript" src="custom/js/index.js"></script>

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<center><h1 class="page-header">Kontaktverwaltung </h1> </center>

				<div class="removeMessages"></div>

				<button class="btn btn-default pull pull-right" data-toggle="modal" data-target="#addContact" id="addContactModalBtn">
					<span class="glyphicon glyphicon-plus-sign"></span>	Kontakt hinzuf&uuml;gen
				</button>

				<br /> <br /> <br />

				<table class="table" id="manageContactsTable">
					<thead>
						<tr>
							<th>ID</th>
							<th>Anrede</th>
							<th>Titel</th>
							<th>Vorname</th>
							<th>Nachname</th>
							<th>E-Mail</th>
							<th>Telefon</th>
							<th>Stra&szlig;e</th>
							<th>PLZ</th>
							<th>Ort</th>
							<th>Admin</th>


						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>

	<!-- add modal -->
	<div class="modal fade" tabindex="-1" role="dialog" id="addContact">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
					<!-- "x" -->
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"><span class="glyphicon glyphicon-plus-sign"></span> Kontakt hinzuf&uuml;gen</h4>
	      </div>

	      <form class="form-horizontal" action="php_action/create.php" method="POST" id="createContactForm">

	      <div class="modal-body">
	      	<div class="messages"></div>

				<div class="form-group">
					<label for="anrede" class="col-sm-2 control-label">Anrede</label>
					<div class="col-sm-10">
						<select class="form-control" name="anrede" id="anrede">
							<option value="">~~Auswahl~~</option>
							<option value="Herr">Herr</option>
							<option value="Frau">Frau</option>
							<option value="">_(Divers)</option> <!-- without salutation -->
							<option value="Firma">Firma</option>
						</select>
					</div>
				</div>
			  <div class="form-group">
			    <label for="titel" class="col-sm-2 control-label">Titel</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="titel" name="titel" placeholder="Titel">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="vorname" class="col-sm-2 control-label">Vorname</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="vorname" name="vorname" placeholder="Vorname">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="nachnane" class="col-sm-2 control-label">Nachname</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="nachname" name="nachname" placeholder="Nachname">
			    </div>
			  </div>
				<div class="form-group">
					<label for="email" class="col-sm-2 control-label">E-Mail</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="email" name="email" placeholder="E-Mail">
					</div>
				</div>
				<div class="form-group">
					<label for="telefon" class="col-sm-2 control-label">Telefon</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="telefon" name="telefon" placeholder="Telefon">
					</div>
				</div>
				<div class="form-group">
					<label for="strasse" class="col-sm-2 control-label">Stra&szlig;e</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="strasse" name="strasse" placeholder="Stra&szlig;e">
					</div>
				</div>
				<div class="form-group">
					<label for="plz" class="col-sm-2 control-label">PLZ</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="plz" name="plz" placeholder="PLZ">
					</div>
				</div>
				<div class="form-group">
					<label for="ort" class="col-sm-2 control-label">Ort</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="ort" name="ort" placeholder="Ort">
					</div>
				</div>

	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Schlie&szlig;en</button>
	        <button type="submit" class="btn btn-primary">Eintrag speichern</button>
	      </div>
	      </form>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<!-- /add modal -->


	<!-- showHistory modal -->
	<div class="modal fade" tabindex="-1" role="dialog" id="showHistoryModal">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Schlie&szlig;en"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title"><span class="glyphicon glyphicon-list-alt"></span> &Auml;nderungshistorie</h4>
				</div>
				<div class="modal-body">
					<br/>
					<table class="table" id="showHistoryTable" class="display" style="width:100%"">
						<thead>
							<tr>
								<th>ID</th>
								<th>aktiv ab</th>
								<th>aktiv bis</th>
								<th>aktiv</th>
								<th>User</th>
								<th>Vorname</th>
								<th>Nachname</th>
								<th>E-Mail</th>
								<th>Telefon</th>

							</tr>
						</thead>
					</table>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Schlie&szlig;en</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<!-- /showHistory modal -->

	<!-- remove modal -->
	<div class="modal fade" tabindex="-1" role="dialog" id="removeContactModal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Schlie&szlig;en"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"><span class="glyphicon glyphicon-trash"></span> Kontakt entfernen</h4>
	      </div>
	      <div class="modal-body">
	        <p>M&ouml;chten Sie den Kontakt wirklich l&ouml;schen?</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Abbrechen</button>
	        <button type="button" class="btn btn-primary" id="removeBtn">Kontakt l&ouml;schen</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<!-- /remove modal -->

	<!-- edit modal -->
	<div class="modal fade" tabindex="-1" role="dialog" id="editContactModal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Schlie&szlig;en"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"><span class="glyphicon glyphicon-edit"></span> Kontakt bearbeiten</h4>
	      </div>

		<form class="form-horizontal" action="php_action/update.php" method="POST" id="updateContactForm">

	      <div class="modal-body">

	        <div class="edit-messages"></div>

					<div class="form-group">
						<label for="editAnrede" class="col-sm-2 control-label">Anrede</label>
						<div class="col-sm-10">
							<select class="form-control" name="editAnrede" id="editAnrede">
								<option value="">~~Auswahl~~</option>
								<option value="Herr">Herr</option>
								<option value="Frau">Frau</option>
								<option value="">_(Divers)</option> <!-- without salutation -->
								<option value="Firma">Firma</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="editTitel" class="col-sm-2 control-label">Titel</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="editTitel" name="editTitel" placeholder="Titel">
						</div>
					</div>
					<div class="form-group">
						<label for="editVorname" class="col-sm-2 control-label">Vorname</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="editVorname" name="editVorname" placeholder="Vorname">
						</div>
					</div>
					<div class="form-group">
						<label for="editNachname" class="col-sm-2 control-label">Nachname</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="editNachname" name="editNachname" placeholder="Nachname">
						</div>
					</div>
					<div class="form-group">
						<label for="editEmail" class="col-sm-2 control-label">E-Mail</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="editEmail" name="editEmail" placeholder="E-Mail">
						</div>
					</div>
					<div class="form-group">
						<label for="editTelefon" class="col-sm-2 control-label">Telefon</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="editTelefon" name="editTelefon" placeholder="Telefon">
						</div>
					</div>
					<div class="form-group">
						<label for="editStrasse" class="col-sm-2 control-label">Stra&szlig;e</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="editStrasse" name="editStrasse" placeholder="Stra&szlig;e">
						</div>
					</div>
					<div class="form-group">
						<label for="editPlz" class="col-sm-2 control-label">PLZ</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="editPlz" name="editPlz" placeholder="PLZ">
						</div>
					</div>
					<div class="form-group">
						<label for="editOrt" class="col-sm-2 control-label">Ort</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="editOrt" name="editOrt" placeholder="Ort">
						</div>
					</div>

	      </div> <!-- /.modal-body -->
	      <div class="modal-footer editContactModal">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Schlie&szligen</button>
	        <button type="submit" class="btn btn-primary">&Auml;nderungen speichern</button>
	      </div>
	      </form>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<!-- /edit modal -->



</body>
</html>
