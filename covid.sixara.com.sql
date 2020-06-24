/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50715
 Source Host           : localhost:3306
 Source Schema         : covid.sixara.com

 Target Server Type    : MySQL
 Target Server Version : 50715
 File Encoding         : 65001

 Date: 24/06/2020 17:58:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categoria_modulos
-- ----------------------------
DROP TABLE IF EXISTS `categoria_modulos`;
CREATE TABLE `categoria_modulos`  (
  `id_categoria_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `icono` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `alias` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fecha_hora` datetime(0) NULL DEFAULT NULL,
  `activo` int(11) NULL DEFAULT NULL,
  `id_usuario` int(11) NULL DEFAULT NULL,
  `color_borde` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id_categoria_modulo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categoria_modulos
-- ----------------------------
INSERT INTO `categoria_modulos` VALUES (1, 'Facturación', 'Categoria para todo lo referente de la facturación', 'fa fa-file-pdf', NULL, '2019-06-14 10:41:32', 1, 1, 'info');
INSERT INTO `categoria_modulos` VALUES (2, 'Configuración del sistema', 'Configuración de las funciones básicas del sistema', 'fa fa-cog', NULL, '2019-06-14 10:41:32', 1, 1, 'info');
INSERT INTO `categoria_modulos` VALUES (3, 'Ventas', 'Mòdulos para ventas', 'fa fa-money-bill-alt', NULL, '2019-06-14 10:41:32', 1, 1, 'info');
INSERT INTO `categoria_modulos` VALUES (4, 'Recursos Humanos', 'Categoría para la administración de cuestiones de trabajadores', 'fa fa-users', NULL, '2019-06-14 10:41:32', 1, 1, 'info');
INSERT INTO `categoria_modulos` VALUES (5, 'Compras', 'Categoría para la administración de cuestiones de trabajadores', 'fa fa-shopping-cart', '', '2019-06-14 10:41:32', 1, 1, 'info');
INSERT INTO `categoria_modulos` VALUES (6, 'Gestion de calidad', 'Administración de sistema gestor de calidad', 'fa fa-certificate', NULL, '2019-06-14 10:41:32', 1, 1, 'info');
INSERT INTO `categoria_modulos` VALUES (7, 'Comunicación', 'Comunicación', 'fa fa-comment', NULL, '2019-06-14 10:41:32', 1, 1, 'info');
INSERT INTO `categoria_modulos` VALUES (8, 'Soporte Técnico', 'Soporte Técnico', 'fa fa-cog', NULL, '2019-06-14 10:41:32', 1, 1, 'info');
INSERT INTO `categoria_modulos` VALUES (9, 'Académico', 'Modulos academicos', 'fa fa-users', NULL, '2019-06-14 10:41:32', 1, 1, 'info');
INSERT INTO `categoria_modulos` VALUES (10, 'Finanzas', 'Modulo para la administración de finanzas', 'fas fa-money-bill-alt', NULL, '2019-06-14 10:41:32', 1, 1, 'info');
INSERT INTO `categoria_modulos` VALUES (11, 'COVID', NULL, 'fas fa-money-bill-alt', NULL, '2019-06-14 10:41:32', 1, 1, 'info');

-- ----------------------------
-- Table structure for datos_empresa
-- ----------------------------
DROP TABLE IF EXISTS `datos_empresa`;
CREATE TABLE `datos_empresa`  (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_empresa` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `slogan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `path_logo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fecha_hora` datetime(0) NULL DEFAULT NULL,
  `activo` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_empresa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of datos_empresa
-- ----------------------------
INSERT INTO `datos_empresa` VALUES (1, 'XARA - Sistemas Informáticos', 'NA', 'assets/images/logo.png', '2019-09-30 10:21:25', 1);

-- ----------------------------
-- Table structure for ejemplo_tabla
-- ----------------------------
DROP TABLE IF EXISTS `ejemplo_tabla`;
CREATE TABLE `ejemplo_tabla`  (
  `id_registro` int(255) NOT NULL AUTO_INCREMENT,
  `nombre` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `apellido_paterno` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `apellido_materno` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fecha_nacimiento` date NULL DEFAULT NULL,
  `fecha_hora` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `activo` int(255) NULL DEFAULT NULL,
  `id_usuario` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id_registro`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ejemplo_tabla
-- ----------------------------
INSERT INTO `ejemplo_tabla` VALUES (1, 'Aarón Andrés', 'Rizo', 'Barrera', '2020-06-13', '2020-06-14 17:12:39.624210', 1, 1);
INSERT INTO `ejemplo_tabla` VALUES (2, 'Xochitl Guadalupe', 'Rodriguez', 'Serrato', '1994-03-06', '2020-06-14 17:12:40.450606', 1, 1);
INSERT INTO `ejemplo_tabla` VALUES (3, 'Jose Rafael', 'Rizo', 'Rodriguez', '2018-09-07', '2020-06-14 17:12:41.230949', 1, 1);
INSERT INTO `ejemplo_tabla` VALUES (4, 'Jose Luis modificado', 'Reyna', 'Reyna', '1995-04-26', '2020-06-14 17:19:38.016117', 1, 1);

-- ----------------------------
-- Table structure for modulos
-- ----------------------------
DROP TABLE IF EXISTS `modulos`;
CREATE TABLE `modulos`  (
  `id_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria_modulo` int(11) NULL DEFAULT NULL,
  `nombre_modulo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `carpeta_modulo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `icono` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `alias` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fecha_hora` datetime(0) NULL DEFAULT NULL,
  `activo` int(11) NULL DEFAULT NULL,
  `id_usuario` int(11) NULL DEFAULT NULL,
  `color` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tipo_color` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id_modulo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modulos
-- ----------------------------
INSERT INTO `modulos` VALUES (1, 11, 'Inicio', 'mInicio', 'Descripción del módulo', 'fa fa-tachometer', NULL, '2020-06-24 14:23:54', 1, 1, '#2F9546', 'personalizado');
INSERT INTO `modulos` VALUES (2, 11, 'Usuarios', 'mUsuarios', 'Descripción del módulo', 'fa fa-users', NULL, '2020-06-24 14:23:54', 1, 1, '#95532F', 'personalizado');
INSERT INTO `modulos` VALUES (3, 11, 'Monitoreo', 'mMonitoreo', 'Descripción del módulo', 'fa fa-map-marker', NULL, '2020-06-24 14:23:54', 1, 1, '#2F4A95', 'personalizado');
INSERT INTO `modulos` VALUES (4, 11, 'Formularios COVID19', 'mFormulariosCovid', 'Descripción del módulo', 'fa fa-edit', NULL, '2020-06-24 14:23:54', 1, 1, '#10ac84', 'personalizado');

-- ----------------------------
-- Table structure for modulos_copy1
-- ----------------------------
DROP TABLE IF EXISTS `modulos_copy1`;
CREATE TABLE `modulos_copy1`  (
  `id_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria_modulo` int(11) NULL DEFAULT NULL,
  `nombre_modulo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `carpeta_modulo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `icono` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `alias` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fecha_hora` datetime(0) NULL DEFAULT NULL,
  `activo` int(11) NULL DEFAULT NULL,
  `id_usuario` int(11) NULL DEFAULT NULL,
  `color` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tipo_color` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id_modulo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modulos_copy1
-- ----------------------------
INSERT INTO `modulos_copy1` VALUES (1, 2, 'Módulos', 'mModulos', 'Administración de modulos', 'mdi mdi-cube', '', '2019-06-14 10:53:23', 1, 1, 'inverse', 'inverse');
INSERT INTO `modulos_copy1` VALUES (2, 3, 'Punto de venta', 'mPOS', 'Generación de ventas en el establecimiento.', 'fa fa-money-bill-alt', NULL, '2019-06-14 10:53:23', 1, 1, 'info', 'info');
INSERT INTO `modulos_copy1` VALUES (3, 3, 'Cotizaciones', 'mCotizaciones', 'Administración de las cotizaciones generadas.', 'fa fa-file', '', '2019-06-14 10:53:23', 1, 1, 'danger', 'danger');
INSERT INTO `modulos_copy1` VALUES (4, 5, 'Productos', 'mProductos', 'Administración de los productos del sistema', 'fas fa-cash-register', NULL, '2019-08-14 23:39:48', 1, 1, 'success', 'success');
INSERT INTO `modulos_copy1` VALUES (5, 5, 'Proveedores', 'mProveedores', 'Administración de los productos del sistema', 'fa fa-truck', '', '2019-06-14 10:53:23', 1, 1, 'danger', 'danger');
INSERT INTO `modulos_copy1` VALUES (6, 6, 'Documentación', 'mDocumentacion', 'Administración de la documentación interna de la empresa', 'fa fa-file', NULL, '2019-06-14 10:53:23', 1, 1, '#2F9546', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (7, 6, 'Auditorias', 'mAuditorias', 'Administración de auditorias generadas en el sistema', 'fa fa-edit', NULL, '2019-06-14 10:53:23', 1, 1, '#95532F', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (8, 6, 'Acciones Correctivas', 'mAccionesCorrectivas', 'Administración de auditorias generadas en el sistema', 'fa fa-times-circle', NULL, '2019-06-14 10:53:23', 1, 1, '#2F4A95', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (9, 6, 'Est. Organizacional', 'mEstructuraOrganizacional', 'Administración de auditorias generadas en el sistema', 'fa fa-sitemap', NULL, '2019-06-14 10:53:23', 1, 1, '#10ac84', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (10, 6, 'Indicadores', 'mIndicadores', 'Administración de auditorias generadas en el sistema', 'fa fa-chart-bar', NULL, '2019-06-14 10:53:23', 1, 1, '#952F82', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (11, 6, 'Proyectos de mejora', 'mProyectosMejora', 'Administración de auditorias generadas en el sistema', 'fa fa-pencil-alt', NULL, '2019-06-14 10:53:23', 1, 1, '#ff0000', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (12, 6, 'Revisiones Directivas', 'mRevisionDirectiva', 'Administración de auditorias generadas en el sistema', 'fa fa-edit', NULL, '2019-06-14 10:53:23', 1, 1, '#896996', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (13, 6, 'Gestión de riesgos', 'mGestionRiesgos', 'Administración de auditorias generadas en el sistema', 'fa fa-exclamation-triangle', NULL, '2019-06-14 10:53:23', 1, 1, '#608e9f', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (14, 6, 'Gestion de cambios', 'mGestionCambios', 'Administración de auditorias generadas en el sistema', 'fa fa-recycle', NULL, '2019-06-14 10:53:23', 1, 1, '#10ac84', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (16, 5, 'Clientes', 'mClientes', 'Administración de clientes de la empresa', 'fa fa-users', NULL, '2019-08-15 00:59:07', 1, 1, 'info', 'info');
INSERT INTO `modulos_copy1` VALUES (17, 4, 'Trabajadores', 'mTrabajadores', 'Administración de trabajadores', 'fa fa-users', NULL, '2019-08-24 10:52:09', 1, 1, 'primary', 'primary');
INSERT INTO `modulos_copy1` VALUES (18, 7, 'Mensajes', 'mMensajes', 'Mensajes entre los usuarios', 'fa fa-comment', NULL, '2019-08-28 10:50:31', 1, 1, 'inverse', 'inverse');
INSERT INTO `modulos_copy1` VALUES (19, 8, 'Monitoreo de Equipos', 'mMonitoreo', 'administración de monitoreos', 'fa fa-terminal', NULL, '2019-09-20 15:19:43', 1, 1, 'danger', 'danger');
INSERT INTO `modulos_copy1` VALUES (20, 9, 'Alumnos', 'mAlumnos', 'Administración de alumnos', 'fa fa-users', NULL, '2019-09-21 12:50:00', 1, 1, NULL, '');
INSERT INTO `modulos_copy1` VALUES (21, 9, 'Cargas Académicas', 'mCargaAcademica', 'Administración de Cargas académicas', 'fa fa-book', NULL, '2019-09-21 12:52:18', 1, 1, NULL, '');
INSERT INTO `modulos_copy1` VALUES (22, 7, 'Notificaciones', 'mNotificaciones', 'Administración de notificaciones', 'fa fa-bell', NULL, '2019-09-30 10:34:42', 1, 1, NULL, '');
INSERT INTO `modulos_copy1` VALUES (23, 8, 'Mantenimientos', 'mMantenimientos', 'Mantenimientos a equipos de cómputos.', 'fa fa-cog', NULL, '2019-10-02 09:48:53', 1, 1, 'success', 'success');
INSERT INTO `modulos_copy1` VALUES (24, 8, 'Tickets de servicio', 'mTickets', 'Generación de tickets de servicio', 'mdi mdi-ticket', NULL, '2019-10-04 12:30:34', 1, 1, '#55efc4', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (25, 4, 'Direcciones', 'mDirecciones', 'Administración de direcciones', 'mdi mdi-cube', NULL, '2019-10-04 12:47:30', 1, 1, '#5a80a5', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (26, 6, 'Estructura Organizacional', 'mEstructura', 'Estructura Organizacional', 'fa fa-sitemap', NULL, '2019-10-07 14:15:24', 1, 1, '#896996', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (27, 10, 'Activo Fijo', 'MActivoFijo', 'Administración de activos fijos', 'fa fa-money', NULL, '2019-10-14 10:53:00', 1, 1, '#54b649', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (28, 9, 'Docentes', 'mDocentes', 'Administración de docentes', 'fa fa-graduation-cap', NULL, '2019-10-15 10:35:24', 1, 1, '#8a7588', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (29, 9, 'Grupos', 'mGrupos', 'Administración de grupos generales', 'fa fa-users', NULL, '2019-10-15 10:35:48', 1, 1, '#a61fe0', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (30, 9, 'Materias', 'mMaterias', 'Administración de materias impartidas', 'fa fa-file', NULL, '2019-10-15 10:36:32', 1, 1, '#9d9e61', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (31, 2, 'Categoría de módulos', 'mCategoriaModulos', 'Administración de categorias de módulos', 'fa fa-wear', NULL, '2019-10-15 10:38:58', 1, 1, '#4ab55a', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (32, 9, 'Calificaciones', 'mCalificaciones', 'Administración de calificaciones', 'fas fa-file-spreadsheet', NULL, '2019-10-15 10:40:09', 1, 1, '#915fa0', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (33, 9, 'Asistencias', 'mAsistencia', 'Creación de listas de asistencia', 'fa fa-edit', NULL, '2019-10-15 14:25:46', 1, 1, '#986699', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (34, 8, 'Checklists', 'mChecklist', 'Administración de checlist (listas de verificación).', 'fa fa-check', NULL, '2019-10-15 14:33:45', 1, 1, '#b3614d', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (35, 6, 'Control Documental', 'mControlDocumental', 'Administración de solicitudes de control documental', 'fa fa-file', NULL, '2019-10-18 11:58:47', 0, 1, '#608e9f', 'personalizado');
INSERT INTO `modulos_copy1` VALUES (36, 4, 'Departamentos', 'mDepartamentos', 'Administración de los departamentos de la organización', 'mdi mdi-cube', NULL, '2020-03-18 15:12:54', 1, 1, '', 'danger');
INSERT INTO `modulos_copy1` VALUES (37, 9, 'Periodos Escolares', 'mPeriodos', 'Administración de los periodos escolares', 'mdi mdi-cube', NULL, '2020-03-18 15:12:54', 1, 1, '', 'danger');

-- ----------------------------
-- Table structure for permiso_modulos
-- ----------------------------
DROP TABLE IF EXISTS `permiso_modulos`;
CREATE TABLE `permiso_modulos`  (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) NULL DEFAULT NULL,
  `id_usuario` int(11) NULL DEFAULT NULL,
  `permiso` int(11) NULL DEFAULT NULL,
  `fecha_hora` datetime(0) NULL DEFAULT NULL,
  `activo` int(11) NULL DEFAULT NULL,
  `id_usuario_alta` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_permiso`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permiso_modulos
-- ----------------------------
INSERT INTO `permiso_modulos` VALUES (1, 1, 1, 1, '2020-06-24 14:24:35', 1, 1);
INSERT INTO `permiso_modulos` VALUES (2, 2, 1, 1, '2020-06-24 14:24:35', 1, 1);
INSERT INTO `permiso_modulos` VALUES (3, 3, 1, 1, '2020-06-24 14:24:35', 1, 1);
INSERT INTO `permiso_modulos` VALUES (4, 4, 1, 1, '2020-06-24 14:24:35', 1, 1);

-- ----------------------------
-- Table structure for permiso_modulos_copy1
-- ----------------------------
DROP TABLE IF EXISTS `permiso_modulos_copy1`;
CREATE TABLE `permiso_modulos_copy1`  (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) NULL DEFAULT NULL,
  `id_usuario` int(11) NULL DEFAULT NULL,
  `permiso` int(11) NULL DEFAULT NULL,
  `fecha_hora` datetime(0) NULL DEFAULT NULL,
  `activo` int(11) NULL DEFAULT NULL,
  `id_usuario_alta` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_permiso`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 383 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permiso_modulos_copy1
-- ----------------------------
INSERT INTO `permiso_modulos_copy1` VALUES (1, 6, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (2, 17, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (3, 8, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (4, 7, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (5, 16, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (6, 3, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (7, 9, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (8, 14, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (9, 13, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (10, 10, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (11, 1, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (12, 4, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (13, 5, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (14, 11, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (15, 2, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (16, 12, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (17, 18, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (18, 8, 2, 2, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (19, 7, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (20, 16, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (21, 3, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (22, 6, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (23, 9, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (24, 14, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (25, 13, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (26, 10, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (27, 18, 2, 2, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (28, 1, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (29, 4, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (30, 5, 2, 1, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (31, 11, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (32, 2, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (33, 12, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (34, 17, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (35, 8, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (36, 7, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (37, 16, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (38, 3, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (39, 6, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (40, 9, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (41, 14, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (42, 13, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (43, 10, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (44, 18, 3, 2, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (45, 1, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (46, 4, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (47, 5, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (48, 11, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (49, 2, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (50, 12, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (51, 17, 3, 0, '2019-09-11 07:59:46', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (52, 19, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (53, 20, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (54, 21, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (55, 22, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (56, 23, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (57, 24, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (58, 25, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (59, 1, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (60, 2, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (61, 3, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (62, 4, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (63, 5, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (64, 6, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (65, 7, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (66, 8, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (67, 9, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (68, 10, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (69, 11, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (70, 12, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (71, 13, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (72, 14, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (73, 16, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (74, 17, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (75, 18, 475, 2, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (76, 19, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (77, 20, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (78, 21, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (79, 22, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (80, 23, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (81, 24, 475, 2, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (82, 25, 475, 0, '2019-10-07 11:15:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (83, 1, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (84, 2, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (85, 3, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (86, 4, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (87, 5, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (88, 6, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (89, 7, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (90, 8, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (91, 9, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (92, 10, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (93, 11, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (94, 12, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (95, 13, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (96, 14, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (97, 16, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (98, 17, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (99, 18, 476, 2, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (100, 19, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (101, 20, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (102, 21, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (103, 22, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (104, 23, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (105, 24, 476, 2, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (106, 25, 476, 0, '2019-10-07 11:16:32', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (107, 1, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (108, 2, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (109, 3, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (110, 4, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (111, 5, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (112, 6, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (113, 7, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (114, 8, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (115, 9, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (116, 10, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (117, 11, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (118, 12, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (119, 13, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (120, 14, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (121, 16, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (122, 17, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (123, 18, 477, 2, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (124, 19, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (125, 20, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (126, 21, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (127, 22, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (128, 23, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (129, 24, 477, 2, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (130, 25, 477, 0, '2019-10-07 11:17:33', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (131, 1, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (132, 2, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (133, 3, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (134, 4, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (135, 5, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (136, 6, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (137, 7, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (138, 8, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (139, 9, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (140, 10, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (141, 11, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (142, 12, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (143, 13, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (144, 14, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (145, 16, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (146, 17, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (147, 18, 478, 2, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (148, 19, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (149, 20, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (150, 21, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (151, 22, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (152, 23, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (153, 24, 478, 2, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (154, 25, 478, 0, '2019-10-07 11:18:34', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (155, 1, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (156, 2, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (157, 3, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (158, 4, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (159, 5, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (160, 6, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (161, 7, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (162, 8, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (163, 9, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (164, 10, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (165, 11, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (166, 12, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (167, 13, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (168, 14, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (169, 16, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (170, 17, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (171, 18, 479, 2, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (172, 19, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (173, 20, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (174, 21, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (175, 22, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (176, 23, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (177, 24, 479, 2, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (178, 25, 479, 0, '2019-10-07 11:19:12', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (179, 1, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (180, 2, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (181, 3, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (182, 4, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (183, 5, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (184, 6, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (185, 7, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (186, 8, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (187, 9, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (188, 10, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (189, 11, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (190, 12, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (191, 13, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (192, 14, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (193, 16, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (194, 17, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (195, 18, 480, 2, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (196, 19, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (197, 20, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (198, 21, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (199, 22, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (200, 23, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (201, 24, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (202, 25, 480, 0, '2019-10-07 11:20:01', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (203, 1, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (204, 2, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (205, 3, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (206, 4, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (207, 5, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (208, 6, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (209, 7, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (210, 8, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (211, 9, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (212, 10, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (213, 11, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (214, 12, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (215, 13, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (216, 14, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (217, 16, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (218, 17, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (219, 18, 481, 2, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (220, 19, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (221, 20, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (222, 21, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (223, 22, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (224, 23, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (225, 24, 481, 2, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (226, 25, 481, 0, '2019-10-07 11:21:05', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (227, 1, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (228, 2, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (229, 3, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (230, 4, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (231, 5, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (232, 6, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (233, 7, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (234, 8, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (235, 9, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (236, 10, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (237, 11, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (238, 12, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (239, 13, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (240, 14, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (241, 16, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (242, 17, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (243, 18, 482, 2, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (244, 19, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (245, 20, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (246, 21, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (247, 22, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (248, 23, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (249, 24, 482, 2, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (250, 25, 482, 0, '2019-10-07 11:21:44', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (251, 24, 2, 2, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (252, 24, 3, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (253, 24, 423, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (254, 24, 424, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (255, 24, 425, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (256, 24, 426, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (257, 24, 427, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (258, 24, 428, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (259, 24, 429, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (260, 24, 430, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (261, 24, 431, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (262, 24, 432, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (263, 24, 433, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (264, 24, 434, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (265, 24, 435, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (266, 24, 436, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (267, 24, 437, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (268, 24, 438, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (269, 24, 439, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (270, 24, 440, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (271, 24, 441, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (272, 24, 442, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (273, 24, 443, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (274, 24, 444, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (275, 24, 445, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (276, 24, 446, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (277, 24, 447, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (278, 24, 448, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (279, 24, 449, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (280, 24, 450, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (281, 24, 451, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (282, 24, 452, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (283, 24, 453, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (284, 24, 454, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (285, 24, 455, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (286, 24, 456, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (287, 24, 457, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (288, 24, 458, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (289, 24, 459, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (290, 24, 460, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (291, 24, 461, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (292, 24, 462, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (293, 24, 463, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (294, 24, 464, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (295, 24, 465, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (296, 24, 466, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (297, 24, 467, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (298, 24, 468, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (299, 24, 469, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (300, 24, 470, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (301, 24, 471, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (302, 24, 472, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (303, 24, 473, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (304, 24, 474, 2, NULL, 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (305, 1, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (306, 2, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (307, 3, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (308, 4, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (309, 5, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (310, 6, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (311, 7, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (312, 8, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (313, 9, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (314, 10, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (315, 11, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (316, 12, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (317, 13, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (318, 14, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (319, 16, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (320, 17, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (321, 18, 483, 2, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (322, 19, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (323, 20, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (324, 21, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (325, 22, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (326, 23, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (327, 24, 483, 2, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (328, 25, 483, 0, '2019-10-07 12:26:37', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (329, 26, 1, 0, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (330, 27, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (331, 8, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (332, 27, 522, 1, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (333, 20, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (334, 7, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (335, 21, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (336, 16, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (337, 3, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (338, 25, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (339, 6, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (340, 9, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (341, 26, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (342, 14, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (343, 13, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (344, 10, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (345, 23, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (346, 18, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (347, 1, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (348, 19, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (349, 22, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (350, 4, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (351, 5, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (352, 11, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (353, 2, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (354, 12, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (355, 24, 522, 1, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (356, 17, 522, 0, '2019-10-14 13:52:57', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (357, 28, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (358, 29, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (359, 30, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (360, 31, 1, 0, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (361, 32, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (362, 33, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (363, 34, 1, 0, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (364, 35, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (365, 27, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (366, 20, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (367, 33, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (368, 32, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (369, 21, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (370, 31, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (371, 34, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (372, 35, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (373, 25, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (374, 28, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (375, 26, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (376, 29, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (377, 23, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (378, 30, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (379, 19, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (380, 22, 2, 0, '2019-10-23 08:19:56', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (381, 36, 1, 1, '2020-03-18 15:13:25', 1, 1);
INSERT INTO `permiso_modulos_copy1` VALUES (382, 37, 1, 1, '2020-03-18 15:13:25', 1, 1);

-- ----------------------------
-- Table structure for personas
-- ----------------------------
DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas`  (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ap_paterno` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ap_materno` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fecha_nacimiento` date NULL DEFAULT NULL,
  `sexo` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `direccion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `colonia` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ciudad` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `estado` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pais` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fotografia` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fecha_hora` datetime(0) NULL DEFAULT NULL,
  `activo` int(11) NULL DEFAULT NULL,
  `id_usuario` int(11) NULL DEFAULT NULL,
  `curp` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `edo_civil` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id_persona`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 537 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personas
-- ----------------------------
INSERT INTO `personas` VALUES (1, 'Publico en general', ' ', ' ', '0000-00-00', '', ' ', ' ', ' ', ' ', ' ', ' ', NULL, 0, 0, NULL, NULL);
INSERT INTO `personas` VALUES (2, 'Aarón Andres', 'Rizo', 'Barrera', '1995-07-01', 'H', 'Jazmin #209', 'Bugambilias', 'Linares', 'Nuevo León', 'México', 'images/profile/2.jpg', '2019-10-07 12:25:01', 1, 1, 'RIBA950701HNLZRR08', 'Casado');
INSERT INTO `personas` VALUES (5, 'Xochitl Guadalupe', 'Rodriguez', 'Serrato', '1995-07-01', 'M', 'Jazmin #209', 'Bugambilias', 'Linares', 'Nuevo León', 'México', 'images/profile/3.jpg', '2019-10-23 08:20:47', 1, 1, 'ROSX940306MNLDRC06', 'Casado');
INSERT INTO `personas` VALUES (6, 'Josue Itonio', 'Villarreal', 'Alvarado', '2019-10-29', 'H', 'Pendiente', 'Pendiente', 'Linares', 'Nuevo León', 'México', 'images/profile/4.jpg', '2019-10-29 11:32:27', 1, 1, 'RIBA950471HNLDRR22', 'Soltero');
INSERT INTO `personas` VALUES (10, 'Rodolfo', 'Fernandez', 'Cuellar', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (11, 'Julio Alberto', 'Lerma', 'Pineda', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (12, 'Gustavo ', 'Platas', 'Pedraza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (13, 'Julián Alejandro', 'Ramos', 'Paz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (14, 'Jesus Alejandro', 'Rodríguez', 'Solis', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (15, 'Gerson Neftalí', 'Silguero', 'Soto', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (16, 'Marycielo Naomi', 'Alanis', 'Castillo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (17, 'Flor Elena', 'Alanis', 'Medrano', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (18, 'Karen Alejandra', 'Alvarado', 'Alamillo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (19, 'Jose Luis', 'Banda', 'Ostos', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (20, 'Cesar Celedonio', 'Bocanegra', 'Olvera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (21, 'Deisy Jaqueline', 'Bravo', 'Salazar', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (22, 'Kareny Yasmin', 'Chavez', 'Lopez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (23, 'Ana Maria', 'De la Rosa', 'Zavala', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (24, 'Ivette ', 'Gallardo', 'Morales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (25, 'Ivonne ', 'Gallardo', 'Morales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (26, 'Keyri Sizley', 'Gaytan', 'Escamilla', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (27, 'Gabriela ', 'Gonzalez', 'Rodriguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (28, 'Debanhi Alejandra', 'Luna', 'Cisneros', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (29, 'Yesenia ', 'Martinez', 'Gonzalez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (30, 'Samantha Lizbeth', 'Martinez', 'Murillo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (31, 'Mariela Monserrat', 'Medina', 'Reyes', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (32, 'Daisy Kareny', 'Montes', 'Hernandez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (33, 'Karina Fabiola', 'Moreno', 'Patiño', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (34, 'Ma. Fernanda', 'Olmedo', 'Moreno', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (35, 'Alondra Gisela', 'Ortiz', 'Luna', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (36, 'Karely ', 'Perez', 'Garcia', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (37, 'Lizbeth Xitlaly', 'Ramirez', 'Ramos', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (38, 'Cristian Omar', 'Reyes', 'Gonzalez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (39, 'Martin ', 'Rodriguez', 'Enriquez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (40, 'Yonathan Dario', 'Salazar', 'Covarrubias', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (41, 'Francisco Alexis', 'Tamez', 'Rodriguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (42, 'Lessly Yessenia', 'Torres', 'Orozco', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (43, 'Roberto ', 'Aguilar', 'Rivera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (44, 'Irma Magdalena', 'Arriaga', 'Rivera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (45, 'Rosa Maria', 'Briseño', 'Rocha', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (46, 'Lizbeth Margarita', 'Carrillo', 'Lopez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (47, 'Lizeth Magdalena', 'Carrillo', 'Lopez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (48, 'Jemimah Yusellemi', 'Gallegos', 'Renovato', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (49, 'Nancy Lizbeth', 'Herrera', 'Segoviano', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (50, 'Ana Mariela', 'Martinez', 'Soto', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (51, 'Scarlet Yuridia Kimberly', 'Rodriguez', 'Gonzalez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (52, 'José Isabel', 'Cepeda', 'Gómez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (53, 'Rodrigo ', 'Flores', 'Guerra', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (54, 'Leidy Fabiola', 'Garcia', 'Cervantes', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (55, 'Elias Alejandro', 'Gonzalez', 'Arevalo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (56, 'Jose Luis', 'Guzman', 'Izaguirre', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (57, 'Juan Guadalupe', 'Luna', 'Luna', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (58, 'Ivan ', 'Mireles', 'Galvan', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (59, 'Jose Andres', 'Pequeño', 'Rodriguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (60, 'Roberto ', 'Rodríguez', 'Rodríguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (61, 'Zeira Yuselmi', 'Castillo', 'Jimenez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (62, 'Yesenia Abigail', 'Cazares', 'Constante', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (63, 'America Aylin', 'De la Fuente', 'Iracheta', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (64, 'Juan de dios ', 'De la Rosa', 'Luna', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (65, 'Jose Librado', 'Doria', 'Alvarez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (66, 'Vicente Sigifredo', 'Dueñas', 'Olvera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (67, 'Gustavo ', 'Estrella', 'Gonzalez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (68, 'Vicente Francisco', 'Flores', 'Bautista', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (69, 'Karla Estefanía', 'Gonzalez', 'Alcocer', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (70, 'María Fernanda', 'Gonzalez', 'Hernandez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (71, 'Cassandra Guadalupe', 'Gonzalez', 'Sanchez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (72, 'Yohali Guadalupe', 'Martínez', 'Garcia', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (73, 'Daniela Elizabeth', 'Mireles', 'Reyna', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (74, 'Angeles del Carmen ', 'Moreno', 'San Miguel', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (75, 'Johaly Dennise', 'Navarro', 'Peñaflor', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (76, 'Ángel ', 'Reyes', 'Morales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (77, 'Alan ', 'Reyes', 'Morales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (78, 'Yesenia Guadalupe', 'Reyes', 'Zuñiga', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (79, 'Fernando de Jesus ', 'Reyna', 'Rincon', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (80, 'Litzy Elizabeht', 'Rodriguez', 'Hernandez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (81, 'Keyla ', 'Rosales', 'Valero', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (82, 'Hector Homero', 'Torres', 'De Leon', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (83, 'Faustino ', 'Aguilar', 'Bernal', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (84, 'Damaris Del Carmen', 'Aguirre', 'Uribe', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (85, 'Paola Gisel', 'Balboa', 'De Leon', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (86, 'Tzady Dalet', 'Barrera', 'Almaguer', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (87, 'Griselda Lomeli', 'Barrera', 'Ortega', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (88, 'Karla Margarita', 'Castillo', 'Guerra', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (89, 'César Ricardo', 'Cavazos', 'Mendoza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (90, 'Victor Angel', 'Cepeda', 'Bernal', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (91, 'Matilde Abigail', 'Cepeda', 'Marin', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (92, 'Jose Andres', 'Cortes', 'Reyes', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (93, 'Carolina Sanjuanita', 'Cuellar', 'Camacho', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (94, 'Arely Jaquelin', 'Cuellar', 'Cepeda', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (95, 'Emiliano ', 'Esquivel', 'Perales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (96, 'María Guadalupe', 'Guerra', 'García', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (97, 'Brisa Soraida', 'Herevia', 'Collaso', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (98, 'Sanjuanita Yudith', 'Hernández', 'Rangel', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (99, 'Brandon Ivan', 'Lopez', 'Valdes', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (100, 'Lucely Maria', 'Navarro', 'Hernandez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (101, 'Dulce Maria', 'Reyes', 'Lopez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (102, 'Graciela Julissa', 'Reyes', 'Maldonado', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (103, 'Diana Laura', 'Reyna', 'Portillo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (104, 'Katia Berenice', 'Roman', 'Briones', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (105, 'Mariana Alejandra', 'Valadez', 'Quiroz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (106, 'Juan Manuel', 'Alvarado', 'Avalos', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (107, 'Erik Daniel', 'Alvarez', 'Ruiz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (108, 'Iris Ariana', 'Calderon', 'Orozco', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (109, 'Julio Cesar', 'Castillo', 'Sanchez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (110, 'Onan Josue', 'Cavazos', 'Ramirez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (111, 'Angel Mario', 'Cepeda', 'Ibarra', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (112, 'Laisa Abigail', 'Cerda', 'Rodriguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (113, 'Jesus ', 'Cortes', 'Quezada', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (114, 'Jesus ', 'Garcia', 'Trujillo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (115, 'Jesus Homero', 'Garza', 'Gonzalez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (116, 'David Alejandro', 'Gomez', 'Carrizales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (117, 'Horacio Guadalupe', 'Hernandez', 'Chipuli', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (118, 'Jesus Eduardo', 'Lopez', 'Valdes', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (119, 'Andres Arturo', 'Lucio', 'Ramirez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (120, 'Antonio Pedro', 'Martinez', 'Esquivel', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (121, 'Jesus ', 'Martinez', 'Muñiz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (122, 'Juan José', 'Ojeda', 'Meza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (123, 'Abner Esau', 'Parra', 'Hernandez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (124, 'Margarito ', 'Paz', 'Ramirez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (125, 'Valeria ', 'Pedraza', 'Navarro', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (126, 'Obed Isai', 'Porras', 'Cavazos', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (127, 'Jesus Natividad', 'Ramos', 'Nuñez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (128, 'Javier Isai', 'Rangel', 'Alvarez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (129, 'Jose Daniel', 'Reyna', 'Jimenez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (130, 'Pablo ', 'Rodriguez', 'Garza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (131, 'Jesus Andres', 'Ruiz', 'Sendejo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (132, 'Jesús Manuel', 'Silva', 'Hernandez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (133, 'Victor Hugo', 'Zuñiga', 'Marquez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (134, 'Karla Daniela', 'Barba', 'Gauna', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (135, 'José Ángel', 'Beraza', 'de la Cruz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (136, 'Reynaldo ', 'Carrillo', 'Ramírez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (137, 'Salvador Jesús', 'de la Cruz', 'Armenta', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (138, 'Kenia Lizbeth', 'Delgado', 'Medrano', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (139, 'Marlon Israel', 'Delgado', 'Rodríguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (140, 'Daniel ', 'Estrada', 'Luna', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (141, 'Luis Eduardo', 'García', 'Morales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (142, 'Emma Jazmín', 'Gutiérrez', 'Guzmán', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (143, 'Mary Carmen', 'Hernández', 'Robledo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (144, 'Yulisa ', 'Ledezma', 'Ramos', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (145, 'Manuel Guadalupe', 'Meléndez', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (146, 'Lauro Alejandro', 'Muñoz', 'Herrera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (147, 'Juan Carlos', 'Ortiz', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (148, 'Pablo Alberto', 'Ovalle', 'Rodríguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (149, 'Ariadna Janet', 'Oviedo', 'Heredia', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (150, 'Johana Diamantina', 'Pedraza', 'Parra', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (151, 'Heily Marisol', 'Perez', 'Lira', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (152, 'Neyvi Sarahí', 'Ramírez', 'Medrano', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (153, 'Ana Karen', 'Rodríguez', 'Cepeda', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (154, 'Wendy Yaneth', 'Rodríguez', 'Larumbe', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (155, 'Alondra Alhelí', 'Saavedra', 'Gloria', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (156, 'Abraham ', 'Sifuentes', 'Robles', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (157, 'Roberto Alejandro', 'Villarreal', 'Esquivel', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (158, 'Cesar David', 'Zamarripa', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (159, 'Eunice Guadalupe', 'Alamillo', 'Castillo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (160, 'Zaida Guadalupe', 'Alanis', 'Cabrera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (161, 'Perla Yesenia', 'Alanis', 'Doria', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (162, 'Juan Alberto', 'Cardona', 'Jiménez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (163, 'Yessica Abigail', 'Cardona', 'Ledezma', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (164, 'Javier ', 'Carrillo', 'Ortiz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (165, 'Gonzalo ', 'Cuevas', 'Treviño', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (166, 'Oscar Jesús', 'Dávila', 'Ledezma', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (167, 'Luis Alexis', 'Escobedo', 'Cortés', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (168, 'Fabiola ', 'Esparza', 'Salinas', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (169, 'Imelda ', 'García', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (170, 'Lino ', 'Gil', 'Olvera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (171, 'Pedro Luis', 'Jerez', 'Jiménez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (172, 'Jesús Daniel', 'Luna', 'Pérez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (173, 'Vanesa del Refugio ', 'Medina', 'Jiménez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (174, 'Jeniffer Neftalí', 'Oviedo', 'Paz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (175, 'Carlos Alberto', 'Palma', 'Flores', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (176, 'Ramón Jesús', 'Pesina', 'Izaguirre', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (177, 'Blanca Lizbeth', 'Plata', 'Aguilar', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (178, 'SanJuanita ', 'Reyes', 'Zaragoza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (179, 'Monserrat ', 'Rodríguez', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (180, 'Yaqueline Alejandra', 'Saravia', 'González', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (181, 'Elmer Antonio', 'Soto', 'Rodríguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (182, 'Alejandra Estefannía', 'Uscanga', 'Zorrosa', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (183, 'Pedro Luis', 'Barajas', 'Cruz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (184, 'José Manuel', 'Briones', 'Garcia', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (185, 'Ehonaí ', 'Castro', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (186, 'Victor Manuel', 'Garcia', 'Torres', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (187, 'Ana María', 'González', 'Villarreal', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (188, 'Aarón ', 'Hernandez', 'Galindo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (189, 'Jonathan Andrés', 'Martínez', 'Guevara', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (190, 'José Adalberto', 'Pulido', 'Ramírez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (191, 'Marco Antonio', 'Tovar', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (192, 'Uriel ', 'Vásquez', 'Cruz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (193, 'María de los Angeles ', 'Villarreal', 'Alvarado', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (194, 'Jesús Arturo', 'Villarreal', 'Garcia', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (195, 'Jorge Luis', 'Arratia', 'Ramos', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (196, 'Adrián Raúl', 'Camero', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (197, 'José de Jesús de', 'Cardona', 'Jiménez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (198, 'Mireya ', 'Cerritos', 'Grimaldo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (199, 'Diego Arturo', 'Contreras', 'Sánchez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (200, 'José Luis', 'Guerrero', 'Guerra', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (201, 'Jesús Aldair', 'López', 'Galván', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (202, 'Edson Rolando', 'Mercado', 'Ibarra', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (203, 'Luis Alberto', 'Nuñez', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (204, 'Pedro ', 'Pequeño', 'Carrizales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (205, 'José Eduardo', 'Pérez', 'Álvarez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (206, 'Adolfo ', 'Pérez', 'Cardona', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (207, 'Leonel ', 'Quintanilla', 'Gonzalez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (208, 'Juan Pablo', 'Ramírez', 'Ramírez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (209, 'Ramiro ', 'Reyes', 'Arreaga', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (210, 'Gustavo ', 'Rodríguez', 'Lezo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (211, 'Ubaldo Germán', 'Rodríguez', 'Ramírez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (212, 'Jonathan Antonio', 'Salazar', 'Yado', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (213, 'Luis Alfonso', 'Chávez', 'García', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (214, 'José de Jesus de', 'Flores', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (215, 'Cesar Alberto José', 'Flores', 'Pineda', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (216, 'Andrik ', 'Galván', 'Peñaflor', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (217, 'Erik Dolores', 'García', 'Carrión', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (218, 'Williams Alejandro', 'García', 'Moyera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (219, 'Erick Minerdino', 'Garza', 'Alvear', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (220, 'Donaldo Mauricio', 'Gómez', 'Oviedo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (221, 'Angel Mario', 'Luna', 'Villarreal', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (222, 'Jesús Marcelino', 'Marín', 'Rivera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (223, 'Jorge Armando', 'Ortíz', 'Rodríguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (224, 'Pedro Luis', 'Pérez', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (225, 'Uriel Abimael', 'Rosales', 'Escobedo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (226, 'Dulce María', 'Solares', 'González', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (227, 'Jhonatan Emmanuel', 'Solares', 'González', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (228, 'Edgar Oziel', 'Tirado', 'García', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (229, 'Raúl Gerardo', 'Valladares', 'Castillo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (230, 'David ', 'Abadía', 'Ramírez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (231, 'Francisco Javier', 'Aguirre', 'Soto', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (232, 'Leonardo ', 'Contreras', 'González', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (233, 'Luis Ernesto', 'Flores', 'López', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (234, 'Omar Alejandro', 'Galarza', 'Constante', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (235, 'Luis Eduardo', 'Hernandez', 'Oviedo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (236, 'Angélica Maribel', 'Ledezma', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (237, 'Ramiro Guadalupe', 'López', 'de la Rosa', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (238, 'Irma Laudel', 'Pedroza', 'de Leon', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (239, 'Erik Alan', 'Rodríguez', 'Garza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (240, 'Victor Manuel', 'Torres', 'Ochoa', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (241, 'Cynthia Jeaneth', 'Alanís', 'Galván', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (242, 'Jessica ', 'Álvarez', 'Martinez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (243, 'Adrián Alejandro', 'Barrios', 'Mena', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (244, 'Estefanía Guadalupe', 'Briones', 'Morales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (245, 'Yessica Marlen', 'Candanosa', 'Nieto', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (246, 'Jeniffer Paola', 'Dávila', 'Sánchez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (247, 'María Trinidad', 'Galindo', 'Murillo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (248, 'Omar Sebastian', 'Gaona', 'de la Cruz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (249, 'Juan Andres', 'Gonzalez', 'Perez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (250, 'Brianda Paola', 'Ibarra', 'Porras', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (251, 'Flor Alejandra', 'Karr', 'Jasso', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (252, 'Elvira Yamileth', 'Limon', 'Perales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (253, 'Dolores del Carmen ', 'Luna', 'Luna', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (254, 'Guadalupe Javier', 'Luna', 'Tellez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (255, 'Alejandra Noemí', 'Martinez', 'García', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (256, 'Luz Elena', 'Martinez', 'Mireles', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (257, 'Francisco Daniel', 'Martinez', 'Rivera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (258, 'Luis Eduardo', 'Moreno', 'Mejía', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (259, 'Glomari Devani', 'Oviedo', 'Soto', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (260, 'Kattia Mayela', 'Pacheco', 'García', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (261, 'Ana Cristina', 'Perales', 'de la Cerda', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (262, 'Janeth Alejandra', 'Pesina', 'Ayala', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (263, 'Carlos Guadalupe', 'Quezada', 'Gutierrez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (264, 'Kenya Jaqueline', 'Rangel', 'Cruz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (265, 'Guadalupe ', 'Rivera', 'Fatima', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (266, 'Ma Teresa ', 'Rodríguez', 'Alvaréz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (267, 'Ciro Antonio', 'Salazar', 'Malacara', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (268, 'Tanybeth ', 'Toledo', 'Jimenez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (269, 'Juan Fernando', 'Torres', 'Orozco', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (270, 'Ricardo ', 'Olivares', 'González', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (271, 'Lesly Patricia', 'Cano', 'Medina', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (272, 'Olga Guadalupe', 'Carreón', 'Tienda', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (273, 'Rigoberto ', 'Casares', 'Cabrera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (274, 'Nadia Itzel', 'Cepeda', 'Andrade', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (275, 'Julian Natan', 'Fernandez', 'Lopez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (276, 'Alexis Alfonso', 'Galindo', 'Medellin', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (277, 'Nora Isabel', 'García', 'Treviño', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (278, 'Carlos Alejandro', 'González', 'Uribe', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (279, 'Sandy Yuliana', 'Hernandez', 'Mata', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (280, 'Carlos Alberto', 'Jasso', 'González', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (281, 'Karen Adriana', 'Karr', 'Guzman', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (282, 'Deniz Alejandra', 'Loera', 'Aguirre', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (283, 'María Guadalupe', 'Luna', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (284, 'Frida Mariela', 'Márquez', 'Medina', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (285, 'Nadia Ercilia', 'Martínez', 'Rios', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (286, 'María Guadalupe', 'Moncada', 'Tovar', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (287, 'Edson Aldair', 'Parra', 'Ramos', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (288, 'Cecilia Marisol', 'Peña', 'Solis', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (289, 'Rosa Isela', 'Pérez', 'Resendez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (290, 'Blanca Delia', 'Pérez', 'Uribe', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (291, 'María Virginia', 'Ramos', 'González', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (292, 'Wendy Jaqueline', 'Reyes', 'Aguilar', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (293, 'Yulissa ', 'Reyes', 'Gonzalez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (294, 'María ', 'Reyna', 'Ramírez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (295, 'Flor Paola', 'Rodríguez', 'Luna', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (296, 'Ana Lidia', 'Sepúlveda', 'de Loera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (297, 'Magaly ', 'Torres', 'Olvera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (298, 'Javier ', 'Treviño', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (299, 'Tanya Guadalupe', 'Trujillo', 'Perez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (300, 'Flor Idalia', 'Andrade', 'Moreno', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (301, 'Elena del Carmen', 'Cabrera', 'Mendoza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (302, 'Roberto Eduardo', 'Cepeda', 'Salazar', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (303, 'Yazmin Alejandra', 'Coronado', 'Pedraza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (304, 'Estefania Guadalupe', 'Cuéllar', 'García', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (305, 'Diana Guadalupe', 'Doria', 'González', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (306, 'Denisse Yamileth', 'Gallardo', 'Morales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (307, 'Selena ', 'Gaona', 'González', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (308, 'Jesús Alejandro', 'García', 'Arredondo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (309, 'León Carolina', 'García', 'de', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (310, 'Elsa ', 'Gómez', 'Palacios', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (311, 'Gabriel Guadalupe', 'Hernández', 'Salazar', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (312, 'Careni Elizabeth', 'Ibarra', 'Cantú', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (313, 'Sofía ', 'Ledezma', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (314, 'Luis Humberto', 'Quiroz', 'Ramírez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (315, 'Néstor Fernando', 'Reyes', 'García', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (316, 'Anali ', 'Ríos', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (317, 'Víctor Salomón', 'Rodríguez', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (318, 'Ángel Mario', 'Silva', 'Niño', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (319, 'Alicia Yaneli', 'Torres', 'López', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (320, 'José Armando', 'Treviño', 'Moncada', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:34:55', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (321, 'Adriana Kareny', 'Alameda', 'Valladares', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (322, 'Alondra Jaqueline', 'Barrera', 'Zamora', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (323, 'Edgar Alejandro', 'Bocanegra', 'Álvarez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (324, 'Valeria Dolores', 'Cardona', 'Barba', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (325, 'Jose ', 'De la Cerda', 'Olmedo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (326, 'Diana Paola', 'García', 'Andrade', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (327, 'Osvaldo Rafael', 'García', 'Torres', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (328, 'Francisco Javier', 'González', 'Constante', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (329, 'Dylan Alejandro', 'Guerrero', 'Gutierrez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (330, 'Viviana ', 'Hernández', 'Gonzalez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (331, 'Daniela Michelle', 'Hernández', 'Morales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (332, 'Jose Luis', 'Marín', 'Perales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (333, 'Karen Guadalupe', 'Muñiz', 'Mendoza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (334, 'Jesús ', 'Pedraza', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (335, 'Jettli Jasmín', 'Pineda', 'Ramirez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (336, 'Milagros Yatziri', 'Ramos', 'López', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (337, 'Emanuel ', 'Serna', 'García', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (338, 'Anna Gabriela', 'Varela', 'Cuéllar', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (339, 'Mariaelena ', 'Vázquez', 'Martinez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (340, 'Martha Liliana', 'Zamora', 'Vázquez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (341, 'Lennis Pamela', 'Flores', 'Delgado', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (342, 'Blanca Esthela', 'Álvarez', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (343, 'Cruz ', 'Arriaga', 'López', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (344, 'Luis Eduardo', 'Chávez', 'Álvarez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (345, 'Julio Adrián', 'De la Cerda', 'River', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (346, 'Nereida ', 'Galindo', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (347, 'Araceli ', 'García', 'Carrillo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (348, 'Ana Margarita', 'García', 'Cuevas', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (349, 'Karina ', 'Garza', 'Guajardo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (350, 'Ana Silvia', 'Garza', 'Guerra', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (351, 'José Antonio', 'González', 'Núñez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (352, 'Brianda Elizabeth', 'Hernández', 'Barajas', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (353, 'Luis Antonio', 'Mata', 'Perez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (354, 'Héctor Casimiro', 'Ramírez', 'Ramírez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (355, 'Ma. Martha Leticia', 'Ramos', 'Valdez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (356, 'Martin Omar', 'Reyes', 'Valdes', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (357, 'Elsa Adriana', 'Rodríguez', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (358, 'Beatriz ', 'Ruiz', 'Luna', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (359, 'Juan Pablo', 'Tienda', 'Pequeño', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (360, 'Reyna Patricia', 'Silguero', 'Pérez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (361, 'José Arturo', 'Varela', 'Vásquez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (362, 'Luz Maria', 'Pedraza', 'Treviño', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (363, 'Alejandro ', 'Álvarez', 'Álvarez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (364, 'Daniel Leobardo', 'Dueñas', 'Reyes', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (365, 'María del Carmen', 'Luna', 'Cuellar', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (366, 'Ernesto Alejandro', 'Mejorado', 'Herrera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (367, 'Ronaldo ', 'Méndez', 'Álvarez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (368, 'Arturo Jahaziel', 'Reyes', 'Aranda', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (369, 'Kevin Alexis', 'Uriegas', 'Lopez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (370, 'Sebastián Orión', 'Villanueva', 'Puente', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (371, 'Aldo Efrain', 'Carriaga', 'Oviedo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (372, 'Jose Alejandro', 'Delgado', 'Gallardo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (373, 'Hector David', 'Escobedo', 'Garcia', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (374, 'Pedro Luis', 'Ezquivel', 'Rocha', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (375, 'Sigifredo ', 'Gonzalez', 'Villarreal', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (376, 'Hector Alan', 'Hinojosa', 'Molina', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (377, 'Francisco Joaquin', 'Martinez', 'Flores', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (378, 'Rafael ', 'Martinez', 'Torres', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (379, 'Angel Francisco', 'Mendoza', 'Portillo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (380, 'Arnaldo ', 'Rodriguez', 'Enriquez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (381, 'Rocio Catalina', 'Velazquez', 'Reyna', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (382, 'Jose de Jesus', 'Aguirre', 'Perez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (383, 'Luis Daniel', 'Bernal', 'Rodriguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (384, 'Hector Napoleon', 'Casas', 'Hernandez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (385, 'Salvador ', 'Cruz', 'Lucio', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (386, 'Alejandro Daniel', 'Fonseca', 'Cabrieles', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (387, 'Leonardo ', 'Lara', 'Moreno', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (388, 'Deisy Alejandra', 'Lopez', 'Hernandez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (389, 'Juan Jenaro', 'Manrique', 'Perales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (390, 'Rodrigo Jesus', 'Muñoz', 'Rincon', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (391, 'Mario Alberto', 'Paz', 'Cabrera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (392, 'Marte Emilio', 'Perez', 'Doria', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (393, 'Luis Angel', 'Sauceda', 'Molina', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (394, 'Jose Alfredo', 'Vazquez', 'Rodriguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (395, 'Daniela Guadalupe', 'Barrientos', 'Garza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:40:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (396, 'Daniela Guadalupe', 'Barrientos', 'Garza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:42:47', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (397, 'Daniela Guadalupe', 'Barrientos', 'Garza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:43:05', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (398, 'Daniela Guadalupe', 'Barrientos', 'Garza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (399, 'Carlos Andres', 'Canto', 'Hernandez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (400, 'Diana Margarita', 'De Leon', 'Martinez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (401, 'Yesica ', 'Flores', 'Gonzalez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (402, 'Bryan Alejandro', 'García', 'Sosa', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (403, 'Vanesa Jaqueline', 'Garza', 'Fonseca', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (404, 'Susana Ivonne', 'Garza', 'Pesina', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (405, 'Melissa Jaqueline', 'Mejorado', 'Balvaneda', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (406, 'Adrian Emmanuel', 'Alameda', 'Rodriguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (407, 'Judith Cristal', 'Andrade', 'Peña', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (408, 'Yuridia Cristel', 'Andrade', 'Peña', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (409, 'Ailin ', 'Calles', 'Ramirez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (410, 'Alma Kareny', 'Cardona', 'Gonzalez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (411, 'Rodrigo ', 'Espinosa', 'Cortes', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (412, 'Jose Alfredo', 'Gaona', 'Castillo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (413, 'Gregorio Manuel', 'García', 'Martinez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (414, 'Victor Daniel', 'Gonzalez', 'Torres', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (415, 'María Concepcion', 'Guerrero', 'Karr', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (416, 'Roberto Alejos', 'Luna', 'Cuellar', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (417, 'Lluvia Yahaira', 'Luna', 'Mendez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (418, 'Dilian Alejandra', 'Martinez', 'Cepeda', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (419, 'Cecilia Selene', 'Martinez', 'Hernandez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (420, 'Jarely Lizbeth', 'Martinez', 'Morales', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (421, 'Saul Alejandro', 'Olvera', 'Guajardo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (422, 'Ana karen', 'Perales', 'Serrato', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (423, 'Idolina Guadalupe', 'Ramones', 'Rodriguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (424, 'Breayan Osbaldo', 'Reyes', 'Chavez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (425, 'Olga Mariana', 'Rodriguez', 'Karr', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (426, 'Jessica Yazmin', 'Soto', 'Jasso', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (427, 'Alejandra Guadalupe', 'Soto', 'Limon', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (428, 'Tania ', 'Torre', 'Rodriguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (429, 'Luis Felipe', 'Vazquez', 'Martinez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (430, 'Marcelino ', 'Villanueva', 'Vergara', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (431, 'Juan Carlos', 'Villela', 'Hernandez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 12:44:03', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (432, 'Aarón Fabián', 'Villanueva', 'Roble', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (433, 'Adriana Kareni', 'Alameda', 'Valladares', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (434, 'Alejandra Maribel', 'Davila', 'Lozano', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (435, 'Alejandro', 'Fonseca', 'Cavazos', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (436, 'Alex Fernando', 'López', 'Rodríguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (437, 'Alfredo Federico', 'de Luna', 'Elizondo', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (438, 'Alfredo', 'González', 'Torres', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (439, 'Allen Gabriel', 'Cruz', 'Vega', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (440, 'Angel Jesus', 'Silva', 'Moreno', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (441, 'Antonio', 'García', 'Ríos', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (442, 'Casimiro', 'Platas', 'Mejorado', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (443, 'Cinthia Guadalupe', 'Pérez', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (444, 'Cynthia Ivett', 'Tamez', 'García', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (445, 'Daniel', 'Salazar', 'Almaraz', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (446, 'Eddy Gaziel', 'López', 'Hernández', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (447, 'Edgar Eliud', 'Ramírez', 'Méndez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (448, 'Elvira', 'Izaquirre', 'Mancha', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (449, 'Estefania', 'Murillo', 'Luna', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (450, 'Felipe de Jesus', 'Karr', 'Martinez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (451, 'Francisco Javier', 'González', 'Constante', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (452, 'Francisco', 'Montemayor', 'Puente', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (453, 'Guianeya Miganlay', 'Parra', 'Ramos', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (454, 'Ileana Yazmín', 'Torres', 'Rodríguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (455, 'Irma Beatriz', 'Martínez', 'Prieto', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (456, 'Jessica Yudith', 'Gómez', 'Rocha', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (457, 'Jesús Darío', 'Navarro', 'Sánchez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (458, 'Jesus Gerardo', 'Aguirre', 'Garza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (459, 'Jesús Javier', 'Treviño', 'Cázares', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (460, 'Jorge Alberto', 'Gómez', 'Sandoval', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (461, 'Jorge Gabriel', 'Elizondo', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (462, 'José Armando', 'Treviño', 'Moncada', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (463, 'José Higinio', 'Navarro', 'Rivera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (464, 'Josue Itonio', 'Villarreal', 'Alvarado', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (465, 'Juan Eduardo', 'Rivera', 'Garza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (466, 'Karla Viridiana', 'Montaño', 'Cuellar', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (467, 'Kenia Elizabeth', 'Carreón', 'Martínez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (468, 'Lauro', 'Flores', 'Ramos', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (469, 'Lessly Alejandra', 'Platas', 'González', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (470, 'Maria Cristina', 'Zamora', 'Contreras', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (471, 'María Guadalupe', 'Galván', 'Zamora', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (472, 'Mariano', 'Garza', 'Villarreal', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (473, 'Mariela', 'Olán', 'Rodríguez', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (474, 'Mayrelli', 'Torres', 'Segura', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (475, 'Melissa', 'Dueñas', 'González', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (476, 'Pablo Adrian', 'Pérez', 'Briseño', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (477, 'Rafael', 'Celada', 'Vargas', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (478, 'Ricardo', 'Quintanar', 'Cano', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (479, 'Ronaldo David', 'Medellín', 'Ledezma', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (480, 'Sergio', 'Estrada', 'Alanís', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (481, 'Silvia Guadalupe', 'Díaz', 'Garza', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (482, 'Thalia Citlaly', 'Barrera', 'Rivera', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (483, 'Víctor Hugo', 'Pérez', 'Briseño', '2019-09-19', 'H', 'pendiente', 'pendiente', 'pendiente', 'Nuevo León', 'México', 'images/profile/avatarH.jpg', '2019-09-19 14:21:24', 1, 1, 'pendiente', 'Soltero');
INSERT INTO `personas` VALUES (484, 'Hortencia', 'Mejia', 'NA', '2019-10-07', 'M', 'NA', 'NA', 'NA', 'Nuevo León', 'México', 'images/profile/avatarM.jpg', '2019-10-07 12:02:45', 1, 1, 'NA', 'Soltero');
INSERT INTO `personas` VALUES (485, 'Silvia', 'Tienda', 'NA', '2019-10-07', 'M', 'NA', 'NA', 'NA', 'Aguascalientes', 'México', 'images/profile/avatarM.jpg', '2019-10-07 11:16:32', 1, 1, 'NAN', 'Soltero');
INSERT INTO `personas` VALUES (486, 'Irayda', 'Jimenez', 'NA', '2019-10-07', 'H', 'NA', 'NA', 'NA', 'Aguascalientes', 'México', 'images/profile/avatarH.jpg', '2019-10-07 11:17:33', 1, 1, 'NA3', 'Soltero');
INSERT INTO `personas` VALUES (487, 'Adriana Jaresi', 'Dueñas', 'Guerrero', '2019-10-07', 'H', 'NA', 'NA', 'NA', 'Aguascalientes', 'México', 'images/profile/avatarH.jpg', '2019-10-07 11:18:34', 1, 1, 'NAA', 'Soltero');
INSERT INTO `personas` VALUES (488, 'Nadia', 'Gonzalez', 'Jasso', '2019-10-07', 'H', 'NA', 'NA', 'NA', 'Aguascalientes', 'México', 'images/profile/avatarH.jpg', '2019-10-07 11:19:12', 1, 1, 'NA323', 'Soltero');
INSERT INTO `personas` VALUES (489, 'Mayrelli', 'Torres', 'Segura', '2019-10-07', 'H', 'NA', 'NA', 'NA', 'Aguascalientes', 'México', 'images/profile/avatarH.jpg', '2019-10-07 11:20:25', 0, 1, 'NA', 'Soltero');
INSERT INTO `personas` VALUES (490, 'Elsa', 'Villarreal', 'NA', '2019-10-07', 'H', 'NA', 'NA', 'NA', 'Aguascalientes', 'México', 'images/profile/avatarH.jpg', '2019-10-07 11:21:05', 1, 1, 'NA', 'Soltero');
INSERT INTO `personas` VALUES (491, 'Ruben', 'Bernal', 'Quintanilla', '2019-10-07', 'H', 'NA', 'NA', 'NA', 'Aguascalientes', 'México', 'images/profile/avatarH.jpg', '2019-10-07 11:21:44', 1, 1, 'NA', 'Soltero');
INSERT INTO `personas` VALUES (492, 'Docentes', 'UTL', 'Linares', '2019-10-07', 'H', 'NA', 'NA', 'NA', 'Aguascalientes', 'México', 'images/profile/avatarH.jpg', '2019-10-07 12:26:37', 1, 1, 'NA2', 'Soltero');
INSERT INTO `personas` VALUES (493, 'Roberto', 'Cruz', 'Vega', '0000-00-00', 'H', 'NA', 'NA', 'NA', 'Aguascalientes', 'México', 'images/profile/avatarH.jpg', '2019-10-07 12:26:37', 1, 1, 'NA2', 'Soltero');
INSERT INTO `personas` VALUES (494, 'Sarai ', 'Cantú', 'Cantú', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (495, 'Maria Guadalupe', 'Domínguez', 'García', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (496, 'Elvia Yadira', 'Lerma', 'Hernandez', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (497, ' Eliseo', 'Contreras', 'Rubio', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (498, 'Jose Alfredo', 'Vega', 'de Luna', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (499, 'Nancy Elizabeth', 'Rodríguez', 'Torres', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (500, 'Ana Margarita', 'García', 'Cuevas', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (501, 'Atenas Alejandra', 'Guerra', 'Sosa', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (502, 'Allen Gabriel', 'Cruz', 'Vega', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (503, 'Arturo Francisco', 'De Luna', 'Elizondo', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (504, 'Darryl', 'English', 'N/A', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (505, 'Martha Patricia', 'De la Garza', 'Quiroga', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (506, 'Mario Alberto', 'Zamarripa', 'Rodríguez', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (507, 'María Griselda', 'Carrillo', 'Ledezma', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (508, 'Juan Marcos', 'Ramírez ', 'Luna', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (509, 'Saul', 'Leal', 'Cortez', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (510, 'Antonio José', 'De la Cruz', 'Armenta', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (511, 'Delia Deyanira', 'García', 'Moctezuma', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (512, 'Blanca Genoveva', 'Camacho', 'Silva', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (513, 'Rolando Manuel', 'Bernal', 'Chávarri', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (514, 'Juan Manuel', 'Vera', 'Báez', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (515, 'Cecilia Alexandra', 'Martínez', 'Salinas', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (516, 'Nestor Javier', 'Chávez', 'Ramírez', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (517, 'Giselle Ariatnne', 'Guerra', 'García', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (518, 'Diana Elizabeth', 'Luna', 'Tijerina', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (519, 'Rubén', 'Doria', 'Reyes', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (520, 'Sandra Elizabeth', 'Salazar', 'Garza', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (521, 'Alejandro', 'Reyna', 'Dueñas', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (522, 'Jorge Fernando', 'Gutierrez', 'Leal', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (523, 'Genaro Auitsaid', 'Estrada', 'Hernandez', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (524, 'Jesús Darío', 'Navarro', 'Sánchez', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (525, 'Tabita Elizabeth', 'Espinosa', 'Salazar', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (526, 'Carlos Alberto', 'Nuñez', 'Herrera', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (527, 'Jorge Fernando', 'De la Garza', 'Guerra', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (528, 'Lina Libertad', 'Treviño', 'Rodriguez', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (529, 'María Elena', 'Ramírez', 'Vega', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (530, 'Nayelli Marlen', 'Illades', 'Salinas', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (531, 'Huitzilihuitl', 'de Leon', 'Leal', '1989-12-26', 'H', 'Chocoglorias 113', 'Las glorias', 'Linares', 'Nuevo León', 'México', NULL, '2019-10-14 15:01:42', NULL, NULL, 'LELH891226HNLNLT04', 'Casado');
INSERT INTO `personas` VALUES (532, 'Yareli Lizbeth', 'Vázquez', 'Diaz', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (533, 'Uriel', 'Villarreal', 'Doria', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (534, 'Daniela Guadalupe', 'Sánchez', 'Cervantes', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (535, 'Lizbeth', 'Ortega', 'Cepeda', '0000-00-00', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personas` VALUES (536, 'Jose Isidro', 'Coronado', 'Reyes', '0000-00-00', 'H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for trabajadores
-- ----------------------------
DROP TABLE IF EXISTS `trabajadores`;
CREATE TABLE `trabajadores`  (
  `id_trabajador` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NULL DEFAULT NULL,
  `no_empleado` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `correo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fecha_ingreso_trabajo` date NULL DEFAULT NULL,
  `id_departamento` int(11) NULL DEFAULT NULL,
  `id_direccion` int(11) NULL DEFAULT NULL,
  `id_puesto` int(11) NULL DEFAULT NULL,
  `fecha_hora` datetime(0) NULL DEFAULT NULL,
  `activo` int(11) NULL DEFAULT NULL,
  `id_usuario` int(11) NULL DEFAULT NULL,
  `id_tipo_trabajador` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_trabajador`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trabajadores
-- ----------------------------
INSERT INTO `trabajadores` VALUES (1, 2, '1069', 'aaron.rizo@utl.edu.mx', '0000-00-00', 1, 1, 5, '2019-10-07 12:25:01', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (2, 5, '2032', 'xochitl.rodriguez@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-23 08:20:47', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (3, 6, '1522', 'josue.villarreal@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-29 11:32:27', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (4, 432, '1070', 'aaron.villanueva@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (5, 433, '1071', 'adriana.alameda@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (6, 434, '1072', 'alejandra.davila@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (7, 435, '1073', 'alejandro.fonseca@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (8, 436, '1074', 'alex.lopez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (9, 437, '1075', 'alfredo.deluna@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (10, 438, '1076', 'alfredo.gonzalez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (11, 439, '1077', 'allengabriel@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (12, 440, '1078', 'angel.silva@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (13, 441, '1079', 'antonio.garcia@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (14, 442, '1080', 'casimiro.platas@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (15, 443, '1081', 'cinthia.perez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (16, 444, '1082', 'cynthia.tamez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (17, 445, '1083', 'daniel.almaraz@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (18, 446, '1084', 'eddy.lopez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (19, 447, '1085', 'eliud.ramirez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (20, 448, '1086', 'elvira.izaguirre@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (21, 449, '1087', 'estefania.murillo@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (22, 450, '1088', 'felipe.karr@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (23, 451, '1089', 'francisco.gonzalez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (24, 452, '1090', 'francisco.montemayor@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (25, 453, '1091', 'guianeya.parra@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (26, 454, '1092', 'ileana.torres@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (27, 455, '1093', 'irma.martinez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (28, 456, '1094', 'jessica.gomez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (29, 457, '1095', 'dario.navarro@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (30, 458, '1096', 'gerardo.aguirre@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (31, 459, '1097', 'jesus.trevino@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (32, 460, '1098', 'alberto.gomez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (33, 461, '1099', 'jorge.elizondo@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (34, 462, '1100', 'armando.trevino@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (35, 463, '1101', 'higinio.navarro@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (36, 464, '1102', 'josue.villarreal@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (37, 465, '1103', 'juan.rivera@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (38, 466, '1104', 'viridiana.montano@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (39, 467, '1105', 'kenia.carreon@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (40, 468, '1106', 'lflores@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (41, 469, '1107', 'lessly.platas@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (42, 470, '1108', 'cristina.zamora@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (43, 471, '1109', 'lupita.galvan@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (44, 472, '1110', 'mariano.garza@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (45, 473, '1111', 'mariela.olan@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (46, 474, '1112', 'mayrelli.torres@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (47, 475, '1113', 'melissa.gonzalez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (48, 476, '1114', 'paperez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (49, 477, '1115', 'rafael.celada@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (50, 478, '1116', 'ricardo.quintanar@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (51, 479, '1117', 'ronaldo.medellin@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (52, 480, '1118', 'sergio.estrada@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (53, 481, '1119', 'silvia.diaz@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (54, 482, '1120', 'thalia.barrera@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (55, 483, '1121', 'victorhugo.perez@utl.edu.mx', '2019-09-19', 4, 2, 2, '2019-09-19 14:21:24', 1, 1, 2);
INSERT INTO `trabajadores` VALUES (56, 484, '1548', 'hmejia@utl.edu.mx', '0000-00-00', 3, 2, 1, '2019-10-07 12:02:45', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (57, 485, '5454', 'stienda@utl.edu.mx', '2019-10-07', 3, 2, 1, '2019-10-07 11:16:32', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (58, 486, '54543', 'iris.jimenez@utl.edu.mx', '2019-10-07', 3, 2, 1, '2019-10-07 11:17:33', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (59, 487, '4443', 'adriana.duenas@utl.edu.mx', '2019-10-07', 3, 2, 2, '2019-10-07 11:18:34', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (60, 488, '55344', 'nadia.gonzalez@utl.edu.mx', '2019-10-07', 3, 2, 1, '2019-10-07 11:19:12', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (61, 489, '45446', 'mayrelli.torres@utl.edu.mx', '2019-10-07', 3, 2, 1, '2019-10-07 11:20:25', 0, 1, 1);
INSERT INTO `trabajadores` VALUES (62, 490, '454552', 'elsa.villarreal@utl.edu.mx', '2019-10-07', 3, 2, 1, '2019-10-07 11:21:05', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (63, 491, '353455', 'ruben.bernal@utl.edu.mx', '2019-10-07', 3, 2, 1, '2019-10-07 11:21:44', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (64, 492, '35354', 'docentes@utl.edu.mx', '2019-10-07', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (66, 493, '1029', 'rcruz@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (67, 494, '1098', 'sarai.cantu@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (68, 495, '1113', 'maria.dominguez@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (69, 496, '1114', 'elvia.lerma@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (70, 497, '1065', 'eliseo.contreras@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (71, 498, '1075', 'jose.vega@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (72, 499, '1100', 'elizabeth.rodriguez@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (73, 500, '1049', 'margarita.garcia@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (74, 501, '1110', 'atenas.guerra@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (75, 502, '5002', 'allengabriel@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (76, 503, '1041', 'arturo.deluna@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (77, 504, '2015', 'darryl.english@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (78, 505, '1103', 'patricia.delagarza@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (79, 506, '1120', 'mario.zamarripa@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (80, 507, '1014', 'gcarrillo@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (81, 508, '1079', 'marcos.ramirez@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (82, 509, '1112', 'saul.leal@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (83, 510, '1054', 'antonio.delacruz@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (84, 511, '1056', 'delia.garcia@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (85, 512, '1111', 'blanca.camacho@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (86, 513, '1042', 'rolando.bernal@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (87, 514, '2104', 'juan.vera@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (88, 515, '1127', 'cecilia.martinez@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (89, 516, '1126', 'nestor.chavez@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (90, 517, '6039', 'giselle.guerra@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (91, 518, '1090', 'diana.luna@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (92, 519, '2021', 'ruben.doria@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (93, 520, '1020', 'sesalazar@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (94, 521, '1102', 'alejandro.reyna@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (95, 522, '6024', 'jorge.gutierrez@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (96, 523, '1094', 'genaro.estrada@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (97, 524, '1109', 'dario.navarro@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (98, 525, '3029', 'tabita.espinosa@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (99, 526, '1121', 'carlos.herrera@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (100, 527, '8973', 'jorge.delagarza@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (101, 528, '9999', 'lina.trevino@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (102, 529, '1134', 'elena.ramirez@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (103, 530, '7861', 'nayelli.illades@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (104, 531, '1141', 'willy.deleon@utl.edu.mx', '0000-00-00', 1, 1, 3, '2019-10-14 15:01:42', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (105, 532, '1555', 'yareli.vazquez@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (106, 533, '1520', 'uriel.villarreal@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (107, 534, '1258', 'daniela.sanchez@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (108, 535, '1528', 'lizbeth.cepeda@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);
INSERT INTO `trabajadores` VALUES (109, 536, '5555', 'jose.coronado@utl.edu.mx', '0000-00-00', 3, 2, 2, '2019-10-07 12:26:37', 1, 1, 1);

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NULL DEFAULT NULL,
  `activo` int(11) NULL DEFAULT NULL,
  `fecha_hora` datetime(0) NULL DEFAULT NULL,
  `usuario` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `password_sin_enc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cambiar_contra` int(11) NULL DEFAULT NULL,
  `id_usuario_alta` int(11) NULL DEFAULT NULL,
  `llenar_informacion` int(11) NOT NULL,
  `primer_acceso` int(11) NULL DEFAULT NULL,
  `usuario_red` int(11) NOT NULL,
  `fecha_hora_creacion_red` datetime(0) NOT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 528 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 2, 1, '2019-10-07 12:25:01', 'aaron.rizo@utl.edu.mx', '0f1cdb713feb95a02d1a48dea2d6e7e3', 'skynet_andres633156', 0, 1, 0, 0, 1, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (2, 5, 1, '2019-10-23 08:20:47', 'xochitl.rodriguez@utl.edu.mx', '231badb19b93e44f47da1bd64a8147f2', 'andres', 0, 1, 0, 0, 1, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (3, 6, 1, '2019-10-29 11:32:27', 'josue.villarreal@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 0, 1, 0, 0, 1, '2019-10-08 09:52:28');
INSERT INTO `usuarios` VALUES (4, 10, 1, '2019-10-07 11:13:58', '9736', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (5, 11, 1, '2019-10-07 11:13:58', '9742', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (6, 12, 1, '2019-10-07 11:13:58', '9745', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (7, 13, 1, '2019-10-07 11:13:58', '9746', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (8, 14, 1, '2019-10-07 11:13:58', '9749', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (9, 15, 1, '2019-10-07 11:13:58', '9751', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (10, 16, 1, '2019-10-07 11:13:58', '9581', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (11, 17, 1, '2019-10-07 11:13:58', '9582', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (12, 18, 1, '2019-10-07 11:13:58', '9583', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (13, 19, 1, '2019-10-07 11:13:58', '9586', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (14, 20, 1, '2019-10-07 11:13:58', '9608', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (15, 21, 1, '2019-10-07 11:13:58', '9587', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (16, 22, 1, '2019-10-07 11:13:58', '9590', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (17, 23, 1, '2019-10-07 11:13:58', '9592', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (18, 24, 1, '2019-10-07 11:13:58', '9596', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (19, 25, 1, '2019-10-07 11:13:58', '9611', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (20, 26, 1, '2019-10-07 11:13:58', '9616', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (21, 27, 1, '2019-10-07 11:13:58', '9618', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (22, 28, 1, '2019-10-07 11:13:58', '9623', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (23, 29, 1, '2019-10-07 11:13:58', '9624', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (24, 30, 1, '2019-10-07 11:13:58', '9627', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (25, 31, 1, '2019-10-07 11:13:58', '9628', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (26, 32, 1, '2019-10-07 11:13:58', '9630', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (27, 33, 1, '2019-10-07 11:13:58', '9631', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (28, 34, 1, '2019-10-07 11:13:58', '9632', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (29, 35, 1, '2019-10-07 11:13:58', '9598', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (30, 36, 1, '2019-10-07 11:13:58', '9599', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (31, 37, 1, '2019-10-07 11:13:58', '9600', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (32, 38, 1, '2019-10-07 11:13:58', '8921', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (33, 39, 1, '2019-10-07 11:13:58', '9602', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (34, 40, 1, '2019-10-07 11:13:58', '9603', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (35, 41, 1, '2019-10-07 11:13:58', '9633', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (36, 42, 1, '2019-10-07 11:13:58', '9604', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (37, 43, 1, '2019-10-07 11:13:58', '9635', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (38, 44, 1, '2019-10-07 11:13:58', '9585', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (39, 45, 1, '2019-10-07 11:13:58', '9637', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (40, 46, 1, '2019-10-07 11:13:58', '9638', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (41, 47, 1, '2019-10-07 11:13:58', '9639', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (42, 48, 1, '2019-10-07 11:13:58', '9642', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (43, 49, 1, '2019-10-07 11:13:58', '9644', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (44, 50, 1, '2019-10-07 11:13:58', '9647', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (45, 51, 1, '2019-10-07 11:13:58', '9651', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (46, 52, 1, '2019-10-07 11:13:58', '9756', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (47, 53, 1, '2019-10-07 11:13:58', '9759', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (48, 54, 1, '2019-10-07 11:13:58', '9760', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (49, 55, 1, '2019-10-07 11:13:58', '9764', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (50, 56, 1, '2019-10-07 11:13:58', '9765', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (51, 57, 1, '2019-10-07 11:13:58', '9768', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (52, 58, 1, '2019-10-07 11:13:58', '9769', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (53, 59, 1, '2019-10-07 11:13:58', '9773', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (54, 60, 1, '2019-10-07 11:13:58', '9779', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (55, 61, 1, '2019-10-07 11:13:58', '9709', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (56, 62, 1, '2019-10-07 11:13:58', '9683', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (57, 63, 1, '2019-10-07 11:13:58', '9684', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (58, 64, 1, '2019-10-07 11:13:58', '9685', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (59, 65, 1, '2019-10-07 11:13:58', '9686', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (60, 66, 1, '2019-10-07 11:13:58', '9688', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (61, 67, 1, '2019-10-07 11:13:58', '9710', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (62, 68, 1, '2019-10-07 11:13:58', '9689', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (63, 69, 1, '2019-10-07 11:13:58', '9519', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (64, 70, 1, '2019-10-07 11:13:58', '9695', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (65, 71, 1, '2019-10-07 11:13:58', '9696', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (66, 72, 1, '2019-10-07 11:13:58', '9699', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (67, 73, 1, '2019-10-07 11:13:58', '9700', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (68, 74, 1, '2019-10-07 11:13:58', '9702', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (69, 75, 1, '2019-10-07 11:13:58', '9703', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (70, 76, 1, '2019-10-07 11:13:58', '9706', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (71, 77, 1, '2019-10-07 11:13:58', '9707', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (72, 78, 1, '2019-10-07 11:13:58', '9718', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (73, 79, 1, '2019-10-07 11:13:58', '9720', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (74, 80, 1, '2019-10-07 11:13:58', '9722', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (75, 81, 1, '2019-10-07 11:13:58', '9725', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (76, 82, 1, '2019-10-07 11:13:58', '9727', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (77, 83, 1, '2019-10-07 11:13:58', '9658', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (78, 84, 1, '2019-10-07 11:13:58', '9659', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (79, 85, 1, '2019-10-07 11:13:58', '9660', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (80, 86, 1, '2019-10-07 11:13:58', '9661', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (81, 87, 1, '2019-10-07 11:13:58', '9662', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (82, 88, 1, '2019-10-07 11:13:58', '9666', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (83, 89, 1, '2019-10-07 11:13:58', '9098', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (84, 90, 1, '2019-10-07 11:13:58', '9670', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (85, 91, 1, '2019-10-07 11:13:58', '9672', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (86, 92, 1, '2019-10-07 11:13:58', '9674', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (87, 93, 1, '2019-10-07 11:13:58', '9676', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (88, 94, 1, '2019-10-07 11:13:58', '9677', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (89, 95, 1, '2019-10-07 11:13:58', '9679', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (90, 96, 1, '2019-10-07 11:13:58', '9109', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (91, 97, 1, '2019-10-07 11:13:58', '9711', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (92, 98, 1, '2019-10-07 11:13:58', '9073', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (93, 99, 1, '2019-10-07 11:13:58', '9681', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (94, 100, 1, '2019-10-07 11:13:58', '9712', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (95, 101, 1, '2019-10-07 11:13:58', '9716', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (96, 102, 1, '2019-10-07 11:13:58', '9717', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (97, 103, 1, '2019-10-07 11:13:58', '9719', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (98, 104, 1, '2019-10-07 11:13:58', '9724', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (99, 105, 1, '2019-10-07 11:13:58', '9729', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (100, 106, 1, '2019-10-07 11:13:58', '9550', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (101, 107, 1, '2019-10-07 11:13:58', '9551', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (102, 108, 1, '2019-10-07 11:13:58', '9556', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (103, 109, 1, '2019-10-07 11:13:58', '9557', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (104, 110, 1, '2019-10-07 11:13:58', '9558', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (105, 111, 1, '2019-10-07 11:13:58', '9559', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (106, 112, 1, '2019-10-07 11:13:58', '9515', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (107, 113, 1, '2019-10-07 11:13:58', '9563', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (108, 114, 1, '2019-10-07 11:13:58', '9516', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (109, 115, 1, '2019-10-07 11:13:58', '9572', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (110, 116, 1, '2019-10-07 11:13:58', '9518', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (111, 117, 1, '2019-10-07 11:13:58', '9520', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (112, 118, 1, '2019-10-07 11:13:58', '9523', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (113, 119, 1, '2019-10-07 11:13:58', '8846', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (114, 120, 1, '2019-10-07 11:13:58', '9574', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (115, 121, 1, '2019-10-07 11:13:58', '9575', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (116, 122, 1, '2019-10-07 11:13:58', '9771', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (117, 123, 1, '2019-10-07 11:13:58', '9528', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (118, 124, 1, '2019-10-07 11:13:58', '9529', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (119, 125, 1, '2019-10-07 11:13:58', '9530', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (120, 126, 1, '2019-10-07 11:13:58', '9533', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (121, 127, 1, '2019-10-07 11:13:58', '9535', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (122, 128, 1, '2019-10-07 11:13:58', '9536', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (123, 129, 1, '2019-10-07 11:13:58', '9537', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (124, 130, 1, '2019-10-07 11:13:58', '9538', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (125, 131, 1, '2019-10-07 11:13:58', '9540', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (126, 132, 1, '2019-10-07 11:13:58', '9542', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (127, 133, 1, '2019-10-07 11:13:58', '9547', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (128, 134, 1, '2019-10-07 11:13:58', '9094', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (129, 135, 1, '2019-10-07 11:13:58', '9020', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (130, 136, 1, '2019-10-07 11:13:58', '9135', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (131, 137, 1, '2019-10-07 11:13:58', '9101', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (132, 138, 1, '2019-10-07 11:13:58', '9063', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (133, 139, 1, '2019-10-07 11:13:58', '9103', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (134, 140, 1, '2019-10-07 11:13:58', '9104', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (135, 141, 1, '2019-10-07 11:13:58', '9034', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (136, 142, 1, '2019-10-07 11:13:58', '9036', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (137, 143, 1, '2019-10-07 11:13:58', '9074', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (138, 144, 1, '2019-10-07 11:13:58', '9113', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (139, 145, 1, '2019-10-07 11:13:58', '9041', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (140, 146, 1, '2019-10-07 11:13:58', '8879', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (141, 147, 1, '2019-10-07 11:13:58', '9044', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (142, 148, 1, '2019-10-07 11:13:58', '9115', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (143, 149, 1, '2019-10-07 11:13:58', '9116', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (144, 150, 1, '2019-10-07 11:13:58', '9118', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (145, 151, 1, '2019-10-07 11:13:58', '8518', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (146, 152, 1, '2019-10-07 11:13:58', '9047', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (147, 153, 1, '2019-10-07 11:13:58', '9132', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (148, 154, 1, '2019-10-07 11:13:58', '9049', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (149, 155, 1, '2019-10-07 11:13:58', '9051', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (150, 156, 1, '2019-10-07 11:13:58', '9127', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (151, 157, 1, '2019-10-07 11:13:58', '9091', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (152, 158, 1, '2019-10-07 11:13:58', '9092', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (153, 159, 1, '2019-10-07 11:13:58', '9055', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (154, 160, 1, '2019-10-07 11:13:58', '9093', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (155, 161, 1, '2019-10-07 11:13:58', '8578', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (156, 162, 1, '2019-10-07 11:13:58', '9021', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (157, 163, 1, '2019-10-07 11:13:58', '9022', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (158, 164, 1, '2019-10-07 11:13:58', '7875', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (159, 165, 1, '2019-10-07 11:13:58', '9060', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (160, 166, 1, '2019-10-07 11:13:58', '9024', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (161, 167, 1, '2019-10-07 11:13:58', '9027', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (162, 168, 1, '2019-10-07 11:13:58', '9263', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (163, 169, 1, '2019-10-07 11:13:58', '9106', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (164, 170, 1, '2019-10-07 11:13:58', '8562', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (165, 171, 1, '2019-10-07 11:13:58', '9111', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (166, 172, 1, '2019-10-07 11:13:58', '9039', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (167, 173, 1, '2019-10-07 11:13:58', '9040', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (168, 174, 1, '2019-10-07 11:13:58', '9117', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (169, 175, 1, '2019-10-07 11:13:58', '9077', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (170, 176, 1, '2019-10-07 11:13:58', '9078', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (171, 177, 1, '2019-10-07 11:13:58', '9120', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (172, 178, 1, '2019-10-07 11:13:58', '9123', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (173, 179, 1, '2019-10-07 11:13:58', '9050', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (174, 180, 1, '2019-10-07 11:13:58', '9054', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (175, 181, 1, '2019-10-07 11:13:58', '9085', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (176, 182, 1, '2019-10-07 11:13:58', '9087', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (177, 183, 1, '2019-10-07 11:13:58', '9159', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (178, 184, 1, '2019-10-07 11:13:58', '8477', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (179, 185, 1, '2019-10-07 11:13:58', '10827', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (180, 186, 1, '2019-10-07 11:13:58', '9163', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (181, 187, 1, '2019-10-07 11:13:58', '9164', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (182, 188, 1, '2019-10-07 11:13:58', '8481', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (183, 189, 1, '2019-10-07 11:13:58', '9169', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (184, 190, 1, '2019-10-07 11:13:58', '9173', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (185, 191, 1, '2019-10-07 11:13:58', '10828', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (186, 192, 1, '2019-10-07 11:13:58', '9177', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (187, 193, 1, '2019-10-07 11:13:58', '9178', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (188, 194, 1, '2019-10-07 11:13:58', '9179', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (189, 195, 1, '2019-10-07 11:13:58', '8864', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (190, 196, 1, '2019-10-07 11:13:58', '8814', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (191, 197, 1, '2019-10-07 11:13:58', '8865', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (192, 198, 1, '2019-10-07 11:13:58', '8868', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (193, 199, 1, '2019-10-07 11:13:58', '8816', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (194, 200, 1, '2019-10-07 11:13:58', '9498', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (195, 201, 1, '2019-10-07 11:13:58', '8825', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (196, 202, 1, '2019-10-07 11:13:58', '8827', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (197, 203, 1, '2019-10-07 11:13:58', '8847', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (198, 204, 1, '2019-10-07 11:13:58', '8892', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (199, 205, 1, '2019-10-07 11:13:58', '8848', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (200, 206, 1, '2019-10-07 11:13:58', '8830', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (201, 207, 1, '2019-10-07 11:13:58', '8683', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (202, 208, 1, '2019-10-07 11:13:58', '8891', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (203, 209, 1, '2019-10-07 11:13:58', '8853', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (204, 210, 1, '2019-10-07 11:13:58', '8893', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (205, 211, 1, '2019-10-07 11:13:58', '8856', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (206, 212, 1, '2019-10-07 11:13:58', '8859', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (207, 213, 1, '2019-10-07 11:13:58', '8869', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (208, 214, 1, '2019-10-07 11:13:58', '8842', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (209, 215, 1, '2019-10-07 11:13:58', '8818', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (210, 216, 1, '2019-10-07 11:13:58', '8819', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (211, 217, 1, '2019-10-07 11:13:58', '8820', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (212, 218, 1, '2019-10-07 11:13:58', '8821', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (213, 219, 1, '2019-10-07 11:13:58', '8668', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (214, 220, 1, '2019-10-07 11:13:58', '8822', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (215, 221, 1, '2019-10-07 11:13:58', '8826', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (216, 222, 1, '2019-10-07 11:13:58', '8878', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (217, 223, 1, '2019-10-07 11:13:58', '8829', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (218, 224, 1, '2019-10-07 11:13:58', '8831', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (219, 225, 1, '2019-10-07 11:13:58', '8858', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (220, 226, 1, '2019-10-07 11:13:58', '8897', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (221, 227, 1, '2019-10-07 11:13:58', '8887', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (222, 228, 1, '2019-10-07 11:13:58', '8862', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (223, 229, 1, '2019-10-07 11:13:58', '8888', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (224, 230, 1, '2019-10-07 11:13:58', '9136', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (225, 231, 1, '2019-10-07 11:13:58', '8730', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (226, 232, 1, '2019-10-07 11:13:58', '9139', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (227, 233, 1, '2019-10-07 11:13:58', '9141', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (228, 234, 1, '2019-10-07 11:13:58', '9142', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (229, 235, 1, '2019-10-07 11:13:58', '9143', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (230, 236, 1, '2019-10-07 11:13:58', '9145', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (231, 237, 1, '2019-10-07 11:13:58', '9146', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (232, 238, 1, '2019-10-07 11:13:58', '9151', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (233, 239, 1, '2019-10-07 11:13:58', '9153', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (234, 240, 1, '2019-10-07 11:13:58', '9155', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (235, 241, 1, '2019-10-07 11:13:58', '8957', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (236, 242, 1, '2019-10-07 11:13:58', '8984', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (237, 243, 1, '2019-10-07 11:13:58', '8927', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (238, 244, 1, '2019-10-07 11:13:58', '8900', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (239, 245, 1, '2019-10-07 11:13:58', '8928', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (240, 246, 1, '2019-10-07 11:13:58', '8989', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (241, 247, 1, '2019-10-07 11:13:58', '9011', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (242, 248, 1, '2019-10-07 11:13:58', '8992', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (243, 249, 1, '2019-10-07 11:13:58', '9506', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (244, 250, 1, '2019-10-07 11:13:58', '8939', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (245, 251, 1, '2019-10-07 11:13:58', '8615', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (246, 252, 1, '2019-10-07 11:13:58', '8940', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (247, 253, 1, '2019-10-07 11:13:58', '8941', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (248, 254, 1, '2019-10-07 11:13:58', '8996', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (249, 255, 1, '2019-10-07 11:13:58', '8969', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (250, 256, 1, '2019-10-07 11:13:58', '9500', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (251, 257, 1, '2019-10-07 11:13:58', '9501', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (252, 258, 1, '2019-10-07 11:13:58', '618', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (253, 259, 1, '2019-10-07 11:13:58', '8915', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (254, 260, 1, '2019-10-07 11:13:58', '8916', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (255, 261, 1, '2019-10-07 11:13:58', '8947', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (256, 262, 1, '2019-10-07 11:13:58', '8949', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (257, 263, 1, '2019-10-07 11:13:58', '8919', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (258, 264, 1, '2019-10-07 11:13:58', '8972', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (259, 265, 1, '2019-10-07 11:13:58', '8973', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (260, 266, 1, '2019-10-07 11:13:58', '9005', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (261, 267, 1, '2019-10-07 11:13:58', '8975', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (262, 268, 1, '2019-10-07 11:13:58', '8979', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (263, 269, 1, '2019-10-07 11:13:58', '8925', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (264, 270, 1, '2019-10-07 11:13:58', '9255', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (265, 271, 1, '2019-10-07 11:13:58', '8902', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (266, 272, 1, '2019-10-07 11:13:58', '8986', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (267, 273, 1, '2019-10-07 11:13:58', '293', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (268, 274, 1, '2019-10-07 11:13:58', '8960', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (269, 275, 1, '2019-10-07 11:13:58', '8905', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (270, 276, 1, '2019-10-07 11:13:58', '8934', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (271, 277, 1, '2019-10-07 11:13:58', '5677', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (272, 278, 1, '2019-10-07 11:13:58', '9250', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (273, 279, 1, '2019-10-07 11:13:58', '8937', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (274, 280, 1, '2019-10-07 11:13:58', '329', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (275, 281, 1, '2019-10-07 11:13:58', '8965', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (276, 282, 1, '2019-10-07 11:13:58', '8994', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (277, 283, 1, '2019-10-07 11:13:58', '8910', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (278, 284, 1, '2019-10-07 11:13:58', '8968', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (279, 285, 1, '2019-10-07 11:13:58', '8999', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (280, 286, 1, '2019-10-07 11:13:58', '705', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (281, 287, 1, '2019-10-07 11:13:58', '8970', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (282, 288, 1, '2019-10-07 11:13:58', '9003', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (283, 289, 1, '2019-10-07 11:13:58', '8971', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (284, 290, 1, '2019-10-07 11:13:58', '8918', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (285, 291, 1, '2019-10-07 11:13:58', '8920', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (286, 292, 1, '2019-10-07 11:13:58', '8952', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (287, 293, 1, '2019-10-07 11:13:58', '9015', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (288, 294, 1, '2019-10-07 11:13:58', '719', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (289, 295, 1, '2019-10-07 11:13:58', '8922', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (290, 296, 1, '2019-10-07 11:13:58', '9006', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (291, 297, 1, '2019-10-07 11:13:58', '8980', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (292, 298, 1, '2019-10-07 11:13:58', '8981', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (293, 299, 1, '2019-10-07 11:13:58', '8926', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (294, 300, 1, '2019-10-07 11:13:58', '8604', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (295, 301, 1, '2019-10-07 11:13:58', '8605', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (296, 302, 1, '2019-10-07 11:13:58', '8607', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (297, 303, 1, '2019-10-07 11:13:58', '8608', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (298, 304, 1, '2019-10-07 11:13:58', '8610', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (299, 305, 1, '2019-10-07 11:13:58', '8637', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (300, 306, 1, '2019-10-07 11:13:58', '8612', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (301, 307, 1, '2019-10-07 11:13:58', '8613', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (302, 308, 1, '2019-10-07 11:13:58', '8653', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (303, 309, 1, '2019-10-07 11:13:58', '8638', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (304, 310, 1, '2019-10-07 11:13:58', '8614', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (305, 311, 1, '2019-10-07 11:13:58', '8643', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (306, 312, 1, '2019-10-07 11:13:58', '8644', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (307, 313, 1, '2019-10-07 11:13:58', '8616', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (308, 314, 1, '2019-10-07 11:13:58', '8649', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (309, 315, 1, '2019-10-07 11:13:58', '8621', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (310, 316, 1, '2019-10-07 11:13:58', '8622', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (311, 317, 1, '2019-10-07 11:13:58', '5609', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (312, 318, 1, '2019-10-07 11:13:58', '8651', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (313, 319, 1, '2019-10-07 11:13:58', '8655', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (314, 320, 1, '2019-10-07 11:13:58', '8629', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (315, 321, 1, '2019-10-07 11:13:58', '8801', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (316, 322, 1, '2019-10-07 11:13:58', '8580', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (317, 323, 1, '2019-10-07 11:13:58', '8581', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (318, 324, 1, '2019-10-07 11:13:58', '8582', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (319, 325, 1, '2019-10-07 11:13:58', '8583', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (320, 326, 1, '2019-10-07 11:13:58', '8585', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (321, 327, 1, '2019-10-07 11:13:58', '8586', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (322, 328, 1, '2019-10-07 11:13:58', '8640', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (323, 329, 1, '2019-10-07 11:13:58', '8642', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (324, 330, 1, '2019-10-07 11:13:58', '5996', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (325, 331, 1, '2019-10-07 11:13:58', '8588', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (326, 332, 1, '2019-10-07 11:13:58', '8591', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (327, 333, 1, '2019-10-07 11:13:58', '8646', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (328, 334, 1, '2019-10-07 11:13:58', '8632', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (329, 335, 1, '2019-10-07 11:13:58', '8594', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (330, 336, 1, '2019-10-07 11:13:58', '8595', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (331, 337, 1, '2019-10-07 11:13:58', '8650', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (332, 338, 1, '2019-10-07 11:13:58', '8602', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (333, 339, 1, '2019-10-07 11:13:58', '8600', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (334, 340, 1, '2019-10-07 11:13:58', '8603', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (335, 341, 1, '2019-10-07 11:13:58', '1', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (336, 342, 1, '2019-10-07 11:13:58', '8732', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (337, 343, 1, '2019-10-07 11:13:58', '8777', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (338, 344, 1, '2019-10-07 11:13:58', '8736', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (339, 345, 1, '2019-10-07 11:13:58', '8738', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (340, 346, 1, '2019-10-07 11:13:58', '8741', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (341, 347, 1, '2019-10-07 11:13:58', '6108', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (342, 348, 1, '2019-10-07 11:13:58', '8144', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (343, 349, 1, '2019-10-07 11:13:58', '8745', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (344, 350, 1, '2019-10-07 11:13:58', '8746', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (345, 351, 1, '2019-10-07 11:13:58', '8719', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (346, 352, 1, '2019-10-07 11:13:58', '8750', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (347, 353, 1, '2019-10-07 11:13:58', '8792', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (348, 354, 1, '2019-10-07 11:13:58', '8762', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (349, 355, 1, '2019-10-07 11:13:58', '8763', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (350, 356, 1, '2019-10-07 11:13:58', '8764', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (351, 357, 1, '2019-10-07 11:13:58', '8767', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (352, 358, 1, '2019-10-07 11:13:58', '8769', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (353, 359, 1, '2019-10-07 11:13:58', '8729', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (354, 360, 1, '2019-10-07 11:13:58', '8806', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (355, 361, 1, '2019-10-07 11:13:58', '8773', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (356, 362, 1, '2019-10-07 11:13:58', '8174', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (357, 363, 1, '2019-10-07 11:13:58', '8476', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (358, 364, 1, '2019-10-07 11:13:58', '8479', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (359, 365, 1, '2019-10-07 11:13:58', '8484', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (360, 366, 1, '2019-10-07 11:13:58', '8485', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (361, 367, 1, '2019-10-07 11:13:58', '8486', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (362, 368, 1, '2019-10-07 11:13:58', '8490', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (363, 369, 1, '2019-10-07 11:13:58', '8495', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (364, 370, 1, '2019-10-07 11:13:58', '8496', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (365, 371, 1, '2019-10-07 11:13:58', '8665', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (366, 372, 1, '2019-10-07 11:13:58', '8694', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (367, 373, 1, '2019-10-07 11:13:58', '8667', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (368, 374, 1, '2019-10-07 11:13:58', '8695', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (369, 375, 1, '2019-10-07 11:13:58', '8669', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (370, 376, 1, '2019-10-07 11:13:58', '8699', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (371, 377, 1, '2019-10-07 11:13:58', '8702', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (372, 378, 1, '2019-10-07 11:13:58', '2590', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (373, 379, 1, '2019-10-07 11:13:58', '8678', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (374, 380, 1, '2019-10-07 11:13:58', '8708', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (375, 381, 1, '2019-10-07 11:13:58', '8689', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (376, 382, 1, '2019-10-07 11:13:58', '8663', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (377, 383, 1, '2019-10-07 11:13:58', '8691', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (378, 384, 1, '2019-10-07 11:13:58', '8692', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (379, 385, 1, '2019-10-07 11:13:58', '8693', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (380, 386, 1, '2019-10-07 11:13:58', '8696', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (381, 387, 1, '2019-10-07 11:13:58', '9514', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (382, 388, 1, '2019-10-07 11:13:58', '8675', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (383, 389, 1, '2019-10-07 11:13:58', '8676', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (384, 390, 1, '2019-10-07 11:13:58', '8704', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (385, 391, 1, '2019-10-07 11:13:58', '8680', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (386, 392, 1, '2019-10-07 11:13:58', '8681', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (387, 393, 1, '2019-10-07 11:13:58', '8711', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (388, 394, 1, '2019-10-07 11:13:58', '8713', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (389, 398, 1, '2019-10-07 11:13:58', '8551', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (390, 399, 1, '2019-10-07 11:13:58', '8555', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (391, 400, 1, '2019-10-07 11:13:58', '8502', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (392, 401, 1, '2019-10-07 11:13:58', '8531', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (393, 402, 1, '2019-10-07 11:13:58', '8560', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (394, 403, 1, '2019-10-07 11:13:58', '8533', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (395, 404, 1, '2019-10-07 11:13:58', '5704', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (396, 405, 1, '2019-10-07 11:13:58', '8512', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (397, 406, 1, '2019-10-07 11:13:58', '8497', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (398, 407, 1, '2019-10-07 11:13:58', '8525', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (399, 408, 1, '2019-10-07 11:13:58', '8526', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (400, 409, 1, '2019-10-07 11:13:58', '8554', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (401, 410, 1, '2019-10-07 11:13:58', '8528', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (402, 411, 1, '2019-10-07 11:13:58', '8530', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (403, 412, 1, '2019-10-07 11:13:58', '8504', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (404, 413, 1, '2019-10-07 11:13:58', '8505', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (405, 414, 1, '2019-10-07 11:13:58', '8507', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (406, 415, 1, '2019-10-07 11:13:58', '8536', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (407, 416, 1, '2019-10-07 11:13:58', '8508', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (408, 417, 1, '2019-10-07 11:13:58', '8540', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (409, 418, 1, '2019-10-07 11:13:58', '8509', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (410, 419, 1, '2019-10-07 11:13:58', '8510', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (411, 420, 1, '2019-10-07 11:13:58', '8511', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (412, 421, 1, '2019-10-07 11:13:58', '8568', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (413, 422, 1, '2019-10-07 11:13:58', '8517', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (414, 423, 1, '2019-10-07 11:13:58', '8545', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (415, 424, 1, '2019-10-07 11:13:58', '8569', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (416, 425, 1, '2019-10-07 11:13:58', '8547', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (417, 426, 1, '2019-10-07 11:13:58', '8521', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (418, 427, 1, '2019-10-07 11:13:58', '8522', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (419, 428, 1, '2019-10-07 11:13:58', '8549', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (420, 429, 1, '2019-10-07 11:13:58', '8550', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (421, 430, 1, '2019-10-07 11:13:58', '8576', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (422, 431, 1, '2019-10-07 11:13:58', '8577', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (423, 432, 1, '2019-10-07 11:13:58', 'aaron.villanueva@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (424, 433, 1, '2019-10-07 11:13:58', 'adriana.alameda@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (425, 434, 1, '2019-10-07 11:13:58', 'alejandra.davila@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (426, 435, 1, '2019-10-07 11:13:58', 'alejandro.fonseca@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (427, 436, 1, '2019-10-07 11:13:58', 'alex.lopez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 1, '2019-10-08 09:57:38');
INSERT INTO `usuarios` VALUES (428, 437, 1, '2019-10-07 11:13:58', 'alfredo.deluna@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (429, 438, 1, '2019-10-07 11:13:58', 'alfredo.gonzalez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (430, 439, 1, '2019-10-07 11:13:58', 'allengabriel@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (431, 440, 1, '2019-10-07 11:13:58', 'angel.silva@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (432, 441, 1, '2019-10-07 11:13:58', 'antonio.garcia@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (433, 442, 1, '2019-10-07 11:13:58', 'casimiro.platas@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (434, 443, 1, '2019-10-07 11:13:58', 'cinthia.perez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (435, 444, 1, '2019-10-07 11:13:58', 'cynthia.tamez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (436, 445, 1, '2019-10-07 11:13:58', 'daniel.almaraz@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (437, 446, 1, '2019-10-07 11:13:58', 'eddy.lopez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (438, 447, 1, '2019-10-07 11:13:58', 'eliud.ramirez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (439, 448, 1, '2019-10-07 11:13:58', 'elvira.izaguirre@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (440, 449, 1, '2019-10-07 11:13:58', 'estefania.murillo@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (441, 450, 1, '2019-10-07 11:13:58', 'felipe.karr@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (442, 451, 1, '2019-10-07 11:13:58', 'francisco.gonzalez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (443, 452, 1, '2019-10-07 11:13:58', 'francisco.montemayor@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (444, 453, 1, '2019-10-07 11:13:58', 'guianeya.parra@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (445, 454, 1, '2019-10-07 11:13:58', 'ileana.torres@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (446, 455, 1, '2019-10-07 11:13:58', 'irma.martinez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (447, 456, 1, '2019-10-07 11:13:58', 'jessica.gomez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (448, 457, 1, '2019-10-07 11:13:58', 'dario.navarro@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (449, 458, 1, '2019-10-07 11:13:58', 'gerardo.aguirre@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (450, 459, 1, '2019-10-07 11:13:58', 'jesus.trevino@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (451, 460, 1, '2019-10-07 11:13:58', 'alberto.gomez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (452, 461, 1, '2019-10-07 11:13:58', 'jorge.elizondo@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (453, 462, 1, '2019-10-07 11:13:58', 'armando.trevino@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (454, 463, 1, '2019-10-07 11:13:58', 'higinio.navarro@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (455, 464, 1, '2019-10-07 11:13:58', 'josue.villarreal@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (456, 465, 1, '2019-10-07 11:13:58', 'juan.rivera@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (457, 466, 1, '2019-10-07 11:13:58', 'viridiana.montano@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (458, 467, 1, '2019-10-07 11:13:58', 'kenia.carreon@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (459, 468, 1, '2019-10-07 11:13:58', 'lflores@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (460, 469, 1, '2019-10-07 11:13:58', 'lessly.platas@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (461, 470, 1, '2019-10-07 11:13:58', 'cristina.zamora@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (462, 471, 1, '2019-10-07 11:13:58', 'lupita.galvan@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (463, 472, 1, '2019-10-07 11:13:58', 'mariano.garza@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (464, 473, 1, '2019-10-07 11:13:58', 'mariela.olan@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (465, 474, 1, '2019-10-07 11:13:58', 'mayrelli.torres@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (466, 475, 1, '2019-10-07 11:13:58', 'melissa.gonzalez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (467, 476, 1, '2019-10-07 11:13:58', 'paperez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (468, 477, 1, '2019-10-07 11:13:58', 'rafael.celada@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (469, 478, 1, '2019-10-07 11:13:58', 'ricardo.quintanar@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (470, 479, 1, '2019-10-07 11:13:58', 'ronaldo.medellin@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (471, 480, 1, '2019-10-07 11:13:58', 'sergio.estrada@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (472, 481, 1, '2019-10-07 11:13:58', 'silvia.diaz@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (473, 482, 1, '2019-10-07 11:13:58', 'thalia.barrera@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 1, '2019-10-18 13:20:04');
INSERT INTO `usuarios` VALUES (474, 483, 1, '2019-10-07 11:13:58', 'victorhugo.perez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (475, 484, 1, '2019-10-07 12:02:45', 'hmejia@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (476, 485, 1, '2019-10-07 11:16:32', 'stienda@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (477, 486, 1, '2019-10-07 11:17:33', 'iris.jimenez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (478, 487, 1, '2019-10-07 11:18:34', 'adriana.duenas@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (479, 488, 1, '2019-10-07 11:19:12', 'nadia.gonzalez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (481, 490, 1, '2019-10-07 11:21:05', 'elsa.villarreal@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (482, 491, 1, '2019-10-07 11:21:44', 'ruben.bernal@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (483, 492, 1, '2019-10-07 12:26:37', 'docentes@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 0, 1, 0, 0, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (484, 493, 1, '2019-10-07 12:26:37', 'rcruz@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (485, 494, 1, '2019-10-07 12:26:37', 'sarai.cantu@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 1, '2019-10-23 10:25:21');
INSERT INTO `usuarios` VALUES (486, 495, 1, '2019-10-07 12:26:37', 'maria.dominguez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (487, 496, 1, '2019-10-07 12:26:37', 'elvia.lerma@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (488, 497, 1, '2019-10-07 12:26:37', 'eliseo.contreras@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (489, 498, 1, '2019-10-07 12:26:37', 'jose.vega@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (490, 499, 1, '2019-10-07 12:26:37', 'elizabeth.rodriguez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (491, 500, 1, '2019-10-07 12:26:37', 'margarita.garcia@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (492, 501, 1, '2019-10-07 12:26:37', 'atenas.guerra@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 1, '2019-10-30 15:35:23');
INSERT INTO `usuarios` VALUES (493, 502, 1, '2019-10-07 12:26:37', 'allengabriel@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (494, 503, 1, '2019-10-07 12:26:37', 'arturo.deluna@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (495, 504, 1, '2019-10-07 12:26:37', 'darryl.english@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (496, 505, 1, '2019-10-07 12:26:37', 'patricia.delagarza@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (497, 506, 1, '2019-10-07 12:26:37', 'mario.zamarripa@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (498, 507, 1, '2019-10-07 12:26:37', 'gcarrillo@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (499, 508, 1, '2019-10-07 12:26:37', 'marcos.ramirez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (500, 509, 1, '2019-10-07 12:26:37', 'saul.leal@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (501, 510, 1, '2019-10-07 12:26:37', 'antonio.delacruz@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (502, 511, 1, '2019-10-07 12:26:37', 'delia.garcia@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (503, 512, 1, '2019-10-07 12:26:37', 'blanca.camacho@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (504, 513, 1, '2019-10-07 12:26:37', 'rolando.bernal@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (505, 514, 1, '2019-10-07 12:26:37', 'juan.vera@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (506, 515, 1, '2019-10-07 12:26:37', 'cecilia.martinez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (507, 516, 1, '2019-10-07 12:26:37', 'nestor.chavez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (508, 517, 1, '2019-10-07 12:26:37', 'giselle.guerra@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (509, 518, 1, '2019-10-07 12:26:37', 'diana.luna@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (510, 519, 1, '2019-10-07 12:26:37', 'ruben.doria@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (511, 520, 1, '2019-10-07 12:26:37', 'sesalazar@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (512, 521, 1, '2019-10-07 12:26:37', 'alejandro.reyna@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (513, 522, 1, '2019-10-07 12:26:37', 'jorge.gutierrez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (514, 523, 1, '2019-10-07 12:26:37', 'genaro.estrada@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (515, 524, 1, '2019-10-07 12:26:37', 'dario.navarro@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (516, 525, 1, '2019-10-07 12:26:37', 'tabita.espinosa@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (517, 526, 1, '2019-10-07 12:26:37', 'carlos.herrera@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (518, 527, 1, '2019-10-07 12:26:37', 'jorge.delagarza@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (519, 528, 1, '2019-10-07 12:26:37', 'lina.trevino@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (520, 529, 1, '2019-10-07 12:26:37', 'elena.ramirez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (521, 530, 1, '2019-10-07 12:26:37', 'nayelli.illades@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (522, 531, 1, '2019-10-14 15:01:42', 'willy.deleon@utl.edu.mx', '25f9e794323b453885f5181f1b624d0b', '123456789', 0, 1, 0, 0, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (523, 532, 1, '2019-10-07 12:26:37', 'yareli.vazquez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (524, 533, 1, '2019-10-07 12:26:37', 'uriel.villarreal@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (525, 534, 1, '2019-10-07 12:26:37', 'daniela.sanchez@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (526, 535, 1, '2019-10-07 12:26:37', 'lizbeth.cepeda@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 0, '0000-00-00 00:00:00');
INSERT INTO `usuarios` VALUES (527, 536, 1, '2019-10-07 12:26:37', 'jose.coronado@utl.edu.mx', 'e10adc3949ba59abbe56e057f20f883e', '123456', 1, 1, 1, 1, 1, '2019-10-08 10:00:59');

SET FOREIGN_KEY_CHECKS = 1;
