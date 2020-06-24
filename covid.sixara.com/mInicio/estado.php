<?php
include "../conexion/conexion.php";
$menu  ="mInicio"; /* esto es provisional, ya que mediante la función get_name_module.php se extra
el nombre del módulo actual para verificar si el usuario tiene permiso de acceso */
/* include "../funciones/get_name_module.php"; */
include "../sesion/validar_sesion.php";
include "../sesion/validar_permiso.php";
include "../funciones/dates.php";
$resultado = array();
$id = $_POST["id"];
$estado = $_POST["estado"];
$activo = ($estado == 1) ?  0:1;
try{
    $actualizar = $conexion->query("UPDATE ejemplo_tabla SET activo = $activo WHERE id_registro = $id");
    $resultado["resultado"] = "exito";
    $resultado["mensaje"] = "Estado actualizado correctamente.";
}
catch(Exception $error){
    $resultado["resultado"] = "error";
    $resultado["mensaje"] = "Error:".$error->getMessage();

}
echo json_encode($resultado);
?>