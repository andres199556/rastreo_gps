<?php
include "../conexion/conexion.php";
include "../funciones/get_name_module.php";
include "../sesion/validar_sesion.php";
include "../sesion/validar_permiso.php";
include "../funciones/dates.php";
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <?php
    include "../template/metas.php";
    ?>
    <style>
    .btn-toggle {
        color: #fff;
        font-weight: bold;
        font-size: 20px;
    }

    .span-right {
        position: absolute;
        top: 54%;
        right: 15px;
        margin-top: -7px;
    }

    .span-soporte {
        position: absolute;
        top: 61%;
        right: 15px;
        margin-top: -7px;
    }

    .span-puesto {
        position: absolute;
        top: 67%;
        right: 15px;
        margin-top: -7px;
    }
    </style>
    <link rel="stylesheet" href="../material/css/icons/font-awesome2/css/fontawesome.css">
    <link rel="stylesheet" href="../material/css/icons/font-awesome2/css/all.css">
</head>

<body class="fix-sidebar fix-header card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <?php
                include "../template/navbar.php";
                ?>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <?php
        include "../template/sidebar.php";
        ?>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 col-8 align-self-center">
                        <h3 class="text-themecolor m-b-0 m-t-0"><?php echo $modulo_actual;?></h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)"><?php echo $categoria_actual;?></a>
                            </li>
                            <li class="breadcrumb-item active"><?php echo $modulo_actual;?></li>
                        </ol>
                    </div>
                    <div class="">
                                <button title="Usuarios conectados" data-toggle="tooltip"
                                    class="right-side-toggle waves-effect btn-success btn btn-circle btn-sm pull-right ml-2"><i
                                        class="fa fa-user"></i></button>
                            </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-7">
                        <div class="card card-outline-info">
                            <div class="card-header ">
                                <h4 class="tex-title text-white"><i class="fa fa-gift"></i> Cumpleaños de la semana</h4>
                            </div>
                            <div class="card-body">
                                <?php
                            $semana = date("W");
                            $year = date("Y");
                            $fechas = rango_fechas($semana,$year);
                            $inicio = $fechas["week_start"];
                            $fin = $fechas["week_end"];
                            $cumples = $conexion->query("SELECT
                            id_trabajador,
                            P.id_persona,
                            CONCAT(P.nombre,' ',P.ap_paterno,' ',P.ap_materno) as persona,
                            P.fotografia,
                            T.correo,
                            P.fecha_nacimiento
                        FROM
                            trabajadores AS T
                            INNER JOIN personas AS P ON T.id_persona = P.id_persona 
                        WHERE
                            DAYOFYEAR( P.fecha_nacimiento ) BETWEEN DAYOFYEAR( '$inicio' ) 
                            AND DAYOFYEAR(
                            '$fin')");
                            $numero = $cumples->rowCount();
                            if($numero == 0){
                                
                                ?>
                                <p class="text-center text-danger"><b><strong>No existen cumpleaños esta
                                            semana.</strong></b></p>
                                <?php
                            }
                            else{
                                ?>
                                <div class="message-box contact-box position-relative">
                                    <div class="message-widget contact-widget position-relative">
                                        <?php
                                while($data = $cumples->fetch(PDO::FETCH_NUM)){
                                    ?>

                                        <!-- Message -->
                                        <a href="#" class="py-3 px-2 border-bottom d-block text-decoration-none">
                                            <div class="user-img position-relative d-inline-block mr-2"> <img
                                                    src="../<?php echo $data[3];?>" alt="user" class="rounded-circle"
                                                    width="45px" height="45">
                                                <span
                                                    class="profile-status pull-right d-inline-block position-absolute bg-success rounded-circle"></span>
                                            </div>
                                            <div class="mail-contnet d-inline-block align-middle">
                                                <h5 class="my-1"><?php echo $data[2];?> | <?php echo edad($data[5]);?>
                                                    años.</h5> <span
                                                    class="mail-desc font-12 text-truncate overflow-hidden text-nowrap d-block"><?php echo $data[4];?>
                                                </span>
                                            </div>
                                        </a>
                                        <?php
                                }
                                ?>
                                    </div>
                                </div>
                                <?php
                            }
                            ?>
                            </div>
                            <div class="card-footer">
                            </div>
                        </div>
                    </div>
                    <div class="col-5">
                        <div class="card card-outline-warning">
                            <div class="card-header ">
                                <h4 class="tex-title text-white"><i class="fa fa-bell"></i> Notificaciones</h4>
                            </div>
                            <div class="card-body">
                            </div>
                            <div class="card-footer">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item"> <a class="nav-link text-info" style="font-weight:bold;"
                                            data-toggle="tab" href="#acciones" role="tab" aria-selected="true"><span
                                                class="hidden-sm-up"></span> <span class="hidden-xs-down"><i
                                                    class="fa fa-times-circle"></i> Acciones correctivas</span></a>
                                    </li>
                                    <li class="nav-item"> <a class="nav-link text-success" style="font-weight:bold;"
                                            data-toggle="tab" href="#indicadores" role="tab" aria-selected="false"><span
                                                class="hidden-sm-up"></span> <span class="hidden-xs-down"><i
                                                    class="fa fa-chart-bar"></i> Indicadores</span></a> </li>
                                </ul>
                                <div class="tab-content tabcontent-border">
                                    <div class="tab-pane" id="acciones" role="tabpanel">
                                        <br>
                                        <div class="table-responsive">
                                            <table
                                                class="table table-hover table-bordered table-striped color-table info-table">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">#</th>
                                                        <th class="text-center">Origen</th>
                                                        <th class="text-center">N° de auditoría o revisión</th>
                                                        <th class="text-center">Dirección</th>
                                                        <th class="text-center">Descripción</th>
                                                        <th class="text-center">Fecha de alta</th>
                                                        <th class="text-center">Días caducada</th>
                                                        <th class="text-center">Estado</th>
                                                        <th class="text-center">Acciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                        $acciones = $conexion->query("SELECT
                                        A.id_accion,
                                        TA.nombre AS origen,
                                        DI.direccion,
                                        A.numero AS numero,
                                        A.descripcion,
                                        A.fecha_alta,
                                        DA.fecha_vencimiento,
                                        A.activo,
                                        EA.estado_accion 
                                    FROM
                                        acciones AS A
                                        LEFT JOIN direcciones AS DI ON A.id_direccion = DI.id_direccion
                                        LEFT JOIN tipo_acciones AS TA ON A.id_tipo_accion = TA.id_tipo_accion
                                        LEFT JOIN detalle_acciones AS DA ON A.id_accion = DA.id_accion
                                        INNER JOIN estado_acciones AS EA ON A.id_estado = EA.id_estado 
                                    WHERE
                                        ( DA.id_responsable = $id_usuario_logueado OR DA.id_verificador = $id_usuario_logueado OR A.id_usuario = $id_usuario_logueado) 
                                        AND A.activo != 5
                                        ");
                                        while($row = $acciones->fetch(PDO::FETCH_ASSOC)){
                                            $n++;
                                            $dias = 0;
                                            $activo = 1;
                                            ?>
                                                    <tr>
                                                        <td class="text-center"><?php echo $n;?></td>
                                                        <td class="text-center"><?php echo $row["origen"];?></td>
                                                        <td class="text-center"><?php echo $row["numero"];?></td>
                                                        <td class="text-center"><?php echo $row["direccion"];?></td>
                                                        <td class="text-center"><?php echo $row["descripcion"];?></td>
                                                        <td class="text-center"><?php echo $row["fecha_alta"];?></td>
                                                        <td class="text-center"><?php echo $dias;?></td>
                                                        <td class="text-center"><?php echo $row["estado_accion"];?></td>
                                                        <td class="text-center">
                                                            <div class="btn-group">
                                                                <button type="button"
                                                                    class="btn btn-info btn-sm dropdown-toggle btn-opciones-1"
                                                                    data-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false">
                                                                    <i class="fa fa-cog"></i> Opciones
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a style="cursor:pointer;"
                                                                        href="../mAccionesCorrectivas/accion.php?id=<?php echo $row['id_accion'];?>"
                                                                        class="dropdown-item link-informacion"
                                                                        data-id="1"><i
                                                                            class="fa fa-eye text-success"></i> Ver
                                                                        acción</a>
                                                                    <a style="cursor:pointer;"
                                                                        href="../mAccionesCorrectivas/historial.php?id=<?php echo $row['id_accion'];?>"
                                                                        class="dropdown-item link-password"
                                                                        data-id="1"><i
                                                                            class="fa fa-history text-info"></i> Ver
                                                                        historial de acción</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <?php
                                        }
                                        ?>
                                                </tbody>
                                                <tfoot></tfoot>
                                            </table>
                                        </div>

                                    </div>
                                    <div class="tab-pane  p-3" id="indicadores" role="tabpanel">
                                        <div class="table-responsive">
                                            <table class="table table-hover table-striped color-table success-table">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">#</th>
                                                        <th class="text-center">Clave</th>
                                                        <th class="text-center">Título</th>
                                                        <th class="text-center">Dirección</th>
                                                        <th class="text-center">Frecuencia</th>
                                                        <th class="text-center">Meses sin reportar</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                $indicadores = $conexion->query("SELECT
                                                id_indicador,
                                                I.clave,
                                                I.titulo,
                                                D.direccion,
                                                FI.frecuencia,
                                                CONCAT(
                                                    P.nombre,
                                                    ' ',
                                                    P.ap_paterno,
                                                    ' ',
                                                    P.ap_materno
                                                ) AS responsable
                                            FROM
                                                indicadores AS I
                                            INNER JOIN direcciones AS D ON I.id_direccion = D.id_direccion
                                            INNER JOIN frecuencia_indicadores AS FI ON I.id_frecuencia = FI.id_frecuencia
                                            INNER JOIN usuarios AS U ON I.id_responsable = U.id_usuario
                                            INNER JOIN personas AS P ON U.id_persona = P.id_persona
                                            WHERE
                                                 I.id_responsable = $id_usuario_logueado AND I.activo = 1");
                                                 $n = 0;
                                                 while($row = $indicadores->fetch(PDO::FETCH_ASSOC)){
                                                     $n++;
                                                     ?>
                                                    <tr>
                                                        <td class="text-center"><?php echo $n;?></td>
                                                        <td class="text-center"><?php echo $row['clave'];?></td>
                                                        <td class="text-center"><a href="../mIndicadores/indicador.php?id=<?php echo $row['id_indicador'];?>"><?php echo $row['titulo'];?></a></td>
                                                        <td class="text-center"><?php echo $row['direccion'];?></td>
                                                        <td class="text-center"><?php echo $row['frecuencia'];?></td>
                                                        <td class="text-center"><?php echo 0;?></td>
                                                    </tr>
                                                    <?php
                                                 }
                                                ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <?php
                include "../template/right-sidebar.php";
                ?>
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <?php
            include "../template/footer.php";
            ?>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <?php
    include "../template/footer-js.php";
    ?>
    <script src="http://127.0.0.1:8080/socket.io/socket.io.js"></script>
    <script src="../js/socket.js"></script>
    <script>
    modulo_actual = "<?php echo $menu;?>";
    global_date = '<?php echo date("Y-m-d H:i:s");?>';
    conect_socket('<?php print session_id();?>', < ? php echo $_SESSION["id_usuario"]; ? > , 'reload', 'web');
    </script>

    <script type="text/javascript">
    $(document).attr("title", "<?php echo $modulo_actual;?> - Sistema de Control Interno"); <
    ?
    php
    $resultado = $_GET["resultado"];
    if ($resultado == "exito_actualizacion") {
        ?
        >
        Swal.fire({
                type: 'success',
                title: 'Exito',
                text: 'Tu información se ha guardado correctamente.!',
                timer: 3000
            }) <
            ?
            php
    } ?
    >
    </script>

</body>

</html>