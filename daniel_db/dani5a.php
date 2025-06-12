<?php 
    ob_start();
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    $username = "root";
    $password = "";
    $servername = "localhost";
    $database = "escuela_db";

    $conexion = new mysqli($servername, $username, $password, $database);
    if ($conexion->connect_error) {
        die("Conexion Fallida: " . $conexion->connect_error);
    }

    $sql_e = "SELECT id, edad FROM edades";
    $result_e = $conexion->query($sql_e);
    $sql_c = "SELECT id, nombre_colonia FROM colonias";
    $result_c = $conexion->query($sql_c);
    $sql_es = "SELECT id, nombre_especialidad FROM especialidades";
    $result_es = $conexion->query($sql_es);
    $sql_g = "SELECT id, nombre_genero FROM generos";
    $result_g = $conexion->query($sql_g);

    
    {
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            var_dump($_POST);//linea dedicada para depurar
            $nombre = $conexion->real_escape_string($_POST ["nombre"]);
            $apellido_paterno = $conexion->real_escape_string($_POST ["apellido_paterno"]);
            $apellido_materno = $conexion->real_escape_string($_POST ["apellido_materno"]);
            $correo = $conexion->real_escape_string($_POST ["correo"]);
            $telefono = $conexion->real_escape_string($_POST ["telefono"]);
            $fecha_ingreso = $conexion->real_escape_string($_POST ["fecha_ingreso"]);
            $id_edad = $conexion->real_escape_string($_POST ["id_edad"]);
            $id_colonia = $conexion->real_escape_string($_POST ["id_colonia"]);
            $id_especialidad = $conexion->real_escape_string($_POST ["id_especialidad"]);
            $id_genero = $conexion->real_escape_string($_POST ["id_genero"]);
        
            $sql_insert = "INSERT INTO alumnos (nombre, apellido_paterno, apellido_materno, correo, telefono, fecha_ingreso,
            id_edad, id_colonia, id_especialidad, id_genero)
            VALUES ('$nombre', '$apellido_paterno', '$apellido_materno', '$correo', '$telefono', '$fecha_ingreso',
            '$id_edad', '$id_colonia', '$id_especialidad', '$id_genero')";
        
            if ($conexion->query($sql_insert) === TRUE) {
                echo "<p class='success'>Nuevo alumno agregado con éxito</p>";
                header("Location: " . $_SERVER['PHP_SELF']);
                exit();
            } else {
                echo "<p class='error'>Error al agregar el alumno: " . $conexion->error . "</p>";
            }
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RELACIONALES</title>
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
        <h1 class="display-4">Alumnos Universitarios (Pagina Version A)</h1>
    </div>
    
    <div class="contenedor">
        <div class="container1">
        
        <form method="POST" id="formulario"> 
            <div class="form-group"><label for="nombre">Nombre: </label>
            <input type="text" id="nombre" name="nombre" required><br></div>

            <div class="form-group"><label for="apellido_paterno">Apellido paterno: </label>
            <input type="text" id="apellido_paterno" name="apellido_paterno" required><br></div>

            <div class="form-group"><label for="apellido_materno">Apellido materno: </label>
            <input type="text" id="apellido_materno" name="apellido_materno" required><br></div>

            <div class="form-group"><label for="correo">Correo: </label>
            <input type="email" id="correo" name="correo" required><br></div>

            <div class="form-group"><label for="telefono">Teléfono: </label>
            <input type="text" id="telefono" name="telefono" required><br></div>

            <div class="form-group"><label for="fecha_ingreso">Fecha de ingreso: </label>
            <input type="date" id="fecha_ingreso" name="fecha_ingreso" required><br></div>
            
            <div class="form-group"><label for="edad">Edad: </label>
            <select name="id_edad" required>
            <option value="">Selecciona edad</option>
            <?php
            if ($result_e->num_rows > 0) {
                while($row = $result_e->fetch_assoc()){
                    echo "<option value='" . $row["id"] . "'>" . $row["edad"] . "</option>";
                }
            }
            ?>
            </select></div>

            <div class="form-group"><label for="colonia">Colonia: </label>
            <select name="id_colonia" required>
                <option value="">Selecciona una colonia</option>
                <?php
                if ($result_c->num_rows > 0) {
                    while($row = $result_c->fetch_assoc()){
                        echo "<option value='" . $row["id"] . "'>" . $row["nombre_colonia"] . "</option>";
                    }
                }
                ?>
            </select></div>

            <div class="form-group"><label for="especialidad">Especialidad: </label>
            <select name="id_especialidad" required>
                <option value="">Selecciona una especialidad</option>
                <?php
                if ($result_es->num_rows > 0) {
                    while($row = $result_es->fetch_assoc()){
                        echo "<option value='" . $row["id"] . "'>" . $row["nombre_especialidad"] . "</option>";
                    }
                }
                ?>
            </select></div>

            <div class="form-group"><label for="genero">Género: </label>
            <select name="id_genero" required>
                <option value="">Selecciona un género</option>
                <?php
                if ($result_g->num_rows > 0) {
                    while($row = $result_g->fetch_assoc()){
                        echo "<option value='" . $row["id"] . "'>" . $row["nombre_genero"] . "</option>";
                    }
                }
                ?>
            </select></div>

            <div class="form-group"><input type="submit" value="Agregar Alumno"></div>
        </form>


        <h2>Lista de Alumnos</h2> 
        <table border="1">
            <tr>
                <th>Número de Control</th>
                <th>Nombre</th>
                <th>Apellido Paterno</th>
                <th>Apellido Materno</th>
                <th>Correo</th>
                <th>Teléfono</th>
                <th>Fecha de Ingreso</th>
                <th>Edad</th>
                <th>Colonia</th>
                <th>Especialidad</th>
                <th>Género</th>
            </tr>
            <?php
            $sql = "SELECT
            a.numero_control,
            a.nombre,
            a.apellido_paterno,
            a.apellido_materno,
            a.correo,
            a.telefono,
            a.fecha_ingreso,
            e.edad,
            c.nombre_colonia,
            es.nombre_especialidad,
            g.nombre_genero
            FROM alumnos a
            JOIN edades e ON a.id_edad = e.id
            JOIN colonias c ON a.id_colonia = c.id
            JOIN especialidades es ON a.id_especialidad = es.id
            JOIN generos g ON a.id_genero = g.id";
            $resultado = $conexion->query($sql);
            if ($resultado->num_rows > 0) {
                while($row = $resultado->fetch_assoc()){
                    echo "<tr>
                    <td>" . $row['numero_control'] . "</td>
                    <td>" . $row['nombre'] . "</td>
                    <td>" . $row['apellido_paterno'] . "</td>
                    <td>" . $row['apellido_materno'] . "</td>
                    <td>" . $row['correo'] . "</td>
                    <td>" . $row['telefono'] . "</td>
                    <td>" . $row['fecha_ingreso'] . "</td>
                    <td>" . $row['edad'] . "</td>
                    <td>" . $row['nombre_colonia'] . "</td>
                    <td>" . $row['nombre_especialidad'] . "</td>
                    <td>" . $row['nombre_genero'] . "</td>
                    </tr>";
                };
            } else {
                echo "<tr><td colspan='11'>No hay datos registrados</td></tr>";
            }
            ?>
        </table>

        </div>
    </div>
</body>
<!--"ctr k" + "ctrl t"-->
</html>

