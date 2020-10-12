// global the manage contacts table
var manageContactsTable;
var showHistoryTable;
var contact_h_id = 1; // showing history for selected contact (ID)

$(document).ready(function() {
	manageContactsTable = $("#manageContactsTable").DataTable({
		"ajax": "php_action/retrieve.php",
		"order": []
	});

  //TODO
	$(document).ready(function() {
		showHistoryTable = $("#showHistoryTable").DataTable({
			"ajax": {
            "url": "php_action/retrieveHistory.php",
            "data": function ( d ) {
                d.contact_id = contact_h_id;
                // d.custom = $('#myInput').val();
                // etc
            }
					},
			"order": [],
			"scrollx": true
		});
	})

	$("#addContactModalBtn").on('click', function() {
		// reset the form
		$("#createContactForm")[0].reset();
		// remove the error
		$(".form-group").removeClass('has-error').removeClass('has-success');
		$(".text-danger").remove();
		// empty the message div
		$(".messages").html("");

		// submit form
		$("#createContactForm").unbind('submit').bind('submit', function() {

			$(".text-danger").remove();
			var form = $(this);

			// validation
			var vorname = $("#vorname").val();
			var nachname = $("#nachname").val();

			if(vorname == "") {
				$("#vorname").closest('.form-group').addClass('has-error');
				$("#vorname").after('<p class="text-danger">Ein Vorname muss eingegeben werden</p>');
			} else {
				$("#vorname").closest('.form-group').removeClass('has-error');
				$("#vorname").closest('.form-group').addClass('has-success');
			}

			if(nachname == "") {
				$("#nachname").closest('.form-group').addClass('has-error');
				$("#nachname").after('<p class="text-danger">Ein Nachname muss eingegeben werden</p>');
			} else {
				$("#nachname").closest('.form-group').removeClass('has-error');
				$("#nachname").closest('.form-group').addClass('has-success');
			}

			if(vorname && nachname) {

				// submit the form to server
				$.ajax({
					url : form.attr('action'),
					type : form.attr('method'),
					data : form.serialize(),
					dataType : 'json',
					success:function(response) {

						// remove the error
						$(".form-group").removeClass('has-error').removeClass('has-success');

						if(response.success == true) {

							// console.log("Success is true");
							$(".messages").html('<div class="alert alert-success alert-dismissible" role="alert">'+
							  '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
							  '<strong> <span class="glyphicon glyphicon-ok-sign"></span> </strong>'+response.messages+
							'</div>');

							// reset the form
							$("#createContactForm")[0].reset();

							// reload the datatables
							manageContactsTable.ajax.reload(null, false);
							// this function is built in function of datatables;

						} else {
							$(".messages").html('<div class="alert alert-warning alert-dismissible" role="alert">'+
							  '<button type="button" class="close" data-dismiss="alert" aria-label="Schlie&szlig;en"><span aria-hidden="true">&times;</span></button>'+
							  '<strong> <span class="glyphicon glyphicon-exclamation-sign"></span> </strong>'+response.messages+
							'</div>');
						}  // /else
					} // success
				}); // ajax submit
			} /// if


			return false;
		}); // /submit form for create contact
	}); // /add modal

});


function showHistory(id = null) {
	if(id) {

    contact_h_id = id; // global variable for ajax.reload() call
		showHistoryTable.ajax.reload(null, false);

		// remove the error
		$(".form-group").removeClass('has-error').removeClass('has-success');
		$(".text-danger").remove();
		// empty the message div
		$(".edit-messages").html("");

		// remove the id
		$("#contact_id").remove();

	} else {
		alert("Fehler : Bitte die Seite neu laden");
	}

}



