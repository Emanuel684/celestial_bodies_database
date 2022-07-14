--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    size_in_km integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(20)
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    size_in_km integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    size_in_km integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(20)
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    size_in_km integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'Galaxia que alberga a la Tierra.', true, false, 1.25, 1245, 20);
INSERT INTO public.galaxy VALUES (2, 'Andromeda III', 'Satelite de Andromeda', false, false, 1.25, 4445, 15);
INSERT INTO public.galaxy VALUES (3, 'LGS 3', 'Satelite de M33', false, false, 1.25, 4445, 15);
INSERT INTO public.galaxy VALUES (4, 'Galaxia de Andromeda(M31)', 'La galaxia mas grande del Grupo Local, con al menos 19 galaxias satelite.', false, false, 1.25, 4445, 15);
INSERT INTO public.galaxy VALUES (5, 'Galaxia del Triangulo(M33)', 'El objeto mas distante visible(con dificultad) para el ojo humano sin ayuda', false, false, 1.25, 4445, 15);
INSERT INTO public.galaxy VALUES (6, 'Enana de Tucana (dE5)', 'Miembro aislado del grupo;una galaxia <<primordial>>', false, false, 1.25, 4445, 15);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Gaseoso', NULL);
INSERT INTO public.galaxy_types VALUES (2, 'Terrestres', NULL);
INSERT INTO public.galaxy_types VALUES (3, 'Joviano', NULL);
INSERT INTO public.galaxy_types VALUES (4, 'Inferior', NULL);
INSERT INTO public.galaxy_types VALUES (5, 'Superior', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'YZ Ceti', 'YZ Ceti', false, false, 1.12, 2345, 12, 1);
INSERT INTO public.moon VALUES (2, 'Luna', 'Luna', false, false, 1.12, 2345, 12, 3);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Deimos', false, false, 1.12, 2345, 12, 6);
INSERT INTO public.moon VALUES (4, 'Fobos', 'Fobos', false, false, 1.12, 2345, 12, 2);
INSERT INTO public.moon VALUES (5, 'Aegir', 'Aegir', false, false, 1.12, 2345, 12, 4);
INSERT INTO public.moon VALUES (6, 'Belinda', 'Belinda', false, false, 1.12, 2345, 12, 9);
INSERT INTO public.moon VALUES (7, 'Trinculo', 'Trinculo', false, false, 1.12, 2345, 12, 12);
INSERT INTO public.moon VALUES (8, 'Despina', 'Despina', false, false, 1.12, 2345, 12, 11);
INSERT INTO public.moon VALUES (9, 'Disnomia', 'Disnomia', false, false, 1.12, 2345, 12, 10);
INSERT INTO public.moon VALUES (10, 'Bianca', 'Bianca', false, false, 1.12, 2345, 12, 8);
INSERT INTO public.moon VALUES (11, 'Halimede', 'Halimede', false, false, 1.12, 2345, 12, 7);
INSERT INTO public.moon VALUES (12, 'Cupido', 'Cupido', false, false, 1.12, 2345, 12, 6);
INSERT INTO public.moon VALUES (13, 'Stefano', 'Stefano', false, false, 1.12, 2345, 12, 5);
INSERT INTO public.moon VALUES (14, 'Sicorax', 'Sicorax', false, false, 1.12, 2345, 12, 4);
INSERT INTO public.moon VALUES (15, 'Ferdinando', 'Ferdinando', false, false, 1.12, 2345, 12, 3);
INSERT INTO public.moon VALUES (16, 'Metone', 'Metone', false, false, 1.12, 2345, 12, 2);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Umbriel', false, false, 1.12, 2345, 12, 1);
INSERT INTO public.moon VALUES (18, 'Psamate', 'Psamate', false, false, 1.12, 2345, 12, 9);
INSERT INTO public.moon VALUES (19, 'Siarnaq', 'Siarnaq', false, false, 1.12, 2345, 12, 10);
INSERT INTO public.moon VALUES (20, 'Epimeteo', 'Epimeteo', false, false, 1.12, 2345, 12, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 'Mercurio', false, false, 1.12, 2345, 12, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus', false, false, 1.12, 2345, 12, 2);
INSERT INTO public.planet VALUES (3, 'Tierra', 'Tierra', true, true, 1.12, 2345, 12, 3);
INSERT INTO public.planet VALUES (4, 'Marte', 'Marte', false, true, 1.12, 2345, 12, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter', false, true, 1.12, 2345, 12, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', 'Saturno', false, true, 1.12, 2345, 12, 1);
INSERT INTO public.planet VALUES (7, 'Urano', 'Urano', false, true, 1.12, 2345, 12, 1);
INSERT INTO public.planet VALUES (8, 'Neptuno', 'Neptuno', false, true, 1.12, 2345, 12, 4);
INSERT INTO public.planet VALUES (9, 'Eris', 'Eris', false, true, 1.12, 2345, 12, 4);
INSERT INTO public.planet VALUES (10, 'Makemake', 'Makemake', false, true, 1.12, 2345, 12, 3);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Haumea', false, true, 1.12, 2345, 12, 3);
INSERT INTO public.planet VALUES (12, 'Ceres', 'Ceres', false, true, 1.12, 2345, 12, 3);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Superior', NULL);
INSERT INTO public.planet_types VALUES (2, 'Inferior', NULL);
INSERT INTO public.planet_types VALUES (3, 'Joviano', NULL);
INSERT INTO public.planet_types VALUES (4, 'Terrestres', NULL);
INSERT INTO public.planet_types VALUES (5, 'Gaseoso', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alfa Tucanae', 'Estrella binaria astrometrica', false, false, 1.25, 4445, 15, 6);
INSERT INTO public.star VALUES (2, 'Luhman 16', 'Luhman 16A and Luhman 16B', false, false, 1.36, 3456, 29, 4);
INSERT INTO public.star VALUES (3, 'Sirio', 'Sirio A and Sirio B', false, false, 1.69, 4123, 21, 5);
INSERT INTO public.star VALUES (4, 'Procyon', 'Procyon A and Procyon B', false, false, 1.12, 2345, 12, 2);
INSERT INTO public.star VALUES (5, 'Epsilon Indi', 'Epsilon Indi', false, false, 1.12, 2345, 12, 1);
INSERT INTO public.star VALUES (6, 'GJ 1061', 'GJ 1061', false, false, 1.12, 2345, 12, 1);
INSERT INTO public.star VALUES (7, 'YZ Ceti', 'YZ Ceti', false, false, 1.12, 2345, 12, 1);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 5, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 20, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 12, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 5, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

