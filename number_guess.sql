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
    game_id integer NOT NULL,
    guesses integer,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 1);
INSERT INTO public.games VALUES (2, 1, 1);
INSERT INTO public.games VALUES (3, 4, 1);
INSERT INTO public.games VALUES (4, 6, 2);
INSERT INTO public.games VALUES (5, 3, 2);
INSERT INTO public.games VALUES (6, 134, 3);
INSERT INTO public.games VALUES (7, 20, 3);
INSERT INTO public.games VALUES (8, 813, 4);
INSERT INTO public.games VALUES (9, 706, 4);
INSERT INTO public.games VALUES (10, 537, 3);
INSERT INTO public.games VALUES (11, 168, 3);
INSERT INTO public.games VALUES (12, 144, 3);
INSERT INTO public.games VALUES (13, 428, 5);
INSERT INTO public.games VALUES (14, 445, 5);
INSERT INTO public.games VALUES (15, 716, 6);
INSERT INTO public.games VALUES (16, 793, 6);
INSERT INTO public.games VALUES (17, 982, 5);
INSERT INTO public.games VALUES (18, 943, 5);
INSERT INTO public.games VALUES (19, 428, 5);
INSERT INTO public.games VALUES (20, 291, 7);
INSERT INTO public.games VALUES (21, 659, 7);
INSERT INTO public.games VALUES (22, 456, 8);
INSERT INTO public.games VALUES (23, 979, 8);
INSERT INTO public.games VALUES (24, 472, 7);
INSERT INTO public.games VALUES (25, 610, 7);
INSERT INTO public.games VALUES (26, 784, 7);
INSERT INTO public.games VALUES (27, 901, 9);
INSERT INTO public.games VALUES (28, 670, 9);
INSERT INTO public.games VALUES (29, 111, 10);
INSERT INTO public.games VALUES (30, 325, 10);
INSERT INTO public.games VALUES (31, 585, 9);
INSERT INTO public.games VALUES (32, 66, 9);
INSERT INTO public.games VALUES (33, 336, 9);
INSERT INTO public.games VALUES (34, 6, 1);
INSERT INTO public.games VALUES (35, 10, 1);
INSERT INTO public.games VALUES (36, 836, 11);
INSERT INTO public.games VALUES (37, 344, 11);
INSERT INTO public.games VALUES (38, 92, 12);
INSERT INTO public.games VALUES (39, 629, 12);
INSERT INTO public.games VALUES (40, 316, 11);
INSERT INTO public.games VALUES (41, 948, 11);
INSERT INTO public.games VALUES (42, 10, 11);
INSERT INTO public.games VALUES (43, 82, 13);
INSERT INTO public.games VALUES (44, 985, 13);
INSERT INTO public.games VALUES (45, 790, 14);
INSERT INTO public.games VALUES (46, 959, 14);
INSERT INTO public.games VALUES (47, 860, 13);
INSERT INTO public.games VALUES (48, 387, 13);
INSERT INTO public.games VALUES (49, 433, 13);
INSERT INTO public.games VALUES (50, 455, 15);
INSERT INTO public.games VALUES (51, 828, 15);
INSERT INTO public.games VALUES (52, 118, 16);
INSERT INTO public.games VALUES (53, 413, 16);
INSERT INTO public.games VALUES (54, 552, 15);
INSERT INTO public.games VALUES (55, 539, 15);
INSERT INTO public.games VALUES (56, 980, 15);
INSERT INTO public.games VALUES (57, 21, 17);
INSERT INTO public.games VALUES (58, 274, 17);
INSERT INTO public.games VALUES (59, 204, 18);
INSERT INTO public.games VALUES (60, 542, 18);
INSERT INTO public.games VALUES (61, 214, 17);
INSERT INTO public.games VALUES (62, 605, 17);
INSERT INTO public.games VALUES (63, 25, 17);
INSERT INTO public.games VALUES (64, 108, 19);
INSERT INTO public.games VALUES (65, 185, 19);
INSERT INTO public.games VALUES (66, 130, 20);
INSERT INTO public.games VALUES (67, 87, 20);
INSERT INTO public.games VALUES (68, 791, 19);
INSERT INTO public.games VALUES (69, 649, 19);
INSERT INTO public.games VALUES (70, 262, 19);
INSERT INTO public.games VALUES (71, 11, 2);
INSERT INTO public.games VALUES (72, 825, 21);
INSERT INTO public.games VALUES (73, 434, 21);
INSERT INTO public.games VALUES (74, 958, 22);
INSERT INTO public.games VALUES (75, 892, 22);
INSERT INTO public.games VALUES (76, 514, 21);
INSERT INTO public.games VALUES (77, 684, 21);
INSERT INTO public.games VALUES (78, 454, 21);
INSERT INTO public.games VALUES (79, 586, 23);
INSERT INTO public.games VALUES (80, 908, 23);
INSERT INTO public.games VALUES (81, 404, 24);
INSERT INTO public.games VALUES (82, 614, 24);
INSERT INTO public.games VALUES (83, 418, 23);
INSERT INTO public.games VALUES (84, 942, 23);
INSERT INTO public.games VALUES (85, 372, 23);
INSERT INTO public.games VALUES (86, 365, 25);
INSERT INTO public.games VALUES (87, 280, 25);
INSERT INTO public.games VALUES (88, 606, 26);
INSERT INTO public.games VALUES (89, 279, 26);
INSERT INTO public.games VALUES (90, 338, 25);
INSERT INTO public.games VALUES (91, 948, 25);
INSERT INTO public.games VALUES (92, 563, 25);
INSERT INTO public.games VALUES (93, 697, 27);
INSERT INTO public.games VALUES (94, 355, 27);
INSERT INTO public.games VALUES (95, 506, 28);
INSERT INTO public.games VALUES (96, 52, 28);
INSERT INTO public.games VALUES (97, 701, 27);
INSERT INTO public.games VALUES (98, 858, 27);
INSERT INTO public.games VALUES (99, 574, 27);
INSERT INTO public.games VALUES (100, 10, 1);
INSERT INTO public.games VALUES (101, 32, 29);
INSERT INTO public.games VALUES (102, 29, 29);
INSERT INTO public.games VALUES (103, 677, 30);
INSERT INTO public.games VALUES (104, 940, 30);
INSERT INTO public.games VALUES (105, 109, 29);
INSERT INTO public.games VALUES (106, 15, 29);
INSERT INTO public.games VALUES (107, 348, 29);
INSERT INTO public.games VALUES (108, 613, 31);
INSERT INTO public.games VALUES (109, 747, 31);
INSERT INTO public.games VALUES (110, 407, 32);
INSERT INTO public.games VALUES (111, 686, 32);
INSERT INTO public.games VALUES (112, 356, 31);
INSERT INTO public.games VALUES (113, 724, 31);
INSERT INTO public.games VALUES (114, 795, 31);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'apple');
INSERT INTO public.users VALUES (2, 'notapple');
INSERT INTO public.users VALUES (3, 'user_1712761930432');
INSERT INTO public.users VALUES (4, 'user_1712761930431');
INSERT INTO public.users VALUES (5, 'user_1712762034953');
INSERT INTO public.users VALUES (6, 'user_1712762034952');
INSERT INTO public.users VALUES (7, 'user_1712762075908');
INSERT INTO public.users VALUES (8, 'user_1712762075907');
INSERT INTO public.users VALUES (9, 'user_1712762081843');
INSERT INTO public.users VALUES (10, 'user_1712762081842');
INSERT INTO public.users VALUES (11, 'user_1712762239072');
INSERT INTO public.users VALUES (12, 'user_1712762239071');
INSERT INTO public.users VALUES (13, 'user_1712762260237');
INSERT INTO public.users VALUES (14, 'user_1712762260236');
INSERT INTO public.users VALUES (15, 'user_1712762339945');
INSERT INTO public.users VALUES (16, 'user_1712762339944');
INSERT INTO public.users VALUES (17, 'user_1712762387941');
INSERT INTO public.users VALUES (18, 'user_1712762387940');
INSERT INTO public.users VALUES (19, 'user_1712762482050');
INSERT INTO public.users VALUES (20, 'user_1712762482049');
INSERT INTO public.users VALUES (21, 'user_1712762725076');
INSERT INTO public.users VALUES (22, 'user_1712762725075');
INSERT INTO public.users VALUES (23, 'user_1712762764044');
INSERT INTO public.users VALUES (24, 'user_1712762764043');
INSERT INTO public.users VALUES (25, 'user_1712762911942');
INSERT INTO public.users VALUES (26, 'user_1712762911941');
INSERT INTO public.users VALUES (27, 'user_1712763002101');
INSERT INTO public.users VALUES (28, 'user_1712763002100');
INSERT INTO public.users VALUES (29, 'user_1712763199387');
INSERT INTO public.users VALUES (30, 'user_1712763199386');
INSERT INTO public.users VALUES (31, 'user_1712763247910');
INSERT INTO public.users VALUES (32, 'user_1712763247909');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 114, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 32, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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

