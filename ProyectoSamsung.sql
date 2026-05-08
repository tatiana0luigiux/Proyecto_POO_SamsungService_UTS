--
-- PostgreSQL database dump
--

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-05-07 16:19:07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 222 (class 1259 OID 16542)
-- Name: ordenes_servicio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ordenes_servicio (
    id_orden integer NOT NULL,
    id_tecnico integer,
    cliente_nombre character varying(100) NOT NULL,
    cliente_direccion character varying(150),
    cliente_telefono character varying(20),
    producto_modelo character varying(50),
    falla_reportada text,
    fecha_visita date,
    rango_horario character varying(20)
);


ALTER TABLE public.ordenes_servicio OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16541)
-- Name: ordenes_servicio_id_orden_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ordenes_servicio_id_orden_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ordenes_servicio_id_orden_seq OWNER TO postgres;

--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 221
-- Name: ordenes_servicio_id_orden_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ordenes_servicio_id_orden_seq OWNED BY public.ordenes_servicio.id_orden;


--
-- TOC entry 220 (class 1259 OID 16530)
-- Name: tecnicos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tecnicos (
    id_tecnico integer NOT NULL,
    cedula character varying(20) NOT NULL,
    nombre character varying(100) NOT NULL,
    especialidad character varying(50),
    telefono character varying(20)
);


ALTER TABLE public.tecnicos OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16529)
-- Name: tecnicos_id_tecnico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tecnicos_id_tecnico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tecnicos_id_tecnico_seq OWNER TO postgres;

--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 219
-- Name: tecnicos_id_tecnico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tecnicos_id_tecnico_seq OWNED BY public.tecnicos.id_tecnico;


--
-- TOC entry 4862 (class 2604 OID 16545)
-- Name: ordenes_servicio id_orden; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordenes_servicio ALTER COLUMN id_orden SET DEFAULT nextval('public.ordenes_servicio_id_orden_seq'::regclass);


--
-- TOC entry 4861 (class 2604 OID 16533)
-- Name: tecnicos id_tecnico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tecnicos ALTER COLUMN id_tecnico SET DEFAULT nextval('public.tecnicos_id_tecnico_seq'::regclass);


--
-- TOC entry 5021 (class 0 OID 16542)
-- Dependencies: 222
-- Data for Name: ordenes_servicio; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 221
-- Name: ordenes_servicio_id_orden_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ordenes_servicio_id_orden_seq', 4, true);


--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 219
-- Name: tecnicos_id_tecnico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tecnicos_id_tecnico_seq', 1, false);


--
-- TOC entry 4868 (class 2606 OID 16551)
-- Name: ordenes_servicio ordenes_servicio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordenes_servicio
    ADD CONSTRAINT ordenes_servicio_pkey PRIMARY KEY (id_orden);


--
-- TOC entry 4864 (class 2606 OID 16540)
-- Name: tecnicos tecnicos_cedula_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tecnicos
    ADD CONSTRAINT tecnicos_cedula_key UNIQUE (cedula);


--
-- TOC entry 4866 (class 2606 OID 16538)
-- Name: tecnicos tecnicos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tecnicos
    ADD CONSTRAINT tecnicos_pkey PRIMARY KEY (id_tecnico);


--
-- TOC entry 4869 (class 2606 OID 16557)
-- Name: ordenes_servicio fk_tecnico; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordenes_servicio
    ADD CONSTRAINT fk_tecnico FOREIGN KEY (id_tecnico) REFERENCES public.tecnicos(id_tecnico);


--
-- TOC entry 4870 (class 2606 OID 16552)
-- Name: ordenes_servicio ordenes_servicio_id_tecnico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordenes_servicio
    ADD CONSTRAINT ordenes_servicio_id_tecnico_fkey FOREIGN KEY (id_tecnico) REFERENCES public.tecnicos(id_tecnico);


-- Completed on 2026-05-07 16:19:07

--
-- PostgreSQL database dump complete
--


