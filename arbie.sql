--
-- PostgreSQL database dump
--

-- Dumped from database version 13.11 (Raspbian 13.11-0+deb11u1)
-- Dumped by pg_dump version 13.11 (Raspbian 13.11-0+deb11u1)

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
-- Name: scores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scores (
    spotify_uri text,
    score integer,
    song_name text,
    stamp timestamp without time zone,
    themoji text
);


ALTER TABLE public.scores OWNER TO postgres;

--
-- Data for Name: scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scores (spotify_uri, score, song_name, stamp, themoji) FROM stdin;
spotify:track:4nVyHATevhl5RC6Qmoko5H	1	I Like It	2023-06-24 11:38:31.31	💿
spotify:track:3k0DJq2HdWJqnqor8NX0ac	13	Padam Padam	2023-09-03 22:18:34.812	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	10	Touch	2023-09-04 14:11:32.458	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	11	Come Into My World (with NERVO)	2023-07-27 14:04:28.83	🦥
spotify:track:3WdijbYmphZ8N0MYblXDnF	12	Animal	2023-06-24 11:38:31.309	🦥
spotify:track:6eCmK3GQyFuTNWCJHsaF9d	1	Drive (feat. Wes Nelson)	2023-06-24 11:38:31.309	🪬
spotify:track:7fWOBXSWN29kaE0spQjUW9	1	Goodbye	2023-06-24 13:37:34.301	🔥
spotify:track:5mHdCZtVyb4DcJw8799hZp	8	Escapism.	2023-07-14 17:22:54.498	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	7	Do It All Again	2023-07-08 11:30:04.795	🦥
spotify:track:1nYeVF5vIBxMxfPoL0SIWg	5	Hallucinate	2023-07-14 16:23:35.711	🦥
spotify:track:5sJWJ132Ya4i2xR5cW0B6a	10	Kardashian	2023-07-14 16:16:39.118	🦥
spotify:track:5gnXJhg3zGHWvrgplrVrxH	6	Superstar	2023-06-24 11:38:31.309	🦥
spotify:track:2LAtELE0xGyMKcvNlxiyF3	9	1 Day 2 Nights	2023-06-24 11:38:31.309	🦥
spotify:track:0zKbDrEXKpnExhGQRe9dxt	5	Lay Low	2023-07-29 19:45:34.401	🦥
spotify:track:1UNWD6R5EOFklUHKZZvww2	4	She Said	2023-09-07 10:27:24.495	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-09-12 19:11:10.57	💿
spotify:track:1bgKMxPQU7JIZEhNsM1vFs	5	Words (feat. Zara Larsson)	2023-07-26 11:30:00.047	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	11	Your Love (9PM)	2023-07-20 17:00:29.213	🦥
spotify:track:2UCu2FoXFZpCT36lYzej4O	3	Something Stupid (feat. AWA)	2023-09-04 13:49:54.807	🦥
spotify:track:10xV5l9nhLvFpR8mqzs0bL	3	Numb	2023-09-13 20:27:50.275	🦥
spotify:track:16mxzE8G96JyMSfcq1PQvW	4	Straight From the Heart (feat. Nørskov)	2023-06-24 11:38:31.309	🦥
spotify:track:4FWbsd91QSvgr1dSWwW51e	2	TRUSTFALL	2023-09-13 20:14:52.974	🦥
spotify:track:2ptbBxMTCbFBefVMXwrdSC	7	Dress	2023-06-24 11:38:31.31	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-08-29 21:58:29.039	🦥
spotify:track:1v2EmuslskqaQS0iNfhwMb	1	Call My Name	2023-09-06 14:00:51.831	🦥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	2	Sweet Nothing (feat. Florence Welch)	2023-06-24 11:38:31.31	💿
spotify:track:6GDJDe3I7yHq4rPDTfuJMj	1	Rhythm Is A Dancer	2023-09-07 14:10:14.208	🦥
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2023-09-12 16:36:54.484	🐺
spotify:track:5a7NdkF09AfD0H607eiOkX	3	On My Mind	2023-09-13 16:18:17.833	🦊
spotify:track:2ia7iiEtpiOL2ZVuWxBZGB	1	I Will Never Let You Down	2023-09-20 21:35:09.668	🦥
spotify:track:6GDJDe3I7yHq4rPDTfuJMj	1	Rhythm Is A Dancer	2023-09-20 23:04:11.114	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-09-20 23:53:47.057	🦥
spotify:track:2bsygdSQc5XZfvRm1BA0H5	1	Lovesick	2023-09-21 16:41:05.868	🦥
spotify:track:4zvJFnv4nIwW1rAN4XlhBc	1	i miss u - VIZE Remix	2023-09-21 18:43:46.034	🦥
spotify:track:4Ka0qWis2V9gI5MFdzT1lB	1	Breaking with You	2023-09-24 03:13:35.426	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-24 12:24:28.736	🦥
spotify:track:7K3BhSpAxZBznislvUMVtn	1	Last Night	2023-09-25 11:34:52.685	🦥
spotify:track:3sa06xVNmLLYIxdNNmVQN8	1	Where Did You Go? (feat. MNEK)	2023-09-25 20:39:22.513	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-25 22:15:31.832	🦥
spotify:track:6XGqOY2tWjHwRIJ4qTjGBf	1	Fast Lane	2023-09-26 10:26:58.898	🦥
spotify:track:6WiGRFQfx2qw49MA7OeDYK	1	Purple Hat	2023-09-26 14:48:17.938	🦥
spotify:track:65ffWlQCk6XeKX50CDYgib	1	Baddest	2023-09-26 18:18:42.816	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-09-27 11:03:07.98	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-27 14:01:52.682	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-09-27 14:28:20.448	🦥
spotify:track:1IdDtg7GhWfHYEWDymq3d2	1	If It Ain’t Me	2023-09-28 12:17:12.914	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-09-28 18:18:56.25	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-28 23:55:17.019	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-09-29 12:59:49.299	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-09-30 23:24:14.913	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:46:16.311	📼
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-10-01 00:51:31.646	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-02 15:56:11.413	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-02 19:42:11.901	🦥
spotify:track:4FWbsd91QSvgr1dSWwW51e	1	TRUSTFALL	2023-10-03 14:02:19.835	🦥
spotify:track:46XBrXzTAYXdRMeVxVeA6G	1	Mirror	2023-10-03 16:39:40.346	🦥
spotify:track:29JrmE89KgRyCxBIzq2Ocw	1	Strip That Down (feat. Quavo)	2023-10-04 15:32:36.666	🐺
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-04 21:40:52.56	🦥
spotify:track:10xV5l9nhLvFpR8mqzs0bL	1	Numb	2023-10-05 15:31:39.652	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-05 17:43:46.695	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-08 14:11:21.678	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-08 14:33:42.829	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	1	I Kissed A Girl	2023-10-08 22:38:00.602	📼
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-09 00:05:36.584	🦥
spotify:track:6XGqOY2tWjHwRIJ4qTjGBf	1	Fast Lane	2023-10-09 01:19:46.402	🦥
spotify:track:18oWEPapjNt32E6sCM6VLb	1	Heads Will Roll	2023-10-09 12:43:27.166	🦥
spotify:track:7qUJQSNX9QNf46CC6FgH66	1	Sucker for Pain (with Wiz Khalifa, Imagine Dragons, Logic & Ty Dolla $ign feat. X Ambassadors)	2023-10-09 15:20:56.904	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	1	Come Into My World (with NERVO)	2023-10-09 23:22:31.811	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-10 17:16:35.252	🦥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-10 19:42:32.504	🦥
spotify:track:3TSRH5IgWTHc8QZSAmo4bz	1	Cross My Heart I Hope U Die	2023-10-10 22:39:15.761	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-11 11:09:30.76	🦥
spotify:track:2AcKLW30dJ03qXsGU3RehH	1	All Or Nothing	2023-10-11 12:48:09.434	🦥
spotify:track:2MMUGOqJXwSWEY9yGYl8D2	1	Slow Drip	2023-10-11 14:57:17.971	🦥
spotify:track:4nVyHATevhl5RC6Qmoko5H	1	I Like It	2023-06-24 11:38:31.31	📼
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-08-30 17:29:03.613	🪬
spotify:track:2OfQvGrr83FGpdLA1nAR01	10	Numb	2023-09-06 21:23:21.896	🦥
spotify:track:7vzoNK8tbNmmKjDCNGTmkp	9	Tears of Gold - Owen Norton Remix	2023-09-04 13:33:06.895	🦥
spotify:track:6eCmK3GQyFuTNWCJHsaF9d	1	Drive (feat. Wes Nelson)	2023-06-24 11:38:31.309	🎶
spotify:track:6eCmK3GQyFuTNWCJHsaF9d	8	Drive (feat. Wes Nelson)	2023-06-24 11:38:31.309	🦥
spotify:track:7CH8J4ulT49UfZwSDSkSZA	7	i miss u (with Au/Ra)	2023-07-14 17:29:55.081	🦥
spotify:track:65ffWlQCk6XeKX50CDYgib	6	Baddest	2023-06-24 11:38:31.309	🦥
spotify:track:3DTqHfTGj1c6y2gDXsTez4	17	Regardless	2023-07-20 15:49:28.76	🦥
spotify:track:0Q06bNL4pMTlkilvL88nda	5	Maybe My Soulmate Died	2023-09-04 13:06:47.823	🦥
spotify:track:3XPl3dGn1oWe7VmKoB8nhU	8	Psycho - Joel Corry Remix	2023-07-20 16:07:44.649	🦥
spotify:track:2LAtELE0xGyMKcvNlxiyF3	1	1 Day 2 Nights	2023-06-24 11:38:31.309	🎶
spotify:track:1IdDtg7GhWfHYEWDymq3d2	6	If It Ain’t Me	2023-07-02 00:44:03.326	🦥
spotify:track:27u7t9d7ZQoyjsCROHuZJ3	5	Tick Tock (feat. 24kGoldn)	2023-06-24 11:38:31.31	🦥
spotify:track:3RrJTOClOgMAc9FQ7QDwv7	4	Undercover	2023-09-07 11:07:36.112	🦥
spotify:track:5iaa3eXgzedzQckwFNtIrl	9	Heart Wants What It Wants	2023-07-09 23:17:23.354	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-06-24 11:38:31.309	😈
spotify:track:3BKD1PwArikchz2Zrlp1qi	3	Baby Don't Hurt Me	2023-09-04 00:12:38.217	🦥
spotify:track:4iGjLLvo4Pax82YX3jE3Q1	4	Lonely Heart	2023-07-26 15:35:06.846	🦥
spotify:track:4mjDUywu5NREDKNPTaRdLE	6	Mi Amor	2023-07-22 12:08:12.296	🦥
spotify:track:7g2uEIBiSXUNkLmEUCv5nq	4	Cry Dancing	2023-07-27 13:42:32.381	🦥
spotify:track:6Jkm5kUldvIqxzI1Pa7nXH	2	10 Things I Hate About You	2023-09-12 16:04:34.271	🦥
spotify:track:5pNFibJLq7dvoDVIIcQBkn	5	Hot In It	2023-06-24 11:38:31.309	🦥
spotify:track:1v2EmuslskqaQS0iNfhwMb	3	Call My Name	2023-06-24 11:38:31.309	😈
spotify:track:1v2EmuslskqaQS0iNfhwMb	1	Call My Name	2023-09-06 14:01:04.026	🪬
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-09-13 11:50:42.831	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-07 14:21:40.927	🦥
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2023-09-12 16:36:56.553	💿
spotify:track:5a7NdkF09AfD0H607eiOkX	1	On My Mind	2023-09-13 16:18:04.728	🦥
spotify:track:5a7NdkF09AfD0H607eiOkX	1	On My Mind	2023-09-13 16:18:26.696	💿
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-13 13:09:52.752	💿
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-13 13:09:54.637	📼
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-13 13:10:30.369	🦥
spotify:track:73sE2IPYKcAvcz4Cd0pe1d	5	Die For a Man (feat. Lil Uzi Vert) - Galantis Remix	2023-06-24 11:38:31.309	🦥
spotify:track:5sK3o66yupTNIK6gWgzGjf	2	Dance Again	2023-06-24 11:38:31.309	🪬
spotify:track:5sK3o66yupTNIK6gWgzGjf	2	Dance Again	2023-09-05 12:20:30.358	🦥
spotify:track:59qrUpoplZxbIZxk6X0Bm3	2	Take You Dancing	2023-09-07 10:30:50.54	🎶
spotify:track:59qrUpoplZxbIZxk6X0Bm3	1	Take You Dancing	2023-06-24 11:38:31.309	😈
spotify:track:59qrUpoplZxbIZxk6X0Bm3	4	Take You Dancing	2023-06-24 11:38:31.309	🦥
spotify:track:0YETkmonJ718JRimG5zJOm	6	2019	2023-06-26 19:06:50.167	🦥
spotify:track:3F1P0QzdXtBz0MXy7KIO5w	4	Fever	2023-06-24 11:38:31.309	🦥
spotify:track:31vrYgT1bq756Yu3Hlzedj	6	Definition	2023-07-26 14:57:51.474	🦥
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-06-24 11:38:31.309	🎶
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-06-24 11:38:31.309	😈
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-06-24 11:38:31.309	🪬
spotify:track:4ZofmEdvs4mQqZ756GQhSY	12	Melody	2023-06-24 11:38:31.309	🦥
spotify:track:2BfJX65Te5q84Pku7osGRH	6	Good Luck (with Jax Jones & Galantis)	2023-06-24 11:38:31.309	🦥
spotify:track:3FkyJH5uE5XmN3voocBcYK	10	Private Life	2023-07-07 19:02:52.981	🦥
spotify:track:3H7ihDc1dqLriiWXwsc2po	1	Breaking Me	2023-06-24 11:38:31.309	📢
spotify:track:3H7ihDc1dqLriiWXwsc2po	3	Breaking Me	2023-06-24 11:38:31.309	🦥
spotify:track:4m2pZ1y1GmiOA8UYebp3A0	2	What You Gonna Do (feat. Taet)	2023-06-24 14:01:44.918	🦥
spotify:track:11M8c9SHQYpd8DOrmcu25k	2	Beg for You (feat. Rina Sawayama)	2023-06-24 11:38:31.309	🦥
spotify:track:5GSjJUbCCFFYv9lTtEFrMO	2	Stuck In My Head [NITE MIX] (feat. AJ Mitchell)	2023-06-24 11:38:31.309	🦥
spotify:track:3AOJ294HBNncEDSIAsvwAF	2	Morning - Billen Ted Remix	2023-06-24 11:38:31.309	🦥
spotify:track:3PZ5FaH37VoQuTMcX5T3by	2	Runaway With It	2023-06-24 11:38:31.309	🦥
spotify:track:5oT0W6JKJo8or78vqzd5XX	2	Better off Alone	2023-06-24 11:38:31.31	🦥
spotify:track:4TdA62WzOoEemnos4hLMwa	1	Pyromania	2023-09-20 21:37:05.451	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-20 23:06:19.964	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2023-09-21 00:17:10.222	🦥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-09-21 16:43:12.443	🦥
spotify:track:2O84FjR4RW4JDBu8FUZwvX	1	Beggin'	2023-09-21 19:09:40.785	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-24 03:18:19.945	🦥
spotify:track:0ndg56b510prqHlImqJoxG	1	Ghost Town (Lucas Estrada Remix)	2023-09-24 12:53:03.672	🦥
spotify:track:3WMj8moIAXJhHsyLaqIIHI	1	Something in the Orange	2023-09-25 12:09:38.125	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2023-09-25 21:41:05.354	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-09-25 22:17:41.121	😈
spotify:track:40iAvLjOTBW2gCyfqpdMiP	1	YOU (feat. Dotter)	2023-09-26 10:28:56.165	🦥
spotify:track:6btyEL6NwUa97Nex9cZFvo	1	Pump It	2023-09-26 16:06:30.643	🦥
spotify:track:6GDJDe3I7yHq4rPDTfuJMj	1	Rhythm Is A Dancer	2023-09-26 18:36:56.784	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-09-27 11:03:57.482	🦥
spotify:track:77FULy278MulVvGWS8BfK7	1	When Love Takes Over (feat. Kelly Rowland)	2023-09-27 14:09:38.405	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-27 14:43:30.325	🦥
spotify:track:7CH8J4ulT49UfZwSDSkSZA	1	i miss u (with Au/Ra)	2023-09-28 12:28:22.347	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-28 19:18:07.35	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-09-29 15:00:26.946	🦥
spotify:track:3mC64Smtz0xXvsa52ZM3Q9	1	Stars	2023-09-20 21:39:13.378	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-20 23:06:22.024	🦥
spotify:track:5sJWJ132Ya4i2xR5cW0B6a	1	Kardashian	2023-09-21 00:17:14.251	🦥
spotify:track:1STwdocp5GlE0aLPT6CaJ6	1	The Difference	2023-09-21 16:47:03.207	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-21 21:11:25.223	🦥
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-09-24 12:55:22.996	🦥
spotify:track:5Agunnfj2SyNhhFWNmQ8JE	1	Sweet and Sour	2023-09-25 14:22:04.973	🦥
spotify:track:6Jkm5kUldvIqxzI1Pa7nXH	1	10 Things I Hate About You	2023-09-25 21:59:09.541	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-09-25 22:17:42.902	🦥
spotify:track:2ovjS1yyTSXy3F0KHlTVTx	1	Be Okay - CLMD Remix	2023-09-26 10:31:30.025	🦥
spotify:track:5gOK3GYmmWvV8UyCpnRY4J	1	Around the World (La La La La La) - Radio Version	2023-09-26 16:22:46.482	🦥
spotify:track:4f3NHOxgC8Bg21IJBg4cZ3	1	Freaks - Radio Edit	2023-09-26 18:40:40.71	🦥
spotify:track:7y9iMe8SOB6z3NoHE2OfXl	1	Bad At Love	2023-09-27 11:19:09.593	🐺
spotify:track:63rbP24OzfaQCJjsHWZXnY	1	Where Them Girls At (feat. Nicki Minaj & Flo Rida)	2023-09-27 14:10:15.858	🦥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-09-27 17:31:05.374	🦥
spotify:track:5R8dQOPq8haW94K7mgERlO	1	Poker Face	2023-09-28 12:32:54.007	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-09-28 19:35:13.454	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-28 23:55:18.865	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-09-30 23:24:28.958	🦥
spotify:track:0H1OyEooZ5SzBYYdJEzxoy	1	If I Had You	2023-10-01 00:09:30.434	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-10-01 01:09:43.139	🦥
spotify:track:15og0pCEcTFWEXOFKdcJlU	1	Hate Me	2023-10-02 16:42:11.447	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	1	Come Into My World (with NERVO)	2023-10-02 19:49:24.808	🦥
spotify:track:0mHz9vqcznnfUcLqfQb3kd	1	Met Him Last Night - Dave Audé Remix	2023-10-03 14:13:31.547	🦥
spotify:track:5pmbZWt1lYVMvZ12MSdtqF	1	Leave A Little Love	2023-10-03 16:42:41.925	🦥
spotify:track:1mvZErZBp7WZT3HfGBykao	1	Cry for You	2023-10-04 20:25:19.346	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-04 21:40:53.262	🦥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-10-05 15:33:18.609	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-05 18:45:33.987	🦥
spotify:track:4yyX2Iu4xJjW9xMvBZKSBi	1	Met Him Last Night (feat. Ariana Grande)	2023-10-08 14:40:55.376	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	1	I Kissed A Girl	2023-10-08 22:38:01.485	📼
spotify:track:7hTqowWAKfOb99Rto1QXzJ	1	Party Songs	2023-10-09 00:09:05.502	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-09 01:22:46.426	🦥
spotify:track:6IbnUaczZBT34DhaD6S18F	1	Bubblegum Bitch	2023-10-09 12:49:06.345	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2023-10-10 17:24:44.027	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-11 11:09:31.503	☔
spotify:track:0zKbDrEXKpnExhGQRe9dxt	1	Lay Low	2023-10-11 12:51:21.948	🦥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-10-11 15:03:26.428	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-11 15:46:03.697	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-11 15:53:26.483	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-11 16:22:55.362	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-11 22:18:56.314	🦥
spotify:track:63rbP24OzfaQCJjsHWZXnY	1	Where Them Girls At (feat. Nicki Minaj & Flo Rida)	2023-10-12 16:49:30.908	🦥
spotify:track:1sUdq3kWa9dJXHu3eYOUll	1	Spooky, Scary Skeletons - Undead Tombstone Remix	2023-10-12 17:45:35.052	🦥
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-10-13 12:05:28.926	🎶
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-10-13 12:24:36.747	🎶
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-13 13:01:35.057	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-13 15:58:01.391	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-10-14 12:27:27.516	🦥
spotify:track:46XBrXzTAYXdRMeVxVeA6G	1	Mirror	2023-10-14 18:37:10.621	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-14 19:34:49.477	🦥
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-10-14 19:54:13.406	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-10-14 20:06:48.231	🦥
spotify:track:3FkyJH5uE5XmN3voocBcYK	1	Private Life	2023-10-14 20:30:44.663	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-15 14:35:25.946	🦥
spotify:track:4vswbhNPKavZJqpXzJI4wd	1	I Want You Around	2023-10-15 18:45:29.058	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-10-16 12:33:18.964	🔥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-16 14:41:01.079	🦥
spotify:track:2rfZyAX6wZxQWMQ9GYyLIu	1	Worship You	2023-10-16 14:49:09.05	🦥
spotify:track:5zEAGm4yKQ8NMemN0m3rW1	1	Nirvana	2023-10-16 18:42:26.1	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-10-16 22:03:07.803	🦥
spotify:track:0I5pVidtNjNXeaqHnwhrva	1	Can't Come To The Phone	2023-10-16 22:25:15.073	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2023-10-17 13:09:26.844	🔥
spotify:track:67lbzVADsqJJ6tyVk0XCgn	1	Chain My Heart	2023-10-17 13:11:03.266	🔥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-17 13:16:27.772	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-17 13:16:28.159	🔥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-17 14:38:40.317	🔥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-17 14:41:08.829	🔥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-17 14:41:13.843	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-17 15:04:31.256	🦥
spotify:track:4fCE1SCDulouoac9Q8XroU	1	West Coast (feat. Quinn XCII)	2023-10-17 15:06:36.747	🦥
spotify:track:3mC64Smtz0xXvsa52ZM3Q9	1	Stars	2023-09-20 21:40:23.817	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	1	Come Into My World (with NERVO)	2023-09-20 23:20:49.209	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-21 00:19:57.938	🦥
spotify:track:2UCu2FoXFZpCT36lYzej4O	1	Something Stupid (feat. AWA)	2023-09-24 13:10:09.291	🦥
spotify:track:5Agunnfj2SyNhhFWNmQ8JE	1	Sweet and Sour	2023-09-25 14:22:06.191	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-09-25 21:59:46.032	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-09-25 22:17:44.656	🦥
spotify:track:7hTqowWAKfOb99Rto1QXzJ	1	Party Songs	2023-09-26 10:33:42.94	🦥
spotify:track:3BKD1PwArikchz2Zrlp1qi	1	Baby Don't Hurt Me	2023-09-26 17:36:08.021	🦥
spotify:track:0ndg56b510prqHlImqJoxG	1	Ghost Town (Lucas Estrada Remix)	2023-09-26 21:01:17.291	🦥
spotify:track:1D2Aldrksl9yWWCIPOeDzy	1	All Around The World (La La La)	2023-09-27 12:27:33.813	🦥
spotify:track:4uUG5RXrOk84mYEfFvj3cK	1	I'm Good (Blue)	2023-09-27 14:16:14.724	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-09-27 18:21:05.482	🦥
spotify:track:1nYeVF5vIBxMxfPoL0SIWg	1	Hallucinate	2023-09-28 12:38:46.25	🦥
spotify:track:0H1OyEooZ5SzBYYdJEzxoy	1	If I Had You	2023-09-28 20:19:38.693	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-09-29 00:00:55.346	🦥
spotify:track:44aN5xKL3kGHvQ5bXVk6B8	1	Ghost Town	2023-09-29 10:15:55.206	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-09-29 20:33:06.768	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-30 16:19:11.63	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-30 16:55:00.859	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-30 17:00:02.373	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-30 17:03:21.146	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-30 17:05:21.944	🦥
spotify:track:1nYeVF5vIBxMxfPoL0SIWg	1	Hallucinate	2023-09-30 17:06:33.688	🦥
spotify:track:4iGjLLvo4Pax82YX3jE3Q1	1	Lonely Heart	2023-09-30 17:07:16.196	🦥
spotify:track:2UCu2FoXFZpCT36lYzej4O	1	Something Stupid (feat. AWA)	2023-09-30 17:14:56.732	🦥
spotify:track:16mxzE8G96JyMSfcq1PQvW	1	Straight From the Heart (feat. Nørskov)	2023-09-30 17:18:03.441	🦥
spotify:track:3BKD1PwArikchz2Zrlp1qi	1	Baby Don't Hurt Me	2023-09-30 17:21:36.739	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:45:54.015	📼
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-01 00:13:15.933	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-10-01 01:09:44.919	🦥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-10-01 12:51:59.28	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-10-02 11:05:54.832	🦥
spotify:track:15og0pCEcTFWEXOFKdcJlU	1	Hate Me	2023-10-02 16:42:12.568	🦥
spotify:track:3WdijbYmphZ8N0MYblXDnF	1	Animal	2023-10-02 19:58:15.423	🦥
spotify:track:5gOK3GYmmWvV8UyCpnRY4J	1	Around the World (La La La La La) - Radio Version	2023-10-03 14:37:54.401	🦥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-03 16:45:09.965	🦥
spotify:track:36cmM3MBMWWCFIiQ90U4J8	1	Bounce (feat. Kelis) - Radio Edit	2023-10-04 20:35:51.644	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-04 21:47:38.737	🦥
spotify:track:3IhM5Mber8KA0NaRNpK2px	1	Lay Low	2023-10-05 15:34:42.069	🦥
spotify:track:43WYPxyEfIxlIjNlxQGYzc	1	Cry About It Later (feat. Luísa Sonza & Bruno Martini)	2023-10-05 18:49:22.604	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-08 14:48:36.031	🦥
spotify:track:2ZAx6NDhX2yE5aL5ueEQgY	1	Mr. Saxobeat	2023-10-08 22:38:31.461	💿
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-09 00:10:09.168	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2023-10-09 01:25:11.168	🦥
spotify:track:3vkQ5DAB1qQMYO4Mr9zJN6	1	Gimme! Gimme! Gimme! (A Man After Midnight)	2023-10-09 12:54:02.022	🦥
spotify:track:5zEAGm4yKQ8NMemN0m3rW1	1	Nirvana	2023-10-10 17:27:18.207	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-11 12:06:23.231	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-11 12:56:07.946	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-11 15:05:42.581	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-11 15:50:00.229	🦥
spotify:track:4Ka0qWis2V9gI5MFdzT1lB	1	Breaking with You	2023-10-11 15:56:29.116	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-11 16:47:56.1	🦥
spotify:track:6zsFddikwwAfBr3USkYSDx	1	Radio	2023-10-12 17:24:26.6	🦥
spotify:track:1sUdq3kWa9dJXHu3eYOUll	1	Spooky, Scary Skeletons - Undead Tombstone Remix	2023-10-12 17:45:35.865	🦥
spotify:track:4nK5YrxbMGZstTLbvj6Gxw	1	Supalonely	2023-10-13 12:05:33.161	🎶
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-10-13 12:24:38.267	☔
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-13 15:06:05.273	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-13 16:02:36.507	🦥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-14 12:32:59.995	🦥
spotify:track:3iEwla99ovgF0Rdla6FZm4	1	Let Them Know	2023-10-14 18:39:21.301	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-10-14 19:37:50.51	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-14 19:57:44.515	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-10-14 20:06:49.015	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-10-14 22:48:35.784	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-15 15:59:53.791	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-15 19:18:27.977	🦥
spotify:track:5Agunnfj2SyNhhFWNmQ8JE	1	Sweet and Sour	2023-10-16 11:12:21.287	🔥
spotify:track:4WQJPsbGOdqe24mUVHa8xb	-1	Now Or Never	2023-10-16 12:50:48.471	🦥
spotify:track:2xfHakNuD25ma5CSfTXFw2	1	The One	2023-10-16 14:42:44.575	🔥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-16 15:24:45.481	🔥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-16 18:58:34.581	🦥
spotify:track:3mC64Smtz0xXvsa52ZM3Q9	1	Stars	2023-09-20 21:40:51.307	🦥
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2023-09-20 23:28:25.062	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-21 00:19:58.579	🦥
spotify:track:3K00Ib1shkOEiAXU5pec6e	1	Back To You	2023-09-24 17:10:21.832	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-09-25 16:01:35.487	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-09-25 21:59:46.911	🦥
spotify:track:7irq1X57FwkQrGFVOayjsm	1	STOP!	2023-09-26 10:54:26.842	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-26 17:45:47.498	🦥
spotify:track:3YfGTvsTAWGC2lgoDOikUz	1	One in a Million	2023-09-27 13:24:33.128	🦥
spotify:track:3K00Ib1shkOEiAXU5pec6e	1	Back To You	2023-09-27 14:19:35.632	🦥
spotify:track:36cmM3MBMWWCFIiQ90U4J8	1	Bounce (feat. Kelis) - Radio Edit	2023-09-27 18:26:25.385	🦥
spotify:track:4FWbsd91QSvgr1dSWwW51e	1	TRUSTFALL	2023-09-28 12:46:43.214	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-28 23:51:34.677	🦥
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-09-29 00:02:16.949	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-09-29 12:04:25.09	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-09-29 20:33:08.125	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-30 16:20:11.973	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-30 17:00:07.022	🦥
spotify:track:1nYeVF5vIBxMxfPoL0SIWg	1	Hallucinate	2023-09-30 17:05:51.659	🦥
spotify:track:16mxzE8G96JyMSfcq1PQvW	-1	Straight From the Heart (feat. Nørskov)	2023-09-30 17:18:10.544	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-30 20:30:01.923	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:45:54.702	💿
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-01 00:13:27.842	🦥
spotify:track:40iAvLjOTBW2gCyfqpdMiP	1	YOU (feat. Dotter)	2023-10-01 01:23:30.471	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-10-01 13:12:46.036	🦥
spotify:track:1IdDtg7GhWfHYEWDymq3d2	1	If It Ain’t Me	2023-10-02 11:28:27.41	🦥
spotify:track:0l2HaL3nbp9AFJ428p4yaA	-1	Summertime Sadness	2023-10-02 18:53:39.438	🦥
spotify:track:3iEwla99ovgF0Rdla6FZm4	1	Let Them Know	2023-10-02 19:30:51.37	☔
spotify:track:0Q06bNL4pMTlkilvL88nda	1	Maybe My Soulmate Died	2023-10-02 22:07:10.231	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-03 13:37:05.321	🦥
spotify:track:43WYPxyEfIxlIjNlxQGYzc	1	Cry About It Later (feat. Luísa Sonza & Bruno Martini)	2023-10-03 14:51:54.445	🦥
spotify:track:1cOyWWUr3oXJIxY0AjJEx9	1	YOUTH	2023-10-04 15:02:18.021	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-10-04 21:04:39.233	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-10-04 21:52:41.099	🦥
spotify:track:6W9qtw3ddhkYznaOxB50p8	1	The Feeling	2023-10-05 13:15:01.425	🦥
spotify:track:3IhM5Mber8KA0NaRNpK2px	1	Lay Low	2023-10-05 15:34:42.92	🦥
spotify:track:4MKzCHlZvkwJOQRNkdw4zq	1	Sexy Chick (feat. Akon)	2023-10-05 17:15:24.431	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-05 19:00:36.749	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-05 19:15:32.987	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-06 11:19:05.633	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-07 15:13:20.503	🦥
spotify:track:15og0pCEcTFWEXOFKdcJlU	1	Hate Me	2023-10-08 10:52:38.903	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	-1	Say It Right - ILURO Remix	2023-10-08 14:13:04.151	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-08 14:48:41.335	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-08 16:13:10.167	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-08 16:19:58.319	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-08 16:44:02.33	🦥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-08 16:56:41.349	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-08 22:05:53.934	🦥
spotify:track:2ZAx6NDhX2yE5aL5ueEQgY	1	Mr. Saxobeat	2023-10-08 22:38:35.53	💿
spotify:track:1mvZErZBp7WZT3HfGBykao	1	Cry for You	2023-10-09 00:29:11.138	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-09 01:30:53.563	🦥
spotify:track:20efeySIfZoiSaISGLBbNs	1	Thriller - Single Version	2023-10-09 10:51:18.353	🦥
spotify:track:3JTMWdhcJPiegDSe7SvZS3	1	Cannibal	2023-10-09 12:59:32.41	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-09 15:22:55.291	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-10 11:47:51.13	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-10-10 18:02:36.527	🦥
spotify:track:3YfGTvsTAWGC2lgoDOikUz	1	One in a Million	2023-10-10 20:10:39.043	🦥
spotify:track:1UNWD6R5EOFklUHKZZvww2	1	She Said	2023-10-10 21:49:02.058	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-10-11 12:09:56.767	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-11 12:57:05.537	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-10-11 15:07:34.628	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-11 15:50:00.913	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-11 16:03:47.075	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-11 16:48:00.533	🦥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-10-12 17:25:22.113	🦥
spotify:track:6btdl1Vl6Ta5lUwUSOFW2H	1	SUN GOES DOWN	2023-10-12 20:03:52.584	☔
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-10-13 12:15:52.821	🦥
spotify:track:6f5ExP43esnvdKPddwKXJH	1	Better Days (NEIKED x Mae Muller x Polo G)	2023-10-13 12:28:21.986	☔
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-13 15:18:20.477	🦥
spotify:track:7kMfu3KUydmrFVGEAhjtyl	1	Good Girls Go Bad (feat. Leighton Meester)	2023-10-14 13:49:31.348	🦥
spotify:track:6h5PAsRni4IRlxWr6uDPTP	1	More Than You Know	2023-10-14 18:41:53.253	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-14 19:41:50.295	🦥
spotify:track:3mC64Smtz0xXvsa52ZM3Q9	1	Stars	2023-09-20 21:41:17.792	🦥
spotify:track:3tIjJY43mDAhMZxSuDHvjy	1	Lovefool (feat. Pia Mia)	2023-09-20 23:42:19.98	🦥
spotify:track:3DTqHfTGj1c6y2gDXsTez4	1	Regardless	2023-09-21 00:23:04.432	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-09-25 16:11:12.049	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-25 22:08:52.531	🦥
spotify:track:2yauli1mg4gIjNgaKRFKjw	1	Wait	2023-09-26 11:04:51.211	🦥
spotify:track:0zKbDrEXKpnExhGQRe9dxt	1	Lay Low	2023-09-26 17:49:56.779	🦥
spotify:track:6h5PAsRni4IRlxWr6uDPTP	1	More Than You Know	2023-09-27 13:25:13.39	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-09-27 14:22:23.976	🦥
spotify:track:0H1OyEooZ5SzBYYdJEzxoy	1	If I Had You	2023-09-27 21:37:24.301	🦥
spotify:track:4iGjLLvo4Pax82YX3jE3Q1	1	Lonely Heart	2023-09-28 13:48:59.088	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-28 23:52:55.365	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-09-29 00:12:53.344	🦥
spotify:track:6GDJDe3I7yHq4rPDTfuJMj	1	Rhythm Is A Dancer	2023-09-29 12:19:06.198	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-29 23:30:14.11	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-30 20:30:03.1	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:46:11.101	💿
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-01 00:33:08.526	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-10-01 01:25:27.426	🦥
spotify:track:6h5PAsRni4IRlxWr6uDPTP	1	More Than You Know	2023-10-01 13:41:37.342	🦥
spotify:track:5VxmI3IdgAxWVvUnJoLuY2	1	Speed Drive (From Barbie The Album)	2023-10-02 12:20:41.185	🦥
spotify:track:3iEwla99ovgF0Rdla6FZm4	-1	Let Them Know	2023-10-02 19:31:08.351	☔
spotify:track:2O84FjR4RW4JDBu8FUZwvX	1	Beggin'	2023-10-02 22:08:24.664	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-03 13:37:18.944	🦥
spotify:track:3DNziCcqRd2v8uQWwec1GW	1	Skin - Quarterhead Remix	2023-10-03 14:56:45.392	🦥
spotify:track:1cOyWWUr3oXJIxY0AjJEx9	-1	YOUTH	2023-10-04 15:02:25.823	🦥
spotify:track:4vswbhNPKavZJqpXzJI4wd	1	I Want You Around	2023-10-04 21:16:30.783	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-10-04 21:52:41.881	🦥
spotify:track:1txNJEYS7E0uQzYqmYeoJp	1	Comin' To Getcha	2023-10-05 13:15:11.586	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-05 15:45:20.262	🦥
spotify:track:4MKzCHlZvkwJOQRNkdw4zq	-1	Sexy Chick (feat. Akon)	2023-10-05 17:15:35.109	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-05 19:06:39.2	🔥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-05 19:15:54.095	🦥
spotify:track:41kOdUYJOPwl8nAZr7dsts	1	Bumpy Ride	2023-10-06 16:47:45.982	🦥
spotify:track:2ptbBxMTCbFBefVMXwrdSC	1	Dress	2023-10-07 15:18:42.209	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-10-08 11:05:02.462	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-10-08 14:13:11.259	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-10-08 14:52:04.217	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-08 16:14:18.098	🦥
spotify:track:3uUuGVFu1V7jTQL60S1r8z	1	Where Are You Now	2023-10-08 16:53:22.424	🦥
spotify:track:2O84FjR4RW4JDBu8FUZwvX	1	Beggin'	2023-10-08 16:59:58.833	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	-1	I Kissed A Girl	2023-10-08 22:37:48.792	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-10-08 23:12:05.887	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-10-09 00:49:46.354	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-09 01:30:54.394	🦥
spotify:track:1sUdq3kWa9dJXHu3eYOUll	1	Spooky, Scary Skeletons - Undead Tombstone Remix	2023-10-09 10:55:34.992	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-09 13:06:02.53	🦥
spotify:track:1mvZErZBp7WZT3HfGBykao	1	Cry for You	2023-10-09 16:06:07.626	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-10 11:55:54.25	⛰️
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-10-10 19:14:33.872	🦥
spotify:track:5zEAGm4yKQ8NMemN0m3rW1	1	Nirvana	2023-10-10 20:10:42.973	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-10 21:52:38.03	🦥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-10-11 12:17:12.303	🦥
spotify:track:3tIjJY43mDAhMZxSuDHvjy	1	Lovefool (feat. Pia Mia)	2023-10-11 12:59:46.304	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-10-11 15:09:11.057	☔
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-11 15:50:02.961	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-11 16:03:47.94	🦥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-10-11 16:50:59.235	🦥
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-10-12 17:32:42.199	🦥
spotify:track:27ycaQnQAxaPiyeg3nr2aB	1	Midnight Sky	2023-10-12 20:06:02.044	☔
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-10-13 12:15:55.708	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-13 12:35:58.578	🎶
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-13 15:19:26.892	🦥
spotify:track:11BKm0j4eYoCPPpCONAVwA	1	Bloody Mary	2023-10-14 13:53:06.451	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-14 19:12:21.513	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	1	Come Into My World (with NERVO)	2023-10-14 19:42:47.977	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-14 20:01:08.063	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-14 20:23:04.737	🦥
spotify:track:0L5dwOLG1xpw9oD5FcyQak	1	Stars	2023-10-15 18:42:50.28	🦥
spotify:track:6rFaGfDRVRXlVdUVgBz0Ho	1	Noise Cancellation	2023-10-16 11:13:03.913	🦥
spotify:track:3RrJTOClOgMAc9FQ7QDwv7	1	Undercover	2023-10-16 12:51:31.384	🦥
spotify:track:2xfHakNuD25ma5CSfTXFw2	1	The One	2023-10-16 14:42:48.595	🔥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-16 15:24:45.723	🦥
spotify:track:3PlpAfyyeuicW1HP0IebLM	1	Somebody I F*cked Once - Lady Bee Remix	2023-10-16 21:06:53.642	🦥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-09-20 21:47:19.083	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-09-20 23:44:26.616	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-09-21 00:26:28.04	🦥
spotify:track:1trLfcGdZLeqZCB1mnZZFy	1	Strut	2023-09-25 16:31:33.808	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-25 22:08:52.766	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-09-26 13:55:43.574	🦥
spotify:track:7fWOBXSWN29kaE0spQjUW9	1	Goodbye	2023-09-26 17:57:08.164	🦥
spotify:track:3H7ihDc1dqLriiWXwsc2po	1	Breaking Me	2023-09-27 13:32:10.856	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-09-27 14:24:45.448	🦥
spotify:track:78oZ26xvmtCfarveRXs3dq	1	Big (feat. Gunna)	2023-09-28 13:49:44.099	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-28 23:52:57.798	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-09-29 12:21:29.188	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-09-30 23:11:26.795	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:46:12.057	💿
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-01 00:33:09.975	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-10-01 01:25:28.517	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-01 22:38:03.846	🦥
spotify:track:73CMRj62VK8nUS4ezD2wvi	1	Set Fire to the Rain	2023-10-02 12:32:02.584	🦥
spotify:track:5VxmI3IdgAxWVvUnJoLuY2	1	Speed Drive (From Barbie The Album)	2023-10-02 19:32:21.017	🦥
spotify:track:3XPl3dGn1oWe7VmKoB8nhU	1	Psycho - Joel Corry Remix	2023-10-03 13:42:28.536	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-03 15:53:02.694	🦥
spotify:track:1cOyWWUr3oXJIxY0AjJEx9	1	YOUTH	2023-10-04 15:02:36.73	💿
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-04 21:18:39.897	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-04 21:54:28.348	🦥
spotify:track:62nhuooamoroYpJyqE0nLd	1	Are You With Me - Radio Edit	2023-10-05 14:20:00.967	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-05 15:45:25.093	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-05 17:43:44.197	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-05 19:06:39.852	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-05 19:15:58.634	🦥
spotify:track:3AzjcOeAmA57TIOr9zF1ZW	1	Physical	2023-10-06 18:02:24.288	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-07 15:20:27.886	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-08 13:00:07.707	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-10-08 14:13:12.186	🦥
spotify:track:43WYPxyEfIxlIjNlxQGYzc	1	Cry About It Later (feat. Luísa Sonza & Bruno Martini)	2023-10-08 14:54:33.286	🦥
spotify:track:1WFy81RbU5QhOeYVgIzVPe	1	Weekend On A Tuesday	2023-10-08 16:16:13.255	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-08 17:01:29.901	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	1	I Kissed A Girl	2023-10-08 22:37:54.283	🦥
spotify:track:5WQQIDU3HRaMyPkob8mpFb	1	Where Have You Been	2023-10-08 23:51:05.644	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-09 01:05:47.289	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-09 01:30:55.573	🦥
spotify:track:11BKm0j4eYoCPPpCONAVwA	1	Bloody Mary	2023-10-09 11:04:04.586	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-09 13:06:03.339	🦥
spotify:track:1WFy81RbU5QhOeYVgIzVPe	1	Weekend On A Tuesday	2023-10-09 16:08:53.173	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-10 11:56:35.052	🔥
spotify:track:3RLC8jJmDOZwrJ5izaISXr	1	Blackout	2023-10-10 19:29:00.93	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2023-10-10 20:10:45.948	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-10-10 22:11:47.216	🦥
spotify:track:00E0Z2jrF7reoHps4zcbWQ	1	Car Keys (Ayla)	2023-10-11 12:22:07.101	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-10-11 13:01:35.625	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-11 15:09:52.987	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-11 15:51:44.53	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-11 16:04:18.319	🦥
spotify:track:43WYPxyEfIxlIjNlxQGYzc	1	Cry About It Later (feat. Luísa Sonza & Bruno Martini)	2023-10-11 22:12:56.703	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	1	You Only Love Me	2023-10-12 11:57:21.614	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-12 17:35:38.958	🦥
spotify:track:28cnXtME493VX9NOw9cIUh	1	Hurt	2023-10-13 11:21:15.101	☔
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-10-13 12:15:58.272	☔
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-13 12:36:00	☔
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-13 15:22:13.371	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-14 11:27:00.376	🦥
spotify:track:4FxDFBpqPumIyXzPagQPp0	1	I Wrote A Song - Topic Remix	2023-10-14 16:07:51.6	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-14 19:12:24.452	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-14 19:49:03.398	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-14 20:03:25.286	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-14 20:26:28.046	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-10-15 18:43:48.63	🦥
spotify:track:6rFaGfDRVRXlVdUVgBz0Ho	1	Noise Cancellation	2023-10-16 11:13:06.678	🔥
spotify:track:3RrJTOClOgMAc9FQ7QDwv7	1	Undercover	2023-10-16 12:51:34.167	🔥
spotify:track:2rfZyAX6wZxQWMQ9GYyLIu	1	Worship You	2023-10-16 14:48:54.117	🔥
spotify:track:2AcKLW30dJ03qXsGU3RehH	1	All Or Nothing	2023-10-16 17:30:59.374	🦥
spotify:track:0ymH3Qwwzkl802WD3yy0oY	1	Marble	2023-10-16 21:13:40.854	🦥
spotify:track:76Tuo484SLohJakHLnGI3B	1	Sweet Melody	2023-10-16 22:12:21.169	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-17 13:21:47.937	🔥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-09-20 21:47:27.184	🦥
spotify:track:2UCu2FoXFZpCT36lYzej4O	1	Something Stupid (feat. AWA)	2023-09-20 23:53:38.387	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-09-21 00:26:30.806	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-09-25 16:42:51.521	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-25 22:08:54.808	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-26 14:29:30.898	🦥
spotify:track:67lbzVADsqJJ6tyVk0XCgn	1	Chain My Heart	2023-09-26 17:57:46.598	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-09-27 13:35:14.206	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-09-27 14:24:51.16	🦥
spotify:track:16mxzE8G96JyMSfcq1PQvW	1	Straight From the Heart (feat. Nørskov)	2023-09-28 18:08:38.007	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-28 23:53:02.352	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-09-29 12:21:29.976	🦥
spotify:track:1HOlb9rdNOmy9b1Fakicjo	1	#SELFIE	2023-09-30 23:14:26.927	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:46:14.773	📼
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-01 00:33:25.85	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-10-01 01:25:29.601	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-10-01 22:52:36.184	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-10-02 15:26:39.031	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-10-02 19:35:51.254	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	1	You Only Love Me	2023-10-03 13:49:03.863	🦥
spotify:track:3uUuGVFu1V7jTQL60S1r8z	1	Where Are You Now	2023-10-03 16:26:21.072	🦥
spotify:track:1cOyWWUr3oXJIxY0AjJEx9	1	YOUTH	2023-10-04 15:02:50.012	🐺
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-04 21:18:40.849	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-04 21:54:29.217	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-10-05 15:23:34.948	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2023-10-05 15:54:35.087	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-05 17:43:44.944	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-05 19:06:46.311	🔥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-10-05 19:18:04.268	🦥
spotify:track:2xfHakNuD25ma5CSfTXFw2	1	The One	2023-10-06 18:25:23.887	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-07 15:23:29.017	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-08 13:00:09.643	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-10-08 14:18:02.311	🦥
spotify:track:3DNziCcqRd2v8uQWwec1GW	1	Skin - Quarterhead Remix	2023-10-08 15:01:59.205	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-08 17:10:37.712	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	-1	I Kissed A Girl	2023-10-08 22:37:56.648	💿
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-08 23:55:08.666	🦥
spotify:track:1txNJEYS7E0uQzYqmYeoJp	1	Comin' To Getcha	2023-10-09 01:16:08.387	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-09 01:33:24.312	🦥
spotify:track:3nqQXoyQOWXiESFLlDF1hG	1	Unholy (feat. Kim Petras)	2023-10-09 11:35:24.48	🦥
spotify:track:6SpUnFjNfyFgyLRm65b2G6	1	ORAL HEX (spell on you)	2023-10-09 15:15:15.106	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-09 21:36:45.095	🦥
spotify:track:3Zwu2K0Qa5sT6teCCHPShP	1	Thnks fr th Mmrs	2023-10-10 12:00:16.329	🔥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-10 19:40:43.107	🦥
spotify:track:6iF4RgIjDvDqyW13PezSj3	1	Single Soon	2023-10-10 20:10:59.782	🦥
spotify:track:2rfZyAX6wZxQWMQ9GYyLIu	1	Worship You	2023-10-11 12:23:10.859	🦥
spotify:track:3mC64Smtz0xXvsa52ZM3Q9	17	Stars	2023-07-20 16:29:48.554	🦥
spotify:track:3tIjJY43mDAhMZxSuDHvjy	14	Lovefool (feat. Pia Mia)	2023-07-29 12:36:16.905	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	4	Numb	2023-08-30 17:29:11.051	🪬
spotify:track:36gcliMRX1vCpgnrZE3dFZ	8	10:35	2023-09-04 11:35:58.009	🦥
spotify:track:6eCmK3GQyFuTNWCJHsaF9d	1	Drive (feat. Wes Nelson)	2023-06-24 11:38:31.309	😈
spotify:track:7fWOBXSWN29kaE0spQjUW9	8	Goodbye	2023-07-08 15:41:40.447	🦥
spotify:track:5dry5tz8yLcLuOJ3l6ZEQd	8	Used to Know Me	2023-06-24 11:38:31.309	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	6	Lay All Your Love On Me	2023-09-03 23:24:12.623	🦥
spotify:track:7arsXR8AtExnOFN3v3HiJI	8	Going Dumb	2023-07-20 17:04:38.812	🦥
spotify:track:2O84FjR4RW4JDBu8FUZwvX	6	Beggin'	2023-09-13 21:00:18.451	🦥
spotify:track:2doTn2LWTKN1Z0lZJG2WQw	6	UNHEALTHY (feat. Shania Twain)	2023-06-30 12:31:02.197	🦥
spotify:track:2LAtELE0xGyMKcvNlxiyF3	1	1 Day 2 Nights	2023-06-24 11:38:31.309	😈
spotify:track:3AzjcOeAmA57TIOr9zF1ZW	8	Physical	2023-06-24 11:38:31.309	🦥
spotify:track:27u7t9d7ZQoyjsCROHuZJ3	1	Tick Tock (feat. 24kGoldn)	2023-09-07 11:05:06.661	🎶
spotify:track:2bLqfJjuC5syrsgDsZfGmn	4	The Way I Are	2023-09-13 20:16:25.853	🦥
spotify:track:78oZ26xvmtCfarveRXs3dq	7	Big (feat. Gunna)	2023-06-24 11:38:31.31	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-06-24 11:38:31.309	🪬
spotify:track:46XBrXzTAYXdRMeVxVeA6G	9	Mirror	2023-07-06 22:24:47.914	🦥
spotify:track:4iGjLLvo4Pax82YX3jE3Q1	1	Lonely Heart	2023-09-07 10:30:40.568	🎶
spotify:track:7LbhIjYNfCguxjAw43Mkff	6	Ghost	2023-06-24 11:38:31.309	🦥
spotify:track:2dWNKXTs5z7Iu1g0kYh4Xe	2	My Heart Goes (La Di Da) (feat. Topic)	2023-06-24 11:38:31.309	🦥
spotify:track:5B1TY0oq5I1VeTZxEnkGV8	7	Poster Girl	2023-08-03 00:24:30.604	🦥
spotify:track:5RTCbOZLSoVaOwisJhsdfd	5	SKIN 2 SKIN	2023-07-08 16:08:28.1	🦥
spotify:track:1v2EmuslskqaQS0iNfhwMb	8	Call My Name	2023-06-24 11:38:31.309	🧊
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-06-24 11:38:31.31	😈
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-09-13 11:50:43.539	🎶
spotify:track:63y6xWR4gXz7bnUGOk8iI6	2	Into You	2023-09-14 21:32:22.19	🦥
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2023-09-12 16:46:31.228	🦊
spotify:track:6Dy1jexKYriXAVG6evyUTJ	2	OUT OUT (feat. Charli XCX & Saweetie)	2023-06-24 11:38:31.31	🎶
spotify:track:6Dy1jexKYriXAVG6evyUTJ	1	OUT OUT (feat. Charli XCX & Saweetie)	2023-06-24 11:38:31.31	😈
spotify:track:6Dy1jexKYriXAVG6evyUTJ	2	OUT OUT (feat. Charli XCX & Saweetie)	2023-06-24 11:38:31.31	🦥
spotify:track:29aqCNtLcL5cjsjRRe1Y1s	2	Hands On Your Body	2023-07-17 15:15:23.106	🦥
spotify:track:6rFaGfDRVRXlVdUVgBz0Ho	2	Noise Cancellation	2023-07-21 09:51:40.896	🦥
spotify:track:0osvOdeD3YXZiWkT8MKolJ	5	Lifestyle (feat. Adam Levine)	2023-06-24 11:38:31.31	🦥
spotify:track:0SSIu4CcGITHdatDmjlA6H	5	Nobody To Love (with Loren Gray)	2023-06-24 11:38:31.309	🦥
spotify:track:0DGduxy7YSuqXm272C2LM6	4	El Diablo	2023-06-24 11:38:31.31	🦥
spotify:track:3iEwla99ovgF0Rdla6FZm4	4	Let Them Know	2023-06-24 12:08:51.669	🦥
spotify:track:6Dfi1zryJF6c5DoW0JHl7u	4	Let Love Go (feat. Lil Tecca)	2023-06-24 11:38:31.309	🦥
spotify:track:7FbrGaHYVDmfr7KoLIZnQ7	2	Cupid - Twin Ver.	2023-06-24 11:38:31.309	🦥
spotify:track:2cc8Sw1OnCuA5bV8nqWqpE	2	You	2023-06-24 11:38:31.31	🦥
spotify:track:5r0cOO77xkM5jjHk67Z2Lt	3	Baby, I'm Jealous (feat. Doja Cat)	2023-06-24 11:38:31.31	🦥
spotify:track:4dsm0VbaMmnLHhrOKcDNSI	1	When You're Out (feat. Mae Muller)	2023-06-24 11:38:31.31	🦥
spotify:track:3j11iDncb7ZeDMw7lFucqM	1	The Motto	2023-06-24 22:05:40.456	🦥
spotify:track:3B4etxytImrRKQgV3XHjnR	1	Harleys In Hawaii	2023-06-24 11:38:31.309	🎶
spotify:track:3B4etxytImrRKQgV3XHjnR	1	Harleys In Hawaii	2023-06-24 11:38:31.309	😈
spotify:track:3B4etxytImrRKQgV3XHjnR	4	Harleys In Hawaii	2023-06-24 11:38:31.309	🦥
spotify:track:6WDG2ybdV3SBXV0lwBGu4D	1	Maybe You’re The Problem	2023-06-24 11:38:31.309	🎶
spotify:track:6WDG2ybdV3SBXV0lwBGu4D	2	Maybe You’re The Problem	2023-06-24 11:38:31.309	🦥
spotify:track:1WCEAGGRD066z2Q89ObXTq	1	Crazy What Love Can Do	2023-06-24 11:38:31.309	🦥
spotify:track:1zFBtgQqy24SnTHlf0ir17	1	Real Groove (feat. Dua Lipa) - Studio 2054 Initial Talk Remix	2023-06-24 11:38:31.309	🦥
spotify:track:3JXF3LsUjyDIHjuwhXxdjo	2	Sweetest Pie	2023-07-08 15:55:08.269	🦥
spotify:track:4GO8S3iZlSLwdsyf1XEOmA	1	I Love Your Girl	2023-07-05 14:13:17.229	🦥
spotify:track:0ZXdzaT1k688dkpNeEgQiV	1	I Don't Know Why	2023-06-24 11:38:31.31	🎶
spotify:track:0ZXdzaT1k688dkpNeEgQiV	1	I Don't Know Why	2023-06-24 11:38:31.31	😈
spotify:track:0ZXdzaT1k688dkpNeEgQiV	1	I Don't Know Why	2023-06-24 11:38:31.31	🫧
spotify:track:0ZXdzaT1k688dkpNeEgQiV	3	I Don't Know Why	2023-06-24 11:38:31.31	🦥
spotify:track:3G6hD9B2ZHOsgf4WfNu7X1	1	Team	2023-06-24 11:38:31.309	🎶
spotify:track:3G6hD9B2ZHOsgf4WfNu7X1	1	Team	2023-06-24 11:38:31.309	🪬
spotify:track:3G6hD9B2ZHOsgf4WfNu7X1	1	Team	2023-06-24 11:38:31.309	🦊
spotify:track:3G6hD9B2ZHOsgf4WfNu7X1	1	Team	2023-07-07 13:23:45.746	🦥
spotify:track:7iDcKU9zpVp20Oa27SerEY	2	Black Magic	2023-06-24 11:38:31.31	🦥
spotify:track:1Q6ySAXCm1QSKnzTZ1rgin	1	Disturbia	2023-07-03 11:02:12.104	🦥
spotify:track:4WQJPsbGOdqe24mUVHa8xb	1	Now Or Never	2023-06-30 11:51:57.434	🦥
spotify:track:6BQcggOEF7ASntQACEdT2L	1	ME BECAUSE OF YOU - Indigo Kxd Remix	2023-06-24 11:38:31.309	🦥
spotify:track:1oHNvJVbFkexQc0BpQp7Y4	12	Starships	2023-06-24 11:38:31.31	💿
spotify:track:1oHNvJVbFkexQc0BpQp7Y4	1	Starships	2023-07-02 20:33:14.953	🦥
spotify:track:2wUV58nT5BrVZz4ahFf1uH	1	Crying On The Dance Floor	2023-06-24 11:38:31.31	🦥
spotify:track:5ttodnEIaCGDuBbvJctUfc	3	End Of Time	2023-06-24 11:38:31.309	🦥
spotify:track:557Xkoud7EtdyjdyRkrhRy	4	Hero	2023-06-24 11:38:31.309	🦥
spotify:track:4nrPB8O7Y7wsOCJdgXkthe	9	Shakira: Bzrp Music Sessions, Vol. 53	2023-06-24 11:38:31.31	🎶
spotify:track:4nrPB8O7Y7wsOCJdgXkthe	13	Shakira: Bzrp Music Sessions, Vol. 53	2023-06-24 11:38:31.31	😈
spotify:track:4nrPB8O7Y7wsOCJdgXkthe	4	Shakira: Bzrp Music Sessions, Vol. 53	2023-06-24 11:38:31.31	🪬
spotify:track:4nrPB8O7Y7wsOCJdgXkthe	4	Shakira: Bzrp Music Sessions, Vol. 53	2023-06-24 11:38:31.31	🧊
spotify:track:4nrPB8O7Y7wsOCJdgXkthe	4	Shakira: Bzrp Music Sessions, Vol. 53	2023-06-24 11:38:31.31	🦥
spotify:track:4v8jmsVox8VwU5js3JHOJZ	2	Gimme What I Want	2023-07-31 23:45:06.804	🦥
spotify:track:7K6H44x9AOkrt3PK6ig4w0	4	Last Summer	2023-06-24 11:38:31.31	🦥
spotify:track:3lFwSDBCNo3CcN09UppUnm	2	Hold Me Closer	2023-06-24 12:54:15.554	🦥
spotify:track:7xg41ENLdW3nyy2p5C28ZW	5	Fuck Up The Friendship	2023-06-24 11:38:31.309	🦥
spotify:track:67lbzVADsqJJ6tyVk0XCgn	2	Chain My Heart	2023-06-24 11:38:31.309	🎶
spotify:track:67lbzVADsqJJ6tyVk0XCgn	2	Chain My Heart	2023-06-24 11:38:31.309	😈
spotify:track:67lbzVADsqJJ6tyVk0XCgn	3	Chain My Heart	2023-06-24 11:38:31.309	🪬
spotify:track:67lbzVADsqJJ6tyVk0XCgn	10	Chain My Heart	2023-07-13 13:36:49.127	🦥
spotify:track:4wCmqSrbyCgxEXROQE6vtV	2	Somebody That I Used To Know	2023-09-08 17:58:04.568	🦥
spotify:track:4wCmqSrbyCgxEXROQE6vtV	1	Somebody That I Used To Know	2023-09-13 20:47:32.773	💿
spotify:track:1J9ekSUHGCaWKBdmeEWPJZ	11	I Don’t (with DVBBS)	2023-07-17 15:23:11.72	🦥
spotify:track:5YtM5WjclCystH2Xzct19Y	7	On A Roll - Basic Tape Remix	2023-06-24 11:38:31.309	🦥
spotify:track:3VBHBxTFt18h66k2R8jNTt	7	RAININ’ FELLAS	2023-06-24 11:38:31.31	🦥
spotify:track:0iBBOvVQ8QCK7F95boCn3C	3	CHARGER	2023-08-02 19:36:00.545	🦥
spotify:track:78T1d6RsHPY6gcWlurCK5q	1	Everybody Wants You - Shift K3Y Remix	2023-06-24 11:38:31.309	🎶
spotify:track:78T1d6RsHPY6gcWlurCK5q	1	Everybody Wants You - Shift K3Y Remix	2023-06-24 11:38:31.309	😈
spotify:track:78T1d6RsHPY6gcWlurCK5q	3	Everybody Wants You - Shift K3Y Remix	2023-06-24 11:38:31.309	🦥
spotify:track:1FxHNKoRql64kL15iccqz1	3	Kinda Funny (feat. Audrey Mika)	2023-06-24 11:38:31.31	🦥
spotify:track:6W9qtw3ddhkYznaOxB50p8	3	The Feeling	2023-07-07 23:10:23.522	🦥
spotify:track:4coLf2EV9vdf1062GDAA3b	1	All Or Nothing - VIP Mix	2023-08-03 11:48:13.29	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	3	You Only Love Me	2023-06-24 22:33:56.294	🦥
spotify:track:1qCHidBbWAgv3pn6UbZ4Lg	4	Don't Go Yet	2023-06-24 11:38:31.31	🦥
spotify:track:4acfgyVsfx2vVI7LysrBq6	1	Prosecco	2023-06-28 22:40:21.926	🦥
spotify:track:5knSvwiFenQOkDoriHi2Rg	1	Love Me Land	2023-07-31 17:13:33.819	🦥
spotify:track:5WokFKscrfGEGGLPTu3jgO	4	WOW (feat. Sabrina Carpenter) - Remix	2023-06-24 11:38:31.309	🦥
spotify:track:1vYXt7VSjH9JIM5oRRo7vA	3	Dance The Night (From Barbie The Album)	2023-07-26 15:37:52.983	🦥
spotify:track:1vYXt7VSjH9JIM5oRRo7vA	1	Dance The Night (From Barbie The Album)	2023-07-05 14:36:23.571	😈
spotify:track:43WYPxyEfIxlIjNlxQGYzc	5	Cry About It Later (feat. Luísa Sonza & Bruno Martini)	2023-07-07 22:55:08.827	🦥
spotify:track:1qX6EzEftYFq7MWL0ry3An	1	Feel Right Now (feat. Nonô)	2023-08-05 13:43:17.476	🦥
spotify:track:0MWiSBKm8Avs8iDIxcertp	4	Kiss My (Uh Oh)	2023-06-24 11:38:31.309	🦥
spotify:track:4O5ygqTjiXLWo9HASGsk8E	1	Lush Life - Retro Version	2023-06-24 11:38:31.31	🎶
spotify:track:4O5ygqTjiXLWo9HASGsk8E	1	Lush Life - Retro Version	2023-06-24 11:38:31.31	😈
spotify:track:4O5ygqTjiXLWo9HASGsk8E	3	Lush Life - Retro Version	2023-06-24 11:38:31.31	🦥
spotify:track:5fKTWlpV4hT7ujXV45WbtN	1	Sacrifice	2023-06-24 11:38:31.309	🎶
spotify:track:5fKTWlpV4hT7ujXV45WbtN	3	Sacrifice	2023-06-24 11:38:31.309	🦥
spotify:track:6FvSS3Goz7OC8oCC2eWqe8	4	Jalebi Baby (Tesher x Jason Derulo)	2023-06-24 11:38:31.309	🦥
spotify:track:13YIDpKrL2caqJ3YF52uzJ	2	Too Many Nights (with JC Stewart)	2023-06-24 11:38:31.31	🦥
spotify:track:5902W4uHWzhtOff1UK7the	1	When I’m Gone (with Katy Perry)	2023-06-24 11:38:31.31	🎶
spotify:track:5902W4uHWzhtOff1UK7the	2	When I’m Gone (with Katy Perry)	2023-06-24 11:38:31.31	🦥
spotify:track:1IIV8jglA0klVZy17q665k	1	Never Really Over	2023-06-24 11:38:31.309	🦥
spotify:track:4vOoQh9MhS9pyrbvc8LyMz	1	Can't Tame Her	2023-06-24 11:38:31.31	🦥
spotify:track:1VpKOZ6nnap41hh5CbY8gJ	1	Obsessed	2023-06-24 11:38:31.31	🦥
spotify:track:0WuWSx5j0pVNPRwVMKD6w5	2	Call It Love	2023-06-24 11:38:31.309	🦥
spotify:track:6feiJqgHqeSvkGUzf11AYs	1	Remember (with David Guetta)	2023-06-24 11:38:31.309	🦥
spotify:track:7jqXDgGWkV4w2ctdb2g59o	1	At Least I Had Fun	2023-06-24 11:38:31.309	🦥
spotify:track:5MyIR4vCwqxnB0biyFqcdw	1	L.O.V.(e).	2023-06-24 11:38:31.31	🦥
spotify:track:5kLpqpKCxvkIxB1VFEh9TL	1	Leave (Get Out)	2023-06-24 13:08:24.452	🦥
spotify:track:6cx06DFPPHchuUAcTxznu9	2	Head & Heart (feat. MNEK)	2023-06-24 11:38:31.31	🎶
spotify:track:6cx06DFPPHchuUAcTxznu9	1	Head & Heart (feat. MNEK)	2023-07-26 15:30:24.864	🦥
spotify:track:0YORgvqP1MotwCnDZzOwII	1	I Wish (feat. Mabel)	2023-06-24 11:38:31.31	🦥
spotify:track:3Q872ol7VFg088SkbxSuqO	2	Psycho (feat. Rubi Rose)	2023-06-24 11:38:31.309	🦥
spotify:track:0UzGVWTmURL3F3Y1wgzFtJ	1	No Regrets	2023-06-24 11:38:31.309	🦥
spotify:track:1AMTAztgMzh0nIqji9lNs3	1	Be the One (feat. MORGAN, Digga D & TIKE)	2023-06-24 11:38:31.309	🦥
spotify:track:59s3aMqR9uOzLIXAcgBCEm	1	Smile	2023-06-24 11:38:31.31	🦥
spotify:track:0YYftFKuZmU06epZRCYuYO	2	You for Me	2023-07-02 13:40:06.416	🦥
spotify:track:0V3wPSX9ygBnCm8psDIegu	1	Anti-Hero	2023-06-24 11:38:31.309	🎶
spotify:track:0V3wPSX9ygBnCm8psDIegu	1	Anti-Hero	2023-06-24 11:38:31.309	😈
spotify:track:0V3wPSX9ygBnCm8psDIegu	2	Anti-Hero	2023-06-24 11:38:31.309	🦥
spotify:track:76Tuo484SLohJakHLnGI3B	5	Sweet Melody	2023-06-24 11:38:31.31	🦥
spotify:track:0rciFhu7W79mmuy8acJvdc	3	Lovestruck	2023-07-05 21:24:34.323	🦥
spotify:track:0ONFGnOEErh2tL0HY39F3V	3	No	2023-06-24 11:38:31.31	🦥
spotify:track:4w7vZjpsnpKizj7NE0Nuld	1	THE END	2023-06-24 11:38:31.31	🦥
spotify:track:1diS6nkxMQc3wwC4G1j0bh	1	We're Good	2023-06-24 11:38:31.31	🦥
spotify:track:0I5pVidtNjNXeaqHnwhrva	1	Can't Come To The Phone	2023-07-03 15:44:36.937	🦥
spotify:track:6Asu7oyQxcmONn4HypXV7n	1	that way - Jonasu Remix	2023-07-17 15:22:20.426	🦥
spotify:track:5RVjB86R02f47lCZSPFOzj	3	Damn (You’ve Got Me Saying)	2023-08-09 22:26:00.042	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-08-03 11:18:55.925	🦥
spotify:track:3K00Ib1shkOEiAXU5pec6e	2	Back To You	2023-06-24 11:38:31.309	😈
spotify:track:3K00Ib1shkOEiAXU5pec6e	5	Back To You	2023-06-24 11:38:31.309	🪬
spotify:track:3K00Ib1shkOEiAXU5pec6e	7	Back To You	2023-06-24 11:38:31.309	🧊
spotify:track:3K00Ib1shkOEiAXU5pec6e	5	Back To You	2023-06-24 11:38:31.309	🦥
spotify:track:5qiQbOa6AFEO3P111y9Jry	5	Mad Love - Blinkie Remix	2023-06-24 11:38:31.309	🦥
spotify:track:2dy2C0StZ3yiEeb0Aoolcn	5	Bang Bang	2023-06-24 11:38:31.31	🦥
spotify:track:72zJrb5M7iv65yms7x6J7b	2	Satellite	2023-06-24 11:38:31.309	🦥
spotify:track:2grSOc6HNTXQQXNoRKt9UM	2	Good Ones	2023-06-24 11:38:31.31	🦥
spotify:track:5rW7qTn83sCKtqBoneJs63	2	edamame (feat. Rich Brian)	2023-08-29 21:18:36.431	🦥
spotify:track:5bnGB46pcptSasI2Go0MNz	1	Fine on My Own	2023-06-24 11:38:31.31	🦥
spotify:track:5zQ00D9j9MkQbsd9qmenBa	1	Confetti	2023-06-24 11:38:31.309	🎶
spotify:track:5zQ00D9j9MkQbsd9qmenBa	2	Confetti	2023-06-24 11:38:31.309	🦥
spotify:track:4oXV7uPMrMNSZfLMYtiqIX	1	Confetti (feat. Saweetie)	2023-06-24 11:38:31.309	🦥
spotify:track:53kWAAfx7IopXRa31MQHB8	1	Good Vibes	2023-06-24 11:38:31.309	🦥
spotify:track:7i7DaXk1g3da6G3421Gi3i	5	One Drink Away	2023-07-07 21:49:22.486	🦥
spotify:track:62xA7Zhj8CQSecypWIfpZx	2	Last Night (feat. HARLEE)	2023-06-27 21:49:14.577	🦥
spotify:track:2xfHakNuD25ma5CSfTXFw2	7	The One	2023-07-08 16:11:40.839	🦥
spotify:track:0siYMEsGrzzzlWLXK5zJfS	1	BED	2023-06-24 11:38:31.309	🦠
spotify:track:3eJH2nAjvNXdmPfBkALiPZ	1	Acapulco	2023-06-24 11:38:31.31	🎶
spotify:track:3eJH2nAjvNXdmPfBkALiPZ	1	Acapulco	2023-06-24 11:38:31.31	😈
spotify:track:3eJH2nAjvNXdmPfBkALiPZ	4	Acapulco	2023-06-24 11:38:31.31	🦥
spotify:track:6wzwvyZ4kVPoUYDYjgErWJ	1	Feels In My Body	2023-06-24 11:38:31.31	🦥
spotify:track:5iqfKcEGKhoeWTNqmZPiu3	1	Love Of Your Life	2023-07-05 13:55:13.963	🦥
spotify:track:1gfDK5vVyqja5EI6O3MJO9	1	Worst Thing	2023-06-24 21:30:47.348	🦥
spotify:track:567e29TDzLwZwfDuEpGTwo	1	STAY (with Justin Bieber)	2023-06-30 11:51:30.984	🦥
spotify:track:4nfyxpiejEPrUHLnejED7i	1	SAD B!TCH	2023-06-24 11:38:31.309	🦥
spotify:track:4qsrQnTtzIdmTOXFobkkE9	1	LOL	2023-06-24 11:38:31.309	🦥
spotify:track:2Oycxb8QbPkpHTo8ZrmG0B	3	Prisoner (feat. Dua Lipa)	2023-06-24 11:38:31.31	🎶
spotify:track:2Oycxb8QbPkpHTo8ZrmG0B	1	Prisoner (feat. Dua Lipa)	2023-06-24 11:38:31.31	😈
spotify:track:2Oycxb8QbPkpHTo8ZrmG0B	2	Prisoner (feat. Dua Lipa)	2023-06-24 11:38:31.31	🪬
spotify:track:2Oycxb8QbPkpHTo8ZrmG0B	1	Prisoner (feat. Dua Lipa)	2023-06-24 11:38:31.31	🦠
spotify:track:2dLv6YwZtcmoHKbeBHyAYH	1	iloveyou	2023-06-24 11:38:31.309	☔
spotify:track:2dLv6YwZtcmoHKbeBHyAYH	1	iloveyou	2023-06-24 11:38:31.309	🌌
spotify:track:2dLv6YwZtcmoHKbeBHyAYH	1	iloveyou	2023-09-06 12:51:42.089	🦥
spotify:track:1MDEvpaFk2Ins7N8hGfFlA	5	One Day	2023-07-20 19:54:05.792	🦥
spotify:track:6Yzh272O4hwZHjrnXYhL8a	2	Do It, Try It	2023-06-24 11:38:31.309	🧊
spotify:track:0xMd5bcWTbyXS7wPrBtZA6	1	Burn	2023-06-24 11:38:31.309	💿
spotify:track:3JA9Jsuxr4xgHXEawAdCp4	2	Just Can’t Get Enough	2023-06-24 11:38:31.309	💿
spotify:track:18asYwWugKjjsihZ0YvRxO	1	The Motto	2023-06-24 11:38:31.31	🎶
spotify:track:18asYwWugKjjsihZ0YvRxO	1	The Motto	2023-06-24 11:38:31.31	😈
spotify:track:18asYwWugKjjsihZ0YvRxO	1	The Motto	2023-06-24 11:38:31.31	🧊
spotify:track:7usVlcXSkQu4MBKI02oIJR	1	Nfl Main Theme	2023-06-24 11:38:31.31	🦀
spotify:track:1c8gk2PeTE04A1pIDH9YMk	2	Rolling in the Deep	2023-06-24 11:38:31.309	💿
spotify:track:0lYBSQXN6rCTvUZvg9S0lU	1	Let Me Love You	2023-06-24 11:38:31.309	🐺
spotify:track:53BHUFdQphHiZUUG3nx9zn	1	Bang!	2023-06-24 11:38:31.309	🦠
spotify:track:3GCdLUSnKSMJhs4Tj6CV3s	1	All The Stars (with SZA)	2023-06-24 11:38:31.309	🐺
spotify:track:4f3NHOxgC8Bg21IJBg4cZ3	1	Freaks - Radio Edit	2023-06-24 11:38:31.31	🧊
spotify:track:6KGUG14fRRWt5LhnTtozBO	1	Imposter Imperceptible (Among Us)	2023-06-24 11:38:31.309	🦀
spotify:track:5vTPxzm4h2bY9rYyVrGEU5	2	Really Don't Care	2023-06-24 11:38:31.309	🫧
spotify:track:1gv4xPanImH17bKZ9rOveR	6	Raise Your Glass	2023-06-24 11:38:31.309	💿
spotify:track:1sNctqVr9zdS7i1RZNjIgY	9	Crazy Kids	2023-06-24 11:38:31.31	💿
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	9	Somebody Told Me	2023-07-31 22:07:02.943	🔥
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	6	Somebody Told Me	2023-06-24 11:38:31.309	🧊
spotify:track:6f5ExP43esnvdKPddwKXJH	1	Better Days (NEIKED x Mae Muller x Polo G)	2023-06-24 11:38:31.309	🎶
spotify:track:6f5ExP43esnvdKPddwKXJH	2	Better Days (NEIKED x Mae Muller x Polo G)	2023-06-24 11:38:31.309	☔
spotify:track:6f5ExP43esnvdKPddwKXJH	1	Better Days (NEIKED x Mae Muller x Polo G)	2023-06-24 11:38:31.309	🦠
spotify:track:7ciLq0Cip0yxiz6KANrOUq	1	Toothbrush	2023-06-24 11:38:31.309	🫧
spotify:track:0HqZX76SFLDz2aW8aiqi7G	1	Bones	2023-06-24 11:38:31.309	🦠
spotify:track:6WrI0LAC5M1Rw2MnX2ZvEg	1	Don't Start Now	2023-06-24 11:38:31.309	🦠
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	2	Take It Off	2023-06-24 11:38:31.31	😈
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	4	Take It Off	2023-06-24 11:38:31.31	💿
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	1	Take It Off	2023-06-24 11:38:31.31	📼
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	2	Take It Off	2023-06-24 11:38:31.31	🫧
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	4	Take It Off	2023-06-24 11:38:31.31	🧊
spotify:track:5KawlOMHjWeUjQtnuRs22c	1	Boy With Luv (feat. Halsey)	2023-06-24 11:38:31.31	📢
spotify:track:45sDIKapDyxPl307QpEAwl	1	Rocketeer	2023-06-24 11:38:31.31	📼
spotify:track:6Eu31gddWw0gOGO506pJYA	1	Fearless	2023-06-24 11:38:31.309	📼
spotify:track:6Iocm6VMu6bVNYwiDoyQFW	1	Coming Home	2023-06-24 11:38:31.309	📼
spotify:track:2Fs18NaCDuluPG1DHGw1XG	1	Life is a Highway	2023-06-24 11:38:31.309	🦀
spotify:track:68Dni7IE4VyPkTOH9mRWHr	1	No Role Modelz	2023-06-24 11:38:31.309	🎶
spotify:track:0JiVRyTJcJnmlwCZ854K4p	1	Alone	2023-06-24 11:38:31.309	☔
spotify:track:0JiVRyTJcJnmlwCZ854K4p	1	Alone	2023-06-24 11:38:31.309	🦠
spotify:track:5vlEg2fT4cFWAqU5QptIpQ	1	Replay	2023-06-24 11:38:31.309	📼
spotify:track:6D60klaHqbCl9ySc8VcRss	24	Stronger (What Doesn't Kill You)	2023-06-24 11:38:31.31	💿
spotify:track:14EUcXXpqrC03Dzzdj8bGr	1	Orinoco Flow	2023-06-24 11:38:31.31	🦀
spotify:track:2tJulUYLDKOg9XrtVkMgcJ	1	Grenade	2023-06-24 11:38:31.309	📼
spotify:track:4VqPOruhp5EdPBeR92t6lQ	1	Uprising	2023-06-24 11:38:31.309	🔥
spotify:track:5s7m2xNZWgz5FqVSIvJcGA	1	Save a Horse (Ride a Cowboy)	2023-06-24 11:38:31.31	🤠
spotify:track:4E73mIgGehdEHxMuxEd7I9	1	Because the Night	2023-06-24 11:38:31.31	📼
spotify:track:3Dv1eDb0MEgF93GpLXlucZ	1	Say So	2023-06-24 11:38:31.309	🫧
spotify:track:6DCZcSspjsKoFjzjrWoCdn	1	God's Plan	2023-06-24 11:38:31.309	📢
spotify:track:2Z8WuEywRWYTKe1NybPQEW	1	Ride	2023-06-24 11:38:31.309	🦊
spotify:track:5uEYRdEIh9Bo4fpjDd4Na9	1	Goosebumps - Remix	2023-06-24 11:38:31.309	🎶
spotify:track:5uEYRdEIh9Bo4fpjDd4Na9	2	Goosebumps - Remix	2023-06-24 11:38:31.309	🧊
spotify:track:4Dvkj6JhhA12EX05fT7y2e	1	As It Was	2023-06-24 11:38:31.309	🦠
spotify:track:45S5WTQEGOB1VHr1Q4FuPl	1	Golden	2023-06-24 11:38:31.309	🦠
spotify:track:0QkWikH5Z3U0f79T9iuF6c	1	Judas	2023-06-24 11:38:31.309	💿
spotify:track:0QkWikH5Z3U0f79T9iuF6c	1	Judas	2023-06-24 11:38:31.309	📼
spotify:track:70cTMpcgWMcR18t9MRJFjB	3	I Gotta Feeling	2023-06-24 11:38:31.31	💿
spotify:track:6xqJ0XqDM9dVEW1jbm78wB	1	Discord	2023-06-24 11:38:31.309	🦀
spotify:track:1ti7FlOjQV7ZmgMjN1M4Oc	1	Walk Hard	2023-06-24 11:38:31.31	🦀
spotify:track:1vvNmPOiUuyCbgWmtc6yfm	1	My Way	2023-06-24 11:38:31.309	🥂
spotify:track:6RksBSj5fFtPkUnL2EE0oe	3	Darkness Settles In	2023-06-24 11:38:31.309	🧊
spotify:track:6RksBSj5fFtPkUnL2EE0oe	3	Darkness Settles In	2023-06-24 11:38:31.309	🦠
spotify:track:1YaVmBh7EAeR54FIjuFcb5	1	Naturally	2023-06-24 11:38:31.309	📼
spotify:track:0SuLAslEMFZAXf0SwY7syi	1	All Time Low	2023-06-24 11:38:31.309	🦠
spotify:track:0LQtEJt7x0s6knb6RKdRYc	1	Chicken Fried	2023-06-24 11:38:31.309	🤠
spotify:track:7HXBG0W8gFJwHUh5mVF9tf	3	Rise	2023-06-24 11:38:31.31	😈
spotify:track:7HXBG0W8gFJwHUh5mVF9tf	1	Rise	2023-06-24 11:38:31.31	🪬
spotify:track:7HXBG0W8gFJwHUh5mVF9tf	2	Rise	2023-06-24 11:38:31.31	🧊
spotify:track:6gRACp2CvsIhc7hyw8CecQ	1	The Devil Went Down to Georgia	2023-06-24 11:38:31.31	🤠
spotify:track:6RUKPb4LETWmmr3iAEQktW	1	Something Just Like This	2023-06-24 11:38:31.31	🦊
spotify:track:2LEF1A8DOZ9wRYikWgVlZ8	13	Good Feeling	2023-06-24 11:38:31.309	💿
spotify:track:1mCsF9Tw4AkIZOjvZbZZdT	1	Break My Stride	2023-06-24 11:38:31.309	📢
spotify:track:1BZG99C7Co1r6QUC3zaS59	1	Same Old Love	2023-06-24 11:38:31.31	🦊
spotify:track:1vrd6UOGamcKNGnSHJQlSt	1	Love Story	2023-06-24 11:38:31.309	📼
spotify:track:28cnXtME493VX9NOw9cIUh	1	Hurt	2023-06-24 11:38:31.31	☔
spotify:track:28cnXtME493VX9NOw9cIUh	1	Hurt	2023-06-24 11:38:31.31	🧊
spotify:track:4DHcnVTT87F0zZhRPYmZ3B	1	Flowers	2023-06-24 11:38:31.309	😈
spotify:track:0g9IUdSH5xawYmYFoSEU9B	1	I Like to Move It - Instrumental	2023-06-24 11:38:31.309	🦀
spotify:track:5KqldkCunQ2rWxruMEtGh0	1	The Gambler	2023-06-24 11:38:31.309	🤠
spotify:track:5KqldkCunQ2rWxruMEtGh0	1	The Gambler	2023-06-24 11:38:31.309	🦀
spotify:track:02dRkCEc8Q5ch4TTcnLxOn	1	Nothing Breaks Like a Heart (feat. Miley Cyrus)	2023-06-24 11:38:31.309	🎶
spotify:track:02dRkCEc8Q5ch4TTcnLxOn	1	Nothing Breaks Like a Heart (feat. Miley Cyrus)	2023-06-24 11:38:31.309	😈
spotify:track:5fnA9mkIfScSqHIpeDyvck	1	Prayer in C - Robin Schulz Radio Edit	2023-06-24 11:38:31.309	🪬
spotify:track:5CZ40GBx1sQ9agT82CLQCT	1	traitor	2023-06-24 11:38:31.31	☔
spotify:track:75FEaRjZTKLhTrFGsfMUXR	1	Running Up That Hill (A Deal With God)	2023-06-24 11:38:31.309	🎶
spotify:track:76vMKwFtdDDCLcM6zXybjB	1	Say Amen (Saturday Night)	2023-06-24 11:38:31.309	🧊
spotify:track:7BKLCZ1jbUBVqRi2FVlTVw	1	Closer	2023-06-24 11:38:31.309	🦊
spotify:track:3bidbhpOYeV4knp8AIu8Xn	1	Can't Hold Us (feat. Ray Dalton)	2023-06-24 11:38:31.31	🦊
spotify:track:15sLeziZGp1jxtYo6Zj4v5	2	Photoshop Your Memories	2023-06-24 11:38:31.309	🦀
spotify:track:4XvcHTUfIlWfyJTRG0aqlo	1	2055	2023-06-24 11:38:31.31	🦠
spotify:track:4W4fNrZYkobj539TOWsLO2	1	Die For You (with Ariana Grande) - Remix	2023-06-24 11:38:31.31	🎶
spotify:track:3egamOji0THEWgIOnAN2LX	2	THATS WHAT I WANT	2023-06-24 11:38:31.31	🎶
spotify:track:3egamOji0THEWgIOnAN2LX	1	THATS WHAT I WANT	2023-06-24 11:38:31.31	🧊
spotify:track:3egamOji0THEWgIOnAN2LX	1	THATS WHAT I WANT	2023-06-24 11:38:31.31	🦠
spotify:track:0aBKFfdyOD1Ttvgv0cfjjJ	1	More - RedOne Jimmy Joker Remix	2023-06-24 11:38:31.31	🔥
spotify:track:0aBKFfdyOD1Ttvgv0cfjjJ	7	More - RedOne Jimmy Joker Remix	2023-06-24 11:38:31.31	💿
spotify:track:0aBKFfdyOD1Ttvgv0cfjjJ	1	More - RedOne Jimmy Joker Remix	2023-06-24 11:38:31.31	🫧
spotify:track:4SSnFejRGlZikf02HLewEF	1	bury a friend	2023-06-24 11:38:31.309	🧊
spotify:track:27tNWlhdAryQY04Gb2ZhUI	1	Roar	2023-06-24 11:38:31.309	🫧
spotify:track:27tNWlhdAryQY04Gb2ZhUI	1	Roar	2023-06-24 11:38:31.309	🦊
spotify:track:5bgwqaRSS3M8WHWruHgSL5	1	8TEEN	2023-06-24 11:38:31.309	📢
spotify:track:6hmhG1b4LEyNuashVvuIAo	1	Never Forget You	2023-06-24 11:38:31.309	🐺
spotify:track:5OCJzvD7sykQEKHH7qAC3C	1	God is a woman	2023-06-24 11:38:31.309	📢
spotify:track:6sy3LkhNFjJWlaeSMNwQ62	1	Counting Stars	2023-06-24 11:38:31.309	🦊
spotify:track:3STTVKfJGTdhbg5aLppEzX	6	On The Floor	2023-06-24 11:38:31.309	💿
spotify:track:29FNeqjOV2kPWGS55qhtGB	1	Money, Money, Money	2023-06-24 11:38:31.309	🧊
spotify:track:4RvfChDpoaU1ZlTBjgj67Q	1	Boom Boom Boom Boom Boom Boom Boom Boom Boom Boom Boom Boom Boom	2023-06-24 11:38:31.309	🦀
spotify:track:2n3CaPGPLYnYAvTEwKCX8t	2	Mmm Yeah (feat. Pitbull)	2023-06-24 11:38:31.309	🥂
spotify:track:1Xq1fe5v8YF1wI7oXuCAAH	1	PPAP (Pen-Pineapple-Apple-Pen) - Long Version	2023-06-24 11:38:31.31	🦀
spotify:track:1KixkQVDUHggZMU9dUobgm	1	My Head & My Heart	2023-06-24 11:38:31.309	🎶
spotify:track:1KixkQVDUHggZMU9dUobgm	5	My Head & My Heart	2023-06-24 11:38:31.309	🧊
spotify:track:1KixkQVDUHggZMU9dUobgm	2	My Head & My Heart	2023-06-24 11:38:31.309	🦠
spotify:track:6M14BiCN00nOsba4JaYsHW	1	Ocean Man	2023-06-24 11:38:31.309	🦀
spotify:track:4nK5YrxbMGZstTLbvj6Gxw	2	Supalonely	2023-06-24 11:38:31.31	☔
spotify:track:0ZqveF2rEFlz2oqF2xrriP	5	The Riddle	2023-06-24 11:38:31.31	🧊
spotify:track:4qDHt2ClApBBzDAvhNGWFd	1	Crab Rave	2023-06-24 11:38:31.309	🦀
spotify:track:0PAcdVzhPO4gq1Iym9ESnK	2	Thinkin’ Bout Me	2023-06-24 11:38:31.309	🤠
spotify:track:0PAcdVzhPO4gq1Iym9ESnK	1	Thinkin’ Bout Me	2023-06-24 11:38:31.309	😈
spotify:track:5IC6hMJ8twaEYLF0gMknMb	2	Just Dance	2023-06-24 11:38:31.31	💿
spotify:track:5IC6hMJ8twaEYLF0gMknMb	1	Just Dance	2023-06-24 11:38:31.31	📼
spotify:track:5WQQIDU3HRaMyPkob8mpFb	5	Where Have You Been	2023-06-24 11:38:31.309	💿
spotify:track:1CkvWZme3pRgbzaxZnTl5X	2	Rolling in the Deep	2023-06-24 11:38:31.309	💿
spotify:track:5Z9KJZvQzH6PFmb8SNkxuk	1	INDUSTRY BABY (feat. Jack Harlow)	2023-06-24 11:38:31.309	🦠
spotify:track:3uUuGVFu1V7jTQL60S1r8z	3	Where Are You Now	2023-06-24 11:38:31.309	🎶
spotify:track:3uUuGVFu1V7jTQL60S1r8z	4	Where Are You Now	2023-06-24 11:38:31.309	😈
spotify:track:3uUuGVFu1V7jTQL60S1r8z	5	Where Are You Now	2023-06-24 11:38:31.309	🧊
spotify:track:3uUuGVFu1V7jTQL60S1r8z	1	Where Are You Now	2023-06-24 11:38:31.309	🦠
spotify:track:51QEyJI5M7uyd8DOh9tqQY	1	Buzzcut Season	2023-06-24 11:38:31.309	🎶
spotify:track:51QEyJI5M7uyd8DOh9tqQY	5	Buzzcut Season	2023-06-24 11:38:31.309	😈
spotify:track:51QEyJI5M7uyd8DOh9tqQY	1	Buzzcut Season	2023-06-24 11:38:31.309	🪬
spotify:track:51QEyJI5M7uyd8DOh9tqQY	2	Buzzcut Season	2023-06-24 11:38:31.309	🧊
spotify:track:4k6ktr10Hczmh55NY3LfJy	1	Holiday	2023-06-24 11:38:31.309	📼
spotify:track:3E9EC2h4ddtvCBKqUjxmha	2	A Year Without Rain	2023-06-24 11:38:31.31	🎶
spotify:track:3E9EC2h4ddtvCBKqUjxmha	1	A Year Without Rain	2023-06-24 11:38:31.31	😈
spotify:track:2RqtfcLB7iOZj0zYB8Auhu	1	Jealous	2023-06-24 11:38:31.31	🦊
spotify:track:1QNqrsNQ1JVLEwncov3lEY	1	True Love (feat. Lily Allen)	2023-06-24 11:38:31.309	📼
spotify:track:1Cj2vqUwlJVG27gJrun92y	1	The Sound of Silence	2023-06-24 11:38:31.309	🦀
spotify:track:1Cj2vqUwlJVG27gJrun92y	1	The Sound of Silence	2023-06-24 11:38:31.309	🧊
spotify:track:6b3b7lILUJqXcp6w9wNQSm	1	Cheap Thrills (feat. Sean Paul)	2023-06-24 11:38:31.309	🐺
spotify:track:6b3b7lILUJqXcp6w9wNQSm	1	Cheap Thrills (feat. Sean Paul)	2023-06-24 11:38:31.309	📢
spotify:track:5jiYx70OBzEI99jx1Gn3FN	1	Sober Up (feat. Rivers Cuomo)	2023-06-24 11:38:31.309	📢
spotify:track:63T7DJ1AFDD6Bn8VzG6JE8	1	Paint It, Black	2023-06-24 11:38:31.31	🧊
spotify:track:02MWAaffLxlfxAUY7c5dvx	1	Heat Waves	2023-06-24 11:38:31.31	🎶
spotify:track:2Y0wPrPQBrGhoLn14xRYCG	1	Come & Go (with Marshmello)	2023-06-24 11:38:31.309	🦠
spotify:track:0DhnpIeCaMp85Jyc39sUBy	1	Gravity Falls Main Title Theme (from "Gravity Falls")	2023-06-24 11:38:31.309	🦀
spotify:track:7Jy6eGCwj4qafmn1gPnocQ	1	The Perfect Bathroom Trip	2023-06-24 11:38:31.31	🦀
spotify:track:4k80K0b6KZ2QjAYkXON7q6	5	Blow Me (One Last Kiss)	2023-06-24 11:38:31.309	💿
spotify:track:7EQGXaVSyEDsCWKmUcfpLk	6	Die Young	2023-06-24 11:38:31.31	💿
spotify:track:4DHcnVTT87F0zZhRPYmZ3B	1	Flowers	2023-06-24 11:38:31.309	🎶
spotify:track:78Sw5GDo6AlGwTwanjXbGh	1	Here With Me	2023-06-24 11:38:31.309	🌌
spotify:track:2zFF6jG5hQArbzcXz3KUWk	1	Cool for the Summer	2023-06-24 11:38:31.31	🐺
spotify:track:7j4sUNVVbPZ6mV4YwP9Yuu	1	Øde Ø	2023-06-24 11:38:31.31	🥂
spotify:track:4fINc8dnfcz7AdhFYVA4i7	1	It Girl	2023-06-24 11:38:31.31	📼
spotify:track:5odlY52u43F5BjByhxg7wg	1	golden hour	2023-06-24 11:38:31.309	🌌
spotify:track:6nfqlFOMiWthaOEa53uU0v	1	Fallin’ (Adrenaline)	2023-06-24 11:38:31.309	🔥
spotify:track:6nfqlFOMiWthaOEa53uU0v	3	Fallin’ (Adrenaline)	2023-06-24 11:38:31.309	😈
spotify:track:6nfqlFOMiWthaOEa53uU0v	4	Fallin’ (Adrenaline)	2023-06-24 11:38:31.309	🧊
spotify:track:3DZ8dbKg4OTSSqGARvecYd	1	Broadway Girls (feat. Morgan Wallen)	2023-06-24 11:38:31.309	🦠
spotify:track:4xkOaSrkexMciUUogZKVTS	3	Till I Collapse	2023-06-24 11:38:31.309	🪬
spotify:track:4xkOaSrkexMciUUogZKVTS	3	Till I Collapse	2023-06-24 11:38:31.309	🧊
spotify:track:5K6Ssv4Z3zRvxt0P6EKUAP	1	Heartbreak Anthem (with David Guetta & Little Mix)	2023-06-24 11:38:31.31	🎶
spotify:track:4kV4N9D1iKVxx1KLvtTpjS	1	break up with your girlfriend, i'm bored	2023-06-24 11:38:31.31	📢
spotify:track:48RrDBpOSSl1aLVCalGl5C	10	The Monster	2023-06-24 11:38:31.309	💿
spotify:track:2L52NkXrarZ4kxCCQ5B3r4	1	Nightshade	2023-06-24 11:38:31.31	☔
spotify:track:2L52NkXrarZ4kxCCQ5B3r4	2	Nightshade	2023-06-24 11:38:31.31	🌌
spotify:track:7k2t5SM7IsgEtKtRK8V2sm	2	Rockstar Sea Shanty	2023-06-24 11:38:31.309	🦀
spotify:track:7k2t5SM7IsgEtKtRK8V2sm	1	Rockstar Sea Shanty	2023-06-24 11:38:31.309	🧊
spotify:track:3QSVzVODWkWzGeDOGHZW0F	1	Adrenaline	2023-06-24 11:38:31.309	🦠
spotify:track:2MvvoeRt8NcOXWESkxWn3g	1	Ribs	2023-06-24 11:38:31.309	🎶
spotify:track:2MvvoeRt8NcOXWESkxWn3g	1	Ribs	2023-06-24 11:38:31.309	😈
spotify:track:2MvvoeRt8NcOXWESkxWn3g	1	Ribs	2023-06-24 11:38:31.309	🦊
spotify:track:21jGcNKet2qwijlDFuPiPb	1	Circles	2023-06-24 11:38:31.309	🦠
spotify:track:023OVLNzXhX0j7CxswUt6D	1	Cheerleader - Felix Jaehn Remix Radio Edit	2023-06-24 11:38:31.309	🦊
spotify:track:6od5hFv9IT5JHc7NEF9HRv	1	Victorious	2023-06-24 11:38:31.309	🔥
spotify:track:6od5hFv9IT5JHc7NEF9HRv	1	Victorious	2023-06-24 11:38:31.309	🫧
spotify:track:6od5hFv9IT5JHc7NEF9HRv	1	Victorious	2023-06-24 11:38:31.309	🧊
spotify:track:1rqqCSm0Qe4I9rUvWncaom	1	High Hopes	2023-06-24 11:38:31.309	🔥
spotify:track:5QDLhrAOJJdNAmCTJ8xMyW	1	Dynamite	2023-06-24 11:38:31.309	🦠
spotify:track:3GpbwCm3YxiWDvy29Uo3vP	8	Right Round	2023-06-24 11:38:31.309	💿
spotify:track:3GpbwCm3YxiWDvy29Uo3vP	2	Right Round	2023-06-24 11:38:31.309	🫧
spotify:track:5BuRl7JutFtGZz3jtsYiO5	1	(Have You Heard The News) Dewey Cox Died	2023-06-24 11:38:31.309	🦀
spotify:track:5xEM5hIgJ1jjgcEBfpkt2F	1	Complicated	2023-06-24 11:38:31.309	📼
spotify:track:6QFCMUUq1T2Vf5sFUXcuQ7	1	Beauty And A Beat	2023-06-24 11:38:31.309	📼
spotify:track:1Y5Jvi3eLi4Chwqch9GMem	1	Super Gremlin	2023-06-24 11:38:31.31	🎶
spotify:track:0qwcGscxUHGZTgq0zcaqk1	4	Here's to Never Growing Up	2023-06-24 11:38:31.309	💿
spotify:track:07nH4ifBxUB4lZcsf44Brn	1	Blame (feat. John Newman)	2023-06-24 11:38:31.31	🦊
spotify:track:5Sf3GyLEAzJXxZ5mbCPXTu	1	Waves - Robin Schulz Radio Edit	2023-06-24 11:38:31.309	🎶
spotify:track:27ycaQnQAxaPiyeg3nr2aB	2	Midnight Sky	2023-06-24 11:38:31.309	🎶
spotify:track:27ycaQnQAxaPiyeg3nr2aB	3	Midnight Sky	2023-06-24 11:38:31.309	☔
spotify:track:27ycaQnQAxaPiyeg3nr2aB	1	Midnight Sky	2023-06-24 11:38:31.309	🪬
spotify:track:7phmBo7bB9I9YifAXqnlqV	1	I Wrote The Book	2023-06-24 11:38:31.309	🤠
spotify:track:7phmBo7bB9I9YifAXqnlqV	1	I Wrote The Book	2023-06-24 11:38:31.309	😈
spotify:track:25KybV9BOUlvcnv7nN3Pyo	1	In The Night	2023-06-24 11:38:31.309	🐺
spotify:track:7EvKZAZ5Jnl8TxSuFrkEEZ	1	Cara Mia Addio	2023-06-24 11:38:31.309	🦀
spotify:track:6BaxqcoEM9r3LXisTyJjST	1	Ridin' Solo	2023-06-24 11:38:31.31	📼
spotify:track:45O0tUN9Bh6LH4eNxQ07AT	1	Eenie Meenie	2023-06-24 11:38:31.31	📼
spotify:track:3WdBXPv7WUY9fZ6YyTpX6M	1	Echoes in Rain	2023-06-24 11:38:31.309	☔
spotify:track:3WdBXPv7WUY9fZ6YyTpX6M	1	Echoes in Rain	2023-06-24 11:38:31.309	😈
spotify:track:3WdBXPv7WUY9fZ6YyTpX6M	1	Echoes in Rain	2023-06-24 11:38:31.309	🌌
spotify:track:1kPpge9JDLpcj15qgrPbYX	3	Good Time	2023-06-24 11:38:31.309	💿
spotify:track:1kPpge9JDLpcj15qgrPbYX	1	Good Time	2023-06-24 11:38:31.309	📼
spotify:track:1p80LdxRV74UKvL8gnD7ky	1	Blank Space	2023-06-24 11:38:31.309	🦊
spotify:track:3VygfAvvgVaJUeaBUSzlZu	1	Karma	2023-06-24 11:38:31.31	☔
spotify:track:6RKGBcDtgzXx21zUjpeu6F	1	Cold Cold Man	2023-06-24 11:38:31.309	🦠
spotify:track:5QO79kh1waicV47BqGRL3g	3	Save Your Tears	2023-06-24 11:38:31.31	☔
spotify:track:3RLC8jJmDOZwrJ5izaISXr	3	Blackout	2023-06-24 11:38:31.31	🧊
spotify:track:6E7jAJN2e3znSHyPCdQqx8	1	gogobebe	2023-06-24 11:38:31.309	📢
spotify:track:1zwMYTA5nlNjZxYrvBB2pV	3	Someone Like You	2023-06-24 11:38:31.309	📼
spotify:track:0BI0hfbmqybnd3TezrDME3	1	Met Him Last Night (feat. Ariana Grande)	2023-06-24 11:38:31.31	☔
spotify:track:6FLwmdmW77N1Pxb1aWsZmO	1	Only Time	2023-06-24 11:38:31.309	☔
spotify:track:6FLwmdmW77N1Pxb1aWsZmO	1	Only Time	2023-06-24 11:38:31.309	🦀
spotify:track:6QpqGSRmUnH81iYd1bfYL9	1	Either	2023-06-24 11:38:31.309	📢
spotify:track:0zNdw7vzK7nVtMlNkjVRfb	1	Sweet Victory (As Heard on "SpongeBob SquarePants")	2023-06-24 11:38:31.309	🦀
spotify:track:0Ta3jOf8m9yCSWMVwd8Qlf	1	International Harvester	2023-06-24 11:38:31.309	🤠
spotify:track:1IaYWv32nFFMdljBIjMY5T	5	Telephone	2023-06-24 11:38:31.309	💿
spotify:track:1IaYWv32nFFMdljBIjMY5T	1	Telephone	2023-06-24 11:38:31.309	🫧
spotify:track:22mek4IiqubGD9ctzxc69s	1	How Deep Is Your Love	2023-06-24 11:38:31.309	🎶
spotify:track:22mek4IiqubGD9ctzxc69s	1	How Deep Is Your Love	2023-06-24 11:38:31.309	🦊
spotify:track:6PQ88X9TkUIAUIZJHW2upE	1	Bad Habits	2023-06-24 11:38:31.309	🦠
spotify:track:45Ye91SaPA3Wk8oZ4F1gCQ	1	i drive me mad	2023-06-24 11:38:31.309	☔
spotify:track:5xhQChGGhKLWqBqX4XhtYE	2	Sail	2023-06-24 11:38:31.309	🦀
spotify:track:1NHsYfWMlDzCJEOOM3bIFY	1	Want You Gone	2023-06-24 11:38:31.309	🦀
spotify:track:623rRTKwGmgjH6sjE9uWLh	1	Scatman (ski-ba-bop-ba-dop-bop)	2023-06-24 11:38:31.309	🦀
spotify:track:07KYRDFf8Q6sqj4PWCP9vh	1	It's Five O'Clock Somewhere (with Jimmy Buffett)	2023-06-24 11:38:31.309	🤠
spotify:track:1Td7TGT1XtK2ojUjz1mGUV	1	Animals	2023-06-24 11:38:31.309	🦠
spotify:track:6I9VzXrHxO9rA9A5euc8Ak	1	Toxic	2023-06-24 11:38:31.309	🫧
spotify:track:1aVfE2hBr4qmh6PsLRl46F	1	Too Old To Die Young	2023-06-24 11:38:31.31	🔥
spotify:track:1mKXFLRA179hdOWQBwUk9e	1	Just Give Me a Reason (feat. Nate Ruess)	2023-06-24 11:38:31.309	💿
spotify:track:0HnaqUxvHP5LaWdmWwJpiS	1	Love Somebody	2023-06-24 11:38:31.309	💿
spotify:track:2G8IHtLBcgu2GXTwq0iB4Y	6	You're Gonna Go Far, Kid	2023-06-24 11:38:31.309	🔥
spotify:track:2G8IHtLBcgu2GXTwq0iB4Y	1	You're Gonna Go Far, Kid	2023-06-24 11:38:31.309	😈
spotify:track:2ekn2ttSfGqwhhate0LSR0	2	New Rules	2023-09-13 11:37:24.185	📢
spotify:track:7E2DqvnVtbIrFrL5X6YH9Q	2	Beer For My Horses	2023-06-24 11:38:31.309	🤠
spotify:track:7E2DqvnVtbIrFrL5X6YH9Q	1	Beer For My Horses	2023-06-24 11:38:31.309	📼
spotify:track:7FmN3Ow4yPMMmIB1jGamja	1	Girl Next Door	2023-06-24 11:38:31.309	🦀
spotify:track:1wcr8DjnN59Awev8nnKpQ4	7	Drunk-Dazed	2023-06-24 11:38:31.309	🔥
spotify:track:1wcr8DjnN59Awev8nnKpQ4	2	Drunk-Dazed	2023-06-24 11:38:31.309	😈
spotify:track:1wcr8DjnN59Awev8nnKpQ4	3	Drunk-Dazed	2023-06-24 11:38:31.309	🧊
spotify:track:6q93GJWPotW7ssUNGhz6Oj	1	Rub Some Bacon on It	2023-06-24 11:38:31.309	🦀
spotify:track:5xTtaWoae3wi06K5WfVUUH	1	Shake It Off	2023-06-24 11:38:31.309	🫧
spotify:track:5xTtaWoae3wi06K5WfVUUH	1	Shake It Off	2023-06-24 11:38:31.309	🦊
spotify:track:2bJvI42r8EF3wxjOuDav4r	1	Time of Our Lives	2023-06-24 11:38:31.309	🥂
spotify:track:2bJvI42r8EF3wxjOuDav4r	1	Time of Our Lives	2023-06-24 11:38:31.309	🫧
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	1	Pink Soldiers	2023-06-24 11:38:31.31	🎶
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	3	Pink Soldiers	2023-06-24 11:38:31.31	😈
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	3	Pink Soldiers	2023-06-24 11:38:31.31	🪬
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	1	Pink Soldiers	2023-06-24 11:38:31.31	🦀
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	2	Pink Soldiers	2023-06-24 11:38:31.31	🧊
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	1	Pink Soldiers	2023-06-24 11:38:31.31	🌌
spotify:track:24ATpf896KofEEDCd13myS	1	Take Over Control	2023-06-24 11:38:31.309	😈
spotify:track:24ATpf896KofEEDCd13myS	1	Take Over Control	2023-06-24 11:38:31.309	🧊
spotify:track:3VZQshi4COChhXaz7cLP02	9	I Love It (feat. Charli XCX)	2023-06-24 11:38:31.309	💿
spotify:track:0Bo5fjMtTfCD8vHGebivqc	1	Axel F	2023-06-24 11:38:31.309	🦀
spotify:track:4rvFyA7h88s8DehCOjqW9K	1	Rockefeller Street	2023-06-24 11:38:31.309	🦀
spotify:track:7jwDuO7UZvWs77KNj9HbvF	3	The Phoenix	2023-06-24 11:38:31.309	🔥
spotify:track:1fidCEsYlaVE3pHwKCvpFZ	3	Am I Wrong	2023-06-24 11:38:31.309	🦊
spotify:track:0fYVliAYKHuPmECRs1pbRf	1	Renegades	2023-06-24 11:38:31.309	🦊
spotify:track:6nhvIZeu7g6OsDCLj1DKLl	1	Tell Me Something I Don't Know	2023-06-24 11:38:31.309	💿
spotify:track:6nhvIZeu7g6OsDCLj1DKLl	1	Tell Me Something I Don't Know	2023-06-24 11:38:31.309	📼
spotify:track:5XMkENs3GfeRza8MfVAhjK	1	Finesse	2023-06-24 11:38:31.309	🦊
spotify:track:6r2BECwMgEoRb5yLfp0Hca	2	Born This Way	2023-06-24 11:38:31.309	📼
spotify:track:16Azhyv8164hYxI8Ax3F5k	1	Blur	2023-06-24 11:38:31.31	😈
spotify:track:6Qyc6fS4DsZjB2mRW9DsQs	1	Iris	2023-06-24 11:38:31.309	📼
spotify:track:3hWfKBt3n7j1xqIy6LA5ve	1	Astronomia	2023-06-24 11:38:31.309	🦀
spotify:track:03UrZgTINDqvnUMbbIMhql	1	Gangnam Style (강남스타일)	2023-06-24 11:38:31.31	🦀
spotify:track:03UrZgTINDqvnUMbbIMhql	1	Gangnam Style (강남스타일)	2023-06-24 11:38:31.31	🦊
spotify:track:3nEenyWngzWgqMmOLWRm7C	1	I'm on Vacation	2023-06-24 11:38:31.309	🦀
spotify:track:3nEenyWngzWgqMmOLWRm7C	1	I'm on Vacation	2023-06-24 11:38:31.309	🦊
spotify:track:3eBnEo9WL34ulBCZlLpUQO	1	Chicken Fried	2023-06-24 11:38:31.309	🤠
spotify:track:6C7RJEIUDqKkJRZVWdkfkH	2	Stronger	2023-06-24 11:38:31.309	🪬
spotify:track:6C7RJEIUDqKkJRZVWdkfkH	1	Stronger	2023-06-24 11:38:31.309	🧊
spotify:track:01TuObJVd7owWchVRuQbQw	3	#thatPOWER	2023-06-24 11:38:31.31	💿
spotify:track:0wp6ckRomrGJq2fD2CFOQE	1	Bad Girl - JVKE Remix	2023-06-24 11:38:31.309	🎶
spotify:track:0wp6ckRomrGJq2fD2CFOQE	1	Bad Girl - JVKE Remix	2023-06-24 11:38:31.309	🦠
spotify:track:79Mjfhh393dZdAsTvUFDR6	1	Don't Go Breaking My Heart	2023-06-24 11:38:31.31	📢
spotify:track:6BtmXhTJMM9sBTHeYYASGz	1	It's Time	2023-06-24 11:38:31.309	🦊
spotify:track:3tjFYV6RSFtuktYl3ZtYcq	1	Mood (feat. iann dior)	2023-06-24 11:38:31.31	🎶
spotify:track:3cHyrEgdyYRjgJKSOiOtcS	1	Timber (feat. Ke$ha)	2023-06-24 11:38:31.309	💿
spotify:track:3cHyrEgdyYRjgJKSOiOtcS	1	Timber (feat. Ke$ha)	2023-06-24 11:38:31.309	🫧
spotify:track:3cHyrEgdyYRjgJKSOiOtcS	1	Timber (feat. Ke$ha)	2023-06-24 11:38:31.309	🦊
spotify:track:4uDhts78RdwIDjEqPrYVKp	6	Sweet Dreams	2023-06-24 11:38:31.309	🎶
spotify:track:4uDhts78RdwIDjEqPrYVKp	4	Sweet Dreams	2023-06-24 11:38:31.309	😈
spotify:track:4uDhts78RdwIDjEqPrYVKp	9	Sweet Dreams	2023-06-24 11:38:31.309	🪬
spotify:track:4uDhts78RdwIDjEqPrYVKp	3	Sweet Dreams	2023-06-24 11:38:31.309	🧊
spotify:track:6ebkx7Q5tTxrCxKq4GYj0Y	5	Club Can't Handle Me (feat. David Guetta)	2023-06-24 11:38:31.309	💿
spotify:track:12KUFSHFgT0XCoiSlvdQi4	1	Break Free	2023-06-24 11:38:31.31	🦊
spotify:track:5S9Zs5g9lTWnLIboN1pdlU	1	Fingers Crossed	2023-06-24 11:38:31.309	🦠
spotify:track:4i2qxFEVVUi8yOYoxB8TCX	1	Midnight Sky	2023-06-24 11:38:31.309	😈
spotify:track:4vLRCGOBz4zIS8nEHk5v9j	1	I Feel Good	2023-06-24 11:38:31.309	🥂
spotify:track:2dLLR6qlu5UJ5gk0dKz0h3	1	Royals	2023-06-24 11:38:31.309	🦊
spotify:track:2Lhdl74nwwVGOE2Gv35QuK	1	Cupid's Chokehold / Breakfast in America	2023-06-24 11:38:31.309	📼
spotify:track:76EVeVC8cRdqbAKFuj3jv5	1	Stone	2023-06-24 11:38:31.31	🔥
spotify:track:7s0lDK7y3XLmI7tcsRAbW0	1	My Songs Know What You Did In The Dark (Light Em Up)	2023-06-24 11:38:31.309	🔥
spotify:track:4k6Uh1HXdhtusDW5y8Gbvy	1	Bad Habit	2023-06-24 11:38:31.309	🎶
spotify:track:4k6Uh1HXdhtusDW5y8Gbvy	1	Bad Habit	2023-06-24 11:38:31.309	😈
spotify:track:4k6Uh1HXdhtusDW5y8Gbvy	1	Bad Habit	2023-06-24 11:38:31.309	🦠
spotify:track:6Z8R6UsFuGXGtiIxiD8ISb	1	Safe And Sound	2023-06-24 11:38:31.31	🦊
spotify:track:0RUGuh2uSNFJpGMSsD1F5C	2	It Will Rain	2023-06-24 11:38:31.309	💿
spotify:track:0RUGuh2uSNFJpGMSsD1F5C	1	It Will Rain	2023-06-24 11:38:31.309	📼
spotify:track:514rhnksEwHUh6LxXsQ4Y9	1	Back To You	2023-06-24 11:38:31.309	📢
spotify:track:2374M0fQpWi3dLnB54qaLX	1	Africa	2023-06-24 11:38:31.31	🦀
spotify:track:4bPQs0PHn4xbipzdPfn6du	1	I Write Sins Not Tragedies	2023-06-24 11:38:31.309	📼
spotify:track:2ZAx6NDhX2yE5aL5ueEQgY	4	Mr. Saxobeat	2023-06-24 11:38:31.309	💿
spotify:track:2ZAx6NDhX2yE5aL5ueEQgY	1	Mr. Saxobeat	2023-06-24 11:38:31.309	📼
spotify:track:0BsbPzgtF3Ljzgtp5WmvwO	1	I Will Always Love You	2023-06-24 11:38:31.31	🦀
spotify:track:0OC6kRjvDZIEG7fMcEVBpb	1	It's My Belly Button	2023-06-24 11:38:31.309	🦀
spotify:track:2YVlDlk2zRceefo6XlC6DX	1	Ain’t That Some	2023-06-24 11:38:31.31	🤠
spotify:track:0TvQLMecTE8utzoNmvXRbK	1	Bad Blood	2023-06-24 11:38:31.309	🦊
spotify:track:0b18g3G5spr4ZCkz7Y6Q0Q	2	Rasputin	2023-06-24 11:38:31.309	🎶
spotify:track:0b18g3G5spr4ZCkz7Y6Q0Q	1	Rasputin	2023-06-24 11:38:31.309	😈
spotify:track:0b18g3G5spr4ZCkz7Y6Q0Q	1	Rasputin	2023-06-24 11:38:31.309	🦀
spotify:track:0b18g3G5spr4ZCkz7Y6Q0Q	7	Rasputin	2023-06-24 11:38:31.309	🧊
spotify:track:6X5OFBbrsHRsyO1zP7udgr	1	Man's Not Hot	2023-06-24 11:38:31.309	🦀
spotify:track:1FpVJ7HpZInE2GvhVE2TwT	2	Legends Never Die	2023-06-24 11:38:31.309	🧊
spotify:track:3MGJF1CDFGfjXESL2Heva0	1	F**kin' Perfect	2023-06-24 11:38:31.309	📼
spotify:track:1CS7Sd1u5tWkstBhpssyjP	1	Take Me to Church	2023-06-24 11:38:31.31	🦊
spotify:track:1CS7Sd1u5tWkstBhpssyjP	1	Take Me to Church	2023-06-24 11:38:31.31	🧊
spotify:track:67BtfxlNbhBmCDR2L2l8qd	1	MONTERO (Call Me By Your Name)	2023-06-24 11:38:31.309	🎶
spotify:track:6yARPLK0PV4heEyh7pVMGz	2	Part Of Me	2023-06-24 11:38:31.309	💿
spotify:track:6yARPLK0PV4heEyh7pVMGz	1	Part Of Me	2023-06-24 11:38:31.309	📼
spotify:track:7AF443JHBPis4GoNQHvAEr	1	Phatdippin'	2023-06-24 11:38:31.309	🦀
spotify:track:6KOEK6SeCEZOQkLj5M1PxH	1	California Gurls	2023-06-24 11:38:31.31	📼
spotify:track:6KOEK6SeCEZOQkLj5M1PxH	1	California Gurls	2023-06-24 11:38:31.31	🫧
spotify:track:7w87IxuO7BDcJ3YUqCyMTT	1	Pumped Up Kicks	2023-06-24 11:38:31.309	💿
spotify:track:7w87IxuO7BDcJ3YUqCyMTT	1	Pumped Up Kicks	2023-06-24 11:38:31.309	📼
spotify:track:6WiGRFQfx2qw49MA7OeDYK	1	Purple Hat	2023-06-24 11:38:31.31	🦀
spotify:track:1iOHLlEsMbgJfYBFWy4TjG	1	Oh Yeah - Remastered 2005	2023-06-24 11:38:31.309	🦀
spotify:track:3IcIIZMMS7UArJJPtEHXG8	1	Obsessed	2023-06-24 11:38:31.309	🫧
spotify:track:2goLsvvODILDzeeiT4dAoR	1	Believe	2023-06-24 11:38:31.31	🦀
spotify:track:3O9nQmCkiA2VUAqQpkJZhD	1	Jack Sparrow	2023-06-24 11:38:31.31	🦀
spotify:track:7tNTW9aoi0qVC1z2qPJmQG	1	Macarena	2023-06-24 11:38:31.309	🦀
spotify:track:0JiY190vktuhSGN6aqJdrt	4	So What	2023-06-24 11:38:31.309	💿
spotify:track:0JiY190vktuhSGN6aqJdrt	1	So What	2023-06-24 11:38:31.309	📼
spotify:track:69uxyAqqPIsUyTO8txoP2M	1	Adventure of a Lifetime	2023-06-24 11:38:31.309	📢
spotify:track:4MKzCHlZvkwJOQRNkdw4zq	8	Sexy Chick (feat. Akon)	2023-06-24 11:38:31.309	💿
spotify:track:4MKzCHlZvkwJOQRNkdw4zq	2	Sexy Chick (feat. Akon)	2023-06-24 11:38:31.309	🫧
spotify:track:4MKzCHlZvkwJOQRNkdw4zq	1	Sexy Chick (feat. Akon)	2023-09-06 13:58:56.752	🎶
spotify:track:3JTjLyrnevl9ASw3ayGO2P	2	GUY.exe	2023-06-24 11:38:31.309	🎶
spotify:track:3JTjLyrnevl9ASw3ayGO2P	1	GUY.exe	2023-06-24 11:38:31.309	😈
spotify:track:0sf12qNH5qcw8qpgymFOqD	1	Blinding Lights	2023-06-24 11:38:31.309	🪬
spotify:track:0sf12qNH5qcw8qpgymFOqD	3	Blinding Lights	2023-06-24 11:38:31.309	🧊
spotify:track:0sf12qNH5qcw8qpgymFOqD	1	Blinding Lights	2023-06-24 11:38:31.309	🦠
spotify:track:2BtwxoS7em1pSInny4Ff7y	1	Space Junk	2023-06-24 11:38:31.309	🦀
spotify:track:5oHHMDcVOmPSFrCgdbHPdb	1	It's Five O'Clock Somewhere (with Jimmy Buffett)	2023-06-24 11:38:31.309	🤠
spotify:track:76N7FdzCI9OsiUnzJVLY2m	2	Rumour Has It	2023-06-24 11:38:31.309	💿
spotify:track:5JEyMbmqdPeD7FlyLv3fGp	17	Clarity	2023-06-24 11:38:31.309	💿
spotify:track:0yLdNVWF3Srea0uzk55zFn	2	Flowers	2023-06-24 11:38:31.309	🎶
spotify:track:0yLdNVWF3Srea0uzk55zFn	1	Flowers	2023-06-24 11:38:31.309	😈
spotify:track:0tr0D36L1RwPdUTFfyNq37	2	Tonight Is the Night	2023-06-24 11:38:31.309	💿
spotify:track:0tr0D36L1RwPdUTFfyNq37	1	Tonight Is the Night	2023-06-24 11:38:31.309	🫧
spotify:track:7l94dyN2hX9c6wWcZQuOGJ	1	Dangerous Woman	2023-06-24 11:38:31.309	📢
spotify:track:2Esf7NTKQNCPE4G17QvVCs	2	Toes	2023-06-24 11:38:31.31	🤠
spotify:track:5lEsM6qpuzuZwij6jIZPvP	1	Big Time Rush	2023-06-24 11:38:31.309	🦀
spotify:track:6V1bu6o1Yo5ZXnsCJU8Ovk	1	Girls Like You (feat. Cardi B) - Cardi B Version	2023-06-24 11:38:31.309	📢
spotify:track:752n2yiIZZdxNAMTXmrObn	2	EveryTime I Cry - R3HAB Remix	2023-06-24 11:38:31.309	🎶
spotify:track:4cS2HQ6jK80vqdY9ofpztx	4	She Wolf	2023-06-24 11:38:31.31	🎶
spotify:track:4cS2HQ6jK80vqdY9ofpztx	2	She Wolf	2023-06-24 11:38:31.31	😈
spotify:track:4cS2HQ6jK80vqdY9ofpztx	1	She Wolf	2023-06-24 11:38:31.31	🪬
spotify:track:4cS2HQ6jK80vqdY9ofpztx	1	She Wolf	2023-06-24 11:38:31.31	📼
spotify:track:4cS2HQ6jK80vqdY9ofpztx	1	She Wolf	2023-06-24 11:38:31.31	🫧
spotify:track:4cS2HQ6jK80vqdY9ofpztx	1	She Wolf	2023-06-24 11:38:31.31	🧊
spotify:track:2qT1uLXPVPzGgFOx4jtEuo	1	no tears left to cry	2023-06-24 11:38:31.31	🦊
spotify:track:3FeVmId7tL5YN8B7R3imoM	1	My Universe	2023-06-24 11:38:31.309	🎶
spotify:track:5dJSrn1RKceOPDyb4DAe4w	1	Hooked On A Feeling	2023-06-24 11:38:31.309	🦊
spotify:track:7eJMfftS33KTjuF7lTsMCx	1	death bed (coffee for your head)	2023-06-24 11:38:31.309	☔
spotify:track:04ZTP5KsCypmtCmQg5tH9R	1	I'm a Mess	2023-06-24 11:38:31.309	☔
spotify:track:0TkJIyL69RAUIbNwGub6uR	1	Burn The House Down	2023-06-24 11:38:31.31	📢
spotify:track:7BoobGhD4x5K96Me0hqC8Q	1	Build a Bitch	2023-06-24 11:38:31.31	🦠
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-06-24 11:38:31.309	🎶
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	2	Sweater Weather	2023-06-24 11:38:31.309	☔
spotify:track:3ggtU1ZOKO8ZNiqPNyXGcm	1	Dinero	2023-06-24 11:38:31.309	😈
spotify:track:2XH4CaV8UoJoIqLrL9l4Qj	1	Middle Of Nowhere	2023-06-24 11:38:31.309	📼
spotify:track:2XH4CaV8UoJoIqLrL9l4Qj	1	Middle Of Nowhere	2023-09-06 16:00:43.402	🎶
spotify:track:0pqnGHJpmpxLKifKRmU6WP	1	Believer	2023-06-24 11:38:31.309	📢
spotify:track:0Nrw0vKim2z4dph1jsxvye	1	Still Alive	2023-06-24 11:38:31.309	🦀
spotify:track:7K3BhSpAxZBznislvUMVtn	1	Last Night	2023-06-24 11:38:31.309	🤠
spotify:track:7K3BhSpAxZBznislvUMVtn	1	Last Night	2023-06-24 11:38:31.309	😈
spotify:track:0QsvXIfqM0zZoerQfsI9lm	1	Don't Let Me Down (feat. Daya)	2023-06-24 11:38:31.31	🦊
spotify:track:2yAVzRiEQooPEJ9SYx11L3	2	Blue (Da Ba Dee) - Gabry Ponte Ice Pop Radio	2023-06-24 11:38:31.309	🦀
spotify:track:2yAVzRiEQooPEJ9SYx11L3	1	Blue (Da Ba Dee) - Gabry Ponte Ice Pop Radio	2023-06-24 11:38:31.309	🧊
spotify:track:3JvrhDOgAt6p7K8mDyZwRd	2	Riptide	2023-06-24 11:38:31.309	🦊
spotify:track:3TGRqZ0a2l1LRblBkJoaDx	1	Call Me Maybe	2023-06-24 11:38:31.309	🫧
spotify:track:1MtUq6Wp1eQ8PC6BbPCj8P	1	I Took A Pill In Ibiza - Seeb Remix	2023-06-24 11:38:31.31	🦊
spotify:track:5aTsxlQlq0vIedDWZoqMWN	2	Lights - Single Version	2023-06-24 11:38:31.309	💿
spotify:track:0vjeOZ3Ft5jvAi9SBFJm1j	1	Superhero (Heroes & Villains) [with Future & Chris Brown]	2023-06-24 11:38:31.309	🎶
spotify:track:0vjeOZ3Ft5jvAi9SBFJm1j	1	Superhero (Heroes & Villains) [with Future & Chris Brown]	2023-06-24 11:38:31.309	😈
spotify:track:15RSD04RKmM1fjrBONNtqK	1	Chug Jug With You (Number One Victory Royale)	2023-06-24 11:38:31.31	🦀
spotify:track:696DnlkuDOXcMAnKlTgXXK	1	ROXANNE	2023-06-24 11:38:31.31	🎶
spotify:track:4G8gkOterJn0Ywt6uhqbhp	1	Radioactive	2023-06-24 11:38:31.309	🦊
spotify:track:3Te8uLyit6X3ncNW8Fp3K2	1	Immortals	2023-06-24 11:38:31.31	🔥
spotify:track:3Te8uLyit6X3ncNW8Fp3K2	1	Immortals	2023-06-24 11:38:31.31	🦊
spotify:track:5OiLJ8tjUPFiPX2gVM8fxJ	1	Imma Be	2023-06-24 11:38:31.309	💿
spotify:track:7dt6x5M1jzdTEt8oCbisTK	1	Better Now	2023-06-24 11:38:31.309	📢
spotify:track:2GiJYvgVaD2HtM8GqD9EgQ	1	Electric Love	2023-06-24 11:38:31.309	🦠
spotify:track:5iJfzXKvQXlYOBtEQhEmpA	1	Tokyo Drift (Fast & Furious) - From "The Fast And The Furious: Tokyo Drift" Soundtrack	2023-06-24 11:38:31.309	🦀
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	2	I Kissed A Girl	2023-06-24 11:38:31.309	💿
spotify:track:60vvp6UXG2KmLmrNvcVHa8	3	Lights Down Low	2023-06-24 11:38:31.309	🐺
spotify:track:7J9mBHG4J2eIfDAv5BehKA	1	7 Element	2023-06-24 11:38:31.309	🦀
spotify:track:2a1o6ZejUi8U3wzzOtCOYw	1	Danza Kuduro	2023-06-24 11:38:31.31	📢
spotify:track:1zPWTZRStEg3Vye5HtagV5	1	Big Chungus	2023-06-24 11:38:31.309	🦀
spotify:track:6Knv6wdA0luoMUuuoYi2i1	1	My House	2023-06-24 11:38:31.31	🦊
spotify:track:6NFyWDv5CjfwuzoCkw47Xf	2	Delicate	2023-06-24 11:38:31.31	📢
spotify:track:73CMRj62VK8nUS4ezD2wvi	4	Set Fire to the Rain	2023-06-24 11:38:31.309	💿
spotify:track:73CMRj62VK8nUS4ezD2wvi	1	Set Fire to the Rain	2023-06-24 11:38:31.309	📼
spotify:track:5lF0pHbsJ0QqyIrLweHJPW	2	Burn	2023-06-24 11:38:31.309	💿
spotify:track:0uXpWdTQDlGW8eZdXHudNB	1	Cherry Gum	2023-06-24 11:38:31.309	🥂
spotify:track:0azC730Exh71aQlOt9Zj3y	3	This Is What You Came For	2023-06-24 11:38:31.31	🎶
spotify:track:0azC730Exh71aQlOt9Zj3y	1	This Is What You Came For	2023-06-24 11:38:31.31	😈
spotify:track:0azC730Exh71aQlOt9Zj3y	2	This Is What You Came For	2023-06-24 11:38:31.31	🫧
spotify:track:0azC730Exh71aQlOt9Zj3y	1	This Is What You Came For	2023-06-24 11:38:31.31	🧊
spotify:track:5zFglKYiknIxks8geR8rcL	1	Beautiful Mistakes (feat. Megan Thee Stallion)	2023-06-24 11:38:31.309	🦠
spotify:track:0JTzAeAUlzER73R77auERv	1	My Life Would Suck Without You	2023-06-24 11:38:31.309	📼
spotify:track:5jzKL4BDMClWqRguW5qZvh	1	Teenage Dream	2023-06-24 11:38:31.31	💿
spotify:track:6vc2Jq2vaGu8z326kSrw92	3	Your Love Is My Drug	2023-06-24 11:38:31.31	💿
spotify:track:2Iq6HhIquO7JKr0KfTNLzU	1	My Type	2023-06-24 11:38:31.31	🥂
spotify:track:2GyA33q5rti5IxkMQemRDH	1	I Know What You Did Last Summer	2023-06-24 11:38:31.309	🦊
spotify:track:1WzAeadSKJhqykZFbJNmQv	1	Your Man	2023-06-24 11:38:31.31	🤠
spotify:track:1WkMMavIMc4JZ8cfMmxHkI	1	CAN'T STOP THE FEELING! (from DreamWorks Animation's "TROLLS")	2023-06-24 11:38:31.309	🦊
spotify:track:3Zwu2K0Qa5sT6teCCHPShP	5	Thnks fr th Mmrs	2023-06-24 11:38:31.309	🔥
spotify:track:3Zwu2K0Qa5sT6teCCHPShP	1	Thnks fr th Mmrs	2023-06-24 11:38:31.309	😈
spotify:track:3Zwu2K0Qa5sT6teCCHPShP	3	Thnks fr th Mmrs	2023-06-24 11:38:31.309	🧊
spotify:track:0obBFrPYkSoBJbvHfUIhkv	2	Sexy And I Know It	2023-06-24 11:38:31.309	💿
spotify:track:0obBFrPYkSoBJbvHfUIhkv	1	Sexy And I Know It	2023-06-24 11:38:31.309	📼
spotify:track:4XNrMwGx1SqP01sqkGTDmo	2	One More Night	2023-06-24 11:38:31.309	📼
spotify:track:6xG2ZGudUgtV235xvDlSEt	1	Pokemon Theme	2023-06-24 11:38:31.31	🦀
spotify:track:22Lg6vvMS2JC07aAjsGvtU	1	Hot N Cold	2023-06-24 11:38:31.309	📼
spotify:track:6xGruZOHLs39ZbVccQTuPZ	1	Glimpse of Us	2023-06-24 11:38:31.309	🦠
spotify:track:1CdqVF1ywD0ZO1zXtB9yWa	1	Break Your Heart	2023-06-24 11:38:31.31	📼
spotify:track:0LohatbcUXRauoeMlR1jnS	21	Pound The Alarm	2023-06-24 11:38:31.31	💿
spotify:track:4t5lrf5rFX6JWAUPKCDlKk	1	The Safety Dance	2023-06-24 11:38:31.309	🦀
spotify:track:4cacyP5c3PMlfnyjpg13xW	1	Betty (Get Money)	2023-06-24 11:38:31.31	🦀
spotify:track:4e4fqjx0Izh4svvTef1z7e	1	Meant to Be (feat. Florida Georgia Line)	2023-06-24 11:38:31.309	🤠
spotify:track:40YcuQysJ0KlGQTeGUosTC	1	Me, Myself & I	2023-06-24 11:38:31.309	🦊
spotify:track:3pYDZTJM2tVBUhIRifWVzI	1	Blow	2023-06-24 11:38:31.309	💿
spotify:track:1daDRI9ahBonbWD8YcxOIB	1	Angels Like You	2023-06-24 11:38:31.309	☔
spotify:track:1daDRI9ahBonbWD8YcxOIB	1	Angels Like You	2023-06-24 11:38:31.309	😈
spotify:track:1daDRI9ahBonbWD8YcxOIB	1	Angels Like You	2023-06-24 11:38:31.309	🪬
spotify:track:2KH16WveTQWT6KOG9Rg6e2	1	Eye of the Tiger	2023-06-24 11:38:31.309	🦀
spotify:track:2DgdHcjWmO3qd50RzuBLgZ	7	House of Memories	2023-06-24 11:38:31.309	🧊
spotify:track:7jk7gqyEonmVVYahZN5zhW	1	Circus	2023-06-24 11:38:31.309	📼
spotify:track:1bM50INir8voAkVoKuvEUI	2	OMG (feat. will.i.am)	2023-06-24 11:38:31.31	💿
spotify:track:62AuGbAkt8Ox2IrFFb8GKV	1	Sweet Caroline	2023-06-24 11:38:31.31	🦀
spotify:track:6Xgq7MvZiet0hVi3KaDSgJ	1	Holy (feat. Chance The Rapper)	2023-06-24 11:38:31.309	🦠
spotify:track:2VOomzT6VavJOGBeySqaMc	1	Disturbia	2023-06-24 11:38:31.309	💿
spotify:track:15JINEqzVMv3SvJTAXAKED	1	Love The Way You Lie	2023-06-24 11:38:31.309	💿
spotify:track:3LlAyCYU26dvFZBDUIMb7a	1	Demons	2023-06-24 11:38:31.309	🦊
spotify:track:1x5sYLZiu9r5E43kMlt9f8	1	Symphony (feat. Zara Larsson)	2023-06-24 11:38:31.309	☔
spotify:track:7IUl5c6u18rzmyQOblj10T	1	Somebody To Love Remix	2023-06-24 11:38:31.31	🫧
spotify:track:1tAutlhI9FwnKn7fVgmd5P	7	Without You (feat. Usher)	2023-06-24 11:38:31.31	💿
spotify:track:67hbP9PFQZrb4XZc3TzB0s	1	Rasputin - Single Version	2023-06-24 11:38:31.31	🦀
spotify:track:275a9yzwGB6ncAW4SxY7q3	1	Panda	2023-06-24 11:38:31.309	🎶
spotify:track:7xoUc6faLbCqZO6fQEYprd	8	One Last Time	2023-06-24 11:38:31.309	💿
spotify:track:2Q8fFORnsDE6I3RNvSLXSf	1	Gotta Be You	2023-06-24 11:38:31.31	🎶
spotify:track:2Q8fFORnsDE6I3RNvSLXSf	1	Gotta Be You	2023-06-24 11:38:31.31	🧊
spotify:track:2Q8fFORnsDE6I3RNvSLXSf	1	Gotta Be You	2023-06-24 11:38:31.31	🦠
spotify:track:5Q0Nhxo0l2bP3pNjpGJwV1	1	Party In The U.S.A.	2023-06-24 11:38:31.309	📼
spotify:track:0vcfOQOvTCv8ckiRs8Xc1Z	1	Beautiful Drug	2023-06-24 11:38:31.309	🤠
spotify:track:6K4t31amVTZDgR3sKmwUJJ	2	The Less I Know The Better	2023-06-24 11:38:31.31	🎶
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-06-24 11:38:31.31	☔
spotify:track:6K4t31amVTZDgR3sKmwUJJ	2	The Less I Know The Better	2023-06-24 11:38:31.31	🌌
spotify:track:1igr912oduAmZQaoGhiADw	3	Riot	2023-06-24 11:38:31.309	🔥
spotify:track:2I7TngtQc3oZO0fsyFDUAJ	2	Chasing The Sun	2023-06-24 11:38:31.31	💿
spotify:track:2I7TngtQc3oZO0fsyFDUAJ	1	Chasing The Sun	2023-06-24 11:38:31.31	🦊
spotify:track:2I7TngtQc3oZO0fsyFDUAJ	2	Chasing The Sun	2023-06-24 11:38:31.31	🧊
spotify:track:6ocbgoVGwYJhOv1GgI9NsF	1	7 rings	2023-06-24 11:38:31.309	📢
spotify:track:7Dyq1bhhjknLKEGg4k5NLr	2	Hold It Against Me	2023-06-24 11:38:31.31	💿
spotify:track:1JDIArrcepzWDTAWXdGYmP	12	I Want You To Know	2023-06-24 11:38:31.31	💿
spotify:track:12wSL3tGk3MtbDEhfG7xy3	2	You'll Always Find Your Way Back Home	2023-06-24 11:38:31.309	📼
spotify:track:48QmG1dfvMuYLxMPt7KSRA	1	No Lie	2023-06-24 11:38:31.309	🎶
spotify:track:2MMUGOqJXwSWEY9yGYl8D2	1	Slow Drip	2023-06-24 11:38:31.309	🌌
spotify:track:52okn5MNA47tk87PeZJLEL	2	Let You Down	2023-06-24 11:38:31.31	🐺
spotify:track:6xw8ld1ztoCKifwTN6uGDq	1	Black Hole	2023-06-24 11:38:31.31	😈
spotify:track:22VdIZQfgXJea34mQxlt81	1	Can't Feel My Face	2023-06-24 11:38:31.309	🐺
spotify:track:22VdIZQfgXJea34mQxlt81	1	Can't Feel My Face	2023-06-24 11:38:31.309	📢
spotify:track:5XNm6WTJxKtcaug3lc8KJF	1	Just Like Fire (From the Original Motion Picture "Alice Through The Looking Glass") - Wideboys Remix	2023-06-24 11:38:31.309	🦊
spotify:track:5XNm6WTJxKtcaug3lc8KJF	1	Just Like Fire (From the Original Motion Picture "Alice Through The Looking Glass") - Wideboys Remix	2023-06-24 11:38:31.309	🐺
spotify:track:5fp6m6Zo4LetiWaMMrPjy5	1	Dreamscape	2023-06-24 11:38:31.309	😈
spotify:track:5fp6m6Zo4LetiWaMMrPjy5	5	Dreamscape	2023-06-24 11:38:31.309	🧊
spotify:track:5fp6m6Zo4LetiWaMMrPjy5	1	Dreamscape	2023-06-24 11:38:31.309	🌌
spotify:track:14OxJlLdcHNpgsm4DRwDOB	1	Habits (Stay High)	2023-06-24 11:38:31.309	🦊
spotify:track:61KpQadow081I2AsbeLcsb	1	deja vu	2023-06-24 11:38:31.31	🦠
spotify:track:5jjZikDrEd0by1o7V3fO4y	1	overwhelmed	2023-06-24 11:38:31.309	☔
spotify:track:4E6cwWJWZw2zWf7VFbH7wf	3	Love Song	2023-06-24 11:38:31.31	📼
spotify:track:3GCL1PydwsLodcpv0Ll1ch	1	You Belong With Me	2023-06-24 11:38:31.309	📼
spotify:track:017PF4Q3l4DBUiWoXk4OWT	1	Break My Heart	2023-06-24 11:38:31.31	🎶
spotify:track:017PF4Q3l4DBUiWoXk4OWT	1	Break My Heart	2023-06-24 11:38:31.31	🦠
spotify:track:5Hroj5K7vLpIG4FNCRIjbP	1	Best Day Of My Life	2023-06-24 11:38:31.309	🦊
spotify:track:38iU2jg98IZZEIJPrP7aWD	1	Till the World Ends	2023-06-24 11:38:31.309	💿
spotify:track:38iU2jg98IZZEIJPrP7aWD	1	Till the World Ends	2023-06-24 11:38:31.309	🫧
spotify:track:3Qu3Zh4WTKhP9GEXo0aDnb	1	Thought You Should Know	2023-06-24 11:38:31.309	🤠
spotify:track:3bC1ahPIYt1btJzSSEyyrF	2	Whistle	2023-06-24 11:38:31.309	💿
spotify:track:6z32PqAvnLBGDD2KinNn5j	1	1-800-273-8255	2023-06-24 11:38:31.31	🐺
spotify:track:0WfKDYeUAoLA3vdvLKKWMW	2	Poker Face	2023-06-24 11:38:31.31	📼
spotify:track:2tnVG71enUj33Ic2nFN6kZ	3	Ride It	2023-06-24 11:38:31.309	🎶
spotify:track:2tnVG71enUj33Ic2nFN6kZ	1	Ride It	2023-06-24 11:38:31.309	😈
spotify:track:2tnVG71enUj33Ic2nFN6kZ	1	Ride It	2023-06-24 11:38:31.309	🪬
spotify:track:2tnVG71enUj33Ic2nFN6kZ	1	Ride It	2023-06-24 11:38:31.309	🦠
spotify:track:72jCZdH0Lhg93z6Z4hBjgj	2	I Knew You Were Trouble.	2023-06-24 11:38:31.31	📼
spotify:track:5rX6C5QVvvZB7XckETNych	1	All Summer Long	2023-06-24 11:38:31.31	🤠
spotify:track:0KAiuUOrLTIkzkpfpn9jb9	1	Drive By	2023-06-24 11:38:31.309	💿
spotify:track:0KAiuUOrLTIkzkpfpn9jb9	2	Drive By	2023-06-24 11:38:31.309	📼
spotify:track:1NpW5kyvO4XrNJ3rnfcNy3	20	Wild Ones (feat. Sia)	2023-06-24 11:38:31.31	💿
spotify:track:1NpW5kyvO4XrNJ3rnfcNy3	1	Wild Ones (feat. Sia)	2023-06-24 11:38:31.31	🫧
spotify:track:4PqUG6BJSX6APKeELFpcyf	2	My OCD	2023-06-24 11:38:31.309	🦀
spotify:track:6KfoDhO4XUWSbnyKjNp9c4	1	Maniac	2023-06-24 11:38:31.309	🎶
spotify:track:6GqqGv8frU7kqzXkm2rewI	1	A Little Bit Off	2023-06-24 11:38:31.309	☔
spotify:track:6GqqGv8frU7kqzXkm2rewI	5	A Little Bit Off	2023-06-24 11:38:31.309	😈
spotify:track:6GqqGv8frU7kqzXkm2rewI	1	A Little Bit Off	2023-06-24 11:38:31.309	🧊
spotify:track:742DnU2ZFPDiWYzOcYVqnT	1	Facebook Song	2023-06-24 11:38:31.309	🦀
spotify:track:0IkKz2J93C94Ei4BvDop7P	8	Party Rock Anthem	2023-06-24 11:38:31.31	💿
spotify:track:67E9IHri5jH7kMtZegTtCE	1	Goodbye	2023-06-24 11:38:31.309	🎶
spotify:track:67E9IHri5jH7kMtZegTtCE	1	Goodbye	2023-06-24 11:38:31.309	☔
spotify:track:6zSpb8dQRaw0M1dK8PBwQz	1	Cold Heart - PNAU Remix	2023-06-24 11:38:31.31	🌌
spotify:track:6zSpb8dQRaw0M1dK8PBwQz	1	Cold Heart - PNAU Remix	2023-06-24 11:38:31.31	🦠
spotify:track:26wLOs3ZuHJa2Ihhx6QIE6	2	Teeth	2023-06-24 11:38:31.309	🔥
spotify:track:26wLOs3ZuHJa2Ihhx6QIE6	1	Teeth	2023-06-24 11:38:31.309	🧊
spotify:track:7ewT0nLFkMD8ONbRibePr9	3	I Don't Care - Single Version	2023-06-24 11:38:31.309	😈
spotify:track:7ewT0nLFkMD8ONbRibePr9	4	I Don't Care - Single Version	2023-06-24 11:38:31.309	🧊
spotify:track:1AKGJQIHP3dIPuhOjdxD6a	1	Bitch Lasagna	2023-06-24 11:38:31.309	🦀
spotify:track:6E90gq0KO6FYZVOXx8kCcC	1	Astronaut In The Ocean	2023-06-24 11:38:31.31	🦠
spotify:track:6E90gq0KO6FYZVOXx8kCcC	1	Astronaut In The Ocean	2023-09-06 16:04:13.737	🎶
spotify:track:1LmN9SSHISbtp9LoaR5ZVJ	4	Payphone	2023-06-24 11:38:31.31	💿
spotify:track:1LmN9SSHISbtp9LoaR5ZVJ	1	Payphone	2023-06-24 11:38:31.31	📼
spotify:track:0ct6r3EGTcMLPtrXHDvVjc	2	The Nights	2023-06-24 11:38:31.309	🔥
spotify:track:77TT8Xvx637TpzV8kKGkUw	3	Titanium (feat. Sia)	2023-06-24 11:38:31.309	💿
spotify:track:77TT8Xvx637TpzV8kKGkUw	1	Titanium (feat. Sia)	2023-06-24 11:38:31.309	🫧
spotify:track:3Pj6u2KTgepyyidp5xfbHp	1	Ashes	2023-06-24 11:38:31.309	😈
spotify:track:3Pj6u2KTgepyyidp5xfbHp	3	Ashes	2023-06-24 11:38:31.309	🧊
spotify:track:3Pj6u2KTgepyyidp5xfbHp	1	Ashes	2023-06-24 11:38:31.309	🦠
spotify:track:7DEEplBQH91fKPWQH0LsOw	1	When Love Takes Over (feat. Kelly Rowland) - Electro Radio Edit	2023-06-24 11:38:31.31	😈
spotify:track:3avYqdwHKEq8beXbeWCKqJ	1	Last Friday Night (T.G.I.F.)	2023-06-24 11:38:31.309	📼
spotify:track:6btdl1Vl6Ta5lUwUSOFW2H	4	SUN GOES DOWN	2023-06-24 11:38:31.309	☔
spotify:track:6btdl1Vl6Ta5lUwUSOFW2H	1	SUN GOES DOWN	2023-06-24 11:38:31.309	🫧
spotify:track:6btdl1Vl6Ta5lUwUSOFW2H	1	SUN GOES DOWN	2023-06-24 11:38:31.309	🧊
spotify:track:5RzFJd6W40SDTyZkX6xx45	1	I Know You Want Me (Calle Ocho)	2023-06-24 11:38:31.309	💿
spotify:track:5RzFJd6W40SDTyZkX6xx45	1	I Know You Want Me (Calle Ocho)	2023-06-24 11:38:31.309	📼
spotify:track:2WfaOiMkCvy7F5fcp2zZ8L	1	Take on Me	2023-06-24 11:38:31.309	🦀
spotify:track:63rbP24OzfaQCJjsHWZXnY	10	Where Them Girls At (feat. Nicki Minaj & Flo Rida)	2023-06-24 11:38:31.309	💿
spotify:track:6vFN0uVMQxHofQFnNhGBq8	1	Guardians Inferno - From "Guardians of the Galaxy Vol. 2"	2023-06-24 11:38:31.309	🦀
spotify:track:6qn9YLKt13AGvpq9jfO8py	10	We Found Love	2023-06-24 11:38:31.31	💿
spotify:track:3SV3KjxoxdFnAhkkmmCiFX	1	City of Angels (TikTok Dance)	2023-06-24 11:38:31.309	🦠
spotify:track:2i0AUcEnsDm3dsqLrFWUCq	1	Tonight Tonight	2023-06-24 11:38:31.309	🫧
spotify:track:4gbVRS8gloEluzf0GzDOFc	1	Maps	2023-06-24 11:38:31.309	🦊
spotify:track:6uxYfENm7zw050dNUi031W	3	The Edge Of Glory	2023-06-24 11:38:31.309	💿
spotify:track:2sHn9wWaCHYBXKnHjArsBy	1	Big Chungus	2023-06-24 11:38:31.309	🦀
spotify:track:6gj08XDlv9Duc2fPOxUmVD	1	Lips Are Movin	2023-06-24 11:38:31.309	🦊
spotify:track:2Za1AlJNvksouPPWbXpR2X	1	Good Old Days (feat. Kesha)	2023-06-24 11:38:31.309	🐺
spotify:track:3FCto7hnn1shUyZL42YgfO	1	Piano Man	2023-06-24 11:38:31.309	🦀
spotify:track:3MrRksHupTVEQ7YbA0FsZK	1	The Final Countdown	2023-06-24 11:38:31.31	🦀
spotify:track:37f4ITSlgPX81ad2EvmVQr	1	Fight Song	2023-06-24 11:38:31.309	📢
spotify:track:0Rz1KXsP4bhGxs0ffySSSn	1	Blurred Lines	2023-06-24 11:38:31.309	🦊
spotify:track:2iJuuzV8P9Yz0VSurttIV5	5	Scream & Shout	2023-06-24 11:38:31.309	💿
spotify:track:1rXq0uoV4KTgRN64jXzIxo	1	One Thing At A Time	2023-06-24 11:38:31.309	🤠
spotify:track:1rXq0uoV4KTgRN64jXzIxo	1	One Thing At A Time	2023-06-24 11:38:31.309	😈
spotify:track:1z9kQ14XBSN0r2v6fx4IdG	1	Diamonds	2023-06-24 11:38:31.31	📼
spotify:track:2KpCpk6HjXXLb7nnXoXA5O	1	Ni**as In Paris	2023-06-24 11:38:31.309	🧊
spotify:track:0HPD5WQqrq7wPWR7P7Dw1i	2	TiK ToK	2023-06-24 11:38:31.31	💿
spotify:track:3Qf0ZzB8rrAqbYDxtYLrxp	1	No Place I'd Rather Be	2023-06-24 11:38:31.309	🦊
spotify:track:0Jg602cHeMCnPez9baacIe	1	Cotton Eye Joe	2023-06-24 11:38:31.309	🤠
spotify:track:0Jg602cHeMCnPez9baacIe	1	Cotton Eye Joe	2023-06-24 11:38:31.309	🦀
spotify:track:4qvrdCZM49KR1nSHaYCiQ6	1	Bud Like You	2023-06-24 11:38:31.31	📢
spotify:track:1yKu2MhpwzDXXH2tzG6xoa	1	Beverly Hills	2023-06-24 11:38:31.31	📼
spotify:track:7gUpO6td4OOnu0Lf9vhcIV	1	Lights - Single Version	2023-06-24 11:38:31.309	☔
spotify:track:7gUpO6td4OOnu0Lf9vhcIV	3	Lights - Single Version	2023-06-24 11:38:31.309	💿
spotify:track:4h4QlmocP3IuwYEj2j14p8	1	Sunroof	2023-06-24 11:38:31.31	🥂
spotify:track:5UhGoJ0Iz69WNLZ5ZMA81k	1	Release the Kraken	2023-06-24 11:38:31.309	🦀
spotify:track:6wmAHw1szh5RCKSRjiXhPe	1	How Long	2023-06-24 11:38:31.309	🐺
spotify:track:5lNuqFVMca4vPupY10cH0J	2	No Promises (feat. Demi Lovato)	2023-06-24 11:38:31.31	🎶
spotify:track:5lNuqFVMca4vPupY10cH0J	1	No Promises (feat. Demi Lovato)	2023-06-24 11:38:31.31	🐺
spotify:track:03yc0G2OoH1Eeyu7Piy8fK	1	I'm Yours	2023-06-24 11:38:31.31	📼
spotify:track:11dxtPJKR4E0wlSr0A0t47	1	Potential Breakup Song	2023-06-24 11:38:31.31	😈
spotify:track:4fSIb4hdOQ151TILNsSEaF	3	Todo De Ti	2023-06-24 11:38:31.309	🎶
spotify:track:4fSIb4hdOQ151TILNsSEaF	1	Todo De Ti	2023-06-24 11:38:31.309	😈
spotify:track:62zFEHfAYl5kdHYOivj4BC	1	International Love (feat. Chris Brown)	2023-06-24 11:38:31.309	💿
spotify:track:2oJnewcmY02HnOd1KbVwPe	1	Sax Man	2023-06-24 11:38:31.309	🦀
spotify:track:6DlPa2rrVK3BygXJ48WYo3	2	RUNNING IN THE 90'S	2023-06-24 11:38:31.309	🔥
spotify:track:6DlPa2rrVK3BygXJ48WYo3	2	RUNNING IN THE 90'S	2023-06-24 11:38:31.309	🦀
spotify:track:4ECNtOnqzxutZkXP4TE3n3	5	Separate Ways (Worlds Apart)	2023-06-24 11:38:31.309	🔥
spotify:track:4ECNtOnqzxutZkXP4TE3n3	4	Separate Ways (Worlds Apart)	2023-06-24 11:38:31.309	🧊
spotify:track:5HOpkTTVcmZHnthgyxrIL8	1	The Fox (What Does the Fox Say?)	2023-06-24 11:38:31.309	🦊
spotify:track:6hu3pDOnjlqRkwo75mxsFM	1	Chain My Heart - FRDY Remix	2023-06-24 11:38:31.31	😈
spotify:track:6hu3pDOnjlqRkwo75mxsFM	1	Chain My Heart - FRDY Remix	2023-06-24 11:38:31.31	🧊
spotify:track:1imMjt1YGNebtrtTAprKV7	2	Love Again	2023-06-24 11:38:31.309	🎶
spotify:track:1imMjt1YGNebtrtTAprKV7	1	Love Again	2023-06-24 11:38:31.309	🧊
spotify:track:6sI8Q7TTJeA9exw6hxEqq3	1	Blueberry Eyes (feat. SUGA of BTS)	2023-06-24 11:38:31.31	🦠
spotify:track:6TrNRd98WksT9Kkmx9uj6R	5	Let It Rock	2023-06-24 11:38:31.309	🧊
spotify:track:7ef4DlsgrMEH11cDZd32M6	6	One Kiss (with Dua Lipa)	2023-06-24 11:38:31.309	🎶
spotify:track:7ef4DlsgrMEH11cDZd32M6	3	One Kiss (with Dua Lipa)	2023-06-24 11:38:31.309	😈
spotify:track:7ef4DlsgrMEH11cDZd32M6	1	One Kiss (with Dua Lipa)	2023-06-24 11:38:31.309	🧊
spotify:track:76hfruVvmfQbw0eYn1nmeC	2	Cake By The Ocean	2023-06-24 11:38:31.309	🦊
spotify:track:3y8AEUef1AVfr0npU5UOa9	1	Dangerous (feat. Joywave)	2023-06-24 11:38:31.31	🎶
spotify:track:7fX3wR67GCCvVOAf3G8KRE	1	You Spin Me Round (Like a Record)	2023-06-24 11:38:31.309	😈
spotify:track:16Of7eeW44kt0a1M0nitHM	15	You Make Me Feel... (feat. Sabi)	2023-09-13 11:23:30.724	💿
spotify:track:3CKCZ9pfwAfoMZlMncA1Nc	1	Set Fire to the Rain	2023-06-24 11:38:31.31	☔
spotify:track:3CKCZ9pfwAfoMZlMncA1Nc	4	Set Fire to the Rain	2023-06-24 11:38:31.31	💿
spotify:track:0thLhIqWsqqycEqFONOyhu	1	Lone Digger	2023-06-24 11:38:31.309	🎶
spotify:track:0thLhIqWsqqycEqFONOyhu	1	Lone Digger	2023-06-24 11:38:31.309	🥂
spotify:track:0thLhIqWsqqycEqFONOyhu	1	Lone Digger	2023-06-24 11:38:31.309	😈
spotify:track:5X3EW7MVbyEDG4FAPpmDv2	3	Moby Duck	2023-06-24 11:38:31.309	🦀
spotify:track:5jrdCoLpJSvHHorevXBATy	1	Dark Horse	2023-06-24 11:38:31.309	🦊
spotify:track:5cF0dROlMOK5uNZtivgu50	1	Attention	2023-06-24 11:38:31.309	🐺
spotify:track:1P7tiVl5hgemZuH8oNyP6C	1	midnight love	2023-06-24 11:38:31.309	☔
spotify:track:5pmL3RzOy3IvGFaSDi4hZL	1	Hangover	2023-06-24 11:38:31.309	🔥
spotify:track:7C7yqFTM0ncyJ04GIKrxdV	2	Anything Could Happen	2023-06-24 11:38:31.309	💿
spotify:track:1jJci4qxiYcOHhQR247rEU	1	Kids	2023-06-24 11:38:31.309	🎶
spotify:track:1jJci4qxiYcOHhQR247rEU	1	Kids	2023-06-24 11:38:31.309	☔
spotify:track:7vWFaMq63AwkFDhS2OAg5u	3	The Time (Dirty Bit)	2023-06-24 11:38:31.31	💿
spotify:track:7vWFaMq63AwkFDhS2OAg5u	1	The Time (Dirty Bit)	2023-06-24 11:38:31.31	🧊
spotify:track:77UjLW8j5UAGAGVGhR5oUK	1	Pray For Me (with Kendrick Lamar)	2023-06-24 11:38:31.309	🐺
spotify:track:7gZvmf49E6m0vrXMHcC6b3	1	I Like To Move It	2023-06-24 11:38:31.309	🦀
spotify:track:2OtwJ5j8QvDBpvUNxnYrSE	1	MoonQuest	2023-06-24 11:38:31.31	🦀
spotify:track:6eFahAdQgABBj1XOM99cBG	1	I Like It Like That (feat. New Boyz)	2023-06-24 11:38:31.31	💿
spotify:track:6eFahAdQgABBj1XOM99cBG	1	I Like It Like That (feat. New Boyz)	2023-06-24 11:38:31.31	📼
spotify:track:6tVrmsbI5HVDgOlFSTrQjB	5	Lucky Strike	2023-06-24 11:38:31.309	🔥
spotify:track:6tVrmsbI5HVDgOlFSTrQjB	1	Lucky Strike	2023-06-24 11:38:31.309	😈
spotify:track:6tVrmsbI5HVDgOlFSTrQjB	2	Lucky Strike	2023-06-24 11:38:31.309	🧊
spotify:track:2Ow4Pmi0VOOLvbmJ8V70qo	3	How to Be a Heartbreaker	2023-06-24 11:38:31.309	🎶
spotify:track:2Ow4Pmi0VOOLvbmJ8V70qo	1	How to Be a Heartbreaker	2023-06-24 11:38:31.309	🥂
spotify:track:2Ow4Pmi0VOOLvbmJ8V70qo	4	How to Be a Heartbreaker	2023-06-24 11:38:31.309	😈
spotify:track:2Ow4Pmi0VOOLvbmJ8V70qo	1	How to Be a Heartbreaker	2023-06-24 11:38:31.309	🧊
spotify:track:7Fq9RwQxSn3kW85PrDUf0M	1	Boot Scootin' Boogie	2023-06-24 11:38:31.31	🤠
spotify:track:4euxYgIl5XEqUj5WB9lHNq	1	The Home Depot Beat	2023-06-24 11:38:31.309	🦀
spotify:track:4r6eNCsrZnQWJzzvFh4nlg	1	Firework	2023-06-24 11:38:31.309	📼
spotify:track:3z06k8YF9CqX0CGFrlekOK	1	everything sucks	2023-06-24 11:38:31.309	☔
spotify:track:6naxalmIoLFWR0siv8dnQQ	1	Oops!...I Did It Again	2023-06-24 11:38:31.309	🫧
spotify:track:6KuHjfXHkfnIjdmcIvt9r0	1	On Top Of The World	2023-06-24 11:38:31.309	🦊
spotify:track:2u02eLj96Atd6TBxkH9YvN	10	S&M	2023-06-24 11:38:31.309	💿
spotify:track:4DvhkX2ic4zWkQeWMwQ2qf	2	Like A G6	2023-06-24 11:38:31.31	💿
spotify:track:1xMLthTaWJieT9YGV1hyS5	2	Animals	2023-06-24 11:38:31.309	🧊
spotify:track:3p94RpSxQdZocUfrzpemmm	1	El Dorado	2023-06-24 11:38:31.309	😈
spotify:track:3p94RpSxQdZocUfrzpemmm	2	El Dorado	2023-06-24 11:38:31.309	🧊
spotify:track:5ArQzSBevAdXTxRY6Ulhbq	1	Mama Said	2023-06-24 11:38:31.309	🦊
spotify:track:3gbBpTdY8lnQwqxNCcf795	1	Pompeii	2023-06-24 11:38:31.31	☔
spotify:track:7E8edqa0m0ASLXkLfmWY03	1	Problem	2023-06-24 11:38:31.309	🦊
spotify:track:2HSmyk2qMN8WQjuGhaQgCk	1	Champagne Poetry	2023-06-24 11:38:31.309	🦠
spotify:track:7fVlbM9hxmv3Omz4UPcsy8	2	Brain Power	2023-06-24 11:38:31.309	🧊
spotify:track:6w8ZPYdnGajyfPddTWdthN	1	Can I Get It	2023-06-24 11:38:31.309	🦠
spotify:track:2XU0oxnq2qxCpomAAuJY8K	1	Dance Monkey	2023-06-24 11:38:31.309	🦠
spotify:track:6Uj1ctrBOjOas8xZXGqKk4	1	Woman	2023-06-24 11:38:31.31	🎶
spotify:track:0uFForNKQPvgSCnxlZIhQy	2	Let Me Get Me	2023-06-24 11:38:31.309	🎶
spotify:track:0uFForNKQPvgSCnxlZIhQy	1	Let Me Get Me	2023-06-24 11:38:31.309	🪬
spotify:track:0uFForNKQPvgSCnxlZIhQy	1	Let Me Get Me	2023-06-24 11:38:31.309	🧊
spotify:track:0uFForNKQPvgSCnxlZIhQy	1	Let Me Get Me	2023-06-24 11:38:31.309	🦠
spotify:track:5kqIPrATaCc2LqxVWzQGbk	1	7 Years	2023-06-24 11:38:31.31	🐺
spotify:track:7tTRFVlFzk6yTnoMcParmi	2	JUST LIKE YOU	2023-06-24 11:38:31.31	☔
spotify:track:6ys2qkoVeLVqJIFyxWLUSn	2	Some Beach	2023-06-24 11:38:31.309	🤠
spotify:track:04aAxqtGp5pv12UXAg4pkq	1	Centuries	2023-06-24 11:38:31.309	🦊
spotify:track:4urcG6Nfubqsuqy3juMjBi	1	Brokenhearted	2023-06-24 11:38:31.31	💿
spotify:track:6qCsKKS7Ol63SJW3LOIX5R	2	Plastic Hearts	2023-06-24 11:38:31.31	🎶
spotify:track:6qCsKKS7Ol63SJW3LOIX5R	2	Plastic Hearts	2023-06-24 11:38:31.31	😈
spotify:track:6qCsKKS7Ol63SJW3LOIX5R	1	Plastic Hearts	2023-06-24 11:38:31.31	🧊
spotify:track:6qCsKKS7Ol63SJW3LOIX5R	1	Plastic Hearts	2023-06-24 11:38:31.31	🦠
spotify:track:0i5el041vd6nxrGEU8QRxy	2	Cruise	2023-06-24 11:38:31.31	🤠
spotify:track:2M9ULmQwTaTGmAdXaXpfz5	1	Billionaire (feat. Bruno Mars)	2023-06-24 11:38:31.309	📼
spotify:track:0tBbt8CrmxbjRP0pueQkyU	1	Wolves	2023-06-24 11:38:31.309	🎶
spotify:track:0tBbt8CrmxbjRP0pueQkyU	1	Wolves	2023-06-24 11:38:31.309	🐺
spotify:track:4bZd0nRuX8HyjeXAUBczvm	4	I Cry	2023-06-24 11:38:31.309	💿
spotify:track:1DqdF42leyFIzqNDv9CjId	1	Dynamite	2023-06-24 11:38:31.31	📼
spotify:track:5RhxBpoCwX2vLBcSJzYa5j	3	Round & Round	2023-06-24 11:38:31.309	💿
spotify:track:5RhxBpoCwX2vLBcSJzYa5j	1	Round & Round	2023-06-24 11:38:31.309	📼
spotify:track:5RhxBpoCwX2vLBcSJzYa5j	1	Round & Round	2023-06-24 11:38:31.309	🫧
spotify:track:5fwSHlTEWpluwOM0Sxnh5k	2	Pepas	2023-06-24 11:38:31.31	🎶
spotify:track:5fwSHlTEWpluwOM0Sxnh5k	1	Pepas	2023-06-24 11:38:31.31	😈
spotify:track:5fwSHlTEWpluwOM0Sxnh5k	1	Pepas	2023-06-24 11:38:31.31	🪬
spotify:track:5fwSHlTEWpluwOM0Sxnh5k	5	Pepas	2023-06-24 11:38:31.31	🧊
spotify:track:4bb94wZVF1cX66vQjNeJTX	2	A Sweeter Place (feat. Kid Cudi)	2023-06-24 11:38:31.309	🎶
spotify:track:222B3aljXx6fFwKmFjuBED	1	Woman Like Me (feat. Nicki Minaj)	2023-06-24 11:38:31.309	🎶
spotify:track:1r0XfrhdG6bsiS4oe1QM96	2	A Year Without Rain	2023-06-24 11:38:31.31	💿
spotify:track:1r0XfrhdG6bsiS4oe1QM96	1	A Year Without Rain	2023-06-24 11:38:31.31	📼
spotify:track:1r0XfrhdG6bsiS4oe1QM96	1	A Year Without Rain	2023-06-24 11:38:31.31	🫧
spotify:track:2nLtzopw4rPReszdYBJU6h	2	Numb	2023-07-21 16:04:50.5	🔥
spotify:track:5gOK3GYmmWvV8UyCpnRY4J	1	Around the World (La La La La La) - Radio Version	2023-07-24 15:07:42.415	🏆
spotify:track:22LAwLoDA5b4AaGSkg6bKW	1	Blueberry Faygo	2023-09-06 12:10:25.779	🎶
spotify:track:05SBRd4fXgn8FX7bf8BCAE	1	I Need Your Love (feat. Ellie Goulding)	2023-09-13 11:15:06.327	💿
spotify:track:3AjyOYxBv8bByfBtG5o9dP	1	See You Again	2023-09-13 12:09:38.855	📼
spotify:track:360UM2DaiHZPRu0EsrOvMp	1	If We Ever Meet Again (Featuring Katy Perry)	2023-09-13 16:08:46.516	📼
spotify:track:2tpfxAXiI52znho4WE3XFA	1	Talking Body	2023-09-13 16:45:53.482	🦊
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-19 12:50:58.965	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-09-19 12:53:42.483	🦥
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-09-19 12:54:45.069	🦥
spotify:track:4Ka0qWis2V9gI5MFdzT1lB	2	Breaking with You	2023-09-19 13:00:19.25	🦥
spotify:track:0ndg56b510prqHlImqJoxG	1	Ghost Town (Lucas Estrada Remix)	2023-09-19 13:04:04.374	🦥
spotify:track:1jghJYP9CZ5tbkZXNFEq0i	1	Night Ends	2023-09-19 13:43:25.038	🦥
spotify:track:360ZhWvMnyXKYFG9Mqsm89	1	Evacuate The Dancefloor - Radio Edit	2023-09-19 14:47:34.552	🦥
spotify:track:5xvUgoVED1F4mBu8FL0HaW	1	Ready or Not	2023-09-20 18:16:48.027	💿
spotify:track:4FWbsd91QSvgr1dSWwW51e	1	TRUSTFALL	2023-09-20 22:31:39.818	🦥
spotify:track:5dry5tz8yLcLuOJ3l6ZEQd	1	Used to Know Me	2023-09-20 23:53:43.401	🦥
spotify:track:3YWdfXQwfPh8qGhXdiXPHh	1	Coming Your Way (with Anne-Marie & Becky G)	2023-09-25 18:35:02.682	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-25 22:15:31.272	🦥
spotify:track:5Agunnfj2SyNhhFWNmQ8JE	1	Sweet and Sour	2023-09-26 14:29:41.815	🦥
spotify:track:19vrXBW4gizaQUxMyXOxfO	1	It's Not Right But It's Okay	2023-09-26 18:05:34.637	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-27 13:48:12.583	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-09-27 14:27:28.68	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-09-28 18:16:19.146	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-28 23:55:15.532	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-09-29 12:21:40.155	🦥
spotify:track:1HOlb9rdNOmy9b1Fakicjo	1	#SELFIE	2023-09-30 23:14:43.577	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:46:15.922	📼
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-10-01 00:51:30.541	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-02 15:56:09.867	🦥
spotify:track:3tIjJY43mDAhMZxSuDHvjy	1	Lovefool (feat. Pia Mia)	2023-10-02 19:39:26.711	🦥
spotify:track:5RVjB86R02f47lCZSPFOzj	1	Damn (You’ve Got Me Saying)	2023-10-03 13:51:14.144	🦥
spotify:track:2xfHakNuD25ma5CSfTXFw2	1	The One	2023-10-03 16:29:32.7	🦥
spotify:track:0tgVpDi06FyKpA1z0VMD4v	1	Perfect	2023-10-04 15:29:54.354	🐺
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-04 21:39:33.993	🦥
spotify:track:63rbP24OzfaQCJjsHWZXnY	1	Where Them Girls At (feat. Nicki Minaj & Flo Rida)	2023-10-05 15:27:39.973	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-05 17:43:46.037	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-05 21:56:31.046	🦥
spotify:track:19vrXBW4gizaQUxMyXOxfO	1	It's Not Right But It's Okay	2023-10-06 18:49:03.892	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-07 15:36:20.169	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-10-08 13:24:13.127	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-08 14:24:13.06	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	-1	I Kissed A Girl	2023-10-08 22:37:57.574	💿
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-09 00:03:54.679	🦥
spotify:track:1txNJEYS7E0uQzYqmYeoJp	1	Comin' To Getcha	2023-10-09 01:16:09.344	🦥
spotify:track:2bCQHF9gdG5BNDVuEIEnNk	1	Smooth Criminal - 2012 Remaster	2023-10-09 12:08:07.375	🦥
spotify:track:5XemvyG79fcKPl5lgbhplq	1	W.I.T.C.H.	2023-10-09 15:20:05.269	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-09 21:38:46.277	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-10 17:14:33.001	🦥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-10 19:42:31.509	🦥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-10 20:11:16.997	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-10-10 22:12:58.528	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-11 12:26:09.051	🦥
spotify:track:2bsygdSQc5XZfvRm1BA0H5	1	Lovesick	2023-10-11 14:51:02.607	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-11 15:46:02.863	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-11 15:51:45.516	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-11 16:22:54.08	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-11 22:14:05.968	🦥
spotify:track:2rfZyAX6wZxQWMQ9GYyLIu	1	Worship You	2023-10-12 14:44:39.096	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	-1	Supersonic	2023-10-12 17:38:10.169	🦥
spotify:track:4nK5YrxbMGZstTLbvj6Gxw	1	Supalonely	2023-10-13 12:02:46.627	🎶
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-10-13 12:24:04.942	🎶
spotify:track:0COqiPhxzoWICwFCS4eZcp	-1	Bring Me To Life	2023-10-13 12:36:02.005	🎶
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-13 15:22:14.505	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-10-14 11:35:40.818	🦥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-10-14 16:42:14.133	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-14 19:12:25.674	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-14 19:53:32.081	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-10-14 20:05:41.001	🦥
spotify:track:3FkyJH5uE5XmN3voocBcYK	1	Private Life	2023-10-14 20:29:23.884	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-15 13:34:24.945	🦥
spotify:track:4fCE1SCDulouoac9Q8XroU	1	West Coast (feat. Quinn XCII)	2023-10-17 15:06:37.312	🔥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-10-17 15:09:10.118	🔥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-10-17 15:16:36.409	🔥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-10-17 15:35:07	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-17 15:42:21.62	🔥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-17 15:42:22.288	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-17 15:57:24.484	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-17 15:57:24.725	🔥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-10-17 19:35:12.53	🦥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-10-17 19:37:04.451	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-18 11:45:17.583	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-18 11:45:18.499	🔥
spotify:track:2BfJX65Te5q84Pku7osGRH	1	Good Luck (with Jax Jones & Galantis)	2023-10-18 11:55:48.426	🔥
spotify:track:0L5dwOLG1xpw9oD5FcyQak	1	Stars	2023-10-18 11:56:22.037	🔥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-10-18 12:02:26.529	🔥
spotify:track:7fWOBXSWN29kaE0spQjUW9	1	Goodbye	2023-10-18 12:08:22.272	🔥
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-10-18 12:13:20.83	🔥
spotify:track:4vswbhNPKavZJqpXzJI4wd	1	I Want You Around	2023-10-18 12:18:03.788	🔥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-18 12:25:00.475	🔥
spotify:track:2xfHakNuD25ma5CSfTXFw2	1	The One	2023-10-18 12:55:39.667	🔥
spotify:track:1WFy81RbU5QhOeYVgIzVPe	1	Weekend On A Tuesday	2023-10-18 13:10:16.367	🔥
spotify:track:1UNWD6R5EOFklUHKZZvww2	1	She Said	2023-10-18 15:16:53.931	🔥
spotify:track:1p0jBDjxORjYNJyAphBRpE	1	MONEY ON THE DASH	2023-10-18 15:27:51.915	🦥
spotify:track:1p0jBDjxORjYNJyAphBRpE	1	MONEY ON THE DASH	2023-10-18 15:27:52.502	🔥
spotify:track:5jjZikDrEd0by1o7V3fO4y	1	overwhelmed	2023-10-18 15:29:27.511	☔
spotify:track:7irq1X57FwkQrGFVOayjsm	1	STOP!	2023-10-18 15:40:00.965	🔥
spotify:track:7irq1X57FwkQrGFVOayjsm	1	STOP!	2023-10-18 15:40:05.92	🦥
spotify:track:1STwdocp5GlE0aLPT6CaJ6	1	The Difference	2023-10-18 15:43:19.279	🔥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-10-18 16:07:16.593	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-10-18 16:07:16.899	🔥
spotify:track:7vzoNK8tbNmmKjDCNGTmkp	1	Tears of Gold - Owen Norton Remix	2023-10-18 16:11:44.376	🔥
spotify:track:58HvfVOeJY7lUuCqF0m3ly	1	MIDDLE OF THE NIGHT	2023-10-18 16:33:42.062	🦥
spotify:track:58HvfVOeJY7lUuCqF0m3ly	1	MIDDLE OF THE NIGHT	2023-10-18 16:33:42.428	🔥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	-1	You Only Love Me	2023-10-18 20:48:01.918	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	1	You Only Love Me	2023-10-18 20:59:30.207	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	1	You Only Love Me	2023-10-18 20:59:31.873	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	1	You Only Love Me	2023-10-18 20:59:32.524	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-10-18 20:59:36.477	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-18 21:39:42.853	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-10-18 21:41:46.392	🦥
spotify:track:2MMUGOqJXwSWEY9yGYl8D2	1	Slow Drip	2023-10-18 22:00:23.81	🦥
spotify:track:6zsFddikwwAfBr3USkYSDx	1	Radio	2023-10-18 22:10:19.401	🦥
spotify:track:3AzjcOeAmA57TIOr9zF1ZW	1	Physical	2023-10-18 22:13:35.208	🦥
spotify:track:10xV5l9nhLvFpR8mqzs0bL	1	Numb	2023-10-18 22:24:50.177	🦥
spotify:track:3bfqkspKABT4pPicm6wC9F	1	Ass Back Home (feat. Neon Hitch)	2023-10-18 22:34:42.712	📼
spotify:track:2NHtAJhXVOnSIN2lZhbpWz	1	Space and Time	2023-10-19 10:28:55.744	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-19 10:29:08.574	🔥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-10-19 10:43:16.232	🦥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-10-19 10:43:18.44	🔥
spotify:track:00E0Z2jrF7reoHps4zcbWQ	1	Car Keys (Ayla)	2023-10-19 10:55:32.59	🔥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-19 11:02:31.065	🔥
spotify:track:3jksOdXCaDXyGiZ7L4YZbp	1	All Nighter	2023-10-19 14:35:55.683	🦥
spotify:track:3jksOdXCaDXyGiZ7L4YZbp	1	All Nighter	2023-10-19 14:35:56.78	🔥
spotify:track:62nhuooamoroYpJyqE0nLd	1	Are You With Me - Radio Edit	2023-10-19 14:44:59.286	🔥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-19 14:57:56.632	🦥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-19 14:57:57.264	🔥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-19 14:58:01.103	🦥
spotify:track:3GYlQmwfBDo7imFyGPhrl7	1	Say My Name	2023-10-19 15:12:23.254	🦥
spotify:track:3GYlQmwfBDo7imFyGPhrl7	1	Say My Name	2023-10-19 15:12:24.216	🔥
spotify:track:3DTqHfTGj1c6y2gDXsTez4	1	Regardless	2023-10-19 15:28:34.312	🔥
spotify:track:3XPl3dGn1oWe7VmKoB8nhU	1	Psycho - Joel Corry Remix	2023-10-19 15:58:03.326	🔥
spotify:track:6pHCJmx9FXnMwEqB0LWUEH	1	Azul	2023-10-20 10:26:59.932	🔥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-20 12:56:29.533	🦥
spotify:track:5zEAGm4yKQ8NMemN0m3rW1	1	Nirvana	2023-10-20 12:58:06.915	🦥
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-10-20 13:03:09.189	🦥
spotify:track:7CH8J4ulT49UfZwSDSkSZA	1	i miss u (with Au/Ra)	2023-10-20 13:08:21.098	🔥
spotify:track:5902W4uHWzhtOff1UK7the	1	When I’m Gone (with Katy Perry)	2023-10-20 13:22:09.736	🔥
spotify:track:2Z9TRKOZtqKZNGDxeodNzZ	1	What You Gunna Do - OPTIXX Remix	2023-10-20 13:24:29.051	🔥
spotify:track:16mxzE8G96JyMSfcq1PQvW	1	Straight From the Heart (feat. Nørskov)	2023-10-20 13:26:23.553	🎶
spotify:track:6Dy1jexKYriXAVG6evyUTJ	1	OUT OUT (feat. Charli XCX & Saweetie)	2023-10-20 13:32:02.413	🔥
spotify:track:6Dy1jexKYriXAVG6evyUTJ	1	OUT OUT (feat. Charli XCX & Saweetie)	2023-10-20 13:32:02.942	🦥
spotify:track:4Ka0qWis2V9gI5MFdzT1lB	1	Breaking with You	2023-10-20 14:14:41.643	🦥
spotify:track:4Ka0qWis2V9gI5MFdzT1lB	1	Breaking with You	2023-10-20 14:14:41.881	🔥
spotify:track:1kaJ2dEM1jeXQaH7uDdyoD	1	Run (with Galantis)	2023-10-20 14:17:17.208	🔥
spotify:track:2tJ4fnUrG5v7OmYVGq7sw8	1	Hopeless Heart	2023-10-20 14:40:07.263	🦥
spotify:track:5gvEyl4OLhD6kJ3aZ43sd3	1	Heaven	2023-10-20 14:44:50.427	🦥
spotify:track:2cc8Sw1OnCuA5bV8nqWqpE	1	You	2023-10-20 14:49:27.554	🦥
spotify:track:2cc8Sw1OnCuA5bV8nqWqpE	1	You	2023-10-20 14:49:27.922	🔥
spotify:track:0SZPXD0uEl72YjUVY2K3E9	1	The Business, Pt. II	2023-10-20 15:33:27.038	🦥
spotify:track:0SZPXD0uEl72YjUVY2K3E9	1	The Business, Pt. II	2023-10-20 15:33:27.515	🔥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2023-10-20 15:39:23.755	🦥
spotify:track:0SZPXD0uEl72YjUVY2K3E9	1	The Business, Pt. II	2023-10-20 15:46:29.279	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-20 15:49:13.77	🦥
spotify:track:3DTqHfTGj1c6y2gDXsTez4	1	Regardless	2023-10-20 15:52:05.809	🦥
spotify:track:2dWNKXTs5z7Iu1g0kYh4Xe	1	My Heart Goes (La Di Da) (feat. Topic)	2023-10-20 15:57:00.462	🦥
spotify:track:04oTyEbJ190RfXWSlTP4b7	1	Good Luck	2023-10-20 15:58:55.18	🦥
spotify:track:7arsXR8AtExnOFN3v3HiJI	1	Going Dumb	2023-10-20 16:05:27.285	🦥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-10-21 15:05:16.393	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-21 15:15:30.915	🦥
spotify:track:3uUuGVFu1V7jTQL60S1r8z	1	Where Are You Now	2023-10-21 15:23:17.979	🎶
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-21 17:12:20.34	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-21 17:12:20.749	🔥
spotify:track:2NHtAJhXVOnSIN2lZhbpWz	1	Space and Time	2023-10-21 17:40:03.249	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-22 12:34:42.119	🦥
spotify:track:6zsFddikwwAfBr3USkYSDx	1	Radio	2023-10-22 12:37:59.647	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-22 12:52:25.021	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-22 12:57:30.667	🦥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-10-22 13:03:38.15	🦥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-22 13:10:14.383	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-22 14:39:31.688	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-22 14:46:15.972	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-22 14:46:16.864	🦥
spotify:track:2rfZyAX6wZxQWMQ9GYyLIu	1	Worship You	2023-10-22 14:58:00.655	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-22 15:58:42.757	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-22 16:01:00.038	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-22 16:01:00.887	🦥
spotify:track:1WFy81RbU5QhOeYVgIzVPe	1	Weekend On A Tuesday	2023-10-22 16:18:54.161	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-22 16:29:03.733	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-10-22 17:46:26.852	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-22 18:04:43.799	🔥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-22 18:09:01.67	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-22 18:10:52.92	🦥
spotify:track:1mvZErZBp7WZT3HfGBykao	1	Cry for You	2023-10-22 18:13:51.173	🦥
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-10-22 18:20:35.206	🔥
spotify:track:3BKD1PwArikchz2Zrlp1qi	1	Baby Don't Hurt Me	2023-10-23 12:21:22.72	🔥
spotify:track:5RTCbOZLSoVaOwisJhsdfd	1	SKIN 2 SKIN	2023-10-23 12:23:48.201	🔥
spotify:track:7CH8J4ulT49UfZwSDSkSZA	1	i miss u (with Au/Ra)	2023-10-23 12:29:40.881	🔥
spotify:track:7arsXR8AtExnOFN3v3HiJI	1	Going Dumb	2023-10-23 12:34:20.937	🔥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-23 12:36:51.067	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-23 12:36:51.524	🔥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-23 12:36:54.979	🦥
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-10-23 12:42:44.229	🎶
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-10-23 12:42:45.373	🔥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2023-10-23 12:45:05.557	🦥
spotify:track:04oTyEbJ190RfXWSlTP4b7	1	Good Luck	2023-10-23 12:49:46.119	🔥
spotify:track:1bgKMxPQU7JIZEhNsM1vFs	1	Words (feat. Zara Larsson)	2023-10-23 12:52:57.923	🔥
spotify:track:0ndg56b510prqHlImqJoxG	1	Ghost Town (Lucas Estrada Remix)	2023-10-23 12:57:58.408	🔥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2023-10-23 13:00:26.042	🦥
spotify:track:5902W4uHWzhtOff1UK7the	1	When I’m Gone (with Katy Perry)	2023-10-23 13:14:55.247	🎶
spotify:track:16mxzE8G96JyMSfcq1PQvW	1	Straight From the Heart (feat. Nørskov)	2023-10-23 13:15:35.331	🎶
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-23 13:37:49.982	🔥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-23 13:44:40.373	🦥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-10-23 13:53:58.435	🔥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-10-23 13:54:00.853	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-23 14:48:43.344	🔥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-23 14:48:45.036	🦥
spotify:track:0I5pVidtNjNXeaqHnwhrva	1	Can't Come To The Phone	2023-10-23 14:51:41.308	🦥
spotify:track:0I5pVidtNjNXeaqHnwhrva	1	Can't Come To The Phone	2023-10-23 14:51:41.775	🔥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-23 14:57:22.76	🦥
spotify:track:4nVyHATevhl5RC6Qmoko5H	1	I Like It	2023-06-24 11:38:31.31	💿
spotify:track:3k0DJq2HdWJqnqor8NX0ac	13	Padam Padam	2023-09-03 22:18:34.812	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	10	Touch	2023-09-04 14:11:32.458	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	11	Come Into My World (with NERVO)	2023-07-27 14:04:28.83	🦥
spotify:track:3WdijbYmphZ8N0MYblXDnF	12	Animal	2023-06-24 11:38:31.309	🦥
spotify:track:6eCmK3GQyFuTNWCJHsaF9d	1	Drive (feat. Wes Nelson)	2023-06-24 11:38:31.309	🪬
spotify:track:7fWOBXSWN29kaE0spQjUW9	1	Goodbye	2023-06-24 13:37:34.301	🔥
spotify:track:5mHdCZtVyb4DcJw8799hZp	8	Escapism.	2023-07-14 17:22:54.498	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	7	Do It All Again	2023-07-08 11:30:04.795	🦥
spotify:track:1nYeVF5vIBxMxfPoL0SIWg	5	Hallucinate	2023-07-14 16:23:35.711	🦥
spotify:track:5sJWJ132Ya4i2xR5cW0B6a	10	Kardashian	2023-07-14 16:16:39.118	🦥
spotify:track:5gnXJhg3zGHWvrgplrVrxH	6	Superstar	2023-06-24 11:38:31.309	🦥
spotify:track:2LAtELE0xGyMKcvNlxiyF3	9	1 Day 2 Nights	2023-06-24 11:38:31.309	🦥
spotify:track:0zKbDrEXKpnExhGQRe9dxt	5	Lay Low	2023-07-29 19:45:34.401	🦥
spotify:track:1UNWD6R5EOFklUHKZZvww2	4	She Said	2023-09-07 10:27:24.495	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-09-12 19:11:10.57	💿
spotify:track:1bgKMxPQU7JIZEhNsM1vFs	5	Words (feat. Zara Larsson)	2023-07-26 11:30:00.047	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	11	Your Love (9PM)	2023-07-20 17:00:29.213	🦥
spotify:track:2UCu2FoXFZpCT36lYzej4O	3	Something Stupid (feat. AWA)	2023-09-04 13:49:54.807	🦥
spotify:track:10xV5l9nhLvFpR8mqzs0bL	3	Numb	2023-09-13 20:27:50.275	🦥
spotify:track:16mxzE8G96JyMSfcq1PQvW	4	Straight From the Heart (feat. Nørskov)	2023-06-24 11:38:31.309	🦥
spotify:track:4FWbsd91QSvgr1dSWwW51e	2	TRUSTFALL	2023-09-13 20:14:52.974	🦥
spotify:track:2ptbBxMTCbFBefVMXwrdSC	7	Dress	2023-06-24 11:38:31.31	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-08-29 21:58:29.039	🦥
spotify:track:1v2EmuslskqaQS0iNfhwMb	1	Call My Name	2023-09-06 14:00:51.831	🦥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	2	Sweet Nothing (feat. Florence Welch)	2023-06-24 11:38:31.31	💿
spotify:track:6GDJDe3I7yHq4rPDTfuJMj	1	Rhythm Is A Dancer	2023-09-07 14:10:14.208	🦥
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2023-09-12 16:36:54.484	🐺
spotify:track:5a7NdkF09AfD0H607eiOkX	3	On My Mind	2023-09-13 16:18:17.833	🦊
spotify:track:2ia7iiEtpiOL2ZVuWxBZGB	1	I Will Never Let You Down	2023-09-20 21:35:09.668	🦥
spotify:track:6GDJDe3I7yHq4rPDTfuJMj	1	Rhythm Is A Dancer	2023-09-20 23:04:11.114	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-09-20 23:53:47.057	🦥
spotify:track:2bsygdSQc5XZfvRm1BA0H5	1	Lovesick	2023-09-21 16:41:05.868	🦥
spotify:track:4zvJFnv4nIwW1rAN4XlhBc	1	i miss u - VIZE Remix	2023-09-21 18:43:46.034	🦥
spotify:track:4Ka0qWis2V9gI5MFdzT1lB	1	Breaking with You	2023-09-24 03:13:35.426	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-24 12:24:28.736	🦥
spotify:track:7K3BhSpAxZBznislvUMVtn	1	Last Night	2023-09-25 11:34:52.685	🦥
spotify:track:3sa06xVNmLLYIxdNNmVQN8	1	Where Did You Go? (feat. MNEK)	2023-09-25 20:39:22.513	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-25 22:15:31.832	🦥
spotify:track:6XGqOY2tWjHwRIJ4qTjGBf	1	Fast Lane	2023-09-26 10:26:58.898	🦥
spotify:track:6WiGRFQfx2qw49MA7OeDYK	1	Purple Hat	2023-09-26 14:48:17.938	🦥
spotify:track:65ffWlQCk6XeKX50CDYgib	1	Baddest	2023-09-26 18:18:42.816	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-09-27 11:03:07.98	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-27 14:01:52.682	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-09-27 14:28:20.448	🦥
spotify:track:1IdDtg7GhWfHYEWDymq3d2	1	If It Ain’t Me	2023-09-28 12:17:12.914	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-09-28 18:18:56.25	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-28 23:55:17.019	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-09-29 12:59:49.299	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-09-30 23:24:14.913	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:46:16.311	📼
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-10-01 00:51:31.646	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-02 15:56:11.413	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-02 19:42:11.901	🦥
spotify:track:4FWbsd91QSvgr1dSWwW51e	1	TRUSTFALL	2023-10-03 14:02:19.835	🦥
spotify:track:46XBrXzTAYXdRMeVxVeA6G	1	Mirror	2023-10-03 16:39:40.346	🦥
spotify:track:29JrmE89KgRyCxBIzq2Ocw	1	Strip That Down (feat. Quavo)	2023-10-04 15:32:36.666	🐺
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-04 21:40:52.56	🦥
spotify:track:10xV5l9nhLvFpR8mqzs0bL	1	Numb	2023-10-05 15:31:39.652	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-05 17:43:46.695	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-08 14:11:21.678	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-08 14:33:42.829	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	1	I Kissed A Girl	2023-10-08 22:38:00.602	📼
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-09 00:05:36.584	🦥
spotify:track:6XGqOY2tWjHwRIJ4qTjGBf	1	Fast Lane	2023-10-09 01:19:46.402	🦥
spotify:track:18oWEPapjNt32E6sCM6VLb	1	Heads Will Roll	2023-10-09 12:43:27.166	🦥
spotify:track:7qUJQSNX9QNf46CC6FgH66	1	Sucker for Pain (with Wiz Khalifa, Imagine Dragons, Logic & Ty Dolla $ign feat. X Ambassadors)	2023-10-09 15:20:56.904	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	1	Come Into My World (with NERVO)	2023-10-09 23:22:31.811	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-10 17:16:35.252	🦥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-10 19:42:32.504	🦥
spotify:track:3TSRH5IgWTHc8QZSAmo4bz	1	Cross My Heart I Hope U Die	2023-10-10 22:39:15.761	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-11 11:09:30.76	🦥
spotify:track:2AcKLW30dJ03qXsGU3RehH	1	All Or Nothing	2023-10-11 12:48:09.434	🦥
spotify:track:2MMUGOqJXwSWEY9yGYl8D2	1	Slow Drip	2023-10-11 14:57:17.971	🦥
spotify:track:4nVyHATevhl5RC6Qmoko5H	1	I Like It	2023-06-24 11:38:31.31	📼
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-08-30 17:29:03.613	🪬
spotify:track:2OfQvGrr83FGpdLA1nAR01	10	Numb	2023-09-06 21:23:21.896	🦥
spotify:track:7vzoNK8tbNmmKjDCNGTmkp	9	Tears of Gold - Owen Norton Remix	2023-09-04 13:33:06.895	🦥
spotify:track:6eCmK3GQyFuTNWCJHsaF9d	1	Drive (feat. Wes Nelson)	2023-06-24 11:38:31.309	🎶
spotify:track:6eCmK3GQyFuTNWCJHsaF9d	8	Drive (feat. Wes Nelson)	2023-06-24 11:38:31.309	🦥
spotify:track:7CH8J4ulT49UfZwSDSkSZA	7	i miss u (with Au/Ra)	2023-07-14 17:29:55.081	🦥
spotify:track:65ffWlQCk6XeKX50CDYgib	6	Baddest	2023-06-24 11:38:31.309	🦥
spotify:track:3DTqHfTGj1c6y2gDXsTez4	17	Regardless	2023-07-20 15:49:28.76	🦥
spotify:track:0Q06bNL4pMTlkilvL88nda	5	Maybe My Soulmate Died	2023-09-04 13:06:47.823	🦥
spotify:track:3XPl3dGn1oWe7VmKoB8nhU	8	Psycho - Joel Corry Remix	2023-07-20 16:07:44.649	🦥
spotify:track:2LAtELE0xGyMKcvNlxiyF3	1	1 Day 2 Nights	2023-06-24 11:38:31.309	🎶
spotify:track:1IdDtg7GhWfHYEWDymq3d2	6	If It Ain’t Me	2023-07-02 00:44:03.326	🦥
spotify:track:27u7t9d7ZQoyjsCROHuZJ3	5	Tick Tock (feat. 24kGoldn)	2023-06-24 11:38:31.31	🦥
spotify:track:3RrJTOClOgMAc9FQ7QDwv7	4	Undercover	2023-09-07 11:07:36.112	🦥
spotify:track:5iaa3eXgzedzQckwFNtIrl	9	Heart Wants What It Wants	2023-07-09 23:17:23.354	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-06-24 11:38:31.309	😈
spotify:track:3BKD1PwArikchz2Zrlp1qi	3	Baby Don't Hurt Me	2023-09-04 00:12:38.217	🦥
spotify:track:4iGjLLvo4Pax82YX3jE3Q1	4	Lonely Heart	2023-07-26 15:35:06.846	🦥
spotify:track:4mjDUywu5NREDKNPTaRdLE	6	Mi Amor	2023-07-22 12:08:12.296	🦥
spotify:track:7g2uEIBiSXUNkLmEUCv5nq	4	Cry Dancing	2023-07-27 13:42:32.381	🦥
spotify:track:6Jkm5kUldvIqxzI1Pa7nXH	2	10 Things I Hate About You	2023-09-12 16:04:34.271	🦥
spotify:track:5pNFibJLq7dvoDVIIcQBkn	5	Hot In It	2023-06-24 11:38:31.309	🦥
spotify:track:1v2EmuslskqaQS0iNfhwMb	3	Call My Name	2023-06-24 11:38:31.309	😈
spotify:track:1v2EmuslskqaQS0iNfhwMb	1	Call My Name	2023-09-06 14:01:04.026	🪬
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-09-13 11:50:42.831	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-07 14:21:40.927	🦥
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2023-09-12 16:36:56.553	💿
spotify:track:5a7NdkF09AfD0H607eiOkX	1	On My Mind	2023-09-13 16:18:04.728	🦥
spotify:track:5a7NdkF09AfD0H607eiOkX	1	On My Mind	2023-09-13 16:18:26.696	💿
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-13 13:09:52.752	💿
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-13 13:09:54.637	📼
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-13 13:10:30.369	🦥
spotify:track:73sE2IPYKcAvcz4Cd0pe1d	5	Die For a Man (feat. Lil Uzi Vert) - Galantis Remix	2023-06-24 11:38:31.309	🦥
spotify:track:5sK3o66yupTNIK6gWgzGjf	2	Dance Again	2023-06-24 11:38:31.309	🪬
spotify:track:5sK3o66yupTNIK6gWgzGjf	2	Dance Again	2023-09-05 12:20:30.358	🦥
spotify:track:59qrUpoplZxbIZxk6X0Bm3	2	Take You Dancing	2023-09-07 10:30:50.54	🎶
spotify:track:59qrUpoplZxbIZxk6X0Bm3	1	Take You Dancing	2023-06-24 11:38:31.309	😈
spotify:track:59qrUpoplZxbIZxk6X0Bm3	4	Take You Dancing	2023-06-24 11:38:31.309	🦥
spotify:track:0YETkmonJ718JRimG5zJOm	6	2019	2023-06-26 19:06:50.167	🦥
spotify:track:3F1P0QzdXtBz0MXy7KIO5w	4	Fever	2023-06-24 11:38:31.309	🦥
spotify:track:31vrYgT1bq756Yu3Hlzedj	6	Definition	2023-07-26 14:57:51.474	🦥
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-06-24 11:38:31.309	🎶
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-06-24 11:38:31.309	😈
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-06-24 11:38:31.309	🪬
spotify:track:4ZofmEdvs4mQqZ756GQhSY	12	Melody	2023-06-24 11:38:31.309	🦥
spotify:track:2BfJX65Te5q84Pku7osGRH	6	Good Luck (with Jax Jones & Galantis)	2023-06-24 11:38:31.309	🦥
spotify:track:3FkyJH5uE5XmN3voocBcYK	10	Private Life	2023-07-07 19:02:52.981	🦥
spotify:track:3H7ihDc1dqLriiWXwsc2po	1	Breaking Me	2023-06-24 11:38:31.309	📢
spotify:track:3H7ihDc1dqLriiWXwsc2po	3	Breaking Me	2023-06-24 11:38:31.309	🦥
spotify:track:4m2pZ1y1GmiOA8UYebp3A0	2	What You Gonna Do (feat. Taet)	2023-06-24 14:01:44.918	🦥
spotify:track:11M8c9SHQYpd8DOrmcu25k	2	Beg for You (feat. Rina Sawayama)	2023-06-24 11:38:31.309	🦥
spotify:track:5GSjJUbCCFFYv9lTtEFrMO	2	Stuck In My Head [NITE MIX] (feat. AJ Mitchell)	2023-06-24 11:38:31.309	🦥
spotify:track:3AOJ294HBNncEDSIAsvwAF	2	Morning - Billen Ted Remix	2023-06-24 11:38:31.309	🦥
spotify:track:3PZ5FaH37VoQuTMcX5T3by	2	Runaway With It	2023-06-24 11:38:31.309	🦥
spotify:track:5oT0W6JKJo8or78vqzd5XX	2	Better off Alone	2023-06-24 11:38:31.31	🦥
spotify:track:4TdA62WzOoEemnos4hLMwa	1	Pyromania	2023-09-20 21:37:05.451	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-20 23:06:19.964	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2023-09-21 00:17:10.222	🦥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-09-21 16:43:12.443	🦥
spotify:track:2O84FjR4RW4JDBu8FUZwvX	1	Beggin'	2023-09-21 19:09:40.785	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-24 03:18:19.945	🦥
spotify:track:0ndg56b510prqHlImqJoxG	1	Ghost Town (Lucas Estrada Remix)	2023-09-24 12:53:03.672	🦥
spotify:track:3WMj8moIAXJhHsyLaqIIHI	1	Something in the Orange	2023-09-25 12:09:38.125	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2023-09-25 21:41:05.354	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-09-25 22:17:41.121	😈
spotify:track:40iAvLjOTBW2gCyfqpdMiP	1	YOU (feat. Dotter)	2023-09-26 10:28:56.165	🦥
spotify:track:6btyEL6NwUa97Nex9cZFvo	1	Pump It	2023-09-26 16:06:30.643	🦥
spotify:track:6GDJDe3I7yHq4rPDTfuJMj	1	Rhythm Is A Dancer	2023-09-26 18:36:56.784	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-09-27 11:03:57.482	🦥
spotify:track:77FULy278MulVvGWS8BfK7	1	When Love Takes Over (feat. Kelly Rowland)	2023-09-27 14:09:38.405	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-27 14:43:30.325	🦥
spotify:track:7CH8J4ulT49UfZwSDSkSZA	1	i miss u (with Au/Ra)	2023-09-28 12:28:22.347	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-28 19:18:07.35	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-09-29 15:00:26.946	🦥
spotify:track:3mC64Smtz0xXvsa52ZM3Q9	1	Stars	2023-09-20 21:39:13.378	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-20 23:06:22.024	🦥
spotify:track:5sJWJ132Ya4i2xR5cW0B6a	1	Kardashian	2023-09-21 00:17:14.251	🦥
spotify:track:1STwdocp5GlE0aLPT6CaJ6	1	The Difference	2023-09-21 16:47:03.207	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-21 21:11:25.223	🦥
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-09-24 12:55:22.996	🦥
spotify:track:5Agunnfj2SyNhhFWNmQ8JE	1	Sweet and Sour	2023-09-25 14:22:04.973	🦥
spotify:track:6Jkm5kUldvIqxzI1Pa7nXH	1	10 Things I Hate About You	2023-09-25 21:59:09.541	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-09-25 22:17:42.902	🦥
spotify:track:2ovjS1yyTSXy3F0KHlTVTx	1	Be Okay - CLMD Remix	2023-09-26 10:31:30.025	🦥
spotify:track:5gOK3GYmmWvV8UyCpnRY4J	1	Around the World (La La La La La) - Radio Version	2023-09-26 16:22:46.482	🦥
spotify:track:4f3NHOxgC8Bg21IJBg4cZ3	1	Freaks - Radio Edit	2023-09-26 18:40:40.71	🦥
spotify:track:7y9iMe8SOB6z3NoHE2OfXl	1	Bad At Love	2023-09-27 11:19:09.593	🐺
spotify:track:63rbP24OzfaQCJjsHWZXnY	1	Where Them Girls At (feat. Nicki Minaj & Flo Rida)	2023-09-27 14:10:15.858	🦥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-09-27 17:31:05.374	🦥
spotify:track:5R8dQOPq8haW94K7mgERlO	1	Poker Face	2023-09-28 12:32:54.007	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-09-28 19:35:13.454	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-28 23:55:18.865	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-09-30 23:24:28.958	🦥
spotify:track:0H1OyEooZ5SzBYYdJEzxoy	1	If I Had You	2023-10-01 00:09:30.434	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-10-01 01:09:43.139	🦥
spotify:track:15og0pCEcTFWEXOFKdcJlU	1	Hate Me	2023-10-02 16:42:11.447	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	1	Come Into My World (with NERVO)	2023-10-02 19:49:24.808	🦥
spotify:track:0mHz9vqcznnfUcLqfQb3kd	1	Met Him Last Night - Dave Audé Remix	2023-10-03 14:13:31.547	🦥
spotify:track:5pmbZWt1lYVMvZ12MSdtqF	1	Leave A Little Love	2023-10-03 16:42:41.925	🦥
spotify:track:1mvZErZBp7WZT3HfGBykao	1	Cry for You	2023-10-04 20:25:19.346	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-04 21:40:53.262	🦥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-10-05 15:33:18.609	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-05 18:45:33.987	🦥
spotify:track:4yyX2Iu4xJjW9xMvBZKSBi	1	Met Him Last Night (feat. Ariana Grande)	2023-10-08 14:40:55.376	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	1	I Kissed A Girl	2023-10-08 22:38:01.485	📼
spotify:track:7hTqowWAKfOb99Rto1QXzJ	1	Party Songs	2023-10-09 00:09:05.502	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-09 01:22:46.426	🦥
spotify:track:6IbnUaczZBT34DhaD6S18F	1	Bubblegum Bitch	2023-10-09 12:49:06.345	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2023-10-10 17:24:44.027	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-11 11:09:31.503	☔
spotify:track:0zKbDrEXKpnExhGQRe9dxt	1	Lay Low	2023-10-11 12:51:21.948	🦥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-10-11 15:03:26.428	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-11 15:46:03.697	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-11 15:53:26.483	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-11 16:22:55.362	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-11 22:18:56.314	🦥
spotify:track:63rbP24OzfaQCJjsHWZXnY	1	Where Them Girls At (feat. Nicki Minaj & Flo Rida)	2023-10-12 16:49:30.908	🦥
spotify:track:1sUdq3kWa9dJXHu3eYOUll	1	Spooky, Scary Skeletons - Undead Tombstone Remix	2023-10-12 17:45:35.052	🦥
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-10-13 12:05:28.926	🎶
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-10-13 12:24:36.747	🎶
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-13 13:01:35.057	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-13 15:58:01.391	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-10-14 12:27:27.516	🦥
spotify:track:46XBrXzTAYXdRMeVxVeA6G	1	Mirror	2023-10-14 18:37:10.621	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-14 19:34:49.477	🦥
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-10-14 19:54:13.406	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-10-14 20:06:48.231	🦥
spotify:track:3FkyJH5uE5XmN3voocBcYK	1	Private Life	2023-10-14 20:30:44.663	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-15 14:35:25.946	🦥
spotify:track:4vswbhNPKavZJqpXzJI4wd	1	I Want You Around	2023-10-15 18:45:29.058	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-10-16 12:33:18.964	🔥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-16 14:41:01.079	🦥
spotify:track:2rfZyAX6wZxQWMQ9GYyLIu	1	Worship You	2023-10-16 14:49:09.05	🦥
spotify:track:5zEAGm4yKQ8NMemN0m3rW1	1	Nirvana	2023-10-16 18:42:26.1	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-10-16 22:03:07.803	🦥
spotify:track:0I5pVidtNjNXeaqHnwhrva	1	Can't Come To The Phone	2023-10-16 22:25:15.073	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2023-10-17 13:09:26.844	🔥
spotify:track:67lbzVADsqJJ6tyVk0XCgn	1	Chain My Heart	2023-10-17 13:11:03.266	🔥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-17 13:16:27.772	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-17 13:16:28.159	🔥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-17 14:38:40.317	🔥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-17 14:41:08.829	🔥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-17 14:41:13.843	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-17 15:04:31.256	🦥
spotify:track:4fCE1SCDulouoac9Q8XroU	1	West Coast (feat. Quinn XCII)	2023-10-17 15:06:36.747	🦥
spotify:track:3mC64Smtz0xXvsa52ZM3Q9	1	Stars	2023-09-20 21:40:23.817	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	1	Come Into My World (with NERVO)	2023-09-20 23:20:49.209	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-21 00:19:57.938	🦥
spotify:track:2UCu2FoXFZpCT36lYzej4O	1	Something Stupid (feat. AWA)	2023-09-24 13:10:09.291	🦥
spotify:track:5Agunnfj2SyNhhFWNmQ8JE	1	Sweet and Sour	2023-09-25 14:22:06.191	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-09-25 21:59:46.032	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-09-25 22:17:44.656	🦥
spotify:track:7hTqowWAKfOb99Rto1QXzJ	1	Party Songs	2023-09-26 10:33:42.94	🦥
spotify:track:3BKD1PwArikchz2Zrlp1qi	1	Baby Don't Hurt Me	2023-09-26 17:36:08.021	🦥
spotify:track:0ndg56b510prqHlImqJoxG	1	Ghost Town (Lucas Estrada Remix)	2023-09-26 21:01:17.291	🦥
spotify:track:1D2Aldrksl9yWWCIPOeDzy	1	All Around The World (La La La)	2023-09-27 12:27:33.813	🦥
spotify:track:4uUG5RXrOk84mYEfFvj3cK	1	I'm Good (Blue)	2023-09-27 14:16:14.724	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-09-27 18:21:05.482	🦥
spotify:track:1nYeVF5vIBxMxfPoL0SIWg	1	Hallucinate	2023-09-28 12:38:46.25	🦥
spotify:track:0H1OyEooZ5SzBYYdJEzxoy	1	If I Had You	2023-09-28 20:19:38.693	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-09-29 00:00:55.346	🦥
spotify:track:44aN5xKL3kGHvQ5bXVk6B8	1	Ghost Town	2023-09-29 10:15:55.206	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-09-29 20:33:06.768	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-30 16:19:11.63	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-30 16:55:00.859	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-30 17:00:02.373	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-30 17:03:21.146	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-09-30 17:05:21.944	🦥
spotify:track:1nYeVF5vIBxMxfPoL0SIWg	1	Hallucinate	2023-09-30 17:06:33.688	🦥
spotify:track:4iGjLLvo4Pax82YX3jE3Q1	1	Lonely Heart	2023-09-30 17:07:16.196	🦥
spotify:track:2UCu2FoXFZpCT36lYzej4O	1	Something Stupid (feat. AWA)	2023-09-30 17:14:56.732	🦥
spotify:track:16mxzE8G96JyMSfcq1PQvW	1	Straight From the Heart (feat. Nørskov)	2023-09-30 17:18:03.441	🦥
spotify:track:3BKD1PwArikchz2Zrlp1qi	1	Baby Don't Hurt Me	2023-09-30 17:21:36.739	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:45:54.015	📼
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-01 00:13:15.933	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-10-01 01:09:44.919	🦥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-10-01 12:51:59.28	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-10-02 11:05:54.832	🦥
spotify:track:15og0pCEcTFWEXOFKdcJlU	1	Hate Me	2023-10-02 16:42:12.568	🦥
spotify:track:3WdijbYmphZ8N0MYblXDnF	1	Animal	2023-10-02 19:58:15.423	🦥
spotify:track:5gOK3GYmmWvV8UyCpnRY4J	1	Around the World (La La La La La) - Radio Version	2023-10-03 14:37:54.401	🦥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-03 16:45:09.965	🦥
spotify:track:36cmM3MBMWWCFIiQ90U4J8	1	Bounce (feat. Kelis) - Radio Edit	2023-10-04 20:35:51.644	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-04 21:47:38.737	🦥
spotify:track:3IhM5Mber8KA0NaRNpK2px	1	Lay Low	2023-10-05 15:34:42.069	🦥
spotify:track:43WYPxyEfIxlIjNlxQGYzc	1	Cry About It Later (feat. Luísa Sonza & Bruno Martini)	2023-10-05 18:49:22.604	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-08 14:48:36.031	🦥
spotify:track:2ZAx6NDhX2yE5aL5ueEQgY	1	Mr. Saxobeat	2023-10-08 22:38:31.461	💿
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-09 00:10:09.168	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2023-10-09 01:25:11.168	🦥
spotify:track:3vkQ5DAB1qQMYO4Mr9zJN6	1	Gimme! Gimme! Gimme! (A Man After Midnight)	2023-10-09 12:54:02.022	🦥
spotify:track:5zEAGm4yKQ8NMemN0m3rW1	1	Nirvana	2023-10-10 17:27:18.207	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-11 12:06:23.231	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-11 12:56:07.946	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-11 15:05:42.581	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-11 15:50:00.229	🦥
spotify:track:4Ka0qWis2V9gI5MFdzT1lB	1	Breaking with You	2023-10-11 15:56:29.116	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-11 16:47:56.1	🦥
spotify:track:6zsFddikwwAfBr3USkYSDx	1	Radio	2023-10-12 17:24:26.6	🦥
spotify:track:1sUdq3kWa9dJXHu3eYOUll	1	Spooky, Scary Skeletons - Undead Tombstone Remix	2023-10-12 17:45:35.865	🦥
spotify:track:4nK5YrxbMGZstTLbvj6Gxw	1	Supalonely	2023-10-13 12:05:33.161	🎶
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-10-13 12:24:38.267	☔
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-13 15:06:05.273	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-13 16:02:36.507	🦥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-14 12:32:59.995	🦥
spotify:track:3iEwla99ovgF0Rdla6FZm4	1	Let Them Know	2023-10-14 18:39:21.301	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-10-14 19:37:50.51	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-14 19:57:44.515	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-10-14 20:06:49.015	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-10-14 22:48:35.784	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-15 15:59:53.791	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-15 19:18:27.977	🦥
spotify:track:5Agunnfj2SyNhhFWNmQ8JE	1	Sweet and Sour	2023-10-16 11:12:21.287	🔥
spotify:track:4WQJPsbGOdqe24mUVHa8xb	-1	Now Or Never	2023-10-16 12:50:48.471	🦥
spotify:track:2xfHakNuD25ma5CSfTXFw2	1	The One	2023-10-16 14:42:44.575	🔥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-16 15:24:45.481	🔥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-16 18:58:34.581	🦥
spotify:track:3mC64Smtz0xXvsa52ZM3Q9	1	Stars	2023-09-20 21:40:51.307	🦥
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2023-09-20 23:28:25.062	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-21 00:19:58.579	🦥
spotify:track:3K00Ib1shkOEiAXU5pec6e	1	Back To You	2023-09-24 17:10:21.832	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-09-25 16:01:35.487	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-09-25 21:59:46.911	🦥
spotify:track:7irq1X57FwkQrGFVOayjsm	1	STOP!	2023-09-26 10:54:26.842	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-26 17:45:47.498	🦥
spotify:track:3YfGTvsTAWGC2lgoDOikUz	1	One in a Million	2023-09-27 13:24:33.128	🦥
spotify:track:3K00Ib1shkOEiAXU5pec6e	1	Back To You	2023-09-27 14:19:35.632	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-28 23:52:57.798	🦥
spotify:track:36cmM3MBMWWCFIiQ90U4J8	1	Bounce (feat. Kelis) - Radio Edit	2023-09-27 18:26:25.385	🦥
spotify:track:4FWbsd91QSvgr1dSWwW51e	1	TRUSTFALL	2023-09-28 12:46:43.214	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-28 23:51:34.677	🦥
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-09-29 00:02:16.949	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-09-29 12:04:25.09	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-09-29 20:33:08.125	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-30 16:20:11.973	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-30 17:00:07.022	🦥
spotify:track:1nYeVF5vIBxMxfPoL0SIWg	1	Hallucinate	2023-09-30 17:05:51.659	🦥
spotify:track:16mxzE8G96JyMSfcq1PQvW	-1	Straight From the Heart (feat. Nørskov)	2023-09-30 17:18:10.544	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-30 20:30:01.923	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:45:54.702	💿
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-01 00:13:27.842	🦥
spotify:track:40iAvLjOTBW2gCyfqpdMiP	1	YOU (feat. Dotter)	2023-10-01 01:23:30.471	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-10-01 13:12:46.036	🦥
spotify:track:1IdDtg7GhWfHYEWDymq3d2	1	If It Ain’t Me	2023-10-02 11:28:27.41	🦥
spotify:track:0l2HaL3nbp9AFJ428p4yaA	-1	Summertime Sadness	2023-10-02 18:53:39.438	🦥
spotify:track:3iEwla99ovgF0Rdla6FZm4	1	Let Them Know	2023-10-02 19:30:51.37	☔
spotify:track:0Q06bNL4pMTlkilvL88nda	1	Maybe My Soulmate Died	2023-10-02 22:07:10.231	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-03 13:37:05.321	🦥
spotify:track:43WYPxyEfIxlIjNlxQGYzc	1	Cry About It Later (feat. Luísa Sonza & Bruno Martini)	2023-10-03 14:51:54.445	🦥
spotify:track:1cOyWWUr3oXJIxY0AjJEx9	1	YOUTH	2023-10-04 15:02:18.021	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-10-04 21:04:39.233	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-10-04 21:52:41.099	🦥
spotify:track:6W9qtw3ddhkYznaOxB50p8	1	The Feeling	2023-10-05 13:15:01.425	🦥
spotify:track:3IhM5Mber8KA0NaRNpK2px	1	Lay Low	2023-10-05 15:34:42.92	🦥
spotify:track:4MKzCHlZvkwJOQRNkdw4zq	1	Sexy Chick (feat. Akon)	2023-10-05 17:15:24.431	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-05 19:00:36.749	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-05 19:15:32.987	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-06 11:19:05.633	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-07 15:13:20.503	🦥
spotify:track:15og0pCEcTFWEXOFKdcJlU	1	Hate Me	2023-10-08 10:52:38.903	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	-1	Say It Right - ILURO Remix	2023-10-08 14:13:04.151	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-08 14:48:41.335	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-08 16:13:10.167	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-08 16:19:58.319	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-08 16:44:02.33	🦥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-08 16:56:41.349	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-08 22:05:53.934	🦥
spotify:track:2ZAx6NDhX2yE5aL5ueEQgY	1	Mr. Saxobeat	2023-10-08 22:38:35.53	💿
spotify:track:1mvZErZBp7WZT3HfGBykao	1	Cry for You	2023-10-09 00:29:11.138	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-09 01:30:53.563	🦥
spotify:track:20efeySIfZoiSaISGLBbNs	1	Thriller - Single Version	2023-10-09 10:51:18.353	🦥
spotify:track:3JTMWdhcJPiegDSe7SvZS3	1	Cannibal	2023-10-09 12:59:32.41	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-09 15:22:55.291	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-10 11:47:51.13	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-10-10 18:02:36.527	🦥
spotify:track:3YfGTvsTAWGC2lgoDOikUz	1	One in a Million	2023-10-10 20:10:39.043	🦥
spotify:track:1UNWD6R5EOFklUHKZZvww2	1	She Said	2023-10-10 21:49:02.058	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-10-11 12:09:56.767	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-11 12:57:05.537	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-10-11 15:07:34.628	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-11 15:50:00.913	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-11 16:03:47.075	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-11 16:48:00.533	🦥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-10-12 17:25:22.113	🦥
spotify:track:6btdl1Vl6Ta5lUwUSOFW2H	1	SUN GOES DOWN	2023-10-12 20:03:52.584	☔
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-10-13 12:15:52.821	🦥
spotify:track:6f5ExP43esnvdKPddwKXJH	1	Better Days (NEIKED x Mae Muller x Polo G)	2023-10-13 12:28:21.986	☔
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-13 15:18:20.477	🦥
spotify:track:7kMfu3KUydmrFVGEAhjtyl	1	Good Girls Go Bad (feat. Leighton Meester)	2023-10-14 13:49:31.348	🦥
spotify:track:6h5PAsRni4IRlxWr6uDPTP	1	More Than You Know	2023-10-14 18:41:53.253	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-14 19:41:50.295	🦥
spotify:track:3mC64Smtz0xXvsa52ZM3Q9	1	Stars	2023-09-20 21:41:17.792	🦥
spotify:track:3tIjJY43mDAhMZxSuDHvjy	1	Lovefool (feat. Pia Mia)	2023-09-20 23:42:19.98	🦥
spotify:track:3DTqHfTGj1c6y2gDXsTez4	1	Regardless	2023-09-21 00:23:04.432	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-09-25 16:11:12.049	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-25 22:08:52.531	🦥
spotify:track:2yauli1mg4gIjNgaKRFKjw	1	Wait	2023-09-26 11:04:51.211	🦥
spotify:track:0zKbDrEXKpnExhGQRe9dxt	1	Lay Low	2023-09-26 17:49:56.779	🦥
spotify:track:6h5PAsRni4IRlxWr6uDPTP	1	More Than You Know	2023-09-27 13:25:13.39	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-09-27 14:22:23.976	🦥
spotify:track:0H1OyEooZ5SzBYYdJEzxoy	1	If I Had You	2023-09-27 21:37:24.301	🦥
spotify:track:4iGjLLvo4Pax82YX3jE3Q1	1	Lonely Heart	2023-09-28 13:48:59.088	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-28 23:52:55.365	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-09-29 00:12:53.344	🦥
spotify:track:6GDJDe3I7yHq4rPDTfuJMj	1	Rhythm Is A Dancer	2023-09-29 12:19:06.198	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-09-29 23:30:14.11	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-30 20:30:03.1	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:46:11.101	💿
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-01 00:33:08.526	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-10-01 01:25:27.426	🦥
spotify:track:6h5PAsRni4IRlxWr6uDPTP	1	More Than You Know	2023-10-01 13:41:37.342	🦥
spotify:track:5VxmI3IdgAxWVvUnJoLuY2	1	Speed Drive (From Barbie The Album)	2023-10-02 12:20:41.185	🦥
spotify:track:3iEwla99ovgF0Rdla6FZm4	-1	Let Them Know	2023-10-02 19:31:08.351	☔
spotify:track:2O84FjR4RW4JDBu8FUZwvX	1	Beggin'	2023-10-02 22:08:24.664	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-10-03 13:37:18.944	🦥
spotify:track:3DNziCcqRd2v8uQWwec1GW	1	Skin - Quarterhead Remix	2023-10-03 14:56:45.392	🦥
spotify:track:1cOyWWUr3oXJIxY0AjJEx9	-1	YOUTH	2023-10-04 15:02:25.823	🦥
spotify:track:4vswbhNPKavZJqpXzJI4wd	1	I Want You Around	2023-10-04 21:16:30.783	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-10-04 21:52:41.881	🦥
spotify:track:1txNJEYS7E0uQzYqmYeoJp	1	Comin' To Getcha	2023-10-05 13:15:11.586	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-05 15:45:20.262	🦥
spotify:track:4MKzCHlZvkwJOQRNkdw4zq	-1	Sexy Chick (feat. Akon)	2023-10-05 17:15:35.109	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-05 19:06:39.2	🔥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-05 19:15:54.095	🦥
spotify:track:41kOdUYJOPwl8nAZr7dsts	1	Bumpy Ride	2023-10-06 16:47:45.982	🦥
spotify:track:2ptbBxMTCbFBefVMXwrdSC	1	Dress	2023-10-07 15:18:42.209	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-10-08 11:05:02.462	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-10-08 14:13:11.259	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-10-08 14:52:04.217	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-08 16:14:18.098	🦥
spotify:track:3uUuGVFu1V7jTQL60S1r8z	1	Where Are You Now	2023-10-08 16:53:22.424	🦥
spotify:track:2O84FjR4RW4JDBu8FUZwvX	1	Beggin'	2023-10-08 16:59:58.833	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	-1	I Kissed A Girl	2023-10-08 22:37:48.792	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-10-08 23:12:05.887	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-10-09 00:49:46.354	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-09 01:30:54.394	🦥
spotify:track:1sUdq3kWa9dJXHu3eYOUll	1	Spooky, Scary Skeletons - Undead Tombstone Remix	2023-10-09 10:55:34.992	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-09 13:06:02.53	🦥
spotify:track:1mvZErZBp7WZT3HfGBykao	1	Cry for You	2023-10-09 16:06:07.626	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-10 11:55:54.25	⛰️
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-10-10 19:14:33.872	🦥
spotify:track:5zEAGm4yKQ8NMemN0m3rW1	1	Nirvana	2023-10-10 20:10:42.973	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-10 21:52:38.03	🦥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-10-11 12:17:12.303	🦥
spotify:track:3tIjJY43mDAhMZxSuDHvjy	1	Lovefool (feat. Pia Mia)	2023-10-11 12:59:46.304	🦥
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-10-11 15:09:11.057	☔
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-11 15:50:02.961	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-11 16:03:47.94	🦥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-10-11 16:50:59.235	🦥
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-10-12 17:32:42.199	🦥
spotify:track:27ycaQnQAxaPiyeg3nr2aB	1	Midnight Sky	2023-10-12 20:06:02.044	☔
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-10-13 12:15:55.708	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-13 12:35:58.578	🎶
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-13 15:19:26.892	🦥
spotify:track:11BKm0j4eYoCPPpCONAVwA	1	Bloody Mary	2023-10-14 13:53:06.451	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-14 19:12:21.513	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	1	Come Into My World (with NERVO)	2023-10-14 19:42:47.977	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-14 20:01:08.063	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-14 20:23:04.737	🦥
spotify:track:0L5dwOLG1xpw9oD5FcyQak	1	Stars	2023-10-15 18:42:50.28	🦥
spotify:track:6rFaGfDRVRXlVdUVgBz0Ho	1	Noise Cancellation	2023-10-16 11:13:03.913	🦥
spotify:track:3RrJTOClOgMAc9FQ7QDwv7	1	Undercover	2023-10-16 12:51:31.384	🦥
spotify:track:2xfHakNuD25ma5CSfTXFw2	1	The One	2023-10-16 14:42:48.595	🔥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-16 15:24:45.723	🦥
spotify:track:3PlpAfyyeuicW1HP0IebLM	1	Somebody I F*cked Once - Lady Bee Remix	2023-10-16 21:06:53.642	🦥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-09-20 21:47:19.083	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-09-20 23:44:26.616	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-09-21 00:26:28.04	🦥
spotify:track:1trLfcGdZLeqZCB1mnZZFy	1	Strut	2023-09-25 16:31:33.808	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-25 22:08:52.766	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-09-26 13:55:43.574	🦥
spotify:track:7fWOBXSWN29kaE0spQjUW9	1	Goodbye	2023-09-26 17:57:08.164	🦥
spotify:track:3H7ihDc1dqLriiWXwsc2po	1	Breaking Me	2023-09-27 13:32:10.856	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-09-27 14:24:45.448	🦥
spotify:track:78oZ26xvmtCfarveRXs3dq	1	Big (feat. Gunna)	2023-09-28 13:49:44.099	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-09-29 12:21:29.188	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-09-30 23:11:26.795	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:46:12.057	💿
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-01 00:33:09.975	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-10-01 01:25:28.517	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-01 22:38:03.846	🦥
spotify:track:73CMRj62VK8nUS4ezD2wvi	1	Set Fire to the Rain	2023-10-02 12:32:02.584	🦥
spotify:track:5VxmI3IdgAxWVvUnJoLuY2	1	Speed Drive (From Barbie The Album)	2023-10-02 19:32:21.017	🦥
spotify:track:3XPl3dGn1oWe7VmKoB8nhU	1	Psycho - Joel Corry Remix	2023-10-03 13:42:28.536	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-03 15:53:02.694	🦥
spotify:track:1cOyWWUr3oXJIxY0AjJEx9	1	YOUTH	2023-10-04 15:02:36.73	💿
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-04 21:18:39.897	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-04 21:54:28.348	🦥
spotify:track:62nhuooamoroYpJyqE0nLd	1	Are You With Me - Radio Edit	2023-10-05 14:20:00.967	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-05 15:45:25.093	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-05 17:43:44.197	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-05 19:06:39.852	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-05 19:15:58.634	🦥
spotify:track:3AzjcOeAmA57TIOr9zF1ZW	1	Physical	2023-10-06 18:02:24.288	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-07 15:20:27.886	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-08 13:00:07.707	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-10-08 14:13:12.186	🦥
spotify:track:43WYPxyEfIxlIjNlxQGYzc	1	Cry About It Later (feat. Luísa Sonza & Bruno Martini)	2023-10-08 14:54:33.286	🦥
spotify:track:1WFy81RbU5QhOeYVgIzVPe	1	Weekend On A Tuesday	2023-10-08 16:16:13.255	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-08 17:01:29.901	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	1	I Kissed A Girl	2023-10-08 22:37:54.283	🦥
spotify:track:5WQQIDU3HRaMyPkob8mpFb	1	Where Have You Been	2023-10-08 23:51:05.644	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-09 01:05:47.289	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-09 01:30:55.573	🦥
spotify:track:11BKm0j4eYoCPPpCONAVwA	1	Bloody Mary	2023-10-09 11:04:04.586	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-09 13:06:03.339	🦥
spotify:track:1WFy81RbU5QhOeYVgIzVPe	1	Weekend On A Tuesday	2023-10-09 16:08:53.173	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-10 11:56:35.052	🔥
spotify:track:3RLC8jJmDOZwrJ5izaISXr	1	Blackout	2023-10-10 19:29:00.93	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2023-10-10 20:10:45.948	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-10-10 22:11:47.216	🦥
spotify:track:00E0Z2jrF7reoHps4zcbWQ	1	Car Keys (Ayla)	2023-10-11 12:22:07.101	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-10-11 13:01:35.625	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-11 15:09:52.987	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-11 15:51:44.53	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-11 16:04:18.319	🦥
spotify:track:43WYPxyEfIxlIjNlxQGYzc	1	Cry About It Later (feat. Luísa Sonza & Bruno Martini)	2023-10-11 22:12:56.703	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	1	You Only Love Me	2023-10-12 11:57:21.614	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-12 17:35:38.958	🦥
spotify:track:28cnXtME493VX9NOw9cIUh	1	Hurt	2023-10-13 11:21:15.101	☔
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-10-13 12:15:58.272	☔
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-13 12:36:00	☔
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-13 15:22:13.371	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-14 11:27:00.376	🦥
spotify:track:4FxDFBpqPumIyXzPagQPp0	1	I Wrote A Song - Topic Remix	2023-10-14 16:07:51.6	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-14 19:12:24.452	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-14 19:49:03.398	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-14 20:03:25.286	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-14 20:26:28.046	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-10-15 18:43:48.63	🦥
spotify:track:6rFaGfDRVRXlVdUVgBz0Ho	1	Noise Cancellation	2023-10-16 11:13:06.678	🔥
spotify:track:3RrJTOClOgMAc9FQ7QDwv7	1	Undercover	2023-10-16 12:51:34.167	🔥
spotify:track:2rfZyAX6wZxQWMQ9GYyLIu	1	Worship You	2023-10-16 14:48:54.117	🔥
spotify:track:2AcKLW30dJ03qXsGU3RehH	1	All Or Nothing	2023-10-16 17:30:59.374	🦥
spotify:track:0ymH3Qwwzkl802WD3yy0oY	1	Marble	2023-10-16 21:13:40.854	🦥
spotify:track:76Tuo484SLohJakHLnGI3B	1	Sweet Melody	2023-10-16 22:12:21.169	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-17 13:21:47.937	🔥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-09-20 21:47:27.184	🦥
spotify:track:2UCu2FoXFZpCT36lYzej4O	1	Something Stupid (feat. AWA)	2023-09-20 23:53:38.387	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-09-21 00:26:30.806	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-09-25 16:42:51.521	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-25 22:08:54.808	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-26 14:29:30.898	🦥
spotify:track:67lbzVADsqJJ6tyVk0XCgn	1	Chain My Heart	2023-09-26 17:57:46.598	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-09-27 13:35:14.206	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-09-27 14:24:51.16	🦥
spotify:track:16mxzE8G96JyMSfcq1PQvW	1	Straight From the Heart (feat. Nørskov)	2023-09-28 18:08:38.007	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-09-28 23:53:02.352	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-09-29 12:21:29.976	🦥
spotify:track:1HOlb9rdNOmy9b1Fakicjo	1	#SELFIE	2023-09-30 23:14:26.927	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:46:14.773	📼
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-01 00:33:25.85	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-10-01 01:25:29.601	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-10-01 22:52:36.184	🦥
spotify:track:4DJORZgsbqnEJ4f4B9TBGV	1	You Don't Know Me (feat. RAYE)	2023-10-02 15:26:39.031	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-10-02 19:35:51.254	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	1	You Only Love Me	2023-10-03 13:49:03.863	🦥
spotify:track:3uUuGVFu1V7jTQL60S1r8z	1	Where Are You Now	2023-10-03 16:26:21.072	🦥
spotify:track:1cOyWWUr3oXJIxY0AjJEx9	1	YOUTH	2023-10-04 15:02:50.012	🐺
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-04 21:18:40.849	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-04 21:54:29.217	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-10-05 15:23:34.948	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2023-10-05 15:54:35.087	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-05 17:43:44.944	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-05 19:06:46.311	🔥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-10-05 19:18:04.268	🦥
spotify:track:2xfHakNuD25ma5CSfTXFw2	1	The One	2023-10-06 18:25:23.887	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-07 15:23:29.017	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-08 13:00:09.643	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-10-08 14:18:02.311	🦥
spotify:track:3DNziCcqRd2v8uQWwec1GW	1	Skin - Quarterhead Remix	2023-10-08 15:01:59.205	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-08 17:10:37.712	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	-1	I Kissed A Girl	2023-10-08 22:37:56.648	💿
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-08 23:55:08.666	🦥
spotify:track:1txNJEYS7E0uQzYqmYeoJp	1	Comin' To Getcha	2023-10-09 01:16:08.387	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-09 01:33:24.312	🦥
spotify:track:3nqQXoyQOWXiESFLlDF1hG	1	Unholy (feat. Kim Petras)	2023-10-09 11:35:24.48	🦥
spotify:track:6SpUnFjNfyFgyLRm65b2G6	1	ORAL HEX (spell on you)	2023-10-09 15:15:15.106	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-10-09 21:36:45.095	🦥
spotify:track:3Zwu2K0Qa5sT6teCCHPShP	1	Thnks fr th Mmrs	2023-10-10 12:00:16.329	🔥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-10 19:40:43.107	🦥
spotify:track:6iF4RgIjDvDqyW13PezSj3	1	Single Soon	2023-10-10 20:10:59.782	🦥
spotify:track:2rfZyAX6wZxQWMQ9GYyLIu	1	Worship You	2023-10-11 12:23:10.859	🦥
spotify:track:3mC64Smtz0xXvsa52ZM3Q9	17	Stars	2023-07-20 16:29:48.554	🦥
spotify:track:3tIjJY43mDAhMZxSuDHvjy	14	Lovefool (feat. Pia Mia)	2023-07-29 12:36:16.905	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	4	Numb	2023-08-30 17:29:11.051	🪬
spotify:track:36gcliMRX1vCpgnrZE3dFZ	8	10:35	2023-09-04 11:35:58.009	🦥
spotify:track:6eCmK3GQyFuTNWCJHsaF9d	1	Drive (feat. Wes Nelson)	2023-06-24 11:38:31.309	😈
spotify:track:7fWOBXSWN29kaE0spQjUW9	8	Goodbye	2023-07-08 15:41:40.447	🦥
spotify:track:5dry5tz8yLcLuOJ3l6ZEQd	8	Used to Know Me	2023-06-24 11:38:31.309	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	6	Lay All Your Love On Me	2023-09-03 23:24:12.623	🦥
spotify:track:7arsXR8AtExnOFN3v3HiJI	8	Going Dumb	2023-07-20 17:04:38.812	🦥
spotify:track:2O84FjR4RW4JDBu8FUZwvX	6	Beggin'	2023-09-13 21:00:18.451	🦥
spotify:track:2doTn2LWTKN1Z0lZJG2WQw	6	UNHEALTHY (feat. Shania Twain)	2023-06-30 12:31:02.197	🦥
spotify:track:2LAtELE0xGyMKcvNlxiyF3	1	1 Day 2 Nights	2023-06-24 11:38:31.309	😈
spotify:track:3AzjcOeAmA57TIOr9zF1ZW	8	Physical	2023-06-24 11:38:31.309	🦥
spotify:track:27u7t9d7ZQoyjsCROHuZJ3	1	Tick Tock (feat. 24kGoldn)	2023-09-07 11:05:06.661	🎶
spotify:track:2bLqfJjuC5syrsgDsZfGmn	4	The Way I Are	2023-09-13 20:16:25.853	🦥
spotify:track:78oZ26xvmtCfarveRXs3dq	7	Big (feat. Gunna)	2023-06-24 11:38:31.31	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-06-24 11:38:31.309	🪬
spotify:track:46XBrXzTAYXdRMeVxVeA6G	9	Mirror	2023-07-06 22:24:47.914	🦥
spotify:track:4iGjLLvo4Pax82YX3jE3Q1	1	Lonely Heart	2023-09-07 10:30:40.568	🎶
spotify:track:7LbhIjYNfCguxjAw43Mkff	6	Ghost	2023-06-24 11:38:31.309	🦥
spotify:track:2dWNKXTs5z7Iu1g0kYh4Xe	2	My Heart Goes (La Di Da) (feat. Topic)	2023-06-24 11:38:31.309	🦥
spotify:track:5B1TY0oq5I1VeTZxEnkGV8	7	Poster Girl	2023-08-03 00:24:30.604	🦥
spotify:track:5RTCbOZLSoVaOwisJhsdfd	5	SKIN 2 SKIN	2023-07-08 16:08:28.1	🦥
spotify:track:1v2EmuslskqaQS0iNfhwMb	8	Call My Name	2023-06-24 11:38:31.309	🧊
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-06-24 11:38:31.31	😈
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-09-13 11:50:43.539	🎶
spotify:track:63y6xWR4gXz7bnUGOk8iI6	2	Into You	2023-09-14 21:32:22.19	🦥
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2023-09-12 16:46:31.228	🦊
spotify:track:6Dy1jexKYriXAVG6evyUTJ	2	OUT OUT (feat. Charli XCX & Saweetie)	2023-06-24 11:38:31.31	🎶
spotify:track:6Dy1jexKYriXAVG6evyUTJ	1	OUT OUT (feat. Charli XCX & Saweetie)	2023-06-24 11:38:31.31	😈
spotify:track:6Dy1jexKYriXAVG6evyUTJ	2	OUT OUT (feat. Charli XCX & Saweetie)	2023-06-24 11:38:31.31	🦥
spotify:track:29aqCNtLcL5cjsjRRe1Y1s	2	Hands On Your Body	2023-07-17 15:15:23.106	🦥
spotify:track:6rFaGfDRVRXlVdUVgBz0Ho	2	Noise Cancellation	2023-07-21 09:51:40.896	🦥
spotify:track:0osvOdeD3YXZiWkT8MKolJ	5	Lifestyle (feat. Adam Levine)	2023-06-24 11:38:31.31	🦥
spotify:track:0SSIu4CcGITHdatDmjlA6H	5	Nobody To Love (with Loren Gray)	2023-06-24 11:38:31.309	🦥
spotify:track:0DGduxy7YSuqXm272C2LM6	4	El Diablo	2023-06-24 11:38:31.31	🦥
spotify:track:3iEwla99ovgF0Rdla6FZm4	4	Let Them Know	2023-06-24 12:08:51.669	🦥
spotify:track:6Dfi1zryJF6c5DoW0JHl7u	4	Let Love Go (feat. Lil Tecca)	2023-06-24 11:38:31.309	🦥
spotify:track:7FbrGaHYVDmfr7KoLIZnQ7	2	Cupid - Twin Ver.	2023-06-24 11:38:31.309	🦥
spotify:track:2cc8Sw1OnCuA5bV8nqWqpE	2	You	2023-06-24 11:38:31.31	🦥
spotify:track:5r0cOO77xkM5jjHk67Z2Lt	3	Baby, I'm Jealous (feat. Doja Cat)	2023-06-24 11:38:31.31	🦥
spotify:track:4dsm0VbaMmnLHhrOKcDNSI	1	When You're Out (feat. Mae Muller)	2023-06-24 11:38:31.31	🦥
spotify:track:3j11iDncb7ZeDMw7lFucqM	1	The Motto	2023-06-24 22:05:40.456	🦥
spotify:track:3B4etxytImrRKQgV3XHjnR	1	Harleys In Hawaii	2023-06-24 11:38:31.309	🎶
spotify:track:3B4etxytImrRKQgV3XHjnR	1	Harleys In Hawaii	2023-06-24 11:38:31.309	😈
spotify:track:3B4etxytImrRKQgV3XHjnR	4	Harleys In Hawaii	2023-06-24 11:38:31.309	🦥
spotify:track:6WDG2ybdV3SBXV0lwBGu4D	1	Maybe You’re The Problem	2023-06-24 11:38:31.309	🎶
spotify:track:6WDG2ybdV3SBXV0lwBGu4D	2	Maybe You’re The Problem	2023-06-24 11:38:31.309	🦥
spotify:track:1WCEAGGRD066z2Q89ObXTq	1	Crazy What Love Can Do	2023-06-24 11:38:31.309	🦥
spotify:track:1zFBtgQqy24SnTHlf0ir17	1	Real Groove (feat. Dua Lipa) - Studio 2054 Initial Talk Remix	2023-06-24 11:38:31.309	🦥
spotify:track:3JXF3LsUjyDIHjuwhXxdjo	2	Sweetest Pie	2023-07-08 15:55:08.269	🦥
spotify:track:4GO8S3iZlSLwdsyf1XEOmA	1	I Love Your Girl	2023-07-05 14:13:17.229	🦥
spotify:track:0ZXdzaT1k688dkpNeEgQiV	1	I Don't Know Why	2023-06-24 11:38:31.31	🎶
spotify:track:0ZXdzaT1k688dkpNeEgQiV	1	I Don't Know Why	2023-06-24 11:38:31.31	😈
spotify:track:0ZXdzaT1k688dkpNeEgQiV	1	I Don't Know Why	2023-06-24 11:38:31.31	🫧
spotify:track:0ZXdzaT1k688dkpNeEgQiV	3	I Don't Know Why	2023-06-24 11:38:31.31	🦥
spotify:track:3G6hD9B2ZHOsgf4WfNu7X1	1	Team	2023-06-24 11:38:31.309	🎶
spotify:track:3G6hD9B2ZHOsgf4WfNu7X1	1	Team	2023-06-24 11:38:31.309	🪬
spotify:track:3G6hD9B2ZHOsgf4WfNu7X1	1	Team	2023-06-24 11:38:31.309	🦊
spotify:track:3G6hD9B2ZHOsgf4WfNu7X1	1	Team	2023-07-07 13:23:45.746	🦥
spotify:track:7iDcKU9zpVp20Oa27SerEY	2	Black Magic	2023-06-24 11:38:31.31	🦥
spotify:track:1Q6ySAXCm1QSKnzTZ1rgin	1	Disturbia	2023-07-03 11:02:12.104	🦥
spotify:track:4WQJPsbGOdqe24mUVHa8xb	1	Now Or Never	2023-06-30 11:51:57.434	🦥
spotify:track:6BQcggOEF7ASntQACEdT2L	1	ME BECAUSE OF YOU - Indigo Kxd Remix	2023-06-24 11:38:31.309	🦥
spotify:track:1oHNvJVbFkexQc0BpQp7Y4	12	Starships	2023-06-24 11:38:31.31	💿
spotify:track:1oHNvJVbFkexQc0BpQp7Y4	1	Starships	2023-07-02 20:33:14.953	🦥
spotify:track:2wUV58nT5BrVZz4ahFf1uH	1	Crying On The Dance Floor	2023-06-24 11:38:31.31	🦥
spotify:track:5ttodnEIaCGDuBbvJctUfc	3	End Of Time	2023-06-24 11:38:31.309	🦥
spotify:track:557Xkoud7EtdyjdyRkrhRy	4	Hero	2023-06-24 11:38:31.309	🦥
spotify:track:4nrPB8O7Y7wsOCJdgXkthe	9	Shakira: Bzrp Music Sessions, Vol. 53	2023-06-24 11:38:31.31	🎶
spotify:track:4nrPB8O7Y7wsOCJdgXkthe	13	Shakira: Bzrp Music Sessions, Vol. 53	2023-06-24 11:38:31.31	😈
spotify:track:4nrPB8O7Y7wsOCJdgXkthe	4	Shakira: Bzrp Music Sessions, Vol. 53	2023-06-24 11:38:31.31	🪬
spotify:track:4nrPB8O7Y7wsOCJdgXkthe	4	Shakira: Bzrp Music Sessions, Vol. 53	2023-06-24 11:38:31.31	🧊
spotify:track:4nrPB8O7Y7wsOCJdgXkthe	4	Shakira: Bzrp Music Sessions, Vol. 53	2023-06-24 11:38:31.31	🦥
spotify:track:4v8jmsVox8VwU5js3JHOJZ	2	Gimme What I Want	2023-07-31 23:45:06.804	🦥
spotify:track:7K6H44x9AOkrt3PK6ig4w0	4	Last Summer	2023-06-24 11:38:31.31	🦥
spotify:track:3lFwSDBCNo3CcN09UppUnm	2	Hold Me Closer	2023-06-24 12:54:15.554	🦥
spotify:track:7xg41ENLdW3nyy2p5C28ZW	5	Fuck Up The Friendship	2023-06-24 11:38:31.309	🦥
spotify:track:67lbzVADsqJJ6tyVk0XCgn	2	Chain My Heart	2023-06-24 11:38:31.309	🎶
spotify:track:67lbzVADsqJJ6tyVk0XCgn	2	Chain My Heart	2023-06-24 11:38:31.309	😈
spotify:track:67lbzVADsqJJ6tyVk0XCgn	3	Chain My Heart	2023-06-24 11:38:31.309	🪬
spotify:track:67lbzVADsqJJ6tyVk0XCgn	10	Chain My Heart	2023-07-13 13:36:49.127	🦥
spotify:track:4wCmqSrbyCgxEXROQE6vtV	2	Somebody That I Used To Know	2023-09-08 17:58:04.568	🦥
spotify:track:4wCmqSrbyCgxEXROQE6vtV	1	Somebody That I Used To Know	2023-09-13 20:47:32.773	💿
spotify:track:1J9ekSUHGCaWKBdmeEWPJZ	11	I Don’t (with DVBBS)	2023-07-17 15:23:11.72	🦥
spotify:track:5YtM5WjclCystH2Xzct19Y	7	On A Roll - Basic Tape Remix	2023-06-24 11:38:31.309	🦥
spotify:track:3VBHBxTFt18h66k2R8jNTt	7	RAININ’ FELLAS	2023-06-24 11:38:31.31	🦥
spotify:track:0iBBOvVQ8QCK7F95boCn3C	3	CHARGER	2023-08-02 19:36:00.545	🦥
spotify:track:78T1d6RsHPY6gcWlurCK5q	1	Everybody Wants You - Shift K3Y Remix	2023-06-24 11:38:31.309	🎶
spotify:track:78T1d6RsHPY6gcWlurCK5q	1	Everybody Wants You - Shift K3Y Remix	2023-06-24 11:38:31.309	😈
spotify:track:78T1d6RsHPY6gcWlurCK5q	3	Everybody Wants You - Shift K3Y Remix	2023-06-24 11:38:31.309	🦥
spotify:track:1FxHNKoRql64kL15iccqz1	3	Kinda Funny (feat. Audrey Mika)	2023-06-24 11:38:31.31	🦥
spotify:track:6W9qtw3ddhkYznaOxB50p8	3	The Feeling	2023-07-07 23:10:23.522	🦥
spotify:track:4coLf2EV9vdf1062GDAA3b	1	All Or Nothing - VIP Mix	2023-08-03 11:48:13.29	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	3	You Only Love Me	2023-06-24 22:33:56.294	🦥
spotify:track:1qCHidBbWAgv3pn6UbZ4Lg	4	Don't Go Yet	2023-06-24 11:38:31.31	🦥
spotify:track:4acfgyVsfx2vVI7LysrBq6	1	Prosecco	2023-06-28 22:40:21.926	🦥
spotify:track:5knSvwiFenQOkDoriHi2Rg	1	Love Me Land	2023-07-31 17:13:33.819	🦥
spotify:track:5WokFKscrfGEGGLPTu3jgO	4	WOW (feat. Sabrina Carpenter) - Remix	2023-06-24 11:38:31.309	🦥
spotify:track:1vYXt7VSjH9JIM5oRRo7vA	3	Dance The Night (From Barbie The Album)	2023-07-26 15:37:52.983	🦥
spotify:track:1vYXt7VSjH9JIM5oRRo7vA	1	Dance The Night (From Barbie The Album)	2023-07-05 14:36:23.571	😈
spotify:track:43WYPxyEfIxlIjNlxQGYzc	5	Cry About It Later (feat. Luísa Sonza & Bruno Martini)	2023-07-07 22:55:08.827	🦥
spotify:track:1qX6EzEftYFq7MWL0ry3An	1	Feel Right Now (feat. Nonô)	2023-08-05 13:43:17.476	🦥
spotify:track:0MWiSBKm8Avs8iDIxcertp	4	Kiss My (Uh Oh)	2023-06-24 11:38:31.309	🦥
spotify:track:4O5ygqTjiXLWo9HASGsk8E	1	Lush Life - Retro Version	2023-06-24 11:38:31.31	🎶
spotify:track:4O5ygqTjiXLWo9HASGsk8E	1	Lush Life - Retro Version	2023-06-24 11:38:31.31	😈
spotify:track:4O5ygqTjiXLWo9HASGsk8E	3	Lush Life - Retro Version	2023-06-24 11:38:31.31	🦥
spotify:track:5fKTWlpV4hT7ujXV45WbtN	1	Sacrifice	2023-06-24 11:38:31.309	🎶
spotify:track:5fKTWlpV4hT7ujXV45WbtN	3	Sacrifice	2023-06-24 11:38:31.309	🦥
spotify:track:6FvSS3Goz7OC8oCC2eWqe8	4	Jalebi Baby (Tesher x Jason Derulo)	2023-06-24 11:38:31.309	🦥
spotify:track:13YIDpKrL2caqJ3YF52uzJ	2	Too Many Nights (with JC Stewart)	2023-06-24 11:38:31.31	🦥
spotify:track:5902W4uHWzhtOff1UK7the	1	When I’m Gone (with Katy Perry)	2023-06-24 11:38:31.31	🎶
spotify:track:5902W4uHWzhtOff1UK7the	2	When I’m Gone (with Katy Perry)	2023-06-24 11:38:31.31	🦥
spotify:track:1IIV8jglA0klVZy17q665k	1	Never Really Over	2023-06-24 11:38:31.309	🦥
spotify:track:4vOoQh9MhS9pyrbvc8LyMz	1	Can't Tame Her	2023-06-24 11:38:31.31	🦥
spotify:track:1VpKOZ6nnap41hh5CbY8gJ	1	Obsessed	2023-06-24 11:38:31.31	🦥
spotify:track:0WuWSx5j0pVNPRwVMKD6w5	2	Call It Love	2023-06-24 11:38:31.309	🦥
spotify:track:6feiJqgHqeSvkGUzf11AYs	1	Remember (with David Guetta)	2023-06-24 11:38:31.309	🦥
spotify:track:7jqXDgGWkV4w2ctdb2g59o	1	At Least I Had Fun	2023-06-24 11:38:31.309	🦥
spotify:track:5MyIR4vCwqxnB0biyFqcdw	1	L.O.V.(e).	2023-06-24 11:38:31.31	🦥
spotify:track:5kLpqpKCxvkIxB1VFEh9TL	1	Leave (Get Out)	2023-06-24 13:08:24.452	🦥
spotify:track:6cx06DFPPHchuUAcTxznu9	2	Head & Heart (feat. MNEK)	2023-06-24 11:38:31.31	🎶
spotify:track:6cx06DFPPHchuUAcTxznu9	1	Head & Heart (feat. MNEK)	2023-07-26 15:30:24.864	🦥
spotify:track:0YORgvqP1MotwCnDZzOwII	1	I Wish (feat. Mabel)	2023-06-24 11:38:31.31	🦥
spotify:track:3Q872ol7VFg088SkbxSuqO	2	Psycho (feat. Rubi Rose)	2023-06-24 11:38:31.309	🦥
spotify:track:0UzGVWTmURL3F3Y1wgzFtJ	1	No Regrets	2023-06-24 11:38:31.309	🦥
spotify:track:1AMTAztgMzh0nIqji9lNs3	1	Be the One (feat. MORGAN, Digga D & TIKE)	2023-06-24 11:38:31.309	🦥
spotify:track:59s3aMqR9uOzLIXAcgBCEm	1	Smile	2023-06-24 11:38:31.31	🦥
spotify:track:0YYftFKuZmU06epZRCYuYO	2	You for Me	2023-07-02 13:40:06.416	🦥
spotify:track:0V3wPSX9ygBnCm8psDIegu	1	Anti-Hero	2023-06-24 11:38:31.309	🎶
spotify:track:0V3wPSX9ygBnCm8psDIegu	1	Anti-Hero	2023-06-24 11:38:31.309	😈
spotify:track:0V3wPSX9ygBnCm8psDIegu	2	Anti-Hero	2023-06-24 11:38:31.309	🦥
spotify:track:76Tuo484SLohJakHLnGI3B	5	Sweet Melody	2023-06-24 11:38:31.31	🦥
spotify:track:0rciFhu7W79mmuy8acJvdc	3	Lovestruck	2023-07-05 21:24:34.323	🦥
spotify:track:0ONFGnOEErh2tL0HY39F3V	3	No	2023-06-24 11:38:31.31	🦥
spotify:track:4w7vZjpsnpKizj7NE0Nuld	1	THE END	2023-06-24 11:38:31.31	🦥
spotify:track:1diS6nkxMQc3wwC4G1j0bh	1	We're Good	2023-06-24 11:38:31.31	🦥
spotify:track:0I5pVidtNjNXeaqHnwhrva	1	Can't Come To The Phone	2023-07-03 15:44:36.937	🦥
spotify:track:6Asu7oyQxcmONn4HypXV7n	1	that way - Jonasu Remix	2023-07-17 15:22:20.426	🦥
spotify:track:5RVjB86R02f47lCZSPFOzj	3	Damn (You’ve Got Me Saying)	2023-08-09 22:26:00.042	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-08-03 11:18:55.925	🦥
spotify:track:3K00Ib1shkOEiAXU5pec6e	2	Back To You	2023-06-24 11:38:31.309	😈
spotify:track:3K00Ib1shkOEiAXU5pec6e	5	Back To You	2023-06-24 11:38:31.309	🪬
spotify:track:3K00Ib1shkOEiAXU5pec6e	7	Back To You	2023-06-24 11:38:31.309	🧊
spotify:track:3K00Ib1shkOEiAXU5pec6e	5	Back To You	2023-06-24 11:38:31.309	🦥
spotify:track:5qiQbOa6AFEO3P111y9Jry	5	Mad Love - Blinkie Remix	2023-06-24 11:38:31.309	🦥
spotify:track:2dy2C0StZ3yiEeb0Aoolcn	5	Bang Bang	2023-06-24 11:38:31.31	🦥
spotify:track:72zJrb5M7iv65yms7x6J7b	2	Satellite	2023-06-24 11:38:31.309	🦥
spotify:track:2grSOc6HNTXQQXNoRKt9UM	2	Good Ones	2023-06-24 11:38:31.31	🦥
spotify:track:5rW7qTn83sCKtqBoneJs63	2	edamame (feat. Rich Brian)	2023-08-29 21:18:36.431	🦥
spotify:track:5bnGB46pcptSasI2Go0MNz	1	Fine on My Own	2023-06-24 11:38:31.31	🦥
spotify:track:5zQ00D9j9MkQbsd9qmenBa	1	Confetti	2023-06-24 11:38:31.309	🎶
spotify:track:5zQ00D9j9MkQbsd9qmenBa	2	Confetti	2023-06-24 11:38:31.309	🦥
spotify:track:4oXV7uPMrMNSZfLMYtiqIX	1	Confetti (feat. Saweetie)	2023-06-24 11:38:31.309	🦥
spotify:track:53kWAAfx7IopXRa31MQHB8	1	Good Vibes	2023-06-24 11:38:31.309	🦥
spotify:track:7i7DaXk1g3da6G3421Gi3i	5	One Drink Away	2023-07-07 21:49:22.486	🦥
spotify:track:62xA7Zhj8CQSecypWIfpZx	2	Last Night (feat. HARLEE)	2023-06-27 21:49:14.577	🦥
spotify:track:2xfHakNuD25ma5CSfTXFw2	7	The One	2023-07-08 16:11:40.839	🦥
spotify:track:0siYMEsGrzzzlWLXK5zJfS	1	BED	2023-06-24 11:38:31.309	🦠
spotify:track:3eJH2nAjvNXdmPfBkALiPZ	1	Acapulco	2023-06-24 11:38:31.31	🎶
spotify:track:3eJH2nAjvNXdmPfBkALiPZ	1	Acapulco	2023-06-24 11:38:31.31	😈
spotify:track:3eJH2nAjvNXdmPfBkALiPZ	4	Acapulco	2023-06-24 11:38:31.31	🦥
spotify:track:6wzwvyZ4kVPoUYDYjgErWJ	1	Feels In My Body	2023-06-24 11:38:31.31	🦥
spotify:track:5iqfKcEGKhoeWTNqmZPiu3	1	Love Of Your Life	2023-07-05 13:55:13.963	🦥
spotify:track:1gfDK5vVyqja5EI6O3MJO9	1	Worst Thing	2023-06-24 21:30:47.348	🦥
spotify:track:567e29TDzLwZwfDuEpGTwo	1	STAY (with Justin Bieber)	2023-06-30 11:51:30.984	🦥
spotify:track:4nfyxpiejEPrUHLnejED7i	1	SAD B!TCH	2023-06-24 11:38:31.309	🦥
spotify:track:4qsrQnTtzIdmTOXFobkkE9	1	LOL	2023-06-24 11:38:31.309	🦥
spotify:track:2Oycxb8QbPkpHTo8ZrmG0B	3	Prisoner (feat. Dua Lipa)	2023-06-24 11:38:31.31	🎶
spotify:track:2Oycxb8QbPkpHTo8ZrmG0B	1	Prisoner (feat. Dua Lipa)	2023-06-24 11:38:31.31	😈
spotify:track:2Oycxb8QbPkpHTo8ZrmG0B	2	Prisoner (feat. Dua Lipa)	2023-06-24 11:38:31.31	🪬
spotify:track:2Oycxb8QbPkpHTo8ZrmG0B	1	Prisoner (feat. Dua Lipa)	2023-06-24 11:38:31.31	🦠
spotify:track:2dLv6YwZtcmoHKbeBHyAYH	1	iloveyou	2023-06-24 11:38:31.309	☔
spotify:track:2dLv6YwZtcmoHKbeBHyAYH	1	iloveyou	2023-06-24 11:38:31.309	🌌
spotify:track:2dLv6YwZtcmoHKbeBHyAYH	1	iloveyou	2023-09-06 12:51:42.089	🦥
spotify:track:1MDEvpaFk2Ins7N8hGfFlA	5	One Day	2023-07-20 19:54:05.792	🦥
spotify:track:6Yzh272O4hwZHjrnXYhL8a	2	Do It, Try It	2023-06-24 11:38:31.309	🧊
spotify:track:0xMd5bcWTbyXS7wPrBtZA6	1	Burn	2023-06-24 11:38:31.309	💿
spotify:track:3JA9Jsuxr4xgHXEawAdCp4	2	Just Can’t Get Enough	2023-06-24 11:38:31.309	💿
spotify:track:18asYwWugKjjsihZ0YvRxO	1	The Motto	2023-06-24 11:38:31.31	🎶
spotify:track:18asYwWugKjjsihZ0YvRxO	1	The Motto	2023-06-24 11:38:31.31	😈
spotify:track:18asYwWugKjjsihZ0YvRxO	1	The Motto	2023-06-24 11:38:31.31	🧊
spotify:track:7usVlcXSkQu4MBKI02oIJR	1	Nfl Main Theme	2023-06-24 11:38:31.31	🦀
spotify:track:1c8gk2PeTE04A1pIDH9YMk	2	Rolling in the Deep	2023-06-24 11:38:31.309	💿
spotify:track:0lYBSQXN6rCTvUZvg9S0lU	1	Let Me Love You	2023-06-24 11:38:31.309	🐺
spotify:track:53BHUFdQphHiZUUG3nx9zn	1	Bang!	2023-06-24 11:38:31.309	🦠
spotify:track:3GCdLUSnKSMJhs4Tj6CV3s	1	All The Stars (with SZA)	2023-06-24 11:38:31.309	🐺
spotify:track:4f3NHOxgC8Bg21IJBg4cZ3	1	Freaks - Radio Edit	2023-06-24 11:38:31.31	🧊
spotify:track:6KGUG14fRRWt5LhnTtozBO	1	Imposter Imperceptible (Among Us)	2023-06-24 11:38:31.309	🦀
spotify:track:5vTPxzm4h2bY9rYyVrGEU5	2	Really Don't Care	2023-06-24 11:38:31.309	🫧
spotify:track:1gv4xPanImH17bKZ9rOveR	6	Raise Your Glass	2023-06-24 11:38:31.309	💿
spotify:track:1sNctqVr9zdS7i1RZNjIgY	9	Crazy Kids	2023-06-24 11:38:31.31	💿
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	9	Somebody Told Me	2023-07-31 22:07:02.943	🔥
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	6	Somebody Told Me	2023-06-24 11:38:31.309	🧊
spotify:track:6f5ExP43esnvdKPddwKXJH	1	Better Days (NEIKED x Mae Muller x Polo G)	2023-06-24 11:38:31.309	🎶
spotify:track:6f5ExP43esnvdKPddwKXJH	2	Better Days (NEIKED x Mae Muller x Polo G)	2023-06-24 11:38:31.309	☔
spotify:track:6f5ExP43esnvdKPddwKXJH	1	Better Days (NEIKED x Mae Muller x Polo G)	2023-06-24 11:38:31.309	🦠
spotify:track:7ciLq0Cip0yxiz6KANrOUq	1	Toothbrush	2023-06-24 11:38:31.309	🫧
spotify:track:0HqZX76SFLDz2aW8aiqi7G	1	Bones	2023-06-24 11:38:31.309	🦠
spotify:track:6WrI0LAC5M1Rw2MnX2ZvEg	1	Don't Start Now	2023-06-24 11:38:31.309	🦠
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	2	Take It Off	2023-06-24 11:38:31.31	😈
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	4	Take It Off	2023-06-24 11:38:31.31	💿
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	1	Take It Off	2023-06-24 11:38:31.31	📼
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	2	Take It Off	2023-06-24 11:38:31.31	🫧
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	4	Take It Off	2023-06-24 11:38:31.31	🧊
spotify:track:5KawlOMHjWeUjQtnuRs22c	1	Boy With Luv (feat. Halsey)	2023-06-24 11:38:31.31	📢
spotify:track:45sDIKapDyxPl307QpEAwl	1	Rocketeer	2023-06-24 11:38:31.31	📼
spotify:track:6Eu31gddWw0gOGO506pJYA	1	Fearless	2023-06-24 11:38:31.309	📼
spotify:track:6Iocm6VMu6bVNYwiDoyQFW	1	Coming Home	2023-06-24 11:38:31.309	📼
spotify:track:2Fs18NaCDuluPG1DHGw1XG	1	Life is a Highway	2023-06-24 11:38:31.309	🦀
spotify:track:68Dni7IE4VyPkTOH9mRWHr	1	No Role Modelz	2023-06-24 11:38:31.309	🎶
spotify:track:0JiVRyTJcJnmlwCZ854K4p	1	Alone	2023-06-24 11:38:31.309	☔
spotify:track:0JiVRyTJcJnmlwCZ854K4p	1	Alone	2023-06-24 11:38:31.309	🦠
spotify:track:5vlEg2fT4cFWAqU5QptIpQ	1	Replay	2023-06-24 11:38:31.309	📼
spotify:track:6D60klaHqbCl9ySc8VcRss	24	Stronger (What Doesn't Kill You)	2023-06-24 11:38:31.31	💿
spotify:track:14EUcXXpqrC03Dzzdj8bGr	1	Orinoco Flow	2023-06-24 11:38:31.31	🦀
spotify:track:2tJulUYLDKOg9XrtVkMgcJ	1	Grenade	2023-06-24 11:38:31.309	📼
spotify:track:4VqPOruhp5EdPBeR92t6lQ	1	Uprising	2023-06-24 11:38:31.309	🔥
spotify:track:5s7m2xNZWgz5FqVSIvJcGA	1	Save a Horse (Ride a Cowboy)	2023-06-24 11:38:31.31	🤠
spotify:track:4E73mIgGehdEHxMuxEd7I9	1	Because the Night	2023-06-24 11:38:31.31	📼
spotify:track:3Dv1eDb0MEgF93GpLXlucZ	1	Say So	2023-06-24 11:38:31.309	🫧
spotify:track:6DCZcSspjsKoFjzjrWoCdn	1	God's Plan	2023-06-24 11:38:31.309	📢
spotify:track:2Z8WuEywRWYTKe1NybPQEW	1	Ride	2023-06-24 11:38:31.309	🦊
spotify:track:5uEYRdEIh9Bo4fpjDd4Na9	1	Goosebumps - Remix	2023-06-24 11:38:31.309	🎶
spotify:track:5uEYRdEIh9Bo4fpjDd4Na9	2	Goosebumps - Remix	2023-06-24 11:38:31.309	🧊
spotify:track:4Dvkj6JhhA12EX05fT7y2e	1	As It Was	2023-06-24 11:38:31.309	🦠
spotify:track:45S5WTQEGOB1VHr1Q4FuPl	1	Golden	2023-06-24 11:38:31.309	🦠
spotify:track:0QkWikH5Z3U0f79T9iuF6c	1	Judas	2023-06-24 11:38:31.309	💿
spotify:track:0QkWikH5Z3U0f79T9iuF6c	1	Judas	2023-06-24 11:38:31.309	📼
spotify:track:70cTMpcgWMcR18t9MRJFjB	3	I Gotta Feeling	2023-06-24 11:38:31.31	💿
spotify:track:6xqJ0XqDM9dVEW1jbm78wB	1	Discord	2023-06-24 11:38:31.309	🦀
spotify:track:1ti7FlOjQV7ZmgMjN1M4Oc	1	Walk Hard	2023-06-24 11:38:31.31	🦀
spotify:track:1vvNmPOiUuyCbgWmtc6yfm	1	My Way	2023-06-24 11:38:31.309	🥂
spotify:track:6RksBSj5fFtPkUnL2EE0oe	3	Darkness Settles In	2023-06-24 11:38:31.309	🧊
spotify:track:6RksBSj5fFtPkUnL2EE0oe	3	Darkness Settles In	2023-06-24 11:38:31.309	🦠
spotify:track:1YaVmBh7EAeR54FIjuFcb5	1	Naturally	2023-06-24 11:38:31.309	📼
spotify:track:0SuLAslEMFZAXf0SwY7syi	1	All Time Low	2023-06-24 11:38:31.309	🦠
spotify:track:0LQtEJt7x0s6knb6RKdRYc	1	Chicken Fried	2023-06-24 11:38:31.309	🤠
spotify:track:7HXBG0W8gFJwHUh5mVF9tf	3	Rise	2023-06-24 11:38:31.31	😈
spotify:track:7HXBG0W8gFJwHUh5mVF9tf	1	Rise	2023-06-24 11:38:31.31	🪬
spotify:track:7HXBG0W8gFJwHUh5mVF9tf	2	Rise	2023-06-24 11:38:31.31	🧊
spotify:track:6gRACp2CvsIhc7hyw8CecQ	1	The Devil Went Down to Georgia	2023-06-24 11:38:31.31	🤠
spotify:track:6RUKPb4LETWmmr3iAEQktW	1	Something Just Like This	2023-06-24 11:38:31.31	🦊
spotify:track:2LEF1A8DOZ9wRYikWgVlZ8	13	Good Feeling	2023-06-24 11:38:31.309	💿
spotify:track:1mCsF9Tw4AkIZOjvZbZZdT	1	Break My Stride	2023-06-24 11:38:31.309	📢
spotify:track:1BZG99C7Co1r6QUC3zaS59	1	Same Old Love	2023-06-24 11:38:31.31	🦊
spotify:track:1vrd6UOGamcKNGnSHJQlSt	1	Love Story	2023-06-24 11:38:31.309	📼
spotify:track:28cnXtME493VX9NOw9cIUh	1	Hurt	2023-06-24 11:38:31.31	☔
spotify:track:28cnXtME493VX9NOw9cIUh	1	Hurt	2023-06-24 11:38:31.31	🧊
spotify:track:4DHcnVTT87F0zZhRPYmZ3B	1	Flowers	2023-06-24 11:38:31.309	😈
spotify:track:0g9IUdSH5xawYmYFoSEU9B	1	I Like to Move It - Instrumental	2023-06-24 11:38:31.309	🦀
spotify:track:5KqldkCunQ2rWxruMEtGh0	1	The Gambler	2023-06-24 11:38:31.309	🤠
spotify:track:5KqldkCunQ2rWxruMEtGh0	1	The Gambler	2023-06-24 11:38:31.309	🦀
spotify:track:02dRkCEc8Q5ch4TTcnLxOn	1	Nothing Breaks Like a Heart (feat. Miley Cyrus)	2023-06-24 11:38:31.309	🎶
spotify:track:02dRkCEc8Q5ch4TTcnLxOn	1	Nothing Breaks Like a Heart (feat. Miley Cyrus)	2023-06-24 11:38:31.309	😈
spotify:track:5fnA9mkIfScSqHIpeDyvck	1	Prayer in C - Robin Schulz Radio Edit	2023-06-24 11:38:31.309	🪬
spotify:track:5CZ40GBx1sQ9agT82CLQCT	1	traitor	2023-06-24 11:38:31.31	☔
spotify:track:75FEaRjZTKLhTrFGsfMUXR	1	Running Up That Hill (A Deal With God)	2023-06-24 11:38:31.309	🎶
spotify:track:76vMKwFtdDDCLcM6zXybjB	1	Say Amen (Saturday Night)	2023-06-24 11:38:31.309	🧊
spotify:track:7BKLCZ1jbUBVqRi2FVlTVw	1	Closer	2023-06-24 11:38:31.309	🦊
spotify:track:3bidbhpOYeV4knp8AIu8Xn	1	Can't Hold Us (feat. Ray Dalton)	2023-06-24 11:38:31.31	🦊
spotify:track:15sLeziZGp1jxtYo6Zj4v5	2	Photoshop Your Memories	2023-06-24 11:38:31.309	🦀
spotify:track:4XvcHTUfIlWfyJTRG0aqlo	1	2055	2023-06-24 11:38:31.31	🦠
spotify:track:4W4fNrZYkobj539TOWsLO2	1	Die For You (with Ariana Grande) - Remix	2023-06-24 11:38:31.31	🎶
spotify:track:3egamOji0THEWgIOnAN2LX	2	THATS WHAT I WANT	2023-06-24 11:38:31.31	🎶
spotify:track:3egamOji0THEWgIOnAN2LX	1	THATS WHAT I WANT	2023-06-24 11:38:31.31	🧊
spotify:track:3egamOji0THEWgIOnAN2LX	1	THATS WHAT I WANT	2023-06-24 11:38:31.31	🦠
spotify:track:0aBKFfdyOD1Ttvgv0cfjjJ	1	More - RedOne Jimmy Joker Remix	2023-06-24 11:38:31.31	🔥
spotify:track:0aBKFfdyOD1Ttvgv0cfjjJ	7	More - RedOne Jimmy Joker Remix	2023-06-24 11:38:31.31	💿
spotify:track:0aBKFfdyOD1Ttvgv0cfjjJ	1	More - RedOne Jimmy Joker Remix	2023-06-24 11:38:31.31	🫧
spotify:track:4SSnFejRGlZikf02HLewEF	1	bury a friend	2023-06-24 11:38:31.309	🧊
spotify:track:27tNWlhdAryQY04Gb2ZhUI	1	Roar	2023-06-24 11:38:31.309	🫧
spotify:track:27tNWlhdAryQY04Gb2ZhUI	1	Roar	2023-06-24 11:38:31.309	🦊
spotify:track:5bgwqaRSS3M8WHWruHgSL5	1	8TEEN	2023-06-24 11:38:31.309	📢
spotify:track:6hmhG1b4LEyNuashVvuIAo	1	Never Forget You	2023-06-24 11:38:31.309	🐺
spotify:track:5OCJzvD7sykQEKHH7qAC3C	1	God is a woman	2023-06-24 11:38:31.309	📢
spotify:track:6sy3LkhNFjJWlaeSMNwQ62	1	Counting Stars	2023-06-24 11:38:31.309	🦊
spotify:track:3STTVKfJGTdhbg5aLppEzX	6	On The Floor	2023-06-24 11:38:31.309	💿
spotify:track:29FNeqjOV2kPWGS55qhtGB	1	Money, Money, Money	2023-06-24 11:38:31.309	🧊
spotify:track:4RvfChDpoaU1ZlTBjgj67Q	1	Boom Boom Boom Boom Boom Boom Boom Boom Boom Boom Boom Boom Boom	2023-06-24 11:38:31.309	🦀
spotify:track:2n3CaPGPLYnYAvTEwKCX8t	2	Mmm Yeah (feat. Pitbull)	2023-06-24 11:38:31.309	🥂
spotify:track:1Xq1fe5v8YF1wI7oXuCAAH	1	PPAP (Pen-Pineapple-Apple-Pen) - Long Version	2023-06-24 11:38:31.31	🦀
spotify:track:1KixkQVDUHggZMU9dUobgm	1	My Head & My Heart	2023-06-24 11:38:31.309	🎶
spotify:track:1KixkQVDUHggZMU9dUobgm	5	My Head & My Heart	2023-06-24 11:38:31.309	🧊
spotify:track:1KixkQVDUHggZMU9dUobgm	2	My Head & My Heart	2023-06-24 11:38:31.309	🦠
spotify:track:6M14BiCN00nOsba4JaYsHW	1	Ocean Man	2023-06-24 11:38:31.309	🦀
spotify:track:4nK5YrxbMGZstTLbvj6Gxw	2	Supalonely	2023-06-24 11:38:31.31	☔
spotify:track:0ZqveF2rEFlz2oqF2xrriP	5	The Riddle	2023-06-24 11:38:31.31	🧊
spotify:track:4qDHt2ClApBBzDAvhNGWFd	1	Crab Rave	2023-06-24 11:38:31.309	🦀
spotify:track:0PAcdVzhPO4gq1Iym9ESnK	2	Thinkin’ Bout Me	2023-06-24 11:38:31.309	🤠
spotify:track:0PAcdVzhPO4gq1Iym9ESnK	1	Thinkin’ Bout Me	2023-06-24 11:38:31.309	😈
spotify:track:5IC6hMJ8twaEYLF0gMknMb	2	Just Dance	2023-06-24 11:38:31.31	💿
spotify:track:5IC6hMJ8twaEYLF0gMknMb	1	Just Dance	2023-06-24 11:38:31.31	📼
spotify:track:5WQQIDU3HRaMyPkob8mpFb	5	Where Have You Been	2023-06-24 11:38:31.309	💿
spotify:track:1CkvWZme3pRgbzaxZnTl5X	2	Rolling in the Deep	2023-06-24 11:38:31.309	💿
spotify:track:5Z9KJZvQzH6PFmb8SNkxuk	1	INDUSTRY BABY (feat. Jack Harlow)	2023-06-24 11:38:31.309	🦠
spotify:track:3uUuGVFu1V7jTQL60S1r8z	3	Where Are You Now	2023-06-24 11:38:31.309	🎶
spotify:track:3uUuGVFu1V7jTQL60S1r8z	4	Where Are You Now	2023-06-24 11:38:31.309	😈
spotify:track:3uUuGVFu1V7jTQL60S1r8z	5	Where Are You Now	2023-06-24 11:38:31.309	🧊
spotify:track:3uUuGVFu1V7jTQL60S1r8z	1	Where Are You Now	2023-06-24 11:38:31.309	🦠
spotify:track:51QEyJI5M7uyd8DOh9tqQY	1	Buzzcut Season	2023-06-24 11:38:31.309	🎶
spotify:track:51QEyJI5M7uyd8DOh9tqQY	5	Buzzcut Season	2023-06-24 11:38:31.309	😈
spotify:track:51QEyJI5M7uyd8DOh9tqQY	1	Buzzcut Season	2023-06-24 11:38:31.309	🪬
spotify:track:51QEyJI5M7uyd8DOh9tqQY	2	Buzzcut Season	2023-06-24 11:38:31.309	🧊
spotify:track:4k6ktr10Hczmh55NY3LfJy	1	Holiday	2023-06-24 11:38:31.309	📼
spotify:track:3E9EC2h4ddtvCBKqUjxmha	2	A Year Without Rain	2023-06-24 11:38:31.31	🎶
spotify:track:3E9EC2h4ddtvCBKqUjxmha	1	A Year Without Rain	2023-06-24 11:38:31.31	😈
spotify:track:2RqtfcLB7iOZj0zYB8Auhu	1	Jealous	2023-06-24 11:38:31.31	🦊
spotify:track:1QNqrsNQ1JVLEwncov3lEY	1	True Love (feat. Lily Allen)	2023-06-24 11:38:31.309	📼
spotify:track:1Cj2vqUwlJVG27gJrun92y	1	The Sound of Silence	2023-06-24 11:38:31.309	🦀
spotify:track:1Cj2vqUwlJVG27gJrun92y	1	The Sound of Silence	2023-06-24 11:38:31.309	🧊
spotify:track:6b3b7lILUJqXcp6w9wNQSm	1	Cheap Thrills (feat. Sean Paul)	2023-06-24 11:38:31.309	🐺
spotify:track:6b3b7lILUJqXcp6w9wNQSm	1	Cheap Thrills (feat. Sean Paul)	2023-06-24 11:38:31.309	📢
spotify:track:5jiYx70OBzEI99jx1Gn3FN	1	Sober Up (feat. Rivers Cuomo)	2023-06-24 11:38:31.309	📢
spotify:track:63T7DJ1AFDD6Bn8VzG6JE8	1	Paint It, Black	2023-06-24 11:38:31.31	🧊
spotify:track:02MWAaffLxlfxAUY7c5dvx	1	Heat Waves	2023-06-24 11:38:31.31	🎶
spotify:track:2Y0wPrPQBrGhoLn14xRYCG	1	Come & Go (with Marshmello)	2023-06-24 11:38:31.309	🦠
spotify:track:0DhnpIeCaMp85Jyc39sUBy	1	Gravity Falls Main Title Theme (from "Gravity Falls")	2023-06-24 11:38:31.309	🦀
spotify:track:7Jy6eGCwj4qafmn1gPnocQ	1	The Perfect Bathroom Trip	2023-06-24 11:38:31.31	🦀
spotify:track:4k80K0b6KZ2QjAYkXON7q6	5	Blow Me (One Last Kiss)	2023-06-24 11:38:31.309	💿
spotify:track:7EQGXaVSyEDsCWKmUcfpLk	6	Die Young	2023-06-24 11:38:31.31	💿
spotify:track:4DHcnVTT87F0zZhRPYmZ3B	1	Flowers	2023-06-24 11:38:31.309	🎶
spotify:track:78Sw5GDo6AlGwTwanjXbGh	1	Here With Me	2023-06-24 11:38:31.309	🌌
spotify:track:2zFF6jG5hQArbzcXz3KUWk	1	Cool for the Summer	2023-06-24 11:38:31.31	🐺
spotify:track:7j4sUNVVbPZ6mV4YwP9Yuu	1	Øde Ø	2023-06-24 11:38:31.31	🥂
spotify:track:4fINc8dnfcz7AdhFYVA4i7	1	It Girl	2023-06-24 11:38:31.31	📼
spotify:track:5odlY52u43F5BjByhxg7wg	1	golden hour	2023-06-24 11:38:31.309	🌌
spotify:track:6nfqlFOMiWthaOEa53uU0v	1	Fallin’ (Adrenaline)	2023-06-24 11:38:31.309	🔥
spotify:track:6nfqlFOMiWthaOEa53uU0v	3	Fallin’ (Adrenaline)	2023-06-24 11:38:31.309	😈
spotify:track:6nfqlFOMiWthaOEa53uU0v	4	Fallin’ (Adrenaline)	2023-06-24 11:38:31.309	🧊
spotify:track:3DZ8dbKg4OTSSqGARvecYd	1	Broadway Girls (feat. Morgan Wallen)	2023-06-24 11:38:31.309	🦠
spotify:track:4xkOaSrkexMciUUogZKVTS	3	Till I Collapse	2023-06-24 11:38:31.309	🪬
spotify:track:4xkOaSrkexMciUUogZKVTS	3	Till I Collapse	2023-06-24 11:38:31.309	🧊
spotify:track:5K6Ssv4Z3zRvxt0P6EKUAP	1	Heartbreak Anthem (with David Guetta & Little Mix)	2023-06-24 11:38:31.31	🎶
spotify:track:4kV4N9D1iKVxx1KLvtTpjS	1	break up with your girlfriend, i'm bored	2023-06-24 11:38:31.31	📢
spotify:track:48RrDBpOSSl1aLVCalGl5C	10	The Monster	2023-06-24 11:38:31.309	💿
spotify:track:2L52NkXrarZ4kxCCQ5B3r4	1	Nightshade	2023-06-24 11:38:31.31	☔
spotify:track:2L52NkXrarZ4kxCCQ5B3r4	2	Nightshade	2023-06-24 11:38:31.31	🌌
spotify:track:7k2t5SM7IsgEtKtRK8V2sm	2	Rockstar Sea Shanty	2023-06-24 11:38:31.309	🦀
spotify:track:7k2t5SM7IsgEtKtRK8V2sm	1	Rockstar Sea Shanty	2023-06-24 11:38:31.309	🧊
spotify:track:3QSVzVODWkWzGeDOGHZW0F	1	Adrenaline	2023-06-24 11:38:31.309	🦠
spotify:track:2MvvoeRt8NcOXWESkxWn3g	1	Ribs	2023-06-24 11:38:31.309	🎶
spotify:track:2MvvoeRt8NcOXWESkxWn3g	1	Ribs	2023-06-24 11:38:31.309	😈
spotify:track:2MvvoeRt8NcOXWESkxWn3g	1	Ribs	2023-06-24 11:38:31.309	🦊
spotify:track:21jGcNKet2qwijlDFuPiPb	1	Circles	2023-06-24 11:38:31.309	🦠
spotify:track:023OVLNzXhX0j7CxswUt6D	1	Cheerleader - Felix Jaehn Remix Radio Edit	2023-06-24 11:38:31.309	🦊
spotify:track:6od5hFv9IT5JHc7NEF9HRv	1	Victorious	2023-06-24 11:38:31.309	🔥
spotify:track:6od5hFv9IT5JHc7NEF9HRv	1	Victorious	2023-06-24 11:38:31.309	🫧
spotify:track:6od5hFv9IT5JHc7NEF9HRv	1	Victorious	2023-06-24 11:38:31.309	🧊
spotify:track:1rqqCSm0Qe4I9rUvWncaom	1	High Hopes	2023-06-24 11:38:31.309	🔥
spotify:track:5QDLhrAOJJdNAmCTJ8xMyW	1	Dynamite	2023-06-24 11:38:31.309	🦠
spotify:track:3GpbwCm3YxiWDvy29Uo3vP	8	Right Round	2023-06-24 11:38:31.309	💿
spotify:track:3GpbwCm3YxiWDvy29Uo3vP	2	Right Round	2023-06-24 11:38:31.309	🫧
spotify:track:5BuRl7JutFtGZz3jtsYiO5	1	(Have You Heard The News) Dewey Cox Died	2023-06-24 11:38:31.309	🦀
spotify:track:5xEM5hIgJ1jjgcEBfpkt2F	1	Complicated	2023-06-24 11:38:31.309	📼
spotify:track:6QFCMUUq1T2Vf5sFUXcuQ7	1	Beauty And A Beat	2023-06-24 11:38:31.309	📼
spotify:track:1Y5Jvi3eLi4Chwqch9GMem	1	Super Gremlin	2023-06-24 11:38:31.31	🎶
spotify:track:0qwcGscxUHGZTgq0zcaqk1	4	Here's to Never Growing Up	2023-06-24 11:38:31.309	💿
spotify:track:07nH4ifBxUB4lZcsf44Brn	1	Blame (feat. John Newman)	2023-06-24 11:38:31.31	🦊
spotify:track:5Sf3GyLEAzJXxZ5mbCPXTu	1	Waves - Robin Schulz Radio Edit	2023-06-24 11:38:31.309	🎶
spotify:track:27ycaQnQAxaPiyeg3nr2aB	2	Midnight Sky	2023-06-24 11:38:31.309	🎶
spotify:track:27ycaQnQAxaPiyeg3nr2aB	3	Midnight Sky	2023-06-24 11:38:31.309	☔
spotify:track:27ycaQnQAxaPiyeg3nr2aB	1	Midnight Sky	2023-06-24 11:38:31.309	🪬
spotify:track:7phmBo7bB9I9YifAXqnlqV	1	I Wrote The Book	2023-06-24 11:38:31.309	🤠
spotify:track:7phmBo7bB9I9YifAXqnlqV	1	I Wrote The Book	2023-06-24 11:38:31.309	😈
spotify:track:25KybV9BOUlvcnv7nN3Pyo	1	In The Night	2023-06-24 11:38:31.309	🐺
spotify:track:7EvKZAZ5Jnl8TxSuFrkEEZ	1	Cara Mia Addio	2023-06-24 11:38:31.309	🦀
spotify:track:6BaxqcoEM9r3LXisTyJjST	1	Ridin' Solo	2023-06-24 11:38:31.31	📼
spotify:track:45O0tUN9Bh6LH4eNxQ07AT	1	Eenie Meenie	2023-06-24 11:38:31.31	📼
spotify:track:3WdBXPv7WUY9fZ6YyTpX6M	1	Echoes in Rain	2023-06-24 11:38:31.309	☔
spotify:track:3WdBXPv7WUY9fZ6YyTpX6M	1	Echoes in Rain	2023-06-24 11:38:31.309	😈
spotify:track:3WdBXPv7WUY9fZ6YyTpX6M	1	Echoes in Rain	2023-06-24 11:38:31.309	🌌
spotify:track:1kPpge9JDLpcj15qgrPbYX	3	Good Time	2023-06-24 11:38:31.309	💿
spotify:track:1kPpge9JDLpcj15qgrPbYX	1	Good Time	2023-06-24 11:38:31.309	📼
spotify:track:1p80LdxRV74UKvL8gnD7ky	1	Blank Space	2023-06-24 11:38:31.309	🦊
spotify:track:3VygfAvvgVaJUeaBUSzlZu	1	Karma	2023-06-24 11:38:31.31	☔
spotify:track:6RKGBcDtgzXx21zUjpeu6F	1	Cold Cold Man	2023-06-24 11:38:31.309	🦠
spotify:track:5QO79kh1waicV47BqGRL3g	3	Save Your Tears	2023-06-24 11:38:31.31	☔
spotify:track:3RLC8jJmDOZwrJ5izaISXr	3	Blackout	2023-06-24 11:38:31.31	🧊
spotify:track:6E7jAJN2e3znSHyPCdQqx8	1	gogobebe	2023-06-24 11:38:31.309	📢
spotify:track:1zwMYTA5nlNjZxYrvBB2pV	3	Someone Like You	2023-06-24 11:38:31.309	📼
spotify:track:0BI0hfbmqybnd3TezrDME3	1	Met Him Last Night (feat. Ariana Grande)	2023-06-24 11:38:31.31	☔
spotify:track:6FLwmdmW77N1Pxb1aWsZmO	1	Only Time	2023-06-24 11:38:31.309	☔
spotify:track:6FLwmdmW77N1Pxb1aWsZmO	1	Only Time	2023-06-24 11:38:31.309	🦀
spotify:track:6QpqGSRmUnH81iYd1bfYL9	1	Either	2023-06-24 11:38:31.309	📢
spotify:track:0zNdw7vzK7nVtMlNkjVRfb	1	Sweet Victory (As Heard on "SpongeBob SquarePants")	2023-06-24 11:38:31.309	🦀
spotify:track:0Ta3jOf8m9yCSWMVwd8Qlf	1	International Harvester	2023-06-24 11:38:31.309	🤠
spotify:track:1IaYWv32nFFMdljBIjMY5T	5	Telephone	2023-06-24 11:38:31.309	💿
spotify:track:1IaYWv32nFFMdljBIjMY5T	1	Telephone	2023-06-24 11:38:31.309	🫧
spotify:track:22mek4IiqubGD9ctzxc69s	1	How Deep Is Your Love	2023-06-24 11:38:31.309	🎶
spotify:track:22mek4IiqubGD9ctzxc69s	1	How Deep Is Your Love	2023-06-24 11:38:31.309	🦊
spotify:track:6PQ88X9TkUIAUIZJHW2upE	1	Bad Habits	2023-06-24 11:38:31.309	🦠
spotify:track:45Ye91SaPA3Wk8oZ4F1gCQ	1	i drive me mad	2023-06-24 11:38:31.309	☔
spotify:track:5xhQChGGhKLWqBqX4XhtYE	2	Sail	2023-06-24 11:38:31.309	🦀
spotify:track:1NHsYfWMlDzCJEOOM3bIFY	1	Want You Gone	2023-06-24 11:38:31.309	🦀
spotify:track:623rRTKwGmgjH6sjE9uWLh	1	Scatman (ski-ba-bop-ba-dop-bop)	2023-06-24 11:38:31.309	🦀
spotify:track:07KYRDFf8Q6sqj4PWCP9vh	1	It's Five O'Clock Somewhere (with Jimmy Buffett)	2023-06-24 11:38:31.309	🤠
spotify:track:1Td7TGT1XtK2ojUjz1mGUV	1	Animals	2023-06-24 11:38:31.309	🦠
spotify:track:6I9VzXrHxO9rA9A5euc8Ak	1	Toxic	2023-06-24 11:38:31.309	🫧
spotify:track:1aVfE2hBr4qmh6PsLRl46F	1	Too Old To Die Young	2023-06-24 11:38:31.31	🔥
spotify:track:1mKXFLRA179hdOWQBwUk9e	1	Just Give Me a Reason (feat. Nate Ruess)	2023-06-24 11:38:31.309	💿
spotify:track:0HnaqUxvHP5LaWdmWwJpiS	1	Love Somebody	2023-06-24 11:38:31.309	💿
spotify:track:2G8IHtLBcgu2GXTwq0iB4Y	6	You're Gonna Go Far, Kid	2023-06-24 11:38:31.309	🔥
spotify:track:2G8IHtLBcgu2GXTwq0iB4Y	1	You're Gonna Go Far, Kid	2023-06-24 11:38:31.309	😈
spotify:track:2ekn2ttSfGqwhhate0LSR0	2	New Rules	2023-09-13 11:37:24.185	📢
spotify:track:7E2DqvnVtbIrFrL5X6YH9Q	2	Beer For My Horses	2023-06-24 11:38:31.309	🤠
spotify:track:7E2DqvnVtbIrFrL5X6YH9Q	1	Beer For My Horses	2023-06-24 11:38:31.309	📼
spotify:track:7FmN3Ow4yPMMmIB1jGamja	1	Girl Next Door	2023-06-24 11:38:31.309	🦀
spotify:track:1wcr8DjnN59Awev8nnKpQ4	7	Drunk-Dazed	2023-06-24 11:38:31.309	🔥
spotify:track:1wcr8DjnN59Awev8nnKpQ4	2	Drunk-Dazed	2023-06-24 11:38:31.309	😈
spotify:track:1wcr8DjnN59Awev8nnKpQ4	3	Drunk-Dazed	2023-06-24 11:38:31.309	🧊
spotify:track:6q93GJWPotW7ssUNGhz6Oj	1	Rub Some Bacon on It	2023-06-24 11:38:31.309	🦀
spotify:track:5xTtaWoae3wi06K5WfVUUH	1	Shake It Off	2023-06-24 11:38:31.309	🫧
spotify:track:5xTtaWoae3wi06K5WfVUUH	1	Shake It Off	2023-06-24 11:38:31.309	🦊
spotify:track:2bJvI42r8EF3wxjOuDav4r	1	Time of Our Lives	2023-06-24 11:38:31.309	🥂
spotify:track:2bJvI42r8EF3wxjOuDav4r	1	Time of Our Lives	2023-06-24 11:38:31.309	🫧
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	1	Pink Soldiers	2023-06-24 11:38:31.31	🎶
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	3	Pink Soldiers	2023-06-24 11:38:31.31	😈
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	3	Pink Soldiers	2023-06-24 11:38:31.31	🪬
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	1	Pink Soldiers	2023-06-24 11:38:31.31	🦀
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	2	Pink Soldiers	2023-06-24 11:38:31.31	🧊
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	1	Pink Soldiers	2023-06-24 11:38:31.31	🌌
spotify:track:24ATpf896KofEEDCd13myS	1	Take Over Control	2023-06-24 11:38:31.309	😈
spotify:track:24ATpf896KofEEDCd13myS	1	Take Over Control	2023-06-24 11:38:31.309	🧊
spotify:track:3VZQshi4COChhXaz7cLP02	9	I Love It (feat. Charli XCX)	2023-06-24 11:38:31.309	💿
spotify:track:0Bo5fjMtTfCD8vHGebivqc	1	Axel F	2023-06-24 11:38:31.309	🦀
spotify:track:4rvFyA7h88s8DehCOjqW9K	1	Rockefeller Street	2023-06-24 11:38:31.309	🦀
spotify:track:7jwDuO7UZvWs77KNj9HbvF	3	The Phoenix	2023-06-24 11:38:31.309	🔥
spotify:track:1fidCEsYlaVE3pHwKCvpFZ	3	Am I Wrong	2023-06-24 11:38:31.309	🦊
spotify:track:0fYVliAYKHuPmECRs1pbRf	1	Renegades	2023-06-24 11:38:31.309	🦊
spotify:track:6nhvIZeu7g6OsDCLj1DKLl	1	Tell Me Something I Don't Know	2023-06-24 11:38:31.309	💿
spotify:track:6nhvIZeu7g6OsDCLj1DKLl	1	Tell Me Something I Don't Know	2023-06-24 11:38:31.309	📼
spotify:track:5XMkENs3GfeRza8MfVAhjK	1	Finesse	2023-06-24 11:38:31.309	🦊
spotify:track:6r2BECwMgEoRb5yLfp0Hca	2	Born This Way	2023-06-24 11:38:31.309	📼
spotify:track:16Azhyv8164hYxI8Ax3F5k	1	Blur	2023-06-24 11:38:31.31	😈
spotify:track:6Qyc6fS4DsZjB2mRW9DsQs	1	Iris	2023-06-24 11:38:31.309	📼
spotify:track:3hWfKBt3n7j1xqIy6LA5ve	1	Astronomia	2023-06-24 11:38:31.309	🦀
spotify:track:03UrZgTINDqvnUMbbIMhql	1	Gangnam Style (강남스타일)	2023-06-24 11:38:31.31	🦀
spotify:track:03UrZgTINDqvnUMbbIMhql	1	Gangnam Style (강남스타일)	2023-06-24 11:38:31.31	🦊
spotify:track:3nEenyWngzWgqMmOLWRm7C	1	I'm on Vacation	2023-06-24 11:38:31.309	🦀
spotify:track:3nEenyWngzWgqMmOLWRm7C	1	I'm on Vacation	2023-06-24 11:38:31.309	🦊
spotify:track:3eBnEo9WL34ulBCZlLpUQO	1	Chicken Fried	2023-06-24 11:38:31.309	🤠
spotify:track:6C7RJEIUDqKkJRZVWdkfkH	2	Stronger	2023-06-24 11:38:31.309	🪬
spotify:track:6C7RJEIUDqKkJRZVWdkfkH	1	Stronger	2023-06-24 11:38:31.309	🧊
spotify:track:01TuObJVd7owWchVRuQbQw	3	#thatPOWER	2023-06-24 11:38:31.31	💿
spotify:track:0wp6ckRomrGJq2fD2CFOQE	1	Bad Girl - JVKE Remix	2023-06-24 11:38:31.309	🎶
spotify:track:0wp6ckRomrGJq2fD2CFOQE	1	Bad Girl - JVKE Remix	2023-06-24 11:38:31.309	🦠
spotify:track:79Mjfhh393dZdAsTvUFDR6	1	Don't Go Breaking My Heart	2023-06-24 11:38:31.31	📢
spotify:track:6BtmXhTJMM9sBTHeYYASGz	1	It's Time	2023-06-24 11:38:31.309	🦊
spotify:track:3tjFYV6RSFtuktYl3ZtYcq	1	Mood (feat. iann dior)	2023-06-24 11:38:31.31	🎶
spotify:track:3cHyrEgdyYRjgJKSOiOtcS	1	Timber (feat. Ke$ha)	2023-06-24 11:38:31.309	💿
spotify:track:3cHyrEgdyYRjgJKSOiOtcS	1	Timber (feat. Ke$ha)	2023-06-24 11:38:31.309	🫧
spotify:track:3cHyrEgdyYRjgJKSOiOtcS	1	Timber (feat. Ke$ha)	2023-06-24 11:38:31.309	🦊
spotify:track:4uDhts78RdwIDjEqPrYVKp	6	Sweet Dreams	2023-06-24 11:38:31.309	🎶
spotify:track:4uDhts78RdwIDjEqPrYVKp	4	Sweet Dreams	2023-06-24 11:38:31.309	😈
spotify:track:4uDhts78RdwIDjEqPrYVKp	9	Sweet Dreams	2023-06-24 11:38:31.309	🪬
spotify:track:4uDhts78RdwIDjEqPrYVKp	3	Sweet Dreams	2023-06-24 11:38:31.309	🧊
spotify:track:6ebkx7Q5tTxrCxKq4GYj0Y	5	Club Can't Handle Me (feat. David Guetta)	2023-06-24 11:38:31.309	💿
spotify:track:12KUFSHFgT0XCoiSlvdQi4	1	Break Free	2023-06-24 11:38:31.31	🦊
spotify:track:5S9Zs5g9lTWnLIboN1pdlU	1	Fingers Crossed	2023-06-24 11:38:31.309	🦠
spotify:track:4i2qxFEVVUi8yOYoxB8TCX	1	Midnight Sky	2023-06-24 11:38:31.309	😈
spotify:track:4vLRCGOBz4zIS8nEHk5v9j	1	I Feel Good	2023-06-24 11:38:31.309	🥂
spotify:track:2dLLR6qlu5UJ5gk0dKz0h3	1	Royals	2023-06-24 11:38:31.309	🦊
spotify:track:2Lhdl74nwwVGOE2Gv35QuK	1	Cupid's Chokehold / Breakfast in America	2023-06-24 11:38:31.309	📼
spotify:track:76EVeVC8cRdqbAKFuj3jv5	1	Stone	2023-06-24 11:38:31.31	🔥
spotify:track:7s0lDK7y3XLmI7tcsRAbW0	1	My Songs Know What You Did In The Dark (Light Em Up)	2023-06-24 11:38:31.309	🔥
spotify:track:4k6Uh1HXdhtusDW5y8Gbvy	1	Bad Habit	2023-06-24 11:38:31.309	🎶
spotify:track:4k6Uh1HXdhtusDW5y8Gbvy	1	Bad Habit	2023-06-24 11:38:31.309	😈
spotify:track:4k6Uh1HXdhtusDW5y8Gbvy	1	Bad Habit	2023-06-24 11:38:31.309	🦠
spotify:track:6Z8R6UsFuGXGtiIxiD8ISb	1	Safe And Sound	2023-06-24 11:38:31.31	🦊
spotify:track:0RUGuh2uSNFJpGMSsD1F5C	2	It Will Rain	2023-06-24 11:38:31.309	💿
spotify:track:0RUGuh2uSNFJpGMSsD1F5C	1	It Will Rain	2023-06-24 11:38:31.309	📼
spotify:track:514rhnksEwHUh6LxXsQ4Y9	1	Back To You	2023-06-24 11:38:31.309	📢
spotify:track:2374M0fQpWi3dLnB54qaLX	1	Africa	2023-06-24 11:38:31.31	🦀
spotify:track:4bPQs0PHn4xbipzdPfn6du	1	I Write Sins Not Tragedies	2023-06-24 11:38:31.309	📼
spotify:track:2ZAx6NDhX2yE5aL5ueEQgY	4	Mr. Saxobeat	2023-06-24 11:38:31.309	💿
spotify:track:2ZAx6NDhX2yE5aL5ueEQgY	1	Mr. Saxobeat	2023-06-24 11:38:31.309	📼
spotify:track:0BsbPzgtF3Ljzgtp5WmvwO	1	I Will Always Love You	2023-06-24 11:38:31.31	🦀
spotify:track:0OC6kRjvDZIEG7fMcEVBpb	1	It's My Belly Button	2023-06-24 11:38:31.309	🦀
spotify:track:2YVlDlk2zRceefo6XlC6DX	1	Ain’t That Some	2023-06-24 11:38:31.31	🤠
spotify:track:0TvQLMecTE8utzoNmvXRbK	1	Bad Blood	2023-06-24 11:38:31.309	🦊
spotify:track:0b18g3G5spr4ZCkz7Y6Q0Q	2	Rasputin	2023-06-24 11:38:31.309	🎶
spotify:track:0b18g3G5spr4ZCkz7Y6Q0Q	1	Rasputin	2023-06-24 11:38:31.309	😈
spotify:track:0b18g3G5spr4ZCkz7Y6Q0Q	1	Rasputin	2023-06-24 11:38:31.309	🦀
spotify:track:0b18g3G5spr4ZCkz7Y6Q0Q	7	Rasputin	2023-06-24 11:38:31.309	🧊
spotify:track:6X5OFBbrsHRsyO1zP7udgr	1	Man's Not Hot	2023-06-24 11:38:31.309	🦀
spotify:track:1FpVJ7HpZInE2GvhVE2TwT	2	Legends Never Die	2023-06-24 11:38:31.309	🧊
spotify:track:3MGJF1CDFGfjXESL2Heva0	1	F**kin' Perfect	2023-06-24 11:38:31.309	📼
spotify:track:1CS7Sd1u5tWkstBhpssyjP	1	Take Me to Church	2023-06-24 11:38:31.31	🦊
spotify:track:1CS7Sd1u5tWkstBhpssyjP	1	Take Me to Church	2023-06-24 11:38:31.31	🧊
spotify:track:67BtfxlNbhBmCDR2L2l8qd	1	MONTERO (Call Me By Your Name)	2023-06-24 11:38:31.309	🎶
spotify:track:6yARPLK0PV4heEyh7pVMGz	2	Part Of Me	2023-06-24 11:38:31.309	💿
spotify:track:6yARPLK0PV4heEyh7pVMGz	1	Part Of Me	2023-06-24 11:38:31.309	📼
spotify:track:7AF443JHBPis4GoNQHvAEr	1	Phatdippin'	2023-06-24 11:38:31.309	🦀
spotify:track:6KOEK6SeCEZOQkLj5M1PxH	1	California Gurls	2023-06-24 11:38:31.31	📼
spotify:track:6KOEK6SeCEZOQkLj5M1PxH	1	California Gurls	2023-06-24 11:38:31.31	🫧
spotify:track:7w87IxuO7BDcJ3YUqCyMTT	1	Pumped Up Kicks	2023-06-24 11:38:31.309	💿
spotify:track:7w87IxuO7BDcJ3YUqCyMTT	1	Pumped Up Kicks	2023-06-24 11:38:31.309	📼
spotify:track:6WiGRFQfx2qw49MA7OeDYK	1	Purple Hat	2023-06-24 11:38:31.31	🦀
spotify:track:1iOHLlEsMbgJfYBFWy4TjG	1	Oh Yeah - Remastered 2005	2023-06-24 11:38:31.309	🦀
spotify:track:3IcIIZMMS7UArJJPtEHXG8	1	Obsessed	2023-06-24 11:38:31.309	🫧
spotify:track:2goLsvvODILDzeeiT4dAoR	1	Believe	2023-06-24 11:38:31.31	🦀
spotify:track:3O9nQmCkiA2VUAqQpkJZhD	1	Jack Sparrow	2023-06-24 11:38:31.31	🦀
spotify:track:7tNTW9aoi0qVC1z2qPJmQG	1	Macarena	2023-06-24 11:38:31.309	🦀
spotify:track:0JiY190vktuhSGN6aqJdrt	4	So What	2023-06-24 11:38:31.309	💿
spotify:track:0JiY190vktuhSGN6aqJdrt	1	So What	2023-06-24 11:38:31.309	📼
spotify:track:69uxyAqqPIsUyTO8txoP2M	1	Adventure of a Lifetime	2023-06-24 11:38:31.309	📢
spotify:track:4MKzCHlZvkwJOQRNkdw4zq	8	Sexy Chick (feat. Akon)	2023-06-24 11:38:31.309	💿
spotify:track:4MKzCHlZvkwJOQRNkdw4zq	2	Sexy Chick (feat. Akon)	2023-06-24 11:38:31.309	🫧
spotify:track:4MKzCHlZvkwJOQRNkdw4zq	1	Sexy Chick (feat. Akon)	2023-09-06 13:58:56.752	🎶
spotify:track:3JTjLyrnevl9ASw3ayGO2P	2	GUY.exe	2023-06-24 11:38:31.309	🎶
spotify:track:3JTjLyrnevl9ASw3ayGO2P	1	GUY.exe	2023-06-24 11:38:31.309	😈
spotify:track:0sf12qNH5qcw8qpgymFOqD	1	Blinding Lights	2023-06-24 11:38:31.309	🪬
spotify:track:0sf12qNH5qcw8qpgymFOqD	3	Blinding Lights	2023-06-24 11:38:31.309	🧊
spotify:track:0sf12qNH5qcw8qpgymFOqD	1	Blinding Lights	2023-06-24 11:38:31.309	🦠
spotify:track:2BtwxoS7em1pSInny4Ff7y	1	Space Junk	2023-06-24 11:38:31.309	🦀
spotify:track:5oHHMDcVOmPSFrCgdbHPdb	1	It's Five O'Clock Somewhere (with Jimmy Buffett)	2023-06-24 11:38:31.309	🤠
spotify:track:76N7FdzCI9OsiUnzJVLY2m	2	Rumour Has It	2023-06-24 11:38:31.309	💿
spotify:track:5JEyMbmqdPeD7FlyLv3fGp	17	Clarity	2023-06-24 11:38:31.309	💿
spotify:track:0yLdNVWF3Srea0uzk55zFn	2	Flowers	2023-06-24 11:38:31.309	🎶
spotify:track:0yLdNVWF3Srea0uzk55zFn	1	Flowers	2023-06-24 11:38:31.309	😈
spotify:track:0tr0D36L1RwPdUTFfyNq37	2	Tonight Is the Night	2023-06-24 11:38:31.309	💿
spotify:track:0tr0D36L1RwPdUTFfyNq37	1	Tonight Is the Night	2023-06-24 11:38:31.309	🫧
spotify:track:7l94dyN2hX9c6wWcZQuOGJ	1	Dangerous Woman	2023-06-24 11:38:31.309	📢
spotify:track:2Esf7NTKQNCPE4G17QvVCs	2	Toes	2023-06-24 11:38:31.31	🤠
spotify:track:5lEsM6qpuzuZwij6jIZPvP	1	Big Time Rush	2023-06-24 11:38:31.309	🦀
spotify:track:6V1bu6o1Yo5ZXnsCJU8Ovk	1	Girls Like You (feat. Cardi B) - Cardi B Version	2023-06-24 11:38:31.309	📢
spotify:track:752n2yiIZZdxNAMTXmrObn	2	EveryTime I Cry - R3HAB Remix	2023-06-24 11:38:31.309	🎶
spotify:track:4cS2HQ6jK80vqdY9ofpztx	4	She Wolf	2023-06-24 11:38:31.31	🎶
spotify:track:4cS2HQ6jK80vqdY9ofpztx	2	She Wolf	2023-06-24 11:38:31.31	😈
spotify:track:4cS2HQ6jK80vqdY9ofpztx	1	She Wolf	2023-06-24 11:38:31.31	🪬
spotify:track:4cS2HQ6jK80vqdY9ofpztx	1	She Wolf	2023-06-24 11:38:31.31	📼
spotify:track:4cS2HQ6jK80vqdY9ofpztx	1	She Wolf	2023-06-24 11:38:31.31	🫧
spotify:track:4cS2HQ6jK80vqdY9ofpztx	1	She Wolf	2023-06-24 11:38:31.31	🧊
spotify:track:2qT1uLXPVPzGgFOx4jtEuo	1	no tears left to cry	2023-06-24 11:38:31.31	🦊
spotify:track:3FeVmId7tL5YN8B7R3imoM	1	My Universe	2023-06-24 11:38:31.309	🎶
spotify:track:5dJSrn1RKceOPDyb4DAe4w	1	Hooked On A Feeling	2023-06-24 11:38:31.309	🦊
spotify:track:7eJMfftS33KTjuF7lTsMCx	1	death bed (coffee for your head)	2023-06-24 11:38:31.309	☔
spotify:track:04ZTP5KsCypmtCmQg5tH9R	1	I'm a Mess	2023-06-24 11:38:31.309	☔
spotify:track:0TkJIyL69RAUIbNwGub6uR	1	Burn The House Down	2023-06-24 11:38:31.31	📢
spotify:track:7BoobGhD4x5K96Me0hqC8Q	1	Build a Bitch	2023-06-24 11:38:31.31	🦠
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-06-24 11:38:31.309	🎶
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	2	Sweater Weather	2023-06-24 11:38:31.309	☔
spotify:track:3ggtU1ZOKO8ZNiqPNyXGcm	1	Dinero	2023-06-24 11:38:31.309	😈
spotify:track:2XH4CaV8UoJoIqLrL9l4Qj	1	Middle Of Nowhere	2023-06-24 11:38:31.309	📼
spotify:track:2XH4CaV8UoJoIqLrL9l4Qj	1	Middle Of Nowhere	2023-09-06 16:00:43.402	🎶
spotify:track:0pqnGHJpmpxLKifKRmU6WP	1	Believer	2023-06-24 11:38:31.309	📢
spotify:track:0Nrw0vKim2z4dph1jsxvye	1	Still Alive	2023-06-24 11:38:31.309	🦀
spotify:track:7K3BhSpAxZBznislvUMVtn	1	Last Night	2023-06-24 11:38:31.309	🤠
spotify:track:7K3BhSpAxZBznislvUMVtn	1	Last Night	2023-06-24 11:38:31.309	😈
spotify:track:0QsvXIfqM0zZoerQfsI9lm	1	Don't Let Me Down (feat. Daya)	2023-06-24 11:38:31.31	🦊
spotify:track:2yAVzRiEQooPEJ9SYx11L3	2	Blue (Da Ba Dee) - Gabry Ponte Ice Pop Radio	2023-06-24 11:38:31.309	🦀
spotify:track:2yAVzRiEQooPEJ9SYx11L3	1	Blue (Da Ba Dee) - Gabry Ponte Ice Pop Radio	2023-06-24 11:38:31.309	🧊
spotify:track:3JvrhDOgAt6p7K8mDyZwRd	2	Riptide	2023-06-24 11:38:31.309	🦊
spotify:track:3TGRqZ0a2l1LRblBkJoaDx	1	Call Me Maybe	2023-06-24 11:38:31.309	🫧
spotify:track:1MtUq6Wp1eQ8PC6BbPCj8P	1	I Took A Pill In Ibiza - Seeb Remix	2023-06-24 11:38:31.31	🦊
spotify:track:5aTsxlQlq0vIedDWZoqMWN	2	Lights - Single Version	2023-06-24 11:38:31.309	💿
spotify:track:0vjeOZ3Ft5jvAi9SBFJm1j	1	Superhero (Heroes & Villains) [with Future & Chris Brown]	2023-06-24 11:38:31.309	🎶
spotify:track:0vjeOZ3Ft5jvAi9SBFJm1j	1	Superhero (Heroes & Villains) [with Future & Chris Brown]	2023-06-24 11:38:31.309	😈
spotify:track:15RSD04RKmM1fjrBONNtqK	1	Chug Jug With You (Number One Victory Royale)	2023-06-24 11:38:31.31	🦀
spotify:track:696DnlkuDOXcMAnKlTgXXK	1	ROXANNE	2023-06-24 11:38:31.31	🎶
spotify:track:4G8gkOterJn0Ywt6uhqbhp	1	Radioactive	2023-06-24 11:38:31.309	🦊
spotify:track:3Te8uLyit6X3ncNW8Fp3K2	1	Immortals	2023-06-24 11:38:31.31	🔥
spotify:track:3Te8uLyit6X3ncNW8Fp3K2	1	Immortals	2023-06-24 11:38:31.31	🦊
spotify:track:5OiLJ8tjUPFiPX2gVM8fxJ	1	Imma Be	2023-06-24 11:38:31.309	💿
spotify:track:7dt6x5M1jzdTEt8oCbisTK	1	Better Now	2023-06-24 11:38:31.309	📢
spotify:track:2GiJYvgVaD2HtM8GqD9EgQ	1	Electric Love	2023-06-24 11:38:31.309	🦠
spotify:track:5iJfzXKvQXlYOBtEQhEmpA	1	Tokyo Drift (Fast & Furious) - From "The Fast And The Furious: Tokyo Drift" Soundtrack	2023-06-24 11:38:31.309	🦀
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	2	I Kissed A Girl	2023-06-24 11:38:31.309	💿
spotify:track:60vvp6UXG2KmLmrNvcVHa8	3	Lights Down Low	2023-06-24 11:38:31.309	🐺
spotify:track:7J9mBHG4J2eIfDAv5BehKA	1	7 Element	2023-06-24 11:38:31.309	🦀
spotify:track:2a1o6ZejUi8U3wzzOtCOYw	1	Danza Kuduro	2023-06-24 11:38:31.31	📢
spotify:track:1zPWTZRStEg3Vye5HtagV5	1	Big Chungus	2023-06-24 11:38:31.309	🦀
spotify:track:6Knv6wdA0luoMUuuoYi2i1	1	My House	2023-06-24 11:38:31.31	🦊
spotify:track:6NFyWDv5CjfwuzoCkw47Xf	2	Delicate	2023-06-24 11:38:31.31	📢
spotify:track:73CMRj62VK8nUS4ezD2wvi	4	Set Fire to the Rain	2023-06-24 11:38:31.309	💿
spotify:track:73CMRj62VK8nUS4ezD2wvi	1	Set Fire to the Rain	2023-06-24 11:38:31.309	📼
spotify:track:5lF0pHbsJ0QqyIrLweHJPW	2	Burn	2023-06-24 11:38:31.309	💿
spotify:track:0uXpWdTQDlGW8eZdXHudNB	1	Cherry Gum	2023-06-24 11:38:31.309	🥂
spotify:track:0azC730Exh71aQlOt9Zj3y	3	This Is What You Came For	2023-06-24 11:38:31.31	🎶
spotify:track:0azC730Exh71aQlOt9Zj3y	1	This Is What You Came For	2023-06-24 11:38:31.31	😈
spotify:track:0azC730Exh71aQlOt9Zj3y	2	This Is What You Came For	2023-06-24 11:38:31.31	🫧
spotify:track:0azC730Exh71aQlOt9Zj3y	1	This Is What You Came For	2023-06-24 11:38:31.31	🧊
spotify:track:5zFglKYiknIxks8geR8rcL	1	Beautiful Mistakes (feat. Megan Thee Stallion)	2023-06-24 11:38:31.309	🦠
spotify:track:0JTzAeAUlzER73R77auERv	1	My Life Would Suck Without You	2023-06-24 11:38:31.309	📼
spotify:track:5jzKL4BDMClWqRguW5qZvh	1	Teenage Dream	2023-06-24 11:38:31.31	💿
spotify:track:6vc2Jq2vaGu8z326kSrw92	3	Your Love Is My Drug	2023-06-24 11:38:31.31	💿
spotify:track:2Iq6HhIquO7JKr0KfTNLzU	1	My Type	2023-06-24 11:38:31.31	🥂
spotify:track:2GyA33q5rti5IxkMQemRDH	1	I Know What You Did Last Summer	2023-06-24 11:38:31.309	🦊
spotify:track:1WzAeadSKJhqykZFbJNmQv	1	Your Man	2023-06-24 11:38:31.31	🤠
spotify:track:1WkMMavIMc4JZ8cfMmxHkI	1	CAN'T STOP THE FEELING! (from DreamWorks Animation's "TROLLS")	2023-06-24 11:38:31.309	🦊
spotify:track:3Zwu2K0Qa5sT6teCCHPShP	5	Thnks fr th Mmrs	2023-06-24 11:38:31.309	🔥
spotify:track:3Zwu2K0Qa5sT6teCCHPShP	1	Thnks fr th Mmrs	2023-06-24 11:38:31.309	😈
spotify:track:3Zwu2K0Qa5sT6teCCHPShP	3	Thnks fr th Mmrs	2023-06-24 11:38:31.309	🧊
spotify:track:0obBFrPYkSoBJbvHfUIhkv	2	Sexy And I Know It	2023-06-24 11:38:31.309	💿
spotify:track:0obBFrPYkSoBJbvHfUIhkv	1	Sexy And I Know It	2023-06-24 11:38:31.309	📼
spotify:track:4XNrMwGx1SqP01sqkGTDmo	2	One More Night	2023-06-24 11:38:31.309	📼
spotify:track:6xG2ZGudUgtV235xvDlSEt	1	Pokemon Theme	2023-06-24 11:38:31.31	🦀
spotify:track:22Lg6vvMS2JC07aAjsGvtU	1	Hot N Cold	2023-06-24 11:38:31.309	📼
spotify:track:6xGruZOHLs39ZbVccQTuPZ	1	Glimpse of Us	2023-06-24 11:38:31.309	🦠
spotify:track:1CdqVF1ywD0ZO1zXtB9yWa	1	Break Your Heart	2023-06-24 11:38:31.31	📼
spotify:track:0LohatbcUXRauoeMlR1jnS	21	Pound The Alarm	2023-06-24 11:38:31.31	💿
spotify:track:4t5lrf5rFX6JWAUPKCDlKk	1	The Safety Dance	2023-06-24 11:38:31.309	🦀
spotify:track:4cacyP5c3PMlfnyjpg13xW	1	Betty (Get Money)	2023-06-24 11:38:31.31	🦀
spotify:track:4e4fqjx0Izh4svvTef1z7e	1	Meant to Be (feat. Florida Georgia Line)	2023-06-24 11:38:31.309	🤠
spotify:track:40YcuQysJ0KlGQTeGUosTC	1	Me, Myself & I	2023-06-24 11:38:31.309	🦊
spotify:track:3pYDZTJM2tVBUhIRifWVzI	1	Blow	2023-06-24 11:38:31.309	💿
spotify:track:1daDRI9ahBonbWD8YcxOIB	1	Angels Like You	2023-06-24 11:38:31.309	☔
spotify:track:1daDRI9ahBonbWD8YcxOIB	1	Angels Like You	2023-06-24 11:38:31.309	😈
spotify:track:1daDRI9ahBonbWD8YcxOIB	1	Angels Like You	2023-06-24 11:38:31.309	🪬
spotify:track:2KH16WveTQWT6KOG9Rg6e2	1	Eye of the Tiger	2023-06-24 11:38:31.309	🦀
spotify:track:2DgdHcjWmO3qd50RzuBLgZ	7	House of Memories	2023-06-24 11:38:31.309	🧊
spotify:track:7jk7gqyEonmVVYahZN5zhW	1	Circus	2023-06-24 11:38:31.309	📼
spotify:track:1bM50INir8voAkVoKuvEUI	2	OMG (feat. will.i.am)	2023-06-24 11:38:31.31	💿
spotify:track:62AuGbAkt8Ox2IrFFb8GKV	1	Sweet Caroline	2023-06-24 11:38:31.31	🦀
spotify:track:6Xgq7MvZiet0hVi3KaDSgJ	1	Holy (feat. Chance The Rapper)	2023-06-24 11:38:31.309	🦠
spotify:track:2VOomzT6VavJOGBeySqaMc	1	Disturbia	2023-06-24 11:38:31.309	💿
spotify:track:15JINEqzVMv3SvJTAXAKED	1	Love The Way You Lie	2023-06-24 11:38:31.309	💿
spotify:track:3LlAyCYU26dvFZBDUIMb7a	1	Demons	2023-06-24 11:38:31.309	🦊
spotify:track:1x5sYLZiu9r5E43kMlt9f8	1	Symphony (feat. Zara Larsson)	2023-06-24 11:38:31.309	☔
spotify:track:7IUl5c6u18rzmyQOblj10T	1	Somebody To Love Remix	2023-06-24 11:38:31.31	🫧
spotify:track:1tAutlhI9FwnKn7fVgmd5P	7	Without You (feat. Usher)	2023-06-24 11:38:31.31	💿
spotify:track:67hbP9PFQZrb4XZc3TzB0s	1	Rasputin - Single Version	2023-06-24 11:38:31.31	🦀
spotify:track:275a9yzwGB6ncAW4SxY7q3	1	Panda	2023-06-24 11:38:31.309	🎶
spotify:track:7xoUc6faLbCqZO6fQEYprd	8	One Last Time	2023-06-24 11:38:31.309	💿
spotify:track:2Q8fFORnsDE6I3RNvSLXSf	1	Gotta Be You	2023-06-24 11:38:31.31	🎶
spotify:track:2Q8fFORnsDE6I3RNvSLXSf	1	Gotta Be You	2023-06-24 11:38:31.31	🧊
spotify:track:2Q8fFORnsDE6I3RNvSLXSf	1	Gotta Be You	2023-06-24 11:38:31.31	🦠
spotify:track:5Q0Nhxo0l2bP3pNjpGJwV1	1	Party In The U.S.A.	2023-06-24 11:38:31.309	📼
spotify:track:0vcfOQOvTCv8ckiRs8Xc1Z	1	Beautiful Drug	2023-06-24 11:38:31.309	🤠
spotify:track:6K4t31amVTZDgR3sKmwUJJ	2	The Less I Know The Better	2023-06-24 11:38:31.31	🎶
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-06-24 11:38:31.31	☔
spotify:track:6K4t31amVTZDgR3sKmwUJJ	2	The Less I Know The Better	2023-06-24 11:38:31.31	🌌
spotify:track:1igr912oduAmZQaoGhiADw	3	Riot	2023-06-24 11:38:31.309	🔥
spotify:track:2I7TngtQc3oZO0fsyFDUAJ	2	Chasing The Sun	2023-06-24 11:38:31.31	💿
spotify:track:2I7TngtQc3oZO0fsyFDUAJ	1	Chasing The Sun	2023-06-24 11:38:31.31	🦊
spotify:track:2I7TngtQc3oZO0fsyFDUAJ	2	Chasing The Sun	2023-06-24 11:38:31.31	🧊
spotify:track:6ocbgoVGwYJhOv1GgI9NsF	1	7 rings	2023-06-24 11:38:31.309	📢
spotify:track:7Dyq1bhhjknLKEGg4k5NLr	2	Hold It Against Me	2023-06-24 11:38:31.31	💿
spotify:track:1JDIArrcepzWDTAWXdGYmP	12	I Want You To Know	2023-06-24 11:38:31.31	💿
spotify:track:12wSL3tGk3MtbDEhfG7xy3	2	You'll Always Find Your Way Back Home	2023-06-24 11:38:31.309	📼
spotify:track:48QmG1dfvMuYLxMPt7KSRA	1	No Lie	2023-06-24 11:38:31.309	🎶
spotify:track:2MMUGOqJXwSWEY9yGYl8D2	1	Slow Drip	2023-06-24 11:38:31.309	🌌
spotify:track:52okn5MNA47tk87PeZJLEL	2	Let You Down	2023-06-24 11:38:31.31	🐺
spotify:track:6xw8ld1ztoCKifwTN6uGDq	1	Black Hole	2023-06-24 11:38:31.31	😈
spotify:track:22VdIZQfgXJea34mQxlt81	1	Can't Feel My Face	2023-06-24 11:38:31.309	🐺
spotify:track:22VdIZQfgXJea34mQxlt81	1	Can't Feel My Face	2023-06-24 11:38:31.309	📢
spotify:track:5XNm6WTJxKtcaug3lc8KJF	1	Just Like Fire (From the Original Motion Picture "Alice Through The Looking Glass") - Wideboys Remix	2023-06-24 11:38:31.309	🦊
spotify:track:5XNm6WTJxKtcaug3lc8KJF	1	Just Like Fire (From the Original Motion Picture "Alice Through The Looking Glass") - Wideboys Remix	2023-06-24 11:38:31.309	🐺
spotify:track:5fp6m6Zo4LetiWaMMrPjy5	1	Dreamscape	2023-06-24 11:38:31.309	😈
spotify:track:5fp6m6Zo4LetiWaMMrPjy5	5	Dreamscape	2023-06-24 11:38:31.309	🧊
spotify:track:5fp6m6Zo4LetiWaMMrPjy5	1	Dreamscape	2023-06-24 11:38:31.309	🌌
spotify:track:14OxJlLdcHNpgsm4DRwDOB	1	Habits (Stay High)	2023-06-24 11:38:31.309	🦊
spotify:track:61KpQadow081I2AsbeLcsb	1	deja vu	2023-06-24 11:38:31.31	🦠
spotify:track:5jjZikDrEd0by1o7V3fO4y	1	overwhelmed	2023-06-24 11:38:31.309	☔
spotify:track:4E6cwWJWZw2zWf7VFbH7wf	3	Love Song	2023-06-24 11:38:31.31	📼
spotify:track:3GCL1PydwsLodcpv0Ll1ch	1	You Belong With Me	2023-06-24 11:38:31.309	📼
spotify:track:017PF4Q3l4DBUiWoXk4OWT	1	Break My Heart	2023-06-24 11:38:31.31	🎶
spotify:track:017PF4Q3l4DBUiWoXk4OWT	1	Break My Heart	2023-06-24 11:38:31.31	🦠
spotify:track:5Hroj5K7vLpIG4FNCRIjbP	1	Best Day Of My Life	2023-06-24 11:38:31.309	🦊
spotify:track:38iU2jg98IZZEIJPrP7aWD	1	Till the World Ends	2023-06-24 11:38:31.309	💿
spotify:track:38iU2jg98IZZEIJPrP7aWD	1	Till the World Ends	2023-06-24 11:38:31.309	🫧
spotify:track:3Qu3Zh4WTKhP9GEXo0aDnb	1	Thought You Should Know	2023-06-24 11:38:31.309	🤠
spotify:track:3bC1ahPIYt1btJzSSEyyrF	2	Whistle	2023-06-24 11:38:31.309	💿
spotify:track:6z32PqAvnLBGDD2KinNn5j	1	1-800-273-8255	2023-06-24 11:38:31.31	🐺
spotify:track:0WfKDYeUAoLA3vdvLKKWMW	2	Poker Face	2023-06-24 11:38:31.31	📼
spotify:track:2tnVG71enUj33Ic2nFN6kZ	3	Ride It	2023-06-24 11:38:31.309	🎶
spotify:track:2tnVG71enUj33Ic2nFN6kZ	1	Ride It	2023-06-24 11:38:31.309	😈
spotify:track:2tnVG71enUj33Ic2nFN6kZ	1	Ride It	2023-06-24 11:38:31.309	🪬
spotify:track:2tnVG71enUj33Ic2nFN6kZ	1	Ride It	2023-06-24 11:38:31.309	🦠
spotify:track:72jCZdH0Lhg93z6Z4hBjgj	2	I Knew You Were Trouble.	2023-06-24 11:38:31.31	📼
spotify:track:5rX6C5QVvvZB7XckETNych	1	All Summer Long	2023-06-24 11:38:31.31	🤠
spotify:track:0KAiuUOrLTIkzkpfpn9jb9	1	Drive By	2023-06-24 11:38:31.309	💿
spotify:track:0KAiuUOrLTIkzkpfpn9jb9	2	Drive By	2023-06-24 11:38:31.309	📼
spotify:track:1NpW5kyvO4XrNJ3rnfcNy3	20	Wild Ones (feat. Sia)	2023-06-24 11:38:31.31	💿
spotify:track:1NpW5kyvO4XrNJ3rnfcNy3	1	Wild Ones (feat. Sia)	2023-06-24 11:38:31.31	🫧
spotify:track:4PqUG6BJSX6APKeELFpcyf	2	My OCD	2023-06-24 11:38:31.309	🦀
spotify:track:6KfoDhO4XUWSbnyKjNp9c4	1	Maniac	2023-06-24 11:38:31.309	🎶
spotify:track:6GqqGv8frU7kqzXkm2rewI	1	A Little Bit Off	2023-06-24 11:38:31.309	☔
spotify:track:6GqqGv8frU7kqzXkm2rewI	5	A Little Bit Off	2023-06-24 11:38:31.309	😈
spotify:track:6GqqGv8frU7kqzXkm2rewI	1	A Little Bit Off	2023-06-24 11:38:31.309	🧊
spotify:track:742DnU2ZFPDiWYzOcYVqnT	1	Facebook Song	2023-06-24 11:38:31.309	🦀
spotify:track:0IkKz2J93C94Ei4BvDop7P	8	Party Rock Anthem	2023-06-24 11:38:31.31	💿
spotify:track:67E9IHri5jH7kMtZegTtCE	1	Goodbye	2023-06-24 11:38:31.309	🎶
spotify:track:67E9IHri5jH7kMtZegTtCE	1	Goodbye	2023-06-24 11:38:31.309	☔
spotify:track:6zSpb8dQRaw0M1dK8PBwQz	1	Cold Heart - PNAU Remix	2023-06-24 11:38:31.31	🌌
spotify:track:6zSpb8dQRaw0M1dK8PBwQz	1	Cold Heart - PNAU Remix	2023-06-24 11:38:31.31	🦠
spotify:track:26wLOs3ZuHJa2Ihhx6QIE6	2	Teeth	2023-06-24 11:38:31.309	🔥
spotify:track:26wLOs3ZuHJa2Ihhx6QIE6	1	Teeth	2023-06-24 11:38:31.309	🧊
spotify:track:7ewT0nLFkMD8ONbRibePr9	3	I Don't Care - Single Version	2023-06-24 11:38:31.309	😈
spotify:track:7ewT0nLFkMD8ONbRibePr9	4	I Don't Care - Single Version	2023-06-24 11:38:31.309	🧊
spotify:track:1AKGJQIHP3dIPuhOjdxD6a	1	Bitch Lasagna	2023-06-24 11:38:31.309	🦀
spotify:track:6E90gq0KO6FYZVOXx8kCcC	1	Astronaut In The Ocean	2023-06-24 11:38:31.31	🦠
spotify:track:6E90gq0KO6FYZVOXx8kCcC	1	Astronaut In The Ocean	2023-09-06 16:04:13.737	🎶
spotify:track:1LmN9SSHISbtp9LoaR5ZVJ	4	Payphone	2023-06-24 11:38:31.31	💿
spotify:track:1LmN9SSHISbtp9LoaR5ZVJ	1	Payphone	2023-06-24 11:38:31.31	📼
spotify:track:0ct6r3EGTcMLPtrXHDvVjc	2	The Nights	2023-06-24 11:38:31.309	🔥
spotify:track:77TT8Xvx637TpzV8kKGkUw	3	Titanium (feat. Sia)	2023-06-24 11:38:31.309	💿
spotify:track:77TT8Xvx637TpzV8kKGkUw	1	Titanium (feat. Sia)	2023-06-24 11:38:31.309	🫧
spotify:track:3Pj6u2KTgepyyidp5xfbHp	1	Ashes	2023-06-24 11:38:31.309	😈
spotify:track:3Pj6u2KTgepyyidp5xfbHp	3	Ashes	2023-06-24 11:38:31.309	🧊
spotify:track:3Pj6u2KTgepyyidp5xfbHp	1	Ashes	2023-06-24 11:38:31.309	🦠
spotify:track:7DEEplBQH91fKPWQH0LsOw	1	When Love Takes Over (feat. Kelly Rowland) - Electro Radio Edit	2023-06-24 11:38:31.31	😈
spotify:track:3avYqdwHKEq8beXbeWCKqJ	1	Last Friday Night (T.G.I.F.)	2023-06-24 11:38:31.309	📼
spotify:track:6btdl1Vl6Ta5lUwUSOFW2H	4	SUN GOES DOWN	2023-06-24 11:38:31.309	☔
spotify:track:6btdl1Vl6Ta5lUwUSOFW2H	1	SUN GOES DOWN	2023-06-24 11:38:31.309	🫧
spotify:track:6btdl1Vl6Ta5lUwUSOFW2H	1	SUN GOES DOWN	2023-06-24 11:38:31.309	🧊
spotify:track:5RzFJd6W40SDTyZkX6xx45	1	I Know You Want Me (Calle Ocho)	2023-06-24 11:38:31.309	💿
spotify:track:5RzFJd6W40SDTyZkX6xx45	1	I Know You Want Me (Calle Ocho)	2023-06-24 11:38:31.309	📼
spotify:track:2WfaOiMkCvy7F5fcp2zZ8L	1	Take on Me	2023-06-24 11:38:31.309	🦀
spotify:track:63rbP24OzfaQCJjsHWZXnY	10	Where Them Girls At (feat. Nicki Minaj & Flo Rida)	2023-06-24 11:38:31.309	💿
spotify:track:6vFN0uVMQxHofQFnNhGBq8	1	Guardians Inferno - From "Guardians of the Galaxy Vol. 2"	2023-06-24 11:38:31.309	🦀
spotify:track:6qn9YLKt13AGvpq9jfO8py	10	We Found Love	2023-06-24 11:38:31.31	💿
spotify:track:3SV3KjxoxdFnAhkkmmCiFX	1	City of Angels (TikTok Dance)	2023-06-24 11:38:31.309	🦠
spotify:track:2i0AUcEnsDm3dsqLrFWUCq	1	Tonight Tonight	2023-06-24 11:38:31.309	🫧
spotify:track:4gbVRS8gloEluzf0GzDOFc	1	Maps	2023-06-24 11:38:31.309	🦊
spotify:track:6uxYfENm7zw050dNUi031W	3	The Edge Of Glory	2023-06-24 11:38:31.309	💿
spotify:track:2sHn9wWaCHYBXKnHjArsBy	1	Big Chungus	2023-06-24 11:38:31.309	🦀
spotify:track:6gj08XDlv9Duc2fPOxUmVD	1	Lips Are Movin	2023-06-24 11:38:31.309	🦊
spotify:track:2Za1AlJNvksouPPWbXpR2X	1	Good Old Days (feat. Kesha)	2023-06-24 11:38:31.309	🐺
spotify:track:3FCto7hnn1shUyZL42YgfO	1	Piano Man	2023-06-24 11:38:31.309	🦀
spotify:track:3MrRksHupTVEQ7YbA0FsZK	1	The Final Countdown	2023-06-24 11:38:31.31	🦀
spotify:track:37f4ITSlgPX81ad2EvmVQr	1	Fight Song	2023-06-24 11:38:31.309	📢
spotify:track:0Rz1KXsP4bhGxs0ffySSSn	1	Blurred Lines	2023-06-24 11:38:31.309	🦊
spotify:track:2iJuuzV8P9Yz0VSurttIV5	5	Scream & Shout	2023-06-24 11:38:31.309	💿
spotify:track:1rXq0uoV4KTgRN64jXzIxo	1	One Thing At A Time	2023-06-24 11:38:31.309	🤠
spotify:track:1rXq0uoV4KTgRN64jXzIxo	1	One Thing At A Time	2023-06-24 11:38:31.309	😈
spotify:track:1z9kQ14XBSN0r2v6fx4IdG	1	Diamonds	2023-06-24 11:38:31.31	📼
spotify:track:2KpCpk6HjXXLb7nnXoXA5O	1	Ni**as In Paris	2023-06-24 11:38:31.309	🧊
spotify:track:0HPD5WQqrq7wPWR7P7Dw1i	2	TiK ToK	2023-06-24 11:38:31.31	💿
spotify:track:3Qf0ZzB8rrAqbYDxtYLrxp	1	No Place I'd Rather Be	2023-06-24 11:38:31.309	🦊
spotify:track:0Jg602cHeMCnPez9baacIe	1	Cotton Eye Joe	2023-06-24 11:38:31.309	🤠
spotify:track:0Jg602cHeMCnPez9baacIe	1	Cotton Eye Joe	2023-06-24 11:38:31.309	🦀
spotify:track:4qvrdCZM49KR1nSHaYCiQ6	1	Bud Like You	2023-06-24 11:38:31.31	📢
spotify:track:1yKu2MhpwzDXXH2tzG6xoa	1	Beverly Hills	2023-06-24 11:38:31.31	📼
spotify:track:7gUpO6td4OOnu0Lf9vhcIV	1	Lights - Single Version	2023-06-24 11:38:31.309	☔
spotify:track:7gUpO6td4OOnu0Lf9vhcIV	3	Lights - Single Version	2023-06-24 11:38:31.309	💿
spotify:track:4h4QlmocP3IuwYEj2j14p8	1	Sunroof	2023-06-24 11:38:31.31	🥂
spotify:track:5UhGoJ0Iz69WNLZ5ZMA81k	1	Release the Kraken	2023-06-24 11:38:31.309	🦀
spotify:track:6wmAHw1szh5RCKSRjiXhPe	1	How Long	2023-06-24 11:38:31.309	🐺
spotify:track:5lNuqFVMca4vPupY10cH0J	2	No Promises (feat. Demi Lovato)	2023-06-24 11:38:31.31	🎶
spotify:track:5lNuqFVMca4vPupY10cH0J	1	No Promises (feat. Demi Lovato)	2023-06-24 11:38:31.31	🐺
spotify:track:03yc0G2OoH1Eeyu7Piy8fK	1	I'm Yours	2023-06-24 11:38:31.31	📼
spotify:track:11dxtPJKR4E0wlSr0A0t47	1	Potential Breakup Song	2023-06-24 11:38:31.31	😈
spotify:track:4fSIb4hdOQ151TILNsSEaF	3	Todo De Ti	2023-06-24 11:38:31.309	🎶
spotify:track:4fSIb4hdOQ151TILNsSEaF	1	Todo De Ti	2023-06-24 11:38:31.309	😈
spotify:track:62zFEHfAYl5kdHYOivj4BC	1	International Love (feat. Chris Brown)	2023-06-24 11:38:31.309	💿
spotify:track:2oJnewcmY02HnOd1KbVwPe	1	Sax Man	2023-06-24 11:38:31.309	🦀
spotify:track:6DlPa2rrVK3BygXJ48WYo3	2	RUNNING IN THE 90'S	2023-06-24 11:38:31.309	🔥
spotify:track:6DlPa2rrVK3BygXJ48WYo3	2	RUNNING IN THE 90'S	2023-06-24 11:38:31.309	🦀
spotify:track:4ECNtOnqzxutZkXP4TE3n3	5	Separate Ways (Worlds Apart)	2023-06-24 11:38:31.309	🔥
spotify:track:4ECNtOnqzxutZkXP4TE3n3	4	Separate Ways (Worlds Apart)	2023-06-24 11:38:31.309	🧊
spotify:track:5HOpkTTVcmZHnthgyxrIL8	1	The Fox (What Does the Fox Say?)	2023-06-24 11:38:31.309	🦊
spotify:track:6hu3pDOnjlqRkwo75mxsFM	1	Chain My Heart - FRDY Remix	2023-06-24 11:38:31.31	😈
spotify:track:6hu3pDOnjlqRkwo75mxsFM	1	Chain My Heart - FRDY Remix	2023-06-24 11:38:31.31	🧊
spotify:track:1imMjt1YGNebtrtTAprKV7	2	Love Again	2023-06-24 11:38:31.309	🎶
spotify:track:1imMjt1YGNebtrtTAprKV7	1	Love Again	2023-06-24 11:38:31.309	🧊
spotify:track:6sI8Q7TTJeA9exw6hxEqq3	1	Blueberry Eyes (feat. SUGA of BTS)	2023-06-24 11:38:31.31	🦠
spotify:track:6TrNRd98WksT9Kkmx9uj6R	5	Let It Rock	2023-06-24 11:38:31.309	🧊
spotify:track:7ef4DlsgrMEH11cDZd32M6	6	One Kiss (with Dua Lipa)	2023-06-24 11:38:31.309	🎶
spotify:track:7ef4DlsgrMEH11cDZd32M6	3	One Kiss (with Dua Lipa)	2023-06-24 11:38:31.309	😈
spotify:track:7ef4DlsgrMEH11cDZd32M6	1	One Kiss (with Dua Lipa)	2023-06-24 11:38:31.309	🧊
spotify:track:76hfruVvmfQbw0eYn1nmeC	2	Cake By The Ocean	2023-06-24 11:38:31.309	🦊
spotify:track:3y8AEUef1AVfr0npU5UOa9	1	Dangerous (feat. Joywave)	2023-06-24 11:38:31.31	🎶
spotify:track:7fX3wR67GCCvVOAf3G8KRE	1	You Spin Me Round (Like a Record)	2023-06-24 11:38:31.309	😈
spotify:track:16Of7eeW44kt0a1M0nitHM	15	You Make Me Feel... (feat. Sabi)	2023-09-13 11:23:30.724	💿
spotify:track:3CKCZ9pfwAfoMZlMncA1Nc	1	Set Fire to the Rain	2023-06-24 11:38:31.31	☔
spotify:track:3CKCZ9pfwAfoMZlMncA1Nc	4	Set Fire to the Rain	2023-06-24 11:38:31.31	💿
spotify:track:0thLhIqWsqqycEqFONOyhu	1	Lone Digger	2023-06-24 11:38:31.309	🎶
spotify:track:0thLhIqWsqqycEqFONOyhu	1	Lone Digger	2023-06-24 11:38:31.309	🥂
spotify:track:0thLhIqWsqqycEqFONOyhu	1	Lone Digger	2023-06-24 11:38:31.309	😈
spotify:track:5X3EW7MVbyEDG4FAPpmDv2	3	Moby Duck	2023-06-24 11:38:31.309	🦀
spotify:track:5jrdCoLpJSvHHorevXBATy	1	Dark Horse	2023-06-24 11:38:31.309	🦊
spotify:track:5cF0dROlMOK5uNZtivgu50	1	Attention	2023-06-24 11:38:31.309	🐺
spotify:track:1P7tiVl5hgemZuH8oNyP6C	1	midnight love	2023-06-24 11:38:31.309	☔
spotify:track:5pmL3RzOy3IvGFaSDi4hZL	1	Hangover	2023-06-24 11:38:31.309	🔥
spotify:track:7C7yqFTM0ncyJ04GIKrxdV	2	Anything Could Happen	2023-06-24 11:38:31.309	💿
spotify:track:1jJci4qxiYcOHhQR247rEU	1	Kids	2023-06-24 11:38:31.309	🎶
spotify:track:1jJci4qxiYcOHhQR247rEU	1	Kids	2023-06-24 11:38:31.309	☔
spotify:track:7vWFaMq63AwkFDhS2OAg5u	3	The Time (Dirty Bit)	2023-06-24 11:38:31.31	💿
spotify:track:7vWFaMq63AwkFDhS2OAg5u	1	The Time (Dirty Bit)	2023-06-24 11:38:31.31	🧊
spotify:track:77UjLW8j5UAGAGVGhR5oUK	1	Pray For Me (with Kendrick Lamar)	2023-06-24 11:38:31.309	🐺
spotify:track:7gZvmf49E6m0vrXMHcC6b3	1	I Like To Move It	2023-06-24 11:38:31.309	🦀
spotify:track:2OtwJ5j8QvDBpvUNxnYrSE	1	MoonQuest	2023-06-24 11:38:31.31	🦀
spotify:track:6eFahAdQgABBj1XOM99cBG	1	I Like It Like That (feat. New Boyz)	2023-06-24 11:38:31.31	💿
spotify:track:6eFahAdQgABBj1XOM99cBG	1	I Like It Like That (feat. New Boyz)	2023-06-24 11:38:31.31	📼
spotify:track:6tVrmsbI5HVDgOlFSTrQjB	5	Lucky Strike	2023-06-24 11:38:31.309	🔥
spotify:track:6tVrmsbI5HVDgOlFSTrQjB	1	Lucky Strike	2023-06-24 11:38:31.309	😈
spotify:track:6tVrmsbI5HVDgOlFSTrQjB	2	Lucky Strike	2023-06-24 11:38:31.309	🧊
spotify:track:2Ow4Pmi0VOOLvbmJ8V70qo	3	How to Be a Heartbreaker	2023-06-24 11:38:31.309	🎶
spotify:track:2Ow4Pmi0VOOLvbmJ8V70qo	1	How to Be a Heartbreaker	2023-06-24 11:38:31.309	🥂
spotify:track:2Ow4Pmi0VOOLvbmJ8V70qo	4	How to Be a Heartbreaker	2023-06-24 11:38:31.309	😈
spotify:track:2Ow4Pmi0VOOLvbmJ8V70qo	1	How to Be a Heartbreaker	2023-06-24 11:38:31.309	🧊
spotify:track:7Fq9RwQxSn3kW85PrDUf0M	1	Boot Scootin' Boogie	2023-06-24 11:38:31.31	🤠
spotify:track:4euxYgIl5XEqUj5WB9lHNq	1	The Home Depot Beat	2023-06-24 11:38:31.309	🦀
spotify:track:4r6eNCsrZnQWJzzvFh4nlg	1	Firework	2023-06-24 11:38:31.309	📼
spotify:track:3z06k8YF9CqX0CGFrlekOK	1	everything sucks	2023-06-24 11:38:31.309	☔
spotify:track:6naxalmIoLFWR0siv8dnQQ	1	Oops!...I Did It Again	2023-06-24 11:38:31.309	🫧
spotify:track:6KuHjfXHkfnIjdmcIvt9r0	1	On Top Of The World	2023-06-24 11:38:31.309	🦊
spotify:track:2u02eLj96Atd6TBxkH9YvN	10	S&M	2023-06-24 11:38:31.309	💿
spotify:track:4DvhkX2ic4zWkQeWMwQ2qf	2	Like A G6	2023-06-24 11:38:31.31	💿
spotify:track:1xMLthTaWJieT9YGV1hyS5	2	Animals	2023-06-24 11:38:31.309	🧊
spotify:track:3p94RpSxQdZocUfrzpemmm	1	El Dorado	2023-06-24 11:38:31.309	😈
spotify:track:3p94RpSxQdZocUfrzpemmm	2	El Dorado	2023-06-24 11:38:31.309	🧊
spotify:track:5ArQzSBevAdXTxRY6Ulhbq	1	Mama Said	2023-06-24 11:38:31.309	🦊
spotify:track:3gbBpTdY8lnQwqxNCcf795	1	Pompeii	2023-06-24 11:38:31.31	☔
spotify:track:7E8edqa0m0ASLXkLfmWY03	1	Problem	2023-06-24 11:38:31.309	🦊
spotify:track:2HSmyk2qMN8WQjuGhaQgCk	1	Champagne Poetry	2023-06-24 11:38:31.309	🦠
spotify:track:7fVlbM9hxmv3Omz4UPcsy8	2	Brain Power	2023-06-24 11:38:31.309	🧊
spotify:track:6w8ZPYdnGajyfPddTWdthN	1	Can I Get It	2023-06-24 11:38:31.309	🦠
spotify:track:2XU0oxnq2qxCpomAAuJY8K	1	Dance Monkey	2023-06-24 11:38:31.309	🦠
spotify:track:6Uj1ctrBOjOas8xZXGqKk4	1	Woman	2023-06-24 11:38:31.31	🎶
spotify:track:0uFForNKQPvgSCnxlZIhQy	2	Let Me Get Me	2023-06-24 11:38:31.309	🎶
spotify:track:0uFForNKQPvgSCnxlZIhQy	1	Let Me Get Me	2023-06-24 11:38:31.309	🪬
spotify:track:0uFForNKQPvgSCnxlZIhQy	1	Let Me Get Me	2023-06-24 11:38:31.309	🧊
spotify:track:0uFForNKQPvgSCnxlZIhQy	1	Let Me Get Me	2023-06-24 11:38:31.309	🦠
spotify:track:5kqIPrATaCc2LqxVWzQGbk	1	7 Years	2023-06-24 11:38:31.31	🐺
spotify:track:7tTRFVlFzk6yTnoMcParmi	2	JUST LIKE YOU	2023-06-24 11:38:31.31	☔
spotify:track:6ys2qkoVeLVqJIFyxWLUSn	2	Some Beach	2023-06-24 11:38:31.309	🤠
spotify:track:04aAxqtGp5pv12UXAg4pkq	1	Centuries	2023-06-24 11:38:31.309	🦊
spotify:track:4urcG6Nfubqsuqy3juMjBi	1	Brokenhearted	2023-06-24 11:38:31.31	💿
spotify:track:6qCsKKS7Ol63SJW3LOIX5R	2	Plastic Hearts	2023-06-24 11:38:31.31	🎶
spotify:track:6qCsKKS7Ol63SJW3LOIX5R	2	Plastic Hearts	2023-06-24 11:38:31.31	😈
spotify:track:6qCsKKS7Ol63SJW3LOIX5R	1	Plastic Hearts	2023-06-24 11:38:31.31	🧊
spotify:track:6qCsKKS7Ol63SJW3LOIX5R	1	Plastic Hearts	2023-06-24 11:38:31.31	🦠
spotify:track:0i5el041vd6nxrGEU8QRxy	2	Cruise	2023-06-24 11:38:31.31	🤠
spotify:track:2M9ULmQwTaTGmAdXaXpfz5	1	Billionaire (feat. Bruno Mars)	2023-06-24 11:38:31.309	📼
spotify:track:0tBbt8CrmxbjRP0pueQkyU	1	Wolves	2023-06-24 11:38:31.309	🎶
spotify:track:0tBbt8CrmxbjRP0pueQkyU	1	Wolves	2023-06-24 11:38:31.309	🐺
spotify:track:4bZd0nRuX8HyjeXAUBczvm	4	I Cry	2023-06-24 11:38:31.309	💿
spotify:track:1DqdF42leyFIzqNDv9CjId	1	Dynamite	2023-06-24 11:38:31.31	📼
spotify:track:5RhxBpoCwX2vLBcSJzYa5j	3	Round & Round	2023-06-24 11:38:31.309	💿
spotify:track:5RhxBpoCwX2vLBcSJzYa5j	1	Round & Round	2023-06-24 11:38:31.309	📼
spotify:track:5RhxBpoCwX2vLBcSJzYa5j	1	Round & Round	2023-06-24 11:38:31.309	🫧
spotify:track:5fwSHlTEWpluwOM0Sxnh5k	2	Pepas	2023-06-24 11:38:31.31	🎶
spotify:track:5fwSHlTEWpluwOM0Sxnh5k	1	Pepas	2023-06-24 11:38:31.31	😈
spotify:track:5fwSHlTEWpluwOM0Sxnh5k	1	Pepas	2023-06-24 11:38:31.31	🪬
spotify:track:5fwSHlTEWpluwOM0Sxnh5k	5	Pepas	2023-06-24 11:38:31.31	🧊
spotify:track:4bb94wZVF1cX66vQjNeJTX	2	A Sweeter Place (feat. Kid Cudi)	2023-06-24 11:38:31.309	🎶
spotify:track:222B3aljXx6fFwKmFjuBED	1	Woman Like Me (feat. Nicki Minaj)	2023-06-24 11:38:31.309	🎶
spotify:track:1r0XfrhdG6bsiS4oe1QM96	2	A Year Without Rain	2023-06-24 11:38:31.31	💿
spotify:track:1r0XfrhdG6bsiS4oe1QM96	1	A Year Without Rain	2023-06-24 11:38:31.31	📼
spotify:track:1r0XfrhdG6bsiS4oe1QM96	1	A Year Without Rain	2023-06-24 11:38:31.31	🫧
spotify:track:2nLtzopw4rPReszdYBJU6h	2	Numb	2023-07-21 16:04:50.5	🔥
spotify:track:5gOK3GYmmWvV8UyCpnRY4J	1	Around the World (La La La La La) - Radio Version	2023-07-24 15:07:42.415	🏆
spotify:track:22LAwLoDA5b4AaGSkg6bKW	1	Blueberry Faygo	2023-09-06 12:10:25.779	🎶
spotify:track:05SBRd4fXgn8FX7bf8BCAE	1	I Need Your Love (feat. Ellie Goulding)	2023-09-13 11:15:06.327	💿
spotify:track:3AjyOYxBv8bByfBtG5o9dP	1	See You Again	2023-09-13 12:09:38.855	📼
spotify:track:360UM2DaiHZPRu0EsrOvMp	1	If We Ever Meet Again (Featuring Katy Perry)	2023-09-13 16:08:46.516	📼
spotify:track:2tpfxAXiI52znho4WE3XFA	1	Talking Body	2023-09-13 16:45:53.482	🦊
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-19 12:50:58.965	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-09-19 12:53:42.483	🦥
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-09-19 12:54:45.069	🦥
spotify:track:4Ka0qWis2V9gI5MFdzT1lB	2	Breaking with You	2023-09-19 13:00:19.25	🦥
spotify:track:0ndg56b510prqHlImqJoxG	1	Ghost Town (Lucas Estrada Remix)	2023-09-19 13:04:04.374	🦥
spotify:track:1jghJYP9CZ5tbkZXNFEq0i	1	Night Ends	2023-09-19 13:43:25.038	🦥
spotify:track:360ZhWvMnyXKYFG9Mqsm89	1	Evacuate The Dancefloor - Radio Edit	2023-09-19 14:47:34.552	🦥
spotify:track:5xvUgoVED1F4mBu8FL0HaW	1	Ready or Not	2023-09-20 18:16:48.027	💿
spotify:track:4FWbsd91QSvgr1dSWwW51e	1	TRUSTFALL	2023-09-20 22:31:39.818	🦥
spotify:track:5dry5tz8yLcLuOJ3l6ZEQd	1	Used to Know Me	2023-09-20 23:53:43.401	🦥
spotify:track:3YWdfXQwfPh8qGhXdiXPHh	1	Coming Your Way (with Anne-Marie & Becky G)	2023-09-25 18:35:02.682	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-09-25 22:15:31.272	🦥
spotify:track:5Agunnfj2SyNhhFWNmQ8JE	1	Sweet and Sour	2023-09-26 14:29:41.815	🦥
spotify:track:19vrXBW4gizaQUxMyXOxfO	1	It's Not Right But It's Okay	2023-09-26 18:05:34.637	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-09-27 13:48:12.583	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-09-27 14:27:28.68	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-09-28 18:16:19.146	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-09-28 23:55:15.532	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-09-29 12:21:40.155	🦥
spotify:track:1HOlb9rdNOmy9b1Fakicjo	1	#SELFIE	2023-09-30 23:14:43.577	🦥
spotify:track:3rDFqo8yv93PtTmdOYOPzX	1	Tonight (I'm Fuckin' You)	2023-09-30 23:46:15.922	📼
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-10-01 00:51:30.541	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-02 15:56:09.867	🦥
spotify:track:3tIjJY43mDAhMZxSuDHvjy	1	Lovefool (feat. Pia Mia)	2023-10-02 19:39:26.711	🦥
spotify:track:5RVjB86R02f47lCZSPFOzj	1	Damn (You’ve Got Me Saying)	2023-10-03 13:51:14.144	🦥
spotify:track:2xfHakNuD25ma5CSfTXFw2	1	The One	2023-10-03 16:29:32.7	🦥
spotify:track:0tgVpDi06FyKpA1z0VMD4v	1	Perfect	2023-10-04 15:29:54.354	🐺
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-04 21:39:33.993	🦥
spotify:track:63rbP24OzfaQCJjsHWZXnY	1	Where Them Girls At (feat. Nicki Minaj & Flo Rida)	2023-10-05 15:27:39.973	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-05 17:43:46.037	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-05 21:56:31.046	🦥
spotify:track:19vrXBW4gizaQUxMyXOxfO	1	It's Not Right But It's Okay	2023-10-06 18:49:03.892	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-07 15:36:20.169	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-10-08 13:24:13.127	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-08 14:24:13.06	🦥
spotify:track:14iN3o8ptQ8cFVZTEmyQRV	-1	I Kissed A Girl	2023-10-08 22:37:57.574	💿
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-09 00:03:54.679	🦥
spotify:track:1txNJEYS7E0uQzYqmYeoJp	1	Comin' To Getcha	2023-10-09 01:16:09.344	🦥
spotify:track:2bCQHF9gdG5BNDVuEIEnNk	1	Smooth Criminal - 2012 Remaster	2023-10-09 12:08:07.375	🦥
spotify:track:5XemvyG79fcKPl5lgbhplq	1	W.I.T.C.H.	2023-10-09 15:20:05.269	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-09 21:38:46.277	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-10 17:14:33.001	🦥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-10 19:42:31.509	🦥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-10 20:11:16.997	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-10-10 22:12:58.528	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-11 12:26:09.051	🦥
spotify:track:2bsygdSQc5XZfvRm1BA0H5	1	Lovesick	2023-10-11 14:51:02.607	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-11 15:46:02.863	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-11 15:51:45.516	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-11 16:22:54.08	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-11 22:14:05.968	🦥
spotify:track:2rfZyAX6wZxQWMQ9GYyLIu	1	Worship You	2023-10-12 14:44:39.096	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	-1	Supersonic	2023-10-12 17:38:10.169	🦥
spotify:track:4nK5YrxbMGZstTLbvj6Gxw	1	Supalonely	2023-10-13 12:02:46.627	🎶
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2023-10-13 12:24:04.942	🎶
spotify:track:0COqiPhxzoWICwFCS4eZcp	-1	Bring Me To Life	2023-10-13 12:36:02.005	🎶
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-13 15:22:14.505	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-10-14 11:35:40.818	🦥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-10-14 16:42:14.133	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-14 19:12:25.674	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-14 19:53:32.081	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-10-14 20:05:41.001	🦥
spotify:track:3FkyJH5uE5XmN3voocBcYK	1	Private Life	2023-10-14 20:29:23.884	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-10-15 13:34:24.945	🦥
spotify:track:4fCE1SCDulouoac9Q8XroU	1	West Coast (feat. Quinn XCII)	2023-10-17 15:06:37.312	🔥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-10-17 15:09:10.118	🔥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-10-17 15:16:36.409	🔥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2023-10-17 15:35:07	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-17 15:42:21.62	🔥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-17 15:42:22.288	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-17 15:57:24.484	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-17 15:57:24.725	🔥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-10-17 19:35:12.53	🦥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-10-17 19:37:04.451	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-18 11:45:17.583	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-10-18 11:45:18.499	🔥
spotify:track:2BfJX65Te5q84Pku7osGRH	1	Good Luck (with Jax Jones & Galantis)	2023-10-18 11:55:48.426	🔥
spotify:track:0L5dwOLG1xpw9oD5FcyQak	1	Stars	2023-10-18 11:56:22.037	🔥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-10-18 12:02:26.529	🔥
spotify:track:7fWOBXSWN29kaE0spQjUW9	1	Goodbye	2023-10-18 12:08:22.272	🔥
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-10-18 12:13:20.83	🔥
spotify:track:4vswbhNPKavZJqpXzJI4wd	1	I Want You Around	2023-10-18 12:18:03.788	🔥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-18 12:25:00.475	🔥
spotify:track:2xfHakNuD25ma5CSfTXFw2	1	The One	2023-10-18 12:55:39.667	🔥
spotify:track:1WFy81RbU5QhOeYVgIzVPe	1	Weekend On A Tuesday	2023-10-18 13:10:16.367	🔥
spotify:track:1UNWD6R5EOFklUHKZZvww2	1	She Said	2023-10-18 15:16:53.931	🔥
spotify:track:1p0jBDjxORjYNJyAphBRpE	1	MONEY ON THE DASH	2023-10-18 15:27:51.915	🦥
spotify:track:1p0jBDjxORjYNJyAphBRpE	1	MONEY ON THE DASH	2023-10-18 15:27:52.502	🔥
spotify:track:5jjZikDrEd0by1o7V3fO4y	1	overwhelmed	2023-10-18 15:29:27.511	☔
spotify:track:7irq1X57FwkQrGFVOayjsm	1	STOP!	2023-10-18 15:40:00.965	🔥
spotify:track:7irq1X57FwkQrGFVOayjsm	1	STOP!	2023-10-18 15:40:05.92	🦥
spotify:track:1STwdocp5GlE0aLPT6CaJ6	1	The Difference	2023-10-18 15:43:19.279	🔥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-10-18 16:07:16.593	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-10-18 16:07:16.899	🔥
spotify:track:7vzoNK8tbNmmKjDCNGTmkp	1	Tears of Gold - Owen Norton Remix	2023-10-18 16:11:44.376	🔥
spotify:track:58HvfVOeJY7lUuCqF0m3ly	1	MIDDLE OF THE NIGHT	2023-10-18 16:33:42.062	🦥
spotify:track:58HvfVOeJY7lUuCqF0m3ly	1	MIDDLE OF THE NIGHT	2023-10-18 16:33:42.428	🔥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	-1	You Only Love Me	2023-10-18 20:48:01.918	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	1	You Only Love Me	2023-10-18 20:59:30.207	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	1	You Only Love Me	2023-10-18 20:59:31.873	🦥
spotify:track:5FHPvs8RxWBQXP2Rq9I2B2	1	You Only Love Me	2023-10-18 20:59:32.524	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-10-18 20:59:36.477	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-18 21:39:42.853	🦥
spotify:track:6PUIzlqotEmPuBfjbwYWOB	1	Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix	2023-10-18 21:41:46.392	🦥
spotify:track:2MMUGOqJXwSWEY9yGYl8D2	1	Slow Drip	2023-10-18 22:00:23.81	🦥
spotify:track:6zsFddikwwAfBr3USkYSDx	1	Radio	2023-10-18 22:10:19.401	🦥
spotify:track:3AzjcOeAmA57TIOr9zF1ZW	1	Physical	2023-10-18 22:13:35.208	🦥
spotify:track:10xV5l9nhLvFpR8mqzs0bL	1	Numb	2023-10-18 22:24:50.177	🦥
spotify:track:3bfqkspKABT4pPicm6wC9F	1	Ass Back Home (feat. Neon Hitch)	2023-10-18 22:34:42.712	📼
spotify:track:2NHtAJhXVOnSIN2lZhbpWz	1	Space and Time	2023-10-19 10:28:55.744	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-19 10:29:08.574	🔥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-10-19 10:43:16.232	🦥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-10-19 10:43:18.44	🔥
spotify:track:00E0Z2jrF7reoHps4zcbWQ	1	Car Keys (Ayla)	2023-10-19 10:55:32.59	🔥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-19 11:02:31.065	🔥
spotify:track:3jksOdXCaDXyGiZ7L4YZbp	1	All Nighter	2023-10-19 14:35:55.683	🦥
spotify:track:3jksOdXCaDXyGiZ7L4YZbp	1	All Nighter	2023-10-19 14:35:56.78	🔥
spotify:track:62nhuooamoroYpJyqE0nLd	1	Are You With Me - Radio Edit	2023-10-19 14:44:59.286	🔥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-19 14:57:56.632	🦥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-19 14:57:57.264	🔥
spotify:track:5vcfy76yr163pFH7NkN6nX	1	I Don't Want You	2023-10-19 14:58:01.103	🦥
spotify:track:3GYlQmwfBDo7imFyGPhrl7	1	Say My Name	2023-10-19 15:12:23.254	🦥
spotify:track:3GYlQmwfBDo7imFyGPhrl7	1	Say My Name	2023-10-19 15:12:24.216	🔥
spotify:track:3DTqHfTGj1c6y2gDXsTez4	1	Regardless	2023-10-19 15:28:34.312	🔥
spotify:track:3XPl3dGn1oWe7VmKoB8nhU	1	Psycho - Joel Corry Remix	2023-10-19 15:58:03.326	🔥
spotify:track:6pHCJmx9FXnMwEqB0LWUEH	1	Azul	2023-10-20 10:26:59.932	🔥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-20 12:56:29.533	🦥
spotify:track:5zEAGm4yKQ8NMemN0m3rW1	1	Nirvana	2023-10-20 12:58:06.915	🦥
spotify:track:19BoXyNUZB8M9PgAyMHVRg	1	Tell Me	2023-10-20 13:03:09.189	🦥
spotify:track:7CH8J4ulT49UfZwSDSkSZA	1	i miss u (with Au/Ra)	2023-10-20 13:08:21.098	🔥
spotify:track:5902W4uHWzhtOff1UK7the	1	When I’m Gone (with Katy Perry)	2023-10-20 13:22:09.736	🔥
spotify:track:2Z9TRKOZtqKZNGDxeodNzZ	1	What You Gunna Do - OPTIXX Remix	2023-10-20 13:24:29.051	🔥
spotify:track:16mxzE8G96JyMSfcq1PQvW	1	Straight From the Heart (feat. Nørskov)	2023-10-20 13:26:23.553	🎶
spotify:track:6Dy1jexKYriXAVG6evyUTJ	1	OUT OUT (feat. Charli XCX & Saweetie)	2023-10-20 13:32:02.413	🔥
spotify:track:6Dy1jexKYriXAVG6evyUTJ	1	OUT OUT (feat. Charli XCX & Saweetie)	2023-10-20 13:32:02.942	🦥
spotify:track:4Ka0qWis2V9gI5MFdzT1lB	1	Breaking with You	2023-10-20 14:14:41.643	🦥
spotify:track:4Ka0qWis2V9gI5MFdzT1lB	1	Breaking with You	2023-10-20 14:14:41.881	🔥
spotify:track:1kaJ2dEM1jeXQaH7uDdyoD	1	Run (with Galantis)	2023-10-20 14:17:17.208	🔥
spotify:track:2tJ4fnUrG5v7OmYVGq7sw8	1	Hopeless Heart	2023-10-20 14:40:07.263	🦥
spotify:track:5gvEyl4OLhD6kJ3aZ43sd3	1	Heaven	2023-10-20 14:44:50.427	🦥
spotify:track:2cc8Sw1OnCuA5bV8nqWqpE	1	You	2023-10-20 14:49:27.554	🦥
spotify:track:2cc8Sw1OnCuA5bV8nqWqpE	1	You	2023-10-20 14:49:27.922	🔥
spotify:track:0SZPXD0uEl72YjUVY2K3E9	1	The Business, Pt. II	2023-10-20 15:33:27.038	🦥
spotify:track:0SZPXD0uEl72YjUVY2K3E9	1	The Business, Pt. II	2023-10-20 15:33:27.515	🔥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2023-10-20 15:39:23.755	🦥
spotify:track:0SZPXD0uEl72YjUVY2K3E9	1	The Business, Pt. II	2023-10-20 15:46:29.279	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-20 15:49:13.77	🦥
spotify:track:3DTqHfTGj1c6y2gDXsTez4	1	Regardless	2023-10-20 15:52:05.809	🦥
spotify:track:2dWNKXTs5z7Iu1g0kYh4Xe	1	My Heart Goes (La Di Da) (feat. Topic)	2023-10-20 15:57:00.462	🦥
spotify:track:04oTyEbJ190RfXWSlTP4b7	1	Good Luck	2023-10-20 15:58:55.18	🦥
spotify:track:7arsXR8AtExnOFN3v3HiJI	1	Going Dumb	2023-10-20 16:05:27.285	🦥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-10-21 15:05:16.393	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-21 15:15:30.915	🦥
spotify:track:3uUuGVFu1V7jTQL60S1r8z	1	Where Are You Now	2023-10-21 15:23:17.979	🎶
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-21 17:12:20.34	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-10-21 17:12:20.749	🔥
spotify:track:2NHtAJhXVOnSIN2lZhbpWz	1	Space and Time	2023-10-21 17:40:03.249	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-22 12:34:42.119	🦥
spotify:track:6zsFddikwwAfBr3USkYSDx	1	Radio	2023-10-22 12:37:59.647	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-22 12:52:25.021	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-22 12:57:30.667	🦥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-10-22 13:03:38.15	🦥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-22 13:10:14.383	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-22 14:39:31.688	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-22 14:46:15.972	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-10-22 14:46:16.864	🦥
spotify:track:2rfZyAX6wZxQWMQ9GYyLIu	1	Worship You	2023-10-22 14:58:00.655	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-22 15:58:42.757	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-22 16:01:00.038	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-22 16:01:00.887	🦥
spotify:track:1WFy81RbU5QhOeYVgIzVPe	1	Weekend On A Tuesday	2023-10-22 16:18:54.161	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-10-22 16:29:03.733	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2023-10-22 17:46:26.852	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2023-10-22 18:04:43.799	🔥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-22 18:09:01.67	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-10-22 18:10:52.92	🦥
spotify:track:1mvZErZBp7WZT3HfGBykao	1	Cry for You	2023-10-22 18:13:51.173	🦥
spotify:track:6K4t31amVTZDgR3sKmwUJJ	1	The Less I Know The Better	2023-10-22 18:20:35.206	🔥
spotify:track:3BKD1PwArikchz2Zrlp1qi	1	Baby Don't Hurt Me	2023-10-23 12:21:22.72	🔥
spotify:track:5RTCbOZLSoVaOwisJhsdfd	1	SKIN 2 SKIN	2023-10-23 12:23:48.201	🔥
spotify:track:7CH8J4ulT49UfZwSDSkSZA	1	i miss u (with Au/Ra)	2023-10-23 12:29:40.881	🔥
spotify:track:7arsXR8AtExnOFN3v3HiJI	1	Going Dumb	2023-10-23 12:34:20.937	🔥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-23 12:36:51.067	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-23 12:36:51.524	🔥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-10-23 12:36:54.979	🦥
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-10-23 12:42:44.229	🎶
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-10-23 12:42:45.373	🔥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2023-10-23 12:45:05.557	🦥
spotify:track:04oTyEbJ190RfXWSlTP4b7	1	Good Luck	2023-10-23 12:49:46.119	🔥
spotify:track:1bgKMxPQU7JIZEhNsM1vFs	1	Words (feat. Zara Larsson)	2023-10-23 12:52:57.923	🔥
spotify:track:0ndg56b510prqHlImqJoxG	1	Ghost Town (Lucas Estrada Remix)	2023-10-23 12:57:58.408	🔥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2023-10-23 13:00:26.042	🦥
spotify:track:5902W4uHWzhtOff1UK7the	1	When I’m Gone (with Katy Perry)	2023-10-23 13:14:55.247	🎶
spotify:track:16mxzE8G96JyMSfcq1PQvW	1	Straight From the Heart (feat. Nørskov)	2023-10-23 13:15:35.331	🎶
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-10-23 13:37:49.982	🔥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-23 13:44:40.373	🦥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-10-23 13:53:58.435	🔥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-10-23 13:54:00.853	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-23 14:48:43.344	🔥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-10-23 14:48:45.036	🦥
spotify:track:0I5pVidtNjNXeaqHnwhrva	1	Can't Come To The Phone	2023-10-23 14:51:41.308	🦥
spotify:track:0I5pVidtNjNXeaqHnwhrva	1	Can't Come To The Phone	2023-10-23 14:51:41.775	🔥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-10-23 14:57:22.76	🦥
spotify:track:089vxHEH64AKLKhokNXEJx	1	Higher	2023-10-26 18:30:53.894	🦥
spotify:track:73sE2IPYKcAvcz4Cd0pe1d	1	Die For a Man (feat. Lil Uzi Vert) - Galantis Remix	2023-10-26 18:43:54.524	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-26 20:30:37.154	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-10-26 20:33:59.802	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-26 20:37:07.649	🦥
spotify:track:0Yo0bmQPKtBLi6jOgYT6ZZ	1	Its My Life - Bachata Version	2023-10-27 10:06:36.41	📼
spotify:track:0Yo0bmQPKtBLi6jOgYT6ZZ	1	Its My Life - Bachata Version	2023-10-27 12:49:35.769	📼
spotify:track:0Yo0bmQPKtBLi6jOgYT6ZZ	-1	Its My Life - Bachata Version	2023-10-27 12:50:25.126	📼
spotify:track:0Yo0bmQPKtBLi6jOgYT6ZZ	-1	Its My Life - Bachata Version	2023-10-27 12:50:31.915	📼
spotify:track:0v1XpBHnsbkCn7iJ9Ucr1l	-1	It's My Life	2023-10-27 12:51:01.933	📼
spotify:track:0v1XpBHnsbkCn7iJ9Ucr1l	1	It's My Life	2023-10-27 12:51:57.036	📼
spotify:track:0v1XpBHnsbkCn7iJ9Ucr1l	1	It's My Life	2023-10-27 12:52:03.56	📼
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2023-10-27 12:52:48.879	🦥
spotify:track:4uDhts78RdwIDjEqPrYVKp	1	Sweet Dreams	2023-10-27 12:56:41.777	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-10-27 13:19:23.184	🦥
spotify:track:6h5PAsRni4IRlxWr6uDPTP	1	More Than You Know	2023-10-27 13:36:05.101	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-10-27 14:45:08.302	🦥
spotify:track:3GYlQmwfBDo7imFyGPhrl7	1	Say My Name	2023-10-27 15:06:29.355	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-10-27 15:40:27.589	🦥
spotify:track:2hnMS47jN0etwvFPzYk11f	1	Santeria	2023-10-28 02:27:39.086	📼
spotify:track:6XGqOY2tWjHwRIJ4qTjGBf	1	Fast Lane	2023-10-30 15:19:47.005	🦥
spotify:track:7K6H44x9AOkrt3PK6ig4w0	1	Last Summer	2023-10-30 15:24:41.734	🦥
spotify:track:7K6H44x9AOkrt3PK6ig4w0	-1	Last Summer	2023-10-30 15:24:49.138	🦥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-30 15:24:53.659	🦥
spotify:track:3jksOdXCaDXyGiZ7L4YZbp	1	All Nighter	2023-10-30 15:57:25.282	🦥
spotify:track:00E0Z2jrF7reoHps4zcbWQ	1	Car Keys (Ayla)	2023-10-30 17:28:39.268	🦥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2023-10-30 18:41:31.181	🦥
spotify:track:3jksOdXCaDXyGiZ7L4YZbp	1	All Nighter	2023-10-30 18:48:07.1	🦥
spotify:track:4vswbhNPKavZJqpXzJI4wd	1	I Want You Around	2023-10-30 19:02:05.101	🦥
spotify:track:1p0jBDjxORjYNJyAphBRpE	1	MONEY ON THE DASH	2023-10-30 19:06:36.168	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-10-30 19:12:34.825	🦥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2023-10-30 19:16:23.436	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-10-30 19:38:24.733	🦥
spotify:track:10xV5l9nhLvFpR8mqzs0bL	1	Numb	2023-10-30 22:10:09.409	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-10-30 23:46:49.631	🦥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2023-10-30 23:49:52.88	🦥
spotify:track:7irq1X57FwkQrGFVOayjsm	1	STOP!	2023-10-30 23:57:09.72	🦥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2023-10-31 00:04:23.273	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-10-31 11:41:56.578	🦥
spotify:track:4Ka0qWis2V9gI5MFdzT1lB	1	Breaking with You	2023-10-31 11:47:24.007	🦥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-31 11:49:33.259	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2023-10-31 11:53:24.715	🦥
spotify:track:58HvfVOeJY7lUuCqF0m3ly	1	MIDDLE OF THE NIGHT	2023-10-31 11:54:14.494	🦥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2023-10-31 11:57:29.437	🦥
spotify:track:4fCE1SCDulouoac9Q8XroU	1	West Coast (feat. Quinn XCII)	2023-10-31 12:01:48.953	🦥
spotify:track:4fCE1SCDulouoac9Q8XroU	-1	West Coast (feat. Quinn XCII)	2023-10-31 12:01:53.816	🦥
spotify:track:2tJ4fnUrG5v7OmYVGq7sw8	1	Hopeless Heart	2023-10-31 13:09:43.756	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-31 13:14:48.522	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2023-10-31 13:15:39.055	🦥
spotify:track:2cc8Sw1OnCuA5bV8nqWqpE	1	You	2023-10-31 13:18:49.222	🦥
spotify:track:0GTuyzPTs2G0wqFD1trSOw	1	Phone	2023-10-31 13:21:28.944	🦥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2023-10-31 13:58:08.316	🦥
spotify:track:1p0jBDjxORjYNJyAphBRpE	1	MONEY ON THE DASH	2023-10-31 14:00:28.926	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	1	Come Into My World (with NERVO)	2023-10-31 14:11:58.457	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-10-31 14:12:09.077	🦥
spotify:track:0L5dwOLG1xpw9oD5FcyQak	1	Stars	2023-10-31 14:16:06.949	🦥
spotify:track:0L5dwOLG1xpw9oD5FcyQak	1	Stars	2023-10-31 14:21:07.366	🦥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-10-31 14:37:19.228	🦥
spotify:track:0L5dwOLG1xpw9oD5FcyQak	1	Stars	2023-10-31 14:40:12.421	🦥
spotify:track:3GYlQmwfBDo7imFyGPhrl7	1	Say My Name	2023-10-31 16:01:41.427	🦥
spotify:track:7irq1X57FwkQrGFVOayjsm	1	STOP!	2023-10-31 16:04:22.893	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-10-31 21:48:10.562	🦥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2023-11-01 12:47:25.16	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-11-01 12:55:56.738	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-11-01 12:57:45.688	🦥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-11-01 12:59:55.811	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-11-01 13:05:51.179	🦥
spotify:track:3BKD1PwArikchz2Zrlp1qi	1	Baby Don't Hurt Me	2023-11-01 13:17:03.023	🦥
spotify:track:0ndg56b510prqHlImqJoxG	1	Ghost Town (Lucas Estrada Remix)	2023-11-01 13:27:30.325	🦥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2023-11-01 13:37:24.592	🦥
spotify:track:7GrYhdv4F9Garkrt3y6NLe	1	Gotta Get Thru This	2023-11-01 13:50:18.467	🦥
spotify:track:6fenHIxXuuzKB55wY4WCHP	1	God Is A Dancer (with Mabel)	2023-11-01 13:53:13.425	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2023-11-01 14:39:21.926	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2023-11-01 14:44:37.558	🦥
spotify:track:4Juaa2ppIOYcSWbrVtcrNp	1	Real Love	2023-11-01 14:49:41.925	🦥
spotify:track:57uNXnf4ciHYP4HktbIbzC	1	The Business	2023-11-01 14:56:09.276	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-11-01 15:13:46.441	🦥
spotify:track:0u5Agy2RLORlgsxZ3INSJ5	1	Stayin' Alive VS 50 C Tik Tok - Remix	2023-11-01 15:21:41.448	🦀
spotify:track:0u5Agy2RLORlgsxZ3INSJ5	1	Stayin' Alive VS 50 C Tik Tok - Remix	2023-11-01 15:21:47.416	🦥
spotify:track:4b93D55xv3YCH5mT4p6HPn	1	Ocean Drive	2023-11-01 15:44:48.363	🦥
spotify:track:0lQ2obtzmAsJu9xk3D6FqH	1	Friendships (Lost My Love)	2023-11-01 16:09:02.798	🦥
spotify:track:0d1ujEcFwTqA4kWliTSJim	1	Don't You Hold Me Down	2023-11-01 16:18:27.902	🦥
spotify:track:0O12SkQHX2Julh9utIosga	1	Sweet Child O' Mine	2023-11-01 16:20:04.524	🦥
spotify:track:4MdZkudMwETtvGqf0ZwIKW	1	DO IT TO IT (feat. Dsnt Matter)	2023-11-01 16:22:15.296	🦥
spotify:track:4MdZkudMwETtvGqf0ZwIKW	1	DO IT TO IT (feat. Dsnt Matter)	2023-11-01 16:26:08.414	🦥
spotify:track:3iEwla99ovgF0Rdla6FZm4	1	Let Them Know	2023-11-01 16:59:17.589	🦥
spotify:track:3FkyJH5uE5XmN3voocBcYK	1	Private Life	2023-11-01 17:19:35.53	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-11-01 17:24:29.69	🔥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-11-01 17:24:30.492	🦥
spotify:track:4FxDFBpqPumIyXzPagQPp0	1	I Wrote A Song - Topic Remix	2023-11-01 17:28:05.831	🦥
spotify:track:6iF4RgIjDvDqyW13PezSj3	1	Single Soon	2023-11-01 17:34:32.065	🦥
spotify:track:3nqQXoyQOWXiESFLlDF1hG	1	Unholy (feat. Kim Petras)	2023-11-01 17:37:35.572	🦥
spotify:track:3uUuGVFu1V7jTQL60S1r8z	1	Where Are You Now	2023-11-01 17:40:03.282	🦥
spotify:track:3F1P0QzdXtBz0MXy7KIO5w	1	Fever	2023-11-01 18:00:27.261	🦥
spotify:track:5VxmI3IdgAxWVvUnJoLuY2	1	Speed Drive (From Barbie The Album)	2023-11-01 18:02:28.714	🦥
spotify:track:3eJH2nAjvNXdmPfBkALiPZ	1	Acapulco	2023-11-01 19:41:17.281	🦥
spotify:track:3eJH2nAjvNXdmPfBkALiPZ	-1	Acapulco	2023-11-01 19:41:19.911	🦥
spotify:track:0z3XcxcrqvWe36Dtgiqrh0	1	Revenge	2023-11-03 23:39:48.397	🦀
spotify:track:6XGqOY2tWjHwRIJ4qTjGBf	1	Fast Lane	2023-11-05 01:09:03.756	🦥
spotify:track:4b93D55xv3YCH5mT4p6HPn	1	Ocean Drive	2023-11-05 11:59:49.537	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-11-05 12:17:46.739	🦥
spotify:track:7mobUfp1aL8A6CdugCMWft	1	BOTH	2023-11-05 13:14:39.782	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-05 21:44:42.687	🦥
spotify:track:1UNWD6R5EOFklUHKZZvww2	1	She Said	2023-11-05 21:56:48.628	🦥
spotify:track:3HYZs5IHvtfeGx1EfNtflG	1	Hole Right Where My Heart Is	2023-11-05 22:11:56.173	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-11-05 22:18:07.555	🦥
spotify:track:4v8tyFARGc8p6z3Ri0xPLB	1	Don't Touch My Clogs	2023-11-06 03:00:08.525	🦥
spotify:track:4v8tyFARGc8p6z3Ri0xPLB	1	Don't Touch My Clogs	2023-11-06 03:00:09.704	🦀
spotify:track:4v8tyFARGc8p6z3Ri0xPLB	1	Don't Touch My Clogs	2023-11-06 13:27:08.369	🦥
spotify:track:3dAR7kO4XBwi0Myc2wqQkD	1	I LIKE CARS	2023-11-06 18:04:27.448	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-11-06 20:10:54.702	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	1	Come Into My World (with NERVO)	2023-11-06 20:12:34.984	🦥
spotify:track:0u5Agy2RLORlgsxZ3INSJ5	1	Stayin' Alive VS 50 C Tik Tok - Remix	2023-11-06 20:23:13.521	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-06 21:24:41.361	🦥
spotify:track:3dAR7kO4XBwi0Myc2wqQkD	1	I LIKE CARS	2023-11-07 12:05:18.488	🦥
spotify:track:6sGiMZisNpN8kJbFyBC5x7	1	crossed the line	2023-11-07 12:15:42.506	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-11-07 15:16:37.416	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-11-07 15:28:50.201	🦥
spotify:track:74tswKcYGnbqDd9zbPHAgW	1	i drive me mad	2023-11-07 16:25:33.624	🦥
spotify:track:74tswKcYGnbqDd9zbPHAgW	1	i drive me mad	2023-11-07 16:27:28.373	☔
spotify:track:7I4XALvCb2VEmOCtGUe5uY	1	10 Things I Hate About You	2023-11-07 16:30:24.097	🦥
spotify:track:5VahNEYKPpQ65vXYipahyJ	1	F U Anthem	2023-11-07 16:38:33.027	🦥
spotify:track:6SpUnFjNfyFgyLRm65b2G6	1	ORAL HEX (spell on you)	2023-11-07 16:46:36.97	🦥
spotify:track:6JzHwpoWL1vsiDDjWjndyf	1	Bad Idea	2023-11-07 17:08:25.046	🦥
spotify:track:2NHtAJhXVOnSIN2lZhbpWz	1	Space and Time	2023-11-07 17:39:30.332	🦥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2023-11-07 20:59:49.581	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-11-07 21:04:50.613	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-11-07 21:04:54.766	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2023-11-07 21:11:10.108	🦥
spotify:track:7mobUfp1aL8A6CdugCMWft	1	BOTH	2023-11-07 21:20:59.696	🦥
spotify:track:67eYAnkdTu8BMcIx29z26L	1	Makeba - Ian Asher Remix	2023-11-08 13:45:55.041	🦥
spotify:track:04R4oiYD4NU6ZkdwlaJSep	1	Bad Memories - Felix Jaehn Remix	2023-11-08 13:53:39.574	🦥
spotify:track:04R4oiYD4NU6ZkdwlaJSep	1	Bad Memories - Felix Jaehn Remix	2023-11-08 13:54:59.251	🦥
spotify:track:39umHdGKfpnjY4TFtnoQ51	1	Too Much (feat. Usher)	2023-11-08 14:03:45.6	🦥
spotify:track:4XOnM8efyB3PQanXQnwlGO	1	Bananza (Belly Dancer) - DJ Shaan Remix	2023-11-08 14:07:43.797	🦥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-11-08 14:15:37.817	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-11-08 14:24:35.443	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2023-11-08 14:27:37.629	🦥
spotify:track:3KMsGaN1xdoOaNQELy8vR8	1	Bling Bling	2023-11-08 15:26:02.527	🦥
spotify:track:2x5nPvRLL92jXFvpfkIBLh	1	God On The Weekend	2023-11-08 15:49:28.904	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-11-08 16:06:26.36	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-11-08 16:06:38.857	🦥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2023-11-08 16:08:54.799	🦥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2023-11-08 16:09:01.501	🦥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2023-11-08 16:09:02.378	🦥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2023-11-08 16:11:10.825	🦥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2023-11-08 16:11:52.366	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-11-08 16:23:35.472	☔
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-11-08 16:23:45.178	🦥
spotify:track:6XGqOY2tWjHwRIJ4qTjGBf	1	Fast Lane	2023-11-08 21:21:03.116	🦥
spotify:track:6XGqOY2tWjHwRIJ4qTjGBf	1	Fast Lane	2023-11-08 21:21:13.391	🦥
spotify:track:6XGqOY2tWjHwRIJ4qTjGBf	1	Fast Lane	2023-11-08 22:39:37.967	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-09 00:19:52.152	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-09 00:21:30.894	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-11-09 00:22:08.245	🦥
spotify:track:4zPqv04ddAFwk2Pgz3jC9U	1	Where You Are (Sávežan)	2023-11-09 00:51:07.402	🦥
spotify:track:4MdZkudMwETtvGqf0ZwIKW	1	DO IT TO IT (feat. Dsnt Matter)	2023-11-09 11:00:17.591	🦥
spotify:track:7mobUfp1aL8A6CdugCMWft	1	BOTH	2023-11-09 11:00:22.453	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2023-11-09 11:14:19.484	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2023-11-09 11:37:53.072	☔
spotify:track:6XGqOY2tWjHwRIJ4qTjGBf	1	Fast Lane	2023-11-09 11:42:26.902	☔
spotify:track:6XGqOY2tWjHwRIJ4qTjGBf	1	Fast Lane	2023-11-09 11:42:34.114	☔
spotify:track:6GqqGv8frU7kqzXkm2rewI	1	A Little Bit Off	2023-11-09 13:39:29.526	☔
spotify:track:6GqqGv8frU7kqzXkm2rewI	1	A Little Bit Off	2023-11-09 13:39:30.657	☔
spotify:track:1P7tiVl5hgemZuH8oNyP6C	1	midnight love	2023-11-09 13:44:20.156	🦥
spotify:track:2L52NkXrarZ4kxCCQ5B3r4	1	Nightshade	2023-11-09 13:47:42.433	🦥
spotify:track:28cnXtME493VX9NOw9cIUh	1	Hurt	2023-11-09 13:52:46.227	☔
spotify:track:6btdl1Vl6Ta5lUwUSOFW2H	1	SUN GOES DOWN	2023-11-09 13:53:55.74	☔
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-11-09 13:57:00.586	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-11-09 13:57:01.046	☔
spotify:track:5NeydBopWtJSquefjGnRAp	1	high	2023-11-09 14:11:01.045	☔
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-09 17:21:30.289	🦥
spotify:track:7mobUfp1aL8A6CdugCMWft	1	BOTH	2023-11-09 22:55:32.44	🦥
spotify:track:3jksOdXCaDXyGiZ7L4YZbp	1	All Nighter	2023-11-11 13:33:15.71	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2023-11-11 13:48:55.666	🦥
spotify:track:5gnXJhg3zGHWvrgplrVrxH	1	Superstar	2023-11-11 13:53:04.948	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-11-11 13:54:58.596	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-11-11 13:55:01.659	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-11-11 14:01:56.113	🦥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2023-11-11 14:10:25.393	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-11-11 15:54:58.594	🦥
spotify:track:07QCSa14E5bfOOkTXR7oLD	1	Good Times	2023-11-11 15:58:11.809	🦥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-11-11 15:59:49.321	🦥
spotify:track:7mobUfp1aL8A6CdugCMWft	1	BOTH	2023-11-11 16:02:18.926	🦥
spotify:track:6zsFddikwwAfBr3USkYSDx	1	Radio	2023-11-11 17:29:36.387	🦥
spotify:track:3c9IKwzgIPcCweCl9so748	1	Underwater	2023-11-11 17:54:59.919	🦥
spotify:track:2gSSbcS1TJjD7XZ9y7nTBR	1	Queen	2023-11-11 18:02:52.614	🦥
spotify:track:57uNXnf4ciHYP4HktbIbzC	1	The Business	2023-11-11 21:27:23.456	🦥
spotify:track:1p0jBDjxORjYNJyAphBRpE	1	MONEY ON THE DASH	2023-11-11 21:29:53.747	🦥
spotify:track:7mobUfp1aL8A6CdugCMWft	1	BOTH	2023-11-11 21:43:17.696	🦥
spotify:track:22dUzMFttcR3uU17NcOAIv	1	Desire (with Sam Smith)	2023-11-12 20:41:55.78	🦥
spotify:track:1mvZErZBp7WZT3HfGBykao	1	Cry for You	2023-11-12 20:44:57.855	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-12 22:03:19.434	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-11-12 22:49:50.1	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	-1	Super Over	2023-11-12 22:49:53.611	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-12 22:49:56.455	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-11-12 23:14:58.438	🦥
spotify:track:0lQ2obtzmAsJu9xk3D6FqH	1	Friendships (Lost My Love)	2023-11-12 23:59:22.744	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2023-11-13 02:09:39.736	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-13 14:36:25.917	🦥
spotify:track:1p0jBDjxORjYNJyAphBRpE	1	MONEY ON THE DASH	2023-11-13 16:26:38.485	🦥
spotify:track:3duI7TT4kzLtoqf4PeUR3Z	1	Heart over Mind	2023-11-13 16:35:55.128	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-11-13 16:39:14.533	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-11-13 16:40:48.488	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-11-13 16:45:56.283	🦥
spotify:track:67eYAnkdTu8BMcIx29z26L	1	Makeba - Ian Asher Remix	2023-11-13 17:33:40.789	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-14 10:19:11.29	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-14 10:19:44.009	🦥
spotify:track:4OMJGnvZfDvsePyCwRGO7X	1	Houdini	2023-11-14 10:22:22.217	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-15 10:11:52.028	🦥
spotify:track:04R4oiYD4NU6ZkdwlaJSep	1	Bad Memories - Felix Jaehn Remix	2023-11-15 16:24:20.92	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-11-15 21:04:39.495	🦥
spotify:track:0cD9Wkmru9qmxuTAVq8CCM	1	Breathe	2023-11-16 12:13:45.425	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-11-16 12:16:45.767	🦥
spotify:track:3xxjYOFR1y7By2wNDS51XV	1	Solo	2023-11-16 12:24:59.898	🦥
spotify:track:4OgwXdylh75fHfwUzJTUqg	1	Rockstar	2023-11-16 12:28:27.279	🦥
spotify:track:19tO5sNxHHJcX7CUPMVykl	1	GIRL LIKE ME - twocolors remix	2023-11-16 12:39:54.126	🦥
spotify:track:56rpEOCBATYItSa4yPksfe	1	Little Girl Gone	2023-11-16 14:31:28.91	🦥
spotify:track:08bg5QA5OQ31h73avz0pXP	1	Stay	2023-11-16 14:34:32.535	🦥
spotify:track:17nNJNrJ8mrVA2xs5NkVsR	1	You Light Me Up	2023-11-16 14:40:03.868	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-11-16 14:44:57.422	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-11-16 14:45:00.546	🦥
spotify:track:0cD9Wkmru9qmxuTAVq8CCM	1	Breathe	2023-11-16 15:55:46.367	🦥
spotify:track:3dZVxuEUfr5L2N4joUItbc	1	Summer	2023-11-16 16:05:47.792	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2023-11-16 16:16:59.08	🦥
spotify:track:7v3ARZ3TuBQGFA6fKdyIOW	1	Overdose - Sait Esmeray Remix	2023-11-16 16:25:18.628	🦥
spotify:track:1X1DWw2pcNZ8zSub3uhlNz	1	Hall of Fame (feat. will.i.am)	2023-11-17 10:54:48.727	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-11-17 11:13:07.799	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-11-17 12:01:40.133	🦥
spotify:track:04R4oiYD4NU6ZkdwlaJSep	1	Bad Memories - Felix Jaehn Remix	2023-11-17 12:39:33.916	🦥
spotify:track:0YETkmonJ718JRimG5zJOm	1	2019	2023-11-17 12:46:32.375	🦥
spotify:track:2tJ4fnUrG5v7OmYVGq7sw8	1	Hopeless Heart	2023-11-17 12:54:45.508	🦥
spotify:track:3BuHeeCEqJ41hBkiK069RA	1	Yesterday	2023-11-17 12:57:10.65	🦥
spotify:track:3BuHeeCEqJ41hBkiK069RA	1	Yesterday	2023-11-17 12:57:12.026	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2023-11-17 12:57:43.889	🦥
spotify:track:7lD0SNdtIYGV30yxu4494I	1	What It Feels Like	2023-11-17 14:09:23.906	🦥
spotify:track:5gvEyl4OLhD6kJ3aZ43sd3	1	Heaven	2023-11-17 14:14:32.284	🦥
spotify:track:0u5Agy2RLORlgsxZ3INSJ5	1	Stayin' Alive VS 50 C Tik Tok - Remix	2023-11-17 23:13:06.247	🦥
spotify:track:6sGiMZisNpN8kJbFyBC5x7	1	crossed the line	2023-11-17 23:42:37.288	🦥
spotify:track:6sGiMZisNpN8kJbFyBC5x7	1	crossed the line	2023-11-17 23:42:55.265	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-11-17 23:48:17.3	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-11-18 00:12:23.006	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2023-11-18 00:29:06.24	🦥
spotify:track:04R4oiYD4NU6ZkdwlaJSep	1	Bad Memories - Felix Jaehn Remix	2023-11-18 00:34:46.068	🦥
spotify:track:4OMJGnvZfDvsePyCwRGO7X	1	Houdini	2023-11-18 00:36:48.667	🦥
spotify:track:4OMJGnvZfDvsePyCwRGO7X	1	Houdini	2023-11-18 00:36:52.518	🦥
spotify:track:4OMJGnvZfDvsePyCwRGO7X	1	Houdini	2023-11-18 00:39:01.543	🦥
spotify:track:4v8tyFARGc8p6z3Ri0xPLB	1	Don't Touch My Clogs	2023-11-18 01:29:46.967	🦀
spotify:track:0u5Agy2RLORlgsxZ3INSJ5	1	Stayin' Alive VS 50 C Tik Tok - Remix	2023-11-18 01:46:59.214	🦀
spotify:track:3xxjYOFR1y7By2wNDS51XV	-1	Solo	2023-11-18 01:47:05.528	🦥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2023-11-18 01:50:23.09	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-11-18 01:50:37.868	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-11-18 13:16:47.227	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2023-11-18 14:24:54.309	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-11-18 21:35:28.137	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-19 00:30:24.249	🦥
spotify:track:17nNJNrJ8mrVA2xs5NkVsR	1	You Light Me Up	2023-11-21 22:23:02.838	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-11-21 22:25:09.839	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-11-21 22:25:11.302	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2023-11-21 22:42:19.163	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2023-11-21 23:06:13.417	🦥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2023-11-21 23:06:27.096	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-21 23:07:34.686	🦥
spotify:track:67eYAnkdTu8BMcIx29z26L	1	Makeba - Ian Asher Remix	2023-11-21 23:27:06.331	🦥
spotify:track:4OMJGnvZfDvsePyCwRGO7X	1	Houdini	2023-11-21 23:34:08.927	🦥
spotify:track:17nNJNrJ8mrVA2xs5NkVsR	1	You Light Me Up	2023-11-22 16:53:29.183	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2023-11-22 17:20:54.501	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-11-22 17:23:35.922	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-11-22 17:24:33.446	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-11-22 17:35:19.735	🦥
spotify:track:6JOlNkT0QdHeZB0wPbI9IR	1	Turn Me On (feat. Nicki Minaj)	2023-11-22 20:38:07.598	💿
spotify:track:3ale59L81ZYbjj9sm5EIIR	1	Homewrecker	2023-11-23 18:55:14.291	🦥
spotify:track:0VO8gYVDSwM1Qdd2GsMoYK	1	Moth To A Flame (with The Weeknd)	2023-11-25 15:50:39.526	🦥
spotify:track:4OdfUasq027O3IY5r0Q1ZB	1	Troubles	2023-11-25 15:53:09.829	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2023-11-25 15:53:54.639	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2023-11-25 15:53:58.76	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2023-11-25 15:54:00.957	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-11-25 16:44:44.105	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-11-25 17:00:04.672	🦥
spotify:track:0oPdaY4dXtc3ZsaG17V972	1	Feliz Navidad	2023-11-28 15:02:23.946	🦥
spotify:track:46pF1zFimM582ss1PrMy68	1	Christmas (Baby Please Come Home)	2023-11-28 15:07:43.971	🦥
spotify:track:75dfH68JDisE8dDaD4KlVY	1	Little Saint Nick	2023-11-28 15:47:20.071	🦥
spotify:track:3QIoEi8Enr9uHffwInGIsC	1	Please Come Home for Christmas - 2013 Remaster	2023-11-28 15:53:22.022	🦥
spotify:track:2pnPe4pJtq7689i5ydzvJJ	1	Run Rudolph Run	2023-11-28 16:59:38.777	🦥
spotify:track:0wI0S42Cg41DVGqIIVimTM	1	Blinding Lights	2023-11-29 12:19:28.667	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-11-30 12:05:05.283	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-11-30 12:05:07.081	🦥
spotify:track:0Q0U4Z2zjSOGoI5aeZz6n6	1	Bad Girl	2023-11-30 12:09:49.888	🦥
spotify:track:1UNWD6R5EOFklUHKZZvww2	1	She Said	2023-11-30 12:12:34.972	🦥
spotify:track:2ptbBxMTCbFBefVMXwrdSC	1	Dress	2023-11-30 12:19:01.967	🔥
spotify:track:2ptbBxMTCbFBefVMXwrdSC	1	Dress	2023-11-30 12:19:02.595	🦥
spotify:track:3XPl3dGn1oWe7VmKoB8nhU	1	Psycho - Joel Corry Remix	2023-11-30 12:20:14.725	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-11-30 12:23:30.895	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-11-30 12:23:32.656	🦥
spotify:track:5VahNEYKPpQ65vXYipahyJ	1	F U Anthem	2023-11-30 12:35:00.404	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-11-30 12:38:16.999	🦥
spotify:track:2oPEiTNB4vuSAj0EQN5TlS	1	greedy - Alok remix	2023-11-30 12:40:16.926	🦥
spotify:track:6eutgX6jfXAsjTXgQtCtYV	1	girls girls girls	2023-11-30 12:42:31.533	🦥
spotify:track:6sGiMZisNpN8kJbFyBC5x7	1	crossed the line	2023-11-30 13:25:48.781	🦥
spotify:track:6sGiMZisNpN8kJbFyBC5x7	1	crossed the line	2023-11-30 13:27:27.977	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-11-30 13:35:12.413	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-11-30 13:35:13.795	🦥
spotify:track:6sGiMZisNpN8kJbFyBC5x7	1	crossed the line	2023-11-30 14:25:26.027	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-11-30 14:28:56.867	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-11-30 14:28:59.42	🦥
spotify:track:5VahNEYKPpQ65vXYipahyJ	1	F U Anthem	2023-11-30 14:51:35.104	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-11-30 15:02:13.047	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-11-30 15:02:17.639	🦥
spotify:track:3wrWJ4cpGWSL2JZieVXhdR	1	lay all your love on me	2023-11-30 15:15:08.809	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-11-30 15:17:54.827	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-12-01 10:19:54.436	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-12-01 10:19:56.558	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-01 11:14:22.588	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-01 11:14:24.378	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-01 11:15:26.09	🦥
spotify:track:67eYAnkdTu8BMcIx29z26L	1	Makeba - Ian Asher Remix	2023-12-02 20:58:45.631	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2023-12-02 21:09:13.116	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-02 21:21:21.012	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-02 21:21:22.743	🦥
spotify:track:6sGiMZisNpN8kJbFyBC5x7	1	crossed the line	2023-12-02 21:50:50.249	🦥
spotify:track:4OMJGnvZfDvsePyCwRGO7X	1	Houdini	2023-12-02 22:19:08.056	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-04 12:46:07.416	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-12-04 12:49:59.065	🦥
spotify:track:17nNJNrJ8mrVA2xs5NkVsR	1	You Light Me Up	2023-12-04 12:52:29.976	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-12-04 12:54:16.556	🦥
spotify:track:6sGiMZisNpN8kJbFyBC5x7	1	crossed the line	2023-12-04 13:00:35.942	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-04 13:03:55.926	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-12-04 13:06:52.338	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2023-12-04 13:08:29.611	🦥
spotify:track:4OMJGnvZfDvsePyCwRGO7X	1	Houdini	2023-12-04 13:10:25.915	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-12-04 13:16:31.369	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2023-12-04 13:16:35.876	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-12-04 13:41:28.028	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-12-04 14:04:53.517	🦥
spotify:track:3duI7TT4kzLtoqf4PeUR3Z	1	Heart over Mind	2023-12-04 14:07:24.898	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-12-04 14:10:24.989	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-12-04 14:12:55.948	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-12-04 14:32:19.653	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-12-04 14:33:02.454	🦥
spotify:track:1WFy81RbU5QhOeYVgIzVPe	1	Weekend On A Tuesday	2023-12-04 14:42:51.782	🦥
spotify:track:3GYlQmwfBDo7imFyGPhrl7	1	Say My Name	2023-12-04 14:45:47.548	🦥
spotify:track:3XPl3dGn1oWe7VmKoB8nhU	1	Psycho - Joel Corry Remix	2023-12-06 18:18:38.8	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-12-07 13:55:48.883	🦥
spotify:track:6SpUnFjNfyFgyLRm65b2G6	1	ORAL HEX (spell on you)	2023-12-07 14:00:36.672	🦥
spotify:track:1p0jBDjxORjYNJyAphBRpE	1	MONEY ON THE DASH	2023-12-07 14:04:19.916	🦥
spotify:track:3FkyJH5uE5XmN3voocBcYK	1	Private Life	2023-12-07 14:18:53.611	🦥
spotify:track:749rod7GCmj0OVdumGfzVq	1	STRUT	2023-12-07 14:27:45.561	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-12-07 14:40:16.466	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-07 14:47:20.204	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-07 14:47:22.448	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-07 14:49:32.189	🦥
spotify:track:45JYEmfoWSpCA3Paut7YXE	1	MIDDLE OF THE NIGHT	2023-12-07 14:55:14.072	🦥
spotify:track:1STwdocp5GlE0aLPT6CaJ6	1	The Difference	2023-12-07 15:07:51.249	🦥
spotify:track:7zZDRq9CLl37OAywR39KVy	1	Dirty Thoughts	2023-12-07 16:06:52.683	🦥
spotify:track:3duI7TT4kzLtoqf4PeUR3Z	1	Heart over Mind	2023-12-07 18:30:26.156	🦥
spotify:track:2FPfeYlrbSBR8PwCU0zaqq	1	Have Yourself A Merry Little Christmas - Remastered 1999	2023-12-08 14:14:57.79	🧑‍🎄
spotify:track:10edu09bQbiKQuWg2OM5fi	1	God Rest Ye Merry Gentlemen	2023-12-08 14:17:41.926	🧑‍🎄
spotify:track:10edu09bQbiKQuWg2OM5fi	1	God Rest Ye Merry Gentlemen	2023-12-08 14:19:05.333	🧑‍🎄
spotify:track:10edu09bQbiKQuWg2OM5fi	1	God Rest Ye Merry Gentlemen	2023-12-08 14:19:07.243	🧑‍🎄
spotify:track:10edu09bQbiKQuWg2OM5fi	1	God Rest Ye Merry Gentlemen	2023-12-08 14:19:07.775	🧑‍🎄
spotify:track:04vLj9QUXoKdRlsp3gkURo	1	Mele Kalikimaka (Merry Christmas)	2023-12-08 14:19:32.515	🧑‍🎄
spotify:track:04vLj9QUXoKdRlsp3gkURo	1	Mele Kalikimaka (Merry Christmas)	2023-12-08 14:20:22.495	🧑‍🎄
spotify:track:4so0Wek9Ig1p6CRCHuINwW	1	White Christmas - 1947 Version	2023-12-08 14:27:26.514	🧑‍🎄
spotify:track:2FRnf9qhLbvw8fu4IBXx78	1	Last Christmas	2023-12-08 14:31:16.728	🧑‍🎄
spotify:track:4tHqQMWSqmL6YjXwsqthDI	1	Carol of the Bells	2023-12-08 14:57:11.52	🧑‍🎄
spotify:track:5xlS0QkVrSH7ssEbBgBzbM	1	Little Saint Nick - 1991 Remix	2023-12-08 15:15:50.407	🧑‍🎄
spotify:track:47otoIkhx3fkdivEXL5OB6	1	Rudolph The Red-Nosed Reindeer	2023-12-08 15:18:33.512	🧑‍🎄
spotify:track:3zJw3rugfpVrmBeDDnUYzy	1	Happy Xmas (War Is Over) - Remastered 2010	2023-12-08 15:31:28.196	🧑‍🎄
spotify:track:3zJw3rugfpVrmBeDDnUYzy	1	Happy Xmas (War Is Over) - Remastered 2010	2023-12-08 15:31:30.881	🧑‍🎄
spotify:track:0O4vuJynWVVdyvoHvZtnk3	1	Christmas Canon	2023-12-08 15:45:06.038	🧑‍🎄
spotify:track:7zZDRq9CLl37OAywR39KVy	1	Dirty Thoughts	2023-12-08 16:40:35.069	🦥
spotify:track:749rod7GCmj0OVdumGfzVq	1	STRUT	2023-12-08 16:48:41.369	🦥
spotify:track:749rod7GCmj0OVdumGfzVq	1	STRUT	2023-12-08 16:48:43.842	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-12-08 20:25:34.162	🦥
spotify:track:3tIjJY43mDAhMZxSuDHvjy	1	Lovefool (feat. Pia Mia)	2023-12-09 14:44:42.451	🦥
spotify:track:5q45fpmnIeg0aen9agRcKN	1	Static Body	2023-12-09 17:16:36.754	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-12-09 18:00:59.484	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-09 18:05:35.528	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-12-09 18:11:15.403	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-12-09 18:11:16.142	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2023-12-09 19:01:38.048	🦥
spotify:track:5seWZTjT0U8a7cy3Y5NJQ9	1	Like Gold	2023-12-09 19:06:56.076	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2023-12-09 23:45:07.765	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-12-10 14:52:44.458	🦥
spotify:track:1UNWD6R5EOFklUHKZZvww2	1	She Said	2023-12-10 14:55:12.341	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-12-10 15:17:48.713	🦥
spotify:track:749rod7GCmj0OVdumGfzVq	1	STRUT	2023-12-10 15:22:28.714	🦥
spotify:track:0iBBOvVQ8QCK7F95boCn3C	1	CHARGER	2023-12-10 15:24:21.911	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-12-10 15:29:14.789	🦥
spotify:track:56rpEOCBATYItSa4yPksfe	1	Little Girl Gone	2023-12-10 15:42:45.176	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-10 16:20:07.008	🦥
spotify:track:2NHtAJhXVOnSIN2lZhbpWz	1	Space and Time	2023-12-10 16:26:49.873	🦥
spotify:track:1STwdocp5GlE0aLPT6CaJ6	1	The Difference	2023-12-10 16:42:20.702	🦥
spotify:track:1STwdocp5GlE0aLPT6CaJ6	1	The Difference	2023-12-10 17:07:38.64	🦥
spotify:track:0Q0U4Z2zjSOGoI5aeZz6n6	1	Bad Girl	2023-12-10 17:47:02.009	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-12-10 17:59:32.493	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-12-10 18:06:22.957	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-12-10 19:36:54.047	🦥
spotify:track:4FWbsd91QSvgr1dSWwW51e	1	TRUSTFALL	2023-12-10 20:53:52.451	🦥
spotify:track:3duI7TT4kzLtoqf4PeUR3Z	1	Heart over Mind	2023-12-10 23:11:05.32	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-12-11 11:46:33.905	🦥
spotify:track:2x5nPvRLL92jXFvpfkIBLh	1	God On The Weekend	2023-12-11 11:58:46.696	🦥
spotify:track:3c9IKwzgIPcCweCl9so748	1	Underwater	2023-12-11 12:55:05.852	🦥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-12-11 12:59:05.861	🦥
spotify:track:7CH8J4ulT49UfZwSDSkSZA	1	i miss u (with Au/Ra)	2023-12-11 13:02:56.733	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-12-11 13:06:46.458	🦥
spotify:track:66W1rVTnEv86dIkFhoiElg	1	Secrets	2023-12-11 13:11:05.683	🦥
spotify:track:5YdnOm5990Kfq1Jodws98B	1	Call It Love	2023-12-11 14:21:38.89	🦥
spotify:track:0siYMEsGrzzzlWLXK5zJfS	1	BED	2023-12-11 14:22:27.199	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2023-12-11 14:24:58.728	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2023-12-11 15:56:11.607	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2023-12-11 16:11:12.975	🦥
spotify:track:2522T0x7yLWMwA5Uw0s2A7	1	Everybody Cries	2023-12-11 16:18:24.073	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2023-12-11 16:22:44.895	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2023-12-11 16:24:25.398	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-11 16:26:26.012	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-11 16:26:27.41	🦥
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2023-12-11 16:32:31.684	🦥
spotify:track:47TOnN2ffRwsEvWsTZ6IaI	1	Shake That	2023-12-11 16:48:55.185	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2023-12-11 17:27:17.148	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2023-12-11 17:27:18.648	🦥
spotify:track:7voJOTOqLto0HyQltECuzh	1	The Way I Are	2023-12-11 17:40:29.483	🦥
spotify:track:5dodg5WPm1MZ7d1O3YuvVQ	-1	Ghost Town (Lucas Estrada Uptempo Remix)	2023-12-11 17:41:37.518	🦥
spotify:track:5dodg5WPm1MZ7d1O3YuvVQ	1	Ghost Town (Lucas Estrada Uptempo Remix)	2023-12-11 17:41:37.986	🦥
spotify:track:2522T0x7yLWMwA5Uw0s2A7	1	Everybody Cries	2023-12-11 18:38:10.491	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2023-12-11 18:41:40.667	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2023-12-11 18:41:51.732	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-11 18:46:53.391	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-11 18:46:54.766	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-11 18:46:56.18	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-11 19:51:11.011	🦥
spotify:track:2pXpURmn6zC5ZYDMms6fwa	1	It's Beginning to Look a Lot Like Christmas (with Mitchell Ayres & His Orchestra)	2023-12-12 11:13:00.741	🧑‍🎄
spotify:track:2pXpURmn6zC5ZYDMms6fwa	1	It's Beginning to Look a Lot Like Christmas (with Mitchell Ayres & His Orchestra)	2023-12-12 11:13:33.248	🧑‍🎄
spotify:track:2pXpURmn6zC5ZYDMms6fwa	1	It's Beginning to Look a Lot Like Christmas (with Mitchell Ayres & His Orchestra)	2023-12-12 11:15:19.131	🧑‍🎄
spotify:track:2GapxG7BxK55ihQRAlR39e	1	(There's No Place Like) Home for the Holidays - 1959 Version	2023-12-12 11:51:00.195	🧑‍🎄
spotify:track:2GapxG7BxK55ihQRAlR39e	1	(There's No Place Like) Home for the Holidays - 1959 Version	2023-12-12 11:51:01.511	🧑‍🎄
spotify:track:2FRnf9qhLbvw8fu4IBXx78	1	Last Christmas	2023-12-12 12:01:37.07	🧑‍🎄
spotify:track:2EjXfH91m7f8HiJN1yQg97	1	Rockin' Around The Christmas Tree	2023-12-12 12:01:43.978	🧑‍🎄
spotify:track:5a1iz510sv2W9Dt1MvFd5R	1	It's Beginning to Look a Lot like Christmas	2023-12-12 12:47:39.224	🧑‍🎄
spotify:track:5hslUAKq9I9CG2bAulFkHN	1	It's the Most Wonderful Time of the Year	2023-12-12 13:00:02.269	🧑‍🎄
spotify:track:4kKdvXD0ez7jp1296JmAts	1	Let It Snow! Let It Snow! Let It Snow! (with The B. Swanson Quartet)	2023-12-12 13:30:06.587	🧑‍🎄
spotify:track:47ohYW8e7dxCYn9qbUMBCI	1	Christmas (Baby Please Come Home)	2023-12-12 13:33:48.695	🧑‍🎄
spotify:track:7uoFMmxln0GPXQ0AcCBXRq	1	Snowman	2023-12-12 13:34:03.97	🧑‍🎄
spotify:track:7xapw9Oy21WpfEcib2ErSA	1	Mistletoe	2023-12-12 13:39:04.697	🧑‍🎄
spotify:track:18uSfZqFBxQFi8CsXOIbhy	1	DJ Play A Christmas Song	2023-12-12 13:45:56.598	🧑‍🎄
spotify:track:77khP2fIVhSW23NwxrRluh	1	A Holly Jolly Christmas	2023-12-12 13:50:49.956	🧑‍🎄
spotify:track:77khP2fIVhSW23NwxrRluh	1	A Holly Jolly Christmas	2023-12-12 13:50:54.192	🧑‍🎄
spotify:track:77khP2fIVhSW23NwxrRluh	1	A Holly Jolly Christmas	2023-12-12 13:50:54.929	🧑‍🎄
spotify:track:2TE4xW3ImvpltVU0cPcKUn	1	Merry Christmas Everyone	2023-12-12 14:02:46.086	🧑‍🎄
spotify:track:4tHqQMWSqmL6YjXwsqthDI	1	Carol of the Bells	2023-12-12 16:58:26.108	🧑‍🎄
spotify:track:7uoFMmxln0GPXQ0AcCBXRq	1	Snowman	2023-12-12 16:59:32.186	🧑‍🎄
spotify:track:3Z3QhZAZpqwZa1phsbQ3JZ	1	Driving Home for Christmas	2023-12-12 17:01:58.354	🧑‍🎄
spotify:track:4tHqQMWSqmL6YjXwsqthDI	1	Carol of the Bells	2023-12-12 17:06:15.405	🧑‍🎄
spotify:track:2EjXfH91m7f8HiJN1yQg97	1	Rockin' Around The Christmas Tree	2023-12-12 17:07:39.639	🧑‍🎄
spotify:track:7vQbuQcyTflfCIOu3Uzzya	1	Jingle Bell Rock	2023-12-12 17:13:14.491	🧑‍🎄
spotify:track:7fUYUcWy853HS8YJn0b3Sr	1	Sleigh Ride	2023-12-12 17:15:12.403	🧑‍🎄
spotify:track:6tjituizSxwSmBB5vtgHZE	1	Holly Jolly Christmas	2023-12-12 17:18:43.402	🧑‍🎄
spotify:track:3WMj8moIAXJhHsyLaqIIHI	1	Something in the Orange	2023-12-12 17:20:23.795	🦥
spotify:track:5xlS0QkVrSH7ssEbBgBzbM	1	Little Saint Nick - 1991 Remix	2023-12-12 17:24:07.693	🧑‍🎄
spotify:track:5xlS0QkVrSH7ssEbBgBzbM	1	Little Saint Nick - 1991 Remix	2023-12-12 17:24:08.632	🧑‍🎄
spotify:track:5xlS0QkVrSH7ssEbBgBzbM	1	Little Saint Nick - 1991 Remix	2023-12-12 17:24:09.166	🧑‍🎄
spotify:track:4so0Wek9Ig1p6CRCHuINwW	1	White Christmas - 1947 Version	2023-12-12 17:36:14.9	🧑‍🎄
spotify:track:2uFaJJtFpPDc5Pa95XzTvg	1	Let It Snow! Let It Snow! Let It Snow!	2023-12-12 17:38:56.541	🧑‍🎄
spotify:track:77khP2fIVhSW23NwxrRluh	1	A Holly Jolly Christmas	2023-12-12 17:40:35.261	🧑‍🎄
spotify:track:77khP2fIVhSW23NwxrRluh	1	A Holly Jolly Christmas	2023-12-12 17:40:42.95	🧑‍🎄
spotify:track:77khP2fIVhSW23NwxrRluh	1	A Holly Jolly Christmas	2023-12-12 17:40:43.701	🧑‍🎄
spotify:track:46pF1zFimM582ss1PrMy68	1	Christmas (Baby Please Come Home)	2023-12-12 17:43:44.887	🧑‍🎄
spotify:track:46pF1zFimM582ss1PrMy68	1	Christmas (Baby Please Come Home)	2023-12-12 17:43:49.318	🧑‍🎄
spotify:track:5hslUAKq9I9CG2bAulFkHN	1	It's the Most Wonderful Time of the Year	2023-12-12 17:47:12.855	🧑‍🎄
spotify:track:5hslUAKq9I9CG2bAulFkHN	1	It's the Most Wonderful Time of the Year	2023-12-12 17:47:13.918	🧑‍🎄
spotify:track:25leEEaz1gIpp7o21Fqyjo	1	Here Comes Santa Claus (Right Down Santa Claus Lane) - 1947 Version	2023-12-12 20:32:28.68	🧑‍🎄
spotify:track:04vLj9QUXoKdRlsp3gkURo	1	Mele Kalikimaka (Merry Christmas)	2023-12-12 20:37:11.52	🧑‍🎄
spotify:track:38xhBO2AKrJnjdjVnhJES6	1	This Christmas	2023-12-12 20:59:19.446	🧑‍🎄
spotify:track:3duI7TT4kzLtoqf4PeUR3Z	1	Heart over Mind	2023-12-13 00:27:38.256	🦥
spotify:track:0247StOpd3AkeBQzANX4Zf	1	Do They Know It's Christmas? - 1984 Version	2023-12-13 11:28:36.97	🧑‍🎄
spotify:track:0247StOpd3AkeBQzANX4Zf	1	Do They Know It's Christmas? - 1984 Version	2023-12-13 11:30:22.719	🧑‍🎄
spotify:track:0bYg9bo50gSsH3LtXe2SQn	1	All I Want for Christmas Is You	2023-12-13 11:36:45.722	🧑‍🎄
spotify:track:10edu09bQbiKQuWg2OM5fi	1	God Rest Ye Merry Gentlemen	2023-12-13 11:45:26.703	🧑‍🎄
spotify:track:04vLj9QUXoKdRlsp3gkURo	1	Mele Kalikimaka (Merry Christmas)	2023-12-13 11:52:41.064	🧑‍🎄
spotify:track:1GjQLnGAfpv3rWW1K9Ll8p	1	Winter Wonderland	2023-12-13 11:59:19.952	🧑‍🎄
spotify:track:2pnPe4pJtq7689i5ydzvJJ	1	Run Rudolph Run	2023-12-13 14:07:35.841	🧑‍🎄
spotify:track:6sGiMZisNpN8kJbFyBC5x7	1	crossed the line	2023-12-13 18:23:43.57	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-13 18:25:59.299	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-13 18:26:19.673	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-12-13 18:32:40.7	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-12-13 18:35:01.214	🦥
spotify:track:3duI7TT4kzLtoqf4PeUR3Z	1	Heart over Mind	2023-12-13 18:44:53.871	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-12-13 19:03:45.992	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2023-12-13 19:26:00.633	🦥
spotify:track:749rod7GCmj0OVdumGfzVq	1	STRUT	2023-12-13 19:35:07.478	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2023-12-14 00:12:30.078	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-14 01:10:05.091	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-12-14 14:22:08.461	🦥
spotify:track:3tIjJY43mDAhMZxSuDHvjy	1	Lovefool (feat. Pia Mia)	2023-12-14 14:26:41.699	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-12-14 14:28:05.598	🦥
spotify:track:4Bpyapy2YVNAQBUOBp17uu	1	Come Into My World (with NERVO)	2023-12-14 15:36:37.892	🦥
spotify:track:5dry5tz8yLcLuOJ3l6ZEQd	1	Used to Know Me	2023-12-14 15:57:23.29	🦥
spotify:track:2ljUUoqlnRUGGa7bmpvevC	1	DJ Play A Christmas Song	2023-12-14 18:05:23.35	🧑‍🎄
spotify:track:1qXFfxYo6lyVk8Cgeuyuu2	1	Can Can (Hardstyle Mix)	2023-12-14 18:08:36.553	🧑‍🎄
spotify:track:2mlGPkAx4kwF8Df0GlScsC	1	Buttercup	2023-12-15 12:16:09.467	🦀
spotify:track:2mlGPkAx4kwF8Df0GlScsC	1	Buttercup	2023-12-15 12:17:53.677	🌌
spotify:track:4z8sz6E4YyFuEkv5o7IJni	1	Mary, Did You Know?	2023-12-15 12:30:13.761	🧑‍🎄
spotify:track:3wrWJ4cpGWSL2JZieVXhdR	1	lay all your love on me	2023-12-17 22:32:20.391	🦥
spotify:track:7voJOTOqLto0HyQltECuzh	1	The Way I Are	2023-12-17 23:07:17.643	🦥
spotify:track:7voJOTOqLto0HyQltECuzh	1	The Way I Are	2023-12-17 23:07:51.242	🦥
spotify:track:2NHtAJhXVOnSIN2lZhbpWz	1	Space and Time	2023-12-17 23:51:05.138	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2023-12-17 23:53:40.023	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2023-12-17 23:53:41.405	🦥
spotify:track:0Q0U4Z2zjSOGoI5aeZz6n6	1	Bad Girl	2023-12-17 23:59:32.189	🦥
spotify:track:17nNJNrJ8mrVA2xs5NkVsR	1	You Light Me Up	2023-12-18 00:20:59.238	🦥
spotify:track:17nNJNrJ8mrVA2xs5NkVsR	1	You Light Me Up	2023-12-18 00:21:00.321	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2023-12-18 00:40:50.862	🦥
spotify:track:47TOnN2ffRwsEvWsTZ6IaI	1	Shake That	2023-12-18 00:42:26.666	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-12-18 00:52:20.855	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-12-18 00:52:22.202	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-12-18 00:56:28.672	🦥
spotify:track:4SKyal51xIIaySBVNh3fJn	1	Supersonic	2023-12-18 00:56:29.6	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-18 01:18:59.816	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-18 01:19:00.683	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-18 01:19:01.796	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-18 01:20:03.852	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-18 01:20:05.325	🦥
spotify:track:10edu09bQbiKQuWg2OM5fi	1	God Rest Ye Merry Gentlemen	2023-12-18 12:48:54.921	🦥
spotify:track:5aDoUmxBsbdpS16alksb5Z	1	Do You Hear What I Hear? - Remastered 2006	2023-12-18 12:51:22.95	🦥
spotify:track:1qXFfxYo6lyVk8Cgeuyuu2	-1	Can Can (Hardstyle Mix)	2023-12-18 13:02:21.736	🧑‍🎄
spotify:track:3P3i2ratUjex3HJEF8aAVi	-1	Hurricane	2023-12-18 13:25:59.639	🦥
spotify:track:3P3i2ratUjex3HJEF8aAVi	1	Hurricane	2023-12-18 13:26:01.635	🦥
spotify:track:3P3i2ratUjex3HJEF8aAVi	1	Hurricane	2023-12-18 13:26:03.929	🦥
spotify:track:0lQ2obtzmAsJu9xk3D6FqH	1	Friendships (Lost My Love)	2023-12-18 13:26:32.531	🦥
spotify:track:7fZBQnc0zXwVybgCIrQQil	1	Belly Dancer	2023-12-18 13:29:43.485	🦥
spotify:track:1M8U7UHu9rhwumTu8IrqeD	1	Praising You (feat. Fatboy Slim)	2023-12-18 13:34:57.297	🦥
spotify:track:3lFwSDBCNo3CcN09UppUnm	1	Hold Me Closer	2023-12-18 13:39:02.284	🦥
spotify:track:3JhgPs7rbmzLBWRvHlel8U	1	Bad Memories	2023-12-18 14:03:11.439	🦥
spotify:track:3JhgPs7rbmzLBWRvHlel8U	1	Bad Memories	2023-12-18 14:03:12.994	🦥
spotify:track:2RRpaU7jFVcwo23pthdnBv	1	Head Shoulders Knees & Toes (feat. Norma Jean Martine)	2023-12-18 14:14:16.764	🦊
spotify:track:2RRpaU7jFVcwo23pthdnBv	-1	Head Shoulders Knees & Toes (feat. Norma Jean Martine)	2023-12-18 14:14:20.778	🦊
spotify:track:2RRpaU7jFVcwo23pthdnBv	1	Head Shoulders Knees & Toes (feat. Norma Jean Martine)	2023-12-18 14:14:22.361	🦥
spotify:track:6zSpb8dQRaw0M1dK8PBwQz	1	Cold Heart - PNAU Remix	2023-12-18 14:16:12.641	🦥
spotify:track:3kcKlOkQQEPVwxwljbGJ5p	1	Kernkraft 400 (A Better Day)	2023-12-18 14:20:42.94	🦥
spotify:track:51Of5p3lKZeOg6itfs4og4	1	Lovefool	2023-12-18 14:22:49.096	🦥
spotify:track:1sOfNRe7zyQkJj0cY6z2k8	1	Tell It To My Heart	2023-12-18 14:25:36.784	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-12-18 21:29:25.637	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-12-18 21:32:59.337	🦥
spotify:track:4FWbsd91QSvgr1dSWwW51e	1	TRUSTFALL	2023-12-18 21:43:17.387	🦥
spotify:track:45JYEmfoWSpCA3Paut7YXE	1	MIDDLE OF THE NIGHT	2023-12-18 22:40:25.412	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-18 22:40:47.907	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-18 22:40:48.588	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-18 22:40:49.511	🦥
spotify:track:4OMJGnvZfDvsePyCwRGO7X	1	Houdini	2023-12-18 22:57:55.118	🦥
spotify:track:2NHtAJhXVOnSIN2lZhbpWz	1	Space and Time	2023-12-18 23:01:25.689	🦥
spotify:track:3c9IKwzgIPcCweCl9so748	1	Underwater	2023-12-18 23:18:45.918	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2023-12-18 23:34:51.646	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2023-12-19 13:49:43.679	🦥
spotify:track:47TOnN2ffRwsEvWsTZ6IaI	1	Shake That	2023-12-19 13:51:12.039	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2023-12-19 13:54:53.107	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-12-19 13:59:38.593	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-19 14:36:04.31	🦥
spotify:track:6SpUnFjNfyFgyLRm65b2G6	1	ORAL HEX (spell on you)	2023-12-19 14:38:27.942	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-19 19:11:33.433	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-12-20 00:19:38.34	🦥
spotify:track:77khP2fIVhSW23NwxrRluh	1	A Holly Jolly Christmas	2023-12-21 12:23:37.685	🧑‍🎄
spotify:track:1Kcy7qSbf6un30zIkxGVew	1	Here We Come a-Caroling / We Wish You a Merry Christmas	2023-12-21 13:15:47.951	🧑‍🎄
spotify:track:33EcmYsTQVIGRGnGPOfTwu	1	Linus And Lucy	2023-12-21 13:26:59.768	🧑‍🎄
spotify:track:0H1zX27yxoDrsrQA1hk5Uq	1	O Come All Ye Faithful	2023-12-21 13:41:05.371	🧑‍🎄
spotify:track:3QiAAp20rPC3dcAtKtMaqQ	1	Blue Christmas	2023-12-21 13:45:22.518	🧑‍🎄
spotify:track:5hslUAKq9I9CG2bAulFkHN	1	It's the Most Wonderful Time of the Year	2023-12-21 13:47:16.281	🧑‍🎄
spotify:track:75dfH68JDisE8dDaD4KlVY	1	Little Saint Nick	2023-12-21 13:53:44.293	🧑‍🎄
spotify:track:7vQbuQcyTflfCIOu3Uzzya	1	Jingle Bell Rock	2023-12-21 13:59:13.844	🧑‍🎄
spotify:track:77khP2fIVhSW23NwxrRluh	1	A Holly Jolly Christmas	2023-12-21 15:06:00.956	🧑‍🎄
spotify:track:2pnPe4pJtq7689i5ydzvJJ	1	Run Rudolph Run	2023-12-21 15:11:27.134	🧑‍🎄
spotify:track:46pF1zFimM582ss1PrMy68	1	Christmas (Baby Please Come Home)	2023-12-21 17:09:29.614	🧑‍🎄
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-12-21 19:26:52.38	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-12-21 19:33:02.045	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-12-21 19:46:04.31	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2023-12-21 20:03:04.298	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-12-21 20:25:44.66	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-21 20:32:41.918	🦥
spotify:track:6SpUnFjNfyFgyLRm65b2G6	1	ORAL HEX (spell on you)	2023-12-25 21:36:29.979	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2023-12-25 21:40:34.736	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2023-12-25 21:42:10.12	🦥
spotify:track:3JhgPs7rbmzLBWRvHlel8U	1	Bad Memories	2023-12-25 21:46:22.409	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-25 21:54:21.704	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-25 21:54:22.437	🦥
spotify:track:1sOfNRe7zyQkJj0cY6z2k8	1	Tell It To My Heart	2023-12-25 22:02:42.654	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-12-25 22:09:55.722	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2023-12-25 22:14:22.303	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2023-12-25 22:22:21.721	🦥
spotify:track:7voJOTOqLto0HyQltECuzh	1	The Way I Are	2023-12-25 22:26:52.691	🦥
spotify:track:7voJOTOqLto0HyQltECuzh	1	The Way I Are	2023-12-25 22:26:53.728	🦥
spotify:track:7voJOTOqLto0HyQltECuzh	1	The Way I Are	2023-12-25 22:26:54.785	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-12-25 22:29:13.185	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-12-25 22:29:14.133	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2023-12-25 22:29:15.262	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2023-12-25 22:32:09.142	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-12-25 22:42:40.631	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2023-12-25 22:42:42.12	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2023-12-25 22:48:17.246	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2023-12-25 22:54:58.806	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2023-12-25 22:59:33.053	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-25 23:03:56.184	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-25 23:03:57.259	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-25 23:03:58.617	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2023-12-25 23:03:59.675	🦥
spotify:track:3P3i2ratUjex3HJEF8aAVi	1	Hurricane	2023-12-25 23:14:03.902	😈
spotify:track:3P3i2ratUjex3HJEF8aAVi	1	Hurricane	2023-12-25 23:14:05.136	🦥
spotify:track:2NHtAJhXVOnSIN2lZhbpWz	1	Space and Time	2023-12-25 23:20:58.722	🦥
spotify:track:4OMJGnvZfDvsePyCwRGO7X	1	Houdini	2023-12-25 23:31:51.206	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-26 00:17:19.105	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2023-12-26 01:03:58.82	🦥
spotify:track:7voJOTOqLto0HyQltECuzh	1	The Way I Are	2023-12-26 01:19:03.453	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2023-12-26 01:27:30.39	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2023-12-28 19:17:52.245	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2023-12-28 19:25:49.976	🦥
spotify:track:7C7yqFTM0ncyJ04GIKrxdV	1	Anything Could Happen	2023-12-28 23:56:35.386	🦥
spotify:track:0bYg9bo50gSsH3LtXe2SQn	-1	All I Want for Christmas Is You	2023-12-29 12:26:40.573	🧑‍🎄
spotify:track:0O4vuJynWVVdyvoHvZtnk3	-1	Christmas Canon	2023-12-29 12:28:20.579	🧑‍🎄
spotify:track:2FPfeYlrbSBR8PwCU0zaqq	1	Have Yourself A Merry Little Christmas - Remastered 1999	2023-12-29 12:30:33.773	🧑‍🎄
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2023-12-29 18:05:16.242	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-12-29 18:14:02.36	🦥
spotify:track:4yDWvUA2Y9PWGov1948c9M	1	Crying At The Discotheque	2023-12-29 18:14:02.788	🦥
spotify:track:0ieEZjHQO5eq9Uad7opItK	1	I Was Made	2023-12-29 18:26:27.816	🦥
spotify:track:1YWr18dWRmuvPgAsPBsOow	1	Forget You	2023-12-29 18:33:17.037	🦥
spotify:track:4XpDj477gvnsYNT21ap9Y8	1	Last Melody	2023-12-29 18:56:43.166	🦥
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	1	Somebody Told Me	2023-12-30 13:44:02.073	🦥
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	1	Somebody Told Me	2023-12-30 13:44:05.394	🦥
spotify:track:6od5hFv9IT5JHc7NEF9HRv	1	Victorious	2023-12-30 13:50:03.624	🦥
spotify:track:1wcr8DjnN59Awev8nnKpQ4	1	Drunk-Dazed	2023-12-30 13:52:54.022	🦥
spotify:track:7jwDuO7UZvWs77KNj9HbvF	1	The Phoenix	2023-12-30 13:56:39.202	🦥
spotify:track:16Azhyv8164hYxI8Ax3F5k	1	Blur	2023-12-30 14:01:34.51	🦥
spotify:track:0thLhIqWsqqycEqFONOyhu	1	Lone Digger	2023-12-30 14:01:59.559	🦥
spotify:track:2n3CaPGPLYnYAvTEwKCX8t	1	Mmm Yeah (feat. Pitbull)	2023-12-30 14:12:26.316	🦥
spotify:track:3p94RpSxQdZocUfrzpemmm	1	El Dorado	2023-12-30 14:20:00.706	🦥
spotify:track:7h9NYfZQR2NqGC2syIkaXj	1	We No Speak Americano	2023-12-30 14:22:16.186	🦥
spotify:track:7h9NYfZQR2NqGC2syIkaXj	-1	We No Speak Americano	2023-12-30 14:27:06.255	🦥
spotify:track:7s0lDK7y3XLmI7tcsRAbW0	1	My Songs Know What You Did In The Dark (Light Em Up)	2023-12-30 14:27:51.264	🦥
spotify:track:7ewT0nLFkMD8ONbRibePr9	1	I Don't Care - Single Version	2023-12-30 14:31:25.104	🦥
spotify:track:76EVeVC8cRdqbAKFuj3jv5	1	Stone	2023-12-30 14:36:42.355	🦥
spotify:track:4E73mIgGehdEHxMuxEd7I9	1	Because the Night	2023-12-30 14:40:11.816	🦥
spotify:track:6qCsKKS7Ol63SJW3LOIX5R	1	Plastic Hearts	2023-12-30 14:44:53.334	🦥
spotify:track:1D2Aldrksl9yWWCIPOeDzy	1	All Around The World (La La La)	2023-12-30 14:51:49.242	🦥
spotify:track:5MNCTvYYhy6cJQgDChp7J0	1	Anti Gravity	2023-12-30 15:05:43.588	🦥
spotify:track:6tVrmsbI5HVDgOlFSTrQjB	1	Lucky Strike	2023-12-30 15:09:28.165	🦥
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	1	Take It Off	2023-12-30 15:12:37.913	🦥
spotify:track:3Te8uLyit6X3ncNW8Fp3K2	1	Immortals	2023-12-30 16:25:56.408	🦥
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2023-12-30 17:25:44.434	🦥
spotify:track:51TFSMFRYcuNORJ7PIIJCQ	1	All I Ever Wanted	2023-12-30 17:27:35.473	🦥
spotify:track:6azVi5ToFHo6KfKs6SstAC	1	Bad Idea	2023-12-30 17:31:39.937	🦥
spotify:track:2rhSduBNjteGhpqGA55PV1	1	Hanging Tree - Alex Great Remix	2023-12-30 17:39:44.211	🦥
spotify:track:2rhSduBNjteGhpqGA55PV1	1	Hanging Tree - Alex Great Remix	2023-12-30 17:39:45.743	🦥
spotify:track:0qOvlEzD7xU35GLFT8DF1t	1	We Run The Night - Teddy Cream Remix	2023-12-30 17:45:02.327	🦥
spotify:track:0qOvlEzD7xU35GLFT8DF1t	1	We Run The Night - Teddy Cream Remix	2023-12-30 17:48:05.959	🦥
spotify:track:1nwlLOkSNpb5NMldTT6C1t	1	Can't Get You Out Of My Head	2023-12-30 17:58:24.92	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2023-12-30 18:34:44.997	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2023-12-30 18:37:29.891	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2023-12-30 18:39:25.289	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2023-12-30 18:49:02.597	🦥
spotify:track:6GDJDe3I7yHq4rPDTfuJMj	1	Rhythm Is A Dancer	2023-12-30 18:56:15.192	🦥
spotify:track:4ZWyj5whGZ3nNLwOtOLrMt	1	I Want More	2023-12-30 19:32:28.815	🦥
spotify:track:5pNFibJLq7dvoDVIIcQBkn	1	Hot In It (feat. Charli XCX)	2023-12-30 19:40:12.661	🦥
spotify:track:00E0Z2jrF7reoHps4zcbWQ	1	Car Keys (Ayla)	2023-12-30 19:59:46.945	🦥
spotify:track:6q88roV9Jpt65m9ZIWsKQU	1	The Feeling	2023-12-30 20:27:45.992	🦥
spotify:track:0wI0S42Cg41DVGqIIVimTM	1	Blinding Lights	2023-12-30 20:28:08.787	🦥
spotify:track:0y8bSLlOciVW9ejfEmExA9	1	Diamonds	2023-12-30 20:34:28.784	🦥
spotify:track:0y8bSLlOciVW9ejfEmExA9	-1	Diamonds	2023-12-30 20:34:48.817	🦥
spotify:track:3jksOdXCaDXyGiZ7L4YZbp	1	All Nighter	2023-12-30 21:46:41.05	🦥
spotify:track:4q05KbxYZ5JdkmrletgPjF	1	Whistle (feat. Calum Scott)	2023-12-30 22:20:38.147	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2023-12-31 18:18:27.393	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2023-12-31 18:21:27.178	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2023-12-31 19:07:30.075	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2023-12-31 22:09:24.507	🦥
spotify:track:45JYEmfoWSpCA3Paut7YXE	1	MIDDLE OF THE NIGHT	2023-12-31 23:08:59.808	🦥
spotify:track:4OMJGnvZfDvsePyCwRGO7X	1	Houdini	2023-12-31 23:19:46.364	🦥
spotify:track:2rhSduBNjteGhpqGA55PV1	1	Hanging Tree - Alex Great Remix	2023-12-31 23:33:03.857	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2024-01-01 03:03:20.547	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-01-01 03:16:11.914	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2024-01-01 17:50:19.827	🦥
spotify:track:3k0DJq2HdWJqnqor8NX0ac	1	Padam Padam	2024-01-02 13:01:01.166	🦥
spotify:track:7BZ2xgtqnvle8d5EiR3xcy	1	My Bed	2024-01-02 13:25:56.614	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2024-01-02 15:56:25.013	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2024-01-02 15:58:22.729	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2024-01-02 16:03:10.009	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2024-01-02 16:05:30.709	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2024-01-02 16:22:15.919	🦥
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	1	Somebody Told Me	2024-01-02 16:30:25.034	🦥
spotify:track:6SpUnFjNfyFgyLRm65b2G6	1	ORAL HEX (spell on you)	2024-01-02 16:44:32.27	🦥
spotify:track:7voJOTOqLto0HyQltECuzh	1	The Way I Are	2024-01-03 11:55:20.112	🦥
spotify:track:7jLoUQCN6HeC4MNQxr0wcD	1	Body Talk	2024-01-03 11:58:55.835	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2024-01-03 12:15:44.547	🦥
spotify:track:3c9IKwzgIPcCweCl9so748	1	Underwater	2024-01-03 12:18:08.069	🦥
spotify:track:7opO9NgcqEhe4RtvIoDRap	1	Wild Night	2024-01-03 12:19:28.092	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2024-01-03 12:23:13.642	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2024-01-03 12:25:05.602	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-01-03 12:40:10.001	🦥
spotify:track:4ZWyj5whGZ3nNLwOtOLrMt	1	I Want More	2024-01-03 12:45:03.514	🦥
spotify:track:6pb5DtlAeG95dNQLHiArRU	1	Rock My Body	2024-01-03 13:16:36.692	🦥
spotify:track:0rG5jvbdBRAg7paORdTWSe	1	Drunk in Love	2024-01-03 15:32:15.927	🦥
spotify:track:1T1P4aZxStasNK76EfyZcF	1	Just Dance	2024-01-03 15:38:38.234	🦥
spotify:track:5k1uIPpsHmnbWFr4nbpdYb	1	Up All Night (feat. Afrojack)	2024-01-03 15:40:18.893	🦥
spotify:track:3VtgKy06wkxOLoxxe0lqXa	1	Destination Calabria	2024-01-03 15:49:25.936	🦥
spotify:track:12aCF5xMof5sLunrEy8SA7	1	I'm Good (Blue) - Oliver Heldens Remix	2024-01-03 16:25:27.632	🦥
spotify:track:46lyJh9GYmWsHez3EsvmAx	1	Rise Up (feat. Vamero)	2024-01-03 16:26:27.288	🦥
spotify:track:4ntwMws17qmbQUI1NemGqd	1	Seven Nation Army	2024-01-03 16:32:32.547	🦥
spotify:track:4ntwMws17qmbQUI1NemGqd	-1	Seven Nation Army	2024-01-03 16:35:35.326	🦥
spotify:track:47BBI51FKFwOMlIiX6m8ya	1	I Want It That Way	2024-01-03 16:41:41.475	🦀
spotify:track:47BBI51FKFwOMlIiX6m8ya	1	I Want It That Way	2024-01-03 16:42:33.45	🦥
spotify:track:2tJ4fnUrG5v7OmYVGq7sw8	1	Hopeless Heart	2024-01-03 16:48:42.978	🦥
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-01-03 16:52:41.06	🦥
spotify:track:05b9yCli4rmPzIrEv9w5aY	1	Milkshake	2024-01-03 16:54:07.816	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-01-03 16:59:05.138	🦥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2024-01-03 17:09:15.932	🦥
spotify:track:0ymH3Qwwzkl802WD3yy0oY	1	Marble	2024-01-03 17:29:23.839	🦥
spotify:track:1T1P4aZxStasNK76EfyZcF	1	Just Dance	2024-01-03 17:40:47.948	🦥
spotify:track:1sOfNRe7zyQkJj0cY6z2k8	1	Tell It To My Heart	2024-01-04 14:47:14.571	🦥
spotify:track:2RRpaU7jFVcwo23pthdnBv	1	Head Shoulders Knees & Toes (feat. Norma Jean Martine)	2024-01-04 14:49:42.966	🦥
spotify:track:0b18g3G5spr4ZCkz7Y6Q0Q	1	Rasputin	2024-01-04 14:57:58.896	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2024-01-04 15:39:30.823	🦥
spotify:track:7voJOTOqLto0HyQltECuzh	1	The Way I Are	2024-01-04 15:41:50.829	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2024-01-04 15:44:42.153	🦥
spotify:track:4XpDj477gvnsYNT21ap9Y8	1	Last Melody	2024-01-04 15:49:59.122	🦥
spotify:track:2kfZCiSWhAYKdxD7o7WLoa	1	Halo	2024-01-04 16:05:02.63	🦥
spotify:track:0i8JFpqe9cKwnrcvoNgl1L	1	Feel Invincible	2024-01-05 12:36:23.038	🦥
spotify:track:1jq28NGw6wdtFKx8MBPy6C	1	Burn It to the Ground	2024-01-05 12:37:11.141	🦥
spotify:track:7s0lDK7y3XLmI7tcsRAbW0	1	My Songs Know What You Did In The Dark (Light Em Up)	2024-01-05 12:43:41.795	🦥
spotify:track:3Che0Dm9dlytqujcprVAwE	1	Heat Waves	2024-01-05 12:44:18.091	🦥
spotify:track:3Che0Dm9dlytqujcprVAwE	-1	Heat Waves	2024-01-05 12:45:44.923	🦥
spotify:track:02MWAaffLxlfxAUY7c5dvx	1	Heat Waves	2024-01-05 12:48:38.945	🦥
spotify:track:6SpLc7EXZIPpy0sVko0aoU	1	Misery Business	2024-01-05 12:52:13.995	🦥
spotify:track:3JvrhDOgAt6p7K8mDyZwRd	1	Riptide	2024-01-05 12:57:09.377	🦥
spotify:track:23eLvOQ3JxtdhRi9YyxRKQ	1	Boyfriend	2024-01-05 12:58:27.083	🦥
spotify:track:23oxJmDc1V9uLUSmN2LIvx	1	Ocean Avenue	2024-01-05 13:02:09.104	🦥
spotify:track:0gmbgwZ8iqyMPmXefof8Yf	1	How You Remind Me	2024-01-05 13:05:19.009	🦥
spotify:track:7ewT0nLFkMD8ONbRibePr9	1	I Don't Care - Single Version	2024-01-05 13:08:16.704	🦥
spotify:track:3ZOEytgrvLwQaqXreDs2Jx	1	Can't Stop	2024-01-05 13:14:26.649	🦥
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2024-01-05 13:22:14.946	🦥
spotify:track:5GorCbAP4aL0EJ16frG2hd	1	Boulevard of Broken Dreams	2024-01-05 13:27:48.051	🦥
spotify:track:7vguMCv8uVuZLiQJ156u3Z	1	Play with Fire (feat. Yacht Money)	2024-01-05 13:29:54.509	🦥
spotify:track:3IyCL4Em1GOpNGDf451Hg1	1	Could Have Been Me	2024-01-05 13:31:12.972	🦥
spotify:track:7i9763l5SSfOnqZ35VOcfy	1	Heavydirtysoul	2024-01-05 13:37:01.619	🦥
spotify:track:7jwDuO7UZvWs77KNj9HbvF	1	The Phoenix	2024-01-05 13:39:51.797	🦥
spotify:track:1yKu2MhpwzDXXH2tzG6xoa	1	Beverly Hills	2024-01-05 13:42:39.254	🦥
spotify:track:2sEk5R8ErGIFxbZ7rX6S2S	1	How to Be a Heartbreaker	2024-01-05 13:48:20.752	🦥
spotify:track:0fYVliAYKHuPmECRs1pbRf	1	Renegades	2024-01-05 13:48:57.389	🦥
spotify:track:4x3qqSA4cP49oZQXPLnDBe	1	Runnin'	2024-01-05 13:57:03.022	🦥
spotify:track:0w5Bdu51Ka25Pf3hojsKHh	1	Hard Times	2024-01-05 13:58:03.497	🦥
spotify:track:3CRDbSIZ4r5MsZ0YwxuEkn	1	Stressed Out	2024-01-05 15:24:02.57	🦥
spotify:track:28IEbk5a7twNTbUEvWslUb	1	Paralyzer	2024-01-05 15:33:05.213	🦥
spotify:track:11BKm0j4eYoCPPpCONAVwA	1	Bloody Mary	2024-01-05 15:50:37.743	🦥
spotify:track:0COqiPhxzoWICwFCS4eZcp	1	Bring Me To Life	2024-01-05 15:54:53.343	🦥
spotify:track:3gbBpTdY8lnQwqxNCcf795	1	Pompeii	2024-01-05 16:02:18.752	🦥
spotify:track:7ueP5u2qkdZbIPN2YA6LR0	1	Sail	2024-01-05 16:05:55.465	🦥
spotify:track:3MAFVGKEVV9EgO1lQnPqcc	1	One For the Money	2024-01-05 16:11:01.128	🦥
spotify:track:6nTiIhLmQ3FWhvrGafw2zj	1	American Idiot	2024-01-05 16:13:44.967	🦥
spotify:track:7a86XRg84qjasly9f6bPSD	1	We Are Young (feat. Janelle Monáe)	2024-01-05 16:16:36.78	🦥
spotify:track:2DgdHcjWmO3qd50RzuBLgZ	1	House of Memories	2024-01-05 16:20:47.48	🦥
spotify:track:2DgdHcjWmO3qd50RzuBLgZ	1	House of Memories	2024-01-05 16:20:50.265	🦥
spotify:track:2m1hi0nfMR9vdGC8UcrnwU	1	All The Small Things	2024-01-05 16:40:15.413	🦥
spotify:track:6QewNVIDKdSl8Y3ycuHIei	1	Even Flow	2024-01-05 16:54:20.195	🦥
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	1	Somebody Told Me	2024-01-05 16:58:40.039	🦥
spotify:track:0qOvlEzD7xU35GLFT8DF1t	1	We Run The Night - Teddy Cream Remix	2024-01-05 22:43:57.867	🦥
spotify:track:0qOvlEzD7xU35GLFT8DF1t	1	We Run The Night - Teddy Cream Remix	2024-01-05 22:44:50.081	🦥
spotify:track:3p94RpSxQdZocUfrzpemmm	1	El Dorado	2024-01-05 22:46:37.687	🔥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2024-01-05 22:48:49.33	🦥
spotify:track:4ECNtOnqzxutZkXP4TE3n3	1	Separate Ways (Worlds Apart)	2024-01-06 01:15:11.782	🔥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2024-01-06 02:27:09.141	🦥
spotify:track:1nwlLOkSNpb5NMldTT6C1t	1	Can't Get You Out Of My Head	2024-01-07 17:05:23.691	🦥
spotify:track:0iBBOvVQ8QCK7F95boCn3C	1	CHARGER	2024-01-07 22:09:40.394	🦥
spotify:track:34gCuhDGsG4bRPIf9bb02f	1	Thinking out Loud	2024-01-08 11:10:55.593	🎶
spotify:track:7BqHUALzNBTanL6OvsqmC1	1	Happier	2024-01-08 11:33:22.141	🎶
spotify:track:0fYVliAYKHuPmECRs1pbRf	1	Renegades	2024-01-09 11:36:44.881	🔥
spotify:track:2tJ4fnUrG5v7OmYVGq7sw8	1	Hopeless Heart	2024-01-09 11:46:45.151	🦥
spotify:track:2tJ4fnUrG5v7OmYVGq7sw8	1	Hopeless Heart	2024-01-09 11:48:16.622	🦥
spotify:track:05b9yCli4rmPzIrEv9w5aY	1	Milkshake	2024-01-09 11:50:20.879	🦥
spotify:track:0w5Bdu51Ka25Pf3hojsKHh	1	Hard Times	2024-01-09 11:53:42.636	🦥
spotify:track:23oxJmDc1V9uLUSmN2LIvx	1	Ocean Avenue	2024-01-09 12:00:49.004	🔥
spotify:track:6QewNVIDKdSl8Y3ycuHIei	1	Even Flow	2024-01-09 12:00:54.648	🔥
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	1	Somebody Told Me	2024-01-09 12:01:03.169	🔥
spotify:track:1nwlLOkSNpb5NMldTT6C1t	1	Can't Get You Out Of My Head	2024-01-09 12:01:14.331	🦥
spotify:track:6SpLc7EXZIPpy0sVko0aoU	1	Misery Business	2024-01-09 12:04:12.296	🔥
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-01-09 12:04:21.848	🦥
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	1	Somebody Told Me	2024-01-09 12:12:33.423	🔥
spotify:track:3IyCL4Em1GOpNGDf451Hg1	1	Could Have Been Me	2024-01-09 12:15:39.653	🔥
spotify:track:3IyCL4Em1GOpNGDf451Hg1	1	Could Have Been Me	2024-01-09 12:16:11.368	🔥
spotify:track:4f3NHOxgC8Bg21IJBg4cZ3	1	Freaks - Radio Edit	2024-01-09 12:18:39.898	🔥
spotify:track:24LS4lQShWyixJ0ZrJXfJ5	1	Sweet Nothing (feat. Florence Welch)	2024-01-09 12:22:23.224	🔥
spotify:track:3U5JVgI2x4rDyHGObzJfNf	1	Unwritten	2024-01-09 15:32:19.518	🎶
spotify:track:3U5JVgI2x4rDyHGObzJfNf	1	Unwritten	2024-01-09 15:32:44.513	📼
spotify:track:63rbP24OzfaQCJjsHWZXnY	1	Where Them Girls At (feat. Nicki Minaj & Flo Rida)	2024-01-09 16:21:14.033	💿
spotify:track:215JYyyUnrJ98NK3KEwu6d	1	Soak Up The Sun	2024-01-09 17:04:05.774	📼
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-01-09 17:13:59.483	🦥
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-01-09 17:14:30.888	🦥
spotify:track:6GG73Jik4jUlQCkKg9JuGO	1	The Middle	2024-01-09 17:16:56.825	🔥
spotify:track:6GG73Jik4jUlQCkKg9JuGO	1	The Middle	2024-01-09 17:17:07.048	📼
spotify:track:6GqqGv8frU7kqzXkm2rewI	1	A Little Bit Off	2024-01-10 11:38:52.814	🔥
spotify:track:6GqqGv8frU7kqzXkm2rewI	1	A Little Bit Off	2024-01-10 11:38:55.059	☔
spotify:track:6GqqGv8frU7kqzXkm2rewI	1	A Little Bit Off	2024-01-10 11:38:56.738	⛰️
spotify:track:5ofoB8PFmocBXFBEWVb6Vz	1	Animals	2024-01-10 11:49:41.612	🔥
spotify:track:5ofoB8PFmocBXFBEWVb6Vz	1	Animals	2024-01-10 11:49:42.928	⛰️
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2024-01-10 12:40:03.826	⚠️
spotify:track:78RIER8V6EhrqVPOBi2GYa	1	Here Comes the Rain Again - Remastered Version	2024-01-11 11:34:42.765	🦥
spotify:track:6t1FIJlZWTQfIZhsGjaulM	1	Video Killed The Radio Star	2024-01-11 12:34:08.553	⛰️
spotify:track:256sdJU0D1k9sLHmZ6FtI4	1	Wellerman - Sea Shanty / 220 KID x Billen Ted Remix	2024-01-11 13:55:34.258	🦥
spotify:track:256sdJU0D1k9sLHmZ6FtI4	1	Wellerman - Sea Shanty / 220 KID x Billen Ted Remix	2024-01-11 13:55:35.367	🦥
spotify:track:256sdJU0D1k9sLHmZ6FtI4	1	Wellerman - Sea Shanty / 220 KID x Billen Ted Remix	2024-01-11 13:55:36.087	🦥
spotify:track:256sdJU0D1k9sLHmZ6FtI4	1	Wellerman - Sea Shanty / 220 KID x Billen Ted Remix	2024-01-11 13:55:37.13	🦥
spotify:track:3JhgPs7rbmzLBWRvHlel8U	1	Bad Memories	2024-01-11 15:17:45.948	🦥
spotify:track:3bjM6KcvV1MwkAm7DJQb9O	1	Lay All Your Love On Me	2024-01-11 15:28:41.294	🦥
spotify:track:3yrqP8f56uJ4OJeGbkIQTB	1	Marble	2024-01-11 16:29:09.1	🦥
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-01-11 16:43:00.254	🦥
spotify:track:1yX6sh2TkrT5hsXodo7aS6	1	Astronaut In The Ocean - Alok Remix	2024-01-11 18:10:44.796	🦥
spotify:track:1cYyZ1N98GyRS3cMcccFHd	1	Wasted Love (feat. Lagique)	2024-01-11 18:13:19.834	🦥
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-01-11 23:04:56.465	🦥
spotify:track:1T1P4aZxStasNK76EfyZcF	1	Just Dance	2024-01-11 23:59:50.352	🦥
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-01-12 00:04:20.234	🦥
spotify:track:2YVlDlk2zRceefo6XlC6DX	1	Ain’t That Some	2024-01-12 22:24:43.732	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2024-01-13 12:40:03.076	🦥
spotify:track:0qOvlEzD7xU35GLFT8DF1t	1	We Run The Night - Teddy Cream Remix	2024-01-13 20:02:56.887	🦥
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-01-13 21:26:54.806	🦥
spotify:track:1T1P4aZxStasNK76EfyZcF	1	Just Dance	2024-01-13 21:39:21.539	🦥
spotify:track:05b9yCli4rmPzIrEv9w5aY	1	Milkshake	2024-01-13 21:55:45.058	🦥
spotify:track:7j31rVgGX9Q2blT92VBEA0	1	Teenagers	2024-01-13 22:26:34.639	🔥
spotify:track:1yjY7rpaAQvKwpdUliHx0d	1	Still into You	2024-01-13 22:32:25.882	🔥
spotify:track:256sdJU0D1k9sLHmZ6FtI4	1	Wellerman - Sea Shanty / 220 KID x Billen Ted Remix	2024-01-13 22:45:20.63	🦥
spotify:track:7J8D1BVioYBaKFUnDAHTak	1	Another Way Out	2024-01-16 17:02:37.982	🔥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-01-16 17:15:04.689	🦥
spotify:track:5ofoB8PFmocBXFBEWVb6Vz	1	Animals	2024-01-16 17:19:23.646	⛰️
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-01-16 21:36:01.099	🦥
spotify:track:7ewT0nLFkMD8ONbRibePr9	1	I Don't Care - Single Version	2024-01-16 21:42:37.371	🔥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2024-01-16 21:51:24.363	🦥
spotify:track:7s0lDK7y3XLmI7tcsRAbW0	1	My Songs Know What You Did In The Dark (Light Em Up)	2024-01-16 22:05:29.388	🔥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-01-18 16:44:22.421	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-01-18 20:37:47.291	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-01-18 20:38:27.419	🦥
spotify:track:70p3HYq9iHZisJqpDmWd1U	1	Guren no Yumiya	2024-01-19 11:48:37.251	🦀
spotify:track:0O12SkQHX2Julh9utIosga	1	Sweet Child O' Mine	2024-01-19 13:31:57.316	🦥
spotify:track:7C7yqFTM0ncyJ04GIKrxdV	1	Anything Could Happen	2024-01-21 15:52:27.17	💿
spotify:track:7fPyCCiXVwbzPQ1MtoUChl	1	Hide Away	2024-01-21 16:36:56.355	📢
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-01-21 19:42:47.704	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-01-22 17:57:39.84	🦥
spotify:track:6SpLc7EXZIPpy0sVko0aoU	1	Misery Business	2024-01-22 18:39:32.232	🔥
spotify:track:1yX6sh2TkrT5hsXodo7aS6	1	Astronaut In The Ocean - Alok Remix	2024-01-22 18:45:18.067	🦥
spotify:track:3MAFVGKEVV9EgO1lQnPqcc	1	One For the Money	2024-01-22 18:59:08.732	🔥
spotify:track:0i8JFpqe9cKwnrcvoNgl1L	1	Feel Invincible	2024-01-22 19:03:56.408	🔥
spotify:track:6WC5fhc9XMaCrUNKNjm9xE	1	Thumbs	2024-01-23 14:16:18.466	🦥
spotify:track:0GTPmh5G40joBg93vcSQNq	1	Don't Say Goodbye (feat. Tove Lo)	2024-01-24 14:25:59.401	🦥
spotify:track:3GISUP1tcg7h9MqfCtWml7	1	Dopamine (feat. Eyelar)	2024-01-24 14:29:57.224	🦥
spotify:track:3ws23U0w7sR6NCdh1jBP9i	1	Gimme Gimme - Club Mix	2024-01-24 14:53:24.404	🦥
spotify:track:3ws23U0w7sR6NCdh1jBP9i	1	Gimme Gimme - Club Mix	2024-01-24 14:53:53.866	🦥
spotify:track:6ju5Ntn5pYksvkKxVkjEPK	1	Never Going Home	2024-01-24 14:58:57.396	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2024-01-26 13:00:57.085	🦥
spotify:track:3bK1zVFBKIzYjmptmI4NsJ	1	Overdrive (feat. Norma Jean Martine)	2024-01-26 13:23:14.871	🦥
spotify:track:1yX6sh2TkrT5hsXodo7aS6	1	Astronaut In The Ocean - Alok Remix	2024-01-26 13:31:16.984	🦥
spotify:track:3Dzso9Q2WwupEclqgxBZht	1	Pumped Up Kicks	2024-01-26 13:35:18.145	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-01-26 21:37:34.993	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2024-01-28 19:29:27.156	🦥
spotify:track:4v8tyFARGc8p6z3Ri0xPLB	1	Don't Touch My Clogs	2024-01-28 19:31:13.133	🦀
spotify:track:4v8tyFARGc8p6z3Ri0xPLB	1	Don't Touch My Clogs	2024-01-28 19:33:48.243	🦥
spotify:track:256sdJU0D1k9sLHmZ6FtI4	1	Wellerman - Sea Shanty / 220 KID x Billen Ted Remix	2024-01-28 19:34:00.907	🦥
spotify:track:51TFSMFRYcuNORJ7PIIJCQ	1	All I Ever Wanted	2024-01-28 19:36:33.781	🦥
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-01-28 19:57:17.428	🦥
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-01-28 19:59:50.913	🦥
spotify:track:5zdbSrKdmK9qDTkqzidcN7	1	You Spin Me Round (Like A Record) - Radio Edit	2024-01-28 20:08:17.602	🦥
spotify:track:3Dzso9Q2WwupEclqgxBZht	1	Pumped Up Kicks	2024-01-28 20:10:38.17	🦥
spotify:track:6hEJvWfNOvTUhLuV1Or1of	1	Whistle (feat. Bertie Scott)	2024-01-28 20:13:20.076	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2024-01-28 20:27:39.833	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-01-28 20:58:03.512	🦥
spotify:track:0qOvlEzD7xU35GLFT8DF1t	1	We Run The Night - Teddy Cream Remix	2024-01-28 21:19:29.706	🦥
spotify:track:0wI0S42Cg41DVGqIIVimTM	1	Blinding Lights	2024-01-28 21:56:11.719	🦥
spotify:track:318quSv1UJeamoAkEDjAuY	1	WOW (feat. ÁSDÍS)	2024-01-29 12:02:36.183	🦥
spotify:track:6yotiCxcSIm4HyZdA6wcYH	1	Hush Hush (Don't Be Shy)	2024-01-29 12:02:45.324	🦥
spotify:track:4XpDj477gvnsYNT21ap9Y8	1	Last Melody	2024-01-29 12:12:34.649	🦥
spotify:track:3FcseYxP7eeE7ihwgz2U2c	1	MONTERO (Call Me By Your Name)	2024-01-29 12:16:25.114	🦥
spotify:track:7MIhUdNJtaOnDmC5nBC1fb	1	Deep Down (feat. Never Dull)	2024-01-29 13:37:36.854	🦥
spotify:track:3TVxzS4m8nvrnZIguQ03Kd	1	Where Do We Go	2024-01-29 14:02:41.893	🦥
spotify:track:5YihgP3KuNSZc6qrrxecfu	1	Baker Street	2024-01-29 15:24:12.91	🦥
spotify:track:0mQNFiamtlZF5i6DGYckTv	1	Be My Lover	2024-01-29 15:47:24.462	🦥
spotify:track:6rrzv6g69ckf0VRNS1kkuR	1	Sweet Child O' Mine	2024-01-29 15:51:54.65	🦥
spotify:track:5eF4cNJ30kdTXnlmUfN8dw	1	Who Let The Dogs Out (feat. EVALINA)	2024-01-29 15:54:17.85	🦥
spotify:track:5eF4cNJ30kdTXnlmUfN8dw	1	Who Let The Dogs Out (feat. EVALINA)	2024-01-29 15:54:22.151	🦀
spotify:track:55n9yjI6qqXh5F2mYvUc2y	1	I Don’t Wanna Live Forever (Fifty Shades Darker)	2024-01-30 13:00:49.927	💿
spotify:track:1T1P4aZxStasNK76EfyZcF	1	Just Dance	2024-01-30 14:47:02.158	🦥
spotify:track:1yX6sh2TkrT5hsXodo7aS6	1	Astronaut In The Ocean - Alok Remix	2024-01-30 14:48:39.422	🦥
spotify:track:1UNWD6R5EOFklUHKZZvww2	1	She Said	2024-01-30 14:52:06.028	🦥
spotify:track:47TOnN2ffRwsEvWsTZ6IaI	1	Shake That	2024-01-30 14:54:18.532	🦥
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-01-30 15:05:43.646	🦥
spotify:track:4bAzLbJOkwkZEakSiKd3sZ	1	Low	2024-01-30 15:16:15.638	🦥
spotify:track:2kfZCiSWhAYKdxD7o7WLoa	1	Halo	2024-01-30 15:28:09.952	🦥
spotify:track:3yrqP8f56uJ4OJeGbkIQTB	1	Marble	2024-01-30 15:45:21.516	🦥
spotify:track:04R4oiYD4NU6ZkdwlaJSep	1	Bad Memories - Felix Jaehn Remix	2024-01-30 16:10:58.375	🦥
spotify:track:0HGpMpt4OrGUtdHq8dVuPN	1	On Repeat	2024-01-30 16:12:58.677	🦥
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-01-30 16:57:19.559	🦥
spotify:track:3oVVFLLZPuRepSkcwgQ294	1	Mr. Saxobeat	2024-01-30 16:59:51.78	🦥
spotify:track:0u5Agy2RLORlgsxZ3INSJ5	1	Stayin' Alive VS 50 C Tik Tok - Remix	2024-01-30 17:59:19.491	🦀
spotify:track:0u5Agy2RLORlgsxZ3INSJ5	1	Stayin' Alive VS 50 C Tik Tok - Remix	2024-01-30 17:59:20.095	🦥
spotify:track:6WC5fhc9XMaCrUNKNjm9xE	1	Thumbs	2024-01-31 12:11:08.307	🦥
spotify:track:0ymH3Qwwzkl802WD3yy0oY	1	Marble	2024-02-01 21:23:06.682	🦥
spotify:track:7y3jmcF0MX0gTi6ihH2kpX	1	Kiss Me In Berlin	2024-02-01 21:37:37.312	🦥
spotify:track:5WYB4aZkflwjAApBoDCYkz	1	Astronomia - Never Go Home	2024-02-01 21:44:32.396	🦥
spotify:track:4cG7HUWYHBV6R6tHn1gxrl	1	Friday (feat. Mufasa & Hypeman) - Dopamine Re-Edit	2024-02-02 12:26:20.688	🦥
spotify:track:4dq7XLDmFHNwc1yqL339qT	1	Wake Me Up In Paris	2024-02-02 12:30:46.733	🦥
spotify:track:3VtgKy06wkxOLoxxe0lqXa	1	Destination Calabria	2024-02-02 12:31:23.838	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2024-02-02 12:47:28.512	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2024-02-02 12:48:50.76	🦥
spotify:track:3bK1zVFBKIzYjmptmI4NsJ	1	Overdrive (feat. Norma Jean Martine)	2024-02-02 12:50:41.021	🦥
spotify:track:3Dzso9Q2WwupEclqgxBZht	1	Pumped Up Kicks	2024-02-02 12:58:09.531	🦥
spotify:track:1q3qh7hEJrPmPH7uOteYSr	1	No Fun	2024-02-02 12:59:07.546	🦥
spotify:track:1nYeVF5vIBxMxfPoL0SIWg	1	Hallucinate	2024-02-02 13:06:00.107	🦥
spotify:track:0GTPmh5G40joBg93vcSQNq	1	Don't Say Goodbye (feat. Tove Lo)	2024-02-02 13:16:45.53	🦥
spotify:track:7ltLi7CG003USSGYsSba9s	1	It Don’t Matter - Spotify Singles	2024-02-02 13:31:47.057	🦥
spotify:track:5ZduaRci3iNUiDfJbBfAaf	1	Give It To Me - Full Vocal Mix	2024-02-02 13:34:20.328	🦥
spotify:track:67eYAnkdTu8BMcIx29z26L	1	Makeba - Ian Asher Remix	2024-02-02 13:35:45.142	🦥
spotify:track:67eYAnkdTu8BMcIx29z26L	1	Makeba - Ian Asher Remix	2024-02-02 13:37:04.376	🦥
spotify:track:1golLrmqyxDWedF7YUHCOD	1	edamame	2024-02-02 13:37:48.461	🦥
spotify:track:2KklXplRtxMsBYo474Es0w	1	Be Mine	2024-02-02 13:43:41.563	🦥
spotify:track:5WYB4aZkflwjAApBoDCYkz	1	Astronomia - Never Go Home	2024-02-02 14:01:00.083	🦥
spotify:track:6zSpb8dQRaw0M1dK8PBwQz	1	Cold Heart - PNAU Remix	2024-02-02 14:06:44.949	🦥
spotify:track:7MIhUdNJtaOnDmC5nBC1fb	1	Deep Down (feat. Never Dull)	2024-02-02 14:26:42.745	🦥
spotify:track:5uEYRdEIh9Bo4fpjDd4Na9	1	Goosebumps - Remix	2024-02-02 14:32:21.662	🦥
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-02-02 14:54:24.628	🦥
spotify:track:4XpDj477gvnsYNT21ap9Y8	1	Last Melody	2024-02-02 15:11:28.938	🦥
spotify:track:0i9adAf1xiL0EbOcog6rEo	1	Boots	2024-02-02 15:18:41.996	🦥
spotify:track:1nwlLOkSNpb5NMldTT6C1t	1	Can't Get You Out Of My Head	2024-02-02 15:19:16.724	🦥
spotify:track:1D5ulkKEQkRwfDXmBuQyUi	1	Living Life, in the Night	2024-02-02 15:35:23.947	🦥
spotify:track:256sdJU0D1k9sLHmZ6FtI4	1	Wellerman - Sea Shanty / 220 KID x Billen Ted Remix	2024-02-02 15:40:11.841	🦥
spotify:track:256sdJU0D1k9sLHmZ6FtI4	1	Wellerman - Sea Shanty / 220 KID x Billen Ted Remix	2024-02-02 15:40:27.495	🦥
spotify:track:6GDJDe3I7yHq4rPDTfuJMj	1	Rhythm Is A Dancer	2024-02-02 15:42:20.809	🦥
spotify:track:4bAzLbJOkwkZEakSiKd3sZ	1	Low	2024-02-02 15:45:42.627	🦥
spotify:track:4Ef3ODp0REOFXMgDL4S5fM	1	Stereo Love	2024-02-02 15:49:33.829	🦥
spotify:track:5KhNIFP5RBwRhMOMDSW5IV	1	Limousine	2024-02-02 15:54:21.769	🦥
spotify:track:4z8ssgZfs5TzKiO8HaGWXO	1	E.T.	2024-02-02 15:57:02.748	🦥
spotify:track:6DC0wG7y6tGBjWARnzlZXh	1	Samurai	2024-02-02 16:08:44.374	🦥
spotify:track:6DC0wG7y6tGBjWARnzlZXh	1	Samurai	2024-02-02 16:09:52.394	🦥
spotify:track:3Dzso9Q2WwupEclqgxBZht	1	Pumped Up Kicks	2024-02-03 11:53:16.224	🦥
spotify:track:0i9adAf1xiL0EbOcog6rEo	1	Boots	2024-02-03 11:56:04.948	🦥
spotify:track:1T1P4aZxStasNK76EfyZcF	1	Just Dance	2024-02-03 11:59:53.909	🦥
spotify:track:1nwlLOkSNpb5NMldTT6C1t	1	Can't Get You Out Of My Head	2024-02-03 12:10:11.447	🦥
spotify:track:3yrqP8f56uJ4OJeGbkIQTB	1	Marble	2024-02-03 12:11:39.329	🦥
spotify:track:4XpDj477gvnsYNT21ap9Y8	1	Last Melody	2024-02-03 12:14:13.368	🦥
spotify:track:0Cnb8XdGDMHAmIRBUJMkIS	1	Where The Lights Are Low	2024-02-03 12:16:21.265	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2024-02-03 12:17:59.357	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	-1	Tom's Diner	2024-02-03 12:18:13.704	🦥
spotify:track:0LTlncvWpV4emObXXJiN7J	1	Tom's Diner	2024-02-03 12:19:09.914	🦥
spotify:track:5KhNIFP5RBwRhMOMDSW5IV	1	Limousine	2024-02-03 12:36:52.38	🦥
spotify:track:3qnDirWYInwzIJC76AQdV4	1	I Swear	2024-02-03 12:53:25.798	🦥
spotify:track:4Ef3ODp0REOFXMgDL4S5fM	1	Stereo Love	2024-02-03 12:58:02.882	🦥
spotify:track:4ixpcIQTt7EE1EAqotGZGb	1	Right Now (Remix)	2024-02-03 13:03:03.524	🦥
spotify:track:4jy2oAJR2w61b9OMhx5pow	1	Rave In My Garage	2024-02-03 13:05:33.329	🦥
spotify:track:4obMuJXFa9APNiFtlQHFBh	1	Tokyo	2024-02-03 13:12:41.867	🦥
spotify:track:6DC0wG7y6tGBjWARnzlZXh	1	Samurai	2024-02-03 13:43:53.72	🦥
spotify:track:2q2sg6US99C8Wnhga43xnl	1	On My Mind	2024-02-03 13:59:14.143	🦥
spotify:track:0rG5jvbdBRAg7paORdTWSe	1	Drunk in Love	2024-02-03 14:07:27.625	🦥
spotify:track:6Hht0SIzJwQYBkDD07Dnoj	1	Thunder	2024-02-03 16:27:03.077	🦥
spotify:track:3fWKUqt1i6CsEBLuB8IWJ1	1	Dance With Your Devil	2024-02-03 16:29:27.266	🦥
spotify:track:0mQNFiamtlZF5i6DGYckTv	1	Be My Lover	2024-02-03 19:42:47.17	🦥
spotify:track:6KJ4rwX0hT3bWO953YEmpY	1	JAPAN	2024-02-04 17:22:49.549	🦥
spotify:track:2kfZCiSWhAYKdxD7o7WLoa	1	Halo	2024-02-04 20:28:52.264	🦥
spotify:track:752n2yiIZZdxNAMTXmrObn	1	EveryTime I Cry - R3HAB Remix	2024-02-05 11:05:15.437	🦥
spotify:track:2q2sg6US99C8Wnhga43xnl	1	On My Mind	2024-02-05 11:46:16.723	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-02-05 11:48:24.475	🦥
spotify:track:4rlxs68jKAqkD0fHi9Kesm	1	All the Things She Said - Cristian Marchi & Luis Rodriguez Mix	2024-02-05 11:52:47.271	🦥
spotify:track:79OUttYM7WQUzEtsugTwEX	1	Polkka	2024-02-05 12:08:36.89	🦥
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-02-05 12:10:42.059	🦥
spotify:track:4XpDj477gvnsYNT21ap9Y8	1	Last Melody	2024-02-05 12:12:54.969	🦥
spotify:track:7EXennxBRtugSuQX13uLSu	1	Blow It Up	2024-02-05 12:23:37.554	🦥
spotify:track:6H6M3RdPVYAURu9oCimO2z	1	what it means to be a girl	2024-02-05 12:40:23.035	🦥
spotify:track:1H1aXt2S07OeZ0wDJo3KMz	1	Super Over	2024-02-05 12:43:13.656	🦥
spotify:track:7CQGybO25VSUNwY2hS7n6J	1	Shit Show	2024-02-05 12:54:58.066	🦥
spotify:track:256sdJU0D1k9sLHmZ6FtI4	1	Wellerman - Sea Shanty / 220 KID x Billen Ted Remix	2024-02-05 13:02:32.751	🦥
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-02-05 13:03:06.126	🦥
spotify:track:4XpDj477gvnsYNT21ap9Y8	1	Last Melody	2024-02-07 18:34:35.048	🦥
spotify:track:0h3Xy4V4apMraB5NuM8U7Z	1	Stumblin' In	2024-02-08 12:38:40.73	🦥
spotify:track:5QSoe7DgjaIjDH8ov6B43V	1	Let's Go MIA	2024-02-08 12:41:44.842	🦥
spotify:track:0xbSjXWyD0M1ucTtKHPd2N	1	Ekko inni meg	2024-02-08 12:58:36.225	🦥
spotify:track:6BIsEBK4B1LimKiwtr56FU	1	All The Things She Said - Radio Edit	2024-02-08 13:51:00.49	🦥
spotify:track:1yampU2t2LNWzEsCpUgHYJ	1	River	2024-02-08 13:55:39.262	🦥
spotify:track:1B8b9LpDlgO6lJfPaA5M0y	1	Before You Go	2024-02-08 15:11:43.996	🦥
spotify:track:3mud0yogGMEgrsVoYBpbch	1	Follow You	2024-02-08 16:15:45.36	🦥
spotify:track:4H3prpSM3TWw4UJtg6rHwD	1	Leave A Little Love (Mixed)	2024-02-08 16:16:15.287	🦥
spotify:track:4H3prpSM3TWw4UJtg6rHwD	-1	Leave A Little Love (Mixed)	2024-02-08 16:16:28.718	🦥
spotify:track:3JbxNrWdx6Di9I5E62vZzK	1	Loca Loca	2024-02-08 16:16:34.834	🦥
spotify:track:3qnDirWYInwzIJC76AQdV4	1	I Swear	2024-02-08 16:32:21.046	🦥
spotify:track:00TNno8mzugrcej0FqJvrW	1	Get Up Off The Floor	2024-02-09 14:06:42.167	🦥
spotify:track:4jy2oAJR2w61b9OMhx5pow	1	Rave In My Garage	2024-02-11 12:35:10.57	🦥
spotify:track:0xbSjXWyD0M1ucTtKHPd2N	1	Ekko inni meg	2024-02-11 12:55:54.431	🦥
spotify:track:0xbSjXWyD0M1ucTtKHPd2N	1	Ekko inni meg	2024-02-11 12:56:44.546	🦥
spotify:track:0xbSjXWyD0M1ucTtKHPd2N	1	Ekko inni meg	2024-02-11 12:56:45.492	🦥
spotify:track:0xbSjXWyD0M1ucTtKHPd2N	1	Ekko inni meg	2024-02-11 12:56:46.129	🦥
spotify:track:6DC0wG7y6tGBjWARnzlZXh	1	Samurai	2024-02-11 13:32:02.919	🦥
spotify:track:6DC0wG7y6tGBjWARnzlZXh	1	Samurai	2024-02-11 13:32:07.305	🦥
spotify:track:6DC0wG7y6tGBjWARnzlZXh	1	Samurai	2024-02-11 13:32:07.481	🦥
spotify:track:5Z8EDau8uNcP1E8JvmfkZe	1	School's Out	2024-02-12 22:28:35.974	🔥
spotify:track:22ML0MuFKfw16WejbxsLOy	1	Heartbreaker	2024-02-12 22:32:23.507	🔥
spotify:track:5EOoMWIB9iK4ZpcSex9Ec7	1	Old Time Rock & Roll	2024-02-12 22:44:42.712	🔥
spotify:track:0X1sqQ652p1sceKM2nJlIJ	1	Runaway	2024-02-13 18:18:35.278	🔥
spotify:track:4v8tyFARGc8p6z3Ri0xPLB	1	Don't Touch My Clogs	2024-02-16 13:11:14.322	🦥
spotify:track:3y8AEUef1AVfr0npU5UOa9	1	Dangerous (feat. Joywave)	2024-02-16 18:05:07.369	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2024-02-16 23:44:21.381	🦥
spotify:track:0kDI42WWRwsrKAmE7wmQbt	1	Creep	2024-02-19 13:05:46.787	🦥
spotify:track:1CcLA0eaauck34YEIrvAAq	1	When We Were Young (The Logical Song)	2024-02-19 13:19:06.455	🦥
spotify:track:6h5y2LCqCQudsCarn61CNE	1	Believe (feat. Goodboys)	2024-02-19 13:21:42.829	🦥
spotify:track:5hQRNdaLnqlFYhBiVFMptc	1	Do Or Die	2024-02-19 13:24:36.21	🦥
spotify:track:5oJa785dEiK3F16gBeWeqf	1	Ladida (My Heart Goes Boom)	2024-02-19 13:29:00.344	🦥
spotify:track:0xut5aUOaVuzQemZGehTDD	1	Night in Paris	2024-02-19 13:40:31.699	🦥
spotify:track:0d2yUkzvqA85zHqiKA9IuE	1	Tell Me How	2024-02-19 13:42:54.374	🦥
spotify:track:14OuguybiShYioJqwjWbD2	1	Where Are You Now	2024-02-19 13:48:50.233	🦥
spotify:track:2cMH4ENPzIeKqXS0PbKLoY	1	Havana	2024-02-19 13:49:38.669	🦥
spotify:track:22sKunNSPMCy2lvSLOY5yX	1	Rule The World	2024-02-19 13:52:12.185	🦥
spotify:track:5bdIYjZy0ea7UtdDA2t4U7	1	Save Tonight	2024-02-19 13:55:22.988	🦥
spotify:track:0mivIbo4LkpblsGoRzEJNa	1	Gimme! Gimme! Gimme!	2024-02-19 13:58:11.677	🦥
spotify:track:5hQRNdaLnqlFYhBiVFMptc	1	Do Or Die	2024-02-19 14:18:10.755	🦥
spotify:track:00tgmr08wm5QLyjOnet4YD	1	Damage	2024-02-19 14:21:37.101	🦥
spotify:track:1RF02Cf80mTaeNXG2P2boR	1	21 Reasons (feat. Ella Henderson)	2024-02-19 14:24:23.242	🦥
spotify:track:3lltvGcEYmn3E86kICgi5U	1	Replay	2024-02-19 14:27:33.37	🦥
spotify:track:2Cwv4gxNcQ17knrB5BHkTg	1	Everything	2024-02-19 14:49:28.184	🦥
spotify:track:5oJa785dEiK3F16gBeWeqf	1	Ladida (My Heart Goes Boom)	2024-02-22 12:43:42.108	🦥
spotify:track:6h5y2LCqCQudsCarn61CNE	1	Believe (feat. Goodboys)	2024-02-22 12:48:55.94	🦥
spotify:track:70p3HYq9iHZisJqpDmWd1U	1	Guren no Yumiya	2024-02-22 12:52:57.64	🦀
spotify:track:01aTsQoKoeXofSTvKuunzv	1	Lean On	2024-02-22 13:01:38.831	🦥
spotify:track:01aTsQoKoeXofSTvKuunzv	1	Lean On	2024-02-22 13:01:47.383	🦊
spotify:track:01aTsQoKoeXofSTvKuunzv	1	Lean On	2024-02-22 13:01:49.691	📢
spotify:track:2unqiEdHtabnsbv6TJ7gCW	1	Lose Control	2024-02-22 13:04:45.73	🦥
spotify:track:4Y3xYddcLDgr2qm0xVdGgW	1	Phone	2024-02-22 13:06:31.339	🦥
spotify:track:2xzq5Fbheg7tID5X2CHZBT	1	The Way I Are - Sped Up	2024-02-22 13:25:41.432	🦥
spotify:track:2xzq5Fbheg7tID5X2CHZBT	-1	The Way I Are - Sped Up	2024-02-22 13:25:46.43	🦥
spotify:track:3khEEPRyBeOUabbmOPJzAG	1	KICK BACK	2024-02-22 13:25:51.081	🦥
spotify:track:3khEEPRyBeOUabbmOPJzAG	-1	KICK BACK	2024-02-22 13:25:59.105	🦥
spotify:track:66yBW9R8aTlLSeboI0HZFj	1	7 Days a Week	2024-02-22 13:26:49.959	🦥
spotify:track:4JUFBTJy1vQSGyXEV0PLbz	1	Bloody Mary	2024-02-22 14:01:30.803	🦥
spotify:track:16HrOASfb75oNM5AcQV9Fh	1	Again	2024-02-22 14:08:45.61	🦥
spotify:track:3jj5ZZ87UphCM0FmZzarpn	1	Gimme! Gimme! Gimme! (A Man After Midnight)	2024-02-22 14:10:36.097	🦥
spotify:track:6gQUbFwwdYXlKdmqRoWKJe	1	Dude (Looks Like A Lady)	2024-02-26 13:52:00.461	🔥
spotify:track:4qjscZh4jfhkpcQG4ZQfi2	1	Animal	2024-02-26 13:56:40.72	🔥
spotify:track:0xbSjXWyD0M1ucTtKHPd2N	1	Ekko inni meg	2024-02-27 19:33:16.388	🦥
spotify:track:5zdbSrKdmK9qDTkqzidcN7	1	You Spin Me Round (Like A Record) - Radio Edit	2024-02-27 19:39:28.222	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-02-27 19:42:08.264	🦥
spotify:track:2AAMkITmFcCL9MtTKFui2k	1	Just In Case	2024-02-27 19:59:41.934	🦥
spotify:track:1okz0plcLFh3AqBoOKmui4	1	Rabbit Hole	2024-02-27 20:13:05.597	🦥
spotify:track:0SGunE3qppk4PajqOvR6uu	1	Feels Like This (feat. Indiiana)	2024-02-27 20:15:40.439	🦥
spotify:track:4rlxs68jKAqkD0fHi9Kesm	1	All the Things She Said - Cristian Marchi & Luis Rodriguez Mix	2024-02-27 20:19:16.449	🦥
spotify:track:4bAzLbJOkwkZEakSiKd3sZ	1	Low	2024-02-27 20:35:48.817	🦥
spotify:track:01a7nB3AywapMgbLi3LGbZ	1	Starlight	2024-02-27 22:37:56.525	🦥
spotify:track:5j5tLZu7qaGhAEHlkyqCAf	1	Somebody to Love	2024-02-27 22:53:15.334	🦥
spotify:track:6h5y2LCqCQudsCarn61CNE	1	Believe (feat. Goodboys)	2024-02-27 22:53:26.841	🦥
spotify:track:5hQRNdaLnqlFYhBiVFMptc	1	Do Or Die	2024-02-27 22:53:35.526	🦥
spotify:track:5j5tLZu7qaGhAEHlkyqCAf	1	Somebody to Love	2024-02-27 22:53:57.412	🦥
spotify:track:0i9adAf1xiL0EbOcog6rEo	1	Boots	2024-02-27 22:56:23.915	🦥
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	1	Somebody Told Me	2024-02-29 11:51:34.051	🔥
spotify:track:663Karu2rvKLdnY0eo1n3M	1	Call Me When You're Sober	2024-02-29 12:48:30.345	🔥
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-03-01 12:38:24.773	🦥
spotify:track:0mtPNQl5vePVwiI9Vykp7L	1	We Run The Night	2024-03-01 12:43:16.265	💿
spotify:track:0sftzYE0YgPHXrvJyUyGjB	1	Deep In Your Love	2024-03-01 12:47:18.038	🦥
spotify:track:3C0nOe05EIt1390bVABLyN	1	On The Floor	2024-03-01 13:20:13.918	💿
spotify:track:1gUwi1o1S9W9P0FQgJdY8s	1	TRUSTFALL	2024-03-01 13:25:16.832	🦥
spotify:track:6HZ9VeI5IRFCNQLXhpF4bq	1	I Love It (feat. Charli XCX)	2024-03-01 13:34:53.038	💿
spotify:track:7Feaw9WAEREY0DUOSXJLOM	1	Summer Days (feat. Macklemore & Patrick Stump of Fall Out Boy)	2024-03-01 14:17:30	🔥
spotify:track:5hlPrSCx9BvnQ3rCTkblMZ	1	High	2024-03-01 19:18:15.741	🦥
spotify:track:2KklXplRtxMsBYo474Es0w	1	Be Mine	2024-03-02 21:44:10.035	🦥
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2024-03-02 21:56:16.888	🦥
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-03-07 10:47:31.253	🦥
spotify:track:3FcseYxP7eeE7ihwgz2U2c	1	MONTERO (Call Me By Your Name)	2024-03-07 10:49:52.412	🦥
spotify:track:56ZD9IVl8khgd6GVDN0ic4	1	OMG	2024-03-07 10:52:49.356	🦥
spotify:track:0i9adAf1xiL0EbOcog6rEo	1	Boots	2024-03-07 10:57:55.121	🦥
spotify:track:01a7nB3AywapMgbLi3LGbZ	1	Starlight	2024-03-07 11:04:45.331	🦥
spotify:track:66yBW9R8aTlLSeboI0HZFj	1	7 Days a Week	2024-03-07 11:07:44.785	🦥
spotify:track:3Dzso9Q2WwupEclqgxBZht	1	Pumped Up Kicks	2024-03-07 11:11:12.657	🦥
spotify:track:4JUFBTJy1vQSGyXEV0PLbz	1	Bloody Mary	2024-03-07 11:13:30.328	🦥
spotify:track:3jj5ZZ87UphCM0FmZzarpn	1	Gimme! Gimme! Gimme! (A Man After Midnight)	2024-03-07 11:15:36.93	🦥
spotify:track:5Q9gjAuEynlSlYIL2pzUwl	1	Torn	2024-03-07 11:27:18.681	🦥
spotify:track:350sHZ13CS0PWmpFTbMCm9	1	All That She Wants	2024-03-07 11:32:45.959	🦥
spotify:track:2baHEhQsSyEkkCrCtyhs76	1	Tie me down	2024-03-07 11:35:38.315	🦥
spotify:track:67VyF9sJP507D3sVOJUtTu	1	Love The Way You Lie	2024-03-07 11:37:50.808	🦥
spotify:track:5YihgP3KuNSZc6qrrxecfu	1	Baker Street	2024-03-07 12:33:08.863	🦥
spotify:track:2q2sg6US99C8Wnhga43xnl	1	On My Mind	2024-03-07 12:39:24.373	🦥
spotify:track:6BIsEBK4B1LimKiwtr56FU	1	All The Things She Said - Radio Edit	2024-03-07 12:55:47.998	🦥
spotify:track:56ZD9IVl8khgd6GVDN0ic4	1	OMG	2024-03-07 13:03:25.837	🦥
spotify:track:1ktSui7aiz9XceMdTDeCUF	1	Talk Talk Talk	2024-03-07 13:14:15.052	🦥
spotify:track:0oz5Meupgpje87RXjYXyCH	1	Frozen	2024-03-07 17:19:52.383	🦥
spotify:track:3jj5ZZ87UphCM0FmZzarpn	1	Gimme! Gimme! Gimme! (A Man After Midnight)	2024-03-10 20:34:25.163	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2024-03-11 16:56:23.706	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2024-03-11 17:17:35.44	🦥
spotify:track:3VtgKy06wkxOLoxxe0lqXa	1	Destination Calabria	2024-03-11 19:28:11.784	🦥
spotify:track:0i9adAf1xiL0EbOcog6rEo	1	Boots	2024-03-11 20:13:06.401	🦥
spotify:track:5hQRNdaLnqlFYhBiVFMptc	1	Do Or Die	2024-03-11 22:25:47.056	⛰️
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-03-11 22:47:57.81	⛰️
spotify:track:6MDTpYxPFL0wtFd0pjfKws	1	Rhythm Of Love	2024-03-11 23:44:29.856	📼
spotify:track:1EAgPzRbK9YmdOESSMUm6P	1	Home	2024-03-12 00:03:18.06	⛰️
spotify:track:1EAgPzRbK9YmdOESSMUm6P	1	Home	2024-03-12 00:03:22.263	☔
spotify:track:1EAgPzRbK9YmdOESSMUm6P	1	Home	2024-03-12 00:04:03.148	📼
spotify:track:1s6R4qE3zcAI7bfexrWikQ	1	Fake (feat. Paradigm)	2024-03-13 15:47:25.933	🦥
spotify:track:0xut5aUOaVuzQemZGehTDD	1	Night in Paris	2024-03-13 15:56:16.053	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2024-03-13 16:45:11.918	☔
spotify:track:7a86XRg84qjasly9f6bPSD	1	We Are Young (feat. Janelle Monáe)	2024-03-14 14:15:01.075	🍂
spotify:track:0mUyMawtxj1CJ76kn9gIZK	1	Bad Day	2024-03-14 14:15:05.383	🍂
spotify:track:4HlFJV71xXKIGcU3kRyttv	1	Hey, Soul Sister	2024-03-14 14:15:10.092	🍂
spotify:track:215JYyyUnrJ98NK3KEwu6d	1	Soak Up The Sun	2024-03-14 14:16:45.663	🍂
spotify:track:6XcfKZvJio9Z0fQy11GnNX	1	broken	2024-03-14 14:21:04.033	🍂
spotify:track:6t6oULCRS6hnI7rm0h5gwl	1	Some Nights	2024-03-14 14:32:36.786	🍂
spotify:track:6BtmXhTJMM9sBTHeYYASGz	1	It's Time	2024-03-14 14:36:10.719	🍂
spotify:track:1A5V1sxyCLpKJezp75tUXn	1	Closing Time	2024-03-14 14:53:32.586	🍂
spotify:track:2TfSHkHiFO4gRztVIkggkE	1	Sugar, We're Goin Down	2024-03-14 15:28:36.477	🍂
spotify:track:4RCWB3V8V0dignt99LZ8vH	1	Hey There Delilah	2024-03-14 15:33:30.855	🍂
spotify:track:0xut5aUOaVuzQemZGehTDD	1	Night in Paris	2024-03-14 16:11:24.223	🦥
spotify:track:09EhgVA4blwhSic4hF2TFZ	1	Waterfall	2024-03-14 17:24:51.275	🦥
spotify:track:1fJFuvU2ldmeAm5nFIHcPP	1	First Date	2024-03-15 18:43:38.027	🍂
spotify:track:2baHEhQsSyEkkCrCtyhs76	1	Tie me down	2024-03-15 20:28:00.696	🦥
spotify:track:7zZjH4jpPFVxvsn9U3LpbY	1	Yogi Bear	2024-03-19 18:57:12.903	🦀
spotify:track:66yBW9R8aTlLSeboI0HZFj	1	7 Days a Week	2024-03-21 18:39:36.549	🍂
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-03-22 19:14:56.689	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2024-03-23 00:55:23.291	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2024-03-27 18:58:24.875	🦥
spotify:track:6TrNRd98WksT9Kkmx9uj6R	1	Let It Rock	2024-03-27 18:59:37.218	🦥
spotify:track:4f9wNNZET9wH7eMBgONd3d	1	Doctor (Work It Out) [feat. Miley Cyrus]	2024-03-27 19:37:25.262	🦥
spotify:track:6ORqU0bHbVCRjXm9AjyHyZ	1	Good Riddance (Time of Your Life)	2024-03-27 21:14:48.731	🍂
spotify:track:2iUmqdfGZcHIhS3b9E9EWq	1	Everybody Talks	2024-03-27 21:18:54.734	🍂
spotify:track:1NhPKVLsHhFUHIOZ32QnS2	1	Secrets	2024-03-27 21:19:48.156	🍂
spotify:track:7mnGQesk1TzQLzQ9bYWZPR	1	She's so High	2024-03-27 21:27:33.811	🍂
spotify:track:285hMzLhJwHVLe9QT9qilk	1	Breakeven	2024-03-27 21:37:47.983	🍂
spotify:track:3ZffCQKLFLUvYM59XKLbVm	1	Wake Me up When September Ends	2024-03-27 21:46:18.282	🍂
spotify:track:5xEM5hIgJ1jjgcEBfpkt2F	1	Complicated	2024-03-27 22:00:46.197	📼
spotify:track:5xEM5hIgJ1jjgcEBfpkt2F	1	Complicated	2024-03-27 22:00:50.513	🍂
spotify:track:6OtCIsQZ64Vs1EbzztvAv4	1	Good Life	2024-03-27 22:12:12.381	🍂
spotify:track:6ZOBP3NvffbU4SZcrnt1k6	1	Kryptonite	2024-03-29 20:51:11.267	🔥
spotify:track:6ZOBP3NvffbU4SZcrnt1k6	1	Kryptonite	2024-03-29 20:51:18.094	🦊
spotify:track:6ZOBP3NvffbU4SZcrnt1k6	1	Kryptonite	2024-03-29 20:51:29.194	🍂
spotify:track:6ZOBP3NvffbU4SZcrnt1k6	-1	Kryptonite	2024-03-29 20:51:32.912	🦊
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2024-03-31 20:02:44.264	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2024-03-31 20:02:45.824	☔
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2024-03-31 20:02:49.635	⛰️
spotify:track:2uqYupMHANxnwgeiXTZXzd	1	Austin	2024-04-04 15:31:52.328	🤠
spotify:track:4ZnkygoWLzcGbQYCm3lkae	1	Rush	2024-04-06 13:37:58.035	🦥
spotify:track:7CH8J4ulT49UfZwSDSkSZA	1	i miss u (with Au/Ra)	2024-04-06 13:49:48.753	🦥
spotify:track:5WOnsi0Bug74LmhxcPfKvR	1	In Your Arms (For An Angel)	2024-04-06 13:56:52.408	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-04-06 13:58:43.233	🦥
spotify:track:6BwPstqf4RoRMbDidFWNxE	1	Do It All Again	2024-04-06 14:06:40.103	🦥
spotify:track:6JIC3hbC28JZKZ8AlAqX8h	1	Cold Heart - PNAU Remix	2024-04-06 14:34:50.993	🦥
spotify:track:6Q9ls4l10fcTNeHdEq3kB1	1	No Diggity	2024-04-06 15:29:40.984	🦥
spotify:track:7bFmXanwZQm6BMV9Nka6Hk	1	Our Last Summer - From 'Mamma Mia!' Original Motion Picture Soundtrack	2024-04-06 16:12:03.352	🦥
spotify:track:7bFmXanwZQm6BMV9Nka6Hk	1	Our Last Summer - From 'Mamma Mia!' Original Motion Picture Soundtrack	2024-04-06 16:12:36.011	🦥
spotify:track:6OtCIsQZ64Vs1EbzztvAv4	1	Good Life	2024-04-06 16:15:33.31	🦥
spotify:track:6OtCIsQZ64Vs1EbzztvAv4	1	Good Life	2024-04-06 16:18:34.058	🦥
spotify:track:1IIV8jglA0klVZy17q665k	1	Never Really Over	2024-04-06 16:25:40.041	🦥
spotify:track:5A5bLKdL5I3k3FTEQlAUw7	1	Following the Sun	2024-04-06 16:30:00.68	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2024-04-06 17:05:53.96	🦥
spotify:track:6KJ4rwX0hT3bWO953YEmpY	1	JAPAN	2024-04-06 17:30:03.796	🦥
spotify:track:4nBG4RjDuiAa6Q7akigZI9	1	Drowning In You	2024-04-06 17:30:24.673	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-04-06 17:35:38.25	🦥
spotify:track:6V5LMAIGNd7qMjco5JjUSa	1	Drink And Shout	2024-04-06 17:39:10.432	🦥
spotify:track:0kDI42WWRwsrKAmE7wmQbt	1	Creep	2024-04-06 17:42:04.115	🦥
spotify:track:5w40ZYhbBMAlHYNDaVJIUu	1	Chemical	2024-04-06 18:05:10.059	🦥
spotify:track:6MDTpYxPFL0wtFd0pjfKws	1	Rhythm Of Love	2024-04-06 18:09:35.997	🍂
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2024-04-07 00:05:52.75	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-04-09 20:31:42.496	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2024-04-10 19:31:29.288	🦥
spotify:track:6Q9ls4l10fcTNeHdEq3kB1	1	No Diggity	2024-04-10 19:48:37.734	🦥
spotify:track:1okz0plcLFh3AqBoOKmui4	1	Rabbit Hole	2024-04-10 19:51:42.784	🦥
spotify:track:4dskGPAW5tyuWhWWfmmCh7	1	Another Love	2024-04-10 19:57:16.398	🦥
spotify:track:5bdIYjZy0ea7UtdDA2t4U7	1	Save Tonight	2024-04-10 19:59:26.285	🦥
spotify:track:0QR4vZ9iuNjrkWYNLoVAnM	1	Live And Die (feat. Sophie Simmons)	2024-04-10 20:03:13.418	🦥
spotify:track:6VlxEmdgQWA8LifowgVSky	1	Drive By	2024-04-10 20:12:08.399	🦥
spotify:track:6Q9ls4l10fcTNeHdEq3kB1	1	No Diggity	2024-04-13 13:07:10.372	🦥
spotify:track:1okz0plcLFh3AqBoOKmui4	1	Rabbit Hole	2024-04-13 13:09:57.603	🦥
spotify:track:0i9adAf1xiL0EbOcog6rEo	1	Boots	2024-04-13 13:12:26.741	🦥
spotify:track:5bdIYjZy0ea7UtdDA2t4U7	1	Save Tonight	2024-04-13 13:18:16.549	🦥
spotify:track:3W3v72EKmAfAiuJm9BDi9b	1	Summer Jams	2024-04-13 13:29:21.02	🦥
spotify:track:0HGpMpt4OrGUtdHq8dVuPN	1	On Repeat	2024-04-13 13:33:21.145	🦥
spotify:track:0HGpMpt4OrGUtdHq8dVuPN	1	On Repeat	2024-04-13 13:34:04.393	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2024-04-13 14:00:43.176	🦥
spotify:track:0y8bSLlOciVW9ejfEmExA9	1	Diamonds	2024-04-13 14:05:39.145	🦥
spotify:track:0mBmEZlBoEU7ofwOSYVPcj	1	Raindrops (feat. Jessica Chertock)	2024-04-13 14:09:22.148	🦥
spotify:track:7bFmXanwZQm6BMV9Nka6Hk	1	Our Last Summer - From 'Mamma Mia!' Original Motion Picture Soundtrack	2024-04-13 15:45:08.822	🦥
spotify:track:3gMsf1A4ewNI3NWDGVlmHb	1	Bad Boys (Theme from Cops)	2024-04-13 21:16:20.807	🦀
spotify:track:6Q9ls4l10fcTNeHdEq3kB1	1	No Diggity	2024-04-13 22:51:17.828	🦥
spotify:track:7Mm5GLCX3Euywif7hcYkB4	1	We Are Number One (From "Lazy Town")	2024-04-14 23:24:41.235	🦀
spotify:track:3Dzso9Q2WwupEclqgxBZht	1	Pumped Up Kicks	2024-04-18 19:41:13.58	🦥
spotify:track:0i9adAf1xiL0EbOcog6rEo	1	Boots	2024-04-18 19:43:41.51	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-04-18 19:48:36.193	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-04-18 19:49:22.145	🦥
spotify:track:6Q9ls4l10fcTNeHdEq3kB1	1	No Diggity	2024-04-18 19:52:17.348	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2024-04-18 19:55:01.528	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2024-04-18 20:03:43.57	🦥
spotify:track:7bFmXanwZQm6BMV9Nka6Hk	1	Our Last Summer - From 'Mamma Mia!' Original Motion Picture Soundtrack	2024-04-18 21:39:51.815	🦥
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-04-18 21:44:19.188	🦥
spotify:track:256sdJU0D1k9sLHmZ6FtI4	1	Wellerman - Sea Shanty / 220 KID x Billen Ted Remix	2024-04-18 21:54:32.145	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2024-04-18 21:59:18.144	🦥
spotify:track:7LRMbd3LEoV5wZJvXT1Lwb	1	T.N.T.	2024-04-19 13:33:50.106	🔥
spotify:track:6VlxEmdgQWA8LifowgVSky	1	Drive By	2024-04-20 15:07:59.661	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-04-20 18:59:34.509	🦥
spotify:track:1okz0plcLFh3AqBoOKmui4	1	Rabbit Hole	2024-04-21 01:28:08.756	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2024-04-21 02:05:44.263	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-04-21 02:49:38.819	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-04-21 02:49:39.331	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-04-21 02:49:40.847	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-04-21 02:49:41.653	🦥
spotify:track:6RSVgjjYRtKg4FDyx2Lj1u	1	The Best	2024-04-21 16:22:57.297	🦥
spotify:track:2uqYupMHANxnwgeiXTZXzd	1	Austin	2024-04-22 22:25:51.377	🦥
spotify:track:4IadxL6BUymXlh8RCJJu7T	1	Too Sweet	2024-04-22 22:25:56.52	🦥
spotify:track:61i3HxSlZI6EQnVdYeofyo	1	Hide Away	2024-04-22 22:44:23.931	🦊
spotify:track:61i3HxSlZI6EQnVdYeofyo	1	Hide Away	2024-04-22 22:44:25.091	🐺
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-04-23 16:24:27.9	🦥
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2024-04-23 20:06:16.064	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2024-04-24 21:48:13.98	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2024-04-24 21:55:12.114	🦥
spotify:track:7mJPU3dM2dlEbNXjQa73D2	1	What You Say (feat. Indiiana)	2024-04-25 20:49:43.905	🦥
spotify:track:4ZnkygoWLzcGbQYCm3lkae	1	Rush	2024-04-25 21:17:01.377	🦥
spotify:track:0Q06bNL4pMTlkilvL88nda	1	Maybe My Soulmate Died	2024-04-26 22:59:31.181	☔
spotify:track:3WMj8moIAXJhHsyLaqIIHI	1	Something in the Orange	2024-04-26 23:00:00.066	☔
spotify:track:4rlxs68jKAqkD0fHi9Kesm	1	All the Things She Said - Cristian Marchi & Luis Rodriguez Mix	2024-04-29 15:35:44.637	🦥
spotify:track:0PDUDa38GO8lMxLCRc4lL1	1	PILLOWTALK	2024-04-30 13:12:53.45	📢
spotify:track:0PDUDa38GO8lMxLCRc4lL1	1	PILLOWTALK	2024-04-30 13:12:54.401	🐺
spotify:track:6gj08XDlv9Duc2fPOxUmVD	1	Lips Are Movin	2024-04-30 13:26:49.506	🦊
spotify:track:2s1sdSqGcKxpPr5lCl7jAV	1	Chandelier	2024-04-30 13:33:54.672	📢
spotify:track:33RJ3P6wc0B0FIyDalhNTv	1	Here We Go Again	2024-04-30 15:57:36.623	📼
spotify:track:51ZQ1vr10ffzbwIjDCwqm4	1	we can't be friends (wait for your love)	2024-05-01 00:39:19.162	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-05-03 13:23:16.931	🦥
spotify:track:50DMJJpAeQv4fIpxZvQz2e	1	Monsters (feat. Demi Lovato and blackbear)	2024-05-04 17:11:17.478	🦥
spotify:track:2Nt3VdNRFMkDfloEzXywGn	1	Empty Promises	2024-05-06 01:00:20.651	🦥
spotify:track:59xD5osEFsaNt5PXfIKUnX	1	Illusion	2024-05-06 18:22:08.411	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-05-06 22:53:50.524	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-05-06 22:58:26.447	🦥
spotify:track:4ZnkygoWLzcGbQYCm3lkae	1	Rush	2024-05-06 23:16:48.263	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2024-05-07 16:20:02.674	🦥
spotify:track:7voJOTOqLto0HyQltECuzh	1	The Way I Are	2024-05-07 16:56:52.552	🦥
spotify:track:7rji3pwPqPCUVX2flQw8Zj	1	E.T.	2024-05-07 17:00:22.586	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-05-07 17:11:56.631	🦥
spotify:track:4ixpcIQTt7EE1EAqotGZGb	1	Right Now (Remix)	2024-05-07 19:58:59.162	🦥
spotify:track:4XpDj477gvnsYNT21ap9Y8	1	Last Melody	2024-05-07 20:03:41.081	🦥
spotify:track:0knsBJ21cqAbgjdr2i0R9b	1	The Bad Touch 2k20	2024-05-07 20:40:17.41	🦥
spotify:track:4Ef3ODp0REOFXMgDL4S5fM	1	Stereo Love	2024-05-07 20:51:26.418	🦥
spotify:track:2cMH4ENPzIeKqXS0PbKLoY	1	Havana	2024-05-08 01:07:13.959	🦥
spotify:track:4dskGPAW5tyuWhWWfmmCh7	1	Another Love	2024-05-08 11:29:31.729	🦥
spotify:track:63bWXWGcWnRQvdS8bJWdkB	1	Love Again (feat. Alida)	2024-05-08 11:32:32.222	🦥
spotify:track:1T1P4aZxStasNK76EfyZcF	1	Just Dance	2024-05-08 11:34:53.778	🦥
spotify:track:2cMH4ENPzIeKqXS0PbKLoY	1	Havana	2024-05-08 11:35:29.548	🦥
spotify:track:4ixpcIQTt7EE1EAqotGZGb	1	Right Now (Remix)	2024-05-08 12:06:06.591	🍂
spotify:track:4ixpcIQTt7EE1EAqotGZGb	1	Right Now (Remix)	2024-05-08 12:06:08.134	🦥
spotify:track:4ixpcIQTt7EE1EAqotGZGb	-1	Right Now (Remix)	2024-05-08 12:06:10.657	🍂
spotify:track:0HGpMpt4OrGUtdHq8dVuPN	1	On Repeat	2024-05-08 12:07:16.56	🦥
spotify:track:4dskGPAW5tyuWhWWfmmCh7	1	Another Love	2024-05-08 12:12:13.515	🦥
spotify:track:4bAzLbJOkwkZEakSiKd3sZ	1	Low	2024-05-08 20:13:52.025	🦥
spotify:track:17nNJNrJ8mrVA2xs5NkVsR	1	You Light Me Up	2024-05-08 20:18:06.613	🦥
spotify:track:3yrqP8f56uJ4OJeGbkIQTB	1	Marble	2024-05-08 20:23:07.178	🦥
spotify:track:5YihgP3KuNSZc6qrrxecfu	1	Baker Street	2024-05-08 20:24:20.365	🦥
spotify:track:63bWXWGcWnRQvdS8bJWdkB	1	Love Again (feat. Alida)	2024-05-08 22:29:26.002	🦥
spotify:track:0z3XcxcrqvWe36Dtgiqrh0	1	Revenge	2024-05-09 16:30:28.772	🦀
spotify:track:5fBBhQfbpkYpGc0Qcax4FN	1	Where Do We Go	2024-05-10 12:57:29.997	🦥
spotify:track:5fBBhQfbpkYpGc0Qcax4FN	1	Where Do We Go	2024-05-10 12:59:19.244	🦥
spotify:track:1SlLP2AI4L2oh3VRJfHBpf	1	Hurricane (feat. SHIBUI)	2024-05-10 13:22:33.135	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-05-10 13:38:46.235	🦥
spotify:track:63bWXWGcWnRQvdS8bJWdkB	1	Love Again (feat. Alida)	2024-05-10 13:56:49.888	🦥
spotify:track:5fBBhQfbpkYpGc0Qcax4FN	1	Where Do We Go	2024-05-10 15:35:03.779	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-05-10 15:44:29.451	🦥
spotify:track:4d1WoQ6dW7feMW9dGchNyL	1	Clean Break	2024-05-10 15:45:10.826	🦥
spotify:track:6lFHE3POUybg20bbWqrYJC	1	Kernkraft 400 (A Better Day) - MistaJam Remix	2024-05-10 16:13:13.195	🦥
spotify:track:6tDudlNZloZt8YBPGp6ye1	1	Don't Play Games	2024-05-10 16:13:16.991	🦥
spotify:track:4WRtXqu9TmvvwZ3bzdcCVQ	1	Thousand Lullabies	2024-05-10 16:34:24.017	🦥
spotify:track:0knsBJ21cqAbgjdr2i0R9b	1	The Bad Touch 2k20	2024-05-12 03:10:46.27	🦥
spotify:track:1SlLP2AI4L2oh3VRJfHBpf	1	Hurricane (feat. SHIBUI)	2024-05-12 08:56:02.23	🦥
spotify:track:6RSVgjjYRtKg4FDyx2Lj1u	1	The Best	2024-05-12 09:03:38.437	🦥
spotify:track:4dskGPAW5tyuWhWWfmmCh7	1	Another Love	2024-05-12 10:08:21.107	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-05-12 10:19:57.811	🦥
spotify:track:0kDI42WWRwsrKAmE7wmQbt	1	Creep	2024-05-12 10:24:07.021	🦥
spotify:track:4ZnkygoWLzcGbQYCm3lkae	1	Rush	2024-05-12 10:42:28.782	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2024-05-12 12:36:39.903	🦥
spotify:track:6DC0wG7y6tGBjWARnzlZXh	1	Samurai	2024-05-12 12:49:32.757	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-05-12 13:00:37.527	🦥
spotify:track:4dskGPAW5tyuWhWWfmmCh7	1	Another Love	2024-05-12 13:52:09.512	🦥
spotify:track:3yrqP8f56uJ4OJeGbkIQTB	1	Marble	2024-05-12 14:01:16.593	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-05-12 14:10:32.581	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-05-12 15:05:31.248	🦥
spotify:track:08lo8MO2RVzNRGO6da99RQ	1	Wonderful Life	2024-05-12 15:37:45.592	🦥
spotify:track:2PeKCn8NSGQXAHONaCh3wB	1	Dangerous	2024-05-15 19:41:08.944	🦥
spotify:track:6RSVgjjYRtKg4FDyx2Lj1u	1	The Best	2024-05-16 14:44:20.53	🦥
spotify:track:5fIZ683j2xPeLAXfHeWKEG	1	Dernière danse - Techno Mix	2024-05-16 18:26:50.474	🦥
spotify:track:0kDI42WWRwsrKAmE7wmQbt	1	Creep	2024-05-17 00:43:11.441	🦥
spotify:track:7kfOEMJBJwdCYqyJeEnNhr	1	Moth To A Flame (with The Weeknd)	2024-05-17 19:24:46.953	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-05-17 19:31:16.787	🦥
spotify:track:1xpDFe17I9KbiXQ74QpLeK	1	It Just Won't Do	2024-05-18 11:13:59.131	🦥
spotify:track:6JBfByv9Um8aeC8nHKnC0O	1	Love On Repeat	2024-05-18 11:21:36.328	🦥
spotify:track:17mYJ0a4KeROL4NFGi1MYS	1	The Genre Police	2024-05-18 11:39:18.853	🦥
spotify:track:17mYJ0a4KeROL4NFGi1MYS	1	The Genre Police	2024-05-18 11:39:20.194	🦥
spotify:track:17mYJ0a4KeROL4NFGi1MYS	1	The Genre Police	2024-05-18 11:39:42.267	🦥
spotify:track:17mYJ0a4KeROL4NFGi1MYS	1	The Genre Police	2024-05-18 11:39:42.938	🦥
spotify:track:50DMJJpAeQv4fIpxZvQz2e	1	Monsters (feat. Demi Lovato and blackbear)	2024-05-19 14:23:34.619	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-05-19 14:28:37.553	🦥
spotify:track:7kfOEMJBJwdCYqyJeEnNhr	1	Moth To A Flame (with The Weeknd)	2024-05-21 18:48:55.415	🦥
spotify:track:0knsBJ21cqAbgjdr2i0R9b	1	The Bad Touch 2k20	2024-05-23 17:24:50.497	🦥
spotify:track:0knsBJ21cqAbgjdr2i0R9b	1	The Bad Touch 2k20	2024-05-23 17:25:35.233	🦥
spotify:track:1T1P4aZxStasNK76EfyZcF	1	Just Dance	2024-05-23 17:36:20.497	🦥
spotify:track:3bK1zVFBKIzYjmptmI4NsJ	1	Overdrive (feat. Norma Jean Martine)	2024-05-23 17:40:10.209	🦥
spotify:track:6JOlNkT0QdHeZB0wPbI9IR	1	Turn Me On (feat. Nicki Minaj)	2024-05-23 17:42:37.05	🦥
spotify:track:3MOECVkNshqHYTPt5DZcdN	1	Five More Hours	2024-05-23 17:54:17.233	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-05-23 20:47:18.54	🦥
spotify:track:1uigwk5hNV84zRd5YQQRTk	1	Pocketful of Sunshine	2024-05-24 16:11:04.782	📼
spotify:track:2uqYupMHANxnwgeiXTZXzd	1	Austin	2024-05-24 16:19:47.537	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-05-24 16:22:00.688	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-05-24 16:24:56.106	🦥
spotify:track:7kfOEMJBJwdCYqyJeEnNhr	1	Moth To A Flame (with The Weeknd)	2024-05-25 01:14:23.596	🦥
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	1	Pink Soldiers	2024-05-25 01:37:57.512	🪬
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-05-25 01:41:17.938	🪬
spotify:track:7CH8J4ulT49UfZwSDSkSZA	1	i miss u (with Au/Ra)	2024-05-25 01:50:13.678	🦥
spotify:track:4bAzLbJOkwkZEakSiKd3sZ	1	Low	2024-05-25 01:52:02.636	🦥
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-05-25 01:54:01.798	🦥
spotify:track:7mJPU3dM2dlEbNXjQa73D2	1	What You Say (feat. Indiiana)	2024-05-25 01:56:45.212	🦥
spotify:track:08lo8MO2RVzNRGO6da99RQ	1	Wonderful Life	2024-05-25 01:57:46.036	🦥
\.


--
-- PostgreSQL database dump complete
--