function removeContact(id = null) {
	if(id) {
		// click on remove button

		//console.log('ID to remove: ' + id);

		$("#removeBtn").unbind('click').bind('click', function() {
			$.ajax({
				url: 'php_action/remove.php',
				type: 'post',
				data: {contact_id : id},
				dataType: 'json',
				success:function(response) {
					if(response.success == true) {
						$(".removeMessages").html('<div class="alert alert-success alert-dismissible" role="alert">'+
							  '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
							  '<strong> <span class="glyphicon glyphicon-ok-sign"></span> </strong>'+response.messages+
							'</div>');

						// refresh the table
						manageContactsTable.ajax.reload(null, false);

						// close the modal
						$("#removeContactModal").modal('hide');

					} else {
						$(".removeMessages").html('<div class="alert alert-warning alert-dismissible" role="alert">'+
							  '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
							  '<strong> <span class="glyphicon glyphicon-exclamation-sign"></span> </strong>'+response.messages+
							'</div>');
					}
				}
			});
		}); // click remove btn
	} else {
		alert('Error: Bitte die Seite neu laden');
	}
}

function editContact(id = null) {
	if(id) {

		// remove the error
		$(".form-group").removeClass('has-error').removeClass('has-success');
		$(".text-danger").remove();
		// empty the message div
		$(".edit-messages").html("");

		// remove the id
		$("#contact_id").remove();

		// fetch the contact data
		$.ajax({
			url: 'php_action/getSelectedContact.php',
			type: 'post',
			data: {contact_id : id},
			dataType: 'json',
			success:function(response) {
				$("#editAnrede").val(response.anrede);
				$("#editTitel").val(response.titel);
				$("#editVorname").val(response.vorname);
				$("#editNachname").val(response.nachname);
				$("#editEmail").val(response.email);
				$("#editTelefon").val(response.telefon);
				$("#editStrasse").val(response.strasse);
				$("#editPlz").val(response.plz);
				$("#editOrt").val(response.ort);

				// contact id
				$(".editContactModal").append('<input type="hidden" name="contact_id" id="contact_id" value="'+response.id+'"/>');

				// update the contact data
				$("#updateContactForm").unbind('submit').bind('submit', function() {
					// remove error messages
					$(".text-danger").remove();

					var form = $(this);

					// validation
					var editVorname = $("#editVorname").val();
					var editNachname = $("#editNachname").val();

					if(editVorname == "") {
						$("#editVorname").closest('.form-group').addClass('has-error');
						$("#editVorname").after('<p class="text-danger">Der Vorname darf nicht leer sein</p>');
					} else {
						$("#editVorname").closest('.form-group').removeClass('has-error');
						$("#editVorname").closest('.form-group').addClass('has-success');
					}

					if(editNachname == "") {
						$("#editNachname").closest('.form-group').addClass('has-error');
						$("#editNachname").after('<p class="text-danger">Der Nachname darf nicht leer sein</p>');
					} else {
						$("#editNachname").closest('.form-group').removeClass('has-error');
						$("#editNachname").closest('.form-group').addClass('has-success');
					}

					if(editVorname && editNachname) {
						$.ajax({
							url: form.attr('action'),
							type: form.attr('method'),
							data: form.serialize(),
							dataType: 'json',
							success:function(response) {
								if(response.success == true) {
									$(".edit-messages").html('<div class="alert alert-success alert-dismissible" role="alert">'+
									  '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
									  '<strong> <span class="glyphicon glyphicon-ok-sign"></span> </strong>'+response.messages+
									'</div>');

									// reload datatable
									manageContactsTable.ajax.reload(null, false);
									// this function is built in function of datatables;

									// remove the error
									$(".form-group").removeClass('has-success').removeClass('has-error');
									$(".text-danger").remove();
								} else {
									$(".edit-messages").html('<div class="alert alert-warning alert-dismissible" role="alert">'+
									  '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+
									  '<strong> <span class="glyphicon glyphicon-exclamation-sign"></span> </strong>'+response.messages+
									'</div>')
								}
							} // /success
						}); // /ajax
					} // /if

					return false;
				});

			} // /success
		}); // /fetch selected contact info

	} else {
		alert("Fehler : Bitte die Seite neu laden");
	}
}
