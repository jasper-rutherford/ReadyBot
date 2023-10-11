--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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
\.


--
-- PostgreSQL database dump complete
--

