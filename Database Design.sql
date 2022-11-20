--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2021-03-25 15:37:09 EDT

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

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 16620)
-- Name: albums; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.albums (
    album_id bigint NOT NULL,
    album_catalog_code character varying(100),
    album_title text,
    album_artist text,
    album_release_date date,
    album_genre character varying(40),
    album_description text
);


--
-- TOC entry 200 (class 1259 OID 16618)
-- Name: albums_album_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.albums_album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3292 (class 0 OID 0)
-- Dependencies: 200
-- Name: albums_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.albums_album_id_seq OWNED BY public.albums.album_id;


--
-- TOC entry 205 (class 1259 OID 16638)
-- Name: artists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.artists (
    artist_id bigint NOT NULL,
    artist_first_name character varying(30) NOT NULL,
    artist_last_name character varying(30) NOT NULL,
    artist_role character varying(20)
);


--
-- TOC entry 204 (class 1259 OID 16636)
-- Name: artists_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.artists_artist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3293 (class 0 OID 0)
-- Dependencies: 204
-- Name: artists_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.artists_artist_id_seq OWNED BY public.artists.artist_id;


--
-- TOC entry 207 (class 1259 OID 16646)
-- Name: genre; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genre (
    genre_id bigint NOT NULL,
    genre text NOT NULL
);


--
-- TOC entry 206 (class 1259 OID 16644)
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genre_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3294 (class 0 OID 0)
-- Dependencies: 206
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genre_genre_id_seq OWNED BY public.genre.genre_id;


--
-- TOC entry 203 (class 1259 OID 16629)
-- Name: songs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.songs (
    song_id bigint NOT NULL,
    song_title text,
    song_artist text,
    album_id bigint
);


--
-- TOC entry 202 (class 1259 OID 16627)
-- Name: songs_song_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.songs_song_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3295 (class 0 OID 0)
-- Dependencies: 202
-- Name: songs_song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.songs_song_id_seq OWNED BY public.songs.song_id;


--
-- TOC entry 3136 (class 2604 OID 16623)
-- Name: albums album_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.albums ALTER COLUMN album_id SET DEFAULT nextval('public.albums_album_id_seq'::regclass);


--
-- TOC entry 3138 (class 2604 OID 16641)
-- Name: artists artist_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artists ALTER COLUMN artist_id SET DEFAULT nextval('public.artists_artist_id_seq'::regclass);


--
-- TOC entry 3139 (class 2604 OID 16649)
-- Name: genre genre_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_genre_id_seq'::regclass);


--
-- TOC entry 3137 (class 2604 OID 16632)
-- Name: songs song_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.songs ALTER COLUMN song_id SET DEFAULT nextval('public.songs_song_id_seq'::regclass);


--
-- TOC entry 3280 (class 0 OID 16620)
-- Dependencies: 201
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.albums (album_id, album_catalog_code, album_title, album_artist, album_release_date, album_genre, album_description) VALUES (1, '5099962348928', 'My True Story', 'Aaron Neville', '2013-01-22', 'Funk/Soul', 'MY TRUE STORY represents a culmination of Aaron Nevilles incredible career, which has seen him move seamlessly back and forth between solo work and his role in the first family of New Orleans music, the Neville Brothers.');
INSERT INTO public.albums (album_id, album_catalog_code, album_title, album_artist, album_release_date, album_genre, album_description) VALUES (2, '5099920639921', 'Cage the Elephant', 'Cage the Elephant', '2009-03-24', 'Alternative Rock', 'The first studio album by American rock band Cage the Elephant after changing their name.');
INSERT INTO public.albums (album_id, album_catalog_code, album_title, album_artist, album_release_date, album_genre, album_description) VALUES (3, '4953472000000', 'London Calling', 'The Clash', '1979-12-14', 'Rock/Punk', 'The third studio album by English rock band the Clash.');


--
-- TOC entry 3284 (class 0 OID 16638)
-- Dependencies: 205
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3286 (class 0 OID 16646)
-- Dependencies: 207
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3282 (class 0 OID 16629)
-- Dependencies: 203
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.songs (song_id, song_title, song_artist, album_id) VALUES (1, 'Gypsy Woman', 'Aaron Neville', 1);
INSERT INTO public.songs (song_id, song_title, song_artist, album_id) VALUES (2, 'Tears on My Pillow', 'Aaron Neville', 1);
INSERT INTO public.songs (song_id, song_title, song_artist, album_id) VALUES (3, 'James Brown', 'Cage the Elephant', 2);
INSERT INTO public.songs (song_id, song_title, song_artist, album_id) VALUES (4, 'The Guns of Brixton', 'Paul Simonon', 3);
INSERT INTO public.songs (song_id, song_title, song_artist, album_id) VALUES (5, 'Death or Glory', 'The Clash', 3);


--
-- TOC entry 3296 (class 0 OID 0)
-- Dependencies: 200
-- Name: albums_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.albums_album_id_seq', 1, false);


--
-- TOC entry 3297 (class 0 OID 0)
-- Dependencies: 204
-- Name: artists_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.artists_artist_id_seq', 1, false);


--
-- TOC entry 3298 (class 0 OID 0)
-- Dependencies: 206
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 1, false);


--
-- TOC entry 3299 (class 0 OID 0)
-- Dependencies: 202
-- Name: songs_song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.songs_song_id_seq', 1, false);


--
-- TOC entry 3141 (class 2606 OID 16656)
-- Name: albums albums_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_id_key PRIMARY KEY (album_id);


--
-- TOC entry 3145 (class 2606 OID 16643)
-- Name: artists artist_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artist_id_key PRIMARY KEY (artist_id);


--
-- TOC entry 3147 (class 2606 OID 16654)
-- Name: genre genre_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_id_key PRIMARY KEY (genre_id);


--
-- TOC entry 3143 (class 2606 OID 16658)
-- Name: songs songs_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_id_key PRIMARY KEY (song_id);


--
-- TOC entry 3148 (class 2606 OID 16659)
-- Name: songs fk_songs_albums; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT fk_songs_albums FOREIGN KEY (album_id) REFERENCES public.albums(album_id);


-- Completed on 2021-03-25 15:37:09 EDT

--
-- PostgreSQL database dump complete
--

