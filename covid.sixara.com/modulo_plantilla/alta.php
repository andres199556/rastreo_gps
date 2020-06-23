<?php
include "../conexion/conexion.php";
$menu  ="mInicio";
/* include "../funciones/get_name_module.php"; */
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
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Nombre del módulo</a>
                            </li>
                            <li class="breadcrumb-item active">Nombre del apartado</li>
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
                    <div class="col-12">
                        <div class="card card-outline-info">
                            <form action="guardar.php" type="POST">
                                <div class="card-header ">
                                    <h4 class="tex-title text-white"><i class="fa fa-gift"></i> Nombre del apartado</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-4 form-group">
                                            <label for="campo" class="control-label"><b><strong>Nombre:
                                                    </strong></b></label>
                                            <input type="text" required name="nombre" id="campo" class="form-control">
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="campo2" class="control-label"><b><strong>Apellido paterno:
                                                    </strong></b></label>
                                            <input type="text" required name="ap_paterno" id="campo2" class="form-control">
                                        </div>
                                        <div class="col-md-4 form-group">
                                            <label for="campo3" class="control-label"><b><strong>apellido materno:
                                                    </strong></b></label>
                                            <input type="text" required name="ap_materno" id="campo3" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row">
                                    <div class="col-md-4 form-grup">
                                            <label for="fecha" class="control-label"><b><strong>Fecha de
                                                        nacimiento:</strong></b> </label>
                                            <input type="text" name="fecha_nacimiento" fechas id="fecha"
                                                class="form-control" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div style="">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div style="float:right;">
                                                    <a href="index.php" class="btn btn-default"><i
                                                            class="fa fa-times text-danger"></i>
                                                        Cancelar</a>
                                                    <button class="btn btn-default" type="submit"><i
                                                            class="fa fa-save text-success"></i> Guardar</button>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
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
    <script>
    $("[fechas]").datepicker({
        autoclose: true,
        todayHighlight: true,
        format: 'yyyy-mm-dd',
        language:'es'
    });
    $("form").submit(function(e) {
        $.ajax({
            url: "guardar.php",
            type: "POST",
            dataType: "json",
            data: $(this).serialize()
        }).done(function(exito) {
            if (exito["resultado"] == "exito") {
                alertify.notify(exito["mensaje"], "success", 2, function() {
                    window.location = "index.php";
                });
            } else if (exito["resultado"] == "error") {
                alertify.notify(exito["mensaje"], "error", 2, null);
            }

        }).fail(function(error) {})
        e.preventDefault();
        return false;
    });
    </script>
</body>

</html>