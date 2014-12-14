--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO jhonazsh;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO jhonazsh;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO jhonazsh;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO jhonazsh;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO jhonazsh;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO jhonazsh;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO jhonazsh;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO jhonazsh;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO jhonazsh;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO jhonazsh;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO jhonazsh;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO jhonazsh;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: awards_award; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE awards_award (
    id integer NOT NULL,
    titulo character varying(200) NOT NULL,
    imagen character varying(100) NOT NULL
);


ALTER TABLE public.awards_award OWNER TO jhonazsh;

--
-- Name: awards_award_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE awards_award_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.awards_award_id_seq OWNER TO jhonazsh;

--
-- Name: awards_award_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE awards_award_id_seq OWNED BY awards_award.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO jhonazsh;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO jhonazsh;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO jhonazsh;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO jhonazsh;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO jhonazsh;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO jhonazsh;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO jhonazsh;

--
-- Name: home_textoproyectos; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE home_textoproyectos (
    id integer NOT NULL,
    contenido text NOT NULL
);


ALTER TABLE public.home_textoproyectos OWNER TO jhonazsh;

--
-- Name: home_textoproyectos_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE home_textoproyectos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_textoproyectos_id_seq OWNER TO jhonazsh;

--
-- Name: home_textoproyectos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE home_textoproyectos_id_seq OWNED BY home_textoproyectos.id;


--
-- Name: home_textoservicios; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE home_textoservicios (
    id integer NOT NULL,
    contenido text NOT NULL
);


ALTER TABLE public.home_textoservicios OWNER TO jhonazsh;

--
-- Name: home_textoservicios_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE home_textoservicios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_textoservicios_id_seq OWNER TO jhonazsh;

--
-- Name: home_textoservicios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE home_textoservicios_id_seq OWNED BY home_textoservicios.id;


--
-- Name: licenses_entidad; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE licenses_entidad (
    id integer NOT NULL,
    nombre_entidad character varying(100) NOT NULL,
    imagen character varying(100) NOT NULL
);


ALTER TABLE public.licenses_entidad OWNER TO jhonazsh;

--
-- Name: licenses_entidad_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE licenses_entidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.licenses_entidad_id_seq OWNER TO jhonazsh;

--
-- Name: licenses_entidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE licenses_entidad_id_seq OWNED BY licenses_entidad.id;


--
-- Name: licenses_entidad_licencias; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE licenses_entidad_licencias (
    id integer NOT NULL,
    entidad_id integer NOT NULL,
    licencia_id integer NOT NULL
);


ALTER TABLE public.licenses_entidad_licencias OWNER TO jhonazsh;

--
-- Name: licenses_entidad_licencias_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE licenses_entidad_licencias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.licenses_entidad_licencias_id_seq OWNER TO jhonazsh;

--
-- Name: licenses_entidad_licencias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE licenses_entidad_licencias_id_seq OWNED BY licenses_entidad_licencias.id;


--
-- Name: licenses_licencia; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE licenses_licencia (
    id integer NOT NULL,
    numero character varying(20) NOT NULL,
    titulo character varying(200) NOT NULL
);


ALTER TABLE public.licenses_licencia OWNER TO jhonazsh;

--
-- Name: licenses_licencia_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE licenses_licencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.licenses_licencia_id_seq OWNER TO jhonazsh;

--
-- Name: licenses_licencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE licenses_licencia_id_seq OWNED BY licenses_licencia.id;


--
-- Name: projects_proyecto; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE projects_proyecto (
    id integer NOT NULL,
    nombre_proyecto character varying(45) NOT NULL,
    contenido_proyecto text NOT NULL,
    imagen character varying(100) NOT NULL,
    sector_id integer NOT NULL
);


ALTER TABLE public.projects_proyecto OWNER TO jhonazsh;

--
-- Name: projects_proyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE projects_proyecto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_proyecto_id_seq OWNER TO jhonazsh;

--
-- Name: projects_proyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE projects_proyecto_id_seq OWNED BY projects_proyecto.id;


