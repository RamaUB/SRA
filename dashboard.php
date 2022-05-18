<?php  include('header.php'); ?>
<?php  include('session.php'); ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenido</title>
</head>
<body>
    <div>
    <h1>Bienvenido al Sistema de Refuerzo del Aprendizaje</h1>
    <h2> Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laboriosam molestias nesciunt officiis, vel in quidem odio consequuntur velit praesentium, saepe nihil sed porro a enim perferendis incidunt explicabo delectus nulla!</h2>
        <div>
            <a onclick="window.location='logout.php'" id="btn_logout" name="logout" class="btn" type="submit"><i class="icon-signout icon-large"></i> Cerrar Sesión</a>   
        </div>

    </div>

    
    <div>
        <?php include('footer.php'); ?>
    </div>
</body>
</html>