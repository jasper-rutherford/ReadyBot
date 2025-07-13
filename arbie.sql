--
-- PostgreSQL database dump
--

-- Dumped from database version 13.21 (Raspbian 13.21-0+deb11u1)
-- Dumped by pg_dump version 13.21 (Raspbian 13.21-0+deb11u1)

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
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2024-05-26 02:48:32.074	🦥
spotify:track:5fBBhQfbpkYpGc0Qcax4FN	1	Where Do We Go	2024-05-27 20:07:33.16	🦥
spotify:track:4bAzLbJOkwkZEakSiKd3sZ	1	Low	2024-05-27 20:12:04.902	🦥
spotify:track:3JlHRjPt2TNB9h7VFf0im2	1	Weekends	2024-05-27 20:18:49.276	🦥
spotify:track:63bWXWGcWnRQvdS8bJWdkB	1	Love Again (feat. Alida)	2024-05-27 20:22:47.912	🦥
spotify:track:33iRpf5dMMpGlPKfRKJkdR	1	Burn Slowly	2024-05-27 20:37:55.533	🦥
spotify:track:0ieEZjHQO5eq9Uad7opItK	1	I Was Made	2024-05-28 18:19:33.668	🦥
spotify:track:7kfOEMJBJwdCYqyJeEnNhr	1	Moth To A Flame (with The Weeknd)	2024-05-28 18:31:50.549	🦥
spotify:track:7kfOEMJBJwdCYqyJeEnNhr	1	Moth To A Flame (with The Weeknd)	2024-05-28 18:39:07.522	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2024-05-28 18:39:11.101	🦥
spotify:track:1cYyZ1N98GyRS3cMcccFHd	1	Wasted Love (feat. Lagique)	2024-05-28 21:08:18.517	🦥
spotify:track:2JUwLeTzOR5eSbnizg4QWi	1	Uncover	2024-05-29 23:53:29.705	🦥
spotify:track:4dskGPAW5tyuWhWWfmmCh7	1	Another Love	2024-05-29 23:58:16.676	🦥
spotify:track:5fIZ683j2xPeLAXfHeWKEG	1	Dernière danse - Techno Mix	2024-05-30 23:01:43.912	🦥
spotify:track:0rFOs9paloAvEtzwDX1Kmc	1	Bubbly	2024-06-01 17:52:42.765	📼
spotify:track:0bRNszTbTFLNlunAeh7eom	1	Sharp Dressed Man (2008 Remaster)	2024-06-01 21:29:52.603	🔥
spotify:track:7J9mBHG4J2eIfDAv5BehKA	1	7 Element	2024-06-04 01:25:40.83	🦥
spotify:track:7H0ya83CMmgFcOhw0UB6ow	1	Space Song	2024-06-05 00:55:25.899	🌌
spotify:track:5fp6m6Zo4LetiWaMMrPjy5	1	Dreamscape	2024-06-05 01:06:22.717	🌌
spotify:track:6rdga62e70bV9Mll0X8UJ5	1	Drinking with Cupid	2024-06-05 23:37:19.527	🦥
spotify:track:27L8sESb3KR79asDUBu8nW	1	Stacy's Mom	2024-06-05 23:48:58.421	🦥
spotify:track:4fkFsB17kyzq27QhOVt19V	1	Love Is Gone	2024-06-06 18:29:39.334	🦥
spotify:track:1okz0plcLFh3AqBoOKmui4	1	Rabbit Hole	2024-06-06 18:30:47.157	🦥
spotify:track:3F7JkvI31gWw0ifIA553X5	1	I Like	2024-06-06 18:56:39.282	🦥
spotify:track:3fWKUqt1i6CsEBLuB8IWJ1	1	Dance With Your Devil	2024-06-06 18:59:44.508	🦥
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-06-06 19:01:44.206	🦥
spotify:track:47TOnN2ffRwsEvWsTZ6IaI	1	Shake That	2024-06-06 19:13:09.508	🦥
spotify:track:27yUNsQo2CPPokNw69M23X	1	Shot a friend	2024-06-06 19:38:01.872	🦥
spotify:track:3jksOdXCaDXyGiZ7L4YZbp	1	All Nighter	2024-06-06 20:03:20.472	🦥
spotify:track:4fkFsB17kyzq27QhOVt19V	1	Love Is Gone	2024-06-06 20:37:41.744	🦥
spotify:track:4XpDj477gvnsYNT21ap9Y8	1	Last Melody	2024-06-06 20:39:33.761	🦥
spotify:track:7voJOTOqLto0HyQltECuzh	1	The Way I Are	2024-06-06 20:47:12.418	🦥
spotify:track:4bAzLbJOkwkZEakSiKd3sZ	1	Low	2024-06-06 20:53:01.043	🦥
spotify:track:4uDhts78RdwIDjEqPrYVKp	1	Sweet Dreams	2024-06-06 21:20:54.364	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-06-06 23:02:18.768	🦥
spotify:track:63bWXWGcWnRQvdS8bJWdkB	1	Love Again (feat. Alida)	2024-06-07 01:01:37.76	🦥
spotify:track:0mQNFiamtlZF5i6DGYckTv	1	Be My Lover	2024-06-07 23:18:26.6	🦥
spotify:track:5YdnOm5990Kfq1Jodws98B	1	Call It Love	2024-06-07 23:37:29.616	🦥
spotify:track:50DMJJpAeQv4fIpxZvQz2e	1	Monsters (feat. Demi Lovato and blackbear)	2024-06-08 00:33:23.291	🦥
spotify:track:7MeP128gHh4GyTMoGUiZlt	1	u turn me on (but u give me depression)	2024-06-08 14:13:19.598	🦥
spotify:track:4ewmHD3aRBmLyTsbGreNLw	1	what would you do?	2024-06-08 14:19:54.658	🦥
spotify:track:3ikuDKc66w7CH9hRgc2KfX	1	All My Exes' Moms	2024-06-08 15:30:06.621	🦥
spotify:track:5s7m2xNZWgz5FqVSIvJcGA	1	Save a Horse (Ride a Cowboy)	2024-06-08 19:09:24.086	🦥
spotify:track:698ItKASDavgwZ3WjaWjtz	1	Faded	2024-06-08 19:18:20.527	🦥
spotify:track:7y3c1oJMY1CwwtOZ84Qovu	1	Hallucination	2024-06-09 14:09:54.886	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-06-09 14:18:39.733	🦥
spotify:track:256sdJU0D1k9sLHmZ6FtI4	1	Wellerman - Sea Shanty / 220 KID x Billen Ted Remix	2024-06-09 14:21:46.3	🦥
spotify:track:0E7U13bmvEccq4CtC3q0Pw	1	Me & U	2024-06-09 14:23:44.357	🦥
spotify:track:4ZnkygoWLzcGbQYCm3lkae	1	Rush	2024-06-09 14:50:15.582	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2024-06-09 14:52:30.154	🦥
spotify:track:6RSVgjjYRtKg4FDyx2Lj1u	1	The Best	2024-06-09 14:54:16.306	🦥
spotify:track:5s7m2xNZWgz5FqVSIvJcGA	1	Save a Horse (Ride a Cowboy)	2024-06-09 15:06:05.977	🦥
spotify:track:7kfOEMJBJwdCYqyJeEnNhr	1	Moth To A Flame (with The Weeknd)	2024-06-09 15:25:24.124	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-06-09 15:41:18.917	🦥
spotify:track:3jksOdXCaDXyGiZ7L4YZbp	1	All Nighter	2024-06-09 15:43:28.261	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-06-09 16:02:03.455	🦥
spotify:track:5FhnPzf4sZ68ZZJ1n5oek1	1	Up & Down	2024-06-09 16:31:11.215	🦥
spotify:track:6JOlNkT0QdHeZB0wPbI9IR	1	Turn Me On (feat. Nicki Minaj)	2024-06-09 18:50:04.912	🦥
spotify:track:0qOvlEzD7xU35GLFT8DF1t	1	We Run The Night - Teddy Cream Remix	2024-06-09 18:58:58.512	🦥
spotify:track:7kftK4n15rl1wbpfjSq2Tk	1	Wherever I Go	2024-06-09 19:05:25.737	📢
spotify:track:0VO8gYVDSwM1Qdd2GsMoYK	1	Moth To A Flame (with The Weeknd)	2024-06-10 15:37:50.619	🦥
spotify:track:7gUpO6td4OOnu0Lf9vhcIV	1	Lights - Single Version	2024-06-10 16:00:42.642	🦥
spotify:track:4dTaAiV9xFFCxnPur9c9yL	1	Memories (feat. Kid Cudi)	2024-06-10 18:37:17.896	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-06-10 20:58:38.311	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2024-06-10 21:25:51.998	🦥
spotify:track:6pfhyFIP10boLwr4mcSE0g	1	Shake It	2024-06-10 21:53:51.432	🦥
spotify:track:0tyR7Bu9P086aWBFZ4QJoo	1	Monsters (feat. blackbear)	2024-06-10 23:04:00.766	🦥
spotify:track:0qOvlEzD7xU35GLFT8DF1t	1	We Run The Night - Teddy Cream Remix	2024-06-11 20:55:10.057	🦥
spotify:track:5fIZ683j2xPeLAXfHeWKEG	1	Dernière danse - Techno Mix	2024-06-16 23:00:05.839	🦥
spotify:track:51ZQ1vr10ffzbwIjDCwqm4	1	we can't be friends (wait for your love)	2024-06-16 23:09:17.981	🦥
spotify:track:21LTZZP3cRDzVFKmvDEtZt	1	Rooftop	2024-06-17 19:58:46.972	🦥
spotify:track:3nMb7ToWIxYvmaIG20z6ux	1	Tonight (I'm Fuckin' You)	2024-06-17 20:19:26.825	🦥
spotify:track:21LTZZP3cRDzVFKmvDEtZt	1	Rooftop	2024-06-17 21:49:36.068	🦥
spotify:track:3trdEhvJEmaBEHKcr6RiWH	1	This Is Gonna Hurt	2024-06-21 18:39:36.069	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-06-26 23:14:39.977	🦥
spotify:track:4ixpcIQTt7EE1EAqotGZGb	1	Right Now (Remix)	2024-06-26 23:42:49.239	🦥
spotify:track:22sKunNSPMCy2lvSLOY5yX	1	Rule The World	2024-06-27 00:00:41.281	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2024-06-27 00:14:30.704	🦥
spotify:track:7kfOEMJBJwdCYqyJeEnNhr	1	Moth To A Flame (with The Weeknd)	2024-06-27 00:15:41.82	🦥
spotify:track:2F2p7b5Xq20mRyEeWYaeUF	1	Substitution (feat. Julian Perretta)	2024-06-27 00:37:28.4	🦥
spotify:track:2iRQKePYqxqXLW01HCVZzG	1	Believe	2024-06-27 00:54:01.681	🦥
spotify:track:0W6MlHGvHAcSsoRt34pZIt	1	Living On Video (feat. DTale)	2024-06-27 00:54:08.448	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-06-27 21:54:18.96	🦥
spotify:track:0W98yebOu4MC2ULhurYbAZ	1	Time After Time	2024-06-27 22:07:03.299	🦥
spotify:track:698ItKASDavgwZ3WjaWjtz	1	Faded	2024-06-27 22:10:29.921	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2024-06-27 22:15:58.843	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2024-06-27 22:32:26.941	🦥
spotify:track:63bWXWGcWnRQvdS8bJWdkB	1	Love Again (feat. Alida)	2024-06-27 22:38:13.905	🦥
spotify:track:5FhnPzf4sZ68ZZJ1n5oek1	1	Up & Down	2024-06-27 22:51:18.656	🦥
spotify:track:3qCCQas6tIP15Yjgu3gl9S	1	All My Life	2024-06-28 00:33:18.097	🦥
spotify:track:1p0jBDjxORjYNJyAphBRpE	1	MONEY ON THE DASH	2024-06-28 00:38:22.69	🦥
spotify:track:1kwHrBWAlucOE57lWugotk	1	Do It Better (feat. Zoe Wees)	2024-06-28 00:41:36.621	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-06-28 01:09:53.643	🦥
spotify:track:63bWXWGcWnRQvdS8bJWdkB	1	Love Again (feat. Alida)	2024-06-29 14:14:00.941	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2024-06-30 12:50:57.421	🦥
spotify:track:3fWKUqt1i6CsEBLuB8IWJ1	1	Dance With Your Devil	2024-06-30 18:12:48.661	🦥
spotify:track:2AAMkITmFcCL9MtTKFui2k	1	Just In Case	2024-06-30 22:09:00.841	🦥
spotify:track:0WljI3sSnC1Kb23U11fLRs	1	Gold On My Skin	2024-06-30 22:28:05.089	🦥
spotify:track:1RF02Cf80mTaeNXG2P2boR	1	21 Reasons (feat. Ella Henderson)	2024-06-30 22:45:03.593	🦥
spotify:track:51ZQ1vr10ffzbwIjDCwqm4	1	we can't be friends (wait for your love)	2024-07-01 00:31:43.163	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2024-07-01 10:54:03.853	🦥
spotify:track:2ovjS1yyTSXy3F0KHlTVTx	1	Be Okay - CLMD Remix	2024-07-03 13:32:52.843	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2024-07-04 00:10:24.177	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2024-07-04 00:36:50.093	🦥
spotify:track:2hSGBHKZgOjWaPckW4mVf9	1	My Lovin'	2024-07-04 11:48:03.57	🦥
spotify:track:0qOvlEzD7xU35GLFT8DF1t	1	We Run The Night - Teddy Cream Remix	2024-07-06 21:59:39.828	🦥
spotify:track:7kfOEMJBJwdCYqyJeEnNhr	1	Moth To A Flame (with The Weeknd)	2024-07-07 00:52:44.875	🦥
spotify:track:3fWKUqt1i6CsEBLuB8IWJ1	1	Dance With Your Devil	2024-07-07 01:44:08.395	🦥
spotify:track:21LTZZP3cRDzVFKmvDEtZt	1	Rooftop	2024-07-08 23:17:05.23	🦥
spotify:track:5FhnPzf4sZ68ZZJ1n5oek1	1	Up & Down	2024-07-08 23:52:06.096	🦥
spotify:track:3ikuDKc66w7CH9hRgc2KfX	1	All My Exes' Moms	2024-07-09 00:07:22.393	🦥
spotify:track:2ovjS1yyTSXy3F0KHlTVTx	1	Be Okay - CLMD Remix	2024-07-09 00:22:24.642	🦥
spotify:track:6rdga62e70bV9Mll0X8UJ5	1	Drinking with Cupid	2024-07-09 00:50:23.393	🦥
spotify:track:2AAMkITmFcCL9MtTKFui2k	1	Just In Case	2024-07-09 01:12:54.894	🦥
spotify:track:3I7i0kt5EcuVdYWfSu2LSm	1	Lights Out	2024-07-09 01:20:00.764	🦥
spotify:track:0W6MlHGvHAcSsoRt34pZIt	1	Living On Video (feat. DTale)	2024-07-09 01:20:07.609	🦥
spotify:track:4q05KbxYZ5JdkmrletgPjF	1	Whistle (feat. Calum Scott)	2024-07-09 02:21:49.559	🦥
spotify:track:5k1uIPpsHmnbWFr4nbpdYb	1	Up All Night (feat. Afrojack)	2024-07-09 02:31:19.055	🦥
spotify:track:12aCF5xMof5sLunrEy8SA7	1	I'm Good (Blue) - Oliver Heldens Remix	2024-07-09 02:36:03.861	🦥
spotify:track:46lyJh9GYmWsHez3EsvmAx	1	Rise Up (feat. Vamero)	2024-07-09 02:39:22.972	🦥
spotify:track:0i8JFpqe9cKwnrcvoNgl1L	1	Feel Invincible	2024-07-10 17:09:10.2	🦥
spotify:track:1jq28NGw6wdtFKx8MBPy6C	1	Burn It to the Ground	2024-07-10 17:12:18.322	🦥
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-07-11 19:05:51.401	🦥
spotify:track:0W6MlHGvHAcSsoRt34pZIt	1	Living On Video (feat. DTale)	2024-07-12 18:39:55.728	🦥
spotify:track:6WC5fhc9XMaCrUNKNjm9xE	1	Thumbs	2024-07-13 15:43:49.653	🦥
spotify:track:5lNuqFVMca4vPupY10cH0J	1	No Promises (feat. Demi Lovato)	2024-07-13 20:10:18.592	🐺
spotify:track:0mQNFiamtlZF5i6DGYckTv	1	Be My Lover	2024-07-13 23:13:53.696	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-07-13 23:21:20.379	🦥
spotify:track:6oJIAZpChGNIEMAecud9SZ	1	Ocean Of Tears	2024-07-13 23:49:49.651	🦥
spotify:track:6WC5fhc9XMaCrUNKNjm9xE	1	Thumbs	2024-07-14 00:28:23.431	🦥
spotify:track:00E0Z2jrF7reoHps4zcbWQ	1	Car Keys (Ayla)	2024-07-16 00:48:21.497	🦥
spotify:track:63e4QdvlOL4GYwyJe0VYjS	1	I Was Made for Lovin' You	2024-07-16 01:09:45.783	🦥
spotify:track:6kvW6EI5UuqCmlp7L7HD9O	1	Someone Else	2024-07-16 01:09:47.222	🦥
spotify:track:2sEre21C8wsUbiP5vLcyvI	1	NO SLEEP	2024-07-16 01:15:59.275	🦥
spotify:track:3ilFtzVTwXQ7n1EpKiZBLr	1	Don't Talk to Me	2024-07-16 01:20:28.803	🦥
spotify:track:6Q2Lb0R6siWVAF6DFvLXRF	1	Beggin' - Remix	2024-07-16 01:24:46.9	🦥
spotify:track:6bW4olKzz8M2BRYNU1ASUi	1	Easy Peasy	2024-07-16 01:30:11.786	🦥
spotify:track:7zJx5Wk8iSkhnm3zyb6xOQ	1	She's So High	2024-07-16 01:30:15.438	🦥
spotify:track:6Q2Lb0R6siWVAF6DFvLXRF	1	Beggin' - Remix	2024-07-16 01:30:19.574	🦥
spotify:track:5YLJYRcfP9mR7olbOVUMcm	1	If I Die Young	2024-07-16 01:30:22.144	🦥
spotify:track:0n5jqofn0uTFr7oYzW7D5D	1	SURVIVOR	2024-07-16 01:53:02.435	🦥
spotify:track:12aCF5xMof5sLunrEy8SA7	1	I'm Good (Blue) - Oliver Heldens Remix	2024-07-16 14:14:32.753	🦥
spotify:track:63e4QdvlOL4GYwyJe0VYjS	1	I Was Made for Lovin' You	2024-07-16 21:22:32.067	🦥
spotify:track:3MPMlVLLHgPPJJBDrX424v	1	Irish Man	2024-07-16 23:57:49.819	🦥
spotify:track:1IdDtg7GhWfHYEWDymq3d2	1	If It Ain’t Me	2024-07-17 22:04:27.139	🦥
spotify:track:0AjmK0Eai4zGrLaJwPvrDp	1	Too Sweet	2024-07-17 22:18:27.433	🦥
spotify:track:6WC5fhc9XMaCrUNKNjm9xE	1	Thumbs	2024-07-17 22:40:27.733	🦥
spotify:track:0Pebpt5NlciT4arOfAEgvB	1	Touch	2024-07-17 22:44:48.019	🦥
spotify:track:1dt220OBbkTsYz1NLVKIaw	1	Call Me (with R3HAB & Timmy Trumpet)	2024-07-18 12:53:06.212	🦥
spotify:track:6WAB3jnlYolBFpjpyZqlGp	1	Love Me Now (feat. FAST BOY) - LUM!X Remix	2024-07-18 13:07:51.599	🦥
spotify:track:7DiSsA1LRHAFXGbdbThK1m	1	Coffee (Give Me Something) - Quintino Remix	2024-07-18 13:10:54.343	🦥
spotify:track:3eNJzSIHaAkMvyzZ0wy6g5	1	In the End	2024-07-18 13:22:38.891	🦥
spotify:track:2ibx46fwgGe3u2pirSgjj7	1	It's A Hard Knock Life - Prezioso Remix	2024-07-18 13:30:01.315	🦥
spotify:track:47bZhVeNH1sC0ZykPi5V3T	1	Bad Decision	2024-07-18 13:48:48.562	🦥
spotify:track:5ij0EuOJmqzwBqVIzBAXbb	1	Dumb	2024-07-18 13:56:49.679	🦥
spotify:track:5BIihGHK73goXTxDg5atLd	1	Another Love	2024-07-18 21:41:32.022	🦥
spotify:track:4q05KbxYZ5JdkmrletgPjF	1	Whistle (feat. Calum Scott)	2024-07-18 23:41:24.21	🦥
spotify:track:6WC5fhc9XMaCrUNKNjm9xE	1	Thumbs	2024-07-18 23:52:26.526	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2024-07-19 00:42:20.324	🦥
spotify:track:76A1RRDEyHKtmV3Vh6PeVN	1	Savage	2024-07-19 10:54:50.821	🦥
spotify:track:6X937hyh1Kp098vSUObdBP	1	We're Beautiful	2024-07-19 11:25:20.716	🦥
spotify:track:3trdEhvJEmaBEHKcr6RiWH	1	This Is Gonna Hurt	2024-07-20 02:40:37.498	🦥
spotify:track:6IY3cC281mz9q0bViUEldz	1	It's A Trip!	2024-07-20 02:45:06.98	🦥
spotify:track:0d2yUkzvqA85zHqiKA9IuE	1	Tell Me How	2024-07-20 12:46:24.042	🦥
spotify:track:5Owz0Wkb3XgaADAm6dEr2O	1	We Ride (feat. Teddy Bee)	2024-07-20 15:09:05.149	🦥
spotify:track:5VEkFlaS12TsOdeofJGPVP	1	Lie For Me	2024-07-20 16:09:52.779	🦥
spotify:track:2iLxXSM7AOzB4RCNzk4bjd	1	Destruction	2024-07-20 20:27:38.167	🦥
spotify:track:2iLxXSM7AOzB4RCNzk4bjd	1	Destruction	2024-07-20 20:40:06.592	🦥
spotify:track:2iLxXSM7AOzB4RCNzk4bjd	1	Destruction	2024-07-20 20:40:07.813	🦥
spotify:track:2iLxXSM7AOzB4RCNzk4bjd	1	Destruction	2024-07-20 20:40:09.396	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-07-20 23:28:05.132	🦥
spotify:track:2AAMkITmFcCL9MtTKFui2k	1	Just In Case	2024-07-21 00:36:17.56	🦥
spotify:track:698ItKASDavgwZ3WjaWjtz	1	Faded	2024-07-21 00:43:31.829	🪬
spotify:track:5FhnPzf4sZ68ZZJ1n5oek1	1	Up & Down	2024-07-21 01:28:09.224	🦥
spotify:track:2iLxXSM7AOzB4RCNzk4bjd	1	Destruction	2024-07-21 01:30:05.39	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2024-07-21 01:34:10.55	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-07-21 01:35:26.964	🦥
spotify:track:6rdga62e70bV9Mll0X8UJ5	1	Drinking with Cupid	2024-07-21 01:46:31.96	🦥
spotify:track:4q05KbxYZ5JdkmrletgPjF	1	Whistle (feat. Calum Scott)	2024-07-21 01:55:32.238	🦥
spotify:track:2AAMkITmFcCL9MtTKFui2k	1	Just In Case	2024-07-21 02:25:26.724	🦥
spotify:track:2AAMkITmFcCL9MtTKFui2k	1	Just In Case	2024-07-21 10:36:58.252	🍂
spotify:track:2AAMkITmFcCL9MtTKFui2k	-1	Just In Case	2024-07-21 10:37:03.198	🍂
spotify:track:2AAMkITmFcCL9MtTKFui2k	1	Just In Case	2024-07-21 10:37:04.686	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-07-21 10:39:06.327	🦥
spotify:track:5fBBhQfbpkYpGc0Qcax4FN	1	Where Do We Go	2024-07-21 10:44:31.363	🦥
spotify:track:76A1RRDEyHKtmV3Vh6PeVN	1	Savage	2024-07-21 11:13:06.284	🦥
spotify:track:2AAMkITmFcCL9MtTKFui2k	1	Just In Case	2024-07-21 11:37:41.223	🦥
spotify:track:2kqMZ9mWxK52aAk1wZFwCn	1	Beating Broken Heart	2024-07-21 11:48:24.056	🦥
spotify:track:4Lo3KebQUz8pDq4B0FphDJ	1	You Got Me - Radio-Edit	2024-07-21 12:00:12.072	🦥
spotify:track:2ovjS1yyTSXy3F0KHlTVTx	1	Be Okay - CLMD Remix	2024-07-21 12:02:13.825	🍂
spotify:track:2ovjS1yyTSXy3F0KHlTVTx	-1	Be Okay - CLMD Remix	2024-07-21 12:02:16.121	🍂
spotify:track:2ovjS1yyTSXy3F0KHlTVTx	1	Be Okay - CLMD Remix	2024-07-21 12:02:17.533	🦥
spotify:track:2jSVBVxFFQY15Ce0V8HUH9	1	Another Level (ft. Lovespeake)	2024-07-21 12:09:24.925	🦥
spotify:track:3c9IKwzgIPcCweCl9so748	1	Underwater	2024-07-21 12:09:29.067	🦥
spotify:track:6WVHfpzYW3HooQaCC80opC	1	Halo (feat. PIA MARIA)	2024-07-21 12:12:53.878	🦥
spotify:track:0WljI3sSnC1Kb23U11fLRs	1	Gold On My Skin	2024-07-21 12:18:04.636	🦥
spotify:track:4LZZw5N1UziWws0hEPZwyu	1	For Those About To Rave	2024-07-21 12:21:10.031	🦥
spotify:track:5WcPCjbZalLkmJduC6kIvO	1	Vivaldi	2024-07-21 12:34:08.851	🦥
spotify:track:07VcTAooOBP8hIluuUS5xr	1	Heavy Metal Love	2024-07-21 12:52:14.178	🦥
spotify:track:2FxJX5c1FkfLpladsgoLAD	1	Don't You Want Me	2024-07-21 13:16:54.653	🦥
spotify:track:2DRJ8zX1cHBr2DyVJNcQhu	1	Spectrum (Say My Name)	2024-07-21 13:24:35.383	🦥
spotify:track:4WRtXqu9TmvvwZ3bzdcCVQ	1	Thousand Lullabies	2024-07-21 13:46:25.494	🦥
spotify:track:21hxN3cxOJoDmQwg2tXUpN	1	Blow Ya Mind	2024-07-21 13:55:40.451	🦥
spotify:track:0SGunE3qppk4PajqOvR6uu	1	Feels Like This (feat. Indiiana)	2024-07-21 14:03:24.384	🦥
spotify:track:7LnkcJhUZ0qs0HoyRm61xr	1	JUMPSTART	2024-07-21 14:27:18.647	🦥
spotify:track:1dt220OBbkTsYz1NLVKIaw	1	Call Me (with R3HAB & Timmy Trumpet)	2024-07-21 14:34:41.688	🦥
spotify:track:7EXennxBRtugSuQX13uLSu	1	Blow It Up	2024-07-21 14:44:31.935	🦥
spotify:track:09rcsC6M15EZPbCVmrqUYK	1	Good Life	2024-07-21 15:03:42.781	🦥
spotify:track:7kpviYjVYmD4VW7vsZTQCU	1	Annie Are You Ok - LUM!X Remix	2024-07-21 15:10:08.365	🦥
spotify:track:5FhnPzf4sZ68ZZJ1n5oek1	1	Up & Down	2024-07-21 15:25:15.266	🦥
spotify:track:5jetXWlEpPIVK6WYYG69R1	1	Mixed Emotions	2024-07-22 12:39:03.6	🦥
spotify:track:3F7JkvI31gWw0ifIA553X5	1	I Like	2024-07-22 12:42:18.092	🦥
spotify:track:7kpviYjVYmD4VW7vsZTQCU	1	Annie Are You Ok - LUM!X Remix	2024-07-22 23:36:12.49	🦥
spotify:track:2ibx46fwgGe3u2pirSgjj7	1	It's A Hard Knock Life - Prezioso Remix	2024-07-22 23:41:15.108	🦥
spotify:track:2AAMkITmFcCL9MtTKFui2k	1	Just In Case	2024-07-22 23:52:39.747	🦥
spotify:track:09rcsC6M15EZPbCVmrqUYK	1	Good Life	2024-07-23 00:10:18.867	🦥
spotify:track:2iRQKePYqxqXLW01HCVZzG	1	Believe	2024-07-23 22:27:13.292	🦥
spotify:track:0SGunE3qppk4PajqOvR6uu	1	Feels Like This (feat. Indiiana)	2024-07-23 23:00:27.818	🦥
spotify:track:3fWKUqt1i6CsEBLuB8IWJ1	1	Dance With Your Devil	2024-07-23 23:29:21.072	🦥
spotify:track:3MPMlVLLHgPPJJBDrX424v	1	Irish Man	2024-07-23 23:41:04.399	🦥
spotify:track:0W6MlHGvHAcSsoRt34pZIt	1	Living On Video (feat. DTale)	2024-07-24 22:26:06.458	🦥
spotify:track:2nCIE2AVFQ1adRVkocdGOp	1	Touch	2024-07-25 00:43:03.916	🦥
spotify:track:5fBBhQfbpkYpGc0Qcax4FN	1	Where Do We Go	2024-07-25 01:08:31.071	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2024-07-25 01:17:13.877	🦥
spotify:track:4bAzLbJOkwkZEakSiKd3sZ	1	Low	2024-07-25 01:25:11.373	🦥
spotify:track:3MPMlVLLHgPPJJBDrX424v	1	Irish Man	2024-07-26 16:23:35.079	🦥
spotify:track:2USlegnFJLrVLpoVfPimKB	1	Thunder	2024-07-28 21:42:47.776	🦥
spotify:track:4MSj19TwYBLgDFj3ddEeco	1	Black Friday (pretty like the sun)	2024-07-31 12:47:22.819	🦥
spotify:track:2x4JC9TxW2LACuuxbsncfG	1	Mockingbird	2024-07-31 12:59:15.156	👷
spotify:track:2GE3k8I0Sbh0puCjI15KGy	1	Barcelona	2024-07-31 13:13:26.291	👷
spotify:track:3iUDHA6FGAKfHX2jmgF0vO	1	i always kinda knew you’d be the death of me	2024-07-31 13:18:47.274	👷
spotify:track:51ZQ1vr10ffzbwIjDCwqm4	1	we can't be friends (wait for your love)	2024-07-31 13:22:35.796	👷
spotify:track:4ZnkygoWLzcGbQYCm3lkae	1	Rush	2024-07-31 13:27:42.834	👷
spotify:track:7MYLHLCf0YWR4TVs3owDny	1	Fire - Official UEFA EURO 2024 Song	2024-07-31 13:31:03.275	👷
spotify:track:0AjmK0Eai4zGrLaJwPvrDp	1	Too Sweet	2024-07-31 13:47:43.239	👷
spotify:track:2Z8RcNkYqStbwUdS7qyx6s	1	Sink or Swim	2024-07-31 13:59:19.479	👷
spotify:track:36gcliMRX1vCpgnrZE3dFZ	1	10:35	2024-07-31 14:05:13.781	👷
spotify:track:09CnYHiZ5jGT1wr1TXJ9Zt	1	Thank You (Not So Bad)	2024-07-31 15:39:09.301	🦥
spotify:track:09CnYHiZ5jGT1wr1TXJ9Zt	1	Thank You (Not So Bad)	2024-07-31 15:39:09.979	👷
spotify:track:3jwQt00cvkN57H6ZR75W2K	1	RUNRUNRUN	2024-07-31 15:46:00.159	🦥
spotify:track:7MmG8p0F9N3C4AXdK6o6Eb	1	Outside (feat. Ellie Goulding)	2024-07-31 15:57:34.86	👷
spotify:track:2mobr1UlKjhxDTOVqng3jw	1	Home	2024-07-31 16:29:43.417	☔
spotify:track:2mobr1UlKjhxDTOVqng3jw	1	Home	2024-07-31 16:29:44.407	🍂
spotify:track:2mobr1UlKjhxDTOVqng3jw	1	Home	2024-07-31 16:29:54.542	📼
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2024-07-31 17:27:30.788	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2024-07-31 17:27:32.158	👷
spotify:track:63bWXWGcWnRQvdS8bJWdkB	1	Love Again (feat. Alida)	2024-07-31 17:52:14.414	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2024-07-31 18:15:22.574	👷
spotify:track:7kpviYjVYmD4VW7vsZTQCU	1	Annie Are You Ok - LUM!X Remix	2024-07-31 18:20:36.205	👷
spotify:track:3UxXEGw1UDAL4KBooq2VxY	1	Therapy	2024-08-01 12:19:22.873	👷
spotify:track:35rozLoS6QLE8HX8qswM3k	1	Rescue Me	2024-08-01 12:21:44.057	👷
spotify:track:6ZOBP3NvffbU4SZcrnt1k6	1	Kryptonite	2024-08-01 12:27:10.656	👷
spotify:track:18lR4BzEs7e3qzc0KVkTpU	1	What I've Done	2024-08-01 12:30:52.798	👷
spotify:track:18lR4BzEs7e3qzc0KVkTpU	1	What I've Done	2024-08-01 12:31:54.63	💿
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2024-08-01 12:45:57.483	💿
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2024-08-01 12:46:00.476	👷
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2024-08-01 12:46:01.674	🔥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2024-08-01 12:46:02.03	🦥
spotify:track:0n5jqofn0uTFr7oYzW7D5D	1	SURVIVOR	2024-08-02 20:26:35.284	🦥
spotify:track:7EXennxBRtugSuQX13uLSu	1	Blow It Up	2024-08-02 23:42:07.203	🦥
spotify:track:2iLxXSM7AOzB4RCNzk4bjd	1	Destruction	2024-08-03 00:02:31.966	🦥
spotify:track:0nrRP2bk19rLc0orkWPQk2	1	Wake Me Up	2024-08-05 11:42:48.359	☔
spotify:track:0SuLAslEMFZAXf0SwY7syi	1	All Time Low	2024-08-05 11:43:11.793	☔
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2024-08-05 11:47:37.902	☔
spotify:track:0JiVRyTJcJnmlwCZ854K4p	1	Alone	2024-08-05 11:50:30.415	☔
spotify:track:2L52NkXrarZ4kxCCQ5B3r4	1	Nightshade	2024-08-05 15:31:11.857	🌌
spotify:track:6Qyc6fS4DsZjB2mRW9DsQs	1	Iris	2024-08-05 16:13:37.797	📼
spotify:track:0AjmK0Eai4zGrLaJwPvrDp	1	Too Sweet	2024-08-10 15:02:09.763	🦥
spotify:track:5s7m2xNZWgz5FqVSIvJcGA	1	Save a Horse (Ride a Cowboy)	2024-08-10 15:03:01.036	📼
spotify:track:5s7m2xNZWgz5FqVSIvJcGA	1	Save a Horse (Ride a Cowboy)	2024-08-10 15:03:36.14	📼
spotify:track:0AjmK0Eai4zGrLaJwPvrDp	1	Too Sweet	2024-08-10 20:25:47.386	🦥
spotify:track:0AjmK0Eai4zGrLaJwPvrDp	1	Too Sweet	2024-08-10 20:56:27.559	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2024-08-10 20:56:40.559	🦥
spotify:track:7kfOEMJBJwdCYqyJeEnNhr	1	Moth To A Flame (with The Weeknd)	2024-08-10 20:56:44.694	🦥
spotify:track:5fIZ683j2xPeLAXfHeWKEG	1	Dernière danse - Techno Mix	2024-08-10 20:57:21.135	🦥
spotify:track:4MSj19TwYBLgDFj3ddEeco	1	Black Friday (pretty like the sun)	2024-08-10 20:57:52.477	🦥
spotify:track:51ZQ1vr10ffzbwIjDCwqm4	1	we can't be friends (wait for your love)	2024-08-10 20:58:09.516	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2024-08-10 20:58:16.357	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2024-08-10 20:58:29.626	🦥
spotify:track:6rdga62e70bV9Mll0X8UJ5	1	Drinking with Cupid	2024-08-10 20:59:20.168	🦥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2024-08-10 20:59:52.41	🦥
spotify:track:2ovjS1yyTSXy3F0KHlTVTx	1	Be Okay - CLMD Remix	2024-08-10 21:01:46.71	🦥
spotify:track:0tyR7Bu9P086aWBFZ4QJoo	1	Monsters (feat. blackbear)	2024-08-10 21:03:26.794	🦥
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2024-08-10 23:25:41.143	🦥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2024-08-11 01:18:38.014	🦥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2024-08-11 01:18:50.183	🔥
spotify:track:1zwMYTA5nlNjZxYrvBB2pV	-1	Someone Like You	2024-08-12 23:00:24.467	📼
spotify:track:1zwMYTA5nlNjZxYrvBB2pV	-1	Someone Like You	2024-08-12 23:00:25.257	📼
spotify:track:1zwMYTA5nlNjZxYrvBB2pV	-1	Someone Like You	2024-08-12 23:00:26.291	📼
spotify:track:1zwMYTA5nlNjZxYrvBB2pV	1	Someone Like You	2024-08-12 23:00:28.775	💿
spotify:track:1hBM2D1ULT3aeKuddSwPsK	-1	STARSTRUKK (feat. Katy Perry)	2024-08-12 23:17:43.025	📼
spotify:track:1hBM2D1ULT3aeKuddSwPsK	-1	STARSTRUKK (feat. Katy Perry)	2024-08-12 23:17:43.911	📼
spotify:track:1hBM2D1ULT3aeKuddSwPsK	-1	STARSTRUKK (feat. Katy Perry)	2024-08-12 23:17:44.786	📼
spotify:track:1hBM2D1ULT3aeKuddSwPsK	-1	STARSTRUKK (feat. Katy Perry)	2024-08-12 23:17:45.94	📼
spotify:track:1hBM2D1ULT3aeKuddSwPsK	-1	STARSTRUKK (feat. Katy Perry)	2024-08-12 23:17:46.835	📼
spotify:track:3o9kpgkIcffx0iSwxhuNI2	1	Numb Little Bug	2024-08-13 12:15:30.795	🦥
spotify:track:3ikuDKc66w7CH9hRgc2KfX	1	All My Exes' Moms	2024-08-13 12:18:14.899	🦥
spotify:track:2bFGGsScXp2Tu10jKMCKO6	1	Figure You Out	2024-08-13 12:20:55.519	🦥
spotify:track:1QeJggfGBH9xHFGY2PH9Gm	1	Walls	2024-08-13 12:22:39.06	🦥
spotify:track:5fIZ683j2xPeLAXfHeWKEG	1	Dernière danse - Techno Mix	2024-08-14 11:52:45.142	⚔️
spotify:track:63bWXWGcWnRQvdS8bJWdkB	1	Love Again (feat. Alida)	2024-08-14 11:54:36.759	🦥
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2024-08-14 12:02:09.704	🦥
spotify:track:09CnYHiZ5jGT1wr1TXJ9Zt	1	Thank You (Not So Bad)	2024-08-14 12:05:00.251	🦥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2024-08-14 12:53:40.784	🦥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2024-08-14 12:53:42.068	🦥
spotify:track:18lR4BzEs7e3qzc0KVkTpU	1	What I've Done	2024-08-14 13:08:56.412	🦥
spotify:track:6ZOBP3NvffbU4SZcrnt1k6	1	Kryptonite	2024-08-14 13:24:42.093	🦥
spotify:track:2ovjS1yyTSXy3F0KHlTVTx	1	Be Okay - CLMD Remix	2024-08-14 13:42:11.013	🦥
spotify:track:3o9kpgkIcffx0iSwxhuNI2	1	Numb Little Bug	2024-08-14 13:50:16.552	🦥
spotify:track:18lR4BzEs7e3qzc0KVkTpU	1	What I've Done	2024-08-14 15:45:43.647	👷
spotify:track:0knsBJ21cqAbgjdr2i0R9b	1	The Bad Touch 2k20	2024-08-14 16:00:31.085	🦥
spotify:track:2Z8RcNkYqStbwUdS7qyx6s	1	Sink or Swim	2024-08-14 16:08:43.122	🦥
spotify:track:2Z8RcNkYqStbwUdS7qyx6s	1	Sink or Swim	2024-08-14 16:08:47.645	👷
spotify:track:7kpviYjVYmD4VW7vsZTQCU	1	Annie Are You Ok - LUM!X Remix	2024-08-14 16:23:10.36	👷
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2024-08-14 16:31:33.78	👷
spotify:track:3iUDHA6FGAKfHX2jmgF0vO	1	i always kinda knew you’d be the death of me	2024-08-14 16:34:24.161	👷
spotify:track:1Vj7ZZgVpNIKqkC2bA9mpx	1	He's A Pirate (Save Me)	2024-08-15 18:32:20.204	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2024-08-15 22:17:48.022	🦥
spotify:track:09rcsC6M15EZPbCVmrqUYK	1	Good Life	2024-08-16 12:02:59.52	🦥
spotify:track:0jPHJDzPCT5tGkqnb0aeDo	1	Crusade - Club Edit	2024-08-16 14:26:13.212	🦥
spotify:track:2iLxXSM7AOzB4RCNzk4bjd	1	Destruction	2024-08-21 21:39:39.714	🦥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2024-08-21 22:14:47.545	🦥
spotify:track:1KixkQVDUHggZMU9dUobgm	1	My Head & My Heart	2024-08-24 17:51:32.897	⚔️
spotify:track:4FWbsd91QSvgr1dSWwW51e	1	TRUSTFALL	2024-08-25 01:16:25.474	🦥
spotify:track:0jPHJDzPCT5tGkqnb0aeDo	1	Crusade - Club Edit	2024-08-25 02:23:15.861	🦥
spotify:track:5LWmVBXWFwspwJ77mecPVN	1	ALL WE GOT	2024-08-25 23:09:16.366	🦥
spotify:track:2Z8RcNkYqStbwUdS7qyx6s	1	Sink or Swim	2024-08-25 23:22:23.857	🦥
spotify:track:6GG73Jik4jUlQCkKg9JuGO	1	The Middle	2024-08-26 16:39:36.97	🦥
spotify:track:3jwQt00cvkN57H6ZR75W2K	1	RUNRUNRUN	2024-08-27 18:21:11.267	🦥
spotify:track:6GqqGv8frU7kqzXkm2rewI	1	A Little Bit Off	2024-08-27 18:43:43.997	🦥
spotify:track:5zr5aYz9hJJJ25wotnbVzH	1	BLIND	2024-08-27 18:47:55.405	🦥
spotify:track:1wl8JCQv7KjxO74adZItrJ	1	Watermelon Sugar - BB Team Edit	2024-08-30 18:42:48.328	🦥
spotify:track:2IO7yf562c1zLzpanal1DT	1	Gasoline	2024-08-30 18:54:43.678	🦥
spotify:track:3L7RtEcu1Hw3OXrpnthngx	1	Don't You Want Me	2024-09-03 18:21:05.02	🦥
spotify:track:7HKxTNVlkHsfMLhigmhC0I	1	Call Me	2024-09-03 18:31:47.814	🦥
spotify:track:0yp3TvJNlG50Q4tAHWNCRm	1	Enjoy the Silence	2024-09-03 19:22:28.318	🦥
spotify:track:2IO7yf562c1zLzpanal1DT	1	Gasoline	2024-09-04 19:35:28.495	🦥
spotify:track:1Vj7ZZgVpNIKqkC2bA9mpx	1	He's A Pirate (Save Me)	2024-09-04 22:17:57.61	🦥
spotify:track:2FIa0Zmilui8GpApF3vF1a	1	Poppin Bottles	2024-09-08 18:41:20.393	🦥
spotify:track:2IO7yf562c1zLzpanal1DT	1	Gasoline	2024-09-08 19:21:01.102	🦥
spotify:track:1Vj7ZZgVpNIKqkC2bA9mpx	1	He's A Pirate (Save Me)	2024-09-09 13:17:07.223	🦥
spotify:track:7HKxTNVlkHsfMLhigmhC0I	1	Call Me	2024-09-09 13:20:03.632	🦥
spotify:track:2bFGGsScXp2Tu10jKMCKO6	-1	Figure You Out	2024-09-09 13:35:37.739	🦥
spotify:track:6h1s7cKnUtsbRpE5bwnUTf	1	dying on the inside	2024-09-09 13:38:39.634	🦥
spotify:track:41qoLqCcn0X07B6XW9b28v	1	Cravin'	2024-09-09 18:51:47.27	🦥
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2024-09-09 19:06:57.2	🦥
spotify:track:2KReCz1L5XkGIBhDncQ5VZ	1	BABY SAID	2024-09-09 19:11:32.662	🦥
spotify:track:1Tob6YkutQ6jjWKzLO4gkr	1	Careful What You Wish For (the doctor said to)	2024-09-09 19:13:55.559	🦥
spotify:track:0e00DiF2T9znEdmWakYSC3	1	labour	2024-09-10 16:10:31.118	🦥
spotify:track:6xlOnm5MITIKtixzJW8R0j	1	DARKSIDE	2024-09-10 16:15:38.669	🦥
spotify:track:6xlOnm5MITIKtixzJW8R0j	1	DARKSIDE	2024-09-10 16:17:17.457	🦥
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2024-09-11 15:13:25.92	🦥
spotify:track:1wl8JCQv7KjxO74adZItrJ	1	Watermelon Sugar - BB Team Edit	2024-09-11 15:27:45.826	🦥
spotify:track:6h1s7cKnUtsbRpE5bwnUTf	1	dying on the inside	2024-09-11 15:35:56.033	🦥
spotify:track:7uUahoeqGNRMbpdeiLj1rS	1	Panic Room	2024-09-11 15:51:00.602	🦥
spotify:track:0jPHJDzPCT5tGkqnb0aeDo	1	Crusade - Club Edit	2024-09-12 15:57:48.135	🦥
spotify:track:2x4JC9TxW2LACuuxbsncfG	1	Mockingbird	2024-09-12 16:03:14.945	🦥
spotify:track:3iaELj7fOCqIPTl7UpcXX2	1	Bright Lights	2024-09-12 20:51:33.052	🦥
spotify:track:1Ey05kmbuUkZBvTfqDwxx8	1	Break My Stride	2024-09-12 20:58:38.747	🦥
spotify:track:0cnFCOB8DxHmRLPjmgtptA	1	It Don’t Matter	2024-09-12 22:27:29.861	🦥
spotify:track:1wl8JCQv7KjxO74adZItrJ	1	Watermelon Sugar - BB Team Edit	2024-09-12 23:16:51.642	🦥
spotify:track:3L7RtEcu1Hw3OXrpnthngx	-1	Don't You Want Me	2024-09-12 23:18:02.687	🦥
spotify:track:7HKxTNVlkHsfMLhigmhC0I	-1	Call Me	2024-09-12 23:18:20.244	🦥
spotify:track:7HKxTNVlkHsfMLhigmhC0I	1	Call Me	2024-09-12 23:18:48.29	🦥
spotify:track:1dt220OBbkTsYz1NLVKIaw	1	Call Me (with R3HAB & Timmy Trumpet)	2024-09-12 23:19:38.55	🦥
spotify:track:1dt220OBbkTsYz1NLVKIaw	-1	Call Me (with R3HAB & Timmy Trumpet)	2024-09-12 23:19:56.222	🦥
spotify:track:2IO7yf562c1zLzpanal1DT	1	Gasoline	2024-09-16 14:48:24.576	🦥
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2024-09-16 14:54:11.192	🦥
spotify:track:2x4JC9TxW2LACuuxbsncfG	1	Mockingbird	2024-09-16 14:58:01.132	🦥
spotify:track:6h1s7cKnUtsbRpE5bwnUTf	1	dying on the inside	2024-09-16 15:00:03.341	🦥
spotify:track:0jPHJDzPCT5tGkqnb0aeDo	1	Crusade - Club Edit	2024-09-16 15:03:33.143	🦥
spotify:track:1Tob6YkutQ6jjWKzLO4gkr	1	Careful What You Wish For (the doctor said to)	2024-09-16 15:12:08.646	🦥
spotify:track:0e00DiF2T9znEdmWakYSC3	1	labour	2024-09-16 15:18:39.436	🦥
spotify:track:1wl8JCQv7KjxO74adZItrJ	1	Watermelon Sugar - BB Team Edit	2024-09-16 15:24:47.018	🦥
spotify:track:5LWmVBXWFwspwJ77mecPVN	1	ALL WE GOT	2024-09-16 15:32:08.138	🦥
spotify:track:2Z8RcNkYqStbwUdS7qyx6s	1	Sink or Swim	2024-09-16 15:34:50.402	🦥
spotify:track:0cnFCOB8DxHmRLPjmgtptA	1	It Don’t Matter	2024-09-16 15:41:58.445	🦥
spotify:track:3iaELj7fOCqIPTl7UpcXX2	1	Bright Lights	2024-09-16 15:58:58.628	🦥
spotify:track:7fZtgiJSNJ2QarKKKSssBp	1	Hot Honey	2024-09-16 16:57:13.467	🦥
spotify:track:04hfEd7kPgF1huPIOPNAdL	1	How Low	2024-09-20 16:18:12.039	🦥
spotify:track:3zjjzKg16tczCMwckGKGuH	1	Happy Pills	2024-09-22 15:17:38.025	🦥
spotify:track:7HDbbKd5qv67iwVWouTl9p	1	I Like to Party	2024-09-22 15:28:54.084	🦥
spotify:track:0SGunE3qppk4PajqOvR6uu	1	Feels Like This (feat. Indiiana)	2024-09-23 13:37:48.265	🦥
spotify:track:5Owz0Wkb3XgaADAm6dEr2O	1	We Ride (feat. Teddy Bee)	2024-09-23 13:46:55.663	🦥
spotify:track:7EXennxBRtugSuQX13uLSu	1	Blow It Up	2024-09-23 14:00:39.611	🦥
spotify:track:5ofHoV0ywhsZUOArK1Oa1h	1	Say It Right - ILURO Remix	2024-09-23 14:34:05.721	🦥
spotify:track:6RSVgjjYRtKg4FDyx2Lj1u	1	The Best	2024-09-23 23:03:19.936	🦥
spotify:track:0n5jqofn0uTFr7oYzW7D5D	1	SURVIVOR	2024-09-23 23:11:21.689	🦥
spotify:track:0W6MlHGvHAcSsoRt34pZIt	1	Living On Video (feat. DTale)	2024-09-24 15:02:45.979	🦥
spotify:track:7fZtgiJSNJ2QarKKKSssBp	1	Hot Honey	2024-09-24 23:15:02.757	🦥
spotify:track:0jeGTzkvrNRBC8Dt8bsDRN	1	Don't Go Back To Paris	2024-09-25 12:19:25.838	🌌
spotify:track:0jeGTzkvrNRBC8Dt8bsDRN	1	Don't Go Back To Paris	2024-09-25 12:19:31.047	👷
spotify:track:2p1EDUqcrCjrIf3oTgGW85	1	I'm All Fucked Up	2024-09-25 12:33:00.801	👷
spotify:track:2Dazu1HgFj1geJOfKKFOpf	1	15 MINUTES	2024-09-25 20:04:52.462	🦥
spotify:track:5fZJQrFKWQLb7FpJXZ1g7K	1	A Bar Song (Tipsy)	2024-09-25 20:09:34.224	🦥
spotify:track:2PnlsTsOTLE5jnBnNe2K0A	1	The Emptiness Machine	2024-09-25 20:57:23.656	🦥
spotify:track:1qwno7xb5mJe71xtMS6jl2	1	High Enough	2024-09-25 21:09:50.05	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2024-09-27 12:39:06.559	🦥
spotify:track:7LbhIjYNfCguxjAw43Mkff	1	Ghost	2024-09-27 12:41:55.979	🦥
spotify:track:7fZtgiJSNJ2QarKKKSssBp	1	Hot Honey	2024-09-27 12:45:03.559	🦥
spotify:track:7fZtgiJSNJ2QarKKKSssBp	1	Hot Honey	2024-09-27 12:45:32.008	🦥
spotify:track:7fZtgiJSNJ2QarKKKSssBp	1	Hot Honey	2024-09-27 12:47:43.447	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2024-09-27 13:17:24.126	🦥
spotify:track:3V1AyoxguXfpUSlFMYsxap	1	Mucho Mambo (Sway)	2024-09-27 13:31:20.859	🦥
spotify:track:6dnWU3ZywAIalucAAqjKlk	1	Voices	2024-09-27 13:40:41.29	🦥
spotify:track:1Vj7ZZgVpNIKqkC2bA9mpx	1	He's A Pirate (Save Me)	2024-09-27 16:28:29.083	🦥
spotify:track:6h1s7cKnUtsbRpE5bwnUTf	1	dying on the inside	2024-09-29 21:07:25.135	🦥
spotify:track:6dnWU3ZywAIalucAAqjKlk	1	Voices	2024-09-29 21:19:28.649	🦥
spotify:track:0W6MlHGvHAcSsoRt34pZIt	1	Living On Video (feat. DTale)	2024-09-29 21:29:13.524	🦥
spotify:track:0e00DiF2T9znEdmWakYSC3	1	labour	2024-09-29 21:34:38.049	🦥
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2024-10-01 09:30:39.06	👷
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2024-10-01 09:30:37.27	🦥
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	-1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2024-10-01 09:30:53.036	🦥
spotify:track:4pBuhoBxgwBpkkOhfT6p6N	1	Tarantella	2024-10-01 09:41:13.901	👷
spotify:track:4pBuhoBxgwBpkkOhfT6p6N	1	Tarantella	2024-10-01 09:41:20.192	🦥
spotify:track:0l6fM0B3KDdGRj7R8vo4hK	1	Satisfaction - Hardwell & Maddix Remix	2024-10-01 09:56:28.844	👷
spotify:track:67aNGns9ZH1jm6nruyzBGU	1	Lullaby	2024-10-01 10:07:47.354	🦥
spotify:track:67aNGns9ZH1jm6nruyzBGU	1	Lullaby	2024-10-01 10:07:51.995	👷
spotify:track:46Tjel8UJ2nR0uFgXkT9Y7	1	Like A G6 (with Naeleck)	2024-10-01 10:23:02.645	👷
spotify:track:0QlOkt8nkZ8zqu8xb2SHU8	1	Not Fair	2024-10-01 10:38:18.636	🦥
spotify:track:4hSm8pkwQCrIVgUET79zwy	1	EURODANCER 2020	2024-10-01 16:20:28.168	👷
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2024-10-01 16:26:13.721	👷
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2024-10-01 17:18:11.107	👷
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2024-10-01 17:18:12.038	🦥
spotify:track:3GXgrEjBjonrQrPEEi13yU	1	Synchronize	2024-10-01 17:34:43.738	👷
spotify:track:5lN1EH25gdiqT1SFALMAq1	1	Gold on the Ceiling	2024-10-01 17:47:26.131	👷
spotify:track:35iR1qzexmbcUSgA01S4gI	1	Colorado	2024-10-01 17:50:00.369	👷
spotify:track:0LtkAAEpEp1lkLX1ZvjHZb	1	Follow You	2024-10-01 17:57:06.044	👷
spotify:track:7EXennxBRtugSuQX13uLSu	1	Blow It Up	2024-10-02 11:15:50.953	👷
spotify:track:35iR1qzexmbcUSgA01S4gI	1	Colorado	2024-10-02 11:25:22.197	👷
spotify:track:59NraMJsLaMCVtwXTSia8i	1	Prada	2024-10-02 11:30:03.919	👷
spotify:track:1PtQJZVZIdWIYdARpZRDFO	1	Running Up That Hill (A Deal With God)	2024-10-02 11:37:36.001	👷
spotify:track:2FxJX5c1FkfLpladsgoLAD	1	Don't You Want Me	2024-10-02 11:44:16.925	👷
spotify:track:67aNGns9ZH1jm6nruyzBGU	1	Lullaby	2024-10-02 12:40:22.156	🦥
spotify:track:3trdEhvJEmaBEHKcr6RiWH	1	This Is Gonna Hurt	2024-10-02 12:43:26.163	👷
spotify:track:5zr5aYz9hJJJ25wotnbVzH	1	BLIND	2024-10-02 13:18:04.703	👷
spotify:track:4c1TXKNAh4yb5cb0zE3x1X	1	MDMA	2024-10-02 13:19:53.556	👷
spotify:track:46lyJh9GYmWsHez3EsvmAx	1	Rise Up (feat. Vamero)	2024-10-02 13:44:24.204	🦥
spotify:track:04hfEd7kPgF1huPIOPNAdL	1	How Low	2024-10-02 16:38:30.441	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2024-10-02 16:44:22.398	👷
spotify:track:5FhnPzf4sZ68ZZJ1n5oek1	1	Up & Down	2024-10-02 16:45:16.927	🦥
spotify:track:6dnWU3ZywAIalucAAqjKlk	1	Voices	2024-10-02 17:03:27.591	🦥
spotify:track:0GTPmh5G40joBg93vcSQNq	1	Don't Say Goodbye (feat. Tove Lo)	2024-10-02 17:31:23.904	🦥
spotify:track:0ge3ZUDEvyPZvd13VoVd0H	1	Gone Tomorrow	2024-10-03 13:57:14.211	🦥
spotify:track:6WVHfpzYW3HooQaCC80opC	1	Halo (feat. PIA MARIA)	2024-10-03 14:00:48.914	🦥
spotify:track:05Ke9LELmOiA5i3L0ybFUy	1	Fade Away	2024-10-04 01:30:17.52	🦥
spotify:track:0mivIbo4LkpblsGoRzEJNa	1	Gimme! Gimme! Gimme!	2024-10-06 19:09:58.04	🦥
spotify:track:5sK3o66yupTNIK6gWgzGjf	1	Dance Again	2024-10-06 19:15:57.13	🦥
spotify:track:7y9iMe8SOB6z3NoHE2OfXl	1	Bad At Love	2024-10-06 19:41:57.213	🐺
spotify:track:0QlOkt8nkZ8zqu8xb2SHU8	1	Not Fair	2024-10-07 15:25:21.707	🦥
spotify:track:48kwdkeHEJEuMzcKklPv5b	1	Sorry For Party Rocking	2024-10-08 12:26:37.795	🎉
spotify:track:0tr0D36L1RwPdUTFfyNq37	1	Tonight Is the Night	2024-10-08 12:48:03.241	🎉
spotify:track:7tNTW9aoi0qVC1z2qPJmQG	1	Macarena	2024-10-08 13:31:30.723	🎉
spotify:track:1nYeVF5vIBxMxfPoL0SIWg	1	Hallucinate	2024-10-08 13:32:48.364	🎉
spotify:track:78T1d6RsHPY6gcWlurCK5q	1	Everybody Wants You - Shift K3Y Remix	2024-10-08 13:50:56.638	🎉
spotify:track:3DNziCcqRd2v8uQWwec1GW	1	Skin - Quarterhead Remix	2024-10-08 13:59:56.336	🎉
spotify:track:4DvhkX2ic4zWkQeWMwQ2qf	1	Like A G6	2024-10-08 14:32:46.531	🎉
spotify:track:1IaYWv32nFFMdljBIjMY5T	1	Telephone	2024-10-08 15:00:33.185	🎉
spotify:track:2FIa0Zmilui8GpApF3vF1a	1	Poppin Bottles	2024-10-08 15:04:29.399	🦥
spotify:track:2FIa0Zmilui8GpApF3vF1a	1	Poppin Bottles	2024-10-08 15:04:31.388	🎉
spotify:track:45Egmo7icyopuzJN0oMEdk	1	Love Lies (with Normani)	2024-10-08 18:17:01.823	🐺
spotify:track:3cfOd4CMv2snFaKAnMdnvK	1	All Star	2024-10-08 18:19:53.139	📼
spotify:track:0v2boHmWtxMTD2REGN8MbK	1	Levitating (feat. DaBaby)	2024-10-08 18:28:59.359	🦠
spotify:track:2tnVG71enUj33Ic2nFN6kZ	1	Ride It	2024-10-08 18:36:30.119	🦠
spotify:track:4WRtXqu9TmvvwZ3bzdcCVQ	1	Thousand Lullabies	2024-10-08 18:46:50.538	🎉
spotify:track:4WRtXqu9TmvvwZ3bzdcCVQ	1	Thousand Lullabies	2024-10-08 18:46:51.539	🦥
spotify:track:0aLG42zaidNkblhiQgJknP	1	WANT	2024-10-08 18:50:53.251	🐺
spotify:track:0aLG42zaidNkblhiQgJknP	1	WANT	2024-10-08 18:51:59.781	🎉
spotify:track:5p7ujcrUXASCNwRaWNHR1C	1	Without Me	2024-10-08 19:01:28.404	🐺
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2024-10-08 22:51:27.724	🦥
spotify:track:0qOvlEzD7xU35GLFT8DF1t	1	We Run The Night - Teddy Cream Remix	2024-10-12 23:41:12.138	🎉
spotify:track:1M31zIMamohkItOjLaBbtx	1	V.A.N	2024-10-13 11:33:45.366	🦥
spotify:track:6Q7yqVXMisjFVcFord4W2R	1	Buzzcut Season	2024-10-14 11:13:00.488	🪬
spotify:track:70eDxAyAraNTiD6lx2ZEnH	1	Ex's & Oh's	2024-10-18 16:03:18.562	🐺
spotify:track:63rbP24OzfaQCJjsHWZXnY	1	Where Them Girls At (feat. Nicki Minaj & Flo Rida)	2024-10-18 16:22:38.251	🎉
spotify:track:4WRtXqu9TmvvwZ3bzdcCVQ	1	Thousand Lullabies	2024-10-18 16:52:32.41	🦥
spotify:track:0mivIbo4LkpblsGoRzEJNa	1	Gimme! Gimme! Gimme!	2024-10-18 17:33:00.886	🦥
spotify:track:2ejhK0OtBe4CdfD67uqzGB	1	KIZAO	2024-10-21 15:04:19.835	🦥
spotify:track:0QlOkt8nkZ8zqu8xb2SHU8	1	Not Fair	2024-10-23 11:08:53.509	🦥
spotify:track:0mivIbo4LkpblsGoRzEJNa	1	Gimme! Gimme! Gimme!	2024-10-23 11:13:09.536	🦥
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2024-10-23 11:25:57.009	🦥
spotify:track:5fZJQrFKWQLb7FpJXZ1g7K	1	A Bar Song (Tipsy)	2024-10-23 11:29:59.704	🦥
spotify:track:5Owz0Wkb3XgaADAm6dEr2O	1	We Ride (feat. Teddy Bee)	2024-10-23 11:35:25.925	🦥
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2024-10-23 12:53:25.177	🦥
spotify:track:0oz5Meupgpje87RXjYXyCH	1	Frozen	2024-10-23 13:47:48.77	🦥
spotify:track:0GTPmh5G40joBg93vcSQNq	1	Don't Say Goodbye (feat. Tove Lo)	2024-10-23 13:59:04.798	🦥
spotify:track:0ou367q5bmco9pZNxq80iD	1	Day 'N' Nite - Martin Jensen Edit	2024-10-23 14:19:40.479	🦥
spotify:track:0d1ujEcFwTqA4kWliTSJim	1	Don't You Hold Me Down	2024-10-23 14:51:02.183	🦥
spotify:track:7fZtgiJSNJ2QarKKKSssBp	1	Hot Honey	2024-10-23 15:23:09.121	🦥
spotify:track:4WRtXqu9TmvvwZ3bzdcCVQ	1	Thousand Lullabies	2024-10-23 18:49:10.514	🦥
spotify:track:1q3qh7hEJrPmPH7uOteYSr	-1	No Fun	2024-10-24 12:23:06.88	🦥
spotify:track:4J7CKHCF3mdL4diUsmW8lq	1	Under Control (feat. Hurts)	2024-10-24 12:43:00.619	🦥
spotify:track:67aNGns9ZH1jm6nruyzBGU	1	Lullaby	2024-10-24 12:46:06.064	🦥
spotify:track:67aNGns9ZH1jm6nruyzBGU	1	Lullaby	2024-10-24 12:48:54.579	🦥
spotify:track:4fLnoXqsxHZFvGKppc7kCr	1	Cynical	2024-10-24 12:59:28.054	🦥
spotify:track:6vQEOP9KgXITsVpFnKSbZ3	1	Paradise	2024-10-24 13:21:37.13	🦥
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2024-10-24 13:58:07.282	🦥
spotify:track:2HJBsWX5LQK8Y95JzPJ4zp	1	Tattoo - Topic Remix	2024-10-24 15:31:04.807	🦥
spotify:track:75c2zaSdDBSX0A8Jyvm4fO	1	older	2025-01-14 15:53:06.53	🦥
spotify:track:2PnlsTsOTLE5jnBnNe2K0A	1	The Emptiness Machine	2024-10-25 18:11:29.471	🦥
spotify:track:0W6MlHGvHAcSsoRt34pZIt	1	Living On Video (feat. DTale)	2024-10-25 18:15:24.386	🦥
spotify:track:0W6MlHGvHAcSsoRt34pZIt	-1	Living On Video (feat. DTale)	2024-10-25 18:15:30.175	🦥
spotify:track:5Owz0Wkb3XgaADAm6dEr2O	1	We Ride (feat. Teddy Bee)	2024-10-25 18:15:34.375	🦥
spotify:track:0cnFCOB8DxHmRLPjmgtptA	1	It Don’t Matter	2024-10-28 18:32:19.866	🦥
spotify:track:6vQEOP9KgXITsVpFnKSbZ3	1	Paradise	2024-10-28 23:52:58.649	🦥
spotify:track:2ejhK0OtBe4CdfD67uqzGB	1	KIZAO	2024-10-28 23:59:42.886	🦥
spotify:track:0cnFCOB8DxHmRLPjmgtptA	1	It Don’t Matter	2024-10-29 00:03:06.055	🦥
spotify:track:2PnlsTsOTLE5jnBnNe2K0A	1	The Emptiness Machine	2024-10-30 22:52:15.493	🦥
spotify:track:6vQEOP9KgXITsVpFnKSbZ3	1	Paradise	2024-10-31 19:39:52.323	🦥
spotify:track:1M2NNUv8UV5smjMVGyTrmz	1	Where Do We Go	2024-11-01 11:34:24.278	🦥
spotify:track:5Nwh8kghoqebxmco5ZWbDt	1	Born To Love Ya	2024-11-01 13:22:54.51	🦥
spotify:track:0QlOkt8nkZ8zqu8xb2SHU8	1	Not Fair	2024-11-01 15:15:09.073	🦥
spotify:track:4WRtXqu9TmvvwZ3bzdcCVQ	1	Thousand Lullabies	2024-11-03 17:07:13.591	🦥
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2024-11-03 17:09:36.179	🦥
spotify:track:2ejhK0OtBe4CdfD67uqzGB	1	KIZAO	2024-11-03 21:34:39.763	🦥
spotify:track:5ff77CZZUpY8Gvu5GuA6vb	1	HAUNTED	2024-11-04 08:09:38.758	🦥
spotify:track:1svpo8ORIHy4BdgicdyUjx	1	Spot a Fake	2024-11-05 11:13:54.568	🦥
spotify:track:4ZnkygoWLzcGbQYCm3lkae	1	Rush	2024-11-05 11:54:22.243	🦥
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2024-11-05 15:17:27.017	🦥
spotify:track:4qP9K48aEcG50hSgmIQVi3	1	Cold As Ice	2024-11-07 11:02:14.095	🦥
spotify:track:2T8TNC8RihVRCivLo1ryfA	1	Dead To Me	2024-11-07 11:06:45.267	🦥
spotify:track:01RJQlTi0aR0syDcSFLzTv	1	Lego Blocks	2024-11-07 12:10:54.17	🦥
spotify:track:6azVi5ToFHo6KfKs6SstAC	1	Bad Idea	2024-11-07 12:32:12.407	🦥
spotify:track:6SpVp6ttad3XJOsjKBZwaq	1	Torn	2024-11-07 13:58:31.7	🦥
spotify:track:7jr3iPu4O4bTCVwLMbdU2i	1	Kiss and Make Up	2024-11-07 14:01:17.745	🦥
spotify:track:20McUFi8KCIVdNDLrkTDuZ	1	Goosebumps	2024-11-07 14:10:12.747	🦥
spotify:track:1CcLA0eaauck34YEIrvAAq	1	When We Were Young (The Logical Song)	2024-11-08 12:34:35.767	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2024-11-08 14:10:22.159	🦥
spotify:track:6ic8OlLUNEATToEFU3xmaH	1	Gimme More	2024-11-08 16:51:59.715	🦥
spotify:track:2QjOHCTQ1Jl3zawyYOpxh6	1	Sweater Weather	2024-11-11 10:44:49.24	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2024-11-11 10:49:48.464	🦥
spotify:track:3JG1uFc40wfyrqaWC7iv0e	1	i like the way you kiss me	2024-11-11 11:26:52.783	🦥
spotify:track:2ubQc1V6ctD8YpRjP5H940	1	killer queen	2024-11-11 12:05:17.389	🦥
spotify:track:3Md1Rphgz24viHtEVSWWi9	1	PASSENGER PRINCESS	2024-11-11 12:23:44.276	🦥
spotify:track:5ff77CZZUpY8Gvu5GuA6vb	1	HAUNTED	2024-11-11 13:57:43.704	🦥
spotify:track:7ByDxFf6Xy7xPFAYafsLxI	1	engravings	2024-11-11 15:38:03.364	🦥
spotify:track:7ByDxFf6Xy7xPFAYafsLxI	1	engravings	2024-11-11 15:42:39.768	🦥
spotify:track:0tFUl3tPqBzUM2aV0gitdq	1	Dolls	2024-11-11 16:00:02.733	🦥
spotify:track:6xLrQE0nqfpMfZoCQikxSL	1	Super Villain	2024-11-11 16:45:59.304	🦥
spotify:track:6xLrQE0nqfpMfZoCQikxSL	-1	Super Villain	2024-11-11 16:46:08.104	🦥
spotify:track:5Vwkt7zvEcj5riL46ZbM5K	1	touchin’ me	2024-11-11 16:46:32.471	🦥
spotify:track:6ic8OlLUNEATToEFU3xmaH	1	Gimme More	2024-11-11 17:19:21.877	🦥
spotify:track:7Ey8DZuMBbeiqMk8s8XpHA	1	RUSH	2024-11-11 17:52:28.568	🦥
spotify:track:3UxXEGw1UDAL4KBooq2VxY	1	Therapy	2024-11-12 12:36:55.73	🦥
spotify:track:7iKP734eHLU7k0VeKOvoNC	1	Seasons	2024-11-13 16:26:20.947	🦥
spotify:track:2ubQc1V6ctD8YpRjP5H940	1	killer queen	2024-11-13 16:37:45.579	🦥
spotify:track:6rdga62e70bV9Mll0X8UJ5	1	Drinking with Cupid	2024-11-13 16:40:58.495	🦥
spotify:track:4pAiyuix7y51LMiuOSld33	1	Take Me To Hell	2024-11-13 16:43:52.027	🦥
spotify:track:2SOhUiyKpnlshR3SFh733w	1	tired of california	2024-11-13 17:05:42.775	🦥
spotify:track:6azVi5ToFHo6KfKs6SstAC	1	Bad Idea	2024-11-13 17:07:55.85	🦥
spotify:track:6BGtSuLFU0X35Igkftxqfr	1	FU In My Head	2024-11-13 17:12:19.422	🦥
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2024-11-13 17:17:04.169	🦥
spotify:track:2Z8RcNkYqStbwUdS7qyx6s	1	Sink or Swim	2024-11-13 17:19:56.387	🦥
spotify:track:1Tob6YkutQ6jjWKzLO4gkr	1	Careful What You Wish For (the doctor said to)	2024-11-13 17:46:52.065	🦥
spotify:track:7bdpStmJdlw9GKBPTOkDwT	1	AVA	2024-11-14 09:02:00.596	🦥
spotify:track:6GUiIbJ834FcHewby3PwV0	1	Breakfast	2024-11-14 10:21:15.883	🦥
spotify:track:7xg41ENLdW3nyy2p5C28ZW	1	Fuck Up The Friendship	2024-11-14 10:30:24.199	🦥
spotify:track:6JU4seYQ2nAMCsgktdau0Q	1	Wish You the Worst	2024-11-14 10:41:01.945	🦥
spotify:track:59tskctgqUmjCWAwhzYAFm	1	Looking at Me	2024-11-14 12:42:40.216	🦥
spotify:track:59tskctgqUmjCWAwhzYAFm	1	Looking at Me	2024-11-14 12:43:43.558	🦥
spotify:track:0qWAWDWi3Fv7kw2hshL9Fw	1	You Problem	2024-11-14 12:50:20.483	🦥
spotify:track:1xWMqWlcfGrdnQWim2PJVb	1	Maybe My Soulmate Died	2024-11-14 12:54:58.951	🦥
spotify:track:2ubQc1V6ctD8YpRjP5H940	1	killer queen	2024-11-14 13:09:54.721	🦥
spotify:track:6WC5fhc9XMaCrUNKNjm9xE	1	Thumbs	2024-11-14 13:28:57.513	🦥
spotify:track:0qWAWDWi3Fv7kw2hshL9Fw	1	You Problem	2024-11-15 12:47:32.131	🦥
spotify:track:7zZDRq9CLl37OAywR39KVy	1	Dirty Thoughts	2024-11-15 12:49:24.958	🦥
spotify:track:5Ds1FRxEq20yhhtVY3JukM	1	Love Like Mine	2024-11-15 12:51:29.579	🦥
spotify:track:3Md1Rphgz24viHtEVSWWi9	1	PASSENGER PRINCESS	2024-11-15 12:54:12.217	🔥
spotify:track:3Md1Rphgz24viHtEVSWWi9	1	PASSENGER PRINCESS	2024-11-15 12:54:12.776	🦥
spotify:track:3Md1Rphgz24viHtEVSWWi9	-1	PASSENGER PRINCESS	2024-11-15 12:54:15.874	🔥
spotify:track:3Md1Rphgz24viHtEVSWWi9	1	PASSENGER PRINCESS	2024-11-15 12:57:34.862	🦥
spotify:track:3Md1Rphgz24viHtEVSWWi9	1	PASSENGER PRINCESS	2024-11-15 12:58:25.293	🦥
spotify:track:6kOdk29M8h6ZfHz4byVG0t	1	PRETTY PLEASE	2024-11-15 13:49:06.767	🦥
spotify:track:3RLshk3cDQOqWhSIRCVaXL	1	la di die (feat. Jaden Hossler)	2024-11-15 16:57:10.193	🦥
spotify:track:6vQEOP9KgXITsVpFnKSbZ3	1	Paradise	2024-11-15 19:29:29.116	🦥
spotify:track:3Md1Rphgz24viHtEVSWWi9	1	PASSENGER PRINCESS	2024-11-15 20:56:30.297	🦥
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2024-11-17 12:33:27.538	🦥
spotify:track:5ff77CZZUpY8Gvu5GuA6vb	1	HAUNTED	2024-11-17 13:00:09.711	🦥
spotify:track:0oWN1xuaWUrx8QGiYqxAs9	1	Monster	2024-11-18 20:39:18.395	🦥
spotify:track:7hzlzoOwCZ4D3Ow5YZK4kj	1	Insomnia	2024-11-20 10:56:59.188	🦥
spotify:track:3JG1uFc40wfyrqaWC7iv0e	1	i like the way you kiss me	2024-11-20 13:42:07.191	🦥
spotify:track:6FxRH7N7Q86i6aixaSYYzx	1	All the Things She Said	2024-11-20 14:49:49.47	🦥
spotify:track:7K1BLb6MpvKuGEPpHw35mO	1	Never Going Home Tonight (feat. Madison Love)	2024-11-20 15:08:51.904	🦥
spotify:track:19tO5sNxHHJcX7CUPMVykl	1	GIRL LIKE ME - twocolors remix	2024-11-22 10:53:21.315	🦥
spotify:track:2KklXplRtxMsBYo474Es0w	1	Be Mine	2024-11-22 13:19:26.251	🦥
spotify:track:3Md1Rphgz24viHtEVSWWi9	1	PASSENGER PRINCESS	2024-11-26 10:24:48.92	🦥
spotify:track:5ff77CZZUpY8Gvu5GuA6vb	1	HAUNTED	2024-11-26 10:26:31.05	🦥
spotify:track:3JG1uFc40wfyrqaWC7iv0e	1	i like the way you kiss me	2024-11-26 10:30:41.732	🦥
spotify:track:7fZtgiJSNJ2QarKKKSssBp	1	Hot Honey	2024-11-26 10:33:23.841	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2024-11-26 10:35:48.719	🦥
spotify:track:7ByDxFf6Xy7xPFAYafsLxI	1	engravings	2024-11-26 10:44:01.672	🦥
spotify:track:6ic8OlLUNEATToEFU3xmaH	1	Gimme More	2024-11-26 10:47:56.417	🦥
spotify:track:1qAFyf50bDGt1PNyVBBgC4	1	Bad Feeling (Oompa Loompa)	2024-11-27 13:26:31.401	🦥
spotify:track:5aszL9hl6SBzFNsOvw8u8w	1	Bezos I	2024-11-30 17:22:01.938	🦥
spotify:track:0yNiaePZow0ycdrmLV0J7y	1	1985	2024-11-30 17:25:54.699	🦥
spotify:track:0aB0v4027ukVziUGwVGYpG	1	tv off (feat. lefty gunplay)	2024-12-01 20:17:32.387	🦥
spotify:track:3qpsSAfHgTdTwkaraJLe0V	1	Mamma Mia (feat. Mentissa) - Techno Mix	2024-12-01 23:10:03.622	🦥
spotify:track:5ff77CZZUpY8Gvu5GuA6vb	1	HAUNTED	2024-12-03 12:30:06.692	🦥
spotify:track:5ff77CZZUpY8Gvu5GuA6vb	1	HAUNTED	2024-12-03 12:30:07.798	🦥
spotify:track:2PnlsTsOTLE5jnBnNe2K0A	1	The Emptiness Machine	2024-12-03 12:58:19.514	🦥
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2024-12-03 13:02:25.163	🦥
spotify:track:3Md1Rphgz24viHtEVSWWi9	1	PASSENGER PRINCESS	2024-12-03 13:15:33.763	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2024-12-03 13:25:33.92	🦥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2024-12-03 13:57:46.323	🦥
spotify:track:6dnWU3ZywAIalucAAqjKlk	1	Voices	2024-12-03 15:19:44.323	🦥
spotify:track:5ff77CZZUpY8Gvu5GuA6vb	1	HAUNTED	2024-12-03 15:49:48.984	🦥
spotify:track:0jeGTzkvrNRBC8Dt8bsDRN	1	Don't Go Back To Paris	2024-12-03 15:54:18.9	🦥
spotify:track:3jwQt00cvkN57H6ZR75W2K	1	RUNRUNRUN	2024-12-03 16:03:30.6	🦥
spotify:track:0dHjeOAPtaSLhSyj5QN1KK	1	Trapped in a Dream	2024-12-03 16:08:19.225	🦥
spotify:track:6scmAbilUvgIdPTGkFjyyd	1	SEX LOVE DRUGS	2024-12-03 16:30:05.698	🦥
spotify:track:6scmAbilUvgIdPTGkFjyyd	1	SEX LOVE DRUGS	2024-12-03 16:45:28.802	🦥
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2024-12-03 16:50:45.279	🦥
spotify:track:03nVbs87Wv4nvL3YZrdy3n	1	LSD	2024-12-03 18:31:08.917	🦥
spotify:track:3pVRmuiT7OruUDgiBVkJsn	1	You Spin Me Round (Like A Record)	2024-12-03 19:23:01.493	🦥
spotify:track:5RCl6c5jPOklm5Nk2qVsqf	1	Slowly Going Crazy (feat. EKE)	2024-12-03 20:00:09.391	🦥
spotify:track:7ByDxFf6Xy7xPFAYafsLxI	1	engravings	2024-12-04 10:16:11.24	🦥
spotify:track:40wmXUgVB0N5eLK8CuOhm3	1	Feed the Machine	2024-12-04 12:54:10.107	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2024-12-04 13:05:29.745	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2024-12-04 13:06:30.583	🦥
spotify:track:1wcAM8PcshrRaK0HNZW5QH	1	Ghost	2024-12-04 13:55:20.622	🦥
spotify:track:7LO8X20v1ecmGGOtn3KPLX	1	Slow Nights	2024-12-04 13:58:11.896	🦥
spotify:track:6Qg3WajLpGxTNjVERcXc03	1	Seven Nation Army	2024-12-04 14:52:59.31	🦥
spotify:track:5tf1VVWniHgryyumXyJM7w	1	Sugar (feat. Francesco Yates)	2024-12-04 15:47:54.688	🦥
spotify:track:7ByDxFf6Xy7xPFAYafsLxI	1	engravings	2024-12-04 19:36:30.685	🦥
spotify:track:3Z3QhZAZpqwZa1phsbQ3JZ	1	Driving Home for Christmas	2024-12-05 12:26:53.831	🦥
spotify:track:0vf2eBw2inhl8y61cYQMv2	1	Devil Town	2024-12-05 19:20:58.275	🦥
spotify:track:2XNOe0ywrt9xocoVIbFCHv	1	AVA	2024-12-09 16:14:18.841	🦥
spotify:track:3Md1Rphgz24viHtEVSWWi9	1	PASSENGER PRINCESS	2024-12-09 18:30:37.614	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2024-12-09 18:55:03.529	🦥
spotify:track:5Nakyq7fHFlhxkMfNqG4Fv	1	Daredevil	2024-12-10 16:09:59.105	🦥
spotify:track:3RLshk3cDQOqWhSIRCVaXL	1	la di die (feat. Jaden Hossler)	2024-12-11 13:36:56.305	🦥
spotify:track:1ChulFMnwxoD74Me8eX2TU	1	You Spin Me Round (Like a Record)	2024-12-12 11:51:39.642	🦥
spotify:track:33WTgxRdPBQQpVCMXpNxhO	1	Cure For Me	2024-12-12 12:58:27.343	🦥
spotify:track:0vFMQi8ZnOM2y8cuReZTZ2	1	Blown Away	2024-12-13 15:23:00.769	🦥
spotify:track:3pVRmuiT7OruUDgiBVkJsn	1	You Spin Me Round (Like A Record)	2024-12-13 15:35:29.104	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2024-12-14 22:32:14.097	🦥
spotify:track:0lizgQ7Qw35od7CYaoMBZb	1	Santa Tell Me	2024-12-15 12:58:41.701	🧑‍🎄
spotify:track:5TIyFlLF0EfYOUZH1TYxBq	1	More Than a Friend	2024-12-16 18:23:01.043	🦥
spotify:track:7ByDxFf6Xy7xPFAYafsLxI	1	engravings	2024-12-16 18:31:56.729	🦥
spotify:track:4xTgbiXPiMy4u4veI4j9tk	1	Shadow	2024-12-16 18:44:29.984	🦥
spotify:track:1ChulFMnwxoD74Me8eX2TU	1	You Spin Me Round (Like a Record)	2024-12-16 19:27:24.668	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2024-12-16 19:37:11.58	🦥
spotify:track:1qXFfxYo6lyVk8Cgeuyuu2	-1	Can Can (Hardstyle Mix)	2024-12-18 10:34:18.969	🧑‍🎄
spotify:track:2bPQuniBB9x0fRtxDly0kr	1	Stop The Cavalry	2024-12-18 10:42:20.108	🧑‍🎄
spotify:track:3VTNVsTTu05dmTsVFrmGpK	1	Fairytale of New York (feat. Kirsty MacColl)	2024-12-18 11:00:36.006	🦥
spotify:track:3VTNVsTTu05dmTsVFrmGpK	1	Fairytale of New York (feat. Kirsty MacColl)	2024-12-18 11:00:37.832	🧑‍🎄
spotify:track:3VTNVsTTu05dmTsVFrmGpK	-1	Fairytale of New York (feat. Kirsty MacColl)	2024-12-18 11:00:39.807	🦥
spotify:track:2FRnf9qhLbvw8fu4IBXx78	1	Last Christmas	2024-12-18 12:33:49.476	🧑‍🎄
spotify:track:2XWjPtKdi5sucFYtVav07d	1	365	2025-04-13 15:07:23.865	🦥
spotify:track:4Yg2w0P29BBBMixyeNjDtj	1	Do They Know It's Christmas? - 1984 Version	2024-12-20 14:42:00.903	🧑‍🎄
spotify:track:3yxCxPA3z8349Yizn8xFd7	1	Explosive	2024-12-22 10:58:22.895	🦥
spotify:track:59dLtGBS26x7kc0rHbaPrq	1	Nothin' on You (feat. Bruno Mars)	2024-12-23 00:55:42.877	🦥
spotify:track:7LO8X20v1ecmGGOtn3KPLX	1	Slow Nights	2024-12-24 12:09:21.432	🦥
spotify:track:3VTNVsTTu05dmTsVFrmGpK	-1	Fairytale of New York (feat. Kirsty MacColl)	2024-12-24 12:21:07.169	🦥
spotify:track:3VTNVsTTu05dmTsVFrmGpK	1	Fairytale of New York (feat. Kirsty MacColl)	2024-12-24 12:21:09.233	🧑‍🎄
spotify:track:2ISSQPb9LHHiV6ng2NXosL	1	Beautiful Now	2024-12-27 23:03:55.5	🦥
spotify:track:1TnUURhehaoMWKAqQtirm6	1	Colors	2024-12-29 16:17:54.058	🦥
spotify:track:3qpsSAfHgTdTwkaraJLe0V	1	Mamma Mia (feat. Mentissa) - Techno Mix	2024-12-31 14:10:59.793	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2024-12-31 14:54:57.48	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2025-01-01 13:36:47.939	🦥
spotify:track:6xLrQE0nqfpMfZoCQikxSL	1	Super Villain	2025-01-01 13:38:12.268	🦥
spotify:track:6DC0wG7y6tGBjWARnzlZXh	1	Samurai	2025-01-02 13:40:00.96	🦥
spotify:track:0qOvlEzD7xU35GLFT8DF1t	1	We Run The Night - Teddy Cream Remix	2025-01-02 13:43:24.697	🦥
spotify:track:6scmAbilUvgIdPTGkFjyyd	1	SEX LOVE DRUGS	2025-01-03 16:46:51.019	🦥
spotify:track:0O12SkQHX2Julh9utIosga	1	Sweet Child O' Mine	2025-01-03 17:12:51.986	🦥
spotify:track:1TnUURhehaoMWKAqQtirm6	1	Colors	2025-01-06 12:59:18.53	🦥
spotify:track:7LO8X20v1ecmGGOtn3KPLX	1	Slow Nights	2025-01-06 15:54:49.475	🦥
spotify:track:6scmAbilUvgIdPTGkFjyyd	1	SEX LOVE DRUGS	2025-01-06 16:18:26.469	🦥
spotify:track:6vQEOP9KgXITsVpFnKSbZ3	1	Paradise	2025-01-06 22:00:41.57	🦥
spotify:track:0hSU77xrJln8H28BKrSx4R	1	All of the Lights	2025-01-08 14:35:28.712	🦥
spotify:track:52qLVSx8MpTlYFzDnJmWy3	1	Pardon My French	2025-01-08 15:02:26.03	🦥
spotify:track:1WVW1Csh2mXbnmA1C6ARCH	1	dot dot dot	2025-01-08 15:04:30.886	🦥
spotify:track:4vT73UNPez6GgTwq97hsMB	1	Badder Than The Bad Boys	2025-01-08 21:26:09.049	🦥
spotify:track:7MXVkk9YMctZqd1Srtv4MB	1	Starboy	2025-01-09 00:50:16.61	🐺
spotify:track:22VdIZQfgXJea34mQxlt81	1	Can't Feel My Face	2025-01-09 00:52:29.537	🦥
spotify:track:1O5UqpLWNMgYhV69gi9pEM	1	sweat	2025-01-09 12:14:21.212	🦥
spotify:track:6scmAbilUvgIdPTGkFjyyd	1	SEX LOVE DRUGS	2025-01-09 12:55:11.372	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-01-09 13:01:18.73	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-01-09 13:21:33.021	🦥
spotify:track:4HX1f113qsJDmwwGL6QeV7	1	pretty girl I’ll make you famous	2025-01-09 16:15:16.974	🦥
spotify:track:0vf2eBw2inhl8y61cYQMv2	1	Devil Town	2025-01-10 15:38:05.375	🦥
spotify:track:4f0pJ7NNHAsrWbQBwiHMRJ	1	Hooked	2025-01-10 16:10:43.183	🦥
spotify:track:6RSVgjjYRtKg4FDyx2Lj1u	1	The Best	2025-01-10 16:32:10.865	🦥
spotify:track:2iLxXSM7AOzB4RCNzk4bjd	1	Destruction	2025-01-10 16:43:56.004	🦥
spotify:track:18oWEPapjNt32E6sCM6VLb	1	Heads Will Roll	2025-01-10 17:03:02.761	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2025-01-10 19:40:37.401	🦥
spotify:track:7LO8X20v1ecmGGOtn3KPLX	1	Slow Nights	2025-01-10 19:48:04.089	🦥
spotify:track:7LO8X20v1ecmGGOtn3KPLX	1	Slow Nights	2025-01-10 19:48:33.718	🦥
spotify:track:7LO8X20v1ecmGGOtn3KPLX	1	Slow Nights	2025-01-10 19:48:44.312	🦥
spotify:track:20McUFi8KCIVdNDLrkTDuZ	1	Goosebumps	2025-01-10 19:58:41.277	🦥
spotify:track:2ejhK0OtBe4CdfD67uqzGB	1	KIZAO	2025-01-10 20:01:54.918	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-01-10 20:04:41.789	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-01-10 20:14:57.006	🦥
spotify:track:4HX1f113qsJDmwwGL6QeV7	1	pretty girl I’ll make you famous	2025-01-10 20:19:19.717	🦥
spotify:track:7LO8X20v1ecmGGOtn3KPLX	1	Slow Nights	2025-01-10 20:33:55.158	🦥
spotify:track:7J5GcAbZ2rsWk2BzZDVog1	1	fancy	2025-01-11 17:52:25.736	🦥
spotify:track:5oItzo1j9q9aDRBUsiGmj9	1	The Watchers	2025-01-11 21:54:46.711	🦥
spotify:track:6e2YNCn1sP5eqnUe17vtxv	1	INFERNO	2025-01-13 13:49:08.358	🦥
spotify:track:2BCECbXfftaxyBRLnIpeZT	1	Happy Face	2025-01-13 13:54:02.53	🦥
spotify:track:2BCECbXfftaxyBRLnIpeZT	-1	Happy Face	2025-01-13 13:55:58.539	🦥
spotify:track:2Lumsra3kuU61wXkEKzKaK	1	Disco	2025-01-13 14:22:43.82	🦥
spotify:track:5E30LdtzQTGqRvNd7l6kG5	1	Daddy Issues	2025-01-13 14:30:55.781	🦥
spotify:track:5E30LdtzQTGqRvNd7l6kG5	1	Daddy Issues	2025-01-13 14:32:48.48	🦥
spotify:track:5f6JnxY2aqNdF3qFIPozUd	1	GRRRLS	2025-01-13 14:35:07.744	🦥
spotify:track:2mEMKgLqH3VZaSYO7iYCzp	1	Daylight	2025-01-13 15:57:32.84	🦥
spotify:track:5oItzo1j9q9aDRBUsiGmj9	1	The Watchers	2025-01-13 16:05:21.638	🦥
spotify:track:7sA2SKTo1QbTSSYn5YvJC4	1	Sharks	2025-01-13 16:07:24.338	🦥
spotify:track:31rLeplcJIGfbvUBpPa9f7	1	MUSTANG BABY (FT. ARTEMAS)	2025-01-13 16:57:11.994	🦥
spotify:track:7132EFlbWFNX4mLDY23OR5	-1	hell of a good time	2025-01-13 17:02:44.984	🦥
spotify:track:1oyUbXfp7bEGVjqcsTKttC	1	Jail	2025-01-13 18:00:05.378	🦥
spotify:track:0gc3meo5sZtNnv19oI0vRM	1	Pretty Boy	2025-01-13 18:42:44.671	🦥
spotify:track:0gc3meo5sZtNnv19oI0vRM	1	Pretty Boy	2025-01-13 18:43:43.428	🦥
spotify:track:7moZuS84OI5AWGc81GVujX	1	Dangerous	2025-01-13 22:55:37.874	🦥
spotify:track:0BuHt4GZ9uqDtPxUsYfEsy	1	Mother Teresa	2025-01-13 23:07:46.928	🦥
spotify:track:2xOxPjmkNNyoQ0MFZF2BG0	1	Taken By The Storm	2025-01-14 10:06:59.824	🦥
spotify:track:4ICqFn2E5X7wINlmXNrVGj	1	Soul Is A Star	2025-01-14 10:49:54.847	🦥
spotify:track:35R4uqcw0MscGaw05HcUWp	1	Free Now	2025-01-14 10:54:49.981	🦥
spotify:track:2mEMKgLqH3VZaSYO7iYCzp	1	Daylight	2025-01-14 10:58:04.576	🦥
spotify:track:1XP6izZrqT8FsMaLKDAnUP	1	Too Late To Love You	2025-01-14 11:00:25.897	🦥
spotify:track:3QJsSWa0Xo8MfaRn1gr4Be	1	favorite	2025-01-14 14:38:18.072	🦥
spotify:track:3a8b6uo4vnQSJroGhaNhgG	1	When You Say My Name	2025-01-14 15:28:46.476	🦥
spotify:track:37vVp2sWHuuIBOSl1NswP6	1	i'm yours	2025-01-14 15:31:11.502	🦥
spotify:track:131SfRMv57LKf8xtaSt39k	1	Who Do You Want	2025-01-14 15:38:23.206	🦥
spotify:track:68SmyiqELVaDMCvoFgrJ8b	1	abuse me	2025-01-14 15:49:14.573	🦥
spotify:track:4yGTNAnhlbSxrVdTC7fYIS	1	PRETTY WHEN U CRY	2025-01-14 15:57:26.337	🦥
spotify:track:39xEQ4GBaQFyj8xbNLJdSo	1	Tell On You	2025-01-15 10:55:50.429	🦥
spotify:track:5ff77CZZUpY8Gvu5GuA6vb	1	HAUNTED	2025-01-15 11:12:41.117	🦥
spotify:track:10AZj11FnvND9GW98ceiSp	1	MONSTER	2025-01-15 11:15:47.393	🦥
spotify:track:4TFXmB2WOm1G5CnVcejVQb	1	Witch Hunt	2025-01-15 11:47:38.907	🦥
spotify:track:2dgdMELimerBE6WDpyNIEK	1	dopamine	2025-01-15 14:58:41.346	🦥
spotify:track:5srKMwXoeyrRnyTnNbpgIW	-1	People I Don't Like	2025-01-15 15:14:46.493	🦥
spotify:track:2V5l77xUr1wyBkILj2qF8K	1	Coincidence	2025-01-15 16:13:55.56	🦥
spotify:track:2vvMmPGdcZPOXZycjGEqja	1	Dark Side	2025-01-15 16:31:34.792	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-01-15 16:36:13.762	🦥
spotify:track:5oItzo1j9q9aDRBUsiGmj9	1	The Watchers	2025-01-16 10:36:14.235	🦥
spotify:track:0Q0U4Z2zjSOGoI5aeZz6n6	1	Bad Girl	2025-01-16 11:52:11.504	🦥
spotify:track:6mNoRKg94GII7wGh7Zzsjk	1	Taste of Metal	2025-01-16 11:53:56.644	🦥
spotify:track:2T0kB6ogvjJAC1CGFbEDRP	1	Doomed	2025-01-16 11:58:55.365	🦥
spotify:track:30hvHBsvvl0uPXyRoULKiQ	1	SAiLOR MOON	2025-01-16 12:00:20.249	🦥
spotify:track:1ap5NcWZLaRjlCZcuxo9jA	1	HEAD OVER HEELS	2025-01-16 12:13:04.26	🦥
spotify:track:0Qly7RzK4kb9Y0ZfWfKeTr	1	skinned knees	2025-01-16 12:17:55.517	🦥
spotify:track:0dscoCNZ04K2z0p5zw3shV	1	Da Da Dum	2025-01-16 12:19:05.903	🦥
spotify:track:3ahCbuxsu4bH7a0dL9xYrF	1	Bonnie and Clyde	2025-01-16 12:27:26.328	🦥
spotify:track:302AZQ7ISLWGgGxAln39Km	1	Shy Guy	2025-01-16 13:06:42.194	🦥
spotify:track:0QIwoAemWa2xlBIhTBAVns	1	Arms of Gold	2025-01-16 13:19:03.806	🦥
spotify:track:1FkXVtAp8pkRwJC5dDluGS	1	Downtown	2025-01-16 13:39:25.277	🦥
spotify:track:5uBlr2RNpuu3n7ROgiQa7w	1	dramatic	2025-01-16 14:00:28.405	🦥
spotify:track:0xijNH95NSYJAnHkjTp8t9	1	d e a d	2025-01-16 20:46:12.677	🦥
spotify:track:2bkgIGPHdyQN03nAmSViSi	1	Body Language	2025-01-16 20:58:11.474	🦥
spotify:track:5mA31PQHLnzFkDR8Nnyj5O	1	boys beware	2025-01-16 21:45:39.515	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-01-16 22:02:54.864	🦥
spotify:track:4f0pJ7NNHAsrWbQBwiHMRJ	1	Hooked	2025-01-16 23:41:26.925	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	1	Dopamine (Split Brain Version)	2025-01-16 23:46:30.407	🦥
spotify:track:2KklXplRtxMsBYo474Es0w	1	Be Mine	2025-01-17 11:42:49.305	🦥
spotify:track:1dt220OBbkTsYz1NLVKIaw	1	Call Me (with R3HAB & Timmy Trumpet)	2025-01-17 11:46:40.176	🦥
spotify:track:63SevszngYpZOwf63o61K4	1	Nevermind	2025-01-17 11:53:00.248	🦥
spotify:track:2NF8A7C6tICScdRaZ0BrEe	1	Katchi - Ofenbach vs. Nick Waterhouse	2025-01-17 12:53:21.137	🦥
spotify:track:3fYXJrNuLAGKZvcIMGG484	1	Waiting for the Summer	2025-01-17 12:56:13.738	🦥
spotify:track:09EhgVA4blwhSic4hF2TFZ	1	Waterfall	2025-01-17 14:36:53.222	🦥
spotify:track:14LdhxElpZS0rKVV4nxtdA	1	Queen of Kings	2025-01-17 14:52:35.428	🦥
spotify:track:4beKzTMCCMDizozv4Y3Shj	1	Never Be Lonely	2025-01-17 15:15:59.838	🦥
spotify:track:4IwjJFCfvvfGegtGbaZmnO	1	Ekko inni meg	2025-01-17 15:26:48.314	🦥
spotify:track:1DmW5Ep6ywYwxc2HMT5BG6	1	Tattoo	2025-01-17 15:31:35.682	🦥
spotify:track:29bhnde7Gvnp7rvY9zsq5S	1	SHUM	2025-01-17 15:51:51.14	🦥
spotify:track:6Ntz1uQoMF8L2E4w518BFp	1	Lone Digger	2025-01-17 16:31:22.333	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-17 16:56:00.229	🦥
spotify:track:6NG6o14RcsmSDOBNChuVZZ	1	Krip	2025-01-17 16:58:32.003	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-01-17 18:37:09.774	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-17 18:52:56.797	🦥
spotify:track:5uBlr2RNpuu3n7ROgiQa7w	1	dramatic	2025-01-17 19:02:40.229	🦥
spotify:track:75c2zaSdDBSX0A8Jyvm4fO	1	older	2025-01-17 19:21:23.537	🦥
spotify:track:75c2zaSdDBSX0A8Jyvm4fO	1	older	2025-01-17 19:21:25.667	🦥
spotify:track:4IwjJFCfvvfGegtGbaZmnO	1	Ekko inni meg	2025-01-17 19:24:30.823	🦥
spotify:track:3fYXJrNuLAGKZvcIMGG484	1	Waiting for the Summer	2025-01-18 09:55:03.622	🦥
spotify:track:1oyUbXfp7bEGVjqcsTKttC	1	Jail	2025-01-18 09:59:53.49	🦥
spotify:track:14LdhxElpZS0rKVV4nxtdA	1	Queen of Kings	2025-01-18 10:12:33.452	🦥
spotify:track:4ICqFn2E5X7wINlmXNrVGj	1	Soul Is A Star	2025-01-18 10:26:44.328	🦥
spotify:track:2V5l77xUr1wyBkILj2qF8K	1	Coincidence	2025-01-18 11:03:20.47	🦥
spotify:track:0Qly7RzK4kb9Y0ZfWfKeTr	1	skinned knees	2025-01-18 11:06:51.528	🦥
spotify:track:302AZQ7ISLWGgGxAln39Km	1	Shy Guy	2025-01-18 11:21:04.73	🦥
spotify:track:0BuHt4GZ9uqDtPxUsYfEsy	1	Mother Teresa	2025-01-18 11:34:11.065	🦥
spotify:track:4IwjJFCfvvfGegtGbaZmnO	1	Ekko inni meg	2025-01-18 11:40:21.85	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-18 11:47:06.942	🦥
spotify:track:2xOxPjmkNNyoQ0MFZF2BG0	1	Taken By The Storm	2025-01-18 11:57:44.602	🦥
spotify:track:2Rczayj2tsm1Uga5uQ58Kz	1	Midnight (The Hanging Tree)	2025-01-18 13:46:25.137	🦥
spotify:track:7xKAzbzfqCl5P8fZGgnHQL	1	Sonate Pacifique - Radio Edit	2025-01-18 20:24:58.797	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-18 22:32:10.567	🦥
spotify:track:4HX1f113qsJDmwwGL6QeV7	1	pretty girl I’ll make you famous	2025-01-18 23:50:02.14	🦥
spotify:track:5uBlr2RNpuu3n7ROgiQa7w	1	dramatic	2025-01-19 00:00:51.842	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-19 00:03:40.778	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-01-20 21:33:32.416	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-20 21:35:24.816	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-01-20 21:40:07.125	🦥
spotify:track:4HX1f113qsJDmwwGL6QeV7	1	pretty girl I’ll make you famous	2025-01-20 21:44:04.927	🦥
spotify:track:7J5GcAbZ2rsWk2BzZDVog1	1	fancy	2025-01-20 21:46:10.732	🦥
spotify:track:0vf2eBw2inhl8y61cYQMv2	1	Devil Town	2025-01-20 22:04:09.957	🦥
spotify:track:131SfRMv57LKf8xtaSt39k	1	Who Do You Want	2025-01-21 13:58:10.097	🦥
spotify:track:30hvHBsvvl0uPXyRoULKiQ	1	SAiLOR MOON	2025-01-21 13:59:49.221	🦥
spotify:track:30hvHBsvvl0uPXyRoULKiQ	1	SAiLOR MOON	2025-01-21 15:25:57.615	🦥
spotify:track:68SmyiqELVaDMCvoFgrJ8b	1	abuse me	2025-01-21 15:26:16.832	🦥
spotify:track:2iYiLdsKRdSTHXQxIgZWF4	1	SHUT UP	2025-01-21 15:55:57.817	🦥
spotify:track:6vx2TVeITKDGsNjDUQCjmD	1	Serotonin Killer	2025-01-21 16:08:47.168	🦥
spotify:track:4UifCxJtbmRcpsqNcumOiO	1	On Fire	2025-01-21 16:16:34.471	🦥
spotify:track:75c2zaSdDBSX0A8Jyvm4fO	1	older	2025-01-21 17:28:50.765	🦥
spotify:track:0BuHt4GZ9uqDtPxUsYfEsy	1	Mother Teresa	2025-01-21 17:51:58.232	🦥
spotify:track:29bhnde7Gvnp7rvY9zsq5S	1	SHUM	2025-01-21 18:12:46.313	🦥
spotify:track:29bhnde7Gvnp7rvY9zsq5S	1	SHUM	2025-01-21 18:22:13.296	🦥
spotify:track:2V5l77xUr1wyBkILj2qF8K	1	Coincidence	2025-01-21 18:23:36.368	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-01-21 20:13:50.501	🦥
spotify:track:0gc3meo5sZtNnv19oI0vRM	1	Pretty Boy	2025-01-21 20:22:53.035	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-01-22 11:43:40.777	🦥
spotify:track:4HX1f113qsJDmwwGL6QeV7	1	pretty girl I’ll make you famous	2025-01-22 11:50:01.499	🦥
spotify:track:5TIyFlLF0EfYOUZH1TYxBq	1	More Than a Friend	2025-01-22 11:54:18.196	🦥
spotify:track:7fZtgiJSNJ2QarKKKSssBp	1	Hot Honey	2025-01-22 12:01:29.896	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2025-01-22 12:01:35.852	🦥
spotify:track:1WVW1Csh2mXbnmA1C6ARCH	1	dot dot dot	2025-01-22 12:01:44.05	🦥
spotify:track:48vIfHaK7by6x0T6ucpODL	1	Make You Mine	2025-01-22 12:01:57.547	🦥
spotify:track:1FkXVtAp8pkRwJC5dDluGS	1	Downtown	2025-01-22 12:07:16.69	🦥
spotify:track:6vQEOP9KgXITsVpFnKSbZ3	1	Paradise	2025-01-22 12:10:27.376	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-01-22 13:15:45.132	🦥
spotify:track:33lQztwpMhDovy3A0zzAdU	1	Bleed	2025-01-22 13:18:38.719	🦥
spotify:track:2mEMKgLqH3VZaSYO7iYCzp	1	Daylight	2025-01-22 18:02:21.883	🦥
spotify:track:3RLshk3cDQOqWhSIRCVaXL	1	la di die (feat. Jaden Hossler)	2025-01-22 18:06:17.066	🦥
spotify:track:0BuHt4GZ9uqDtPxUsYfEsy	1	Mother Teresa	2025-01-22 18:12:48.687	🦥
spotify:track:7J5GcAbZ2rsWk2BzZDVog1	1	fancy	2025-01-22 23:39:31.522	🦥
spotify:track:2T0kB6ogvjJAC1CGFbEDRP	1	Doomed	2025-01-22 23:43:12.658	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2025-01-23 10:02:36.142	🦥
spotify:track:2xOxPjmkNNyoQ0MFZF2BG0	1	Taken By The Storm	2025-01-23 10:07:59.745	🦥
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2025-01-23 10:08:03.251	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2025-01-23 10:08:06.76	🦥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2025-01-23 10:16:04.575	🦥
spotify:track:30hvHBsvvl0uPXyRoULKiQ	1	SAiLOR MOON	2025-01-23 10:19:47.018	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-23 10:23:58.497	🦥
spotify:track:7LO8X20v1ecmGGOtn3KPLX	1	Slow Nights	2025-01-23 11:19:30.502	🦥
spotify:track:7LO8X20v1ecmGGOtn3KPLX	1	Slow Nights	2025-01-23 11:27:04.927	🦥
spotify:track:2vb2iUVBp3LFLAb3zl2Tmc	1	I Don't Wanna Talk	2025-01-23 11:35:38.096	🦥
spotify:track:2dgdMELimerBE6WDpyNIEK	1	dopamine	2025-01-23 12:24:54.58	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	-1	Dopamine (Split Brain Version)	2025-01-23 12:25:04.203	🦥
spotify:track:6319BpXP42QAaXeELaPLmU	1	Watch Me	2025-01-23 13:03:11.786	🦥
spotify:track:1ap5NcWZLaRjlCZcuxo9jA	1	HEAD OVER HEELS	2025-01-23 13:35:49.317	🦥
spotify:track:4HX1f113qsJDmwwGL6QeV7	1	pretty girl I’ll make you famous	2025-01-23 13:40:41.48	🦥
spotify:track:6mNoRKg94GII7wGh7Zzsjk	1	Taste of Metal	2025-01-23 17:01:38.498	🦥
spotify:track:0Qly7RzK4kb9Y0ZfWfKeTr	1	skinned knees	2025-01-23 17:06:21.918	🦥
spotify:track:74DtPMPZm8NEDXwOY8B92I	1	like that	2025-01-23 17:47:49.888	🦥
spotify:track:5goIWfQRCgsxRpFUDY4jmk	1	Not Scared Of Growing Old	2025-01-23 23:35:09.04	🦥
spotify:track:0IrKiuLgqn0OKgpc946yWG	1	MF Diamond	2025-01-24 00:03:25.431	🦥
spotify:track:2V5l77xUr1wyBkILj2qF8K	1	Coincidence	2025-01-24 00:08:02.117	🦥
spotify:track:2mlNgAeIBnL78ZriXgrRHz	1	Glimpse of Us	2025-01-24 09:54:33.527	🦥
spotify:track:3JG1uFc40wfyrqaWC7iv0e	1	i like the way you kiss me	2025-01-24 09:57:27.421	🦥
spotify:track:3QJsSWa0Xo8MfaRn1gr4Be	1	favorite	2025-01-24 10:08:09.115	🦥
spotify:track:7MlDNspYwfqnHxORufupwq	1	Sex, Drugs, Etc.	2025-01-24 10:13:59.547	🦥
spotify:track:4xljS7HXhM9LCuzdVEaAa9	1	xstasy	2025-01-24 10:20:08.392	🦥
spotify:track:2SOhUiyKpnlshR3SFh733w	1	tired of california	2025-01-24 10:21:49.786	🦥
spotify:track:0gc3meo5sZtNnv19oI0vRM	1	Pretty Boy	2025-01-24 10:24:57.754	🦥
spotify:track:6nStBZGqGgTR87MrBpNza0	1	HEARTBEAT	2025-01-24 11:45:54.542	🦥
spotify:track:2AwHfYNiI0aDqs51eA3KUr	1	Iconique	2025-01-24 12:54:24.704	🦥
spotify:track:2K7vmv62BpMRIySly2w4nO	1	No Heroes	2025-01-24 13:13:05.198	🦥
spotify:track:40deyylbGw0N2GskoKmvpJ	1	Oblivion	2025-01-24 13:15:38.683	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-01-24 13:27:54.17	🦥
spotify:track:0BuHt4GZ9uqDtPxUsYfEsy	1	Mother Teresa	2025-01-24 13:39:32.224	🦥
spotify:track:0BuHt4GZ9uqDtPxUsYfEsy	1	Mother Teresa	2025-01-24 13:40:39.004	🦥
spotify:track:0vbLjUo57fw0YFJB43TjBX	1	Who You Were	2025-01-24 13:51:34.328	🦥
spotify:track:0GqWXMhLivLWNWdCl1nbDo	1	99 boys	2025-01-25 17:45:03.721	🦥
spotify:track:7J5GcAbZ2rsWk2BzZDVog1	1	fancy	2025-01-25 17:57:12.026	🦥
spotify:track:0yNiaePZow0ycdrmLV0J7y	1	1985	2025-01-25 17:59:23.774	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-25 20:06:32.33	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-25 20:06:46.525	🦥
spotify:track:0QIwoAemWa2xlBIhTBAVns	1	Arms of Gold	2025-01-26 16:21:23.44	🦥
spotify:track:0gc3meo5sZtNnv19oI0vRM	1	Pretty Boy	2025-01-26 16:53:12.771	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2025-01-26 16:59:07.484	🦥
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2025-01-26 17:47:02.828	🦥
spotify:track:2q0egzIxE6opLoQsOwL0Gs	1	FAKE	2025-01-26 18:07:43.917	🦥
spotify:track:6NndAdLoSF1fcFtbRlGMLt	1	Chemical X	2025-01-27 13:25:08.614	🦥
spotify:track:4y0NzIgyQJgNjZGDnmO7KD	1	IDONTWANNASTAY	2025-01-27 13:35:24.204	🦥
spotify:track:3dh0ehwGAONsJu64cFfYxq	1	Vicious	2025-01-27 13:45:50.448	🦥
spotify:track:2ABMlnKTpg5HlDrwHAD9xN	1	Death Of Me	2025-01-27 15:21:36.257	🦥
spotify:track:302AZQ7ISLWGgGxAln39Km	1	Shy Guy	2025-01-28 16:35:47.503	🦥
spotify:track:14AyWf6y7KlWWLfAjdKMKI	1	Ophelia	2025-01-28 17:02:59.788	🦥
spotify:track:0evOmsnfWAqsGJlSTICgz7	1	Rockstar Everyday	2025-01-29 14:34:21.865	🦥
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	1	BLACKBLUEYELLOW	2025-01-29 14:40:22.132	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-01-30 11:02:53.836	🦥
spotify:track:3NNJjEPFTUcAMUyMXsDw5c	1	Reckless	2025-01-30 11:07:40.756	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-01-30 12:43:59.58	🦥
spotify:track:3uEYOp1rDL1CJViIruQtb7	1	Houndin	2025-01-30 12:49:46.211	🦥
spotify:track:1b7DozY0xHWXU1T84Lck1z	1	Ghost Town	2025-01-30 12:56:16.532	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-01-30 13:29:09.702	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-30 13:36:45.008	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-30 13:39:16.377	🦥
spotify:track:0ZSDdEEeZdSnvMzRdPqWkj	1	Doctor Doctor	2025-01-30 13:42:13.566	🦥
spotify:track:7vWFaMq63AwkFDhS2OAg5u	1	The Time (Dirty Bit)	2025-01-30 15:00:18.944	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-01-30 18:44:38.063	🦥
spotify:track:4HX1f113qsJDmwwGL6QeV7	1	pretty girl I’ll make you famous	2025-01-30 18:49:32.542	🦥
spotify:track:0ZSDdEEeZdSnvMzRdPqWkj	1	Doctor Doctor	2025-01-30 20:46:18.466	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	1	Dopamine (Split Brain Version)	2025-01-30 20:52:37.94	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	-1	Dopamine (Split Brain Version)	2025-01-30 20:52:42.503	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	-1	Dopamine (Split Brain Version)	2025-01-30 20:52:44.592	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-31 10:29:47.964	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-01-31 12:17:44.974	🦥
spotify:track:1xrx0GpR1sUrUApFzBI6Ld	1	Kiss N' Gun	2025-01-31 12:35:09.274	🦥
spotify:track:1xrx0GpR1sUrUApFzBI6Ld	-1	Kiss N' Gun	2025-01-31 12:36:03.386	🦥
spotify:track:7FuSsCvjWRpSs5GHWewS9f	1	UNBREAKABLE	2025-01-31 15:40:40.212	🦥
spotify:track:6DploCSZVf5gvIP7WBBU6S	1	Afterbloom (feat. Deza)	2025-01-31 15:56:26.316	🦥
spotify:track:3MPMlVLLHgPPJJBDrX424v	1	Irish Man	2025-01-31 16:03:15.14	🦥
spotify:track:3MPMlVLLHgPPJJBDrX424v	-1	Irish Man	2025-01-31 16:03:22.016	🦥
spotify:track:4q05KbxYZ5JdkmrletgPjF	1	Whistle (feat. Calum Scott)	2025-01-31 16:07:48.718	🦥
spotify:track:5E30LdtzQTGqRvNd7l6kG5	1	Daddy Issues	2025-02-02 22:03:55.973	🦥
spotify:track:5uBlr2RNpuu3n7ROgiQa7w	1	dramatic	2025-02-02 22:37:55.06	🦥
spotify:track:2q0egzIxE6opLoQsOwL0Gs	1	FAKE	2025-02-03 12:19:26.907	🦥
spotify:track:0sPs2Nm4rPaM79v3IiG2iY	1	Dance With Me	2025-02-03 16:40:43.731	🦥
spotify:track:1Dfs5bwPOxPYiG3jgWalCu	1	LOVE AND WAR	2025-02-03 17:42:48.898	🦥
spotify:track:2q0egzIxE6opLoQsOwL0Gs	1	FAKE	2025-02-03 20:00:51.911	🦥
spotify:track:0evOmsnfWAqsGJlSTICgz7	1	Rockstar Everyday	2025-02-03 20:04:55.866	🦥
spotify:track:4y0NzIgyQJgNjZGDnmO7KD	1	IDONTWANNASTAY	2025-02-03 20:13:38.229	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-02-03 20:52:25.319	🦥
spotify:track:2ABMlnKTpg5HlDrwHAD9xN	1	Death Of Me	2025-02-03 20:52:36.865	🦥
spotify:track:302AZQ7ISLWGgGxAln39Km	1	Shy Guy	2025-02-03 20:52:44.294	🦥
spotify:track:14AyWf6y7KlWWLfAjdKMKI	1	Ophelia	2025-02-03 20:52:47.771	🦥
spotify:track:6NndAdLoSF1fcFtbRlGMLt	1	Chemical X	2025-02-03 20:53:03.668	🦥
spotify:track:0evOmsnfWAqsGJlSTICgz7	1	Rockstar Everyday	2025-02-03 22:52:01.178	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-02-03 23:08:18.82	🦥
spotify:track:5uBlr2RNpuu3n7ROgiQa7w	1	dramatic	2025-02-03 23:17:09.107	🦥
spotify:track:1xrx0GpR1sUrUApFzBI6Ld	1	Kiss N' Gun	2025-02-03 23:20:18.395	🦥
spotify:track:30hvHBsvvl0uPXyRoULKiQ	1	SAiLOR MOON	2025-02-04 10:26:18.058	🦥
spotify:track:31rLeplcJIGfbvUBpPa9f7	1	MUSTANG BABY (FT. ARTEMAS)	2025-02-04 10:29:54.432	🦥
spotify:track:62hLiF5VQ4ijErnEbxQBpU	1	GIRL AND THE MACHINE	2025-02-04 10:38:38.368	🦥
spotify:track:2LaLzmU2vny0lwlyi6sCp2	1	DIRTY LITTLE SECRET	2025-02-04 10:49:02.885	🦥
spotify:track:41QRhGJmP6DPhzD35sV8tZ	1	FML (LOL OH WELL)	2025-02-04 10:55:46.393	🦥
spotify:track:30hvHBsvvl0uPXyRoULKiQ	1	SAiLOR MOON	2025-02-04 18:52:52.494	🦥
spotify:track:7jGppdExLgg6yKTG5RvnKs	1	Kiss Me Thru The Phone	2025-02-05 00:12:32.314	🦥
spotify:track:30hvHBsvvl0uPXyRoULKiQ	1	SAiLOR MOON	2025-02-05 14:27:02.58	🦥
spotify:track:1ap5NcWZLaRjlCZcuxo9jA	1	HEAD OVER HEELS	2025-02-05 14:32:22.224	🦥
spotify:track:0Qly7RzK4kb9Y0ZfWfKeTr	1	skinned knees	2025-02-05 14:33:17.769	🦥
spotify:track:0dscoCNZ04K2z0p5zw3shV	1	Da Da Dum	2025-02-05 14:35:43.823	🦥
spotify:track:302AZQ7ISLWGgGxAln39Km	1	Shy Guy	2025-02-05 14:41:04.766	🦥
spotify:track:6NndAdLoSF1fcFtbRlGMLt	1	Chemical X	2025-02-05 18:12:49.84	🦥
spotify:track:2q0egzIxE6opLoQsOwL0Gs	1	FAKE	2025-02-05 18:15:57.703	🦥
spotify:track:29bhnde7Gvnp7rvY9zsq5S	1	SHUM	2025-02-05 18:46:14.824	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	-1	Dopamine (Split Brain Version)	2025-02-05 18:51:22.852	🦥
spotify:track:7J5GcAbZ2rsWk2BzZDVog1	-1	fancy	2025-02-05 18:55:32.34	🦥
spotify:track:7J5GcAbZ2rsWk2BzZDVog1	1	fancy	2025-02-05 18:55:34.688	🦥
spotify:track:7J5GcAbZ2rsWk2BzZDVog1	1	fancy	2025-02-05 18:55:35.598	🦥
spotify:track:7kUljt0NM5sISL3OGNVxYd	1	Royalty	2025-02-06 16:10:07.972	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-02-06 16:22:03.244	🦥
spotify:track:0YlKym9x7HYSmPIWJIWHbz	1	Behind The Scenes	2025-02-06 17:38:23.373	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-02-06 19:18:10.072	🦥
spotify:track:3e7tL9Bmg8WjbmUYXxYHWj	1	Dangerous	2025-02-06 21:19:54.547	🦥
spotify:track:6319BpXP42QAaXeELaPLmU	1	Watch Me	2025-02-06 23:06:46.724	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-02-08 15:57:43.74	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	-1	Dopamine (Split Brain Version)	2025-02-08 18:16:24.596	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	-1	Dopamine (Split Brain Version)	2025-02-08 18:16:25.562	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	-1	Dopamine (Split Brain Version)	2025-02-08 18:16:26.412	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	-1	Dopamine (Split Brain Version)	2025-02-08 18:16:27.352	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	-1	Dopamine (Split Brain Version)	2025-02-08 18:16:28.095	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-02-08 23:50:24.782	🦥
spotify:track:4hD4Q2BNH50ryovUWNzXKe	-1	Dopamine (Split Brain Version)	2025-02-09 00:30:15.465	🦥
spotify:track:30hvHBsvvl0uPXyRoULKiQ	1	SAiLOR MOON	2025-02-09 15:27:40.011	🦥
spotify:track:0Qly7RzK4kb9Y0ZfWfKeTr	1	skinned knees	2025-02-09 15:34:05.934	🦥
spotify:track:0UeYCHOETPfai02uskjJ3x	1	Shooting Stars	2025-02-09 15:56:45.084	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-02-09 16:06:06.83	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-02-09 16:44:37.471	🦥
spotify:track:7rsshaWm3DzHAkVoTbycMf	1	LOVE AT FiRST BiTE	2025-02-09 19:27:15.028	🦥
spotify:track:0H7kDalfzg7aw8O1EiUKnj	1	BODY PARTS	2025-02-09 19:39:10.113	🦥
spotify:track:4cPYD0HbLwDpzRI6bonAHo	1	Never enough	2025-02-09 19:45:58.794	🦥
spotify:track:6kOdk29M8h6ZfHz4byVG0t	1	PRETTY PLEASE	2025-02-10 15:56:03.745	🦥
spotify:track:3QJsSWa0Xo8MfaRn1gr4Be	1	favorite	2025-02-10 19:01:05.451	🦥
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2025-02-10 19:04:16.565	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2025-02-10 20:40:21.441	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-02-10 20:48:29.105	🦥
spotify:track:2V5l77xUr1wyBkILj2qF8K	1	Coincidence	2025-02-11 15:32:30.15	🦥
spotify:track:2V5l77xUr1wyBkILj2qF8K	1	Coincidence	2025-02-11 17:57:53.854	🦥
spotify:track:75c2zaSdDBSX0A8Jyvm4fO	1	older	2025-02-11 18:36:25.608	🦥
spotify:track:6E7wqplViIGfBHyoVDj4yW	1	I Like You Best	2025-02-11 21:53:27.002	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2025-02-12 10:13:12.554	🦥
spotify:track:2GxrNKugF82CnoRFbQfzPf	1	i like the way you kiss me	2025-02-12 10:17:01.92	🦥
spotify:track:30hvHBsvvl0uPXyRoULKiQ	1	SAiLOR MOON	2025-02-12 11:08:13.286	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-02-12 11:10:49.57	🦥
spotify:track:2K7vmv62BpMRIySly2w4nO	1	No Heroes	2025-02-12 16:08:22.12	🦥
spotify:track:1MIa3QhcVfAivMnEnc46YX	1	My Mind	2025-02-12 16:25:13.251	🦥
spotify:track:7rsshaWm3DzHAkVoTbycMf	1	LOVE AT FiRST BiTE	2025-02-12 18:19:39.128	🦥
spotify:track:1oyUbXfp7bEGVjqcsTKttC	1	Jail	2025-02-12 18:21:34.324	🦥
spotify:track:5fZlbHpe7bOU0MG2DHM0tB	1	99% ANGEL	2025-02-12 18:28:28.144	🦥
spotify:track:6Qigf5GYjqg2LjrCxEeuLH	1	FMLYLM	2025-02-12 18:36:18.766	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-02-12 18:55:21.083	🦥
spotify:track:62hLiF5VQ4ijErnEbxQBpU	1	GIRL AND THE MACHINE	2025-02-12 19:21:36.492	🦥
spotify:track:6nStBZGqGgTR87MrBpNza0	1	HEARTBEAT	2025-02-12 20:12:31.212	🦥
spotify:track:2tpfxAXiI52znho4WE3XFA	1	Talking Body	2025-02-13 18:51:50.051	🐺
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2025-02-13 18:59:00.249	🦥
spotify:track:0BuHt4GZ9uqDtPxUsYfEsy	1	Mother Teresa	2025-02-14 11:12:08.96	🦥
spotify:track:5YaskwnGDZFDRipaqzbwQx	1	Your Love (9PM)	2025-02-14 11:46:50.475	🦥
spotify:track:40deyylbGw0N2GskoKmvpJ	1	Oblivion	2025-02-14 12:02:51.42	🦥
spotify:track:40deyylbGw0N2GskoKmvpJ	1	Oblivion	2025-02-14 12:02:52.424	🦥
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	1	BLACKBLUEYELLOW	2025-02-14 12:04:57.882	🦥
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2025-02-14 12:10:17.44	🦥
spotify:track:2dgdMELimerBE6WDpyNIEK	1	dopamine	2025-02-14 12:23:04.846	🦥
spotify:track:3JG1uFc40wfyrqaWC7iv0e	1	i like the way you kiss me	2025-02-14 12:26:43.924	🦥
spotify:track:6scmAbilUvgIdPTGkFjyyd	1	SEX LOVE DRUGS	2025-02-14 12:40:25.715	🦥
spotify:track:6kOdk29M8h6ZfHz4byVG0t	1	PRETTY PLEASE	2025-02-14 12:44:35.586	🦥
spotify:track:1xN9RnDl0i6V5zvb2QdOlr	1	Echoes	2025-02-14 12:47:52.684	🦥
spotify:track:31rLeplcJIGfbvUBpPa9f7	1	MUSTANG BABY (FT. ARTEMAS)	2025-02-14 12:51:19.667	🦥
spotify:track:6E7wqplViIGfBHyoVDj4yW	1	I Like You Best	2025-02-14 12:56:06.576	🦥
spotify:track:7Ey8DZuMBbeiqMk8s8XpHA	1	RUSH	2025-02-14 13:39:00.168	🦥
spotify:track:78irBGVYCFS8UeuEjatKzR	1	Black Hole Friend	2025-02-14 14:31:19.937	🦥
spotify:track:0xGQTpN4ESETtl1Sp6rzd2	1	São Paulo (feat. Anitta)	2025-02-14 21:10:18.159	🦥
spotify:track:7aGSmvVvSjrpLlklaWSvG3	1	Closer	2025-02-16 11:11:03.198	🦥
spotify:track:465WMnAsGX9twpLm90QgWO	1	puppy	2025-02-16 11:22:05.959	🦥
spotify:track:6n9e5YQaVZVwjGVwkeiVP0	1	DIRTY LITTLE FANTASY	2025-02-16 11:27:20.308	🦥
spotify:track:2GWCZJWundoYi5IloWIgTX	1	eyes don't lie	2025-02-16 11:28:43.994	🦥
spotify:track:3Uxp6uik4XcT6LGIv8mKNe	1	Out Of Touch - 71 Digits Edit	2025-02-16 11:49:54.357	🦥
spotify:track:2UzWIjVXtv8PLa5JRKPYSb	1	Dance Dance (feat. Alessandra)	2025-02-16 11:58:08.708	🦥
spotify:track:5gwPY60SyAcrO6uQl5LVUh	1	Bonjour Madame	2025-02-16 12:23:29.715	🦥
spotify:track:2xOxPjmkNNyoQ0MFZF2BG0	1	Taken By The Storm	2025-02-16 12:26:30.969	🦥
spotify:track:3akZGuqQhifRrFYB8UCell	1	IOU	2025-02-16 12:59:56.463	🦥
spotify:track:2Z2HCTkpjlD0h42bXmXrCb	1	CLOSE ENOUGH	2025-02-16 14:31:04.464	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-02-16 20:13:03.507	🦥
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	-1	BLACKBLUEYELLOW	2025-02-16 20:19:08.029	🦥
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	-1	BLACKBLUEYELLOW	2025-02-16 20:19:08.276	🔥
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	-1	BLACKBLUEYELLOW	2025-02-16 20:19:08.442	🎶
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	-1	BLACKBLUEYELLOW	2025-02-16 20:19:09.074	🤠
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	-1	BLACKBLUEYELLOW	2025-02-16 20:19:09.955	☔
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	1	BLACKBLUEYELLOW	2025-02-16 20:19:14.622	🤠
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	1	BLACKBLUEYELLOW	2025-02-16 20:19:15.136	☔
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	1	BLACKBLUEYELLOW	2025-02-16 20:19:15.373	🎶
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	1	BLACKBLUEYELLOW	2025-02-16 20:19:16.188	🦥
spotify:track:0UdHGXy6Om0yUIdqYaLpnl	1	BLACKBLUEYELLOW	2025-02-16 20:19:16.865	🔥
spotify:track:1GJ72huYp93hhZlz4O34Jd	1	Gotta Feeling	2025-02-17 20:38:36.865	🦥
spotify:track:37vVp2sWHuuIBOSl1NswP6	1	i'm yours	2025-02-17 20:46:42.454	🦥
spotify:track:0xGQTpN4ESETtl1Sp6rzd2	-1	São Paulo (feat. Anitta)	2025-02-17 21:29:18.714	🦥
spotify:track:68SmyiqELVaDMCvoFgrJ8b	1	abuse me	2025-02-19 17:12:16.193	🔥
spotify:track:68SmyiqELVaDMCvoFgrJ8b	1	abuse me	2025-02-19 17:12:17.19	🦥
spotify:track:68SmyiqELVaDMCvoFgrJ8b	-1	abuse me	2025-02-19 17:12:19.185	🔥
spotify:track:0YlKym9x7HYSmPIWJIWHbz	1	Behind The Scenes	2025-02-19 17:26:17.774	🦥
spotify:track:2Rczayj2tsm1Uga5uQ58Kz	-1	Midnight (The Hanging Tree)	2025-02-19 17:34:11.754	🦥
spotify:track:2Rczayj2tsm1Uga5uQ58Kz	-1	Midnight (The Hanging Tree)	2025-02-19 17:34:12.894	🦥
spotify:track:2Rczayj2tsm1Uga5uQ58Kz	-1	Midnight (The Hanging Tree)	2025-02-19 17:34:13.825	🦥
spotify:track:4y0NzIgyQJgNjZGDnmO7KD	1	IDONTWANNASTAY	2025-02-20 12:45:02.618	🦥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2025-02-20 12:55:59.627	🦥
spotify:track:0vf2eBw2inhl8y61cYQMv2	1	Devil Town	2025-02-20 13:07:01.904	🦥
spotify:track:68SmyiqELVaDMCvoFgrJ8b	1	abuse me	2025-02-20 17:23:22.911	🦥
spotify:track:6nStBZGqGgTR87MrBpNza0	1	HEARTBEAT	2025-02-20 17:26:30.281	🦥
spotify:track:7moZuS84OI5AWGc81GVujX	1	Dangerous	2025-02-20 18:10:26.303	🦥
spotify:track:4HX1f113qsJDmwwGL6QeV7	1	pretty girl I’ll make you famous	2025-02-20 18:14:53.886	🦥
spotify:track:7rsshaWm3DzHAkVoTbycMf	1	LOVE AT FiRST BiTE	2025-02-20 18:24:56.804	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2025-02-20 18:27:09.538	🦥
spotify:track:40deyylbGw0N2GskoKmvpJ	1	Oblivion	2025-02-20 18:29:13.239	🦥
spotify:track:30hvHBsvvl0uPXyRoULKiQ	1	SAiLOR MOON	2025-02-20 18:32:03.698	🦥
spotify:track:0GqWXMhLivLWNWdCl1nbDo	1	99 boys	2025-02-21 08:47:34.819	🦥
spotify:track:2xOxPjmkNNyoQ0MFZF2BG0	1	Taken By The Storm	2025-02-21 10:05:00.968	🦥
spotify:track:22nwpQDITY3WzJlNz5ITUk	1	Chills - Nashville Version	2025-02-21 10:06:44.285	🦥
spotify:track:5J8FkaBZb8gWpzPWjD33GP	1	Monica - Demo	2025-02-21 10:10:53.051	🦥
spotify:track:0BuHt4GZ9uqDtPxUsYfEsy	1	Mother Teresa	2025-02-21 10:15:28.088	🦥
spotify:track:2xOxPjmkNNyoQ0MFZF2BG0	1	Taken By The Storm	2025-02-21 10:49:19.783	🦥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2025-02-21 10:52:11.794	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-02-21 11:11:59.386	🦥
spotify:track:0evOmsnfWAqsGJlSTICgz7	1	Rockstar Everyday	2025-02-21 11:20:14.891	🦥
spotify:track:1xN9RnDl0i6V5zvb2QdOlr	1	Echoes	2025-02-21 14:31:19.723	🦥
spotify:track:0stJVUUSrbEwyFHOp2dRu0	1	Open Hearts	2025-02-21 14:38:03.14	🦥
spotify:track:0VO8gYVDSwM1Qdd2GsMoYK	1	Moth To A Flame (with The Weeknd)	2025-02-21 14:57:40.348	🦥
spotify:track:0gc3meo5sZtNnv19oI0vRM	1	Pretty Boy	2025-02-21 15:23:02.08	🦥
spotify:track:59B5qfgrWEmJxj1xHUql2B	1	Expensive	2025-02-21 20:57:06.69	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2025-02-22 10:05:20.879	🦥
spotify:track:63y6xWR4gXz7bnUGOk8iI6	1	Into You	2025-02-22 11:53:16.111	🦥
spotify:track:7rsshaWm3DzHAkVoTbycMf	1	LOVE AT FiRST BiTE	2025-02-22 12:08:55.143	🦥
spotify:track:6n9e5YQaVZVwjGVwkeiVP0	1	DIRTY LITTLE FANTASY	2025-02-22 12:16:08.091	🦥
spotify:track:3yrvQHw6pQemsrCQEpMnKv	1	Ain't It Fun	2025-02-25 11:50:31.594	💿
spotify:track:3yrvQHw6pQemsrCQEpMnKv	1	Ain't It Fun	2025-02-25 11:50:33.231	🦥
spotify:track:7rsshaWm3DzHAkVoTbycMf	1	LOVE AT FiRST BiTE	2025-02-25 22:01:43.906	🦥
spotify:track:7fZtgiJSNJ2QarKKKSssBp	1	Hot Honey	2025-02-25 22:03:02.88	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-02-25 22:06:06.372	🦥
spotify:track:6lKSOnC9iLGDonypMgvGrm	1	Too Much	2025-02-26 11:05:03.495	🦥
spotify:track:2uvGMe9YlICzXJLkTKLVyg	1	Backin Up Song (feat. Diana)	2025-02-26 12:26:40.299	🦀
spotify:track:2oJnewcmY02HnOd1KbVwPe	1	Sax Man	2025-02-26 13:29:17.947	🦀
spotify:track:6U4VqEHy4n5VeiH4pQPL24	1	You're Welcome	2025-02-26 13:43:27.577	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-02-28 01:02:44.757	🦥
spotify:track:4FyesJzVpA39hbYvcseO2d	1	Just Wanna Rock	2025-02-28 22:02:04.708	🎉
spotify:track:4fCE1SCDulouoac9Q8XroU	1	West Coast (feat. Quinn XCII)	2025-03-01 17:05:35.328	🦥
spotify:track:3VBHBxTFt18h66k2R8jNTt	1	RAININ’ FELLAS	2025-03-01 17:20:13.295	🦥
spotify:track:6KJ4rwX0hT3bWO953YEmpY	1	JAPAN	2025-03-01 18:17:09.155	🦥
spotify:track:6rrzv6g69ckf0VRNS1kkuR	1	Sweet Child O' Mine	2025-03-01 18:26:46.811	🦥
spotify:track:5J8FkaBZb8gWpzPWjD33GP	1	Monica - Demo	2025-03-01 18:48:36.015	🦥
spotify:track:3yrvQHw6pQemsrCQEpMnKv	1	Ain't It Fun	2025-03-01 19:02:45.802	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-03-01 19:11:08.964	🦥
spotify:track:59B5qfgrWEmJxj1xHUql2B	1	Expensive	2025-03-01 19:13:48.41	🦥
spotify:track:6lKSOnC9iLGDonypMgvGrm	1	Too Much	2025-03-01 19:25:03.473	🦥
spotify:track:0stJVUUSrbEwyFHOp2dRu0	1	Open Hearts	2025-03-01 19:40:36.959	🦥
spotify:track:6n9e5YQaVZVwjGVwkeiVP0	1	DIRTY LITTLE FANTASY	2025-03-01 19:44:25.488	🦥
spotify:track:2xOxPjmkNNyoQ0MFZF2BG0	1	Taken By The Storm	2025-03-01 19:49:02.238	🦥
spotify:track:2Z2HCTkpjlD0h42bXmXrCb	1	CLOSE ENOUGH	2025-03-01 20:50:23.763	🦥
spotify:track:6ITGgQABtRjbBq3AEBXc4o	1	Victim	2025-03-01 21:57:37.782	🦥
spotify:track:6lKSOnC9iLGDonypMgvGrm	1	Too Much	2025-03-01 22:34:58.539	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-03-01 23:20:42.425	🦥
spotify:track:6lKSOnC9iLGDonypMgvGrm	1	Too Much	2025-03-02 01:33:33.798	🦥
spotify:track:7kMfu3KUydmrFVGEAhjtyl	1	Good Girls Go Bad (feat. Leighton Meester)	2025-03-02 10:47:06.497	🎉
spotify:track:1xNcBAoUw8Hz6LqK2jt4Ff	1	Call on Me - Radio Mix	2025-03-02 10:50:47.108	💿
spotify:track:2NniAhAtkRACaMeYt48xlD	1	50 Ways to Say Goodbye	2025-03-02 11:00:21.783	📼
spotify:track:0h3w9Sr1gToqxA9gIs5O39	1	Tutta L'Italia - Sanremo 2025	2025-03-03 21:02:13.449	🦥
spotify:track:647ApDC8JCH0CRKNYAwos9	1	I'll Fly With You (L'Amour Toujours)	2025-03-03 21:07:32.255	🦥
spotify:track:0yzgLse32BbsVOlFOVIryg	1	HURT (i don't think i'm pretty)	2025-03-04 12:53:56.052	🦥
spotify:track:7rsshaWm3DzHAkVoTbycMf	1	LOVE AT FiRST BiTE	2025-03-04 12:56:17.355	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-03-04 12:59:22.118	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-03-04 13:01:09.845	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2025-03-04 13:04:12.368	🦥
spotify:track:30hvHBsvvl0uPXyRoULKiQ	1	SAiLOR MOON	2025-03-04 13:08:59.621	🦥
spotify:track:31rLeplcJIGfbvUBpPa9f7	1	MUSTANG BABY (FT. ARTEMAS)	2025-03-04 13:09:47.059	🦥
spotify:track:0evOmsnfWAqsGJlSTICgz7	1	Rockstar Everyday	2025-03-04 13:15:36.779	🦥
spotify:track:6lKSOnC9iLGDonypMgvGrm	1	Too Much	2025-03-04 13:44:41.698	🦥
spotify:track:5Vwkt7zvEcj5riL46ZbM5K	1	touchin’ me	2025-03-05 18:44:18.91	🦥
spotify:track:0gc3meo5sZtNnv19oI0vRM	1	Pretty Boy	2025-03-05 18:48:26.091	🦥
spotify:track:6n9e5YQaVZVwjGVwkeiVP0	1	DIRTY LITTLE FANTASY	2025-03-05 18:56:02.94	🦥
spotify:track:0ECuf4vH9v4rPohsCKfW3y	1	Light It Up	2025-03-05 18:59:46.088	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-03-07 16:59:22.569	🦥
spotify:track:7qXikOoj2QEA7GzrT6XLqk	1	Aphrodite	2025-03-07 17:12:13.711	🦥
spotify:track:3eXvEnScqqWgTn4KavVwAS	1	Die Hard	2025-03-07 17:54:54.164	🦥
spotify:track:3eXvEnScqqWgTn4KavVwAS	-1	Die Hard	2025-03-07 17:54:56.253	🦥
spotify:track:5mJzj4pBbmQbUVyxyEdBD3	1	GRINDING MY TEETH	2025-03-07 17:54:58.518	🦥
spotify:track:5mJzj4pBbmQbUVyxyEdBD3	1	GRINDING MY TEETH	2025-03-07 20:31:29.546	🦥
spotify:track:52X12F5DESfemhJtbpjGfo	1	Finders Keepers	2025-03-07 20:44:29.636	🦥
spotify:track:7c5pqirWTfIUQqoRlLYy9G	1	Horizon	2025-03-08 18:41:24.566	🦥
spotify:track:2Z2HCTkpjlD0h42bXmXrCb	1	CLOSE ENOUGH	2025-03-11 01:50:03.392	🦥
spotify:track:6ITGgQABtRjbBq3AEBXc4o	1	Victim	2025-03-11 01:52:43.23	🦥
spotify:track:6Lto2Xj8y0U2bes2hmRMZu	1	Wonderful Nothing	2025-03-12 12:37:38.116	🦥
spotify:track:0yTJtxZJ5VLfBEHhiNUNeY	1	Silvertongue	2025-03-12 12:40:54.664	🦥
spotify:track:6ekWVvw642aQsT3AfnCiTz	1	Sloppy Seconds	2025-03-13 12:22:55.875	🦥
spotify:track:6ekWVvw642aQsT3AfnCiTz	1	Sloppy Seconds	2025-03-13 12:24:28.89	🦥
spotify:track:5mCprFWOqe0jB96v9RhLBo	1	Tongues	2025-03-13 12:47:04.322	🦥
spotify:track:2xOxPjmkNNyoQ0MFZF2BG0	1	Taken By The Storm	2025-03-13 13:09:12.637	🦥
spotify:track:4LyqcBID3VprlOZhYsB5nW	1	DANCE	2025-03-13 14:39:18.418	🦥
spotify:track:4wAQSi076CxYXc0y37IRRH	1	Smalltown Boy	2025-03-15 00:11:19.863	🦥
spotify:track:4wAQSi076CxYXc0y37IRRH	1	Smalltown Boy	2025-03-15 00:11:31.074	🦥
spotify:track:7x7ogeVnY3m7PHYBURmBaG	1	$2 Dollar Hot Dog $1 Dollar Water (feat. Erica Barr & Kyhil Smith)	2025-03-15 00:36:42.502	🦀
spotify:track:7x7ogeVnY3m7PHYBURmBaG	1	$2 Dollar Hot Dog $1 Dollar Water (feat. Erica Barr & Kyhil Smith)	2025-03-15 00:36:49.075	🎉
spotify:track:2lw9wHdbM4EVDf3Ev5Q5nS	1	Who Set the World on Fire	2025-03-17 21:44:38.265	🦥
spotify:track:3ug5IXh3CC4keJp0zNEWrq	1	Erased	2025-03-17 21:48:02.157	🦥
spotify:track:2xOxPjmkNNyoQ0MFZF2BG0	1	Taken By The Storm	2025-03-17 22:24:06.643	🦥
spotify:track:5N0lmKQfQpXNQNjUGlPKIT	1	Hell's Comin' with Me	2025-03-21 11:23:22.74	🦥
spotify:track:75NpiadMk9sKKtGdlfuztV	1	Red Flags (feat. Montaigne)	2025-03-21 12:34:11.969	🦥
spotify:track:75NpiadMk9sKKtGdlfuztV	1	Red Flags (feat. Montaigne)	2025-03-21 12:34:13.097	🦀
spotify:track:0EPpFxnqoMx6fJInF3OxlI	1	Perception Check	2025-03-21 12:53:14.835	🦥
spotify:track:0EPpFxnqoMx6fJInF3OxlI	1	Perception Check	2025-03-21 12:53:18.202	🦀
spotify:track:0EPpFxnqoMx6fJInF3OxlI	1	Perception Check	2025-03-21 12:57:16.384	🦥
spotify:track:6AjiC6ZSglAeusQABB6LTj	1	T-Rex (from the Netflix Film "Nimona")	2025-03-21 13:12:34.843	🦥
spotify:track:6lKRMylSZMtA7EqPl0pcdI	1	Are You Satisfied?	2025-03-21 13:18:16.447	🦥
spotify:track:0yNZ63pUbmxX0xYzZEQr2j	1	H.Y.C.Y.BH	2025-03-21 13:30:24.99	🦥
spotify:track:0yNZ63pUbmxX0xYzZEQr2j	1	H.Y.C.Y.BH	2025-03-21 13:30:25.917	🦀
spotify:track:4pZos1A9cAsvHx5kj1O38W	1	Give and Take	2025-03-22 10:12:28.526	🦥
spotify:track:0Ugvi8H89YmbBkSOx9VgUj	1	Business Man	2025-03-22 10:15:53.327	🦥
spotify:track:31DgMBxP3WoXRzTmPN0wbf	1	Don't Touch My Clogs	2025-03-22 10:50:13.017	🦥
spotify:track:5aIZ0C0OE0KeWx35GeZEUW	1	The Ballad of Smokin' Joe Rudeboy	2025-03-22 11:15:08.163	🦥
spotify:track:0yNZ63pUbmxX0xYzZEQr2j	1	H.Y.C.Y.BH	2025-03-22 11:51:33.514	🦥
spotify:track:5bpm7A7kKdiFXFrhUtdg4p	1	Your Love is Not Enough (I'd Like Some Cool Shit Too)	2025-03-22 12:04:08.573	🦥
spotify:track:0ShCfTzqb8TfcMgTBA4KgZ	1	Dim Sum Paradise	2025-03-24 10:53:21.275	🦥
spotify:track:1xlPeQm5LICSUONSh6atX0	1	Half Horse Half Man	2025-03-24 10:55:54.187	🦥
spotify:track:3RoR0pbP2lE2NUnRHp2edM	1	TikTok Baby!	2025-03-24 10:58:21.377	🦥
spotify:track:2IjI7NNqdViahUDqdxwn1U	1	Rule #4 - Fish in a Birdcage	2025-03-24 11:12:17.643	🦥
spotify:track:5mUL6MFJwS51t8GKle0jDu	1	Bones	2025-03-24 11:25:42.981	🦥
spotify:track:3GJ5D2TaDJNVBFYysoaLdN	1	Bowsette	2025-03-24 11:29:02.752	🦥
spotify:track:4pZos1A9cAsvHx5kj1O38W	1	Give and Take	2025-03-24 11:53:13.383	🦥
spotify:track:6E3TudlZucyt2fxE8Ljgw6	1	Count to Three	2025-03-24 13:24:08.929	🦥
spotify:track:1O3RcayIzF1Ng6H9XMGwNq	1	Friend Like Me - Electro Swing Mix	2025-03-24 13:37:38.624	🦥
spotify:track:3OUaTEgKLHVIb0ZMavyPY7	1	Hey I Don't Work Here	2025-03-24 13:56:42.33	🦥
spotify:track:3OUaTEgKLHVIb0ZMavyPY7	1	Hey I Don't Work Here	2025-03-24 13:58:14.394	🦥
spotify:track:3LJd0SB6Og2ojzZmGH5QAU	1	The Eye Color Ballad	2025-03-24 14:21:53.052	🦥
spotify:track:4s3jgcIRtJzQMTl6i4uW80	1	Rule #23 - Birds of a Feather	2025-03-24 14:31:07.609	🦥
spotify:track:1VzKIvO5hxCxTpVLvxvrHs	1	Naughty or Nice	2025-03-24 14:34:26.062	🦥
spotify:track:5HVFgqPHB4U1762ERqKi44	1	I Own a Car	2025-03-24 14:39:46.633	🦥
spotify:track:2IjI7NNqdViahUDqdxwn1U	1	Rule #4 - Fish in a Birdcage	2025-03-24 15:01:01.853	🦥
spotify:track:2IjI7NNqdViahUDqdxwn1U	1	Rule #4 - Fish in a Birdcage	2025-03-24 15:55:12.499	🦥
spotify:track:1HofzKrXndo0toFaZnOOTu	1	Let's Save the Earth	2025-03-24 16:09:00.949	🦥
spotify:track:0G1xBL0Lbez79gxZ9h0G2p	1	You're Not Welcome	2025-03-24 16:13:32.871	🦥
spotify:track:75NpiadMk9sKKtGdlfuztV	1	Red Flags (feat. Montaigne)	2025-03-24 16:19:49.62	🦥
spotify:track:5N0lmKQfQpXNQNjUGlPKIT	1	Hell's Comin' with Me	2025-03-24 17:02:57.998	🦥
spotify:track:6ybRWbM4jdku0Pk8SzjORB	1	Skal	2025-03-24 17:08:33.409	🦥
spotify:track:55BUd2feeBMNek0NwXEYT7	1	Fall Away	2025-03-24 21:09:43.647	🦥
spotify:track:2Z2HCTkpjlD0h42bXmXrCb	1	CLOSE ENOUGH	2025-03-25 09:48:51.433	🦥
spotify:track:6ekWVvw642aQsT3AfnCiTz	1	Sloppy Seconds	2025-03-25 10:05:32.72	🦥
spotify:track:0ShCfTzqb8TfcMgTBA4KgZ	1	Dim Sum Paradise	2025-03-25 15:16:35.797	🦥
spotify:track:5N0lmKQfQpXNQNjUGlPKIT	1	Hell's Comin' with Me	2025-03-25 20:20:03.818	🦥
spotify:track:6lKRMylSZMtA7EqPl0pcdI	1	Are You Satisfied?	2025-03-28 13:21:19.649	🦥
spotify:track:6qCsKKS7Ol63SJW3LOIX5R	1	Plastic Hearts	2025-03-28 15:50:36.731	🦥
spotify:track:5A5bLKdL5I3k3FTEQlAUw7	1	Following the Sun	2025-03-28 16:34:12.541	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2025-03-28 17:19:02.072	🦥
spotify:track:0MVflYwPIchxoyb2WCaRyF	1	FUCK UP MY MAKE UP	2025-03-28 18:46:52.484	🦥
spotify:track:1bvh7jWjFw6QIYH7gzBfPE	1	ALL I WANTED WAS U	2025-03-28 19:12:08.144	🦥
spotify:track:0Njbfdqov90zIfAXZl7hIf	1	HUSH	2025-03-28 19:52:01.368	🦥
spotify:track:3So693gGay7XYvU3oTaoVm	1	GLOW	2025-03-28 20:00:40.735	🦥
spotify:track:5aR8Jyc1w7Ue707CIy66cz	1	The Joke Is On Me	2025-03-28 20:28:52.736	🦥
spotify:track:2GWCZJWundoYi5IloWIgTX	1	eyes don't lie	2025-03-28 20:34:00.285	🦥
spotify:track:54raQ1qeuAqfsQ3A5k7L8A	1	Problematic	2025-03-28 20:39:07.56	🦥
spotify:track:78RIER8V6EhrqVPOBi2GYa	1	Here Comes the Rain Again - Remastered Version	2025-03-28 22:41:31.27	🦥
spotify:track:0EPpFxnqoMx6fJInF3OxlI	1	Perception Check	2025-03-28 22:55:33.743	🦥
spotify:track:2IjI7NNqdViahUDqdxwn1U	1	Rule #4 - Fish in a Birdcage	2025-03-29 19:32:49.909	🦥
spotify:track:5E30LdtzQTGqRvNd7l6kG5	1	Daddy Issues	2025-03-29 19:47:14.769	🦥
spotify:track:0Njbfdqov90zIfAXZl7hIf	1	HUSH	2025-03-30 18:04:04.8	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-03-30 18:25:07.248	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-03-30 18:25:09.563	🦥
spotify:track:6kOdk29M8h6ZfHz4byVG0t	1	PRETTY PLEASE	2025-03-30 18:38:36.906	🦥
spotify:track:0vbLjUo57fw0YFJB43TjBX	1	Who You Were	2025-03-30 21:24:29.708	🦥
spotify:track:4yGTNAnhlbSxrVdTC7fYIS	1	PRETTY WHEN U CRY	2025-03-30 22:00:13.498	🦥
spotify:track:7ByDxFf6Xy7xPFAYafsLxI	1	engravings	2025-03-31 11:08:10.729	🦥
spotify:track:4MTPjzLzoi4HiR5fRAQ2Hx	1	I Really F**ked It Up	2025-03-31 12:12:39.297	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-03-31 14:42:27.042	🦥
spotify:track:4yGTNAnhlbSxrVdTC7fYIS	1	PRETTY WHEN U CRY	2025-03-31 15:02:21.465	🦥
spotify:track:5fJKruTP0DiAFBDesEBR3C	1	From Paris to Berlin (Chrit Leaf Remix)	2025-03-31 15:17:07.049	🦥
spotify:track:2Msuiqt9sZojSKLVZcJp1l	1	Chop Chop Slide	2025-03-31 15:53:08.608	🦥
spotify:track:3SKzTIl9mW0DadTys9SFo3	1	Control	2025-03-31 16:20:01.282	🦥
spotify:track:1dt220OBbkTsYz1NLVKIaw	1	Call Me (with R3HAB & Timmy Trumpet)	2025-03-31 16:22:50.449	🦥
spotify:track:7mdZVXoHtXlf329VPo2s0l	1	Dance 'Til You Stop	2025-03-31 22:00:46.872	🦥
spotify:track:5J8FkaBZb8gWpzPWjD33GP	1	Monica - Demo	2025-04-02 22:57:42.096	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2025-04-02 23:46:47.197	🦥
spotify:track:4qP9K48aEcG50hSgmIQVi3	1	Cold As Ice	2025-04-03 16:03:17.433	🦥
spotify:track:2w2lfwoTELQyN940qM7Nfd	1	Dangerous (feat. Sam Martin)	2025-04-03 20:43:09.382	🦥
spotify:track:5VEkFlaS12TsOdeofJGPVP	1	Lie For Me	2025-04-03 22:19:10.141	🦥
spotify:track:4ixpcIQTt7EE1EAqotGZGb	1	Right Now (Remix)	2025-04-05 11:35:08.137	🦥
spotify:track:3ilFtzVTwXQ7n1EpKiZBLr	1	Don't Talk to Me	2025-04-05 11:35:15.714	🦥
spotify:track:7CH8J4ulT49UfZwSDSkSZA	1	i miss u (with Au/Ra)	2025-04-05 20:22:46.328	🦥
spotify:track:4kkeuVl6gF3RMqE4Nn5W3E	1	E.T.	2025-04-05 21:03:30.41	🦥
spotify:track:3iaELj7fOCqIPTl7UpcXX2	1	Bright Lights	2025-04-05 22:24:11.093	🦥
spotify:track:2VOomzT6VavJOGBeySqaMc	1	Disturbia	2025-04-05 22:32:01.043	🦥
spotify:track:4XNrMwGx1SqP01sqkGTDmo	1	One More Night	2025-04-05 22:39:59.072	🦥
spotify:track:2LHNTC9QZxsL3nWpt8iaSR	1	Abracadabra	2025-04-05 23:36:02.064	🦥
spotify:track:0LVdV9NG0y0ROxbYLpjbKc	1	Scatterbrain	2025-04-06 14:21:21.086	🦥
spotify:track:5UebR77vjap8LVd6eqITiY	1	That Girl	2025-04-06 14:39:01.943	🦥
spotify:track:52X12F5DESfemhJtbpjGfo	1	Finders Keepers	2025-04-06 14:43:41.01	🦥
spotify:track:5J8FkaBZb8gWpzPWjD33GP	1	Monica - Demo	2025-04-06 22:15:12.087	🦥
spotify:track:5aR8Jyc1w7Ue707CIy66cz	1	The Joke Is On Me	2025-04-06 22:29:51.499	🦥
spotify:track:5Hp4xFihdOE2dmDzxWcBFb	1	All By Myself	2025-04-07 13:07:20.471	🦥
spotify:track:3lhmj5XfT5poIR5ozhiDmH	1	Emily	2025-04-07 13:25:01.144	🧑‍🎄
spotify:track:3lhmj5XfT5poIR5ozhiDmH	1	Emily	2025-04-07 13:25:02.811	🦥
spotify:track:3lhmj5XfT5poIR5ozhiDmH	1	Emily	2025-04-07 13:25:04.555	🧑‍🎄
spotify:track:3lhmj5XfT5poIR5ozhiDmH	-1	Emily	2025-04-07 13:25:07.802	🧑‍🎄
spotify:track:3lhmj5XfT5poIR5ozhiDmH	-1	Emily	2025-04-07 13:25:09.636	🧑‍🎄
spotify:track:5b2aMqcSeAMlDptX6EjE7m	1	Lucky Strike	2025-04-07 13:40:52.215	🦥
spotify:track:6kOdk29M8h6ZfHz4byVG0t	1	PRETTY PLEASE	2025-04-08 12:28:54.632	🦥
spotify:track:5fZlbHpe7bOU0MG2DHM0tB	1	99% ANGEL	2025-04-08 12:53:30.364	🦥
spotify:track:4f0pJ7NNHAsrWbQBwiHMRJ	1	Hooked	2025-04-08 12:56:19.9	🦥
spotify:track:0IrKiuLgqn0OKgpc946yWG	1	MF Diamond	2025-04-08 12:57:11.262	🦥
spotify:track:14LdhxElpZS0rKVV4nxtdA	1	Queen of Kings	2025-04-08 14:08:07.957	🦥
spotify:track:6RksBSj5fFtPkUnL2EE0oe	1	Darkness Settles In	2025-04-08 20:50:45.671	🦥
spotify:track:5fZlbHpe7bOU0MG2DHM0tB	1	99% ANGEL	2025-04-08 21:05:23.601	🦥
spotify:track:1xlPeQm5LICSUONSh6atX0	1	Half Horse Half Man	2025-04-09 13:13:07.756	🦥
spotify:track:3So693gGay7XYvU3oTaoVm	1	GLOW	2025-04-09 13:16:00.33	🦥
spotify:track:5HpBS56LLsqrDRxOyTOSfk	1	Go F*ck Myself (GFM)	2025-04-09 15:53:13.679	🦥
spotify:track:4VY6SsgA05tDXC3jAkAE1h	1	SICK PRETTY MIND (SIDE B)	2025-04-09 15:55:18.204	🦥
spotify:track:3qK48XK8WSH562jvp4vabM	1	Deserve Each Other	2025-04-09 15:57:39.317	🔥
spotify:track:3qK48XK8WSH562jvp4vabM	1	Deserve Each Other	2025-04-09 15:57:39.966	🦥
spotify:track:3qK48XK8WSH562jvp4vabM	-1	Deserve Each Other	2025-04-09 15:57:45.046	🔥
spotify:track:78RIER8V6EhrqVPOBi2GYa	1	Here Comes the Rain Again - Remastered Version	2025-04-09 16:08:25.578	🦥
spotify:track:7mdZVXoHtXlf329VPo2s0l	1	Dance 'Til You Stop	2025-04-09 16:21:16.544	🔥
spotify:track:7mdZVXoHtXlf329VPo2s0l	1	Dance 'Til You Stop	2025-04-09 16:21:16.711	🦥
spotify:track:7mdZVXoHtXlf329VPo2s0l	-1	Dance 'Til You Stop	2025-04-09 16:21:20.195	🔥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2025-04-09 20:34:04.898	🦥
spotify:track:0BuHt4GZ9uqDtPxUsYfEsy	1	Mother Teresa	2025-04-11 21:03:26.315	🦥
spotify:track:4AGbGF8JPcaH43eCMuANXG	1	She Keeps Me Up	2025-04-13 14:28:42.305	🦥
spotify:track:6PwjJ58I4t7Mae9xfZ9l9v	1	Somebody Told Me	2025-04-13 14:37:13.354	🦥
spotify:track:6s3GEN8wK0OMzzzZbXj0fu	1	Hymn for the Weekend - Seeb Remix	2025-04-13 15:12:11.015	🦥
spotify:track:6nek1Nin9q48AVZcWs9e9D	1	Paradise	2025-04-13 17:38:21.057	🦥
spotify:track:7Feaw9WAEREY0DUOSXJLOM	1	Summer Days (feat. Macklemore & Patrick Stump of Fall Out Boy)	2025-04-13 18:33:39.862	🦥
spotify:track:6E0dc82Da4W5QWXR8ktoGT	1	Call On Me - Radio Edit	2025-04-13 23:16:08.525	🦥
spotify:track:6lKSOnC9iLGDonypMgvGrm	1	Too Much	2025-04-14 00:03:06.42	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-04-14 00:17:33.359	🦥
spotify:track:7qhPd5HqLrCVpCWvpy8Hrh	1	Gravity	2025-04-14 11:33:07.088	🦥
spotify:track:4FGkZslqmsI0JQuvpkJ8I5	1	5 feet away	2025-04-14 14:42:58.582	🦥
spotify:track:2cc8Sw1OnCuA5bV8nqWqpE	1	You	2025-04-16 12:46:00.127	🦥
spotify:track:3RrJTOClOgMAc9FQ7QDwv7	1	Undercover	2025-04-16 13:14:35.198	🦥
spotify:track:0Bo5fjMtTfCD8vHGebivqc	1	Axel F	2025-04-16 13:25:16.174	🦀
spotify:track:0mBP9X2gPCuapvpZ7TGDk3	1	Left and Right (Feat. Jung Kook of BTS)	2025-04-16 13:41:32.447	🦥
spotify:track:6HMtHNpW6YPi1hrw9tgF8P	1	About Damn Time	2025-04-16 13:44:13.826	🦥
spotify:track:7usVlcXSkQu4MBKI02oIJR	1	Nfl Main Theme	2025-04-16 13:46:34.211	🦥
spotify:track:7usVlcXSkQu4MBKI02oIJR	1	Nfl Main Theme	2025-04-16 13:46:35.475	🦀
spotify:track:66hayvUbTotekKU3H4ta1f	1	Where Are Ü Now (with Justin Bieber)	2025-04-16 13:52:25.171	🦥
spotify:track:1fE1nxRZtVKTdJMUYf7EOL	1	Heist	2025-04-16 14:11:57.848	🦥
spotify:track:1ti7FlOjQV7ZmgMjN1M4Oc	1	Walk Hard	2025-04-16 14:39:50.918	🦥
spotify:track:2HSmyk2qMN8WQjuGhaQgCk	1	Champagne Poetry	2025-04-16 14:46:35.392	🦥
spotify:track:2HSmyk2qMN8WQjuGhaQgCk	1	Champagne Poetry	2025-04-16 14:48:47.475	🦥
spotify:track:2dLv6YwZtcmoHKbeBHyAYH	1	iloveyou	2025-04-16 14:55:21.007	🦥
spotify:track:0ECuf4vH9v4rPohsCKfW3y	1	Light It Up	2025-04-17 14:36:48.642	🦥
spotify:track:6Qigf5GYjqg2LjrCxEeuLH	1	FMLYLM	2025-04-17 14:39:37.341	🦥
spotify:track:0vf2eBw2inhl8y61cYQMv2	1	Devil Town	2025-04-17 18:09:40.703	🔥
spotify:track:0vf2eBw2inhl8y61cYQMv2	1	Devil Town	2025-04-17 18:09:40.95	🦥
spotify:track:3YjH3TIf5SOpFlnqlRdNAE	1	Savages	2025-04-17 20:48:35.519	🦥
spotify:track:5cF0dROlMOK5uNZtivgu50	1	Attention	2025-04-17 21:10:32.288	🐺
spotify:track:0mBP9X2gPCuapvpZ7TGDk3	1	Left and Right (Feat. Jung Kook of BTS)	2025-04-18 14:30:08.369	🦥
spotify:track:1ti7FlOjQV7ZmgMjN1M4Oc	1	Walk Hard	2025-04-18 14:33:55.184	🦥
spotify:track:73ljrkSg4A0q3ByU0Cu7mw	1	We Like To Party! (The Vengabus)	2025-04-18 23:30:14.259	🦥
spotify:track:73ljrkSg4A0q3ByU0Cu7mw	1	We Like To Party! (The Vengabus)	2025-04-18 23:30:15.115	🦀
spotify:track:6qyS9qBy0mEk3qYaH8mPss	1	Murder In My Mind	2025-04-18 23:37:56.044	🦥
spotify:track:1pxQYcle6tZVsFk0gqh5Zp	1	pray t0 god	2025-04-19 14:45:52.375	🦥
spotify:track:3ug5IXh3CC4keJp0zNEWrq	1	Erased	2025-04-19 15:36:10.237	🦥
spotify:track:5aR8Jyc1w7Ue707CIy66cz	1	The Joke Is On Me	2025-04-19 15:43:04.121	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2025-04-19 15:58:57.234	🦥
spotify:track:7usVlcXSkQu4MBKI02oIJR	1	Nfl Main Theme	2025-04-19 18:25:21.165	🦥
spotify:track:5J8FkaBZb8gWpzPWjD33GP	1	Monica - Demo	2025-04-19 18:41:35.842	🦥
spotify:track:3YjH3TIf5SOpFlnqlRdNAE	1	Savages	2025-04-19 20:01:32.199	🦥
spotify:track:3YjH3TIf5SOpFlnqlRdNAE	1	Savages	2025-04-22 20:04:23.12	🦥
spotify:track:3lhmj5XfT5poIR5ozhiDmH	1	Emily	2025-04-22 20:16:13.028	🦥
spotify:track:03nVbs87Wv4nvL3YZrdy3n	1	LSD	2025-04-23 09:21:10.699	🦥
spotify:track:0MVflYwPIchxoyb2WCaRyF	1	FUCK UP MY MAKE UP	2025-04-23 14:35:55.523	🦥
spotify:track:5fZlbHpe7bOU0MG2DHM0tB	1	99% ANGEL	2025-04-23 15:00:26.592	🦥
spotify:track:2oGdeSXf0cnSPXG8kZiDtB	1	Freak Like Me	2025-04-23 15:03:13.761	🦥
spotify:track:5aR8Jyc1w7Ue707CIy66cz	1	The Joke Is On Me	2025-04-23 21:49:42.341	🦥
spotify:track:5J8FkaBZb8gWpzPWjD33GP	1	Monica - Demo	2025-04-23 21:55:12.284	🦥
spotify:track:0ECuf4vH9v4rPohsCKfW3y	1	Light It Up	2025-04-23 22:18:56.082	🦥
spotify:track:3YjH3TIf5SOpFlnqlRdNAE	1	Savages	2025-04-23 23:07:06.114	🦥
spotify:track:6nStBZGqGgTR87MrBpNza0	1	HEARTBEAT	2025-04-24 00:29:12.445	🦥
spotify:track:5Vwkt7zvEcj5riL46ZbM5K	1	touchin’ me	2025-04-24 00:31:46.742	🦥
spotify:track:34pjQ4XCtI9gX83heBGuw6	1	Watch Me	2025-04-24 00:35:23.739	🦥
spotify:track:5ff77CZZUpY8Gvu5GuA6vb	1	HAUNTED	2025-04-24 00:37:39.437	🦥
spotify:track:37P5Jrv2aoKAiLC9oRcnC1	1	PowerTrip	2025-04-24 01:14:42.991	🦥
spotify:track:5aR8Jyc1w7Ue707CIy66cz	1	The Joke Is On Me	2025-04-24 13:11:03.781	🦥
spotify:track:5ZLUm9eab8y3tqQ1OhQSHI	1	Abracadabra	2025-04-24 22:39:42.311	🦥
spotify:track:0ECuf4vH9v4rPohsCKfW3y	1	Light It Up	2025-04-24 22:53:08.679	🦥
spotify:track:4WdThF14sHbMWyW80vlTFH	1	Breaking Through the Night	2025-04-25 15:15:08.743	🦥
spotify:track:7LB8g3PbCR3BKDKMtsugA9	1	Maestro	2025-04-25 15:33:25.3	🦥
spotify:track:2SHUqzcvpL80CeGz3K3iNd	1	Break The Chains	2025-04-25 15:50:42.922	🦥
spotify:track:6LAlZuA1IhylVnInqNWo2j	1	Can't Choose (feat. Kiara Nelson)	2025-04-25 22:30:24.8	🦥
spotify:track:27yUNsQo2CPPokNw69M23X	1	Shot a friend	2025-04-25 23:11:26.626	🦥
spotify:track:2T0kB6ogvjJAC1CGFbEDRP	1	Doomed	2025-04-26 12:14:41.595	🦥
spotify:track:7LB8g3PbCR3BKDKMtsugA9	1	Maestro	2025-04-26 12:55:16.192	🦥
spotify:track:0JWSMYurMhPmlD5H8VRoTn	1	If You Had My Love	2025-04-26 19:23:15.06	🦥
spotify:track:27cUgjbAjNyI4YuIK01MC3	1	Far Away	2025-04-29 18:52:29.69	🦥
spotify:track:5RLklKzb9QNXdpybSw2bbP	1	You and I	2025-04-29 19:32:25.394	🦥
spotify:track:5wJh12xuEJojhQLUo22gN8	1	SENSITIVE	2025-04-29 21:12:28.336	🦥
spotify:track:6ITGgQABtRjbBq3AEBXc4o	1	Victim	2025-04-29 21:48:04.149	🦥
spotify:track:4HX1f113qsJDmwwGL6QeV7	1	pretty girl I’ll make you famous	2025-04-29 21:50:03.334	🦥
spotify:track:1Cj2vqUwlJVG27gJrun92y	1	The Sound of Silence	2025-04-30 10:30:45.227	🦥
spotify:track:2ISSQPb9LHHiV6ng2NXosL	1	Beautiful Now	2025-04-30 11:02:46.314	🦥
spotify:track:27O55IM5RuVpCPUZDU6UAX	1	That Man He's a Monster	2025-04-30 17:37:10.019	🦥
spotify:track:2qSkIjg1o9h3YT9RAgYN75	1	Espresso	2025-05-01 10:20:13.37	🦥
spotify:track:5wJh12xuEJojhQLUo22gN8	1	SENSITIVE	2025-05-02 00:26:54.111	🦥
spotify:track:37P5Jrv2aoKAiLC9oRcnC1	1	PowerTrip	2025-05-02 01:36:48.758	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-05-02 01:40:33.434	🦥
spotify:track:4WRtXqu9TmvvwZ3bzdcCVQ	1	Thousand Lullabies	2025-05-02 10:53:22.867	🦥
spotify:track:5RLklKzb9QNXdpybSw2bbP	1	You and I	2025-05-02 10:54:01.397	🦥
spotify:track:5wJh12xuEJojhQLUo22gN8	1	SENSITIVE	2025-05-02 11:19:18.41	🦥
spotify:track:0ECuf4vH9v4rPohsCKfW3y	1	Light It Up	2025-05-02 11:26:33.992	🦥
spotify:track:5ff77CZZUpY8Gvu5GuA6vb	1	HAUNTED	2025-05-02 12:57:59.141	🦥
spotify:track:3YjH3TIf5SOpFlnqlRdNAE	1	Savages	2025-05-02 15:04:34.48	🦥
spotify:track:2ISSQPb9LHHiV6ng2NXosL	1	Beautiful Now	2025-05-02 15:08:16.509	🦥
spotify:track:6ITGgQABtRjbBq3AEBXc4o	1	Victim	2025-05-02 15:38:35.476	🦥
spotify:track:37P5Jrv2aoKAiLC9oRcnC1	1	PowerTrip	2025-05-02 15:58:20.041	🦥
spotify:track:77KHZgfInRZq2FJcDOBkKx	1	Not The One	2025-05-02 16:09:40.541	🦥
spotify:track:7LB8g3PbCR3BKDKMtsugA9	1	Maestro	2025-05-02 16:14:06.044	🦥
spotify:track:6qyS9qBy0mEk3qYaH8mPss	1	Murder In My Mind	2025-05-02 16:46:09.761	🦥
spotify:track:39MuEaENKIWaayDVYSVpjX	1	Fake	2025-05-02 19:17:34.912	🦥
spotify:track:1pxQYcle6tZVsFk0gqh5Zp	1	pray t0 god	2025-05-02 22:38:42.424	🦥
spotify:track:0Njbfdqov90zIfAXZl7hIf	1	HUSH	2025-05-02 23:45:18.385	🦥
spotify:track:25vG6krgfp2FQGNXzP4ZFV	1	Take A Step Back	2025-05-02 23:56:51.665	🦥
spotify:track:1oharO6dFvRmHKI2o65GBe	1	Tears on the Dance Floor	2025-05-03 19:25:42.214	🦥
spotify:track:4yGTNAnhlbSxrVdTC7fYIS	1	PRETTY WHEN U CRY	2025-05-04 15:10:55.989	🦥
spotify:track:31rLeplcJIGfbvUBpPa9f7	1	MUSTANG BABY (FT. ARTEMAS)	2025-05-04 15:42:21.49	🦥
spotify:track:0YlKym9x7HYSmPIWJIWHbz	1	Behind The Scenes	2025-05-04 17:51:31.962	🦥
spotify:track:5wJh12xuEJojhQLUo22gN8	1	SENSITIVE	2025-05-04 18:52:31.408	🦥
spotify:track:6ITGgQABtRjbBq3AEBXc4o	1	Victim	2025-05-04 19:24:52.066	🦥
spotify:track:7Feaw9WAEREY0DUOSXJLOM	1	Summer Days (feat. Macklemore & Patrick Stump of Fall Out Boy)	2025-05-04 19:31:04.051	🦥
spotify:track:4WHGwyIMlHJeJggdfKb6XF	1	The Things I Do For Love	2025-05-04 19:48:15.391	🦥
spotify:track:5aR8Jyc1w7Ue707CIy66cz	1	The Joke Is On Me	2025-05-05 11:50:01.345	🦥
spotify:track:4WdThF14sHbMWyW80vlTFH	1	Breaking Through the Night	2025-05-05 12:42:27.455	🦥
spotify:track:1CqCRJWVc0cODGMvlXDRgt	1	Going Rogue	2025-05-05 14:06:15.522	🦥
spotify:track:6qyS9qBy0mEk3qYaH8mPss	1	Murder In My Mind	2025-05-05 15:07:01.296	🦥
spotify:track:5ZkLd4MeukzNB1atzN1ViW	1	DOCTOR	2025-05-05 15:16:47.993	🦥
spotify:track:6nek1Nin9q48AVZcWs9e9D	1	Paradise	2025-05-05 16:32:19.625	🦥
spotify:track:4lSYy0lrCVeP5xLdKSzVTn	1	Fairy Bites	2025-05-05 17:17:56.77	🦥
spotify:track:3qkKAfqOn7laGPeVicY1bX	1	Masterpiece	2025-05-05 17:26:19.36	🦥
spotify:track:5ZLUm9eab8y3tqQ1OhQSHI	1	Abracadabra	2025-05-05 17:39:16.264	🦥
spotify:track:5kbpMhCWUdvGTsRS5vKtJa	1	favorite sin	2025-05-05 18:15:32.868	🦥
spotify:track:4VY6SsgA05tDXC3jAkAE1h	1	SICK PRETTY MIND (SIDE B)	2025-05-05 19:17:52.969	🦥
spotify:track:1baqAtYnkpNzHAYwqibv0x	1	SIREN	2025-05-05 20:00:30.986	🦥
spotify:track:5kbpMhCWUdvGTsRS5vKtJa	1	favorite sin	2025-05-07 01:08:16.084	🦥
spotify:track:4yGTNAnhlbSxrVdTC7fYIS	1	PRETTY WHEN U CRY	2025-05-07 01:09:42.098	🦥
spotify:track:0MVflYwPIchxoyb2WCaRyF	1	FUCK UP MY MAKE UP	2025-05-07 01:18:30.645	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-05-07 01:21:41.416	🦥
spotify:track:2SRHNn97rMNVYdtmH1gmd5	1	SIREN	2025-05-07 01:32:35.432	🦥
spotify:track:5u9IdOmx9QdooGe8wO27zr	1	Better Kind Of Best Friend	2025-05-07 01:37:29.312	🦥
spotify:track:26KHB75CMVWUh1q7v9KLPt	1	EAT ME (alive)	2025-05-07 01:39:50.248	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2025-05-07 01:43:01.026	🦥
spotify:track:5ff77CZZUpY8Gvu5GuA6vb	1	HAUNTED	2025-05-07 01:43:17.824	🦥
spotify:track:2xOxPjmkNNyoQ0MFZF2BG0	1	Taken By The Storm	2025-05-07 01:43:39.98	🦥
spotify:track:0BuHt4GZ9uqDtPxUsYfEsy	1	Mother Teresa	2025-05-07 01:43:46.652	🦥
spotify:track:7LO8X20v1ecmGGOtn3KPLX	1	Slow Nights	2025-05-07 01:43:57.838	🦥
spotify:track:63bWXWGcWnRQvdS8bJWdkB	1	Love Again (feat. Alida)	2025-05-07 01:45:05.903	🦥
spotify:track:7kfOEMJBJwdCYqyJeEnNhr	1	Moth To A Flame (with The Weeknd)	2025-05-07 01:45:16.671	🦥
spotify:track:7jQkiAaa4XYYsPH3rcfcWo	1	Praise The Lord (Da Shine) (feat. Skepta) - Durdenhauer Edit	2025-05-07 01:46:00.761	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-05-07 15:06:39.773	🦥
spotify:track:37P5Jrv2aoKAiLC9oRcnC1	1	PowerTrip	2025-05-07 15:15:59.26	🦥
spotify:track:2ISSQPb9LHHiV6ng2NXosL	1	Beautiful Now	2025-05-07 15:27:59.241	🦥
spotify:track:6nStBZGqGgTR87MrBpNza0	1	HEARTBEAT	2025-05-07 15:41:17.63	🦥
spotify:track:5wJh12xuEJojhQLUo22gN8	1	SENSITIVE	2025-05-07 16:02:51.491	🦥
spotify:track:4wAQSi076CxYXc0y37IRRH	1	Smalltown Boy	2025-05-07 16:13:43.309	🦥
spotify:track:4VY6SsgA05tDXC3jAkAE1h	1	SICK PRETTY MIND (SIDE B)	2025-05-07 16:47:50.244	🦥
spotify:track:4IyrCFU0VeashNaFySWyQm	1	Can I Get It Back (R3HAB Remix)	2025-05-08 15:46:40.732	🦥
spotify:track:30YEJPZ7jPPzKIT7hxHcFO	1	Boo Hoo	2025-05-08 16:28:11.321	🦥
spotify:track:5R8UCyOosnFz00nwrY5v38	1	jeLLiefish aPocaLypsE	2025-05-08 16:32:55.486	🦥
spotify:track:4ssqA7CeDI5XmEh4Yez5H5	1	Sirens (feat. Sophie Powers)	2025-05-08 16:36:51.235	🦥
spotify:track:7r2cCbhAbGUE4Izor1ZnlZ	1	K.O.	2025-05-08 21:45:13.956	🦥
spotify:track:2rdQg8QDTrW5p147vUwSDx	1	My Soul Is Your Soul	2025-05-08 22:22:59.56	🦥
spotify:track:5wJh12xuEJojhQLUo22gN8	1	SENSITIVE	2025-05-09 10:41:33.17	🦥
spotify:track:6sg7Jm1go2WyhzwwvasQzm	1	Ghosts & Monsters	2025-05-09 17:25:28.605	🦥
spotify:track:2EZbh6qrqdrsF41mbryyfQ	1	PULL UP	2025-05-10 20:39:41.875	🦥
spotify:track:7jN3Es9lQNwu2q1ELxNzBq	1	High Frequency	2025-05-11 13:32:55.297	🦥
spotify:track:0oWN1xuaWUrx8QGiYqxAs9	1	Monster	2025-05-11 13:47:37.553	🦥
spotify:track:1GL7vwDnPqCnJ2xGNxNLwG	1	These Nights	2025-05-11 14:13:06.608	🦥
spotify:track:3deRcubbfOBaLsjLqYsmLw	1	Saturday Night (Feel The Groove)	2025-05-11 14:34:50.956	🦥
spotify:track:0b788D4vIizpW6zWGN3vhU	1	365	2025-05-11 14:50:09.094	🦥
spotify:track:7vzoNK8tbNmmKjDCNGTmkp	1	Tears of Gold - Owen Norton Remix	2025-05-11 15:21:49.545	🦥
spotify:track:7rsshaWm3DzHAkVoTbycMf	1	LOVE AT FiRST BiTE	2025-05-12 15:55:52.42	🦥
spotify:track:2twVV6vVNyZg5VzJsT1TRs	1	Parasite	2025-05-12 16:37:56.31	🦥
spotify:track:7Gyh5oAKk4oTCNDAAXWnhu	1	HARD TO LOVE	2025-05-13 03:26:11.033	🦥
spotify:track:65ocdKTGjti9ea5nNqaq4v	1	Crazy Woman	2025-05-13 16:48:49.98	🦥
spotify:track:6oUDBxYv8765dlSi4oHznt	1	marionette	2025-05-14 09:06:44.348	🦥
spotify:track:1QFKUbR7dxmTzOo47wYBqz	1	Blood Enemy	2025-05-14 12:20:27.913	🦥
spotify:track:5COLdhTO5dH3CD0CZS0Fap	1	Good Guy	2025-05-14 12:24:48.907	🦥
spotify:track:2t3C1vHyAGRtW5gwJDKCTb	1	Poltergeist	2025-05-14 12:36:43.333	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-05-14 12:41:45.896	🦥
spotify:track:07eL4YdwV8u2NcY5ADrV5r	1	Nervous	2025-05-14 13:00:15.479	🦥
spotify:track:4LjhbayfowLomcgOoX7oMe	1	Don't Save Me	2025-05-14 13:32:41.374	🦥
spotify:track:4qP9K48aEcG50hSgmIQVi3	1	Cold As Ice	2025-05-14 13:42:18.093	🦥
spotify:track:5Ev5bb32kDL4Bdb2deG0G6	1	Gorgeous Gorgeous Girls	2025-05-14 14:08:40.357	🦥
spotify:track:2t3C1vHyAGRtW5gwJDKCTb	1	Poltergeist	2025-05-14 14:11:48.228	🦥
spotify:track:7JQMw0ElNa32RFE55dlkMr	1	Wonderland	2025-05-14 14:14:43.079	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-05-14 14:16:23.817	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-05-14 14:17:06.597	🦥
spotify:track:30YEJPZ7jPPzKIT7hxHcFO	1	Boo Hoo	2025-05-14 19:00:15.525	🦥
spotify:track:2rdQg8QDTrW5p147vUwSDx	1	My Soul Is Your Soul	2025-05-14 19:11:12.561	🦥
spotify:track:7Gyh5oAKk4oTCNDAAXWnhu	1	HARD TO LOVE	2025-05-14 19:30:16.146	🦥
spotify:track:5COLdhTO5dH3CD0CZS0Fap	1	Good Guy	2025-05-14 19:46:08.37	🦥
spotify:track:2t3C1vHyAGRtW5gwJDKCTb	1	Poltergeist	2025-05-14 19:48:18.375	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-05-14 19:51:54.319	🦥
spotify:track:4LjhbayfowLomcgOoX7oMe	1	Don't Save Me	2025-05-14 19:59:14.322	🦥
spotify:track:5Ev5bb32kDL4Bdb2deG0G6	1	Gorgeous Gorgeous Girls	2025-05-14 20:07:06.212	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-05-15 10:51:45.211	🦥
spotify:track:3YjH3TIf5SOpFlnqlRdNAE	1	Savages	2025-05-16 12:20:29.582	🦥
spotify:track:7Gyh5oAKk4oTCNDAAXWnhu	1	HARD TO LOVE	2025-05-16 13:22:32.638	🦥
spotify:track:3YjH3TIf5SOpFlnqlRdNAE	1	Savages	2025-05-16 14:55:15.159	🦥
spotify:track:1BtWLbAxVg1xAIgIPM86k7	1	Parasite	2025-05-16 15:40:21.312	🦥
spotify:track:2t3C1vHyAGRtW5gwJDKCTb	1	Poltergeist	2025-05-16 21:21:53.724	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-05-16 21:25:27.695	🦥
spotify:track:55BUd2feeBMNek0NwXEYT7	1	Fall Away	2025-05-16 22:25:31.541	🦥
spotify:track:5COLdhTO5dH3CD0CZS0Fap	1	Good Guy	2025-05-16 23:16:32.662	🦥
spotify:track:7ByDxFf6Xy7xPFAYafsLxI	1	engravings	2025-05-16 23:32:22.156	🦥
spotify:track:5J8FkaBZb8gWpzPWjD33GP	1	Monica - Demo	2025-05-16 23:38:03.079	🦥
spotify:track:3YjH3TIf5SOpFlnqlRdNAE	1	Savages	2025-05-16 23:48:28.433	🦥
spotify:track:6nek1Nin9q48AVZcWs9e9D	1	Paradise	2025-05-17 00:05:37.897	🦥
spotify:track:1QFKUbR7dxmTzOo47wYBqz	1	Blood Enemy	2025-05-17 00:07:48.64	🦥
spotify:track:3qK48XK8WSH562jvp4vabM	1	Deserve Each Other	2025-05-17 01:56:15.951	🦥
spotify:track:2Z2HCTkpjlD0h42bXmXrCb	1	close enough	2025-05-17 01:59:35.804	🦥
spotify:track:3mfER4ORePHvN35cbZ3dkV	1	Where Are You Now	2025-05-17 15:53:42.383	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2025-05-17 17:54:46.815	🦥
spotify:track:5Ev5bb32kDL4Bdb2deG0G6	1	Gorgeous Gorgeous Girls	2025-05-17 18:09:26.867	🦥
spotify:track:25vG6krgfp2FQGNXzP4ZFV	1	Take A Step Back	2025-05-17 21:33:56.514	🦥
spotify:track:2t3C1vHyAGRtW5gwJDKCTb	1	Poltergeist	2025-05-17 21:58:10.956	🦥
spotify:track:2oGdeSXf0cnSPXG8kZiDtB	1	Freak Like Me	2025-05-17 23:57:41.861	🦥
spotify:track:59B5qfgrWEmJxj1xHUql2B	1	Expensive	2025-05-18 11:58:16.103	🦥
spotify:track:6v9tjIDuN0anXNoPMytvbQ	1	MURDER IN MY MIND	2025-05-18 14:07:19.49	🦥
spotify:track:02b35qI48b1RWhsFNKCb1Y	1	check	2025-05-18 14:09:42.43	🦥
spotify:track:4HX1f113qsJDmwwGL6QeV7	1	pretty girl I’ll make you famous	2025-05-18 18:08:31.762	🦥
spotify:track:2ydQBWq2QlIcHyCD2HZGzy	1	Anxiety Is My Boyfriend	2025-05-18 19:47:15.288	🦥
spotify:track:6G5QpkJFR6LNruk3iQHM9u	1	Looney Toons	2025-05-18 20:56:56.658	🦥
spotify:track:5Y2n6pW4Vqr4Mzkd9V4Uk8	1	Ray Of Solar	2025-05-19 14:13:52.723	🦥
spotify:track:3SemJVQCsUo0K3QGN7pIXu	1	Used to the Darkness	2025-05-19 16:23:34.131	🦥
spotify:track:7FyqTJJ8bdFVpNMoMNQbXA	1	Call Your Name	2025-05-19 17:14:52.16	🦥
spotify:track:6mTnH6xSYwKohtsO9RFzcc	1	We Are Mirage	2025-05-19 17:17:24.282	🦥
spotify:track:6B0ryXd4wz5PeX6lZzEbv7	1	Better Off (Alone, Pt. III)	2025-05-19 17:23:23.197	🦥
spotify:track:3gCOHPzD8BICRM5xR1XBQS	1	Lost My Mind (Wake Up)	2025-05-19 17:29:13.646	🦥
spotify:track:1WumDA51R5dHvmRVhmoP6t	1	Sinner	2025-05-19 18:03:45.785	🦥
spotify:track:7ByDxFf6Xy7xPFAYafsLxI	1	engravings	2025-05-19 20:52:26.196	🦥
spotify:track:1QFKUbR7dxmTzOo47wYBqz	1	Blood Enemy	2025-05-19 22:53:40.474	🦥
spotify:track:7FyqTJJ8bdFVpNMoMNQbXA	1	Call Your Name	2025-05-20 13:31:16.467	🦥
spotify:track:6oUDBxYv8765dlSi4oHznt	1	marionette	2025-05-20 14:04:56.398	🦥
spotify:track:25vG6krgfp2FQGNXzP4ZFV	1	Take A Step Back	2025-05-20 14:14:03.954	🦥
spotify:track:59B5qfgrWEmJxj1xHUql2B	1	Expensive	2025-05-20 14:24:51.788	🦥
spotify:track:0MVflYwPIchxoyb2WCaRyF	1	FUCK UP MY MAKE UP	2025-05-20 14:30:56.469	🦥
spotify:track:41ltW0Hdn3S0PehBaTz7Rw	1	Taste for Blood	2025-05-20 22:32:22.74	🦥
spotify:track:7IY3K7h7hyd3N7BQJ5iolb	1	X-RAY	2025-05-21 00:11:27.11	🦥
spotify:track:41ltW0Hdn3S0PehBaTz7Rw	1	Taste for Blood	2025-05-21 00:45:34.21	🦥
spotify:track:4ssqA7CeDI5XmEh4Yez5H5	1	Sirens (feat. Sophie Powers)	2025-05-21 01:45:24.086	🦥
spotify:track:62hLiF5VQ4ijErnEbxQBpU	1	girl and the machine	2025-05-21 02:10:47.927	🦥
spotify:track:62hLiF5VQ4ijErnEbxQBpU	1	girl and the machine	2025-05-21 02:10:56.147	🦥
spotify:track:62hLiF5VQ4ijErnEbxQBpU	1	girl and the machine	2025-05-21 02:11:06.243	🦥
spotify:track:2Z2HCTkpjlD0h42bXmXrCb	1	close enough	2025-05-21 17:27:29.389	🦥
spotify:track:5kbpMhCWUdvGTsRS5vKtJa	1	favorite sin	2025-05-21 17:43:27.59	🦥
spotify:track:7IY3K7h7hyd3N7BQJ5iolb	1	X-RAY	2025-05-21 18:23:21.791	🦥
spotify:track:0dscoCNZ04K2z0p5zw3shV	1	Da Da Dum	2025-05-21 18:29:19.224	🦥
spotify:track:4sQzliwhbjG17hZMXkg7aL	1	Deserve Each Other	2025-05-22 13:31:15.207	🦥
spotify:track:7wRCK1xMZU2g22hav5IgwI	1	Blood Orange Wine	2025-05-22 13:34:09.543	🦥
spotify:track:7Gyh5oAKk4oTCNDAAXWnhu	1	HARD TO LOVE	2025-05-22 13:36:21.92	🦥
spotify:track:302AZQ7ISLWGgGxAln39Km	1	Shy Guy	2025-05-22 14:19:53.15	🦥
spotify:track:3qkKAfqOn7laGPeVicY1bX	1	Masterpiece	2025-05-22 14:31:00.812	🦥
spotify:track:5TIyFlLF0EfYOUZH1TYxBq	1	More Than a Friend	2025-05-22 14:39:02.764	🦥
spotify:track:4WdThF14sHbMWyW80vlTFH	1	Breaking Through the Night	2025-05-22 15:07:25.989	🦥
spotify:track:4WdThF14sHbMWyW80vlTFH	1	Breaking Through the Night	2025-05-22 15:07:26.878	🦥
spotify:track:4WdThF14sHbMWyW80vlTFH	1	Breaking Through the Night	2025-05-22 15:09:44.623	🦥
spotify:track:2t3C1vHyAGRtW5gwJDKCTb	1	Poltergeist	2025-05-22 16:05:25.227	🦥
spotify:track:2euhvMXCewoqMnKmaMHA9C	1	NAM NAM NIAM	2025-05-22 16:08:35.061	🦥
spotify:track:0YSBvy193vMh8LE0kJp5gL	1	Nocturnal Lament	2025-05-22 16:15:50.516	🦥
spotify:track:0sd2xBT2NQVfNDojhUuLhM	1	I Ran (So Far Away)	2025-05-22 16:21:17.94	🦥
spotify:track:3TsWElLukFGT0VnzbYYC4a	1	Dark Side	2025-05-22 16:30:19.777	🦥
spotify:track:3SemJVQCsUo0K3QGN7pIXu	1	Used to the Darkness	2025-05-22 20:03:04.288	🦥
spotify:track:1WumDA51R5dHvmRVhmoP6t	1	Sinner	2025-05-22 20:49:42.055	🦥
spotify:track:25vG6krgfp2FQGNXzP4ZFV	1	Take A Step Back	2025-05-22 21:52:04.94	🦥
spotify:track:7FyqTJJ8bdFVpNMoMNQbXA	1	Call Your Name	2025-05-22 22:29:03.394	🦥
spotify:track:1bKqgVP6x9VrwUKwaTvMXo	1	Unsubstantial	2025-05-22 22:32:54.476	🦥
spotify:track:5COLdhTO5dH3CD0CZS0Fap	1	Good Guy	2025-05-22 22:38:20.773	🦥
spotify:track:2aQpISWUBToaF84DDiTeRV	1	Be My Lover (feat. La Bouche) - 2023 Mix	2025-05-22 22:43:37.818	🦥
spotify:track:6mTnH6xSYwKohtsO9RFzcc	1	We Are Mirage	2025-05-22 22:59:17.13	🦥
spotify:track:6ilBrv1QTmCTIMQHAuLG6m	1	Dance With My Demons	2025-05-22 23:15:47.047	🦥
spotify:track:2Z2HCTkpjlD0h42bXmXrCb	1	close enough	2025-05-22 23:21:48.846	🦥
spotify:track:3deRcubbfOBaLsjLqYsmLw	1	Saturday Night (Feel The Groove)	2025-05-23 12:05:26.673	🦥
spotify:track:02b35qI48b1RWhsFNKCb1Y	1	check	2025-05-23 12:08:57.756	🦥
spotify:track:7fGAhyEwT2RPPJeRHNeiC1	1	BRAIN (feat. Artemas)	2025-05-23 12:18:56.251	🦥
spotify:track:4jiwz2tQZo21Z4NQwz4zUt	1	southbound	2025-05-23 12:21:23.757	🦥
spotify:track:1O5UqpLWNMgYhV69gi9pEM	1	sweat	2025-05-23 12:23:00.465	🦥
spotify:track:7IY3K7h7hyd3N7BQJ5iolb	1	X-RAY	2025-05-23 15:49:15.928	🦥
spotify:track:0sd2xBT2NQVfNDojhUuLhM	1	I Ran (So Far Away)	2025-05-23 21:43:34.805	🦥
spotify:track:4LjhbayfowLomcgOoX7oMe	1	Don't Save Me	2025-05-24 03:30:06.379	🦥
spotify:track:2t3C1vHyAGRtW5gwJDKCTb	1	Poltergeist	2025-05-24 14:53:28.603	🦥
spotify:track:3deRcubbfOBaLsjLqYsmLw	1	Saturday Night (Feel The Groove)	2025-05-24 15:15:37.363	🦥
spotify:track:7fGAhyEwT2RPPJeRHNeiC1	1	BRAIN (feat. Artemas)	2025-05-24 15:19:19.532	🦥
spotify:track:5kbpMhCWUdvGTsRS5vKtJa	1	favorite sin	2025-05-26 15:03:57.367	🦥
spotify:track:7ByDxFf6Xy7xPFAYafsLxI	1	engravings	2025-05-26 15:12:41.066	🦥
spotify:track:6oUDBxYv8765dlSi4oHznt	1	marionette	2025-05-26 15:13:34.444	🦥
spotify:track:0sd2xBT2NQVfNDojhUuLhM	1	I Ran (So Far Away)	2025-05-26 16:04:57.949	🦥
spotify:track:0CQctRjgAceCvmtQ1CCY22	1	Hide Away	2025-05-26 16:08:13.273	🦥
spotify:track:4WdThF14sHbMWyW80vlTFH	1	Breaking Through the Night	2025-05-26 16:09:59.125	🦥
spotify:track:65ocdKTGjti9ea5nNqaq4v	1	Crazy Woman	2025-05-26 16:15:48.45	🦥
spotify:track:65ocdKTGjti9ea5nNqaq4v	1	Crazy Woman	2025-05-26 16:16:57.563	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-05-26 16:22:08.636	🦥
spotify:track:25vG6krgfp2FQGNXzP4ZFV	1	Take A Step Back	2025-05-26 18:11:39.445	🦥
spotify:track:0oWN1xuaWUrx8QGiYqxAs9	1	Monster	2025-05-26 18:14:13.271	🦥
spotify:track:6ilBrv1QTmCTIMQHAuLG6m	1	Dance With My Demons	2025-05-26 18:35:11.756	🦥
spotify:track:1WumDA51R5dHvmRVhmoP6t	1	Sinner	2025-05-26 18:49:57.142	🦥
spotify:track:41ltW0Hdn3S0PehBaTz7Rw	1	Taste for Blood	2025-05-26 18:55:56.284	🦥
spotify:track:2ydQBWq2QlIcHyCD2HZGzy	1	Anxiety Is My Boyfriend	2025-05-26 18:59:04.491	🦥
spotify:track:4uUG5RXrOk84mYEfFvj3cK	1	I'm Good (Blue)	2025-05-26 19:02:32.431	🦥
spotify:track:1bKqgVP6x9VrwUKwaTvMXo	1	Unsubstantial	2025-05-26 19:04:21.333	🦥
spotify:track:0YSBvy193vMh8LE0kJp5gL	-1	Nocturnal Lament	2025-05-26 19:13:41.886	🦥
spotify:track:4WdThF14sHbMWyW80vlTFH	1	Breaking Through the Night	2025-05-26 19:14:56.106	🦥
spotify:track:3JG1uFc40wfyrqaWC7iv0e	1	i like the way you kiss me	2025-05-28 16:59:29.899	🦥
spotify:track:698ItKASDavgwZ3WjaWjtz	1	Faded	2025-05-28 16:59:32.869	🦥
spotify:track:09CnYHiZ5jGT1wr1TXJ9Zt	1	Thank You (Not So Bad)	2025-05-28 16:59:35.642	🦥
spotify:track:1y93z6l0s65Wrvp6cZWhq4	1	Woman of the Hour	2025-05-28 16:59:41.023	🦥
spotify:track:5fZlbHpe7bOU0MG2DHM0tB	1	99% ANGEL	2025-05-29 15:15:04.832	🦥
spotify:track:1baqAtYnkpNzHAYwqibv0x	1	SIREN	2025-05-29 15:17:25.003	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-05-29 15:24:24.428	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-05-29 15:25:02.14	🦥
spotify:track:6tbptT4hnDQT1yQMLWJiLR	1	Discoteque	2025-05-29 15:41:09.409	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-05-29 17:50:34.713	🦥
spotify:track:1wq1MkR6iF73NhP18poccC	1	Eat It Up	2025-05-29 18:34:50.946	🦥
spotify:track:5fqgdN8ryVMKC3WKpye2lj	1	lovesucker	2025-05-29 18:34:55.455	🦥
spotify:track:5y0nHln9ipHqpqoYa3jiQK	1	PTSD	2025-05-29 18:34:58.815	🦥
spotify:track:3Ao9Dz4riEnk19OLSzpjjb	1	TECHNO SEXUAL	2025-05-29 18:37:25.218	🦥
spotify:track:4RLVkuXOMxVctucLC2FJ5R	1	Figure You Out	2025-05-29 21:43:51.026	🦥
spotify:track:41ltW0Hdn3S0PehBaTz7Rw	1	Taste for Blood	2025-05-29 21:44:41.099	🦥
spotify:track:0oWN1xuaWUrx8QGiYqxAs9	1	Monster	2025-05-31 00:33:09.319	🦥
spotify:track:0VpGUhtOUgbTGdJ5S6cTPk	1	feelings don't lie - extended mix	2025-05-31 01:22:44.976	🦥
spotify:track:3bbWO3cKwC5yggROA89fxv	1	BADDER	2025-05-31 13:15:59.781	🦥
spotify:track:1isVrkXme1s5XbPYGfawzV	1	Put Your Money Where Your Mouth Is	2025-05-31 13:24:03.281	🦥
spotify:track:7y2oK30NMiSSYTDAXJLMvh	1	Roses	2025-05-31 14:00:53.497	🦥
spotify:track:0Njbfdqov90zIfAXZl7hIf	1	HUSH	2025-06-08 13:10:12.597	🦥
spotify:track:7H4sy0H6eMkZGneAXKsngo	1	Bad Idea feat. That Mexican OT - Bodybuilding Mode	2025-06-01 11:22:20.81	🦥
spotify:track:69GHGPPXgnWz9fMAFewvBA	1	BOY CRAZY. - ONLY FIRE SMASH REMIX.	2025-06-01 11:42:03.633	🦥
spotify:track:1UKDcxiR4VNad3toIHpJZ6	1	Supernatural	2025-06-01 12:31:19.949	🦥
spotify:track:6JDNT4jCx90o5lh2HxpOP5	1	FREAKEE	2025-06-01 12:41:23.907	🦥
spotify:track:3AjyOYxBv8bByfBtG5o9dP	1	See You Again	2025-06-01 13:16:48.791	🦥
spotify:track:2buPg3KvHsc4TzMEHkeVYn	1	Boots	2025-06-01 13:35:00.302	🦥
spotify:track:7MmG8p0F9N3C4AXdK6o6Eb	1	Outside (feat. Ellie Goulding)	2025-06-01 14:14:04.708	🦥
spotify:track:5RLklKzb9QNXdpybSw2bbP	1	You and I	2025-06-02 16:10:23.504	🦥
spotify:track:3J5Wcm5gvOl15F79FUy6Zy	1	Sideways	2025-06-02 16:23:34.674	🦥
spotify:track:3JhgPs7rbmzLBWRvHlel8U	1	Bad Memories	2025-06-02 16:28:08.024	🦥
spotify:track:0rxEsBxxil046ZqipaCXle	1	Left & Right	2025-06-02 16:31:24.222	🦥
spotify:track:3deRcubbfOBaLsjLqYsmLw	1	Saturday Night (Feel The Groove)	2025-06-02 18:31:42.571	🦥
spotify:track:2dgDzYUUMAXnX2knGp9mpc	1	Déjà Vu	2025-06-02 19:28:17.029	🦥
spotify:track:4FezkkbT6BE8WW2D5xg1rR	1	Keep It To Myself	2025-06-02 19:35:36.451	🦥
spotify:track:4FezkkbT6BE8WW2D5xg1rR	1	Keep It To Myself	2025-06-02 19:36:42.437	🦥
spotify:track:4l7NBJ4iqUZM5gz1c7gtNH	1	you problem	2025-06-02 19:40:59.496	🦥
spotify:track:1F5EX18FztnE78ZHO4RwZV	1	LIQUORLIPS	2025-06-02 19:45:33.113	🦥
spotify:track:5CGFCCgW9mOXxWiNNIPBeG	1	Biblical	2025-06-02 19:50:36.493	🦥
spotify:track:4ssqA7CeDI5XmEh4Yez5H5	1	Sirens (feat. Sophie Powers)	2025-06-02 19:53:24.837	🦥
spotify:track:105HYrCY6jMIsqOspGeCJI	1	Flashing Lights	2025-06-02 19:59:44.62	🦥
spotify:track:41ltW0Hdn3S0PehBaTz7Rw	1	Taste for Blood	2025-06-02 20:02:07.082	🦥
spotify:track:4vjqNrPZZrS3EYFYhGXYig	1	Kiss of Death	2025-06-02 20:16:17.658	🦥
spotify:track:06B93ufTCpb6VWEiqgcVne	1	DANCE	2025-06-02 20:17:23.651	🦥
spotify:track:7bVyJVC1pFN13Pmcvcva7B	1	Good Life	2025-06-02 20:46:24.522	🦥
spotify:track:0CZyUC8152Mc40d8On1ryQ	1	DiGiTAL HEARTBEAT	2025-06-02 20:47:40.422	🦥
spotify:track:56XbcLHPO6x9dcuHZX7CAt	1	BE A GOOD BOY	2025-06-02 20:52:58.382	🦥
spotify:track:56XbcLHPO6x9dcuHZX7CAt	1	BE A GOOD BOY	2025-06-02 20:55:17.159	🦥
spotify:track:4TDcVE5LKoKjzJu4T3T4fa	1	Sweat	2025-06-02 20:57:56.652	🦥
spotify:track:3wrWJ4cpGWSL2JZieVXhdR	1	lay all your love on me	2025-06-02 21:40:40.69	🦥
spotify:track:5CiPDLxXmUG7Fk5yjlNy9n	1	BOY CRAZY.	2025-06-03 02:19:41.657	🦥
spotify:track:2yWlGEgEfPot0lv3OAjuG3	1	Just Keep Watching (From F1® The Movie)	2025-06-03 18:53:57.31	🦥
spotify:track:4TDcVE5LKoKjzJu4T3T4fa	1	Sweat	2025-06-03 18:57:45.909	🦥
spotify:track:2yWlGEgEfPot0lv3OAjuG3	1	Just Keep Watching (From F1® The Movie)	2025-06-03 19:02:01.179	🦥
spotify:track:7wOQHp3yFvxyCPa3lnD7WZ	1	Girl's Girl	2025-06-03 19:12:14.267	🦥
spotify:track:1SdQjKRW52cHg2SEesQLvH	1	Physical (feat. Troye Sivan)	2025-06-03 22:12:25.723	🦥
spotify:track:6A2b6zMhxAT3RG7fpom7KT	1	KiSS BACK	2025-06-03 23:12:05.595	🦥
spotify:track:5y0nHln9ipHqpqoYa3jiQK	1	PTSD	2025-06-03 23:58:13.776	🦥
spotify:track:2Z2HCTkpjlD0h42bXmXrCb	1	close enough	2025-06-04 18:54:45.465	🦥
spotify:track:4WdThF14sHbMWyW80vlTFH	1	Breaking Through the Night	2025-06-04 19:25:09.649	🦥
spotify:track:3qK48XK8WSH562jvp4vabM	1	Deserve Each Other	2025-06-04 19:28:54.944	🦥
spotify:track:7Gyh5oAKk4oTCNDAAXWnhu	1	HARD TO LOVE	2025-06-04 19:34:20.063	🦥
spotify:track:2dgDzYUUMAXnX2knGp9mpc	1	Déjà Vu	2025-06-04 19:39:32.536	🦥
spotify:track:4FezkkbT6BE8WW2D5xg1rR	1	Keep It To Myself	2025-06-04 19:45:44.095	🦥
spotify:track:5COLdhTO5dH3CD0CZS0Fap	1	Good Guy	2025-06-04 20:04:24.394	🦥
spotify:track:4LjhbayfowLomcgOoX7oMe	1	Don't Save Me	2025-06-04 20:08:39.111	🦥
spotify:track:0VpGUhtOUgbTGdJ5S6cTPk	1	feelings don't lie - extended mix	2025-06-04 20:55:24.088	🦥
spotify:track:02b35qI48b1RWhsFNKCb1Y	1	check	2025-06-05 22:56:02.699	🦥
spotify:track:1bKqgVP6x9VrwUKwaTvMXo	1	Unsubstantial	2025-06-05 22:59:51.253	🦥
spotify:track:4WdThF14sHbMWyW80vlTFH	1	Breaking Through the Night	2025-06-06 11:28:29.613	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-06-06 11:58:05.585	🦥
spotify:track:6G5txxoH2XisBaMRO6bX2z	1	r.i.p.	2025-06-06 12:17:42.271	🦥
spotify:track:4l7NBJ4iqUZM5gz1c7gtNH	1	you problem	2025-06-06 12:28:40.254	🦥
spotify:track:2yWlGEgEfPot0lv3OAjuG3	1	Just Keep Watching (From F1® The Movie)	2025-06-06 12:39:44.544	🦥
spotify:track:3YjH3TIf5SOpFlnqlRdNAE	1	Savages	2025-06-06 12:52:33.568	🦥
spotify:track:69GHGPPXgnWz9fMAFewvBA	1	BOY CRAZY. - ONLY FIRE SMASH REMIX.	2025-06-06 12:58:22.837	🦥
spotify:track:6A2b6zMhxAT3RG7fpom7KT	1	KiSS BACK	2025-06-06 13:09:02.291	🦥
spotify:track:212qRRJMxvpN3FNkW6g3rH	1	BLAH	2025-06-06 13:15:23.768	🦥
spotify:track:5COLdhTO5dH3CD0CZS0Fap	1	Good Guy	2025-06-06 13:46:51.345	🦥
spotify:track:3qkKAfqOn7laGPeVicY1bX	1	Masterpiece	2025-06-06 13:52:54.989	🦥
spotify:track:7H4sy0H6eMkZGneAXKsngo	1	Bad Idea feat. That Mexican OT - Bodybuilding Mode	2025-06-07 14:49:27.402	🦥
spotify:track:5Y2n6pW4Vqr4Mzkd9V4Uk8	1	Ray Of Solar	2025-06-07 14:59:20.644	🦥
spotify:track:6mTnH6xSYwKohtsO9RFzcc	1	We Are Mirage	2025-06-07 15:03:57.927	🦥
spotify:track:7kDUspsoYfLkWnZR7qwHZl	1	my ex's best friend (with blackbear)	2025-06-07 15:33:40.281	🦥
spotify:track:493JwOBVJAGB4safZK0Q4E	1	Saddy Daddy-O	2025-06-07 15:38:39.055	🦥
spotify:track:0BuHt4GZ9uqDtPxUsYfEsy	1	Mother Teresa	2025-06-07 15:43:04.691	🦥
spotify:track:2OfQvGrr83FGpdLA1nAR01	1	Numb	2025-06-07 15:45:00.566	🦥
spotify:track:0sd2xBT2NQVfNDojhUuLhM	1	I Ran (So Far Away)	2025-06-07 16:22:18.057	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2025-06-07 16:24:17.069	🦥
spotify:track:30YEJPZ7jPPzKIT7hxHcFO	1	Boo Hoo	2025-06-07 16:41:18.05	🦥
spotify:track:30YEJPZ7jPPzKIT7hxHcFO	1	Boo Hoo	2025-06-07 16:41:38.245	🦥
spotify:track:1v2EmuslskqaQS0iNfhwMb	1	Call My Name	2025-06-07 16:53:06.703	🦥
spotify:track:5uHA52m0cZ2l8JeUwVx8wI	1	HONKY TONK BADONKADONK	2025-06-08 01:16:08.451	🦥
spotify:track:6A2b6zMhxAT3RG7fpom7KT	1	KiSS BACK	2025-06-08 12:30:13.229	🦥
spotify:track:2AwHfYNiI0aDqs51eA3KUr	1	Iconique	2025-06-08 12:45:20.814	🦥
spotify:track:78bsKMPNBvsM9bLYi5zvuQ	1	SECOND MINUTE HOUR	2025-06-08 12:55:32.779	🦥
spotify:track:4F5kOAG106Avx0NcnBD9hf	1	COFFIN	2025-06-08 15:01:25.478	🦥
spotify:track:5wJh12xuEJojhQLUo22gN8	1	SENSITIVE	2025-06-08 16:51:22.247	🦥
spotify:track:7LO8X20v1ecmGGOtn3KPLX	1	Slow Nights	2025-06-08 17:46:19.806	🦥
spotify:track:6E7wqplViIGfBHyoVDj4yW	1	I Like You Best	2025-06-08 18:00:59.535	🦥
spotify:track:3z3Ya9EOqmqV1fBX2zvsq8	1	endless summer	2025-06-08 18:03:55.076	🦥
spotify:track:5GLjjwjiMBoDIn0Dx0uDos	1	Plastic Therapy	2025-06-09 11:49:27.809	🦥
spotify:track:6zfHBysknBGSTZRUU6Y2st	1	GABBA GABBA	2025-06-09 19:57:42.767	🦥
spotify:track:7mKy65CyVCmawYMw3JJGPQ	1	Me, Myself and The Night	2025-06-09 22:03:49.281	🦥
spotify:track:4FezkkbT6BE8WW2D5xg1rR	1	Keep It To Myself	2025-06-11 15:47:30.035	🦥
spotify:track:5uHA52m0cZ2l8JeUwVx8wI	1	HONKY TONK BADONKADONK	2025-06-11 15:50:26.86	🦥
spotify:track:6J89QL6f71Lj6MOlNxtKbd	1	fallin	2025-06-11 22:01:30.055	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-06-11 22:23:40.249	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-06-12 00:41:29.987	🔥
spotify:track:7l5JdO4AL88SQUgkF67DG7	1	BEFORE I MET YOU	2025-06-12 00:41:30.369	🦥
spotify:track:7l5JdO4AL88SQUgkF67DG7	-1	BEFORE I MET YOU	2025-06-12 00:41:32.37	🔥
spotify:track:77lnYnJALkzobQlsYwOp9i	1	before they were famous (NEPO BABY)	2025-06-12 01:03:08.185	🦥
spotify:track:50fSMJZuhlRBTWBfrP5Ok2	1	I Will Eat Your God	2025-06-12 01:11:14.294	🦥
spotify:track:6A2b6zMhxAT3RG7fpom7KT	1	KiSS BACK	2025-06-12 20:54:37.343	🦥
spotify:track:1bKqgVP6x9VrwUKwaTvMXo	1	Unsubstantial	2025-06-12 21:02:31.406	🦥
spotify:track:55M1PYMy03OCcRI39FrXmh	1	Vitamin D	2025-06-12 22:45:00.33	🦥
spotify:track:6JDNT4jCx90o5lh2HxpOP5	1	FREAKEE	2025-06-12 23:14:03.039	🦥
spotify:track:6JDNT4jCx90o5lh2HxpOP5	1	FREAKEE	2025-06-12 23:39:10.283	🦥
spotify:track:465WMnAsGX9twpLm90QgWO	1	puppy	2025-06-13 16:39:25.513	🦥
spotify:track:5b5cPscqVEMChvDqscVw26	1	Training Season	2025-06-16 18:18:12.126	🦥
spotify:track:4E63weMCaNZuGPEFMnuEi8	1	exes	2025-06-16 21:01:20.868	🦥
spotify:track:48JW5Abx5pe40PPmF7CigB	1	crawl	2025-06-16 21:35:26.388	🦥
spotify:track:0GLeeaF8VlLy8j3aiUYMxm	1	ETERNAL NOW (LSZEE flip)	2025-06-17 10:01:45.205	🦥
spotify:track:0ShCfTzqb8TfcMgTBA4KgZ	1	Dim Sum Paradise	2025-06-17 14:06:33.338	🦥
spotify:track:13DNuiQyuTDcAw6Y8thZFM	1	BRAND NEW BITCH	2025-06-17 14:24:11.315	🦥
spotify:track:1hBM2D1ULT3aeKuddSwPsK	1	STARSTRUKK (feat. Katy Perry)	2025-06-17 14:30:04.001	🦥
spotify:track:3tcv4j4DQYDBaNoHTLYKV8	1	Turn Off The Lights	2025-06-17 14:33:34.627	🦥
spotify:track:5WZlorRUxgryaweu7kqeHd	1	Other Boys	2025-06-18 17:57:01.052	🦥
spotify:track:4FezkkbT6BE8WW2D5xg1rR	1	Keep It To Myself	2025-06-18 19:44:14.085	🦥
spotify:track:6JDNT4jCx90o5lh2HxpOP5	1	FREAKEE	2025-06-18 19:57:29.676	🦥
spotify:track:77lnYnJALkzobQlsYwOp9i	1	before they were famous (NEPO BABY)	2025-06-18 21:24:27.989	🦥
spotify:track:3qkKAfqOn7laGPeVicY1bX	1	Masterpiece	2025-06-18 21:36:03.39	🦥
spotify:track:69GHGPPXgnWz9fMAFewvBA	1	BOY CRAZY. - ONLY FIRE SMASH REMIX.	2025-06-18 21:55:48.223	🦥
spotify:track:48JW5Abx5pe40PPmF7CigB	1	crawl	2025-06-18 23:25:47.799	🦥
spotify:track:30YEJPZ7jPPzKIT7hxHcFO	1	Boo Hoo	2025-06-18 23:45:36.545	🦥
spotify:track:56XbcLHPO6x9dcuHZX7CAt	1	BE A GOOD BOY	2025-06-20 02:13:59.262	🦥
spotify:track:5CiPDLxXmUG7Fk5yjlNy9n	1	BOY CRAZY.	2025-06-20 02:16:53.546	🦥
spotify:track:3wrWJ4cpGWSL2JZieVXhdR	1	lay all your love on me	2025-06-20 02:19:06.614	🦥
spotify:track:6mTnH6xSYwKohtsO9RFzcc	1	We Are Mirage	2025-06-20 02:26:08.766	🦥
spotify:track:50fSMJZuhlRBTWBfrP5Ok2	1	I Will Eat Your God	2025-06-20 02:37:16.346	🦥
spotify:track:69GHGPPXgnWz9fMAFewvBA	1	BOY CRAZY. - ONLY FIRE SMASH REMIX.	2025-06-20 02:50:01.631	🦥
spotify:track:55M1PYMy03OCcRI39FrXmh	1	Vitamin D	2025-06-20 03:20:59.277	🦥
spotify:track:1bKqgVP6x9VrwUKwaTvMXo	1	Unsubstantial	2025-06-20 03:27:45.477	🦥
spotify:track:48JW5Abx5pe40PPmF7CigB	1	crawl	2025-06-20 03:29:32.69	🦥
spotify:track:6A2b6zMhxAT3RG7fpom7KT	1	KiSS BACK	2025-06-20 04:08:21.737	🦥
spotify:track:0sd2xBT2NQVfNDojhUuLhM	1	I Ran (So Far Away)	2025-06-20 04:15:43.814	🦥
spotify:track:5wJh12xuEJojhQLUo22gN8	1	SENSITIVE	2025-06-20 04:22:24.273	🦥
spotify:track:6zfHBysknBGSTZRUU6Y2st	1	GABBA GABBA	2025-06-20 04:30:22.264	🦥
spotify:track:6zfHBysknBGSTZRUU6Y2st	1	GABBA GABBA	2025-06-20 04:31:06.172	🦥
spotify:track:4lZy04COQZzUWwN4ZKXuVC	1	Limits	2025-06-20 04:41:15.269	🦥
spotify:track:48JW5Abx5pe40PPmF7CigB	1	crawl	2025-06-23 17:13:10.299	🦥
spotify:track:0CZyUC8152Mc40d8On1ryQ	1	DiGiTAL HEARTBEAT	2025-06-23 17:41:42.627	🦥
spotify:track:1F5EX18FztnE78ZHO4RwZV	1	LIQUORLIPS	2025-06-23 18:07:23.577	🦥
spotify:track:55M1PYMy03OCcRI39FrXmh	1	Vitamin D	2025-06-23 18:39:58.334	🦥
spotify:track:55M1PYMy03OCcRI39FrXmh	1	Vitamin D	2025-06-23 18:40:55.843	🦥
spotify:track:0sd2xBT2NQVfNDojhUuLhM	1	I Ran (So Far Away)	2025-06-23 18:43:54.714	🦥
spotify:track:6ilBrv1QTmCTIMQHAuLG6m	1	Dance With My Demons	2025-06-23 19:23:23.669	🦥
spotify:track:5CiPDLxXmUG7Fk5yjlNy9n	1	BOY CRAZY.	2025-06-23 19:46:35.031	🦥
spotify:track:5u9IdOmx9QdooGe8wO27zr	1	Better Kind Of Best Friend	2025-06-23 19:56:09.536	🦥
spotify:track:2rdQg8QDTrW5p147vUwSDx	1	My Soul Is Your Soul	2025-06-24 11:11:42.616	🦥
spotify:track:2SHUqzcvpL80CeGz3K3iNd	1	Break The Chains	2025-06-24 11:23:28.609	🦥
spotify:track:7Feaw9WAEREY0DUOSXJLOM	1	Summer Days (feat. Macklemore & Patrick Stump of Fall Out Boy)	2025-06-24 11:40:00.497	🦥
spotify:track:1pxQYcle6tZVsFk0gqh5Zp	1	pray t0 god	2025-06-24 11:49:34.413	🦥
spotify:track:62hLiF5VQ4ijErnEbxQBpU	1	girl and the machine	2025-06-24 11:58:41.356	🦥
spotify:track:06B93ufTCpb6VWEiqgcVne	1	DANCE	2025-06-24 12:04:20.374	🦥
spotify:track:6G9AF7WeDRsb665c2tCJ0b	1	psyc(hot)ic	2025-06-24 12:08:22.512	🦥
spotify:track:7IY3K7h7hyd3N7BQJ5iolb	1	X-RAY	2025-06-24 12:10:07.871	🦥
spotify:track:6nek1Nin9q48AVZcWs9e9D	1	Paradise	2025-06-24 12:29:48.538	🦥
spotify:track:2ISSQPb9LHHiV6ng2NXosL	1	Beautiful Now	2025-06-24 13:00:43.598	🦥
spotify:track:27cUgjbAjNyI4YuIK01MC3	1	Far Away	2025-06-24 13:08:53.392	🦥
spotify:track:7fGAhyEwT2RPPJeRHNeiC1	1	BRAIN (feat. Artemas)	2025-06-24 13:23:57.859	🦥
spotify:track:4joYxRhYy1p4w4OQbDaMpj	1	Rhapsody In Pink	2025-06-24 13:27:55.222	🦥
spotify:track:5Vwkt7zvEcj5riL46ZbM5K	1	touchin’ me	2025-06-24 13:30:54.192	🦥
spotify:track:0ECuf4vH9v4rPohsCKfW3y	1	Light It Up	2025-06-24 13:40:47.702	🦥
spotify:track:1wq1MkR6iF73NhP18poccC	1	Eat It Up	2025-06-24 14:09:22.149	🦥
spotify:track:1wq1MkR6iF73NhP18poccC	1	Eat It Up	2025-06-24 17:14:49.18	🦥
spotify:track:2q5ByXv4sljfsPL3XvglUm	1	Another High	2025-06-24 17:18:33.016	🦥
spotify:track:4X3aDRAUFsY8RPtJbPQeKt	1	forgot to forget me	2025-06-25 13:20:13.949	🦥
spotify:track:6pBonWDFC7p32oq4AJJugx	1	MOVIE STAR	2025-06-25 13:22:55.83	🦥
spotify:track:72wqKATrwPrmONGWER5tfD	1	OUT OF MY SYSTEM	2025-06-25 13:41:15.836	🦥
spotify:track:2oGdeSXf0cnSPXG8kZiDtB	1	Freak Like Me	2025-06-25 13:43:26.642	🦥
spotify:track:0L5XzaKc4J86e4iI9BvtIu	1	Oxytocin	2025-06-25 13:54:36.036	🦥
spotify:track:644xDn9AYxUGuCiehfQ8pl	1	TALK	2025-06-25 13:57:12.738	🦥
spotify:track:1RW1i68byVlsbKt7jcpHQ6	1	HOW TO RUIN EVERYTHING	2025-06-25 14:07:59.778	🦥
spotify:track:5174aBUvlBHClVp9cr7JoG	1	MEZCAL MINT GUM N COCAINE	2025-06-25 14:21:58.144	🦥
spotify:track:41QRhGJmP6DPhzD35sV8tZ	1	FML (LOL OH WELL)	2025-06-25 14:37:57.128	🦥
spotify:track:2buPg3KvHsc4TzMEHkeVYn	1	Boots	2025-06-25 17:22:05.145	🦥
spotify:track:3JZzYGz6NKRmUrpkSw6uNA	1	earthgirl	2025-06-25 18:20:07.587	🦥
spotify:track:3MPpUEN41PGNjV3b1NAoiT	1	Mirage	2025-06-25 18:40:00.308	🦥
spotify:track:6mzmqyHOJuGgI3Yek8Ruzx	1	Homewrecking Era	2025-06-25 18:48:01.371	🦥
spotify:track:5ZkLd4MeukzNB1atzN1ViW	1	DOCTOR	2025-06-25 19:03:16.806	🦥
spotify:track:7Gyh5oAKk4oTCNDAAXWnhu	1	HARD TO LOVE	2025-06-25 19:39:07.543	🦥
spotify:track:1RW1i68byVlsbKt7jcpHQ6	1	HOW TO RUIN EVERYTHING	2025-06-26 09:33:48.766	🦥
spotify:track:4ZofmEdvs4mQqZ756GQhSY	1	Melody	2025-06-26 15:50:12.683	🦥
spotify:track:0OJN2A3Qyvd7pwSF0AIteC	1	Keep You Mine	2025-06-26 15:51:01.067	🦥
spotify:track:4MhxagNeAqtTdy9ht8tQo5	1	greedy - cassö remix	2025-06-26 16:51:03.954	🦥
spotify:track:3fXy7UkU64qm5ezMBf0CTh	1	Lucid Dream	2025-06-26 17:03:30.451	🦥
spotify:track:0QR4vZ9iuNjrkWYNLoVAnM	1	Live And Die (feat. Sophie Simmons)	2025-06-26 17:11:01.321	🦥
spotify:track:7oVEtyuv9NBmnytsCIsY5I	1	BURN IT DOWN	2025-06-27 09:25:38.271	🦥
spotify:track:7Feaw9WAEREY0DUOSXJLOM	1	Summer Days (feat. Macklemore & Patrick Stump of Fall Out Boy)	2025-06-27 19:03:23.095	🦥
spotify:track:27cUgjbAjNyI4YuIK01MC3	1	Far Away	2025-06-27 19:09:47.547	🦥
spotify:track:5174aBUvlBHClVp9cr7JoG	1	MEZCAL MINT GUM N COCAINE	2025-06-27 20:22:01.023	🦥
spotify:track:1RW1i68byVlsbKt7jcpHQ6	1	HOW TO RUIN EVERYTHING	2025-06-27 20:29:47.781	🦥
spotify:track:59C8ZrER11yeFZMLui18YU	1	Innocent	2025-06-28 03:20:08.632	🦥
spotify:track:41ltW0Hdn3S0PehBaTz7Rw	1	Taste for Blood	2025-06-28 03:27:33.602	🦥
spotify:track:3gCOHPzD8BICRM5xR1XBQS	1	Lost My Mind (Wake Up)	2025-06-28 12:55:16.016	🦥
spotify:track:1WumDA51R5dHvmRVhmoP6t	1	Sinner	2025-06-28 13:03:16.663	🦥
spotify:track:6JDNT4jCx90o5lh2HxpOP5	1	FREAKEE	2025-06-28 14:09:27.462	🦥
spotify:track:0ZqveF2rEFlz2oqF2xrriP	1	The Riddle	2025-06-29 11:58:23.883	🦥
spotify:track:0GO8y8jQk1PkHzS31d699N	1	Tongue Tied	2025-06-29 12:05:21.326	🦥
spotify:track:1ypwNj8eK2qAMDEs4EiIIX	1	Miss You - Bonus Track	2025-06-29 12:13:04.557	🦥
spotify:track:3kcKlOkQQEPVwxwljbGJ5p	1	Kernkraft 400 (A Better Day)	2025-06-29 13:28:52.067	🦥
spotify:track:5ZduaRci3iNUiDfJbBfAaf	1	Give It To Me - Full Vocal Mix	2025-06-29 14:19:36.087	🦥
spotify:track:6ju5Ntn5pYksvkKxVkjEPK	1	Never Going Home	2025-06-29 14:26:51.117	🦥
spotify:track:1RW1i68byVlsbKt7jcpHQ6	1	HOW TO RUIN EVERYTHING	2025-06-30 14:54:32.97	🦥
spotify:track:7zce3JYJfyVYF8UmLYvQsq	1	Imposter Syndrome	2025-06-30 15:22:23.729	🦥
spotify:track:3ucCcLrJC7NQaMoQF7GmQw	1	Take The Money	2025-06-30 15:25:26.825	🦥
spotify:track:2P616qpC9myp9XRCGVFuce	1	Damage	2025-06-30 15:27:53.942	🦥
spotify:track:55M1PYMy03OCcRI39FrXmh	1	Vitamin D	2025-06-30 19:46:13.429	🦥
spotify:track:69GHGPPXgnWz9fMAFewvBA	-1	BOY CRAZY. - ONLY FIRE SMASH REMIX.	2025-06-30 19:48:41.597	🦥
spotify:track:69GHGPPXgnWz9fMAFewvBA	-1	BOY CRAZY. - ONLY FIRE SMASH REMIX.	2025-06-30 19:48:43.389	🦥
spotify:track:69GHGPPXgnWz9fMAFewvBA	-1	BOY CRAZY. - ONLY FIRE SMASH REMIX.	2025-06-30 19:48:44.405	🦥
spotify:track:69GHGPPXgnWz9fMAFewvBA	-1	BOY CRAZY. - ONLY FIRE SMASH REMIX.	2025-06-30 19:48:46.432	🦥
spotify:track:5CiPDLxXmUG7Fk5yjlNy9n	1	BOY CRAZY.	2025-06-30 19:49:27.81	🦥
spotify:track:5CiPDLxXmUG7Fk5yjlNy9n	1	BOY CRAZY.	2025-06-30 19:49:28.808	🦥
spotify:track:6JDNT4jCx90o5lh2HxpOP5	1	FREAKEE	2025-06-30 19:53:40.411	🦥
spotify:track:6A2b6zMhxAT3RG7fpom7KT	1	KiSS BACK	2025-06-30 19:59:42.891	🦥
spotify:track:25vG6krgfp2FQGNXzP4ZFV	1	Take A Step Back	2025-06-30 20:07:04.591	🦥
spotify:track:6ilBrv1QTmCTIMQHAuLG6m	1	Dance With My Demons	2025-06-30 21:30:08.28	🦥
spotify:track:5174aBUvlBHClVp9cr7JoG	1	MEZCAL MINT GUM N COCAINE	2025-07-01 02:30:55.731	🦥
spotify:track:5kjnJkE4UiXn0W0qGPVM6l	1	Rebel	2025-07-01 11:37:01.915	🦥
spotify:track:7d3UINr3Bl6eG27mnLajMp	1	It's a Mad World	2025-07-01 11:39:02.328	🦥
spotify:track:4B2ZFUncmZK3HjL0gDmUms	1	WET DREAM	2025-07-01 12:59:19.217	🦥
spotify:track:6ZmZYirBGRw0iNBp1w0ZTi	1	Only In My Mind	2025-07-01 16:31:34.672	🦥
spotify:track:1Rz3Xw2qOsRncTVajZR3cY	1	Electricity	2025-07-01 16:35:04.396	🦥
spotify:track:6ilBrv1QTmCTIMQHAuLG6m	1	Dance With My Demons	2025-07-01 18:55:02.538	🦥
spotify:track:6ilBrv1QTmCTIMQHAuLG6m	1	Dance With My Demons	2025-07-02 01:33:53.419	🦥
spotify:track:0N9G3kXdyVzI6E1ONbxopa	1	Think Too Much	2025-07-02 16:35:22.021	🦥
spotify:track:3Uxp6uik4XcT6LGIv8mKNe	1	Out Of Touch - 71 Digits Edit	2025-07-03 10:37:38.165	🦥
spotify:track:4kte3OcW800TPvOVgrLLj8	1	Let Me Love You (Until You Learn To Love Yourself)	2025-07-03 10:46:24.787	💿
spotify:track:1RW1i68byVlsbKt7jcpHQ6	1	HOW TO RUIN EVERYTHING	2025-07-03 16:37:14.146	🦥
spotify:track:1wq1MkR6iF73NhP18poccC	1	Eat It Up	2025-07-03 16:41:58.443	🦥
spotify:track:5CiPDLxXmUG7Fk5yjlNy9n	1	BOY CRAZY.	2025-07-03 17:20:21.409	🦥
spotify:track:6ZmZYirBGRw0iNBp1w0ZTi	1	Only In My Mind	2025-07-03 17:53:21.764	🦥
spotify:track:4FezkkbT6BE8WW2D5xg1rR	1	Keep It To Myself	2025-07-05 18:07:49.258	🦥
spotify:track:6zfHBysknBGSTZRUU6Y2st	1	GABBA GABBA	2025-07-05 18:09:03.369	🦥
spotify:track:6Qigf5GYjqg2LjrCxEeuLH	1	FMLYLM	2025-07-07 16:37:55.728	🦥
spotify:track:7B3BwNecBhKvNwSMOOl7Gk	1	Fame is a Gun	2025-07-07 21:18:46	🦥
spotify:track:6A2f2zK7E808HMHbygl9gD	1	Dark Room	2025-07-08 13:53:57.965	🦥
spotify:track:6A2f2zK7E808HMHbygl9gD	1	Dark Room	2025-07-08 13:56:15.772	🦥
spotify:track:3sgGShwUAyoAlLEeAOzKI0	1	Ruby with the Sharpest Lies	2025-07-08 15:18:54.661	🦥
spotify:track:0iCxluZpaWzhZuLeDDfOz8	1	The Fever	2025-07-08 15:32:29.565	🦥
spotify:track:2iLxXSM7AOzB4RCNzk4bjd	1	Destruction	2025-07-08 15:44:44.645	🦥
spotify:track:69PxR7QYOpwZU1KqfpzJUI	1	Coming Apart	2025-07-08 16:09:58.251	🦥
spotify:track:69PxR7QYOpwZU1KqfpzJUI	1	Coming Apart	2025-07-08 16:11:48.229	🦥
spotify:track:3qkKAfqOn7laGPeVicY1bX	1	Masterpiece	2025-07-08 16:29:26.813	🦥
spotify:track:3Ihlrpj4BkhVIEkQKECy1F	1	I Like You Best - Cloud 9 Version	2025-07-08 16:33:22.731	🦥
spotify:track:1isVrkXme1s5XbPYGfawzV	1	Put Your Money Where Your Mouth Is	2025-07-08 16:52:30.054	🦥
spotify:track:36ssd0tzR0Bs8OOLO2nMPQ	1	Freak Like Me	2025-07-08 16:54:28.535	🦥
spotify:track:3qkKAfqOn7laGPeVicY1bX	1	Masterpiece	2025-07-08 18:11:00.09	🦥
spotify:track:3qkKAfqOn7laGPeVicY1bX	1	Masterpiece	2025-07-08 18:13:46.319	🦥
spotify:track:7Gyh5oAKk4oTCNDAAXWnhu	1	HARD TO LOVE	2025-07-08 18:23:59.182	🦥
spotify:track:6ojVbFWIO3aBt5hagto4Jc	1	DIRTY LITTLE FANTASY	2025-07-08 18:39:56.942	🦥
spotify:track:3ucCcLrJC7NQaMoQF7GmQw	1	Take The Money	2025-07-08 18:43:58.206	🦥
spotify:track:4VY6SsgA05tDXC3jAkAE1h	1	SICK PRETTY MIND (SIDE B)	2025-07-08 19:20:20.439	🦥
spotify:track:2w2lfwoTELQyN940qM7Nfd	1	Dangerous (feat. Sam Martin)	2025-07-09 16:11:14.157	🦥
spotify:track:2w2lfwoTELQyN940qM7Nfd	1	Dangerous (feat. Sam Martin)	2025-07-09 16:12:01.899	🦥
spotify:track:2bLqfJjuC5syrsgDsZfGmn	1	The Way I Are	2025-07-09 16:15:49.977	🦥
spotify:track:0WCiI0ddWiu5F2kSHgfw5S	1	Take It Off	2025-07-09 16:22:07.74	🦥
spotify:track:5lgS45xqkTk2HVm7Jph9ya	1	Love Don't Let Me Go	2025-07-09 17:57:23.758	🦥
spotify:track:0rxEsBxxil046ZqipaCXle	1	Left & Right	2025-07-09 21:00:23.259	🦥
spotify:track:6zfHBysknBGSTZRUU6Y2st	1	GABBA GABBA	2025-07-09 21:34:59.724	🦥
spotify:track:2vICdcAEc10WfqMeRxOF1I	1	Dark Side	2025-07-10 12:53:00.33	🦥
spotify:track:29bhnde7Gvnp7rvY9zsq5S	1	SHUM	2025-07-10 13:02:54.021	🦥
spotify:track:1QmDEbAJ1jTCYDbXrTIYor	1	All Rise	2025-07-10 14:45:46.496	🦥
spotify:track:0sd2xBT2NQVfNDojhUuLhM	1	I Ran (So Far Away)	2025-07-11 13:03:39.734	🦥
spotify:track:2JOTbHmj0jwBM9bHgcVEOq	1	Pink Soldiers	2025-07-11 13:06:41.337	🦥
spotify:track:1v2EmuslskqaQS0iNfhwMb	1	Call My Name	2025-07-11 13:15:30.132	🦥
spotify:track:6SAid2dPlfIabcTpQNUX6R	1	Kingdom	2025-07-11 13:36:18.139	🦥
spotify:track:1GJ72huYp93hhZlz4O34Jd	1	Gotta Feeling	2025-07-11 14:13:48.762	🦥
spotify:track:6PmqIqLeMIHpjrV99NrxaX	1	Dunes	2025-07-11 14:16:44.879	🦥
spotify:track:3BVcS9z6PS0Lto61diM1O6	1	Sweat	2025-07-11 15:01:17.2	🦥
spotify:track:4Q46a3KDEXbyT7rcqxTmPa	1	LOSIN’ MY MIND	2025-07-11 15:12:45.203	🦥
spotify:track:7wOQHp3yFvxyCPa3lnD7WZ	1	Girl's Girl	2025-07-11 15:43:26.299	🦥
spotify:track:65ocdKTGjti9ea5nNqaq4v	1	Crazy Woman	2025-07-11 17:03:45.393	🦥
spotify:track:1QmDEbAJ1jTCYDbXrTIYor	1	All Rise	2025-07-11 17:07:16.608	🦥
spotify:track:5kjnJkE4UiXn0W0qGPVM6l	1	Rebel	2025-07-11 21:09:28.421	🦥
spotify:track:7fGAhyEwT2RPPJeRHNeiC1	1	BRAIN (feat. Artemas)	2025-07-11 21:31:36.145	🦥
spotify:track:5CiPDLxXmUG7Fk5yjlNy9n	1	BOY CRAZY.	2025-07-13 15:04:02.743	🦥
\.


--
-- PostgreSQL database dump complete
--

