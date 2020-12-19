--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: animal; Type: TABLE; Schema: public; Owner: user_t1_zoo
--

CREATE TABLE public.animal (
    animal_id bigint NOT NULL,
    tipo_animal_id integer,
    detalle_tipo_id integer,
    categoria_clase_id integer,
    especie_animal character varying(25),
    cantidad_por_especie integer
);


ALTER TABLE public.animal OWNER TO user_t1_zoo;

--
-- Name: animal_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: user_t1_zoo
--

CREATE SEQUENCE public.animal_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animal_animal_id_seq OWNER TO user_t1_zoo;

--
-- Name: animal_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_t1_zoo
--

ALTER SEQUENCE public.animal_animal_id_seq OWNED BY public.animal.animal_id;


--
-- Name: animal_concreto; Type: TABLE; Schema: public; Owner: user_t1_zoo
--

CREATE TABLE public.animal_concreto (
    animal_concreto_id bigint NOT NULL,
    animal_id integer,
    tipo_animal_id integer,
    detalle_tipo_id integer,
    categoria_clase_id integer,
    especie_animal character varying(25) NOT NULL,
    cantidad_por_especie integer,
    nombre character varying(25) NOT NULL
);


ALTER TABLE public.animal_concreto OWNER TO user_t1_zoo;

--
-- Name: animal_concreto_animal_concreto_id_seq; Type: SEQUENCE; Schema: public; Owner: user_t1_zoo
--

CREATE SEQUENCE public.animal_concreto_animal_concreto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animal_concreto_animal_concreto_id_seq OWNER TO user_t1_zoo;

--
-- Name: animal_concreto_animal_concreto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_t1_zoo
--

ALTER SEQUENCE public.animal_concreto_animal_concreto_id_seq OWNED BY public.animal_concreto.animal_concreto_id;


--
-- Name: categoria_clase; Type: TABLE; Schema: public; Owner: user_t1_zoo
--

CREATE TABLE public.categoria_clase (
    categoria_clase_id bigint NOT NULL,
    ambiente character varying(25) NOT NULL,
    tipo_animal_id integer
);


ALTER TABLE public.categoria_clase OWNER TO user_t1_zoo;

--
-- Name: categoria_clase_categoria_clase_id_seq; Type: SEQUENCE; Schema: public; Owner: user_t1_zoo
--

CREATE SEQUENCE public.categoria_clase_categoria_clase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_clase_categoria_clase_id_seq OWNER TO user_t1_zoo;

--
-- Name: categoria_clase_categoria_clase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_t1_zoo
--

ALTER SEQUENCE public.categoria_clase_categoria_clase_id_seq OWNED BY public.categoria_clase.categoria_clase_id;


--
-- Name: detalle_tipo; Type: TABLE; Schema: public; Owner: user_t1_zoo
--

CREATE TABLE public.detalle_tipo (
    detalle_tipo_id bigint NOT NULL,
    continente_procedencia character varying(25) NOT NULL
);


ALTER TABLE public.detalle_tipo OWNER TO user_t1_zoo;

--
-- Name: detalle_tipo_detalle_tipo_id_seq; Type: SEQUENCE; Schema: public; Owner: user_t1_zoo
--

CREATE SEQUENCE public.detalle_tipo_detalle_tipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detalle_tipo_detalle_tipo_id_seq OWNER TO user_t1_zoo;

--
-- Name: detalle_tipo_detalle_tipo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_t1_zoo
--

ALTER SEQUENCE public.detalle_tipo_detalle_tipo_id_seq OWNED BY public.detalle_tipo.detalle_tipo_id;


--
-- Name: tipo_animal; Type: TABLE; Schema: public; Owner: user_t1_zoo
--

CREATE TABLE public.tipo_animal (
    tipo_animal_id bigint NOT NULL,
    tip_animal character varying(25) NOT NULL
);


ALTER TABLE public.tipo_animal OWNER TO user_t1_zoo;

--
-- Name: tipo_animal_tipo_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: user_t1_zoo
--

CREATE SEQUENCE public.tipo_animal_tipo_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_animal_tipo_animal_id_seq OWNER TO user_t1_zoo;

--
-- Name: tipo_animal_tipo_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_t1_zoo
--

ALTER SEQUENCE public.tipo_animal_tipo_animal_id_seq OWNED BY public.tipo_animal.tipo_animal_id;


--
-- Name: animal animal_id; Type: DEFAULT; Schema: public; Owner: user_t1_zoo
--

ALTER TABLE ONLY public.animal ALTER COLUMN animal_id SET DEFAULT nextval('public.animal_animal_id_seq'::regclass);


--
-- Name: animal_concreto animal_concreto_id; Type: DEFAULT; Schema: public; Owner: user_t1_zoo
--

ALTER TABLE ONLY public.animal_concreto ALTER COLUMN animal_concreto_id SET DEFAULT nextval('public.animal_concreto_animal_concreto_id_seq'::regclass);


--
-- Name: categoria_clase categoria_clase_id; Type: DEFAULT; Schema: public; Owner: user_t1_zoo
--

