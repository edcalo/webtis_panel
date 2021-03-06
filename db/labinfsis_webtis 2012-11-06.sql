-- SQL Manager Lite for PostgreSQL 5.1.1.14
-- ---------------------------------------
-- Host      : localhost
-- Database  : labinfsis
-- Version   : PostgreSQL 9.2.1, compiled by Visual C++ build 1600, 64-bit



CREATE SCHEMA faqs AUTHORIZATION postgres;
CREATE SCHEMA webtis AUTHORIZATION postgres;
CREATE SCHEMA legal AUTHORIZATION postgres;
CREATE SCHEMA sistema AUTHORIZATION postgres;
SET check_function_bodies = false;
--
-- Structure for table asignaciones (OID = 16396) : 
--
SET search_path = public, pg_catalog;
CREATE TABLE public.asignaciones (
    equipo_id integer NOT NULL,
    id serial NOT NULL,
    laboratorio_id integer NOT NULL,
    fecha_asignacion timestamp(0) without time zone DEFAULT now() NOT NULL,
    fecha_retiro date
) WITHOUT OIDS;
--
-- Structure for table cambios (OID = 16403) : 
--
CREATE TABLE public.cambios (
    componente_id integer NOT NULL,
    id serial NOT NULL,
    fecha date NOT NULL,
    descripcion text NOT NULL
) WITHOUT OIDS;
--
-- Structure for table caracteristicas (OID = 16412) : 
--
CREATE TABLE public.caracteristicas (
    id serial NOT NULL,
    nombre_caracteristica varchar(100) NOT NULL,
    descripcion_caracteristica varchar(255)
) WITHOUT OIDS;
--
-- Structure for table componentes (OID = 16418) : 
--
CREATE TABLE public.componentes (
    id serial NOT NULL,
    modelo_id integer NOT NULL,
    fabricante_id integer NOT NULL,
    equipo_id integer,
    pieza_id integer,
    estado_id integer NOT NULL,
    numero_de_serie varchar(50) NOT NULL
) WITHOUT OIDS;
--
-- Structure for table cuentas (OID = 16424) : 
--
CREATE TABLE public.cuentas (
    id serial NOT NULL,
    rol_id integer NOT NULL,
    persona_id integer NOT NULL,
    usuario integer NOT NULL,
    contrasenia char(40) NOT NULL,
    fecha_registro date DEFAULT now() NOT NULL,
    fecha_caducidad date
) WITHOUT OIDS;
--
-- Structure for table cursos (OID = 16431) : 
--
CREATE TABLE public.cursos (
    id serial NOT NULL,
    tipo_id integer NOT NULL,
    nombre_curso varchar(100) NOT NULL,
    instructor varchar(250) NOT NULL,
    descripcion_curso varchar(255)
) WITHOUT OIDS;
--
-- Structure for table equipos (OID = 16440) : 
--
CREATE TABLE public.equipos (
    id serial NOT NULL,
    estado_id integer NOT NULL,
    nia varchar(50) DEFAULT ''::character varying,
    codigo char(32) NOT NULL,
    nombre_equipo varchar(10) NOT NULL,
    descripcion_equipo varchar(255),
    categoria_id integer
) WITHOUT OIDS;
--
-- Structure for table estados (OID = 16447) : 
--
CREATE TABLE public.estados (
    id serial NOT NULL,
    nombre_estado varchar(250) NOT NULL,
    descripcion_estado varchar(255)
) WITHOUT OIDS;
--
-- Structure for table fabricantes (OID = 16456) : 
--
CREATE TABLE public.fabricantes (
    id serial NOT NULL,
    nombre_fabricante varchar(100) NOT NULL,
    descripcion_fabricante varchar(255)
) WITHOUT OIDS;
--
-- Structure for table laboratorios (OID = 16462) : 
--
CREATE TABLE public.laboratorios (
    id serial NOT NULL,
    nombre_laboratorio varchar(50) NOT NULL,
    numero_de_equipos integer NOT NULL,
    descripcion_laboratorio varchar(255)
) WITHOUT OIDS;
--
-- Structure for table modelos (OID = 16468) : 
--
CREATE TABLE public.modelos (
    id serial NOT NULL,
    nombre_modelo varchar(100) NOT NULL,
    descripcion_marca varchar(100)
) WITHOUT OIDS;
--
-- Structure for table personas (OID = 16474) : 
--
CREATE TABLE public.personas (
    id serial NOT NULL,
    ci char(10) NOT NULL,
    nombres varchar(50) NOT NULL,
    apellido_paterno varchar(50) NOT NULL,
    apellido_materno varchar(50),
    email varchar(100)
) WITHOUT OIDS;
--
-- Structure for table piezas (OID = 16480) : 
--
CREATE TABLE public.piezas (
    id serial NOT NULL,
    nombre_pieza varchar(50) NOT NULL,
    pieza_interna boolean NOT NULL,
    descripcion_pieza varchar(255) NOT NULL
) WITHOUT OIDS;
--
-- Structure for table propiedades (OID = 16486) : 
--
CREATE TABLE public.propiedades (
    id serial NOT NULL,
    componente_id integer NOT NULL,
    caracteristica_id integer NOT NULL,
    valor varchar(100) NOT NULL
) WITHOUT OIDS;
--
-- Structure for table roles (OID = 16492) : 
--
CREATE TABLE public.roles (
    id serial NOT NULL,
    nombre_rol varchar(50) NOT NULL,
    descripcion_rol varchar(255)
) WITHOUT OIDS;
--
-- Structure for table tipos (OID = 16498) : 
--
CREATE TABLE public.tipos (
    id serial NOT NULL,
    nombre_tipo varchar(100) NOT NULL,
    descripcion_tipo varchar(255)
) WITHOUT OIDS;
--
-- Structure for table movimientos (OID = 16504) : 
--
CREATE TABLE public.movimientos (
    id serial NOT NULL,
    equipo_id integer NOT NULL,
    asignacion_id integer NOT NULL,
    fecha_movimiento timestamp(0) without time zone DEFAULT now() NOT NULL,
    observaciones_del_movimiento varchar(255)
) WITHOUT OIDS;
--
-- Structure for table registros (OID = 16511) : 
--
CREATE TABLE public.registros (
    id serial NOT NULL,
    cuenta_id integer NOT NULL,
    persona_id integer NOT NULL,
    equipo_id integer NOT NULL,
    curso_id integer,
    fecha_registro_inicio timestamp(0) without time zone DEFAULT now() NOT NULL,
    fecha_registro_fin timestamp(0) without time zone,
    observaciones_registro varchar(255) DEFAULT ''::character varying NOT NULL
) WITHOUT OIDS;
--
-- Structure for table reviciones (OID = 16519) : 
--
CREATE TABLE public.reviciones (
    id serial NOT NULL,
    equipo_id integer NOT NULL,
    componente_id integer NOT NULL,
    cuenta_id integer NOT NULL,
    marca boolean DEFAULT false NOT NULL,
    fecha_revision date NOT NULL,
    observaciones varchar(255) NOT NULL
) WITHOUT OIDS;
--
-- Structure for table categorias (OID = 16526) : 
--
CREATE TABLE public.categorias (
    id serial NOT NULL,
    nombre_categoria varchar(50) NOT NULL,
    descripcion_categoria varchar(255),
    imagen_categoria varchar(255),
    categoria_id integer
) WITHOUT OIDS;
--
-- Structure for table faqs (OID = 16727) : 
--
SET search_path = faqs, pg_catalog;
CREATE TABLE faqs.faqs (
    id serial NOT NULL,
    respuesta text,
    pregunta varchar(255),
    modulo integer,
    destacado boolean
) WITHOUT OIDS;
--
-- Structure for table empresas (OID = 16737) : 
--
SET search_path = webtis, pg_catalog;
CREATE TABLE webtis.empresas (
    id serial NOT NULL,
    nombre_empresa varchar(100) NOT NULL,
    sigla varchar(20) NOT NULL,
    logo varchar(100),
    email_contacto varchar(100),
    fecha_registro timestamp(0) without time zone DEFAULT now() NOT NULL
) WITHOUT OIDS;
--
-- Structure for table contrato (OID = 16754) : 
--
SET search_path = legal, pg_catalog;
CREATE TABLE legal.contrato (
    id serial NOT NULL,
    text_contrato text NOT NULL,
    tipo_contrato_id integer NOT NULL,
    estado_id integer NOT NULL,
    fecha_creacion timestamp without time zone NOT NULL,
    version varchar(10) NOT NULL,
    eliminado boolean NOT NULL
) WITHOUT OIDS;
--
-- Structure for table tipo_contrato (OID = 16765) : 
--
CREATE TABLE legal.tipo_contrato (
    id serial NOT NULL,
    nombre_tipo_contrato varchar(100) NOT NULL,
    descripcion_tipo_contrato text
) WITHOUT OIDS;
--
-- Structure for table estados (OID = 16782) : 
--
SET search_path = sistema, pg_catalog;
CREATE TABLE sistema.estados (
    id serial NOT NULL,
    nombre_estado varchar(100) NOT NULL,
    codigo varchar(20) NOT NULL,
    descripcion_estado text NOT NULL,
    modulo_id integer NOT NULL
) WITHOUT OIDS;
SET search_path = public, pg_catalog;
--
-- Data for table public.asignaciones (OID = 16396) (LIMIT 0,32)
--
INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (2, 4, 1, '2012-01-01 00:00:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (3, 5, 1, '2012-05-04 18:26:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (4, 17, 1, '2012-05-08 14:04:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (5, 18, 1, '2012-05-08 14:04:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (6, 19, 1, '2012-05-08 14:04:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (7, 20, 1, '2012-05-08 14:58:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (8, 21, 1, '2012-05-08 14:58:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (9, 22, 1, '2012-05-08 14:58:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (10, 23, 1, '2012-05-08 14:58:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (11, 24, 1, '2012-05-08 14:58:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (12, 25, 1, '2012-05-08 14:58:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (13, 26, 1, '2012-05-08 14:58:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (14, 27, 1, '2012-05-08 14:59:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (15, 28, 1, '2012-05-08 14:59:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (16, 29, 1, '2012-05-08 14:59:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (17, 30, 1, '2012-05-08 14:59:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (18, 31, 1, '2012-05-08 14:59:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (19, 32, 1, '2012-05-08 14:59:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (20, 33, 1, '2012-05-08 14:59:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (21, 34, 1, '2012-05-08 14:59:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (22, 35, 1, '2012-05-08 14:59:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (23, 36, 1, '2012-05-08 15:00:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (24, 37, 1, '2012-05-08 15:00:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (27, 38, 1, '2012-05-08 15:00:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (25, 39, 1, '2012-05-08 15:00:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (26, 40, 1, '2012-05-08 15:00:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (28, 41, 1, '2012-05-08 15:00:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (29, 16, 1, '2012-05-08 00:43:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (30, 42, 1, '2012-05-08 15:01:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (31, 43, 1, '2012-05-08 15:01:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (32, 44, 2, '2012-05-08 15:01:00', NULL);

INSERT INTO asignaciones (equipo_id, id, laboratorio_id, fecha_asignacion, fecha_retiro)
VALUES (1, 45, 1, '2012-07-15 17:48:00', '2012-07-15');

--
-- Data for table public.cuentas (OID = 16424) (LIMIT 0,1)
--
INSERT INTO cuentas (id, rol_id, persona_id, usuario, contrasenia, fecha_registro, fecha_caducidad)
VALUES (3, 1, 1, 200401694, '123456222', '2012-04-14', NULL);

--
-- Data for table public.cursos (OID = 16431) (LIMIT 0,1)
--
INSERT INTO cursos (id, tipo_id, nombre_curso, instructor, descripcion_curso)
VALUES (1, 1, 'Practica', 'el alumno', 'cuando un estudiante usa el laboratorio para hacer una practica de alguna de sus materias');

--
-- Data for table public.equipos (OID = 16440) (LIMIT 0,33)
--
INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (4, 1, '', '', 'A03', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (6, 1, '', '', 'A05', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (7, 1, '', '', 'A06', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (8, 1, '', '', 'A07', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (12, 1, '', '', 'A11', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (14, 1, '', '', 'A13', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (15, 1, '', '', 'A14', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (17, 1, '', '', 'A16', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (18, 1, '', '', 'A17', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (20, 1, '', '', 'A19', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (21, 1, '', '', 'A20', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (23, 1, '', '', 'A22', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (26, 1, '', '', 'A25', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (27, 1, '', '', 'A26', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (29, 1, '', '', 'A28', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (30, 1, '', '', 'A29', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (31, 1, '', '', 'A30', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (1, 2, '44771', '', 'andromeda1', 'equipo para los aux', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (16, 2, '', '', 'A15', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (10, 2, '', '', 'A09', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (22, 2, '', '', 'A21', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (32, 2, '', '', 'B01', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (2, 1, '', '', 'A01', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (25, 1, '', '', 'A24', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (11, 1, '', '', 'A10', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (9, 1, '', '', 'A08', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (28, 2, '', '', 'A27', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (19, 2, '', '', 'A18', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (13, 1, '', '', 'A12', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (5, 1, '', '', 'A04', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (3, 1, '01-MC-001113-44195', 'dd544', 'A02', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (41, 2, 'fdsf', 'fds', 'ddd', '', 4);

INSERT INTO equipos (id, estado_id, nia, codigo, nombre_equipo, descripcion_equipo, categoria_id)
VALUES (24, 1, '', '', 'A23', '', 4);

--
-- Data for table public.estados (OID = 16447) (LIMIT 0,4)
--
INSERT INTO estados (id, nombre_estado, descripcion_estado)
VALUES (3, 'En uso', '');

INSERT INTO estados (id, nombre_estado, descripcion_estado)
VALUES (4, 'Libre', '');

INSERT INTO estados (id, nombre_estado, descripcion_estado)
VALUES (2, 'En Mantenimiento', 'Equipos que tienen una falla y fueron enviados al laboratorio de manteniemiento para su mantenimiento correctivo<br>');

INSERT INTO estados (id, nombre_estado, descripcion_estado)
VALUES (1, 'Activo', 'Equipo que se encuentra en el laboratorio asignado y puede ser utilizado <br>');

--
-- Data for table public.fabricantes (OID = 16456) (LIMIT 0,1)
--
INSERT INTO fabricantes (id, nombre_fabricante, descripcion_fabricante)
VALUES (1, 'Hitachi', 'Fabricante de discos duros');

--
-- Data for table public.laboratorios (OID = 16462) (LIMIT 0,5)
--
INSERT INTO laboratorios (id, nombre_laboratorio, numero_de_equipos, descripcion_laboratorio)
VALUES (3, 'Laboratorio de computo 3', 30, 'Laboratorio de Computo 3');

INSERT INTO laboratorios (id, nombre_laboratorio, numero_de_equipos, descripcion_laboratorio)
VALUES (1, 'Laboratorio de computo 1', 30, 'Laboratorio de Computo 1');

INSERT INTO laboratorios (id, nombre_laboratorio, numero_de_equipos, descripcion_laboratorio)
VALUES (2, 'Laboratorio de computo 2', 30, 'Laboratorio de Computo 2');

INSERT INTO laboratorios (id, nombre_laboratorio, numero_de_equipos, descripcion_laboratorio)
VALUES (5, 'Laboratorio de Redes', 24, 'Laboratorio de Redes 1');

INSERT INTO laboratorios (id, nombre_laboratorio, numero_de_equipos, descripcion_laboratorio)
VALUES (4, 'Laboratorio de Computo 4', 30, 'Laboratorio de Computo 4');

--
-- Data for table public.personas (OID = 16474) (LIMIT 0,1)
--
INSERT INTO personas (id, ci, nombres, apellido_paterno, apellido_materno, email)
VALUES (1, '6449288', 'Jorge Rubens', 'Lipa', 'Challapa', 'jorge.lipa@gmail.com');

--
-- Data for table public.roles (OID = 16492) (LIMIT 0,3)
--
INSERT INTO roles (id, nombre_rol, descripcion_rol)
VALUES (1, 'Administrador', 'Administrador de todo el sistema, se recomienda que un usuario con conocimientos avanzados tenga este tipo de rol.');

INSERT INTO roles (id, nombre_rol, descripcion_rol)
VALUES (2, 'Auxiliar Titular', 'Auxiliar del laboratorio que ejerce como administrador');

INSERT INTO roles (id, nombre_rol, descripcion_rol)
VALUES (3, 'Auxiliar Adhonorem', 'Estudiante regular que ofrece su ayuda a los laboratorios ');

--
-- Data for table public.tipos (OID = 16498) (LIMIT 0,2)
--
INSERT INTO tipos (id, nombre_tipo, descripcion_tipo)
VALUES (1, 'Curricular', 'Es un curso perteneciente a una de las materias curriculares de las carreras de informatica sistemas');

INSERT INTO tipos (id, nombre_tipo, descripcion_tipo)
VALUES (0, 'Empty', 'Emty');

--
-- Data for table public.registros (OID = 16511) (LIMIT 0,4)
--
INSERT INTO registros (id, cuenta_id, persona_id, equipo_id, curso_id, fecha_registro_inicio, fecha_registro_fin, observaciones_registro)
VALUES (1, 3, 1, 1, 1, '2012-04-14 16:42:00', '2012-04-14 16:42:00', '');

INSERT INTO registros (id, cuenta_id, persona_id, equipo_id, curso_id, fecha_registro_inicio, fecha_registro_fin, observaciones_registro)
VALUES (2, 3, 1, 1, 1, '2012-04-14 10:19:24', NULL, '');

INSERT INTO registros (id, cuenta_id, persona_id, equipo_id, curso_id, fecha_registro_inicio, fecha_registro_fin, observaciones_registro)
VALUES (3, 3, 1, 1, 1, '2012-04-14 10:19:34', NULL, '');

INSERT INTO registros (id, cuenta_id, persona_id, equipo_id, curso_id, fecha_registro_inicio, fecha_registro_fin, observaciones_registro)
VALUES (4, 3, 1, 1, 1, '2012-04-14 10:20:07', NULL, '');

--
-- Data for table public.categorias (OID = 16526) (LIMIT 0,4)
--
INSERT INTO categorias (id, nombre_categoria, descripcion_categoria, imagen_categoria, categoria_id)
VALUES (2, 'Computacion', 'Equipos computacionales', '', 1);

INSERT INTO categorias (id, nombre_categoria, descripcion_categoria, imagen_categoria, categoria_id)
VALUES (1, 'General', 'Categoria Inicial', '', NULL);

INSERT INTO categorias (id, nombre_categoria, descripcion_categoria, imagen_categoria, categoria_id)
VALUES (3, 'Monitor', 'Monitores sueltos que no estan asociados a una computadora', '', 2);

INSERT INTO categorias (id, nombre_categoria, descripcion_categoria, imagen_categoria, categoria_id)
VALUES (4, 'Computadora', 'Computadora con sus piesas ', NULL, 1);

SET search_path = faqs, pg_catalog;
--
-- Data for table faqs.faqs (OID = 16727) (LIMIT 0,1)
--
INSERT INTO faqs (id, respuesta, pregunta, modulo, destacado)
VALUES (1, 'WebTis es un entorno donde se simula un entorno de practica paar estudiantes de las Carreras de Informatica Sistemas para que hagan sus talleres de Taller de Ingieneria de sistemas(TIS), Taller de base de datos(TBD) .', 'Que es WebTIS', 1, true);

SET search_path = webtis, pg_catalog;
--
-- Data for table webtis.empresas (OID = 16737) (LIMIT 0,1)
--
INSERT INTO empresas (id, nombre_empresa, sigla, logo, email_contacto, fecha_registro)
VALUES (1, 'empresa 1', 'empres', 'imagen1', 'elvis.caceres.is@gmail.com', '2012-11-05 02:39:00');

SET search_path = legal, pg_catalog;
SET search_path = sistema, pg_catalog;
--
-- Definition for index equipo_asignado (OID = 16533) : 
--
SET search_path = public, pg_catalog;
CREATE INDEX equipo_asignado ON asignaciones USING btree (equipo_id);
--
-- Definition for index viejo_componente (OID = 16534) : 
--
CREATE INDEX viejo_componente ON cambios USING btree (componente_id);
--
-- Definition for index equipo_fk (OID = 16535) : 
--
CREATE INDEX equipo_fk ON componentes USING btree (equipo_id);
--
-- Definition for index piezas_fk (OID = 16536) : 
--
CREATE INDEX piezas_fk ON componentes USING btree (pieza_id);
--
-- Definition for index estado_fk (OID = 16537) : 
--
CREATE INDEX estado_fk ON componentes USING btree (estado_id);
--
-- Definition for index modelo_fk (OID = 16538) : 
--
CREATE INDEX modelo_fk ON componentes USING btree (modelo_id);
--
-- Definition for index fabrica_fk (OID = 16539) : 
--
CREATE INDEX fabrica_fk ON componentes USING btree (fabricante_id);
--
-- Definition for index persona_fk (OID = 16540) : 
--
CREATE INDEX persona_fk ON cuentas USING btree (persona_id);
--
-- Definition for index rol_fk (OID = 16541) : 
--
CREATE INDEX rol_fk ON cuentas USING btree (rol_id);
--
-- Definition for index tipo_fk (OID = 16542) : 
--
CREATE INDEX tipo_fk ON cursos USING btree (tipo_id);
--
-- Definition for index esta_en_estado_fk (OID = 16543) : 
--
CREATE INDEX esta_en_estado_fk ON equipos USING btree (estado_id);
--
-- Definition for index fabricantes_pk (OID = 16544) : 
--
CREATE UNIQUE INDEX fabricantes_pk ON fabricantes USING btree (id);
--
-- Definition for index modelo_pk (OID = 16545) : 
--
CREATE UNIQUE INDEX modelo_pk ON modelos USING btree (id);
--
-- Definition for index titne_propiedad_fk (OID = 16546) : 
--
CREATE INDEX titne_propiedad_fk ON propiedades USING btree (componente_id);
--
-- Definition for index de_una_propiedad_fk (OID = 16547) : 
--
CREATE INDEX de_una_propiedad_fk ON propiedades USING btree (caracteristica_id);
--
-- Definition for index es_registrado_fk (OID = 16548) : 
--
CREATE INDEX es_registrado_fk ON registros USING btree (persona_id);
--
-- Definition for index es_registrado_por_fk (OID = 16549) : 
--
CREATE INDEX es_registrado_por_fk ON registros USING btree (cuenta_id);
--
-- Definition for index es_usado_fk (OID = 16550) : 
--
CREATE INDEX es_usado_fk ON registros USING btree (equipo_id);
--
-- Definition for index para_un_curso_fk (OID = 16551) : 
--
CREATE INDEX para_un_curso_fk ON registros USING btree (curso_id);
--
-- Definition for index de_un_equipo_fk (OID = 16552) : 
--
CREATE INDEX de_un_equipo_fk ON reviciones USING btree (equipo_id);
--
-- Definition for index lo_revizo_fk (OID = 16553) : 
--
CREATE INDEX lo_revizo_fk ON reviciones USING btree (cuenta_id);
--
-- Definition for index sus_componentes_fk (OID = 16554) : 
--
CREATE INDEX sus_componentes_fk ON reviciones USING btree (componente_id);
--
-- Definition for index laboratorio_asignado (OID = 16555) : 
--
CREATE INDEX laboratorio_asignado ON asignaciones USING btree (laboratorio_id);
--
-- Definition for index pk_asignaciones (OID = 16556) : 
--
ALTER TABLE ONLY asignaciones
    ADD CONSTRAINT pk_asignaciones
    PRIMARY KEY (id);
--
-- Definition for index pk_cambios (OID = 16558) : 
--
ALTER TABLE ONLY cambios
    ADD CONSTRAINT pk_cambios
    PRIMARY KEY (id);
--
-- Definition for index pk_caracteristicas (OID = 16560) : 
--
ALTER TABLE ONLY caracteristicas
    ADD CONSTRAINT pk_caracteristicas
    PRIMARY KEY (id);
--
-- Definition for index pk_componentes (OID = 16562) : 
--
ALTER TABLE ONLY componentes
    ADD CONSTRAINT pk_componentes
    PRIMARY KEY (id);
--
-- Definition for index pk_cuentas (OID = 16564) : 
--
ALTER TABLE ONLY cuentas
    ADD CONSTRAINT pk_cuentas
    PRIMARY KEY (id);
--
-- Definition for index pk_cursos (OID = 16566) : 
--
ALTER TABLE ONLY cursos
    ADD CONSTRAINT pk_cursos
    PRIMARY KEY (id);
--
-- Definition for index pk_equipos (OID = 16568) : 
--
ALTER TABLE ONLY equipos
    ADD CONSTRAINT pk_equipos
    PRIMARY KEY (id);
--
-- Definition for index pk_estados (OID = 16570) : 
--
ALTER TABLE ONLY estados
    ADD CONSTRAINT pk_estados
    PRIMARY KEY (id);
--
-- Definition for index pk_fabricantes (OID = 16572) : 
--
ALTER TABLE ONLY fabricantes
    ADD CONSTRAINT pk_fabricantes
    PRIMARY KEY (id);
--
-- Definition for index pk_laboratorios (OID = 16574) : 
--
ALTER TABLE ONLY laboratorios
    ADD CONSTRAINT pk_laboratorios
    PRIMARY KEY (id);
--
-- Definition for index pk_modelo (OID = 16576) : 
--
ALTER TABLE ONLY modelos
    ADD CONSTRAINT pk_modelo
    PRIMARY KEY (id);
--
-- Definition for index pk_personas (OID = 16578) : 
--
ALTER TABLE ONLY personas
    ADD CONSTRAINT pk_personas
    PRIMARY KEY (id);
--
-- Definition for index pk_piezas (OID = 16580) : 
--
ALTER TABLE ONLY piezas
    ADD CONSTRAINT pk_piezas
    PRIMARY KEY (id);
--
-- Definition for index pk_propiedades (OID = 16582) : 
--
ALTER TABLE ONLY propiedades
    ADD CONSTRAINT pk_propiedades
    PRIMARY KEY (id);
--
-- Definition for index pk_roles (OID = 16584) : 
--
ALTER TABLE ONLY roles
    ADD CONSTRAINT pk_roles
    PRIMARY KEY (id);
--
-- Definition for index pk_tipos (OID = 16586) : 
--
ALTER TABLE ONLY tipos
    ADD CONSTRAINT pk_tipos
    PRIMARY KEY (id);
--
-- Definition for index fk_cambios_registro__componen (OID = 16588) : 
--
ALTER TABLE ONLY cambios
    ADD CONSTRAINT fk_cambios_registro__componen
    FOREIGN KEY (componente_id) REFERENCES componentes(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_componen_es_de_un__modelo (OID = 16593) : 
--
ALTER TABLE ONLY componentes
    ADD CONSTRAINT fk_componen_es_de_un__modelo
    FOREIGN KEY (modelo_id) REFERENCES modelos(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_componen_fabrica_fabrican (OID = 16598) : 
--
ALTER TABLE ONLY componentes
    ADD CONSTRAINT fk_componen_fabrica_fabrican
    FOREIGN KEY (fabricante_id) REFERENCES fabricantes(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_componen_tiene_com_equipos (OID = 16603) : 
--
ALTER TABLE ONLY componentes
    ADD CONSTRAINT fk_componen_tiene_com_equipos
    FOREIGN KEY (equipo_id) REFERENCES equipos(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_componen_tiene_est_estados (OID = 16608) : 
--
ALTER TABLE ONLY componentes
    ADD CONSTRAINT fk_componen_tiene_est_estados
    FOREIGN KEY (estado_id) REFERENCES estados(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_componen_tiene_pie_piezas (OID = 16613) : 
--
ALTER TABLE ONLY componentes
    ADD CONSTRAINT fk_componen_tiene_pie_piezas
    FOREIGN KEY (pieza_id) REFERENCES piezas(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_cuentas_acceso_ad_roles (OID = 16618) : 
--
ALTER TABLE ONLY cuentas
    ADD CONSTRAINT fk_cuentas_acceso_ad_roles
    FOREIGN KEY (rol_id) REFERENCES roles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_cuentas_acceso_pe_personas (OID = 16623) : 
--
ALTER TABLE ONLY cuentas
    ADD CONSTRAINT fk_cuentas_acceso_pe_personas
    FOREIGN KEY (persona_id) REFERENCES personas(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_cursos_el_curso__tipos (OID = 16628) : 
--
ALTER TABLE ONLY cursos
    ADD CONSTRAINT fk_cursos_el_curso__tipos
    FOREIGN KEY (tipo_id) REFERENCES tipos(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_propieda_de_una_pr_caracter (OID = 16633) : 
--
ALTER TABLE ONLY propiedades
    ADD CONSTRAINT fk_propieda_de_una_pr_caracter
    FOREIGN KEY (caracteristica_id) REFERENCES caracteristicas(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_propieda_titne_pro_componen (OID = 16638) : 
--
ALTER TABLE ONLY propiedades
    ADD CONSTRAINT fk_propieda_titne_pro_componen
    FOREIGN KEY (componente_id) REFERENCES componentes(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index pk_movimientos (OID = 16643) : 
--
ALTER TABLE ONLY movimientos
    ADD CONSTRAINT pk_movimientos
    PRIMARY KEY (id);
--
-- Definition for index asignacion_fk (OID = 16645) : 
--
ALTER TABLE ONLY movimientos
    ADD CONSTRAINT asignacion_fk
    FOREIGN KEY (asignacion_id) REFERENCES asignaciones(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index equipos_fk (OID = 16650) : 
--
ALTER TABLE ONLY movimientos
    ADD CONSTRAINT equipos_fk
    FOREIGN KEY (equipo_id) REFERENCES equipos(id);
--
-- Definition for index pk_registros (OID = 16655) : 
--
ALTER TABLE ONLY registros
    ADD CONSTRAINT pk_registros
    PRIMARY KEY (id);
--
-- Definition for index fk_registro_es_regist_cuentas (OID = 16657) : 
--
ALTER TABLE ONLY registros
    ADD CONSTRAINT fk_registro_es_regist_cuentas
    FOREIGN KEY (cuenta_id) REFERENCES cuentas(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_registro_es_regist_personas (OID = 16662) : 
--
ALTER TABLE ONLY registros
    ADD CONSTRAINT fk_registro_es_regist_personas
    FOREIGN KEY (persona_id) REFERENCES personas(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_registro_es_usado_equipos (OID = 16667) : 
--
ALTER TABLE ONLY registros
    ADD CONSTRAINT fk_registro_es_usado_equipos
    FOREIGN KEY (equipo_id) REFERENCES equipos(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_registro_para_un_c_cursos (OID = 16672) : 
--
ALTER TABLE ONLY registros
    ADD CONSTRAINT fk_registro_para_un_c_cursos
    FOREIGN KEY (curso_id) REFERENCES cursos(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index pk_reviciones (OID = 16677) : 
--
ALTER TABLE ONLY reviciones
    ADD CONSTRAINT pk_reviciones
    PRIMARY KEY (id);
--
-- Definition for index fk_revicion_de_un_equ_equipos (OID = 16679) : 
--
ALTER TABLE ONLY reviciones
    ADD CONSTRAINT fk_revicion_de_un_equ_equipos
    FOREIGN KEY (equipo_id) REFERENCES equipos(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_revicion_lo_revizo_cuentas (OID = 16684) : 
--
ALTER TABLE ONLY reviciones
    ADD CONSTRAINT fk_revicion_lo_revizo_cuentas
    FOREIGN KEY (cuenta_id) REFERENCES cuentas(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_revicion_sus_compo_componen (OID = 16689) : 
--
ALTER TABLE ONLY reviciones
    ADD CONSTRAINT fk_revicion_sus_compo_componen
    FOREIGN KEY (componente_id) REFERENCES componentes(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_laboratorio (OID = 16694) : 
--
ALTER TABLE ONLY asignaciones
    ADD CONSTRAINT fk_laboratorio
    FOREIGN KEY (laboratorio_id) REFERENCES laboratorios(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_equipo (OID = 16699) : 
--
ALTER TABLE ONLY asignaciones
    ADD CONSTRAINT fk_equipo
    FOREIGN KEY (equipo_id) REFERENCES equipos(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index fk_estados (OID = 16704) : 
--
ALTER TABLE ONLY equipos
    ADD CONSTRAINT fk_estados
    FOREIGN KEY (estado_id) REFERENCES estados(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index categoria_pkey (OID = 16709) : 
--
ALTER TABLE ONLY categorias
    ADD CONSTRAINT categoria_pkey
    PRIMARY KEY (id);
--
-- Definition for index categoria_nombre_categoria_key (OID = 16711) : 
--
ALTER TABLE ONLY categorias
    ADD CONSTRAINT categoria_nombre_categoria_key
    UNIQUE (nombre_categoria);
--
-- Definition for index fk_supcategorias (OID = 16713) : 
--
ALTER TABLE ONLY categorias
    ADD CONSTRAINT fk_supcategorias
    FOREIGN KEY (categoria_id) REFERENCES categorias(id);
--
-- Definition for index fk_categorias (OID = 16718) : 
--
ALTER TABLE ONLY equipos
    ADD CONSTRAINT fk_categorias
    FOREIGN KEY (categoria_id) REFERENCES categorias(id);
--
-- Definition for index empresas_pkey (OID = 16741) : 
--
SET search_path = webtis, pg_catalog;
ALTER TABLE ONLY empresas
    ADD CONSTRAINT empresas_pkey
    PRIMARY KEY (id);
--
-- Definition for index empresas_nombre_empresa_key (OID = 16743) : 
--
ALTER TABLE ONLY empresas
    ADD CONSTRAINT empresas_nombre_empresa_key
    UNIQUE (nombre_empresa);
--
-- Definition for index contrato_pkey (OID = 16761) : 
--
SET search_path = legal, pg_catalog;
ALTER TABLE ONLY contrato
    ADD CONSTRAINT contrato_pkey
    PRIMARY KEY (id);
--
-- Definition for index tipo_contrato_pkey (OID = 16772) : 
--
ALTER TABLE ONLY tipo_contrato
    ADD CONSTRAINT tipo_contrato_pkey
    PRIMARY KEY (id);
--
-- Definition for index tipo_contrato_fk (OID = 16774) : 
--
ALTER TABLE ONLY contrato
    ADD CONSTRAINT tipo_contrato_fk
    FOREIGN KEY (tipo_contrato_id) REFERENCES tipo_contrato(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index estados_pkey (OID = 16789) : 
--
SET search_path = sistema, pg_catalog;
ALTER TABLE ONLY estados
    ADD CONSTRAINT estados_pkey
    PRIMARY KEY (id);
--
-- Definition for index estados_nombre_estado_key (OID = 16791) : 
--
ALTER TABLE ONLY estados
    ADD CONSTRAINT estados_nombre_estado_key
    UNIQUE (nombre_estado);
--
-- Definition for index estado_contrato_fk (OID = 16793) : 
--
SET search_path = legal, pg_catalog;
ALTER TABLE ONLY contrato
    ADD CONSTRAINT estado_contrato_fk
    FOREIGN KEY (estado_id) REFERENCES sistema.estados(id);
--
-- Data for sequence public.asignaciones_id_seq (OID = 16394)
--
SET search_path = public, pg_catalog;
SELECT pg_catalog.setval('asignaciones_id_seq', 45, true);
--
-- Data for sequence public.cambios_id_seq (OID = 16401)
--
SELECT pg_catalog.setval('cambios_id_seq', 1, false);
--
-- Data for sequence public.caracteristicas_id_seq (OID = 16410)
--
SELECT pg_catalog.setval('caracteristicas_id_seq', 1, false);
--
-- Data for sequence public.componentes_id_seq (OID = 16416)
--
SELECT pg_catalog.setval('componentes_id_seq', 1, false);
--
-- Data for sequence public.cuentas_id_seq (OID = 16422)
--
SELECT pg_catalog.setval('cuentas_id_seq', 3, true);
--
-- Data for sequence public.cursos_id_seq (OID = 16429)
--
SELECT pg_catalog.setval('cursos_id_seq', 1, true);
--
-- Data for sequence public.equipos_id_seq (OID = 16438)
--
SELECT pg_catalog.setval('equipos_id_seq', 41, true);
--
-- Data for sequence public.estados_id_seq (OID = 16445)
--
SELECT pg_catalog.setval('estados_id_seq', 5, true);
--
-- Data for sequence public.fabricantes_id_seq (OID = 16454)
--
SELECT pg_catalog.setval('fabricantes_id_seq', 36, true);
--
-- Data for sequence public.laboratorios_id_seq (OID = 16460)
--
SELECT pg_catalog.setval('laboratorios_id_seq', 6, true);
--
-- Data for sequence public.modelos_id_seq (OID = 16466)
--
SELECT pg_catalog.setval('modelos_id_seq', 1, false);
--
-- Data for sequence public.personas_id_seq (OID = 16472)
--
SELECT pg_catalog.setval('personas_id_seq', 1, true);
--
-- Data for sequence public.piezas_id_seq (OID = 16478)
--
SELECT pg_catalog.setval('piezas_id_seq', 1, false);
--
-- Data for sequence public.propiedades_id_seq (OID = 16484)
--
SELECT pg_catalog.setval('propiedades_id_seq', 1, false);
--
-- Data for sequence public.roles_id_seq (OID = 16490)
--
SELECT pg_catalog.setval('roles_id_seq', 3, true);
--
-- Data for sequence public.tipos_id_seq (OID = 16496)
--
SELECT pg_catalog.setval('tipos_id_seq', 2, true);
--
-- Data for sequence public.movimientos_id_seq (OID = 16502)
--
SELECT pg_catalog.setval('movimientos_id_seq', 1, false);
--
-- Data for sequence public.registros_id_seq (OID = 16509)
--
SELECT pg_catalog.setval('registros_id_seq', 4, true);
--
-- Data for sequence public.reviciones_id_seq (OID = 16517)
--
SELECT pg_catalog.setval('reviciones_id_seq', 1, false);
--
-- Data for sequence public.categorias_id_seq (OID = 16524)
--
SELECT pg_catalog.setval('categorias_id_seq', 5, true);
--
-- Data for sequence faqs.faqs_id_seq (OID = 16725)
--
SET search_path = faqs, pg_catalog;
SELECT pg_catalog.setval('faqs_id_seq', 1, true);
--
-- Data for sequence webtis.empresas_id_seq (OID = 16735)
--
SET search_path = webtis, pg_catalog;
SELECT pg_catalog.setval('empresas_id_seq', 1, true);
--
-- Data for sequence legal.contrato_id_seq (OID = 16752)
--
SET search_path = legal, pg_catalog;
SELECT pg_catalog.setval('contrato_id_seq', 1, false);
--
-- Data for sequence legal.tipo_contrato_id_seq (OID = 16763)
--
SELECT pg_catalog.setval('tipo_contrato_id_seq', 1, false);
--
-- Data for sequence sistema.estados_id_seq (OID = 16780)
--
SET search_path = sistema, pg_catalog;
SELECT pg_catalog.setval('estados_id_seq', 1, false);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
