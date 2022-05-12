			<form id="user_signup" class="form-signin" method="post">
			<h3 class="form-signin-heading"><i class="icon-lock"></i> Registrar Nuevo Usuario</h3>
			<input type="text" class="input-block-level" id="username" name="username" placeholder="Usuario" required>
			<input type="text" class="input-block-level" id="firstname" name="firstname" placeholder="Nombre" required>
			<input type="text" class="input-block-level" id="lastname" name="lastname" placeholder="Apellido" required>
			<input type="password" class="input-block-level" id="password" name="password" placeholder="Contraseña" required>
			<input type="password" class="input-block-level" id="cpassword" name="cpassword" placeholder="Repita Contraseña" required>
			<button id="signin" name="login" class="btn btn-info" type="submit"><i class="icon-check icon-large"></i> Registrar</button>
				<div class="pull-right">
					<button data-placement="top" title="Nuevo usuario" id="signup" onclick="window.location='index.php'" name="login" class="btn btn-info" type="submit">Ya estoy registrado</button>
				</div>
			</form>

		
			<script>
			jQuery(document).ready(function(){
			jQuery("#user_signup").submit(function(e){
					e.preventDefault();
						
						var password = jQuery('#password').val();
						var cpassword = jQuery('#cpassword').val();
					
					
					if (password == cpassword){
					var formData = jQuery(this).serialize();
					$.ajax({
						type: "POST",
						url: "signup_form.php",
						data: formData,
						success: function(html){
						if(html=='true'){
							$.jGrowl("Bienvenido al Sistema", { header: 'Registro Exitoso' });
							var delay = 2000;
							setTimeout(function(){ window.location = 'dashboard.php'  }, delay);  
						} else if(html=='false'){
							$.jGrowl("Error en registro, verifique la informacion", { header: 'Registro Fallido' });
						}
						}
						
						
					});
			
					}else
						{
						$.jGrowl("Error en registro, verifique la informacion", { header: 'Registro Fallido' });
						}
				});
			});
			</script>
			
			
				
		
					