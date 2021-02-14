--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: testimoniales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.testimoniales (
    id integer NOT NULL,
    nombre character varying(60),
    correo character varying(60),
    mensaje text
);


ALTER TABLE public.testimoniales OWNER TO postgres;

--
-- Name: testimoniales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.testimoniales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testimoniales_id_seq OWNER TO postgres;

--
-- Name: testimoniales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.testimoniales_id_seq OWNED BY public.testimoniales.id;


--
-- Name: viajes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.viajes (
    id integer NOT NULL,
    titulo character varying(60),
    precio character varying(10),
    fecha_ida date,
    fecha_vuelta date,
    imagen character varying(15),
    descripcion text,
    disponibles integer,
    slug character varying(20)
);


ALTER TABLE public.viajes OWNER TO postgres;

--
-- Name: viajes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.viajes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.viajes_id_seq OWNER TO postgres;

--
-- Name: viajes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.viajes_id_seq OWNED BY public.viajes.id;


--
-- Name: testimoniales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testimoniales ALTER COLUMN id SET DEFAULT nextval('public.testimoniales_id_seq'::regclass);


--
-- Name: viajes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viajes ALTER COLUMN id SET DEFAULT nextval('public.viajes_id_seq'::regclass);


--
-- Data for Name: testimoniales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.testimoniales (id, nombre, correo, mensaje) FROM stdin;
1	andres	direccioncomercial@chilo.com.co	Excelente viaje
2	andres	direccioncomercial@chilo.com.co	Excelente viaje
3	laura	laura@gmail.com	Hermoso Destino
\.


--
-- Data for Name: viajes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.viajes (id, titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponibles, slug) FROM stdin;
1	Italia	50000	2021-06-24	2021-06-30	roma	Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\\r\\n\\r\\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat	32	viaje-italia
2	Canada	60000	2021-07-19	2021-07-19	canada	Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\\r\\n\\r\\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.	25	viaje-canada
3	Grecia	40000	2021-08-29	2021-09-15	grecia	Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\\r\\n\\r\\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.	18	viaje-grecia
4	Inglaterra	8000	2021-09-22	2021-10-03	londres	Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\\r\\n\\r\\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.	22	viaje-inglaterra
5	Rio de Janeiro	50000	2021-04-16	2021-04-25	rio	Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\\r\\n\\r\\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.	23	viaje-rio-de-janeiro
6	Francia	75000	2021-04-03	2021-04-10	paris	Praesent tincidunt ante at justo semper volutpat. Sed risus neque, scelerisque id dictum in, placerat non erat. Sed eget tellus eu mauris faucibus pharetra. Praesent vulputate diam ac diam dignissim, eu semper turpis gravida. Vestibulum tempor purus orci, vitae ullamcorper erat congue quis. Nullam dapibus dui a velit lacinia, eu cursus massa cursus. Morbi lobortis fermentum urna, quis tincidunt justo varius vitae. In justo nisl, auctor vel eros sed, tempus efficitur lacus. Maecenas volutpat pharetra dolor, nec rutrum ipsum dapibus id.\\r\\n\\r\\nMauris ultricies augue lectus, efficitur tincidunt enim euismod non. Praesent nisl elit, eleifend et eleifend eu, venenatis et felis. Donec eleifend mi in congue semper. Quisque hendrerit purus eget pharetra laoreet. Donec nisl nisi, auctor at vehicula et, fermentum sed urna. In nec porta felis, eu ullamcorper lacus. Curabitur scelerisque commodo laoreet. Donec finibus vel nibh quis ultrices. Integer varius tellus sed leo tempor, vitae ullamcorper leo placerat.	14	viaje-francia
\.


--
-- Name: testimoniales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.testimoniales_id_seq', 3, true);


--
-- Name: viajes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.viajes_id_seq', 1, true);


--
-- Name: testimoniales testimoniales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.testimoniales
    ADD CONSTRAINT testimoniales_pkey PRIMARY KEY (id);


--
-- Name: viajes viajes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viajes
    ADD CONSTRAINT viajes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

