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
-- Name: userdata; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.userdata (
    username character varying(22),
    guesses integer
);


ALTER TABLE public.userdata OWNER TO freecodecamp;

--
-- Data for Name: userdata; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.userdata VALUES ('hugues', 3);
INSERT INTO public.userdata VALUES ('bright', 8);
INSERT INTO public.userdata VALUES ('bright', 10);
INSERT INTO public.userdata VALUES ('user_1710699169759', 694);
INSERT INTO public.userdata VALUES ('user_1710699169759', 612);
INSERT INTO public.userdata VALUES ('user_1710699169758', 64);
INSERT INTO public.userdata VALUES ('user_1710699169758', 184);
INSERT INTO public.userdata VALUES ('user_1710699169759', 816);
INSERT INTO public.userdata VALUES ('user_1710699169759', 914);
INSERT INTO public.userdata VALUES ('user_1710699169759', 403);
INSERT INTO public.userdata VALUES ('user_1710699321338', 923);
INSERT INTO public.userdata VALUES ('user_1710699321338', 362);
INSERT INTO public.userdata VALUES ('user_1710699321337', 707);
INSERT INTO public.userdata VALUES ('user_1710699321337', 353);
INSERT INTO public.userdata VALUES ('user_1710699321338', 152);
INSERT INTO public.userdata VALUES ('user_1710699321338', 622);
INSERT INTO public.userdata VALUES ('user_1710699321338', 614);
INSERT INTO public.userdata VALUES ('user_1710699369869', 608);
INSERT INTO public.userdata VALUES ('user_1710699369869', 747);
INSERT INTO public.userdata VALUES ('user_1710699369868', 757);
INSERT INTO public.userdata VALUES ('user_1710699369868', 585);
INSERT INTO public.userdata VALUES ('user_1710699369869', 148);
INSERT INTO public.userdata VALUES ('user_1710699369869', 671);
INSERT INTO public.userdata VALUES ('user_1710699369869', 660);


--
-- PostgreSQL database dump complete
--

