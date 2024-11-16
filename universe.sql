--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Debian 14.12-1.pgdg120+1)
-- Dumped by pg_dump version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)

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

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


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
    id integer NOT NULL,
    name character varying(255),
    number_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    id integer NOT NULL,
    name character varying(255),
    planet_id integer,
    has_atmosphere boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    id integer NOT NULL,
    name character varying(255),
    star_id integer,
    is_habitable boolean,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: space_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_station (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.space_station OWNER TO freecodecamp;

--
-- Name: space_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_station_id_seq OWNER TO freecodecamp;

--
-- Name: space_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_station_id_seq OWNED BY public.space_station.id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    id integer NOT NULL,
    name character varying(255),
    galaxy_id integer,
    age_in_millions_of_years numeric(16,1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: space_station id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station ALTER COLUMN id SET DEFAULT nextval('public.space_station_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (3, 'Pegasus', NULL);
INSERT INTO public.galaxy VALUES (4, 'Ida', NULL);
INSERT INTO public.galaxy VALUES (5, 'Othala', NULL);
INSERT INTO public.galaxy VALUES (6, 'Ori Galaxy', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, NULL);
INSERT INTO public.moon VALUES (2, 'Edfu', 5, NULL);
INSERT INTO public.moon VALUES (3, 'Nuturo', 5, NULL);
INSERT INTO public.moon VALUES (4, 'Jerbaas', 6, NULL);
INSERT INTO public.moon VALUES (5, 'Metis', 4, NULL);
INSERT INTO public.moon VALUES (6, 'Thebe', 4, NULL);
INSERT INTO public.moon VALUES (7, 'Io', 4, NULL);
INSERT INTO public.moon VALUES (8, 'Europa', 4, NULL);
INSERT INTO public.moon VALUES (9, 'Callisto', 4, NULL);
INSERT INTO public.moon VALUES (10, 'Ledo', 4, NULL);
INSERT INTO public.moon VALUES (11, 'Dia', 4, NULL);
INSERT INTO public.moon VALUES (12, 'Carpo', 4, NULL);
INSERT INTO public.moon VALUES (13, 'Helike', 4, NULL);
INSERT INTO public.moon VALUES (14, 'Arche', 4, NULL);
INSERT INTO public.moon VALUES (15, 'Herse', 4, NULL);
INSERT INTO public.moon VALUES (16, 'Isonoe', 4, NULL);
INSERT INTO public.moon VALUES (17, 'Kale', 4, NULL);
INSERT INTO public.moon VALUES (18, 'Aitne', 4, NULL);
INSERT INTO public.moon VALUES (19, 'Carme', 4, NULL);
INSERT INTO public.moon VALUES (20, 'Sinope', 4, NULL);
INSERT INTO public.moon VALUES (21, 'Aoede', 4, NULL);
INSERT INTO public.moon VALUES (22, 'Kore', 4, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Jupiter', 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Abydos', 2, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Chulak', 4, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Lantea', 5, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Asuras', 6, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Othala', 7, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Hala', 8, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Orilla', 8, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Celestis', 10, NULL, NULL);


--
-- Data for Name: space_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_station VALUES (1, 'Midway Station');
INSERT INTO public.space_station VALUES (2, 'Hasara Station');
INSERT INTO public.space_station VALUES (3, 'Citadel');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, NULL);
INSERT INTO public.star VALUES (2, 'Nut', 1, NULL);
INSERT INTO public.star VALUES (3, 'Chaaporis', 1, NULL);
INSERT INTO public.star VALUES (4, 'Dennal', 1, NULL);
INSERT INTO public.star VALUES (5, 'Lantean Star', 3, NULL);
INSERT INTO public.star VALUES (6, 'Asuran', 3, NULL);
INSERT INTO public.star VALUES (7, 'Othala''s Star', 4, NULL);
INSERT INTO public.star VALUES (8, 'Hala''s Sun', 5, NULL);
INSERT INTO public.star VALUES (9, 'Orilla''s Sun', 5, NULL);
INSERT INTO public.star VALUES (10, 'Celestis Sun', 6, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: space_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_station_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 10, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (id);


--
-- Name: space_station space_station_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_pkey PRIMARY KEY (id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(id);


--
-- PostgreSQL database dump complete
--
