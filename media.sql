--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: animals; Type: TABLE; Schema: public; Owner: arunda
--

CREATE TABLE public.animals (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.animals OWNER TO arunda;

--
-- Name: animals_id_seq; Type: SEQUENCE; Schema: public; Owner: arunda
--

CREATE SEQUENCE public.animals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animals_id_seq OWNER TO arunda;

--
-- Name: animals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arunda
--

ALTER SEQUENCE public.animals_id_seq OWNED BY public.animals.id;


--
-- Name: endangered_animals; Type: TABLE; Schema: public; Owner: arunda
--

CREATE TABLE public.endangered_animals (
    id integer NOT NULL,
    name character varying,
    health character varying,
    age character varying
);


ALTER TABLE public.endangered_animals OWNER TO arunda;

--
-- Name: endangered_animals_id_seq; Type: SEQUENCE; Schema: public; Owner: arunda
--

CREATE SEQUENCE public.endangered_animals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.endangered_animals_id_seq OWNER TO arunda;

--
-- Name: endangered_animals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arunda
--

ALTER SEQUENCE public.endangered_animals_id_seq OWNED BY public.endangered_animals.id;


--
-- Name: sightings; Type: TABLE; Schema: public; Owner: arunda
--

CREATE TABLE public.sightings (
    id integer NOT NULL,
    animal_id integer,
    location character varying,
    ranger_name character varying
);


ALTER TABLE public.sightings OWNER TO arunda;

--
-- Name: sightings_id_seq; Type: SEQUENCE; Schema: public; Owner: arunda
--

CREATE SEQUENCE public.sightings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sightings_id_seq OWNER TO arunda;

--
-- Name: sightings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arunda
--

ALTER SEQUENCE public.sightings_id_seq OWNED BY public.sightings.id;


--
-- Name: animals id; Type: DEFAULT; Schema: public; Owner: arunda
--

ALTER TABLE ONLY public.animals ALTER COLUMN id SET DEFAULT nextval('public.animals_id_seq'::regclass);


--
-- Name: endangered_animals id; Type: DEFAULT; Schema: public; Owner: arunda
--

ALTER TABLE ONLY public.endangered_animals ALTER COLUMN id SET DEFAULT nextval('public.endangered_animals_id_seq'::regclass);


--
-- Name: sightings id; Type: DEFAULT; Schema: public; Owner: arunda
--

ALTER TABLE ONLY public.sightings ALTER COLUMN id SET DEFAULT nextval('public.sightings_id_seq'::regclass);


--
-- Data for Name: animals; Type: TABLE DATA; Schema: public; Owner: arunda
--

COPY public.animals (id, name) FROM stdin;
\.


--
-- Data for Name: endangered_animals; Type: TABLE DATA; Schema: public; Owner: arunda
--

COPY public.endangered_animals (id, name, health, age) FROM stdin;
\.


--
-- Data for Name: sightings; Type: TABLE DATA; Schema: public; Owner: arunda
--

COPY public.sightings (id, animal_id, location, ranger_name) FROM stdin;
\.


--
-- Name: animals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arunda
--

SELECT pg_catalog.setval('public.animals_id_seq', 1, false);


--
-- Name: endangered_animals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arunda
--

SELECT pg_catalog.setval('public.endangered_animals_id_seq', 1, false);


--
-- Name: sightings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arunda
--

SELECT pg_catalog.setval('public.sightings_id_seq', 1, false);


--
-- Name: animals animals_pkey; Type: CONSTRAINT; Schema: public; Owner: arunda
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (id);


--
-- Name: endangered_animals endangered_animals_pkey; Type: CONSTRAINT; Schema: public; Owner: arunda
--

ALTER TABLE ONLY public.endangered_animals
    ADD CONSTRAINT endangered_animals_pkey PRIMARY KEY (id);


--
-- Name: sightings sightings_pkey; Type: CONSTRAINT; Schema: public; Owner: arunda
--

ALTER TABLE ONLY public.sightings
    ADD CONSTRAINT sightings_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

