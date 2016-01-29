$(function() {

	var Users = {
		//create use function
		createUser : function() {
			$('#createUser').click(function(e) {
				e.preventDefault();
				var url = $(this).attr('href')+'/1';
				
                $('#myModalLabel').text('Create user account');
				
                $.ajax({
					url : url,
					success : function(html) {
						
						$('#createUserModal').find('.modal-body').html(html);
						$('#createUserModal').modal({backdrop:false});
					},
					error : function(e) {
						console.log(e.responseText);
					}
				});
			});
		},
		Utils : {
			notify : function (data) {
				var n = noty({
					text        : data.text||data,
					type        : data.type||'alert',
					dismissQueue: data.dismissQueue||false,
					timeout		: 3000,
					layout      : data.layout||'top'
				});
			},
			confirm : function(message,confirm,canceled) {
				noty({
					  text: message||'Do you want to continue?',
					  layout      : 'center',
					  type 		  : 'warning',
					  modal		  : true,
					  buttons: [
						{addClass: 'btn btn-primary', text: 'Ok', onClick: function($noty) {
							$noty.close();
							if(confirm!==undefined && typeof(confirm)==='function')							
								confirm();
							
						  }
						},
						{addClass: 'btn btn-danger', text: 'Cancel', onClick: function($noty) {
							$noty.close();
							if(canceled!==undefined && typeof(canceled)==='function')
								canceled();
							
						  }
						}
					  ]
					});
			},
			showLoader : function(message) {
				var template = '<span class="loader" style="font-weight:bold;">'+(message||'Working...')+' <img src="../assets/images/spinner-mini.gif"/></span>';
				$('#createUserModal').find('.modal-footer').prepend(template);;
			},
			hideLoader : function() {
				$('#createUserModal').find('.modal-footer .loader').remove();
			}
		},
		saveUser : function() {
			$('#saveUser').click(function(e){
				e.preventDefault();
								
				var userForm = $('#user_form');
				var formData = userForm.serialize();
				formData+='&ajax=1';
                 
				$.ajax({
					url : userForm.attr('action'),
					type : userForm.attr('method'),
					data : formData,
					beforeSend : Users.Utils.showLoader(),
					dataType : 'json',
					success : function(data) {
						Users.Utils.notify(data);
                        
                        if(userForm.find('#user_id').val()=='') {
                            
                            userForm.find('input').val('');
                        }
						Users.Utils.hideLoader();
						return;
					},
					error : function(e) {
						var html = e.responseText;
                        Users.Utils.hideLoader();
						$('#createUserModal .modal-body').html(html);
					}
				});
				
				
			});
		},
		deleteUser : function () {
			$('.delete').on('click',function(e){
				e.preventDefault();
				var link = $(this);
				Users.Utils.confirm('Are you sure you want to delete this user?',function(){
				
					$.ajax({
						url : link.attr('href')+'/1',
						type : 'GET',
						dataType : 'json',
						success : function(data){
							Users.Utils.notify(data);
							link.parent('td').parent('tr').remove();
						},
						error : function(e) {
							console(e.responseText);
							Users.Utils.notify({
								type : 'error',
								text : 'An error occured, please try again later'
							});
						}
					});
					
				});
								
			});
        },
        updateUser : function() {
            $('.edit').on('click',function(e){
                e.preventDefault();

                var link = $(this);
                var url = link.attr('href')+'/1';
                
                $('#myModalLabel').text('Change user account');

                $.ajax({
                    url : url,
                    success : function(html) {
                        
                        $('#createUserModal').find('.modal-body').html(html);
                        $('#createUserModal').modal({backdrop:false});
                    },
                    error : function(e) {
                        console.log(e.responseText);
                    }
                });
            });
	    }
    }
	
	Users.createUser();
	Users.saveUser();
	Users.deleteUser();
    Users.updateUser();
	
	
});