--
-- Name: sectors_sector; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE sectors_sector (
    id integer NOT NULL,
    nombre_sector character varying(100) NOT NULL,
    slug character varying(250) NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.sectors_sector OWNER TO jhonazsh;

--
-- Name: sectors_sector_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE sectors_sector_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sectors_sector_id_seq OWNER TO jhonazsh;

--
-- Name: sectors_sector_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE sectors_sector_id_seq OWNED BY sectors_sector.id;


--
-- Name: services_servicio; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE services_servicio (
    id integer NOT NULL,
    nombre_servicio character varying(100) NOT NULL
);


ALTER TABLE public.services_servicio OWNER TO jhonazsh;

--
-- Name: services_servicio_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE services_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_servicio_id_seq OWNER TO jhonazsh;

--
-- Name: services_servicio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE services_servicio_id_seq OWNED BY services_servicio.id;


--
-- Name: team_miembro; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE team_miembro (
    id integer NOT NULL,
    nombre character varying(45) NOT NULL,
    cargo character varying(45) NOT NULL,
    bio text NOT NULL,
    imagen character varying(100) NOT NULL
);


ALTER TABLE public.team_miembro OWNER TO jhonazsh;

--
-- Name: team_miembro_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE team_miembro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_miembro_id_seq OWNER TO jhonazsh;

--
-- Name: team_miembro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE team_miembro_id_seq OWNED BY team_miembro.id;


--
-- Name: team_miembro_redes_sociales; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE team_miembro_redes_sociales (
    id integer NOT NULL,
    miembro_id integer NOT NULL,
    redsocial_id integer NOT NULL
);


ALTER TABLE public.team_miembro_redes_sociales OWNER TO jhonazsh;

--
-- Name: team_miembro_redes_sociales_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE team_miembro_redes_sociales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_miembro_redes_sociales_id_seq OWNER TO jhonazsh;

--
-- Name: team_miembro_redes_sociales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE team_miembro_redes_sociales_id_seq OWNED BY team_miembro_redes_sociales.id;


--
-- Name: team_redsocial; Type: TABLE; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE TABLE team_redsocial (
    id integer NOT NULL,
    red character varying(100) NOT NULL
);


ALTER TABLE public.team_redsocial OWNER TO jhonazsh;

--
-- Name: team_redsocial_id_seq; Type: SEQUENCE; Schema: public; Owner: jhonazsh
--

CREATE SEQUENCE team_redsocial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_redsocial_id_seq OWNER TO jhonazsh;

--
-- Name: team_redsocial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jhonazsh
--

ALTER SEQUENCE team_redsocial_id_seq OWNED BY team_redsocial.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY awards_award ALTER COLUMN id SET DEFAULT nextval('awards_award_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY home_textoproyectos ALTER COLUMN id SET DEFAULT nextval('home_textoproyectos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY home_textoservicios ALTER COLUMN id SET DEFAULT nextval('home_textoservicios_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY licenses_entidad ALTER COLUMN id SET DEFAULT nextval('licenses_entidad_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY licenses_entidad_licencias ALTER COLUMN id SET DEFAULT nextval('licenses_entidad_licencias_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY licenses_licencia ALTER COLUMN id SET DEFAULT nextval('licenses_licencia_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY projects_proyecto ALTER COLUMN id SET DEFAULT nextval('projects_proyecto_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY sectors_sector ALTER COLUMN id SET DEFAULT nextval('sectors_sector_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY services_servicio ALTER COLUMN id SET DEFAULT nextval('services_servicio_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY team_miembro ALTER COLUMN id SET DEFAULT nextval('team_miembro_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY team_miembro_redes_sociales ALTER COLUMN id SET DEFAULT nextval('team_miembro_redes_sociales_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY team_redsocial ALTER COLUMN id SET DEFAULT nextval('team_redsocial_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add texto servicios	7	add_textoservicios
20	Can change texto servicios	7	change_textoservicios
21	Can delete texto servicios	7	delete_textoservicios
22	Can add texto proyectos	8	add_textoproyectos
23	Can change texto proyectos	8	change_textoproyectos
24	Can delete texto proyectos	8	delete_textoproyectos
25	Can add proyecto	9	add_proyecto
26	Can change proyecto	9	change_proyecto
27	Can delete proyecto	9	delete_proyecto
28	Can add servicio	10	add_servicio
29	Can change servicio	10	change_servicio
30	Can delete servicio	10	delete_servicio
31	Can add sector	11	add_sector
32	Can change sector	11	change_sector
33	Can delete sector	11	delete_sector
34	Can add red social	12	add_redsocial
35	Can change red social	12	change_redsocial
36	Can delete red social	12	delete_redsocial
37	Can add miembro	13	add_miembro
38	Can change miembro	13	change_miembro
39	Can delete miembro	13	delete_miembro
40	Can add licencia	14	add_licencia
41	Can change licencia	14	change_licencia
42	Can delete licencia	14	delete_licencia
43	Can add entidad	15	add_entidad
44	Can change entidad	15	change_entidad
45	Can delete entidad	15	delete_entidad
46	Can add award	16	add_award
47	Can change award	16	change_award
48	Can delete award	16	delete_award
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('auth_permission_id_seq', 48, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$12000$bD2Jtn5yCXbg$M66FBPaOQP33cuisJQqb1h2VkvhtTqSQhE0+J2VBV1Y=	2014-12-13 16:46:35.562271-05	t	jhonazsh			medina@hotmail.com	t	t	2014-12-13 16:46:17.136817-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: awards_award; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY awards_award (id, titulo, imagen) FROM stdin;
\.


--
-- Name: awards_award_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('awards_award_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2014-12-13 16:47:19.953654-05	1	ROADWAY AND TRANSPORTATION	1		11	1
2	2014-12-13 16:47:51.422315-05	1	Proyecto 1 - S1	1		9	1
3	2014-12-13 16:55:45.955031-05	1	Project 1 - S1	2	Changed nombre_proyecto and contenido_proyecto.	9	1
4	2014-12-13 16:56:09.521073-05	2	Project 2 - S1	1		9	1
5	2014-12-13 16:56:27.69051-05	3	Project 3 - S1	1		9	1
6	2014-12-13 16:57:12.521869-05	2	WATER SUPPLY AND WASTEWATER SYSTEMS	1		11	1
7	2014-12-13 16:57:42.944866-05	3	DRAINAGE SYSTEMS	1		11	1
8	2014-12-13 16:58:27.12956-05	4	LAND DEVELOPMENT	1		11	1
9	2014-12-13 16:58:51.321525-05	5	ENVIRONMENTAL ENGINEERING STUDIES	1		11	1
10	2014-12-13 16:59:21.310001-05	6	STRUCTURAL ENGINEERING	1		11	1
11	2014-12-13 16:59:55.633413-05	7	CONSTRUCTION PHASE SERVICES	1		11	1
12	2014-12-13 17:00:39.068617-05	4	Project 1 - S2	1		9	1
13	2014-12-13 17:00:57.883666-05	5	Project 2 - S2	1		9	1
14	2014-12-13 17:01:21.202765-05	6	Project 3 - S2	1		9	1
15	2014-12-13 17:01:49.010423-05	7	Project 1 - S3	1		9	1
16	2014-12-13 17:02:10.683555-05	8	Project 2 - S3	1		9	1
17	2014-12-13 17:02:28.338646-05	9	Project 3 - S3	1		9	1
18	2014-12-13 17:36:53.667192-05	1	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	1		8	1
19	2014-12-13 17:37:02.496462-05	1	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	1		7	1
20	2014-12-13 17:49:34.831584-05	10	Proyecto 1 - S4	1		9	1
21	2014-12-13 17:49:50.962038-05	10	Project 1 - S4	2	Changed nombre_proyecto.	9	1
22	2014-12-13 17:50:11.337042-05	11	Project 2 - S4	1		9	1
23	2014-12-13 17:50:35.937637-05	12	Project 3 - S4	1		9	1
24	2014-12-13 18:25:59.711183-05	12	Project 3 - S4	3		9	1
25	2014-12-13 18:28:05.140369-05	13	Project 3 - S4	1		9	1
26	2014-12-13 21:11:18.754743-05	1	https://facebook.com/serralta	1		12	1
27	2014-12-13 21:11:21.150764-05	1	IGNACIO SERRALTA	1		13	1
28	2014-12-13 21:12:58.27286-05	2	https://facebook.com/olivero	1		12	1
29	2014-12-13 21:13:00.939836-05	2	OLIVERO SANCHEZ	1		13	1
30	2014-12-13 21:14:31.838823-05	3	https://facebook.com/jean	1		12	1
31	2014-12-13 21:14:33.350123-05	3	JEAN-CLAUDE FONTANEAU	1		13	1
32	2014-12-13 21:15:44.922055-05	4	https://facebook.com/ralph	1		12	1
33	2014-12-13 21:15:48.563438-05	4	RALPH PEREDA	1		13	1
34	2014-12-13 21:19:25.630963-05	1	IGNACIO SERRALTA	2	Changed imagen.	13	1
35	2014-12-13 21:19:35.336159-05	3	JEAN-CLAUDE FONTANEAU	2	Changed imagen.	13	1
36	2014-12-13 21:20:38.014124-05	2	OLIVERIO SANCHEZ	2	Changed nombre and imagen.	13	1
37	2014-12-13 21:20:47.891049-05	4	RALPH PEREDA	2	Changed imagen.	13	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 37, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	texto servicios	home	textoservicios
8	texto proyectos	home	textoproyectos
9	proyecto	projects	proyecto
10	servicio	services	servicio
11	sector	sectors	sector
12	red social	team	redsocial
13	miembro	team	miembro
14	licencia	licenses	licencia
15	entidad	licenses	entidad
16	award	awards	award
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('django_content_type_id_seq', 16, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2014-12-13 16:45:17.287431-05
2	auth	0001_initial	2014-12-13 16:45:18.432872-05
3	admin	0001_initial	2014-12-13 16:45:18.755081-05
4	awards	0001_initial	2014-12-13 16:45:18.856688-05
5	home	0001_initial	2014-12-13 16:45:19.17981-05
6	licenses	0001_initial	2014-12-13 16:45:19.589803-05
7	projects	0001_initial	2014-12-13 16:45:19.746592-05
8	sectors	0001_initial	2014-12-13 16:45:20.203472-05
9	sectors	0002_auto_20141213_1302	2014-12-13 16:45:20.291736-05
10	sectors	0003_auto_20141213_1336	2014-12-13 16:45:20.391506-05
11	sectors	0004_auto_20141213_1342	2014-12-13 16:45:20.446717-05
12	sectors	0005_auto_20141213_1405	2014-12-13 16:45:20.569209-05
13	sectors	0006_remove_sector_proyectos	2014-12-13 16:45:20.615161-05
14	projects	0002_proyecto_slug	2014-12-13 16:45:20.870644-05
15	projects	0003_auto_20141213_1251	2014-12-13 16:45:20.924916-05
16	projects	0004_remove_proyecto_slug	2014-12-13 16:45:20.947191-05
17	projects	0005_proyecto_slug	2014-12-13 16:45:21.202705-05
18	projects	0006_auto_20141213_1352	2014-12-13 16:45:21.24751-05
19	projects	0007_remove_proyecto_slug	2014-12-13 16:45:21.28092-05
20	projects	0008_proyecto_sector	2014-12-13 16:45:21.526492-05
21	services	0001_initial	2014-12-13 16:45:21.625919-05
22	sessions	0001_initial	2014-12-13 16:45:21.881704-05
23	team	0001_initial	2014-12-13 16:45:22.392022-05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('django_migrations_id_seq', 23, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
s771l04u9w4srh773f32kmo2xcfwfyt9	MGVhYzVkM2RhMWViZGYzNDlkZWJkZWU0YjI3NjY3YzMzYzU4NGEyZjp7fQ==	2014-12-27 16:45:31.842312-05
rx2ex0sp7nlq7rjj0zw2u9zjn2a8zzp1	ZjcxZjFjYmZmNzc1MzE2YWYzNGFhYTdkNGNiZTBhYzhmNzhiMjMxNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjM2VjMGJjZjMxZWViMjM1N2UwY2Q1MjdiZmI5NDY3NTlkYWQxYjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2014-12-27 16:46:35.609594-05
r6jg60wm82cn2lxvtww5oqq0lhzrtp8w	MGVhYzVkM2RhMWViZGYzNDlkZWJkZWU0YjI3NjY3YzMzYzU4NGEyZjp7fQ==	2014-12-27 22:12:36.145774-05
\.


--
-- Data for Name: home_textoproyectos; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY home_textoproyectos (id, contenido) FROM stdin;
1	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat
\.


--
-- Name: home_textoproyectos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('home_textoproyectos_id_seq', 1, true);


--
-- Data for Name: home_textoservicios; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY home_textoservicios (id, contenido) FROM stdin;
1	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat
\.


--
-- Name: home_textoservicios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('home_textoservicios_id_seq', 1, true);


--
-- Data for Name: licenses_entidad; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY licenses_entidad (id, nombre_entidad, imagen) FROM stdin;
\.


--
-- Name: licenses_entidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('licenses_entidad_id_seq', 1, false);


--
-- Data for Name: licenses_entidad_licencias; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY licenses_entidad_licencias (id, entidad_id, licencia_id) FROM stdin;
\.


--
-- Name: licenses_entidad_licencias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('licenses_entidad_licencias_id_seq', 1, false);


--
-- Data for Name: licenses_licencia; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY licenses_licencia (id, numero, titulo) FROM stdin;
\.


--
-- Name: licenses_licencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('licenses_licencia_id_seq', 1, false);


--
-- Data for Name: projects_proyecto; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY projects_proyecto (id, nombre_proyecto, contenido_proyecto, imagen, sector_id) FROM stdin;
1	Project 1 - S1	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs1_cHHgTur.png	1
2	Project 2 - S1	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs2_ipR3uz4.png	1
3	Project 3 - S1	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs3_4kxFdJC.png	1
4	Project 1 - S2	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs3_NEKucC6.png	2
5	Project 2 - S2	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs1_LCHrwEW.png	2
6	Project 3 - S2	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs4_ro2x1E5.png	2
7	Project 1 - S3	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs3_W6CtaUO.png	3
8	Project 2 - S3	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs2_GEiYsGB.png	3
9	Project 3 - S3	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs2_WAYVhnG.png	3
10	Project 1 - S4	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs2_xQVaxd5.png	4
11	Project 2 - S4	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs3_mAXaesZ.png	4
13	Project 3 - S4	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a	media/srs4_xof6o3r.png	4
\.


--
-- Name: projects_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('projects_proyecto_id_seq', 13, true);


--
-- Data for Name: sectors_sector; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY sectors_sector (id, nombre_sector, slug, descripcion) FROM stdin;
1	ROADWAY AND TRANSPORTATION	roadway-and-transportation	Roadway design including grading, paving, drainage, signage and markings, maintenance of traffic plans, traffic calming, bicycle paths, application processing, and permitting.
2	WATER SUPPLY AND WASTEWATER SYSTEMS	water-supply-and-wastewater-systems	Master planning of water and sanitary sewer systems, hydraulic network analysis, sanitary sewer collection and transmission systems, water distribution and transmission systems, pump stations, wells, water treatment plants and special structures.
3	DRAINAGE SYSTEMS	drainage-systems	Master planning of flood control and drainage facilities, hydrology and hydraulic analysis of drainage systems, flood plain studies, retention/detention water management systems, storm drains, channels, pump stations, drainage wells, and special drainage structures.
4	LAND DEVELOPMENT	land-development	Subdivision land use planning, zoning submissions, tentative and final tract maps, site development plans including grading, lakes, roadways, water distribution systems, sanitary sewer systems, and drainage facilities. Cut and Fill and water management studies, and permitting.
5	ENVIRONMENTAL ENGINEERING STUDIES	environmental-engineering-studies	Environmental impact reports, environmental impact assessments, wetland restoration & mitigation, and environmental sensitive lands permitting and processing.
6	STRUCTURAL ENGINEERING	structural-engineering	Structural design of concrete buildings, steel frame buildings, multistory buildings, and tilt-up construction. Marine and port structures including piers, docks, seawalls, marinas, fender systems, harbor crane supports, wharf extensions and mooring dolphins
7	CONSTRUCTION PHASE SERVICES	construction-phase-services	Bid review, construction coordination, field construction managers and inspectors, monitor contractor’s work, review and process contractors’ application for payment, maintain daily project journals, administration of changed work, provide problem resolution, request and review material testing, coordination with utility companies, and project closeout.
\.


--
-- Name: sectors_sector_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('sectors_sector_id_seq', 7, true);


--
-- Data for Name: services_servicio; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY services_servicio (id, nombre_servicio) FROM stdin;
\.


--
-- Name: services_servicio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('services_servicio_id_seq', 1, false);


--
-- Data for Name: team_miembro; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY team_miembro (id, nombre, cargo, bio, imagen) FROM stdin;
1	IGNACIO SERRALTA	President	A principal with principles.  Leading the team is President and Founder- Ignacio .  With 25 years of civil engineering experience in planning, design and management, Registered Civil Engineering Licenses in both California and Florida, in addition to numerous certifications, awards and honors- it's his passion for excellent service and solutions that set a solid foundation for SRS.  Mr. Serralta is actively involved in every project.   Equipped with an enthusiastic and talented team, coupled with strategic partnerships from some of the industry's most capable engineering giants- makes SRS exceptional from inception to finish.	team/team1.png
3	JEAN-CLAUDE FONTANEAU	Project Manager	Detail in design. Bold and Focused.  Mr. Fontaneau has over 17 years of industry experience in civil engineering design.  He specializes in roadway, water and sewer installations, industrial facilities and land development design. With a keen eye for innovative design and the ability to produce solutions he is a key contributing member of the management team.	team/team2.png
2	OLIVERIO SANCHEZ	Vice President	A world of experience. With over 30 years of industry experience from engineering to design in both public and private sectors throughout the United States, Mexico, the Caribbean and Spain- Mr. Sanchez is a key asset to the success of SRS. His many years of field experience with government agencies, construction management, quality control, plan approvals and processes, provide the knowledge for best practices from concept to the field.	team/team3.png
4	RALPH PEREDA	Contract Specialist	Comptroller. Mr. Pereda joined SRS with a successful track record in regional sales management and customer service for Fortune 100 Companies, throughout Latin America and the Caribbean.  His role as  Contract Specialist ensures that all projects are in compliance, within budget and delivered on time.  His extraordinary ability to make the numbers work with ease allows the team to focus on the more technical side of business.  He manages the firm to ensure all compliances are met- from affirmative action to maintaining all business and technical certifications. He serves as Contract Administrator for all government contracts, including the preparation and submittal of all required documents such as MUR’s and payment requisitions.	team/team4.png
\.


--
-- Name: team_miembro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('team_miembro_id_seq', 4, true);


--
-- Data for Name: team_miembro_redes_sociales; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY team_miembro_redes_sociales (id, miembro_id, redsocial_id) FROM stdin;
5	1	1
6	3	3
7	2	2
8	4	4
\.


--
-- Name: team_miembro_redes_sociales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('team_miembro_redes_sociales_id_seq', 8, true);


--
-- Data for Name: team_redsocial; Type: TABLE DATA; Schema: public; Owner: jhonazsh
--

COPY team_redsocial (id, red) FROM stdin;
1	https://facebook.com/serralta
2	https://facebook.com/olivero
3	https://facebook.com/jean
4	https://facebook.com/ralph
\.


--
-- Name: team_redsocial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jhonazsh
--

SELECT pg_catalog.setval('team_redsocial_id_seq', 4, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: awards_award_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY awards_award
    ADD CONSTRAINT awards_award_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_textoproyectos_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY home_textoproyectos
    ADD CONSTRAINT home_textoproyectos_pkey PRIMARY KEY (id);


--
-- Name: home_textoservicios_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY home_textoservicios
    ADD CONSTRAINT home_textoservicios_pkey PRIMARY KEY (id);


--
-- Name: licenses_entidad_licencias_entidad_id_licencia_id_key; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY licenses_entidad_licencias
    ADD CONSTRAINT licenses_entidad_licencias_entidad_id_licencia_id_key UNIQUE (entidad_id, licencia_id);


--
-- Name: licenses_entidad_licencias_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY licenses_entidad_licencias
    ADD CONSTRAINT licenses_entidad_licencias_pkey PRIMARY KEY (id);


--
-- Name: licenses_entidad_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY licenses_entidad
    ADD CONSTRAINT licenses_entidad_pkey PRIMARY KEY (id);


--
-- Name: licenses_licencia_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY licenses_licencia
    ADD CONSTRAINT licenses_licencia_pkey PRIMARY KEY (id);


--
-- Name: projects_proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY projects_proyecto
    ADD CONSTRAINT projects_proyecto_pkey PRIMARY KEY (id);


--
-- Name: sectors_sector_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY sectors_sector
    ADD CONSTRAINT sectors_sector_pkey PRIMARY KEY (id);


--
-- Name: sectors_sector_slug_5900703d8bf79a0_uniq; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY sectors_sector
    ADD CONSTRAINT sectors_sector_slug_5900703d8bf79a0_uniq UNIQUE (slug);


--
-- Name: services_servicio_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY services_servicio
    ADD CONSTRAINT services_servicio_pkey PRIMARY KEY (id);


--
-- Name: team_miembro_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY team_miembro
    ADD CONSTRAINT team_miembro_pkey PRIMARY KEY (id);


--
-- Name: team_miembro_redes_sociales_miembro_id_redsocial_id_key; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY team_miembro_redes_sociales
    ADD CONSTRAINT team_miembro_redes_sociales_miembro_id_redsocial_id_key UNIQUE (miembro_id, redsocial_id);


--
-- Name: team_miembro_redes_sociales_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY team_miembro_redes_sociales
    ADD CONSTRAINT team_miembro_redes_sociales_pkey PRIMARY KEY (id);


--
-- Name: team_redsocial_pkey; Type: CONSTRAINT; Schema: public; Owner: jhonazsh; Tablespace: 
--

ALTER TABLE ONLY team_redsocial
    ADD CONSTRAINT team_redsocial_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: licenses_entidad_licencias_40453fac; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX licenses_entidad_licencias_40453fac ON licenses_entidad_licencias USING btree (entidad_id);


--
-- Name: licenses_entidad_licencias_f94ab89e; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX licenses_entidad_licencias_f94ab89e ON licenses_entidad_licencias USING btree (licencia_id);


--
-- Name: projects_proyecto_5b1d2adf; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX projects_proyecto_5b1d2adf ON projects_proyecto USING btree (sector_id);


--
-- Name: team_miembro_redes_sociales_8720cc3e; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX team_miembro_redes_sociales_8720cc3e ON team_miembro_redes_sociales USING btree (miembro_id);


--
-- Name: team_miembro_redes_sociales_b63ea615; Type: INDEX; Schema: public; Owner: jhonazsh; Tablespace: 
--

CREATE INDEX team_miembro_redes_sociales_b63ea615 ON team_miembro_redes_sociales USING btree (redsocial_id);


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: licenses_e_licencia_id_2d9ca02f1106dd14_fk_licenses_licencia_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY licenses_entidad_licencias
    ADD CONSTRAINT licenses_e_licencia_id_2d9ca02f1106dd14_fk_licenses_licencia_id FOREIGN KEY (licencia_id) REFERENCES licenses_licencia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: licenses_ent_entidad_id_2a33017cb1b8930a_fk_licenses_entidad_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY licenses_entidad_licencias
    ADD CONSTRAINT licenses_ent_entidad_id_2a33017cb1b8930a_fk_licenses_entidad_id FOREIGN KEY (entidad_id) REFERENCES licenses_entidad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: projects_proyec_sector_id_7f38eee083572cff_fk_sectors_sector_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY projects_proyecto
    ADD CONSTRAINT projects_proyec_sector_id_7f38eee083572cff_fk_sectors_sector_id FOREIGN KEY (sector_id) REFERENCES sectors_sector(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: team_miembro_red_miembro_id_2999fafe78326fb4_fk_team_miembro_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY team_miembro_redes_sociales
    ADD CONSTRAINT team_miembro_red_miembro_id_2999fafe78326fb4_fk_team_miembro_id FOREIGN KEY (miembro_id) REFERENCES team_miembro(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: team_miembro_redsocial_id_13c7075ef3859d2f_fk_team_redsocial_id; Type: FK CONSTRAINT; Schema: public; Owner: jhonazsh
--

ALTER TABLE ONLY team_miembro_redes_sociales
    ADD CONSTRAINT team_miembro_redsocial_id_13c7075ef3859d2f_fk_team_redsocial_id FOREIGN KEY (redsocial_id) REFERENCES team_redsocial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

