<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carlos Daniel Barrientos Vazquez</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="archivo.css?v=1.0">
    <link rel="stylesheet" href="table.css">

</head>

<body>
    <nav class="navbar navbar-light navbarBg">
        <div class="container">
            <a class="navbar-brand in" href="/daniel_db/indexMAIN.html" style="color: white;">Inicio</a>

            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="nav navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="font-menu nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" style="color: white;"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Unidad 1</a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="hola dropdown-item" href="/daniel_db/dani1.php">Mostrar datos</a>
                            <a class="dropdown-item" href="/daniel_db/dani2.php">Mostrar datos</a>
                            <a class="dropdown-item" href="/daniel_db/dani3.php">Meter datos</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" style="color: white;"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Unidad 2</a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="/daniel_db/dani4.php">Cuatro</a>
                            <a class="dropdown-item" href="/daniel_db/dani5.php">Cinco</a>
                            <a class="dropdown-item" href="/daniel_db/dani6.php">Seis</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" style="color: white;"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Unidad 3</a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="/daniel_db/dani7.php">Siete</a>
                            <a class="dropdown-item" href="/daniel_db/dani8.php">Ocho</a>
                            <a class="dropdown-item" href="/daniel_db/dani9.php">Nueve</a>
                        </div>
                    </li>

                    
                </ul>
            </div>
            

        </div>
    </nav>

    <div class="jumbotron">
        <h1 class="display-4">Mostrar Datos</h1>

        <?php 
        $username = "root";
        $password = "";
        $servername = "localhost";
        $database = "alumnos_uni";

        $conexion = new mysqli($servername, $username, $password, $database);
        if ($conexion->connect_error) {
            die("Conexion Fallida: " . $conexion->connect_error);
        }
        $sql = "SELECT * FROM estudiantes";
        $resultado = $conexion->query($sql);
        ?>

        <div class = "container">
            <h2 class="display-4">ESTUDIANTES UNIVERSITARIOS</h2>

            <?php
        $username = "root";
        $password = "";
        $servername = "localhost";
        $database = "alumnos_uni";

        $conexion = new mysqli($servername, $username, $password, $database);
        if ($conexion->connect_error) {
            die("Conexion Fallida: " . $conexion->connect_error);
        }
        $sql = "SELECT * FROM `estudiantes`"; // Se cambió "personas" por "estudiantes"
        $resultado = $conexion->query($sql);
        ?>

        <div class = "container">
            <h2 class="display-4">ESTUDIANTES UNIVERSITARIOS</h2>

            <?php if($resultado->num_rows >0):?>
                <table>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Altura</th>
                        <th>Peso</th>
                        <th>Universidad</th>
                        <th>Carrera</th>
                        <th>Promedio</th>
                    </tr>

                    <?php while ($fila = $resultado->fetch_assoc()): ?>
                    <tr>
                        <td><?php echo $fila['Id']; ?></td>  <!-- Se cambió "id" por "Id" -->
                        <td><?php echo $fila['Nombre']; ?></td>
                        <td><?php echo $fila['Apellido']; ?></td>
                        <td><?php echo $fila['Altura']; ?></td>  <!-- Se cambió "Apodo" por "Altura" -->
                        <td><?php echo $fila['Peso']; ?></td>
                        <td><?php echo $fila['Universidad']; ?></td>
                        <td><?php echo $fila['Carrera']; ?></td>  <!-- Se cambió "Rango" por "Carrera" -->
                        <td><?php echo $fila['Promedio']; ?></td>  <!-- Se cambió "Rango" por "Promedio" -->
                    </tr>
                    <?php endwhile; ?>
                </table>
                <?php else: ?>
                    <p>No se encontraron los estudiantes</p>
                <?php endif; ?>


        </div>

    </div>

</body>
</html>