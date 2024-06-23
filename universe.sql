--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    description text NOT NULL,
    age_in_millions_of_years numeric(3,1) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric(3,1) NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: lorem; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lorem (
    lorem_id integer NOT NULL,
    name character varying(20),
    description character varying(20) NOT NULL
);


ALTER TABLE public.lorem OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_earth numeric NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric(3,1) NOT NULL,
    is_spherical boolean NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years numeric(3,1) NOT NULL,
    star_id integer NOT NULL,
    area integer NOT NULL,
    volume integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric(3,1) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric(3,1) NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral galaxy containing our solar system', 10.0, false, true, 0.0, 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 'Largest galaxy of the Local Group', 20.0, false, true, 25.0, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Spiral galaxy, part of the Local Group', 30.0, false, true, 30.0, 'Triangulum');
INSERT INTO public.galaxy VALUES (4, 'Interacting grand-design spiral galaxy', 40.0, false, true, 23.0, 'Whirlpool');
INSERT INTO public.galaxy VALUES (5, 'Unbarred spiral galaxy', 50.0, false, true, 29.0, 'Sombrero');
INSERT INTO public.galaxy VALUES (6, 'Face-on spiral galaxy', 60.0, false, true, 21.0, 'Pinwheel');


--
-- Data for Name: lorem; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lorem VALUES (1, 'lorem1', 'lorem');
INSERT INTO public.lorem VALUES (2, 'lorem2', 'lorem');
INSERT INTO public.lorem VALUES (3, 'lorem3', 'lorem');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Moon', 'Earths natural satellite', false, true, 4.5, 0.0);
INSERT INTO public.moon VALUES (2, 4, 'Phobos', 'Marss moon', false, true, 4.5, 7.8);
INSERT INTO public.moon VALUES (3, 4, 'Deimos', 'Marss moon', false, true, 4.5, 7.8);
INSERT INTO public.moon VALUES (4, 5, 'Io', 'Jupiters moon', false, true, 4.5, 6.0);
INSERT INTO public.moon VALUES (5, 5, 'Europa', 'Jupiters moon', false, true, 4.5, 6.0);
INSERT INTO public.moon VALUES (6, 5, 'Ganymede', 'Jupiters largest moon', false, true, 4.5, 6.0);
INSERT INTO public.moon VALUES (7, 5, 'Callisto', 'Jupiters moon', false, true, 4.5, 6.0);
INSERT INTO public.moon VALUES (8, 6, 'Titan', 'Saturns largest moon', false, true, 4.5, 9.0);
INSERT INTO public.moon VALUES (9, 6, 'Enceladus', 'Saturns moon', false, true, 4.5, 9.0);
INSERT INTO public.moon VALUES (10, 6, 'Mimas', 'Saturns moon', false, true, 4.5, 9.0);
INSERT INTO public.moon VALUES (11, 8, 'Triton', 'Neptunes largest moon', false, true, 4.5, 5.0);
INSERT INTO public.moon VALUES (12, 8, 'Charon', 'Plutos largest moon', false, true, 4.5, 6.0);
INSERT INTO public.moon VALUES (13, 7, 'Oberon', 'Uranuss moon', false, true, 4.5, 7.0);
INSERT INTO public.moon VALUES (14, 7, 'Titania', 'Uranuss moon', false, true, 4.5, 7.0);
INSERT INTO public.moon VALUES (15, 6, 'Rhea', 'Saturns moon', false, true, 4.5, 9.0);
INSERT INTO public.moon VALUES (16, 6, 'Iapetus', 'Saturns moon', false, true, 4.5, 9.0);
INSERT INTO public.moon VALUES (17, 6, 'Dione', 'Saturns moon', false, true, 4.5, 9.0);
INSERT INTO public.moon VALUES (18, 6, 'Tethys', 'Saturns moon', false, true, 4.5, 9.0);
INSERT INTO public.moon VALUES (19, 7, 'Umbriel', 'Uranuss moon', false, true, 4.5, 7.0);
INSERT INTO public.moon VALUES (20, 7, 'Ariel', 'Uranuss moon', false, true, 4.5, 7.0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Smallest planet in our solar system', 7.7, true, false, 4.5, 1, 5, 6, 'Mercury');
INSERT INTO public.planet VALUES (3, 'Earths "sister planet"', 8.1, true, false, 4.5, 1, 6, 9, 'Venus');
INSERT INTO public.planet VALUES (4, 'Our home planet', 0.0, true, true, 4.5, 1, 5, 10, 'Earth');
INSERT INTO public.planet VALUES (5, 'The Red Planet', 7.8, true, false, 4.5, 1, 4, 5, 'Mars');
INSERT INTO public.planet VALUES (6, 'Largest planet in our solar system', 6.0, true, false, 4.5, 1, 6, 13, 'Jupiter');
INSERT INTO public.planet VALUES (7, 'Known for its ring system', 9.0, true, false, 4.5, 1, 6, 10, 'Saturn');
INSERT INTO public.planet VALUES (8, 'Ice giant planet', 7.0, true, false, 4.5, 1, 5, 8, 'Uranus');
INSERT INTO public.planet VALUES (9, 'Outermost ice giant', 5.0, true, false, 4.5, 1, 5, 7, 'Neptune');
INSERT INTO public.planet VALUES (10, 'Exoplanet in the Proxima Centauri system', 4.2, true, false, 4.5, 2, 5, 8, 'Proxima b');
INSERT INTO public.planet VALUES (11, 'Exoplanet in the Proxima Centauri system', 4.2, true, false, 4.5, 2, 5, 8, 'Proxima c');
INSERT INTO public.planet VALUES (12, 'Super-Earth exoplanet', 9.0, true, false, 6.0, 3, 6, 11, 'Kepler-452b');
INSERT INTO public.planet VALUES (13, 'Hot Jupiter exoplanet', 7.3, true, false, 5.6, 3, 7, 13, 'HD 209458 b');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Our solar systems star', 4.6, false, true, 0.0, 1, 'Sun');
INSERT INTO public.star VALUES (2, 'Closest star system to the Sun', 5.5, false, true, 4.4, 1, 'Alpha Centauri');
INSERT INTO public.star VALUES (3, 'Red supergiant in Orion', 8.6, false, true, 6.0, 1, 'Betelgeuse');
INSERT INTO public.star VALUES (4, 'Brightest star in the night sky', 0.3, false, true, 8.6, 1, 'Sirius');
INSERT INTO public.star VALUES (5, 'Closest star to the Sun', 4.5, false, true, 4.2, 1, 'Proxima Centauri');
INSERT INTO public.star VALUES (6, 'Bright star in the Lyra constellation', 0.5, false, true, 7.0, 1, 'Vega');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: lorem lorem_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lorem
    ADD CONSTRAINT lorem_name_key UNIQUE (name);


--
-- Name: lorem lorem_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lorem
    ADD CONSTRAINT lorem_pkey PRIMARY KEY (lorem_id);


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

