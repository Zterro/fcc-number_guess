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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    games_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.games_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games games_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN games_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 11, 1);
INSERT INTO public.games VALUES (2, 615, 2);
INSERT INTO public.games VALUES (3, 266, 2);
INSERT INTO public.games VALUES (4, 388, 3);
INSERT INTO public.games VALUES (5, 991, 3);
INSERT INTO public.games VALUES (6, 975, 2);
INSERT INTO public.games VALUES (7, 935, 2);
INSERT INTO public.games VALUES (8, 18, 2);
INSERT INTO public.games VALUES (9, 347, 4);
INSERT INTO public.games VALUES (10, 91, 4);
INSERT INTO public.games VALUES (11, 64, 5);
INSERT INTO public.games VALUES (12, 769, 5);
INSERT INTO public.games VALUES (13, 743, 4);
INSERT INTO public.games VALUES (14, 834, 4);
INSERT INTO public.games VALUES (15, 692, 4);
INSERT INTO public.games VALUES (16, 804, 6);
INSERT INTO public.games VALUES (17, 38, 6);
INSERT INTO public.games VALUES (18, 642, 7);
INSERT INTO public.games VALUES (19, 834, 7);
INSERT INTO public.games VALUES (20, 636, 6);
INSERT INTO public.games VALUES (21, 953, 6);
INSERT INTO public.games VALUES (22, 605, 6);
INSERT INTO public.games VALUES (23, 80, 8);
INSERT INTO public.games VALUES (24, 541, 8);
INSERT INTO public.games VALUES (25, 691, 9);
INSERT INTO public.games VALUES (26, 537, 9);
INSERT INTO public.games VALUES (27, 118, 8);
INSERT INTO public.games VALUES (28, 694, 8);
INSERT INTO public.games VALUES (29, 102, 8);
INSERT INTO public.games VALUES (30, 165, 10);
INSERT INTO public.games VALUES (31, 607, 10);
INSERT INTO public.games VALUES (32, 762, 11);
INSERT INTO public.games VALUES (33, 47, 11);
INSERT INTO public.games VALUES (34, 978, 10);
INSERT INTO public.games VALUES (35, 167, 10);
INSERT INTO public.games VALUES (36, 847, 10);
INSERT INTO public.games VALUES (37, 214, 12);
INSERT INTO public.games VALUES (38, 678, 12);
INSERT INTO public.games VALUES (39, 107, 13);
INSERT INTO public.games VALUES (40, 967, 13);
INSERT INTO public.games VALUES (41, 676, 12);
INSERT INTO public.games VALUES (42, 298, 12);
INSERT INTO public.games VALUES (43, 544, 12);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'jose');
INSERT INTO public.users VALUES (2, 'user_1712087340600');
INSERT INTO public.users VALUES (3, 'user_1712087340599');
INSERT INTO public.users VALUES (4, 'user_1712087742363');
INSERT INTO public.users VALUES (5, 'user_1712087742362');
INSERT INTO public.users VALUES (6, 'user_1712087855490');
INSERT INTO public.users VALUES (7, 'user_1712087855489');
INSERT INTO public.users VALUES (8, 'user_1712087879436');
INSERT INTO public.users VALUES (9, 'user_1712087879435');
INSERT INTO public.users VALUES (10, 'user_1712087890049');
INSERT INTO public.users VALUES (11, 'user_1712087890048');
INSERT INTO public.users VALUES (12, 'user_1712087910230');
INSERT INTO public.users VALUES (13, 'user_1712087910229');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 43, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (games_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

