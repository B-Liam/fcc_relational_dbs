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
    description text,
    name character varying(40) NOT NULL,
    number_of_stars integer,
    contains_black_hole boolean NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description text,
    name character varying(40) NOT NULL,
    made_of_cheese boolean,
    color character varying(30),
    planet_id integer NOT NULL
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
    description text,
    name character varying(40) NOT NULL,
    size_compared_earth numeric(2,1),
    number_of_humans integer,
    number_of_rings integer,
    star_id integer NOT NULL
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
    description text,
    name character varying(40) NOT NULL,
    lumens integer,
    viewable_from_earth boolean,
    galaxy_id integer NOT NULL
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
-- Name: wildlife; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.wildlife (
    wildlife_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.wildlife OWNER TO freecodecamp;

--
-- Name: wildlife_wildlife_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.wildlife_wildlife_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wildlife_wildlife_id_seq OWNER TO freecodecamp;

--
-- Name: wildlife_wildlife_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.wildlife_wildlife_id_seq OWNED BY public.wildlife.wildlife_id;


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
-- Name: wildlife wildlife_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wildlife ALTER COLUMN wildlife_id SET DEFAULT nextval('public.wildlife_wildlife_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Whipped centre covered in light chocolate.', 'Milky Way', 6, true);
INSERT INTO public.galaxy VALUES (2, 'Mixed box of chocs, way better than Heroes.', 'Celebrations', 1, false);
INSERT INTO public.galaxy VALUES (3, 'Disappointing, but what you would expect from a Kraft company.', 'Heroes', 1, false);
INSERT INTO public.galaxy VALUES (4, 'A legacy collection with a memorable advert.', 'Black Magic', 1, false);
INSERT INTO public.galaxy VALUES (5, 'A Christmas favourite for the family.', 'Quality Street', 1, true);
INSERT INTO public.galaxy VALUES (6, 'For people who want a big bar irrespective of the quality.', 'Yorky', 1, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The cheese smelt so bad we never went back!', 'The Moon', true, 'Light Grey', 1);
INSERT INTO public.moon VALUES (2, NULL, 'Actinium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, NULL, 'Aluminium', NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, NULL, 'Americium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, NULL, 'Boron', NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, NULL, 'Bromine', NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, NULL, 'Cadmium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, NULL, 'Calcium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, NULL, 'Copper', NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, NULL, 'Curium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, NULL, 'Dubnium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, NULL, 'Erbium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, NULL, 'Fluorine', NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, NULL, 'Francium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, NULL, 'Gallium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, NULL, 'Gold', NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, NULL, 'Helium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, NULL, 'Indium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, NULL, 'Hydrogen', NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, NULL, 'Iodine', NULL, NULL, 1);
INSERT INTO public.moon VALUES (21, NULL, 'Iron', NULL, NULL, 1);
INSERT INTO public.moon VALUES (22, NULL, 'Lanthanum', NULL, NULL, 1);
INSERT INTO public.moon VALUES (23, NULL, 'Lead', NULL, NULL, 1);
INSERT INTO public.moon VALUES (24, NULL, 'Lithium', NULL, NULL, 1);
INSERT INTO public.moon VALUES (25, NULL, 'Manganese', NULL, NULL, 1);
INSERT INTO public.moon VALUES (26, NULL, 'Mercury', NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'I am confused about the difference between a planet and a star, and whether chocolate counts as a celestial body.', 'Earth', 1.9, 800, 0, 1);
INSERT INTO public.planet VALUES (2, NULL, 'Mars', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, NULL, 'Flake', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, NULL, 'Twix', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, NULL, 'Crunchy', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (6, NULL, 'Topic', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, NULL, 'Bourneville', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (8, NULL, 'Venus', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, NULL, 'Neptune', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, NULL, 'Uranus', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (11, NULL, 'Pluto', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (12, NULL, 'Jupiter', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (13, NULL, 'Saturn', NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Where I live, and most probably where you live too.', 'Earth', 0, false, 1);
INSERT INTO public.star VALUES (2, 'Choc that does not get fingers dirty thanks to a shiney shell.', 'Minstrels', 5, false, 2);
INSERT INTO public.star VALUES (3, 'Not the best tasting, but what do you expect from Kraft.', 'Double Decker', 15, true, 3);
INSERT INTO public.star VALUES (4, 'Delightful. Enjoy this one, some of the others are a little ropey.', 'Pure Black Magic', 0, true, 4);
INSERT INTO public.star VALUES (5, 'Delicious, but careful with your dentures.', 'Toffee', 50, false, 5);
INSERT INTO public.star VALUES (6, 'A good choc for a cold day to provide a sudden shuddering burst of energy followed by a massive dip in concentration.', 'Pure Milk', 30, true, 6);


--
-- Data for Name: wildlife; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.wildlife VALUES (1, 'Humans', 'Good at using up resources');
INSERT INTO public.wildlife VALUES (2, 'Bacteria', 'Found inside and outside humans');
INSERT INTO public.wildlife VALUES (3, 'Fungi', 'Good at entertaining humans.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: wildlife_wildlife_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.wildlife_wildlife_id_seq', 3, true);


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
-- Name: wildlife wildlife_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wildlife
    ADD CONSTRAINT wildlife_name_key UNIQUE (name);


--
-- Name: wildlife wildlife_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wildlife
    ADD CONSTRAINT wildlife_pkey PRIMARY KEY (wildlife_id);


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

