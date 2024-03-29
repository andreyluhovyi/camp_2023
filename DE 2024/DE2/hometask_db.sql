--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18
-- Dumped by pg_dump version 12.18

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
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    item_id integer NOT NULL,
    item_name character varying(100) NOT NULL,
    item_type character varying(50) NOT NULL,
    item_description text NOT NULL,
    item_rarity character varying(50) NOT NULL,
    item_value integer NOT NULL
);


ALTER TABLE public.items OWNER TO postgres;

--
-- Name: minecraft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.minecraft (
    player_id integer NOT NULL,
    player_name character varying(100) NOT NULL,
    game_mode character varying(50) NOT NULL,
    highest_score integer NOT NULL,
    total_play_time time without time zone NOT NULL,
    favorite_biome character varying(50) NOT NULL,
    number_of_deaths integer NOT NULL,
    number_of_kills integer NOT NULL
);


ALTER TABLE public.minecraft OWNER TO postgres;

--
-- Name: player_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.player_items (
    player_id integer NOT NULL,
    item_id integer NOT NULL,
    quantity integer NOT NULL,
    item_condition character varying(50) NOT NULL,
    item_location character varying(100) NOT NULL
);


ALTER TABLE public.player_items OWNER TO postgres;

--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (item_id, item_name, item_type, item_description, item_rarity, item_value) FROM stdin;
1	Diamond Sword	Weapon	A sword made of diamond	Rare	1000
2	Iron Pickaxe	Tool	A pickaxe made of iron	Common	500
3	Diamond Pickaxe	Tool	A pickaxe made of diamond	Rare	1500
4	Golden Apple	Food	A valuable food item	Rare	800
5	TNT	Block	An explosive block	Common	300
\.


--
-- Data for Name: minecraft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.minecraft (player_id, player_name, game_mode, highest_score, total_play_time, favorite_biome, number_of_deaths, number_of_kills) FROM stdin;
1	Player1	Survival	2000	01:30:00	Forest	10	50
2	Player2	Creative	3000	02:00:00	Desert	5	100
3	Player3	Adventure	1500	01:45:00	Jungle	8	30
4	Player4	Survival	2500	02:30:00	Plains	12	70
5	Player5	Creative	3500	03:00:00	Mountains	4	120
\.


--
-- Data for Name: player_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.player_items (player_id, item_id, quantity, item_condition, item_location) FROM stdin;
1	1	1	New	Inventory
1	2	2	Used	Chest
2	1	1	New	Inventory
2	3	1	New	Inventory
3	2	3	Used	Inventory
3	4	2	New	Chest
4	1	1	Used	Inventory
4	5	5	New	Chest
5	3	1	New	Inventory
5	4	2	New	Inventory
\.


--
-- Name: items items_item_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_item_name_key UNIQUE (item_name);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (item_id);


--
-- Name: minecraft minecraft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.minecraft
    ADD CONSTRAINT minecraft_pkey PRIMARY KEY (player_id);


--
-- Name: minecraft minecraft_player_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.minecraft
    ADD CONSTRAINT minecraft_player_name_key UNIQUE (player_name);


--
-- Name: player_items player_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player_items
    ADD CONSTRAINT player_items_pkey PRIMARY KEY (player_id, item_id);


--
-- Name: player_items player_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player_items
    ADD CONSTRAINT player_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(item_id);


--
-- Name: player_items player_items_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.player_items
    ADD CONSTRAINT player_items_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.minecraft(player_id);


--
-- PostgreSQL database dump complete
--

