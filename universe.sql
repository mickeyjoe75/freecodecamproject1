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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    description character varying(60),
    name character varying(60) NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    star_id integer,
    colour character varying NOT NULL,
    circuference integer,
    volume numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    dist_frm_earth integer,
    radius integer,
    has_life boolean,
    planet_id integer,
    circumference numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    dist_frm_earth integer,
    radius integer,
    is_spherical boolean,
    galaxy_name text NOT NULL,
    circumference numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    galaxy_id integer,
    colour character varying NOT NULL,
    circuference integer,
    volume numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'adfd', 'sdfd');
INSERT INTO public.description VALUES (2, 'fgadfd', 'sfgdfd');
INSERT INTO public.description VALUES (3, 'fgfgadfd', 'sffgggdfd');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'supernova', 1, 'green', 10000, 3000);
INSERT INTO public.galaxy VALUES (2, 'snova', 1, 'red', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'nova', 2, 'yellow', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'milkyway', 1, 'lilly', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'nova', 2, 'pink', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'miway', 1, 'kanky', NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'nova', 2, 'cunty', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'fsdfsdf', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'fsdf', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'fpksdf', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'fs', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'fihhhs', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'fisrfdv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'fidgfhsrfdv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'fidgfhsrfdfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'fifgdgfhsrfdfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'srfdfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'sdsfrfdfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'sddfsfrfdfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'sdfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'shhhdfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'sbghhhdfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'dsbghhhdfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'slhdfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'slllllllllhdfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'sllldfhv', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'sllhhldfhv', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, NULL, 'nova', NULL, 1);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, NULL, 'milky', NULL, 2);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, 'tit', NULL, 2);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, 'kink', NULL, 3);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, 'titt', NULL, 2);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, 'ggkink', NULL, 3);
INSERT INTO public.planet VALUES (68, NULL, NULL, NULL, NULL, 'tithht', NULL, 2);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, 'ggkhhink', NULL, 3);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, 'tidgthht', NULL, 2);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, 'gdggkhhink', NULL, 3);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, 'tidgthhtd', NULL, 2);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, 'gdsdfggkhhink', NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'leo', 1, 'green', NULL, NULL);
INSERT INTO public.star VALUES (2, 'cancer', 2, 'red', NULL, NULL);
INSERT INTO public.star VALUES (3, 'virgo', 3, 'black', NULL, NULL);
INSERT INTO public.star VALUES (4, 'cancer', 3, 'white', NULL, NULL);
INSERT INTO public.star VALUES (5, 'virgo', 4, 'pale', NULL, NULL);
INSERT INTO public.star VALUES (6, 'cancer', 3, 'pink', NULL, NULL);
INSERT INTO public.star VALUES (7, 'virgo', 4, 'vagina', NULL, NULL);


--
-- Name: description desc_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT desc_unique UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_colour_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_colour_key UNIQUE (colour);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: planet glaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT glaxy_unique UNIQUE (galaxy_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_colour_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_colour_key UNIQUE (colour);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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
-- PostgreSQL database dump complete
--

