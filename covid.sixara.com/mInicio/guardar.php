<?php
include "../conexion/conexion.php";
$menu  ="mInicio";
/* include "../funciones/get_name_module.php"; */
include "../sesion/validar_sesion.php";
include "../sesion/validar_permiso.php";
include "../funciones/dates.php";
$nombre = $_POST["nombre"];
$paterno  =$_POST["ap_paterno"];
$materno = $_POST["ap_materno"];
$fecha_nacimiento  =$_POST["fecha_nacimiento"];
$fecha = date("Y-m-d H:i:s");
$activo = 1;
$resultado = array();
try{
    $insert = $conexion->prepare("INSERT INTO ejemplo_tabla(nombre,
    apellido_paterno,
    apellido_materno,
    fecha_nacimiento,
    fecha_hora,
    activo,
    id_usuario)VALUES(
        :nombre,
        :paterno,
        :materno,
        :fecha_nacimiento,
        :fecha,
        :activo,
        :id_usuario
    )");
    $insert->execute([":nombre" => $nombre,
    ':paterno' => $paterno,
    ':materno' => $materno,
    ':fecha_nacimiento' => $fecha_nacimiento,
    ':fecha' => $fecha,
    ':activo' => $activo,
    ':id_usuario' => $id_usuario_logueado]);
    $resultado["resultado"] = "exito";
    $resultado["mensaje"] = "Registro insertado correctamente!.";
}
catch(Exception $error){
    $resultado["resultado"] = "error";
    $resultado["mensaje"] = "Error: ".$error->getMessage();
}
echo json_encode($resultado);
?>