ALTER TABLE ONLY public.categoria_clase ALTER COLUMN categoria_clase_id SET DEFAULT nextval('public.categoria_clase_categoria_clase_id_seq'::regclass);


--
-- Name: detalle_tipo detalle_tipo_id; Type: DEFAULT; Schema: public; Owner: user_t1_zoo
--

ALTER TABLE ONLY public.detalle_tipo ALTER COLUMN detalle_tipo_id SET DEFAULT nextval('public.detalle_tipo_detalle_tipo_id_seq'::regclass);


--
-- Name: tipo_animal tipo_animal_id; Type: DEFAULT; Schema: public; Owner: user_t1_zoo
--

ALTER TABLE ONLY public.tipo_animal ALTER COLUMN tipo_animal_id SET DEFAULT nextval('public.tipo_animal_tipo_animal_id_seq'::regclass);


--
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: user_t1_zoo
--

COPY public.animal (animal_id, tipo_animal_id, detalle_tipo_id, categoria_clase_id, especie_animal, cantidad_por_especie) FROM stdin;
25	1	6	1	Pulpo	3
26	1	4	1	Pez Payaso	10
27	1	2	1	Tibur¢n	4
28	2	4	2	Iguana	5
29	2	2	2	Boa	2
30	2	4	2	Serpiente	6
31	3	1	3	Pato	11
32	3	3	3	C¢ndor	4
33	3	5	3	Loro	13
34	4	4	4	Caballo	9
35	4	1	4	Canguro	5
36	4	4	4	Pud£	7
\.


--
-- Data for Name: animal_concreto; Type: TABLE DATA; Schema: public; Owner: user_t1_zoo
--

COPY public.animal_concreto (animal_concreto_id, animal_id, tipo_animal_id, detalle_tipo_id, categoria_clase_id, especie_animal, cantidad_por_especie, nombre) FROM stdin;
1	1	1	6	1	Pulpo	3	Pulpo_A
2	1	1	6	1	Pulpo	3	Pulpo_B
3	1	1	6	1	Pulpo	3	Pulpo_C
4	2	1	4	1	Pez Payaso	10	Pez Payaso_A
5	2	1	4	1	Pez Payaso	10	Pez Payaso_B
6	2	1	4	1	Pez Payaso	10	Pez Payaso_C
7	2	1	4	1	Pez Payaso	10	Pez Payaso_D
8	2	1	4	1	Pez Payaso	10	Pez Payaso_E
9	2	1	4	1	Pez Payaso	10	Pez Payaso_F
10	2	1	4	1	Pez Payaso	10	Pez Payaso_G
11	2	1	4	1	Pez Payaso	10	Pez Payaso_H
12	2	1	4	1	Pez Payaso	10	Pez Payaso_I
13	2	1	4	1	Pez Payaso	10	Pez Payaso_J
14	3	1	2	1	Tibur¢n	4	Tibur¢n_A
15	3	1	2	1	Tibur¢n	4	Tibur¢n_B
16	3	1	2	1	Tibur¢n	4	Tibur¢n_C
17	3	1	2	1	Tibur¢n	4	Tibur¢n_D
18	4	2	4	2	Iguana	5	Iguana_A
19	4	2	4	2	Iguana	5	Iguana_B
20	4	2	4	2	Iguana	5	Iguana_C
21	4	2	4	2	Iguana	5	Iguana_D
22	4	2	4	2	Iguana	5	Iguana_E
23	5	2	2	2	Boa	2	Boa_A
24	5	2	2	2	Boa	2	Boa_B
25	6	2	4	2	Serpiente	6	Serpiente_A
26	6	2	4	2	Serpiente	6	Serpiente_B
27	6	2	4	2	Serpiente	6	Serpiente_C
28	6	2	4	2	Serpiente	6	Serpiente_D
29	6	2	4	2	Serpiente	6	Serpiente_E
30	6	2	4	2	Serpiente	6	Serpiente_F
31	7	3	1	3	Pato	11	Pato_A
32	7	3	1	3	Pato	11	Pato_B
33	7	3	1	3	Pato	11	Pato_C
34	7	3	1	3	Pato	11	Pato_D
35	7	3	1	3	Pato	11	Pato_E
36	7	3	1	3	Pato	11	Pato_F
37	7	3	1	3	Pato	11	Pato_G
38	7	3	1	3	Pato	11	Pato_H
39	7	3	1	3	Pato	11	Pato_I
40	7	3	1	3	Pato	11	Pato_J
41	7	3	1	3	Pato	11	Pato_K
42	8	3	3	3	C¢ndor	4	C¢ndor_A
43	8	3	3	3	C¢ndor	4	C¢ndor_B
44	8	3	3	3	C¢ndor	4	C¢ndor_C
45	8	3	3	3	C¢ndor	4	C¢ndor_D
46	9	3	5	3	Loro	13	Loro_A
47	9	3	5	3	Loro	13	Loro_B
48	9	3	5	3	Loro	13	Loro_C
49	9	3	5	3	Loro	13	Loro_D
50	10	4	3	4	Caballo	9	Caballo_B
51	10	4	3	4	Caballo	9	Caballo_C
52	10	4	3	4	Caballo	9	Caballo_D
53	10	4	3	4	Caballo	9	Caballo_E
54	10	4	3	4	Caballo	9	Caballo_F
55	10	4	3	4	Caballo	9	Caballo_G
56	10	4	3	4	Caballo	9	Caballo_H
57	10	4	3	4	Caballo	9	Caballo_I
58	11	4	1	4	Canguro	5	Canguro_A
59	11	4	1	4	Canguro	5	Canguro_B
60	12	4	4	4	Pud£	7	Pud£_G
61	9	3	5	3	Loro	13	Loro_E
62	9	3	5	3	Loro	13	Loro_F
63	9	3	5	3	Loro	13	Loro_G
64	9	3	5	3	Loro	13	Loro_H
65	9	3	5	3	Loro	13	Loro_I
66	9	3	5	3	Loro	13	Loro_J
67	9	3	5	3	Loro	13	Loro_K
68	9	3	5	3	Loro	13	Loro_L
69	9	3	5	3	Loro	13	Loro_M
70	11	4	1	4	Canguro	5	Canguro_B
71	11	4	1	4	Canguro	5	Canguro_C
72	11	4	1	4	Canguro	5	Canguro_D
73	11	4	1	4	Canguro	5	Canguro_E
74	12	4	4	4	Pud£	7	Pud£_A
75	12	4	4	4	Pud£	7	Pud£_B
76	12	4	4	4	Pud£	7	Pud£_C
77	12	4	4	4	Pud£	7	Pud£_D
78	12	4	4	4	Pud£	7	Pud£_E
79	12	4	4	4	Pud£	7	Pud£_F
\.


