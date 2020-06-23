<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- User profile -->
        <div class="user-profile">
            <!-- User profile image -->
            <div class="profile-img"> <img src="../<?php echo $_SESSION['fotografia'];?>"
                    style="width:50px;height:50px;" alt="user" /> </div>
            <!-- User profile text-->
            <div class="profile-text">
                <div class="container">
                </div>
            </div>
        </div>
        <!-- End User profile text-->
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li class="nav-small-cap">Menú de navegación</li>
                <li> <a class="waves-effect waves-dark" href="../mInicio/index.php" aria-expanded="false"><i
                            class="fa fa-tachometer"></i><span class="hide-menu">Inicio</span></a>
                </li>
                <?php
                                        //busco los modulos
                                        $modulos_sidebar = $conexion->query("SELECT
                                        M.id_modulo,
                                        M.nombre_modulo,
                                        M.carpeta_modulo,
                                        M.icono,
                                        M.color
                                    FROM
                                        permiso_modulos AS PM
                                    INNER JOIN modulos AS M ON PM.id_modulo = M.id_modulo AND M.activo = 1
                                    WHERE
                                        PM.id_usuario = $id_usuario_logueado
                                    AND PM.permiso != 0 AND M.id_categoria_modulo = 6 AND M.activo = 1
                                    ORDER BY
                                        M.nombre_modulo ASC");
                                        while($row_m = $modulos_sidebar->fetch(PDO::FETCH_NUM)){
                                            $carpeta = $row_m[2];
                                            $ruta = "../$carpeta/index.php";
                                            $color_modulo = $row_m[4];
                                            
                                            ?>
                <li> <a class="" href="<?php echo $ruta;?>"  aria-expanded="false"><i
                            class="<?php echo $row_m[3];?>" style="color:<?php echo $color_modulo;?>;"></i> <span class="hide-menu"><?php echo $row_m[1];?></span></a>
                </li>
                <?php
                                        }
                                            ?>


            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
    <!-- Bottom points-->
    <div class="sidebar-footer">
        <!-- item-->
        <!-- <a href="../mPerfil/index.php" class="link" data-toggle="tooltip" title="Configuración"><i class="ti-settings"></i></a> -->
        <!-- item-->
        <a href="https://mail.google.com" target="_blank" class="link" data-toggle="tooltip" title="Correo"><i
                class="mdi mdi-gmail"></i></a>
        <!-- item-->
        <a href="../sesion/cerrar_sesion.php" class="link" data-toggle="tooltip" title="Cerrar sesión"><i
                class="mdi mdi-power"></i></a>
    </div>
    <!-- End Bottom points-->
</aside>