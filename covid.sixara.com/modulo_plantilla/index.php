<?php
include "../conexion/conexion.php";
$menu  ="mInicio"; /* esto es provisional, ya que mediante la función get_name_module.php se extra
el nombre del módulo actual para verificar si el usuario tiene permiso de acceso */
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
                            <li class="breadcrumb-item active">Listado</li>
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
                            <div class="card-header ">
                                <h4 class="tex-title text-white"><i class="fa fa-gift"></i> Listado de registros</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table id="tabla_listado"
                                                class="table table-hover table-bordered table-striped color-table info-table">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">#</th>
                                                        <th class="text-center">Nombre</th>
                                                        <th class="text-center">Fecha de nacimiento</th>
                                                        <th class="text-center">Estado</th>
                                                        <th class="text-center">Editar</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                </tbody>
                                                <tfoot>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div style="float:right;">
                                    <a href="alta.php" class="btn btn-default"><i class="fa fa-plus text-success"></i>
                                        Agregar registro</a>
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

    <script>
    function listar_registros() {
        if ($.fn.dataTable.isDataTable('#tabla_listado')) {
            $('#tabla_listado').DataTable().destroy();
        } else {

        }
        var table = $('#tabla_listado').DataTable({
            "ajax": 'data.php',
            "language": {
                "url": "../assets/plugins/datatables/media/js/Spanish.json"
            },
            "columns": [{
                    className: "text-center"
                },
                {
                    className: "text-center"
                },
                {
                    className: "text-center"
                },
                {
                    className: "text-center"
                },
                {
                    className: "text-center"
                }
            ]
        });
        $("#tabla_listado").removeClass("dataTable");
        $(table.table().header()).addClass('th-header');
    }
    $(document).ready(function() {
        listar_registros();
    });

    function estado(id, estado) {
        $.ajax({
            url: "estado.php",
            type: "POST",
            dataType: "json",
            data: {
                'id': id,
                'estado': estado
            }
        }).done(function(exito) {
            if(exito["resultado"] == "exito"){
                alertify.success(exito["mensaje"]);
                listar_registros();
            }
        }).fail(function(error) {
            alert(error);
        })
    }
    </script>
</body>

</html>