--
-- Data for Name: categoria_clase; Type: TABLE DATA; Schema: public; Owner: user_t1_zoo
--

COPY public.categoria_clase (categoria_clase_id, ambiente, tipo_animal_id) FROM stdin;
1	Acuario	1
2	Ambiente climatizado	2
3	Jaula cerrada	3
4	Espacio cercado	4
\.


--
-- Data for Name: detalle_tipo; Type: TABLE DATA; Schema: public; Owner: user_t1_zoo
--

COPY public.detalle_tipo (detalle_tipo_id, continente_procedencia) FROM stdin;
1	Ocean¡a
2	µfrica
3	Europa
4	Am‚rica
5	Asia
6	Ant rtida
\.


--
-- Data for Name: tipo_animal; Type: TABLE DATA; Schema: public; Owner: user_t1_zoo
--

COPY public.tipo_animal (tipo_animal_id, tip_animal) FROM stdin;
1	Pez
2	Reptil
3	Ave
4	Mam¡fero
\.


--
-- Name: animal_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_t1_zoo
--

SELECT pg_catalog.setval('public.animal_animal_id_seq', 36, true);


--
-- Name: animal_concreto_animal_concreto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_t1_zoo
--

SELECT pg_catalog.setval('public.animal_concreto_animal_concreto_id_seq', 79, true);


--
-- Name: categoria_clase_categoria_clase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_t1_zoo
--

SELECT pg_catalog.setval('public.categoria_clase_categoria_clase_id_seq', 4, true);


--
-- Name: detalle_tipo_detalle_tipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_t1_zoo
--

SELECT pg_catalog.setval('public.detalle_tipo_detalle_tipo_id_seq', 6, true);


--
-- Name: tipo_animal_tipo_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_t1_zoo
--

SELECT pg_catalog.setval('public.tipo_animal_tipo_animal_id_seq', 4, true);


--
-- Name: animal_concreto animal_concreto_pkey; Type: CONSTRAINT; Schema: public; Owner: user_t1_zoo
--

ALTER TABLE ONLY public.animal_concreto
    ADD CONSTRAINT animal_concreto_pkey PRIMARY KEY (animal_concreto_id);


--
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: user_t1_zoo
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (animal_id);


--
-- Name: categoria_clase categoria_clase_pkey; Type: CONSTRAINT; Schema: public; Owner: user_t1_zoo
--

ALTER TABLE ONLY public.categoria_clase
    ADD CONSTRAINT categoria_clase_pkey PRIMARY KEY (categoria_clase_id);


--
-- Name: detalle_tipo detalle_tipo_pkey; Type: CONSTRAINT; Schema: public; Owner: user_t1_zoo
--

ALTER TABLE ONLY public.detalle_tipo
    ADD CONSTRAINT detalle_tipo_pkey PRIMARY KEY (detalle_tipo_id);


--
-- Name: tipo_animal tipo_animal_pkey; Type: CONSTRAINT; Schema: public; Owner: user_t1_zoo
--

ALTER TABLE ONLY public.tipo_animal
    ADD CONSTRAINT tipo_animal_pkey PRIMARY KEY (tipo_animal_id);


--
-- PostgreSQL database dump complete
--

