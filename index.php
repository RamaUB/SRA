<?php include('header.php'); ?>
  <body id="login">
    <div class="container">

      <form id="login_form" class="form-signin" method="post">
        <h3 class="form-signin-heading"><i class="icon-lock"></i> Iniciar Sesión</h3>
        <input type="text" class="input-block-level" id="username" name="username" placeholder="Usuario" required>
        <input type="password" class="input-block-level" id="password" name="password" placeholder="Contraseña" required>
        <button name="login" class="btn btn-info" type="submit"><i class="icon-signin icon-"></i> Iniciar Sesión</button>
		<div class="pull-right">
			<button data-placement="top" title="Nuevo usuario" id="signup" onclick="window.location='signup.php'" name="login" class="btn btn-info" type="submit">Registrar Usuario</button>
		</div>
		
		      </form>
				<script>
			jQuery(document).ready(function(){
			jQuery("#login_form").submit(function(e){
					e.preventDefault();
					var formData = jQuery(this).serialize();
					$.ajax({
						type: "POST",
						url: "login.php",
						data: formData,
						success: function(html){
						if(html=='true')
						{
						$.jGrowl("Bienvenido al Sistema de Refuerzo del Aprendizaje!", { header: 'Acces Granted' });
						var delay = 2000;
							setTimeout(function(){ window.location = 'dashboard.php'  }, delay);  
						}
						else
						{
						$.jGrowl("Por favor verifique su Usuario y Contraseña", { header: 'Login Failed' });
						}
						}
						
					});
					return false;
				});
			});
			</script>
    </div> <!-- /container -->
  </body>
</html>