--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

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
-- Name: albums; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.albums (
    id integer,
    name text,
    genres text,
    descs text,
    avrating double precision,
    numratings integer,
    numreviews integer
);


--
-- Name: artists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.artists (
    id integer,
    name text
);


--
-- Name: connector; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.connector (
    album_id integer,
    artist_id integer,
    reldate_id integer
);


--
-- Name: reldates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reldates (
    id integer,
    date text
);


--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.albums (id, name, genres, descs, avrating, numratings, numreviews) FROM stdin;
1	OK Computer	Alternative Rock, Art Rock	melancholic, anxious, futuristic, alienation, existential, male vocals, atmospheric, lonely, cold, introspective	4.23	70382	1531
2	Wish You Were Here	Progressive Rock, Art Rock	melancholic, atmospheric, progressive, male vocals, concept album, introspective, serious, longing, bittersweet, meditative	4.29	48662	983
3	In the Court of the Crimson King	Progressive Rock, Art Rock	fantasy, epic, progressive, philosophical, complex, surreal, poetic, male vocals, melancholic, technical	4.3	44943	870
4	Kid A	Art Rock, Experimental Rock, Electronic	cold, melancholic, futuristic, atmospheric, anxious, cryptic, sombre, abstract, introspective, male vocals	4.21	58590	734
5	To Pimp a Butterfly	Conscious Hip Hop, West Coast Hip Hop, Jazz Rap	political, conscious, poetic, protest, concept album, introspective, urban, male vocals, eclectic, passionate	4.27	44206	379
6	Loveless	Shoegaze, Noise Pop	noisy, ethereal, atmospheric, romantic, dense, hypnotic, love, psychedelic, lush, bittersweet	4.24	49887	1223
7	The Dark Side of the Moon	Art Rock, Progressive Rock	philosophical, atmospheric, introspective, existential, mellow, concept album, male vocals, psychedelic, progressive, epic	4.2	57622	1549
8	Abbey Road	Pop Rock	melodic, warm, male vocals, bittersweet, summer, uplifting, love, romantic, medley, happy	4.25	44544	961
9	The Velvet Underground & Nico	Art Rock, Experimental Rock	drugs, sexual, raw, urban, noisy, nihilistic, avant-garde, male vocals, eclectic, female vocals	4.23	45570	929
10	The Rise and Fall of Ziggy Stardust and the Spiders From Mars	Glam Rock, Pop Rock	science fiction, melodic, anthemic, concept album, passionate, male vocals, rock opera, bittersweet, energetic, triumphant	4.26	39501	721
11	Revolver	Pop Rock, Psychedelic Pop	psychedelic, melodic, male vocals, drugs, eclectic, warm, playful, quirky, happy, surreal	4.23	43178	1160
12	Madvillainy	Abstract Hip Hop	sampling, playful, cryptic, humorous, abstract, mysterious, eclectic, surreal, male vocals, boastful	4.26	35573	376
13	Remain in Light	New Wave, Post-Punk	rhythmic, anxious, energetic, male vocals, playful, cryptic, abstract, quirky, philosophical, repetitive	4.25	36196	520
14	The Black Saint and the Sinner Lady	Avant-Garde Jazz, Third Stream	instrumental, complex, passionate, suite, dense, avant-garde, suspenseful, technical, concept album, manic	4.34	20251	365
15	In Rainbows	Art Rock, Alternative Rock	lush, male vocals, melancholic, introspective, bittersweet, warm, mellow, atmospheric, ethereal, longing	4.18	48484	756
16	A Love Supreme	Spiritual Jazz	passionate, spiritual, instrumental, improvisation, complex, suite, acoustic, meditative, avant-garde, religious	4.3	25040	433
17	good kid, m.A.A.d city	West Coast Hip Hop, Conscious Hip Hop	urban, crime, concept album, conscious, introspective, male vocals, passionate, existential, violence, bittersweet	4.2	38939	315
18	Paranoid	Heavy Metal, Hard Rock	heavy, dark, war, political, ominous, male vocals, drugs, science fiction, pessimistic, alienation	4.19	35870	582
19	Kind of Blue	Modal Jazz, Cool Jazz	instrumental, mellow, improvisation, nocturnal, soothing, calm, acoustic, meditative	4.23	29907	549
20	Pet Sounds	Baroque Pop	Wall of Sound, warm, bittersweet, love, romantic, melancholic, lush, melodic, introspective, vocal group	4.18	36305	727
21	Illmatic	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	urban, crime, introspective, sampling, philosophical, conscious, rhythmic, drugs, male vocals, boastful	4.2	30886	619
22	Lift Yr. Skinny Fists Like Antennas to Heaven!	Post-Rock	instrumental, epic, melancholic, atmospheric, apocalyptic, suspenseful, suite, sampling, complex, hypnotic	4.17	34973	612
23	In the Aeroplane Over the Sea	Indie Folk, Indie Rock	passionate, poetic, death, cryptic, surreal, bittersweet, acoustic, melodic, male vocals, love	4.09	47979	968
24	Sgt. Pepper's Lonely Hearts Club Band	Psychedelic Pop, Pop Rock	psychedelic, playful, melodic, male vocals, warm, optimistic, eclectic, lush, uplifting, drugs	4.13	43576	863
25	Enter the Wu-Tang (36 Chambers)	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	urban, aggressive, raw, crime, boastful, rhythmic, energetic, violence, dark, sampling	4.19	27579	425
26	Red	Progressive Rock, Art Rock	dark, anxious, heavy, technical, ominous, complex, uncommon time signatures, progressive, male vocals, nocturnal	4.21	23525	405
27	My Beautiful Dark Twisted Fantasy	Pop Rap, Hip Hop	epic, boastful, passionate, sampling, hedonistic, vulgar, melodic, anthemic, introspective, male vocals	4.07	48415	636
28	Pink Moon	Contemporary Folk, Singer/Songwriter	acoustic, melancholic, lonely, mellow, introspective, poetic, calm, male vocals, pastoral, soft	4.18	29572	536
29	Spiderland	Post-Rock, Post-Hardcore, Math Rock	lonely, anxious, sombre, uncommon time signatures, dark, suspenseful, melancholic, atmospheric, cryptic, ominous	4.15	32954	452
30	Disintegration	Gothic Rock, Post-Punk	melancholic, romantic, ethereal, atmospheric, nocturnal, sad, bittersweet, love, introspective, male vocals	4.17	29436	413
31	The Beatles [White Album]	Pop Rock, Rock	eclectic, melodic, playful, male vocals, quirky, energetic, introspective, love, sarcastic, rebellious	4.14	35545	1085
32	Unknown Pleasures	Post-Punk	sombre, dark, cold, anxious, introspective, lonely, atmospheric, existential, depressive, male vocals	4.11	39724	573
33	Animals	Progressive Rock, Art Rock	political, pessimistic, philosophical, sarcastic, concept album, progressive, satirical, male vocals, complex, atmospheric	4.13	36462	695
34	The Queen Is Dead	Jangle Pop, Indie Pop	lonely, melancholic, sarcastic, poetic, melodic, bittersweet, introspective, male vocals, humorous, longing	4.12	35400	530
35	Highway 61 Revisited	Folk Rock, Singer/Songwriter	poetic, cryptic, surreal, sarcastic, male vocals, passionate, conscious, rebellious, philosophical, introspective	4.17	26338	604
36	Doolittle	Alternative Rock, Indie Rock	energetic, anxious, playful, manic, humorous, male vocals, noisy, raw, rebellious, sarcastic	4.12	34101	548
37	Led Zeppelin [IV]	Hard Rock	fantasy, folklore, male vocals, energetic, passionate, rebellious, rhythmic, melodic, heavy, longing	4.1	35024	873
38	In a Silent Way	Jazz Fusion, Modal Jazz	instrumental, atmospheric, mellow, mysterious, nocturnal, improvisation, calm, soothing, meditative, hypnotic	4.21	17084	282
39	Low	Art Rock	atmospheric, futuristic, lonely, sombre, cryptic, abstract, male vocals, surreal, melancholic, cold	4.12	29055	518
40	Long Season	Dream Pop, Neo-Psychedelia, Progressive Pop, Space Rock	atmospheric, lush, repetitive, mellow, psychedelic, warm, aquatic, nature, melodic, androgynous vocals	4.17	20769	151
41	Marquee Moon	Art Punk, Post-Punk, Art Rock	male vocals, rhythmic, poetic, cryptic, technical, anxious, introspective, philosophical, existential, urban	4.13	25789	391
42	Dummy	Trip Hop	melancholic, mysterious, atmospheric, dark, nocturnal, mellow, introspective, female vocals, sampling, sombre	4.11	30000	398
43	Hounds of Love	Art Pop, Progressive Pop	female vocals, passionate, love, lush, romantic, ethereal, concept album, poetic, epic, melodic	4.15	22774	266
44	Blonde on Blonde	Folk Rock, Singer/Songwriter	poetic, surreal, cryptic, sarcastic, bittersweet, romantic, introspective, male vocals, playful, conscious	4.15	22207	457
45	F♯A♯∞	Post-Rock	apocalyptic, instrumental, atmospheric, sombre, dark, ominous, epic, lonely, suspenseful, melancholic	4.12	26700	361
46	The Doors	Psychedelic Rock	psychedelic, drugs, poetic, sexual, dark, male vocals, cryptic, hedonistic, mysterious, nocturnal	4.09	30746	563
47	Endtroducing.....	Instrumental Hip Hop, Experimental Hip Hop, Plunderphonics	sampling, instrumental, atmospheric, urban, mysterious, nocturnal, rhythmic, sombre, hypnotic, eclectic	4.11	26775	410
48	Bitches Brew	Jazz Fusion, Avant-Garde Jazz	psychedelic, instrumental, improvisation, dense, complex, mysterious, surreal, hypnotic, atmospheric, avant-garde	4.16	19070	321
49	Blood on the Tracks	Singer/Songwriter, Folk Rock	breakup, lonely, poetic, introspective, melancholic, love, male vocals, passionate, bittersweet, longing	4.16	19324	425
50	Close to the Edge	Symphonic Prog, Progressive Rock	epic, uplifting, complex, technical, progressive, fantasy, uncommon time signatures, male vocals, lush, optimistic	4.13	21728	454
51	Souvlaki	Dream Pop, Shoegaze	melancholic, ethereal, mellow, romantic, atmospheric, female vocals, soothing, male vocals, sentimental, bittersweet	4.09	28685	297
52	Master of Reality	Heavy Metal	heavy, dark, male vocals, rhythmic, sombre, nocturnal, drugs, alienation, ominous, anthemic	4.12	24271	446
53	Vespertine	Art Pop, Electronic	sensual, romantic, winter, sexual, ethereal, atmospheric, lush, introspective, female vocals, soothing	4.13	23181	261
54	Closer	Post-Punk	lonely, sombre, depressive, cold, dark, introspective, atmospheric, anxious, existential, pessimistic	4.09	28898	558
55	The Low End Theory	Jazz Rap, East Coast Hip Hop, Conscious Hip Hop	rhythmic, mellow, urban, male vocals, sampling, conscious, boastful, playful, poetic, nocturnal	4.12	24090	290
56	The Glow Pt. 2	Indie Folk, Psychedelic Folk, Lo-Fi / Slacker Rock	lonely, lo-fi, melancholic, nature, atmospheric, introspective, forest, male vocals, noisy, existential	4.11	23997	275
57	Are You Experienced	Blues Rock, Psychedelic Rock, Acid Rock	psychedelic, energetic, sexual, drugs, raw, male vocals, hedonistic, heavy, passionate, hypnotic	4.12	23265	512
58	Electric Ladyland	Blues Rock, Psychedelic Rock, Acid Rock	psychedelic, drugs, surreal, energetic, sexual, sensual, passionate, raw, male vocals, summer	4.14	19551	435
59	Songs in the Key of Life	Soul	uplifting, male vocals, passionate, warm, optimistic, philosophical, happy, melodic, romantic, conscious	4.18	12151	242
60	Atrocity Exhibition	Experimental Hip Hop, Hardcore Hip Hop	drugs, dark, manic, abstract, psychedelic, male vocals, chaotic, eclectic, sexual, anxious	4.08	25353	193
61	Songs of Leonard Cohen	Contemporary Folk, Singer/Songwriter	poetic, sombre, acoustic, melancholic, introspective, philosophical, male vocals, love, serious, mysterious	4.14	17166	289
62	The Money Store	Industrial Hip Hop, Hardcore Hip Hop, Experimental Hip Hop	aggressive, manic, energetic, angry, noisy, nihilistic, crime, raw, drugs, misanthropic	4.02	36403	311
63	Illinois	Chamber Pop, Singer/Songwriter	lush, melodic, Christian, concept album, warm, male vocals, bittersweet, history, sentimental, poetic	4.07	27355	403
64	Homogenic	Art Pop, Electronic	cold, passionate, ethereal, lush, female vocals, atmospheric, introspective, anxious, winter, romantic	4.07	27655	310
65	Soundtracks for the Blind	Experimental Rock, Post-Rock, Experimental	sombre, atmospheric, ominous, dark, misanthropic, lonely, mysterious, disturbing, depressive, suspenseful	4.11	17440	220
66	Either / Or	Singer/Songwriter, Indie Folk	melancholic, mellow, acoustic, depressive, introspective, lonely, melodic, male vocals, bittersweet, sombre	4.1	22173	275
67	Laughing Stock	Post-Rock	atmospheric, sombre, religious, spiritual, introspective, improvisation, sparse, melancholic, autumn, male vocals	4.11	18467	287
68	The College Dropout	Chipmunk Soul, Pop Rap	humorous, playful, male vocals, conscious, passionate, sampling, boastful, satirical, warm, sarcastic	4.03	34739	272
69	Daydream Nation	Noise Rock, Alternative Rock	energetic, anxious, raw, rebellious, noisy, urban, male vocals, female vocals, dissonant, apathetic	4.05	27963	499
70	Liquid Swords	East Coast Hip Hop, Hardcore Hip Hop, Boom Bap	dark, crime, urban, atmospheric, philosophical, cold, raw, rhythmic, sampling, male vocals	4.11	17308	329
71	Blonde	Alternative R&B, Art Pop, Neo-Soul	introspective, LGBT, bittersweet, mellow, sexual, atmospheric, drugs, sensual, male vocals, romantic	4.04	29807	289
72	The Velvet Underground	Pop Rock	mellow, melancholic, bittersweet, melodic, introspective, male vocals, nocturnal, soft, alienation, love	4.09	22144	399
73	Rubber Soul	Pop Rock	melodic, love, male vocals, bittersweet, romantic, mellow, autumn, melancholic, eclectic, happy	4.03	33508	721
74	What's Going On	Soul	political, passionate, conscious, mellow, male vocals, lush, melodic, spiritual, warm, Christian	4.11	18776	341
75	★ [Blackstar]	Art Rock	dark, death, introspective, poetic, male vocals, melancholic, concept album, sad, funereal, anxious	4.06	25408	297
76	Ride the Lightning	Thrash Metal	heavy, energetic, aggressive, male vocals, dark, death, angry, apocalyptic, melodic, cold	4.05	27615	546
77	Station to Station	Art Rock	drugs, anxious, lonely, introspective, male vocals, cryptic, alienation, melodic, passionate, nocturnal	4.09	21019	358
78	Black Sabbath	Heavy Metal, Hard Rock	occult, dark, fantasy, ominous, sombre, heavy, male vocals, psychedelic, funereal, mysterious	4.06	24945	559
79	Magical Mystery Tour	Psychedelic Pop, Pop Rock	psychedelic, melodic, playful, surreal, male vocals, lush, summer, quirky, bittersweet, uplifting	4.06	27318	560
80	Tago Mago	Krautrock, Psychedelic Rock, Experimental Rock	psychedelic, surreal, improvisation, hypnotic, avant-garde, rhythmic, cryptic, abstract, complex, repetitive	4.07	22071	479
81	Bringing It All Back Home	Folk Rock, Singer/Songwriter, Contemporary Folk	poetic, sarcastic, satirical, male vocals, surreal, conscious, political, cryptic, protest, humorous	4.11	16718	386
82	Heaven or Las Vegas	Dream Pop	ethereal, atmospheric, warm, female vocals, lush, soothing, romantic, cryptic, sensual, mellow	4.08	22107	205
83	After the Gold Rush	Folk Rock, Singer/Songwriter, Country Rock	introspective, melancholic, mellow, lonely, poetic, pastoral, bittersweet, male vocals, calm, autumn	4.09	18452	380
84	Aquemini	Southern Hip Hop, Conscious Hip Hop	conscious, male vocals, lush, boastful, urban, mellow, introspective, warm, rhythmic, uplifting	4.11	16064	158
85	Future Days	Krautrock	warm, hypnotic, atmospheric, rhythmic, tropical, mellow, summer, psychedelic, improvisation, aquatic	4.11	16295	248
86	Ágætis byrjun	Post-Rock	ethereal, atmospheric, soothing, melancholic, mellow, winter, calm, lush, bittersweet, androgynous vocals	4.04	26732	496
87	Fun House	Proto-Punk, Garage Rock, Hard Rock	energetic, raw, sexual, manic, rebellious, hedonistic, aggressive, noisy, drugs, nihilistic	4.09	17795	451
88	Hunky Dory	Glam Rock, Pop Rock, Art Rock	playful, melodic, quirky, male vocals, warm, lush, melancholic, sarcastic, introspective, humorous	4.04	27512	510
89	Rain Dogs	Singer/Songwriter, Experimental Rock	poetic, eclectic, urban, surreal, alcohol, nocturnal, male vocals, crime, mysterious, dark	4.07	19301	354
90	London Calling	New Wave, Punk Rock	political, energetic, rebellious, eclectic, male vocals, rhythmic, passionate, conscious, urban, anthemic	4.01	28704	747
91	Selected Ambient Works 85-92	Ambient Techno, IDM	atmospheric, ethereal, futuristic, instrumental, hypnotic, soothing, mellow, rhythmic, calm, mysterious	4.03	27921	300
92	Midnight Marauders	East Coast Hip Hop, Jazz Rap, Boom Bap	rhythmic, urban, nocturnal, mellow, playful, male vocals, sampling, boastful, poetic, sarcastic	4.1	15949	172
93	Funeral	Indie Rock, Chamber Pop	passionate, death, melancholic, bittersweet, melodic, autumn, uplifting, poetic, romantic, male vocals	3.97	37023	837
94	Master of Puppets	Thrash Metal	aggressive, heavy, angry, energetic, male vocals, rebellious, political, serious, uncommon time signatures, progressive	4	30780	730
95	Carrie & Lowell	Indie Folk, Singer/Songwriter	death, melancholic, sad, acoustic, peaceful, poetic, soft, introspective, male vocals, melodic	4.04	21983	214
96	Purple Rain	Pop Rock, Film Soundtrack, Synth Funk	playful, sexual, energetic, sensual, melodic, love, romantic, rhythmic, male vocals, passionate	4.07	16754	313
97	White Light / White Heat	Experimental Rock, Noise Rock, Proto-Punk	drugs, noisy, sexual, raw, lo-fi, dissonant, energetic, chaotic, male vocals, hedonistic	4.03	24274	503
98	Innervisions	Soul	political, male vocals, passionate, romantic, warm, melodic, soft, urban, conscious, religious	4.11	12323	242
99	Giant Steps	Hard Bop	instrumental, energetic, technical, improvisation, acoustic, playful, rhythmic, complex, uncommon time signatures, passionate	4.1	13880	192
100	Donuts	Instrumental Hip Hop	sampling, instrumental, eclectic, playful, bittersweet, repetitive, rhythmic, urban, warm, longing	4.06	18830	260
101	Spirit of Eden	Post-Rock	atmospheric, passionate, religious, peaceful, introspective, male vocals, meditative, spiritual, soothing, bittersweet	4.06	17711	222
102	Hot Rats	Jazz-Rock, Jazz Fusion	complex, playful, energetic, technical, instrumental, dense, progressive, surreal, eclectic, quirky	4.06	19109	359
103	On the Beach	Singer/Songwriter, Country Rock, Folk Rock	melancholic, introspective, lonely, sombre, mellow, male vocals, sentimental, poetic, depressive, alienation	4.09	13069	324
104	Odessey and Oracle	Psychedelic Pop, Baroque Pop	melodic, love, psychedelic, bittersweet, romantic, peaceful, male vocals, spring, mellow, melancholic	4.08	15652	419
105	Mezzanine	Trip Hop	dark, nocturnal, atmospheric, mysterious, urban, anxious, hypnotic, melancholic, suspenseful, female vocals	4.03	24011	333
106	Mm.. Food	East Coast Hip Hop, Abstract Hip Hop	sampling, concept album, playful, humorous, abstract, male vocals, quirky, alcohol, drugs, rhythmic	4.06	19641	141
107	Nevermind	Grunge, Alternative Rock	energetic, rebellious, angry, male vocals, apathetic, sarcastic, alienation, anxious, passionate, self-hatred	3.92	43418	996
108	Hatful of Hollow	Jangle Pop, Indie Pop	melancholic, melodic, lonely, introspective, male vocals, bittersweet, romantic, poetic, sentimental, existential	4.07	14529	94
109	In utero	Grunge, Alternative Rock	raw, noisy, sarcastic, angry, pessimistic, rebellious, anxious, dissonant, male vocals, introspective	3.97	33098	535
110	Symbolic	Technical Death Metal	philosophical, complex, introspective, passionate, technical, existential, heavy, progressive, male vocals, melodic	4.07	13925	215
111	Twin Peaks	Television Music, Dark Jazz	mysterious, nocturnal, ominous, atmospheric, suspenseful, surreal, mellow, dark, ethereal, melancholic	4.11	9824	85
112	My Favorite Things	Modal Jazz, Post-Bop	instrumental, warm, improvisation, passionate, technical, bittersweet, playful, acoustic, uplifting, summer	4.1	11660	156
113	The Downward Spiral	Industrial Rock	misanthropic, suicide, angry, nihilistic, dark, depressive, self-hatred, concept album, aggressive, sexual	4.02	22864	412
114	Karma	Spiritual Jazz	spiritual, uplifting, passionate, religious, avant-garde, epic, male vocals, psychedelic, warm, hypnotic	4.11	9414	145
115	Deathconsciousness	Post-Punk, Shoegaze	depressive, dark, sombre, atmospheric, suicide, lo-fi, misanthropic, death, nihilistic, existential	4.01	22552	286
116	The Lonesome Crowded West	Indie Rock	anxious, angry, lonely, existential, sarcastic, passionate, raw, alcohol, male vocals, nihilistic	4.05	17404	248
117	Mingus Ah Um	Post-Bop	instrumental, energetic, passionate, playful, improvisation, acoustic, uplifting, melodic, complex, quirky	4.09	12046	171
118	Late Registration	Hip Hop, Pop Rap	warm, humorous, sampling, passionate, male vocals, conscious, lush, introspective, uplifting, energetic	3.98	30906	230
119	Velocity : Design : Comfort	Glitch Pop, IDM, Shoegaze	futuristic, playful, mechanical, atmospheric, abstract, ethereal, female vocals, lush, love, surreal	4.04	16433	181
120	Five Leaves Left	Singer/Songwriter, Chamber Folk, Contemporary Folk	mellow, lonely, melancholic, peaceful, poetic, introspective, melodic, acoustic, pastoral, autumn	4.04	16693	282
121	Everybody Knows This Is Nowhere	Country Rock, Singer/Songwriter	bittersweet, pastoral, melancholic, male vocals, raw, melodic, romantic, sentimental, warm, introspective	4.06	12867	289
122	The Infamous	East Coast Hip Hop, Gangsta Rap, Boom Bap	crime, urban, dark, violence, atmospheric, rhythmic, sampling, male vocals, cold, nocturnal	4.06	11102	189
123	Clube da Esquina	MPB	male vocals, passionate, lush, bittersweet, eclectic, melodic, warm, summer, tropical, poetic	4.1	8084	88
124	Pornography	Gothic Rock, Post-Punk	dark, cold, sombre, depressive, atmospheric, male vocals, nihilistic, anxious, ominous, pessimistic	4.01	20429	287
125	Another Green World	Art Rock	peaceful, mysterious, atmospheric, surreal, meditative, calm, male vocals, futuristic, sombre, optimistic	4.02	18371	309
126	The Kinks Are the Village Green Preservation Society	Pop Rock	warm, melodic, bittersweet, summer, pastoral, quirky, male vocals, sentimental, playful, concept album	4.05	12546	325
127	Il buono, il brutto, il cattivo	Film Score, Spaghetti Western	epic, desert, suspenseful, atmospheric, instrumental, triumphant, martial, mysterious, sombre, warm	4.11	5125	83
128	Led Zeppelin	Hard Rock, Blues Rock	energetic, heavy, raw, male vocals, sexual, passionate, rebellious, hedonistic, rhythmic, boastful	3.95	28288	582
129	Rumours	Pop Rock, Soft Rock	breakup, bittersweet, melodic, female vocals, male vocals, mellow, melancholic, passionate, soft, warm	3.99	20503	390
130	Since I Left You	Plunderphonics, Dance	summer, sampling, tropical, warm, party, eclectic, rhythmic, uplifting, energetic, bittersweet	3.99	21290	273
131	Sticky Fingers	Blues Rock	drugs, sexual, male vocals, energetic, rebellious, hedonistic, melodic, passionate, raw	4.02	16486	377
132	ATLiens	Southern Hip Hop	mellow, urban, atmospheric, male vocals, conscious, science fiction, philosophical, nocturnal, drugs, rhythmic	4.05	13241	121
133	Forever Changes	Psychedelic Pop, Psychedelic Rock, Psychedelic Folk	psychedelic, philosophical, melodic, summer, bittersweet, warm, existential, introspective, conscious, poetic	4.01	18292	527
134	Ege Bamyası	Krautrock	rhythmic, atmospheric, hypnotic, cryptic, surreal, male vocals, psychedelic, mysterious, avant-garde, improvisation	4.03	16889	239
135	Rust in Peace	Thrash Metal	political, energetic, war, technical, male vocals, aggressive, heavy, complex, apocalyptic, conscious	4	18044	566
136	All Things Must Pass	Pop Rock, Singer/Songwriter, Folk Rock	Wall of Sound, spiritual, uplifting, introspective, religious, existential, melodic, passionate, male vocals, autumn	4.05	11874	329
137	Superfly	Film Soundtrack, Chicago Soul, Funk	urban, rhythmic, drugs, crime, passionate, male vocals, conscious, melodic, political, concept album	4.07	8717	150
138	Raw Power	Proto-Punk, Garage Rock, Hard Rock	raw, energetic, sexual, noisy, rebellious, heavy, hedonistic, lo-fi, male vocals, nihilistic	4.02	15168	376
139	Meddle	Progressive Rock	mellow, psychedelic, atmospheric, mysterious, progressive, male vocals, calm, surreal, hypnotic, epic	3.96	27730	531
140	Music for 18 Musicians	Minimalism	repetitive, hypnotic, rhythmic, minimalistic, atmospheric, ethereal, soothing, female vocals, polyphonic, avant-garde	4.06	9251	142
141	Silent Hill 2	Video Game Music, Ambient	sombre, dark, melancholic, lonely, ominous, cold, surreal, atmospheric, instrumental, scary	4.09	5219	74
142	To Be Kind	Experimental Rock, Post-Rock	epic, repetitive, atmospheric, noisy, aggressive, heavy, male vocals, hypnotic, ominous, misanthropic	3.98	20405	267
143	Blue	Singer/Songwriter, Contemporary Folk	acoustic, melancholic, female vocals, breakup, melodic, bittersweet, sentimental, romantic, love, mellow	4.03	15123	308
144	Ready to Die	East Coast Hip Hop, Gangsta Rap, Boom Bap	crime, boastful, vulgar, sexual, urban, drugs, nihilistic, death, rhythmic, male vocals	4.02	14846	240
145	Songs of Love and Hate	Singer/Songwriter, Contemporary Folk	acoustic, melancholic, poetic, sombre, dark, introspective, male vocals, sparse, pessimistic, depressive	4.05	11892	187
146	Fear of Music	New Wave, Post-Punk	anxious, rhythmic, sarcastic, energetic, playful, male vocals, quirky, urban, abstract, surreal	4.01	18715	247
147	Larks' Tongues in Aspic	Progressive Rock	uncommon time signatures, complex, technical, anxious, progressive, avant-garde, male vocals, philosophical, cryptic, dissonant	4.02	15814	284
148	Is This It	Indie Rock, Garage Rock Revival	male vocals, energetic, urban, melodic, apathetic, rebellious, raw, bittersweet, rhythmic, love	3.92	31700	518
149	Journey in Satchidananda	Spiritual Jazz	instrumental, meditative, hypnotic, spiritual, psychedelic, avant-garde, ethereal, improvisation, warm, lush	4.07	8029	83
150	Turn On the Bright Lights	Post-Punk Revival	urban, melancholic, atmospheric, anxious, nocturnal, introspective, male vocals, dark, romantic, rhythmic	3.95	26724	490
151	Violator	Synthpop	dark, sombre, romantic, sensual, male vocals, nocturnal, melodic, atmospheric, rhythmic, passionate	3.99	19055	347
152	Ys	Chamber Folk, Singer/Songwriter, Progressive Folk	poetic, passionate, pastoral, complex, female vocals, spring, lush, melodic, warm, progressive	3.99	16255	297
153	The Dreaming	Art Pop, Progressive Pop	manic, playful, female vocals, anxious, complex, surreal, quirky, progressive, eclectic, avant-garde	4.03	12732	224
154	Led Zeppelin II	Hard Rock, Blues Rock	energetic, sexual, heavy, male vocals, raw, hedonistic, boastful, passionate, rebellious, rhythmic	3.94	26422	583
155	"Heroes"	Art Rock	futuristic, atmospheric, male vocals, anxious, abstract, cold, progressive, complex, mysterious, passionate	3.97	22443	292
156	Selling England by the Pound	Progressive Rock, Symphonic Prog	epic, medieval, complex, satirical, melodic, pastoral, uncommon time signatures, male vocals, philosophical, progressive	4	14827	321
157	Music Has the Right to Children	IDM, Downtempo	atmospheric, mellow, hypnotic, mysterious, instrumental, rhythmic, psychedelic, warm, sampling, repetitive	3.96	22253	298
158	Grace	Singer/Songwriter, Alternative Rock	melancholic, passionate, bittersweet, romantic, love, introspective, male vocals, poetic, existential, sad	3.97	21522	559
159	Harvest	Country Rock, Folk Rock, Singer/Songwriter	pastoral, bittersweet, warm, autumn, melodic, male vocals, sentimental, mellow, introspective, longing	4	16539	336
160	Sign "☮︎" the Times	Contemporary R&B, Pop Rock, Funk Rock	eclectic, sexual, playful, passionate, male vocals, warm, rhythmic, sensual, androgynous vocals, love	4.03	9040	191
161	Cosmo's Factory	Swamp Rock	energetic, male vocals, melodic, passionate, political, raw, conscious, playful	4.04	10223	221
162	Discovery	French House	energetic, futuristic, party, sampling, playful, rhythmic, happy, repetitive, male vocals, optimistic	3.94	26062	282
163	Perfect From Now On	Indie Rock	bittersweet, philosophical, male vocals, melancholic, atmospheric, introspective, complex, melodic, anxious, existential	4.01	12754	161
164	Siamese Dream	Alternative Rock	bittersweet, melancholic, dense, introspective, male vocals, melodic, noisy, passionate, alienation, heavy	3.96	22668	467
2341	Wishbone Ash	Hard Rock, Blues Rock	male vocals, energetic, progressive	3.76	1782	54
165	Rage Against the Machine	Rap Metal, Alternative Metal	political, protest, aggressive, angry, rebellious, energetic, male vocals, heavy, conscious, rhythmic	3.94	22122	439
166	Igor	Neo-Soul, Psychedelic Soul	breakup, LGBT, male vocals, love, concept album, warm, lush, sentimental, longing, melodic	3.91	32167	307
167	If You're Feeling Sinister	Chamber Pop, Twee Pop, Indie Pop	bittersweet, warm, melancholic, romantic, soft, melodic, poetic, sentimental, mellow, lush	3.97	18117	332
168	Powerslave	Heavy Metal	energetic, epic, history, melodic, male vocals, triumphant, anthemic, violence, war, rhythmic	3.98	15660	315
169	Surfer Rosa	Indie Rock, Alternative Rock	energetic, raw, humorous, playful, noisy, male vocals, female vocals, anxious, chaotic, manic	3.94	24269	368
170	Lateralus	Alternative Metal, Progressive Metal	uncommon time signatures, philosophical, complex, existential, progressive, introspective, male vocals, heavy, mysterious, atmospheric	3.92	21841	459
171	Piñata	Gangsta Rap	crime, urban, drugs, boastful, sampling, violence, male vocals, vulgar, lush, aggressive	3.99	17243	118
172	Painkiller	Heavy Metal	energetic, male vocals, fantasy, epic, science fiction, anthemic, apocalyptic, heavy, melodic, war	4	10710	254
173	Reign in Blood	Thrash Metal	aggressive, satanic, death, anti-religious, heavy, angry, manic, energetic, violence, male vocals	3.95	18954	608
174	The Stone Roses	Baggy / Madchester	melodic, psychedelic, uplifting, energetic, rhythmic, playful, male vocals, summer, optimistic, hypnotic	3.98	17367	401
175	Who's Next	Hard Rock	energetic, uplifting, passionate, melodic, male vocals, anthemic, rebellious, triumphant, bittersweet, love	3.96	18737	529
176	Exile on Main St.	Blues Rock, Rock	sexual, playful, male vocals, rebellious, energetic, raw, drugs, hedonistic, alcohol, passionate	3.98	14694	321
177	Blue Train	Hard Bop	instrumental, improvisation, energetic, acoustic, melodic, uplifting, technical, nocturnal, rhythmic, urban	4.02	11978	139
178	Crooked Rain, Crooked Rain	Indie Rock	playful, bittersweet, melodic, summer, satirical, sarcastic, cryptic, male vocals, melancholic, energetic	3.96	17833	268
179	Acabou chorare	MPB, Samba	happy, playful, summer, energetic, warm, uplifting, tropical, melodic, male vocals, female vocals	4.06	5131	60
180	Let It Bleed	Blues Rock	sexual, rebellious, male vocals, raw, hedonistic, energetic, bittersweet, melodic, passionate, warm	3.98	15851	375
181	Sabbath Bloody Sabbath	Heavy Metal, Hard Rock	male vocals, heavy, philosophical, progressive, introspective, pessimistic, ominous, eclectic, energetic, sombre	3.98	15491	326
182	Weezer [Blue Album]	Power Pop, Alternative Rock	melodic, energetic, male vocals, summer, bittersweet, lonely, passionate, playful, introspective, anthemic	3.89	29096	481
183	You Will Never Know Why	Indie Pop, Dream Pop	melancholic, ethereal, bittersweet, female vocals, melodic, soothing, mellow, male vocals, love, lush	4.02	10222	69
184	Art Blakey and The Jazz Messengers [Moanin']	Hard Bop	instrumental, improvisation, rhythmic, acoustic, passionate, warm, energetic, melodic, playful, technical	4.04	7116	101
185	Astral Weeks	Singer/Songwriter, Chamber Folk	passionate, warm, acoustic, romantic, poetic, introspective, pastoral, lush, spring, bittersweet	3.98	14282	424
186	Thick as a Brick	Progressive Rock	satirical, complex, epic, male vocals, concept album, suite, progressive, sarcastic, technical, poetic	4	11622	254
187	The Bends	Alternative Rock	melancholic, lonely, anxious, introspective, melodic, bittersweet, male vocals, existential, alienation, longing	3.83	46351	789
188	Songs for the Deaf	Stoner Rock, Alternative Rock	desert, energetic, concept album, male vocals, drugs, heavy, summer, psychedelic, rhythmic, melodic	3.94	22755	346
189	Leaves Turn Inside You	Post-Hardcore, Indie Rock	sombre, mysterious, cold, melancholic, cryptic, male vocals, lonely, atmospheric, autumn, hypnotic	3.99	11437	135
190	Untrue	Future Garage, Dubstep	urban, atmospheric, lonely, nocturnal, melancholic, cold, sampling, dark, mysterious, rain	3.94	20917	309
191	Fresh Fruit for Rotting Vegetables	Hardcore Punk, Punk Rock	political, satirical, sarcastic, energetic, humorous, rebellious, raw, manic, male vocals, aggressive	3.97	14897	281
192	First Utterance	Progressive Folk, Psychedelic Folk, Freak Folk	pagan, psychedelic, manic, ritualistic, forest, folklore, dark, progressive, occult, disturbing	4	10426	231
193	The End of Evangelion	Film Score, Orchestral, Modern Classical	apocalyptic, ethereal, orchestral, suspenseful, epic, spiritual, love, melancholic, death, depressive	4.06	1997	12
194	Die Mensch-Maschine	Synthpop, Electronic	mechanical, futuristic, science fiction, repetitive, male vocals, hypnotic, melodic, minimalistic, atmospheric, cold	3.97	15867	214
195	The Freewheelin' Bob Dylan	Contemporary Folk, Singer/Songwriter	acoustic, poetic, male vocals, political, protest, conscious, mellow, introspective, autumn, humorous	3.97	16522	367
196	A Charlie Brown Christmas	Christmas Music, Cool Jazz, Television Music	Christmas, winter, instrumental, peaceful, soothing, sentimental, warm, acoustic, melodic, mellow	4.03	5632	127
197	Flower Boy	West Coast Hip Hop	introspective, lonely, LGBT, lush, warm, male vocals, summer, longing, love, bittersweet	3.9	29598	194
198	Expensive Shit	Afrobeat	rhythmic, energetic, protest, repetitive, passionate, rebellious, conscious, male vocals, tropical, female vocals	4.03	7347	76
199	Swordfishtrombones	Singer/Songwriter, Experimental Rock	poetic, dark, avant-garde, surreal, atmospheric, urban, eclectic, male vocals, passionate, alcohol	3.99	12242	186
200	Arthur or the Decline and Fall of the British Empire	Pop Rock	history, satirical, melodic, concept album, sarcastic, war, male vocals, rock opera, quirky, bittersweet	4.02	7444	191
201	Blues & Roots	Post-Bop	improvisation, instrumental, energetic, passionate, acoustic, uplifting, warm, playful, spiritual, chaotic	4.03	6238	114
202	Symphony No. 9	Symphony, Romanticism	symphony, choral, orchestral, acoustic, triumphant, uplifting, melodic, passionate, epic, complex	4.06	1430	10
203	Curtis	Chicago Soul	conscious, political, passionate, uplifting, warm, rhythmic, male vocals, lush, optimistic, sentimental	4.03	7316	107
204	Get Up With It	Jazz Fusion, Jazz-Funk	hypnotic, psychedelic, atmospheric, surreal, instrumental, repetitive, suspenseful, rhythmic, avant-garde, chaotic	4.03	5364	93
205	Geogaddi	IDM	mysterious, psychedelic, atmospheric, ominous, surreal, hypnotic, melancholic, dark, sampling, instrumental	3.96	16637	191
206	Axis: Bold as Love	Psychedelic Rock, Blues Rock	psychedelic, surreal, male vocals, energetic, passionate, warm, sexual, summer, hedonistic, philosophical	3.97	15174	309
207	A Moon Shaped Pool	Art Pop, Art Rock, Chamber Pop	atmospheric, melancholic, sombre, introspective, lush, mellow, male vocals, mysterious, soft, sad	3.89	29246	279
208	Dopethrone	Stoner Metal, Doom Metal	heavy, drugs, occult, psychedelic, nihilistic, noisy, dense, misanthropic, male vocals, raw	3.97	13765	226
209	We got it from Here… Thank You 4 Your service	Conscious Hip Hop, East Coast Hip Hop, Jazz Rap	political, conscious, bittersweet, urban, sampling, mellow, male vocals, death, rhythmic, melancholic	3.98	13243	99
210	Physical Graffiti	Hard Rock	energetic, male vocals, rhythmic, eclectic, epic, melodic, raw, passionate, longing, sexual	3.94	18696	464
211	Treasure	Dream Pop, Ethereal Wave	ethereal, atmospheric, mysterious, cryptic, female vocals, melodic, lush, nocturnal, surreal, hypnotic	3.96	15715	220
212	Discipline	Art Rock, Progressive Rock, New Wave	uncommon time signatures, complex, technical, rhythmic, anxious, progressive, male vocals, energetic, abstract, cryptic	3.97	14283	229
213	Minecraft: Volume Alpha	Video Game Music, Ambient	peaceful, atmospheric, mellow, soothing, lonely, instrumental, melancholic, meditative, soft, ethereal	4	9787	92
214	Dirt	Grunge, Alternative Metal	drugs, heavy, depressive, pessimistic, angry, dark, male vocals, self-hatred, sombre, anxious	3.93	18181	452
215	Sometimes I Might Be Introvert	UK Hip Hop, Conscious Hip Hop	lush, orchestral, introspective, female vocals, conscious, eclectic, uplifting, warm, rhythmic, epic	4	9427	101
216	A Tribute to Jack Johnson	Jazz Fusion, Jazz-Rock, Film Score	energetic, improvisation, instrumental, psychedelic, hypnotic, mysterious, warm, rhythmic, progressive, technical	4.01	6329	141
217	Mercurial World	Synthpop, Dance-Pop	melodic, ethereal, playful, female vocals, lush, rhythmic, dense, bittersweet, sentimental, anthemic	4.06	1641	19
218	Jane Doe	Mathcore, Metalcore	angry, chaotic, manic, noisy, aggressive, passionate, breakup, heavy, technical, raw	3.93	13702	258
219	Mount Eerie	Avant-Folk, Psychedelic Folk	death, nature, atmospheric, spiritual, avant-garde, concept album, epic, ritualistic, lonely, existential	3.99	10753	96
220	Townes Van Zandt	Country, Singer/Songwriter, Contemporary Folk	melancholic, acoustic, pastoral, male vocals, poetic, sad, love, bittersweet, romantic, longing	4.01	6771	65
221	Yankee Hotel Foxtrot	Indie Rock	melancholic, bittersweet, male vocals, poetic, sentimental, atmospheric, autumn, melodic, introspective, love	3.92	21466	371
222	You Won't Get What You Want	Noise Rock, Industrial Rock	noisy, anxious, dark, male vocals, dissonant, manic, heavy, nihilistic, misanthropic, pessimistic	3.91	20251	241
223	Ænima	Alternative Metal	angry, philosophical, satirical, misanthropic, male vocals, aggressive, nihilistic, dark, sarcastic, heavy	3.91	19566	435
224	The Moon & Antarctica	Indie Rock	philosophical, existential, lonely, cold, anxious, sarcastic, melancholic, space, winter, atmospheric	3.95	16937	268
225	Thriller	Contemporary R&B, Pop, Dance-Pop	energetic, romantic, party, melodic, male vocals, rhythmic, playful, sensual, passionate, love	3.92	18323	310
226	Entertainment!	Post-Punk	political, anxious, rhythmic, energetic, sarcastic, rebellious, male vocals, conscious, protest, raw	3.96	14587	266
227	Blackwater Park	Progressive Metal	sombre, dark, atmospheric, male vocals, progressive, ominous, epic, heavy, melancholic, cold	3.93	14936	353
228	Seventh Son of a Seventh Son	Heavy Metal	epic, fantasy, melodic, male vocals, progressive, energetic, concept album, passionate, philosophical, anthemic	3.96	12006	272
229	Trans Europa Express	Electronic	futuristic, mechanical, repetitive, cold, male vocals, minimalistic, urban, hypnotic, atmospheric, rhythmic	3.97	13294	202
230	Post	Art Pop, Electronic	eclectic, playful, passionate, female vocals, futuristic, quirky, lush, melodic, atmospheric, abstract	3.91	23552	228
231	A Tábua de Esmeralda	MPB, Samba-rock	warm, tropical, uplifting, summer, male vocals, playful, lush, occult, happy, romantic	4.03	4871	79
232	Zombie	Afrobeat	protest, rhythmic, energetic, political, repetitive, passionate, conscious, rebellious, male vocals, war	4.02	5933	81
233	Born to Run	Heartland Rock	passionate, triumphant, energetic, melodic, male vocals, bittersweet, poetic, sentimental, epic, anthemic	3.96	13306	310
234	Human	Technical Death Metal, Death Metal	aggressive, technical, philosophical, complex, existential, male vocals, death, heavy, energetic, progressive	3.96	10826	159
235	The Seer	Experimental Rock, Post-Rock	apocalyptic, repetitive, ominous, epic, dark, mysterious, ritualistic, atmospheric, suspenseful, spiritual	3.93	16591	253
236	Maggot Brain	Funk Rock	psychedelic, passionate, apocalyptic, hypnotic, rhythmic, political, drugs, male vocals, philosophical, dark	3.96	13616	175
237	Pink Flag	Punk Rock, Art Punk	energetic, minimalistic, male vocals, raw, rebellious, sarcastic, cryptic, abstract, playful, quirky	3.93	16279	284
238	The Number of the Beast	NWOBHM, Heavy Metal	energetic, melodic, male vocals, heavy, passionate, anthemic, epic, history, war, rebellious	3.92	17495	447
239	Bryter Layter	Singer/Songwriter, Chamber Folk, Contemporary Folk	mellow, acoustic, poetic, lush, introspective, lonely, melodic, male vocals, bittersweet, melancholic	3.95	14924	257
240	"Chrono Trigger"	Video Game Music, 16-bit	epic, fantasy, instrumental, eclectic, atmospheric, science fiction, mysterious, melancholic, medieval, warm	4.01	1689	25
241	Head Hunters	Jazz Fusion, Jazz-Funk	rhythmic, instrumental, playful, energetic, happy, improvisation, uplifting, psychedelic, progressive, warm	3.96	12341	171
242	Foxtrot	Progressive Rock, Symphonic Prog	fantasy, epic, uncommon time signatures, philosophical, complex, male vocals, progressive, playful, melodic, quirky	3.97	10796	246
243	Bone Machine	Singer/Songwriter, Experimental Rock	dark, raw, nocturnal, death, manic, ominous, eclectic, male vocals, quirky, passionate	3.98	9452	171
244	Fragile	Progressive Rock	epic, complex, uncommon time signatures, progressive, technical, nature, male vocals, uplifting, lush, happy	3.93	16601	333
245	Cowboy Bebop CD-Box	Television Music, Jazz, Pop	eclectic, male vocals, melodic, female vocals, playful, improvisation, mysterious	4.03	594	6
246	Kyuss [Welcome to Sky Valley]	Stoner Rock, Stoner Metal	desert, heavy, dense, psychedelic, warm, male vocals, hypnotic, drugs, surreal, introspective	3.95	13331	224
247	Black on Both Sides	East Coast Hip Hop, Conscious Hip Hop	urban, conscious, poetic, political, passionate, male vocals, spiritual, rhythmic, boastful, uplifting	3.97	9943	145
248	Let Love In	Alternative Rock, Post-Punk	dark, love, passionate, atmospheric, poetic, anxious, ominous, death, male vocals, religious	3.95	12274	116
249	Deceit	Experimental Rock, Post-Punk	apocalyptic, anxious, war, political, dark, avant-garde, complex, male vocals, dissonant, chaotic	3.95	11638	147
250	C'era una volta il West	Film Score, Spaghetti Western	instrumental, epic, desert, suspenseful, orchestral, chamber music, passionate, lush, sentimental, pastoral	4.03	2383	44
251	Construção	MPB, Singer/Songwriter	political, poetic, urban, male vocals, conscious, existential, protest, passionate, melancholic, serious	4	4995	68
252	Strange Days	Psychedelic Rock	psychedelic, melancholic, mysterious, male vocals, cryptic, poetic, alienation, surreal, lonely, warm	3.94	16202	276
253	Beggars Banquet	Roots Rock, Rock	raw, rebellious, male vocals, hedonistic, passionate, warm, energetic, melodic, eclectic, acoustic	3.95	12884	299
254	The Shape of Jazz to Come	Avant-Garde Jazz	instrumental, passionate, improvisation, avant-garde, energetic, dissonant, complex, playful, technical, acoustic	3.98	9314	102
255	Out to Lunch	Avant-Garde Jazz	instrumental, uncommon time signatures, avant-garde, complex, dissonant, playful, rhythmic, anxious, improvisation, technical	3.98	8795	148
256	Donkey Kong Country 2: Diddy's Kong Quest	Video Game Music, 16-bit	forest, atmospheric, melancholic, instrumental, tribal, melodic, warm, ethereal, bittersweet, jingle	4.01	1449	16
257	Bridge Over Troubled Water	Folk Pop, Singer/Songwriter	melodic, soothing, warm, male vocals, mellow, soft, melancholic, love, autumn, poetic	3.96	11523	210
258	Still Life	Progressive Metal	concept album, melodic, complex, love, dark, heavy, progressive, passionate, male vocals, romantic	3.94	10365	213
259	Transformer	Glam Rock, Pop Rock	sexual, LGBT, drugs, urban, humorous, male vocals, melodic, bittersweet, hedonistic, deadpan	3.92	17591	295
260	Boris at Last -Feedbacker-	Drone Metal, Post-Metal, Drone, Noise Rock	noisy, atmospheric, heavy, epic, hypnotic, dense, repetitive, passionate, male vocals, progressive	3.94	11299	131
261	The Magnolia Electric Co.	Alt-Country, Country Rock	melancholic, introspective, poetic, passionate, sad, melodic, lonely, male vocals, longing, death	3.99	7259	88
262	ゼルダの伝説: ムジュラの仮面 (The Legend of Zelda: Majora's Mask)	Video Game Music, Sequencer & Tracker	ominous, dark, apocalyptic, atmospheric, ritualistic, sombre, melancholic, fantasy, instrumental, surreal	4.01	1265	10
263	Otis Blue: Otis Redding Sings Soul	Deep Soul, Southern Soul	passionate, male vocals, love, longing, romantic, melodic, raw, bittersweet, energetic, sad	3.99	6852	122
264	Ascension [Edition I]	Free Jazz, Spiritual Jazz	instrumental, dense, spiritual, chaotic, avant-garde, improvisation, passionate, complex, manic, dissonant	3.98	7123	118
265	Paul's Boutique	East Coast Hip Hop	sampling, energetic, humorous, urban, playful, sexual, male vocals, crime, boastful, complex	3.93	14433	250
266	ニンテンドーDS ポケモン ダイヤモンド&パール スーパーミュージックコレクション (Nintendo DS Pokémon Diamond & Pearl Super Music Collection)	Video Game Music, Sequencer & Tracker	soothing, instrumental, triumphant, happy, uplifting, playful, energetic, calm, melodic, eclectic	4.03	790	5
267	Houses of the Holy	Hard Rock	male vocals, energetic, eclectic, passionate, rhythmic, longing, melodic, uncommon time signatures, spring	3.9	19497	456
268	Here Come the Warm Jets	Art Rock, Experimental Rock, Glam Rock	playful, surreal, quirky, male vocals, manic, abstract, energetic, eclectic, sarcastic, humorous	3.94	12601	228
269	Tabula rasa	Minimalism, Modern Classical	melancholic, instrumental, passionate, atmospheric, mysterious, spiritual, minimalistic, acoustic, sparse, meditative	3.98	5301	86
270	The Legend of Zelda [Ocarina of Time]	Video Game Music, Sequencer & Tracker	fantasy, epic, ominous, atmospheric, instrumental, forest, nature, mysterious, folklore, eclectic	4.01	1763	29
271	The Piper at the Gates of Dawn	Psychedelic Rock, Psychedelic Pop	psychedelic, drugs, fantasy, surreal, playful, abstract, cryptic, male vocals, quirky, hypnotic	3.86	28446	691
272	Sound of Silver	Dance-Punk, Indietronica	energetic, rhythmic, repetitive, bittersweet, sarcastic, urban, male vocals, introspective, quirky, playful	3.9	18340	227
273	Black Sabbath Vol. 4	Heavy Metal, Hard Rock	heavy, drugs, male vocals, rhythmic, sombre, dark, alienation, introspective, psychedelic, nocturnal	3.92	15471	299
274	Machine Head	Hard Rock	energetic, heavy, male vocals, melodic, passionate, rhythmic, technical, anthemic, playful	3.93	12290	325
275	Tonight's the Night	Country Rock, Singer/Songwriter, Folk Rock	introspective, death, drugs, raw, sombre, male vocals, lonely, dark, alcohol, alienation	3.96	8876	212
276	Moment of Truth	East Coast Hip Hop, Boom Bap	urban, optimistic, male vocals, philosophical, conscious, sampling, melodic, rhythmic, uplifting, introspective	3.98	5515	93
277	Symphonie Nr.5	Symphony, Romanticism	instrumental, acoustic, triumphant, epic, orchestral, energetic, passionate, lush, symphony, complex	4.02	1008	7
278	Moondance	Singer/Songwriter, Folk Rock	romantic, warm, mellow, pastoral, male vocals, acoustic, passionate, spiritual, poetic, autumn	3.96	9271	241
279	Moving Pictures	Progressive Rock, Hard Rock	complex, male vocals, energetic, melodic, progressive, uncommon time signatures, science fiction, technical, optimistic, philosophical	3.91	14725	313
280	Aja	Jazz-Rock, Pop Rock	mellow, lush, soft, warm, male vocals, complex, nocturnal, bittersweet, melodic, technical	3.94	10641	245
281	The Lamb Lies Down on Broadway	Progressive Rock, Rock Opera	surreal, complex, rock opera, uncommon time signatures, male vocals, fantasy, melodic, suspenseful, progressive, poetic	3.95	9054	265
282	宇宙 日本 世田谷 (Uchū Nippon Setagaya)	Dream Pop, Downtempo, Ambient Pop	soothing, mellow, atmospheric, lush, warm, peaceful, playful, androgynous vocals, bittersweet, nocturnal	3.97	8320	50
283	Let My Children Hear Music	Third Stream, Experimental Big Band, Avant-Garde Jazz	instrumental, energetic, avant-garde, complex, dense, improvisation, progressive, technical, passionate, suspenseful	4	4371	53
284	Twin Peaks: Fire Walk With Me	Film Score, Dark Jazz	nocturnal, dark, atmospheric, surreal, mysterious, suspenseful, instrumental, melancholic, eclectic, romantic	4.01	2939	16
285	Mother 2: ギーグの逆襲	Video Game Music, 16-bit	quirky, atmospheric, eclectic, surreal, sampling, psychedelic, ominous, instrumental, bittersweet, playful	4.01	1635	13
286	NieR:Automata	Video Game Music, New Age	female vocals, atmospheric, epic, melancholic, mysterious, lush, choral, ethereal, cryptic, orchestral	3.98	1842	14
287	XO	Singer/Songwriter, Indie Pop	melancholic, bittersweet, melodic, male vocals, alienation, poetic, warm, introspective, love, self-hatred	3.94	12369	157
288	Cowboy Bebop	Television Music, Jazz	energetic, instrumental, eclectic, uplifting, playful, rhythmic	3.99	4419	52
289	The Wall	Rock Opera, Art Rock	misanthropic, rock opera, lonely, concept album, introspective, dark, anxious, epic, male vocals, alienation	3.8	36827	747
290	Olé Coltrane	Modal Jazz	instrumental, warm, passionate, improvisation, acoustic, mellow, melodic, technical, energetic, complex	3.99	5157	83
291	Persona5	Video Game Music, Acid Jazz, Lounge, Jazz-Funk	energetic, rhythmic, rebellious, triumphant, female vocals, instrumental, uplifting, urban, bittersweet, passionate	3.99	2243	7
292	The Nocturnes	Romanticism	instrumental, melancholic, nocturnal, mellow, sparse, soothing, melodic, peaceful, acoustic, soft	4.01	2107	20
293	KIDS SEE GHOSTS	Pop Rap, Experimental Hip Hop	spiritual, male vocals, uplifting, psychedelic, introspective, sampling, passionate, eclectic, bittersweet, atmospheric	3.83	29432	215
294	Filosofem	Atmospheric Black Metal, Ambient	lo-fi, atmospheric, repetitive, cold, raw, hypnotic, meditative, pagan, male vocals, melancholic	3.9	16169	206
295	It Takes a Nation of Millions to Hold Us Back	Political Hip Hop, East Coast Hip Hop, Hardcore Hip Hop, Conscious Hip Hop	political, angry, protest, raw, sampling, urban, energetic, male vocals, conscious, dense	3.92	12599	263
296	( )	Post-Rock	melancholic, ethereal, atmospheric, soothing, bittersweet, lush, cold, winter, calm, sombre	3.91	16174	322
297	Africa / Brass	Modal Jazz, Post-Bop	instrumental, warm, acoustic, complex, improvisation, mellow, technical, nocturnal, melodic, dense	3.99	4590	52
298	Le sacre du printemps	Modern Classical, Orchestral	ritualistic, apocalyptic, dissonant, orchestral, instrumental, suspenseful, avant-garde, complex, mysterious, uncommon time signatures	4	2591	23
299	Mirage	Symphonic Prog, Progressive Rock	complex, melodic, fantasy, epic, progressive, uncommon time signatures, male vocals, atmospheric, mellow, desert	3.95	9242	179
300	Third	Electronic, Experimental Rock	anxious, dark, mysterious, cold, atmospheric, sombre, female vocals, introspective, pessimistic, sad	3.9	16420	364
301	Voodoo	Neo-Soul	sexual, romantic, sensual, rhythmic, mellow, love, urban, passionate, male vocals, lush	3.96	8148	95
302	Pastel Blues	Vocal Jazz, Soul, Rhythm & Blues	passionate, melancholic, female vocals, melodic, spiritual, conscious, sombre, longing, eclectic, sentimental	3.98	5363	48
303	The Lord of the Rings: The Fellowship of the Ring	Film Score, Cinematic Classical, Orchestral	epic, fantasy, orchestral, suspenseful, ominous, lush, mysterious, triumphant, choral, melodic	3.99	2356	30
304	Relationship of Command	Post-Hardcore	energetic, passionate, anxious, cryptic, angry, aggressive, technical, male vocals, melodic, rebellious	3.91	15955	253
305	Fôrça bruta	Samba Soul, Samba-rock, MPB	uplifting, happy, summer, playful, passionate, tropical, romantic, male vocals, energetic, warm	4	3363	30
306	ファイナルファンタジーVI (Final Fantasy VI)	Video Game Music, 16-bit	medieval, melancholic, fantasy, martial, instrumental, epic, dark, suspenseful, war, anthemic	3.99	1220	19
307	Sister	Noise Rock, Alternative Rock	raw, noisy, dissonant, anxious, male vocals, surreal, female vocals, apathetic, urban, introspective	3.92	14575	193
308	Getz / Gilberto	Bossa nova, Samba-Jazz	mellow, tropical, romantic, summer, soft, peaceful, warm, calm, male vocals, soothing	3.96	8986	139
309	Vaudeville Villain	Abstract Hip Hop, East Coast Hip Hop	ominous, dark, sampling, cold, futuristic, nocturnal, male vocals, cryptic, abstract, humorous	3.96	9306	73
310	Final Fantasy VII	Video Game Music, Sequencer & Tracker	bittersweet, suspenseful, epic, urban, sentimental, mechanical, orchestral, triumphant, fantasy, mysterious	3.98	1861	45
311	Stratosphere	Slowcore, Lo-Fi / Slacker Rock	lo-fi, warm, melancholic, space, mellow, atmospheric, bittersweet, lethargic, hypnotic, lonely	3.93	12358	110
312	The Ape of Naples	Post-Industrial, Electronic, Experimental	death, melancholic, lonely, cold, philosophical, ominous, surreal, cryptic, sombre, depressive	3.93	10854	115
313	C'era una volta in America	Film Score, Cinematic Classical	melancholic, instrumental, orchestral, atmospheric, melodic, sentimental, lush, urban, bittersweet, passionate	4.01	1327	16
314	Have One on Me	Chamber Folk, Singer/Songwriter, Progressive Folk	poetic, pastoral, warm, passionate, complex, lush, autumn, female vocals, melodic, bittersweet	3.94	9442	220
315	Star Wars	Film Score, Cinematic Classical, Orchestral	epic, space, instrumental, orchestral, melodic, anthemic, uplifting, atmospheric, triumphant, acoustic	3.98	2194	26
316	Twin Fantasy	Indie Rock	LGBT, passionate, sentimental, introspective, love, concept album, male vocals, lonely, bittersweet, melancholic	3.88	17999	234
317	Flood	Drone, Post-Rock	atmospheric, hypnotic, repetitive, melancholic, minimalistic, epic, meditative, mellow, aquatic, instrumental	3.93	9981	133
318	Super Mario Galaxy	Video Game Music, Cinematic Classical, Orchestral	orchestral, uplifting, instrumental, triumphant, space, atmospheric, melodic, playful, sentimental, lush	4	1187	8
319	Chairs Missing	Post-Punk, Art Punk	mysterious, cryptic, abstract, anxious, surreal, male vocals, sarcastic, eclectic, suspenseful, dark	3.94	10182	169
320	塊魂サウンドトラック「塊フォルテッシモ魂」 (Katamari Damacy Soundtrack: Katamari Fortissimo Damacy)	Video Game Music, Picopop, Shibuya-kei	happy, playful, uplifting, eclectic, warm, melodic, energetic, summer, lush, female vocals	4	2241	32
321	The Soft Bulletin	Neo-Psychedelia, Psychedelic Pop	psychedelic, warm, bittersweet, lush, uplifting, melodic, melancholic, atmospheric, existential, male vocals	3.88	18914	370
322	Stress: The Extinction Agenda	East Coast Hip Hop, Boom Bap, Conscious Hip Hop, Jazz Rap	apocalyptic, urban, angry, rhythmic, conscious, political, anxious, male vocals, dark, aggressive	3.96	3876	75
323	Star Wars: The Empire Strikes Back	Film Score, Cinematic Classical, Orchestral	epic, ominous, space, instrumental, orchestral, melodic, triumphant, anthemic, fantasy, uplifting	3.96	1755	13
324	El jardín de los presentes	Progressive Rock	poetic, melancholic, mellow, progressive, complex, existential, passionate, male vocals, autumn, melodic	3.99	2924	49
325	John Lennon / Plastic Ono Band	Singer/Songwriter	raw, passionate, introspective, existential, male vocals, anxious, angry, alienation, political, conscious	3.92	11441	307
326	Automatic for the People	Alternative Rock, Pop Rock	bittersweet, melancholic, melodic, passionate, sombre, sad, male vocals, atmospheric, acoustic, lonely	3.89	16017	332
327	Horses	Proto-Punk, Singer/Songwriter, Art Rock	poetic, energetic, rebellious, female vocals, raw, passionate, cryptic, LGBT, chaotic, playful	3.91	13535	246
328	Quebec	Art Rock, Psychedelic Rock, Alternative Rock, Neo-Psychedelia	drugs, eclectic, surreal, psychedelic, melancholic, atmospheric, bittersweet, male vocals, autumn, melodic	3.95	8077	91
329	Lanquidity	Jazz Fusion	instrumental, mysterious, improvisation, atmospheric, spiritual, surreal, hypnotic, rhythmic, nocturnal, psychedelic	3.96	6037	56
330	White Pony	Alternative Metal	atmospheric, anxious, sexual, male vocals, melancholic, heavy, romantic, drugs, sombre, sensual	3.88	15430	217
331	Titanic Rising	Baroque Pop, Art Pop	lush, female vocals, ethereal, melodic, romantic, longing, soft, warm, bittersweet, love	3.88	18811	220
332	The Sound of Perseverance	Technical Death Metal, Progressive Metal	technical, philosophical, complex, male vocals, existential, progressive, uncommon time signatures, passionate, aggressive, poetic	3.9	10180	180
333	Murmur	Jangle Pop, Alternative Rock	cryptic, melodic, atmospheric, male vocals, poetic, introspective, melancholic, mysterious, spring, energetic	3.9	14362	292
334	Ram	Pop Rock	playful, warm, melodic, male vocals, pastoral, quirky, spring, happy, uplifting, eclectic	3.94	7867	229
335	加爾基 精液 栗ノ花 (Kalk samen kuri no hana)	Art Pop, Art Rock, Progressive Pop	eclectic, anxious, dense, playful, female vocals, lush, complex, progressive, melodic, manic	3.95	6770	79
336	Only Built 4 Cuban Linx...	East Coast Hip Hop, Gangsta Rap, Boom Bap	crime, urban, sampling, drugs, male vocals, dark, violence, boastful, rhythmic, atmospheric	3.93	8567	166
337	Time Out	Cool Jazz	uncommon time signatures, mellow, instrumental, playful, melodic, rhythmic, acoustic, soothing, complex	3.94	9775	175
338	The Mollusk	Art Rock, Neo-Psychedelia	playful, aquatic, humorous, psychedelic, eclectic, surreal, quirky, fantasy, male vocals, concept album	3.91	12409	150
339	154	Post-Punk, Art Punk	anxious, ominous, philosophical, male vocals, cryptic, atmospheric, cold, complex, futuristic, eclectic	3.94	8624	134
340	Double Nickels on the Dime	Post-Punk, Art Punk, Post-Hardcore	political, satirical, energetic, sarcastic, rhythmic, humorous, playful, male vocals, rebellious, philosophical	3.91	11105	234
341	Pinkerton	Alternative Rock, Power Pop	lonely, love, anxious, raw, male vocals, passionate, longing, self-hatred, sad, melodic	3.82	23955	426
342	The Ascension	No Wave, Noise Rock, Totalism, Experimental Rock	instrumental, dissonant, suspenseful, noisy, avant-garde, repetitive, rhythmic, apocalyptic, raw, complex	3.92	9424	129
343	Rising	Hard Rock, Heavy Metal	epic, energetic, male vocals, melodic, fantasy, triumphant, passionate, heavy, uplifting, progressive	3.92	8059	212
344	Amnesiac	Art Rock, Experimental Rock	anxious, sombre, atmospheric, melancholic, cryptic, cold, abstract, mysterious, male vocals, dark	3.79	37932	544
345	Deep Purple in Rock	Hard Rock	energetic, heavy, male vocals, hedonistic, sexual, aggressive, raw, psychedelic, melodic	3.91	9917	253
346	Dots and Loops	Art Pop, Indietronica	mellow, female vocals, warm, futuristic, psychedelic, eclectic, political, uncommon time signatures, abstract, rhythmic	3.93	9011	91
347	By the Time I Get to Phoenix	Experimental Hip Hop, Glitch Hop, Experimental	avant-garde, surreal, death, dissonant, sampling, chaotic, apocalyptic, dense, dark, male vocals	3.92	8612	158
348	L.A. Woman	Blues Rock, Psychedelic Rock	poetic, psychedelic, male vocals, cryptic, urban, mysterious, sexual, dark, nocturnal, warm	3.89	14553	303
349	Before and After Science	Art Rock	atmospheric, surreal, male vocals, playful, mellow, futuristic, lush, ethereal, calm, warm	3.93	9789	176
350	Mellon Collie and the Infinite Sadness	Alternative Rock	melancholic, passionate, bittersweet, angry, eclectic, male vocals, epic, introspective, nocturnal, dense	3.87	19284	465
351	None So Vile	Brutal Death Metal, Technical Death Metal	aggressive, technical, heavy, death, manic, male vocals, violence, misanthropic, infernal, chaotic	3.91	7080	164
352	I Can Hear the Heart Beating as One	Indie Rock, Noise Pop	warm, mellow, atmospheric, autumn, soothing, calm, noisy, nocturnal, male vocals, female vocals	3.9	13289	178
353	Different Class	Britpop	sexual, sarcastic, melodic, male vocals, satirical, bittersweet, uplifting, quirky, anthemic, passionate	3.91	11280	214
354	Jenny Death: The Powers That B Disc 2	Experimental Hip Hop, Noise Rock, Industrial Hip Hop, Abstract Hip Hop	noisy, abstract, aggressive, male vocals, manic, cryptic, raw, misanthropic, vulgar, rhythmic	3.9	10855	30
355	Obscura	Technical Death Metal, Avant-Garde Metal	technical, dissonant, uncommon time signatures, complex, chaotic, heavy, atonal, dark, avant-garde, manic	3.91	6715	153
356	Saxophone Colossus	Hard Bop	warm, instrumental, improvisation, acoustic, energetic, melodic, passionate, mellow, technical, nocturnal	3.95	5619	81
357	A Crow Looked at Me	Singer/Songwriter, Indie Folk	death, introspective, love, melancholic, lonely, sad, raw, sombre, male vocals, serious	3.87	13898	203
358	Aqualung	Progressive Rock	male vocals, poetic, sarcastic, philosophical, progressive, epic, medieval, anti-religious, complex, misanthropic	3.9	12716	271
359	Things Fall Apart	East Coast Hip Hop	urban, rhythmic, boastful, male vocals, raw, nocturnal, playful, atmospheric, dark, conscious	3.93	9072	87
360	There's a Riot Goin' On	Funk, Psychedelic Soul, Soul	psychedelic, rhythmic, lo-fi, drugs, warm, mellow, conscious, urban, introspective, political	3.93	8105	171
362	Chrono Cross	Video Game Music, Sequencer & Tracker	epic, tropical, peaceful, instrumental, eclectic, atmospheric, calm, warm, rhythmic, melodic	3.94	780	23
363	もののけ姫 (Mononoke-hime)	Film Score, Cinematic Classical	epic, orchestral, forest, melancholic, fantasy, spiritual, triumphant, bittersweet, passionate, nature	3.97	1473	9
364	You're Living All Over Me	Noise Rock, Indie Rock, Alternative Rock, Lo-Fi / Slacker Rock	noisy, lo-fi, raw, male vocals, melancholic, energetic, anxious, melodic, lonely, alienation	3.88	15184	217
365	Let It Be	Alternative Rock	passionate, melodic, energetic, bittersweet, male vocals, raw, rebellious, alienation, anxious, lonely	3.91	10775	222
366	Mingus Mingus Mingus Mingus Mingus	Post-Bop	instrumental, acoustic, improvisation, technical, complex, warm, energetic, bittersweet, polyphonic, melodic	3.96	4885	62
367	Quadrophenia	Rock Opera, Hard Rock	epic, rock opera, introspective, energetic, rebellious, passionate, bittersweet, male vocals, dense, concept album	3.91	9020	281
368	Exodus	Roots Reggae	uplifting, male vocals, warm, optimistic, political, rhythmic, tropical, summer, melodic, mellow	3.94	7063	118
369	Rock Bottom	Canterbury Scene, Art Rock	sombre, atmospheric, surreal, poetic, melancholic, cryptic, male vocals, romantic, mysterious, progressive	3.91	9801	209
370	When the Pawn	Singer/Songwriter, Piano Rock	breakup, melodic, female vocals, bittersweet, poetic, passionate, introspective, sarcastic, romantic, longing	3.92	9558	146
371	On the Corner	Jazz Fusion, Jazz-Funk	rhythmic, avant-garde, repetitive, instrumental, urban, dense, improvisation, hypnotic, nocturnal, surreal	3.94	7093	152
372	Hot Buttered Soul	Soul	passionate, lush, male vocals, love, romantic, breakup, psychedelic, soothing, warm, melodic	3.95	5637	122
373	The Fragile	Industrial Rock, Art Rock, Alternative Rock	dark, depressive, angry, introspective, sombre, sad, noisy, atmospheric, existential, serious	3.9	11682	225
374	Computerwelt	Synthpop, Electronic	mechanical, futuristic, rhythmic, playful, melodic, concept album, male vocals, quirky, repetitive, deadpan	3.91	10027	157
375	Darkness on the Edge of Town	Heartland Rock, Singer/Songwriter	bittersweet, melodic, poetic, passionate, urban, male vocals, romantic, sentimental, energetic, anthemic	3.92	8213	167
376	Youth of America	Post-Punk, Punk Rock	anxious, rebellious, passionate, energetic, dark, political, male vocals, raw, sombre, nocturnal	3.93	7263	104
377	Symphonie Nr. 5	Symphony, Classical Period, Romanticism	symphony, instrumental, epic, lush, passionate, romantic, orchestral, triumphant, uplifting, acoustic	3.99	591	3
378	Led Zeppelin III	Hard Rock, Folk Rock	male vocals, pastoral, passionate, energetic, longing, hedonistic, eclectic, rhythmic, melodic, mysterious	3.83	23316	484
379	Electric Warrior	Glam Rock	sexual, male vocals, playful, love, sensual, energetic, melodic, space, warm, passionate	3.92	9584	243
380	Symphonic Suite AKIRA	Film Score	choral, tribal, ritualistic, atmospheric, rhythmic, futuristic, eclectic, suspenseful, ominous, science fiction	3.97	1928	28
381	Storm of the Light's Bane	Melodic Black Metal	cold, melodic, winter, dark, sombre, death, misanthropic, heavy, nocturnal, occult	3.92	7251	121
382	Individual Thought Patterns	Technical Death Metal	philosophical, technical, complex, uncommon time signatures, progressive, male vocals, heavy, conscious, aggressive, death	3.91	8447	135
383	Black Messiah	Neo-Soul	romantic, political, sexual, conscious, urban, sensual, love, male vocals, passionate, rhythmic	3.91	9317	78
384	Ghost Reveries	Progressive Metal	ominous, occult, fantasy, male vocals, progressive, melodic, complex, heavy, concept album, nocturnal	3.9	9645	215
385	Ghosts of the Great Highway	Folk Rock, Singer/Songwriter	melancholic, bittersweet, sad, pastoral, mellow, sports, passionate, male vocals, introspective, poetic	3.92	7614	94
386	Safe as Milk	Blues Rock, Psychedelic Rock	playful, energetic, raw, psychedelic, surreal, male vocals, quirky, rhythmic, humorous, eclectic	3.89	12088	254
387	Plastic Surgery Disasters	Hardcore Punk	satirical, energetic, sarcastic, raw, humorous, political, rebellious, angry, manic, aggressive	3.92	7173	97
388	Somethin' Else	Hard Bop	instrumental, improvisation, mellow, acoustic, melodic, soothing, autumn, nocturnal, soft, technical	3.94	5514	111
389	Zen Arcade	Post-Hardcore, Hardcore Punk	energetic, noisy, concept album, raw, passionate, rebellious, male vocals, aggressive, angry, anxious	3.89	11418	205
390	In the Nightside Eclipse	Symphonic Black Metal, Black Metal	cold, atmospheric, epic, nocturnal, fantasy, dark, mysterious, winter, occult, satanic	3.9	8938	149
391	Pawn Hearts	Progressive Rock	dark, philosophical, complex, lonely, epic, eclectic, progressive, male vocals, poetic, existential	3.92	6414	147
392	Ashes Against the Grain	Post-Metal	melancholic, cold, winter, atmospheric, nature, sombre, pagan, forest, male vocals, heavy	3.9	8988	161
393	Through Silver in Blood	Atmospheric Sludge Metal, Sludge Metal	apocalyptic, dark, heavy, angry, atmospheric, dense, tribal, male vocals, nihilistic, aggressive	3.9	7207	118
394	Astigmatic	Avant-Garde Jazz, Post-Bop	instrumental, hypnotic, avant-garde, improvisation, complex, nocturnal, rhythmic, acoustic, mysterious, suspenseful	3.95	3843	39
395	Song for My Father (Cantiga para meu pai)	Hard Bop	instrumental, acoustic, improvisation, mellow, autumn, warm, soothing, energetic, melodic, summer	3.96	3271	48
396	Wrong	Post-Hardcore	manic, humorous, satirical, energetic, technical, rhythmic, sarcastic, raw, male vocals, uncommon time signatures	3.92	6116	90
397	Hejira	Singer/Songwriter, Folk Rock	poetic, female vocals, melancholic, calm, introspective, warm, autumn, mellow, desert, melodic	3.94	5043	122
398	Scott 4	Baroque Pop, Singer/Songwriter	lush, poetic, melodic, sombre, male vocals, melancholic, atmospheric, orchestral, lonely, introspective	3.91	8138	134
399	Anthems to the Welkin at Dusk	Symphonic Black Metal	epic, dense, fantasy, male vocals, atmospheric, energetic, heavy, triumphant, technical, complex	3.92	6674	107
400	Matthäus-Passion	Baroque Music, Oratorio, Christian Liturgical Music	oratorio, religious, epic, orchestral, Christian, melancholic, male vocals, passionate, female vocals, spiritual	3.97	837	9
401	Script of the Bridge	Post-Punk	melancholic, ethereal, atmospheric, introspective, male vocals, cold, philosophical, sombre, dark, passionate	3.92	7892	150
402	Hemispheres	Progressive Rock, Hard Rock	complex, uncommon time signatures, technical, progressive, mythology, male vocals, philosophical, fantasy, epic, science fiction	3.9	8418	200
403	Artaud	Folk Rock, Singer/Songwriter	poetic, philosophical, male vocals, psychedelic, melodic, autumn, passionate, mellow, melancholic, warm	3.94	3864	58
404	The Inner Mounting Flame	Jazz Fusion, Jazz-Rock	instrumental, technical, energetic, passionate, spiritual, complex, warm, improvisation, uncommon time signatures, progressive	3.92	6795	143
405	Stand!	Funk, Psychedelic Soul	protest, uplifting, optimistic, happy, psychedelic, conscious, energetic, philosophical, rhythmic, male vocals	3.93	6174	124
406	Roforofo Fight	Afrobeat	rhythmic, repetitive, political, conscious, energetic, male vocals, passionate, protest, warm, hypnotic	3.96	3075	30
407	Visions of the Country	American Primitivism	meditative, pastoral, peaceful, nature, male vocals, acoustic, spiritual, passionate, longing, sentimental	3.95	2785	40
408	The Goldberg Variations	Baroque Music	instrumental, acoustic, technical, polyphonic, complex, melodic, peaceful, soothing, playful, passionate	3.95	2385	48
409	Free for All	Hard Bop	instrumental, energetic, technical, improvisation, acoustic, passionate, manic	3.96	2132	30
410	Crack the Skye	Progressive Metal	fantasy, psychedelic, concept album, progressive, male vocals, heavy, atmospheric, melodic, epic, poetic	3.87	11014	258
664	Vertigo	Film Score, Cinematic Classical, Orchestral	suspenseful, orchestral, instrumental, romantic, mysterious	3.9	968	12
411	Keep It Like a Secret	Indie Rock	melodic, philosophical, male vocals, bittersweet, summer, uplifting, introspective, melancholic, warm, sentimental	3.9	9581	118
412	Something Else by The Kinks	Pop Rock, Baroque Pop	bittersweet, melodic, playful, male vocals, autumn, poetic, quirky, warm, introspective, eclectic	3.91	7589	200
413	0	Contemporary Folk, Singer/Songwriter	soft, calm, warm, female vocals, acoustic, soothing, sparse, mellow, bittersweet, melodic	3.93	6046	32
414	Don't Break the Oath	Heavy Metal	satanic, energetic, occult, male vocals, melodic, dark, suspenseful, heavy, passionate, anthemic	3.9	5759	130
415	DK Jamz: The Original Donkey Kong Country Soundtrack	Video Game Music, 16-bit	atmospheric, nature, tribal, rhythmic, instrumental, ominous, forest, soothing, playful, soft	3.95	1056	16
416	Emergency & I	Indie Rock	anxious, lonely, energetic, uncommon time signatures, rhythmic, male vocals, alienation, bittersweet, playful, introspective	3.88	12228	143
417	NieR Gestalt & RepliCant	Video Game Music, Neoclassical New Age	female vocals, epic, atmospheric, ethereal, lush, fantasy, choral, passionate, mysterious, apocalyptic	3.91	937	5
418	Toxicity	Alternative Metal	political, manic, heavy, aggressive, male vocals, playful, conscious, energetic, protest, quirky	3.8	20317	397
419	Close to a World Below	Death Metal	infernal, anti-religious, misanthropic, hateful, heavy, nihilistic, dense, dissonant, pessimistic, dark	3.91	3884	77
420	Panopticon	Atmospheric Sludge Metal, Post-Metal	atmospheric, melancholic, dense, heavy, hypnotic, epic, male vocals, complex, progressive, concept album	3.88	9697	163
422	Some Rap Songs	Abstract Hip Hop, Experimental Hip Hop	lo-fi, introspective, sampling, death, abstract, male vocals, lethargic, deadpan, sombre, depressive	3.83	20092	180
423	Stravinsky Conducts Le Sacre du printemps	Modern Classical, Orchestral	avant-garde, suspenseful, epic, instrumental, ritualistic, polyphonic, apocalyptic, orchestral, complex, suite	3.96	1011	4
424	Deltron 3030	West Coast Hip Hop, Experimental Hip Hop, Abstract Hip Hop	science fiction, futuristic, concept album, male vocals, sampling, urban, mysterious, philosophical, satirical, epic	3.89	10534	145
425	Mothership Connection	P-Funk	science fiction, uplifting, rhythmic, playful, party, energetic, male vocals, hedonistic, futuristic, sensual	3.93	6351	97
426	Lifestylez ov da Poor & Dangerous	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	violence, urban, crime, vulgar, dark, boastful, aggressive, sampling, technical, rhythmic	3.91	6747	137
427	千と千尋の神隠し (Sen to Chihiro no kamikakushi)	Film Score, Cinematic Classical, Modern Classical	fantasy, ensemble, epic, sentimental, ominous, spiritual, bittersweet, orchestral, melancholic, energetic	3.95	1819	18
428	ワンダと巨像 大地の咆哮 (Wander and the Colossus: Roar of the Earth)	Video Game Music, Orchestral, Cinematic Classical	epic, fantasy, sombre, orchestral, atmospheric, melancholic, choral, suspenseful, mysterious, instrumental	3.93	883	14
429	Elliott Smith	Singer/Songwriter, Indie Folk	acoustic, melancholic, sad, lo-fi, lonely, drugs, male vocals, bittersweet, poetic, sombre	3.89	10962	139
430	Déjà vu	Folk Rock	warm, melodic, male vocals, mellow, calm, rhythmic, introspective, peaceful, soothing, sentimental	3.91	7590	183
431	A Blaze in the Northern Sky	Black Metal	cold, raw, nocturnal, lo-fi, winter, satanic, aggressive, dark, atmospheric, forest	3.89	9007	126
432	Pieces of a Man	Soul	political, conscious, urban, introspective, poetic, male vocals, sombre, bittersweet, passionate, lush	3.93	5073	63
433	Seasons in the Abyss	Thrash Metal	energetic, aggressive, death, male vocals, dark, angry, war, heavy, rhythmic, misanthropic	3.88	10226	213
434	The Miseducation of Lauryn Hill	Neo-Soul, Contemporary R&B, East Coast Hip Hop	female vocals, breakup, romantic, warm, love, passionate, conscious, urban, rhythmic, Christian	3.88	9655	135
435	Red House Painters [Rollercoaster]	Slowcore	melancholic, sombre, lonely, introspective, autumn, depressive, male vocals, sad, lethargic, mellow	3.9	8116	122
436	Selected Ambient Works Volume II	Ambient, Electronic	atmospheric, mysterious, ominous, minimalistic, sparse, surreal, ethereal, instrumental, melancholic, sombre	3.86	14140	221
437	Abraxas	Latin Rock	warm, rhythmic, psychedelic, passionate, male vocals, uplifting, summer, atmospheric, tropical, sensual	3.92	7030	147
438	Mos Def & Talib Kweli Are Black Star	East Coast Hip Hop, Conscious Hip Hop, Boom Bap	conscious, urban, political, male vocals, rhythmic, mellow, nocturnal, calm, philosophical, sampling	3.91	7332	138
439	No Other	Country Rock, Singer/Songwriter	melancholic, introspective, spiritual, male vocals, lonely, psychedelic, philosophical, autumn, lush, melodic	3.93	3329	114
440	Bottomless Pit	Industrial Hip Hop, Abstract Hip Hop, Experimental Hip Hop	aggressive, chaotic, noisy, manic, energetic, vulgar, cryptic, male vocals, nihilistic, angry	3.82	20614	102
441	Love Deluxe	Smooth Soul, Sophisti-Pop	sensual, romantic, soothing, love, female vocals, mellow, atmospheric, sentimental, lush, nocturnal	3.93	5086	44
442	Bergtatt: Et eeventyr i 5 capitler	Atmospheric Black Metal, Pagan Black Metal	forest, atmospheric, nature, mythology, fantasy, nocturnal, cold, dark, concept album, winter	3.88	10796	135
443	Altars of Madness	Death Metal	satanic, aggressive, occult, heavy, male vocals, hateful, infernal, technical, misanthropic, dark	3.88	7972	130
444	Zuma	Folk Rock, Singer/Songwriter	male vocals, passionate, melancholic, sentimental, melodic, pastoral, romantic, breakup, love, warm	3.91	7455	164
445	Lady Soul	Southern Soul	warm, female vocals, passionate, love, uplifting, melodic, lush, sentimental, triumphant, breakup	3.93	3887	60
446	Sobrevivendo no inferno	Conscious Hip Hop, Boom Bap, Hardcore Hip Hop	urban, crime, conscious, political, drugs, poetic, violence, death, male vocals, sampling	3.94	1365	17
447	Mass in B minor	Baroque Music, Choral, Christian Liturgical Music	religious, Christian, choral, spiritual, epic, complex, acoustic, polyphonic, uplifting, passionate	3.95	1091	12
448	Yeezus	Experimental Hip Hop	vulgar, aggressive, manic, boastful, sampling, angry, noisy, sexual, energetic, male vocals	3.74	36969	373
449	Reasonable Doubt	East Coast Hip Hop, Boom Bap, Gangsta Rap	crime, boastful, urban, sombre, drugs, male vocals, serious, introspective, rhythmic, sampling	3.88	9570	163
450	Daughter of Darkness	Drone, Free Folk, Ritual Ambient, Psychedelic Folk	ritualistic, hypnotic, spiritual, dark, noisy, dense, repetitive, avant-garde, psychedelic, suspenseful	3.92	2452	37
451	The Yes Album	Progressive Rock	melodic, progressive, uplifting, male vocals, complex, uncommon time signatures, optimistic, energetic, fantasy, science fiction	3.89	10313	225
452	Sad Wings of Destiny	Heavy Metal	male vocals, melodic, energetic, dark, progressive, heavy, fantasy, apocalyptic, anthemic, eclectic	3.89	7661	194
453	Mystic Stylez	Memphis Rap, Horrorcore, Southern Hip Hop	dark, crime, satanic, violence, drugs, lo-fi, sexual, raw, nocturnal, aggressive	3.9	6464	55
454	The Velvet Rope	Contemporary R&B, Art Pop	introspective, sexual, sensual, LGBT, nocturnal, dark, concept album, passionate, love, lonely	3.92	3562	42
455	África Brasil	Samba-rock, MPB, Funk	energetic, rhythmic, sports, tropical, summer, uplifting, male vocals, passionate, warm, psychedelic	3.94	3195	46
456	Superunknown	Grunge, Alternative Rock	uncommon time signatures, dark, heavy, sad, male vocals, sombre, psychedelic, passionate, melancholic, melodic	3.86	13887	312
457	UNDERTALE	Video Game Music, Sequencer & Tracker	instrumental, uplifting, eclectic, bittersweet, playful, mellow, fantasy, quirky, humorous, atmospheric	3.92	3891	28
458	Black Unity	Spiritual Jazz	energetic, instrumental, hypnotic, progressive, rhythmic, spiritual, avant-garde, psychedelic, complex, chaotic	3.94	2946	42
459	California	Experimental Rock, Art Rock	eclectic, playful, humorous, avant-garde, energetic, surreal, complex, quirky, male vocals, manic	3.87	9794	193
460	Desire	Folk Rock, Singer/Songwriter	male vocals, poetic, bittersweet, passionate, history, female vocals, political, warm, conscious, romantic	3.89	9487	221
461	Fare Forward Voyagers (Soldier's Choice)	American Primitivism	meditative, acoustic, instrumental, technical, epic, hypnotic, spiritual, passionate, progressive, complex	3.93	3912	50
462	Symphony No. 9 "Choral"	Symphony, Romanticism	orchestral, epic, choral, uplifting, acoustic, technical, religious, melodic, poetic, polyphonic	3.94	405	6
463	Demon Days	Art Pop	eclectic, melancholic, political, male vocals, lonely, conscious, cryptic, urban, rhythmic, quirky	3.8	25919	239
464	Speaking in Tongues	New Wave, Synth Funk	playful, energetic, party, rhythmic, male vocals, quirky, sarcastic, anxious, warm, urban	3.87	13712	139
465	Those Once Loyal	Death Metal	war, heavy, rhythmic, history, aggressive, pessimistic, epic, male vocals, death, dense	3.91	3770	62
466	Persona4	Video Game Music	urban, energetic, eclectic, passionate, female vocals, uplifting, instrumental, warm, bittersweet, melodic	3.95	1100	11
467	Stankonia	Southern Hip Hop	energetic, urban, eclectic, political, male vocals, playful, passionate, protest, introspective, love	3.86	13726	137
468	Talking Book	Soul	love, passionate, male vocals, melodic, warm, uplifting, mellow, optimistic, romantic, lush	3.91	6991	123
469	Repeater	Post-Hardcore	political, energetic, passionate, conscious, rebellious, angry, male vocals, raw, rhythmic, protest	3.86	13404	137
470	Godbluff	Progressive Rock	complex, poetic, philosophical, dark, eclectic, male vocals, progressive, melodic, uncommon time signatures, epic	3.91	3983	95
471	channel ORANGE	Alternative R&B, Contemporary R&B	romantic, sexual, lonely, warm, summer, LGBT, bittersweet, introspective, male vocals, sensual	3.79	24446	182
472	Mista Thug Isolation	Memphis Rap, Southern Hip Hop	drugs, misanthropic, vulgar, dark, crime, humorous, sexual, boastful, nocturnal, sampling	3.87	10944	62
473	Conan the Barbarian	Film Score, Cinematic Classical, Orchestral	epic, martial, triumphant, orchestral, choral, fantasy, melodic, anthemic, energetic	3.91	888	12
474	Yoshimi Battles the Pink Robots	Neo-Psychedelia, Psychedelic Pop	science fiction, psychedelic, warm, philosophical, male vocals, summer, existential, melodic, uplifting, lush	3.82	20052	221
475	Angel Dust	Alternative Metal, Alternative Rock	sarcastic, eclectic, energetic, humorous, male vocals, misanthropic, playful, heavy, complex, dark	3.84	11603	263
476	Down Colorful Hill	Slowcore	melancholic, lonely, depressive, sad, introspective, sombre, lethargic, poetic, mellow, male vocals	3.88	10649	160
477	In the Land of Grey and Pink	Canterbury Scene, Progressive Rock	melodic, progressive, happy, mellow, quirky, warm, optimistic, male vocals, spring, complex	3.9	6550	168
478	Sextant	Jazz Fusion, Avant-Garde Jazz	futuristic, space, instrumental, improvisation, psychedelic, avant-garde, hypnotic, surreal, spiritual, science fiction	3.92	4691	66
479	The 6 String Quartets	Modern Classical, Chamber Music	string quartet, instrumental, acoustic, suspenseful, anxious, sombre, complex, dissonant, atmospheric, dark	3.94	958	12
480	Somewhere in Time	Heavy Metal	epic, male vocals, science fiction, melodic, energetic, history, progressive, anthemic, passionate, heavy	3.87	10157	225
481	Screaming for Vengeance	Heavy Metal	energetic, male vocals, anthemic, rebellious, heavy, melodic, boastful, triumphant, passionate, love	3.88	8460	169
482	Like an Ever Flowing Stream	Death Metal	aggressive, heavy, misanthropic, energetic, angry, male vocals, rhythmic, violence, infernal, death	3.9	3777	72
483	Amadeus	Classical Period, Film Soundtrack	orchestral, acoustic, choral, triumphant, opera, epic	3.95	572	6
484	To Bring You My Love	Alternative Rock, Singer/Songwriter	dark, passionate, love, sexual, female vocals, raw, nocturnal, ominous, desert, mysterious	3.88	9574	145
485	The Argument	Post-Hardcore, Indie Rock	political, anxious, atmospheric, rebellious, sombre, male vocals, protest, dissonant, dark, war	3.88	8503	113
486	Ridin' Dirty	Dirty South, Gangsta Rap, Southern Hip Hop	crime, nocturnal, drugs, boastful, male vocals, sombre, introspective, urban, mellow, violence	3.9	4208	79
487	Requiem	Classical Period, Choral, Christian Liturgical Music	orchestral, funereal, acoustic, death, sombre, female vocals, male vocals, choral, Christian	3.95	428	2
488	Melissa	Heavy Metal	satanic, dark, occult, male vocals, melodic, heavy, progressive, epic, suspenseful, raw	3.89	5529	109
489	Koyaanisqatsi	Minimalism, Film Score	hypnotic, minimalistic, repetitive, choral, sombre, orchestral, atmospheric, ominous, epic, mysterious	3.91	3618	61
490	The Smiths	Jangle Pop, Indie Pop	melancholic, poetic, introspective, melodic, bittersweet, sarcastic, male vocals, love, LGBT, lonely	3.82	19860	277
491	Our Mother the Mountain	Singer/Songwriter, Country, Contemporary Folk	pastoral, male vocals, love, melancholic, warm, acoustic, bittersweet, sentimental, longing, poetic	3.91	4127	50
492	Orphans: Brawlers, Bawlers & Bastards	Singer/Songwriter, Blues Rock, Folk Rock	eclectic, raw, poetic, male vocals, dark, quirky, love, lo-fi, political, humorous	3.91	4221	114
493	Duke Ellington's Far East Suite	Big Band	suite, instrumental, energetic, acoustic, warm, complex, rhythmic, passionate, lush, improvisation	3.93	2917	49
494	Leviathan	Sludge Metal, Progressive Metal	energetic, concept album, technical, heavy, aquatic, aggressive, male vocals, poetic, progressive, epic	3.85	11753	170
495	Vision Creation Newsun	Experimental Rock, Neo-Psychedelia, Psychedelic Rock	energetic, warm, rhythmic, psychedelic, tribal, epic, uplifting, summer, dense, ethereal	3.87	9895	154
496	Nebraska	Singer/Songwriter, Contemporary Folk, Americana	melancholic, sombre, acoustic, lonely, male vocals, sparse, sad, nocturnal, dark, lo-fi	3.87	9857	215
498	...And Justice for All	Thrash Metal	political, angry, technical, heavy, male vocals, energetic, progressive, aggressive, dark, serious	3.8	22248	577
499	You Forgot It in People	Indie Rock	bittersweet, melancholic, male vocals, melodic, female vocals, ethereal, lush, dense, passionate, energetic	3.87	11228	211
500	1999	Synth Funk	sexual, party, rhythmic, vulgar, sensual, energetic, urban, futuristic, male vocals, passionate	3.89	7970	147
501	Willy and the Poor Boys	Swamp Rock	political, melodic, energetic, male vocals, uplifting, warm, sentimental, bittersweet, war, concept album	3.91	6699	134
502	Overkill	Heavy Metal, Hard Rock	energetic, rebellious, male vocals, heavy, aggressive, raw, rhythmic, anthemic, alcohol, manic	3.89	6459	88
503	Bizarre Ride II the Pharcyde	West Coast Hip Hop, Boom Bap, Jazz Rap	playful, humorous, drugs, male vocals, energetic, happy, sampling, vulgar, rhythmic, sexual	3.89	6544	107
504	A Night at the Opera	Hard Rock, Art Rock	melodic, male vocals, epic, eclectic, playful, progressive, triumphant, passionate, anthemic, complex	3.81	15861	421
505	The Modern Lovers	Proto-Punk, Garage Rock	romantic, energetic, playful, male vocals, anxious, raw, love, happy, urban, optimistic	3.87	8542	188
506	Transa	MPB, Singer/Songwriter	passionate, rhythmic, poetic, introspective, male vocals, melodic, bittersweet, lonely, tropical, repetitive	3.91	4304	52
507	Symphonie No. 9 / Moldau	Romanticism, Symphony	instrumental, symphony, melodic, epic, acoustic, orchestral, polyphonic, uplifting	3.94	427	2
508	Slanted and Enchanted	Lo-Fi / Slacker Rock, Indie Rock	lo-fi, playful, raw, humorous, anxious, noisy, male vocals, apathetic, melodic, deadpan	3.82	16767	290
509	Faust IV	Krautrock	avant-garde, futuristic, playful, abstract, progressive, psychedelic, quirky, hypnotic, warm, male vocals	3.88	9553	118
510	Within the Realm of a Dying Sun	Neoclassical Darkwave	sombre, atmospheric, ethereal, mysterious, dark, nocturnal, epic, spiritual, hypnotic, medieval	3.88	8618	128
511	NEU! '75	Krautrock	rhythmic, repetitive, atmospheric, mellow, progressive, mechanical, hypnotic, male vocals, psychedelic, eclectic	3.89	7846	108
512	Rocket to Russia	Punk Rock	energetic, melodic, playful, rebellious, male vocals, humorous, urban, anthemic, repetitive, raw	3.86	8718	158
513	I Never Loved a Man the Way I Love You	Deep Soul, Southern Soul	passionate, female vocals, love, warm, melodic, uplifting, mellow, bittersweet, longing, romantic	3.91	4923	94
514	Dead as Dreams	Black Metal, Atmospheric Black Metal	apocalyptic, atmospheric, dense, war, depressive, male vocals, epic, hypnotic, infernal, progressive	3.9	3590	56
515	Wild Is the Wind	Vocal Jazz, Soul	female vocals, melancholic, sentimental, romantic, longing, love, sensual, breakup, melodic, passionate	3.92	3026	37
516	More Songs About Buildings and Food	New Wave, Post-Punk, Art Punk	anxious, energetic, playful, urban, quirky, male vocals, rhythmic, conscious, humorous, sarcastic	3.85	14191	191
517	The Band	Folk Rock, Roots Rock, Country Rock	bittersweet, male vocals, history, passionate, pastoral, poetic, mellow, melodic, nature, raw	3.87	7427	197
518	Peter Gabriel	Art Rock	dark, passionate, suspenseful, male vocals, anxious, mechanical, political, ominous, sombre, futuristic	3.89	7060	144
519	Hell Hath No Fury	Southern Hip Hop, Gangsta Rap	crime, drugs, boastful, male vocals, violence, rhythmic, urban, vulgar, hedonistic, sparse	3.88	6770	101
520	One Size Fits All	Jazz-Rock, Progressive Rock	humorous, complex, technical, satirical, male vocals, dense, uncommon time signatures, progressive, energetic, rhythmic	3.9	5791	113
521	Meditations	Free Jazz, Spiritual Jazz	instrumental, improvisation, spiritual, chaotic, dense, passionate, avant-garde, dissonant, complex, energetic	3.9	4041	64
522	Twin Peaks: Limited Event Series Soundtrack	Ambient, Television Music	dark, suspenseful, atmospheric, ominous, forest, nocturnal, instrumental, ethereal, mysterious, lonely	3.92	2109	16
523	Jackson C. Frank	Contemporary Folk, Singer/Songwriter	lonely, melancholic, depressive, acoustic, introspective, poetic, male vocals, longing, autumn, breakup	3.9	5106	70
524	Symphonie Nr.7	Symphony, Classical Period	symphony, acoustic, instrumental, epic, lush, orchestral	3.96	342	0
525	This Year's Model	New Wave, Pop Rock	sarcastic, playful, energetic, melodic, angry, male vocals, rebellious, satirical, passionate, manic	3.86	9322	195
526	Tim	Alternative Rock, Power Pop	male vocals, melodic, bittersweet, introspective, lonely, passionate, sarcastic, energetic, melancholic, sentimental	3.88	6989	144
527	Symphony No. 9 'From the New World'	Romanticism, Symphony	instrumental, symphony, epic, orchestral, acoustic, energetic, lush, anxious, sombre, suspenseful	3.95	335	1
528	Monk's Music	Hard Bop	instrumental, acoustic, improvisation, melodic, soothing, technical, passionate	3.92	3043	44
529	White Light From the Mouth of Infinity	Gothic Rock, Post-Punk	sombre, atmospheric, male vocals, lush, pessimistic, lonely, poetic, existential, cold, ominous	3.85	12145	103
530	The Mantle	Post-Metal, Folk Metal, Dark Folk	melancholic, pagan, winter, atmospheric, cold, nature, sombre, forest, male vocals, dark	3.84	11455	205
531	Heaven and Hell	Heavy Metal	energetic, male vocals, heavy, epic, anthemic, sombre, melodic, bittersweet, passionate, melancholic	3.85	10883	279
532	Microphones in 2020	Singer/Songwriter, Indie Folk, Avant-Folk	introspective, repetitive, existential, sentimental, male vocals, melancholic, bittersweet, poetic, meditative, hypnotic	3.85	9948	193
533	Modal Soul	Jazz Rap, Instrumental Hip Hop	peaceful, soothing, mellow, sampling, warm, bittersweet, uplifting, atmospheric, melancholic, male vocals	3.88	8666	55
534	Masked Dancers: Concern in So Many Things You Forget Where You Are	Midwest Emo, Math Rock	passionate, bittersweet, anxious, male vocals, introspective, energetic, sad, uncommon time signatures, complex, poetic	3.89	4622	47
535	Cosmogramma	IDM, Glitch Hop, Wonky	futuristic, space, chaotic, rhythmic, instrumental, lush, atmospheric, psychedelic, dense, spiritual	3.81	17776	163
3590	The Hawk Flies High	Hard Bop	improvisation, energetic, acoustic, instrumental	3.74	516	8
536	Hvis lyset tar oss	Atmospheric Black Metal	cold, atmospheric, raw, lo-fi, sombre, male vocals, ominous, repetitive, dark, winter	3.85	10680	177
537	Yank Crime	Post-Hardcore, Math Rock, Noise Rock	energetic, noisy, anxious, aggressive, dissonant, passionate, male vocals, complex, angry, uncommon time signatures	3.87	7634	74
538	H to He Who Am the Only One	Progressive Rock	lonely, complex, philosophical, progressive, existential, poetic, alienation, male vocals, pessimistic, introspective	3.9	4318	96
539	Bir Pesimistin Gözyaşları	Abstract Hip Hop, Boom Bap	male vocals, melancholic, pessimistic, sad, sampling, depressive, poetic, introspective, conscious, rhythmic	3.89	371	6
540	Sketches of Spain	Third Stream, Modal Jazz	instrumental, orchestral, mellow, warm, mysterious, ominous, acoustic, complex, improvisation, sombre	3.87	9669	136
541	Final Fantasy IX	Video Game Music, Sequencer & Tracker	fantasy, atmospheric, epic, instrumental, medieval, energetic	3.91	874	12
542	Just Got Back From the Discomfort—We're Alright	Midwest Emo, Experimental Rock	passionate, bittersweet, introspective, anxious, uncommon time signatures, existential, poetic, energetic, male vocals, cryptic	3.86	7560	105
543	Musick to Play in the Dark	Electronic, Post-Industrial, Experimental	nocturnal, atmospheric, surreal, cryptic, ominous, occult, cold, male vocals, dark, hypnotic	3.89	5737	50
544	Persona3	Video Game Music, Electronic	urban, energetic, futuristic, rhythmic, bittersweet, eclectic, male vocals, mysterious, triumphant, female vocals	3.93	875	7
545	From Mars to Sirius	Progressive Metal, Death Metal	heavy, apocalyptic, nature, fantasy, conscious, science fiction, aggressive, concept album, male vocals, progressive	3.85	8248	118
546	Catch a Fire	Roots Reggae	mellow, rhythmic, conscious, melodic, summer, male vocals, tropical, warm, passionate, uplifting	3.9	5266	101
547	Heart of The Congos	Roots Reggae	mellow, warm, religious, spiritual, rhythmic, tropical, psychedelic, lo-fi, summer, melodic	3.91	3962	83
548	Holy Diver	Heavy Metal	fantasy, energetic, male vocals, epic, anthemic, heavy, melodic, uplifting, passionate, nocturnal	3.86	8307	154
549	Defenders of the Faith	Heavy Metal	male vocals, energetic, melodic, anthemic, heavy, rebellious, futuristic, triumphant, passionate, epic	3.88	5850	116
550	Exuma	Caribbean Folk Music, Freak Folk	ritualistic, tropical, tribal, occult, manic, psychedelic, passionate, spiritual, rhythmic, acoustic	3.89	7541	70
551	Sleeping Beauty	Jazz Fusion, Spiritual Jazz	spring, spiritual, peaceful, warm, space, rhythmic, hypnotic, romantic, calm, mellow	3.92	2700	24
552	The Lord of the Rings: The Two Towers	Film Score, Cinematic Classical, Orchestral	epic, fantasy, complex, melodic, sombre, choral, bittersweet, lush, suspenseful, orchestral	3.92	1581	9
553	Symphonie No. 4	Romanticism, Symphony	instrumental, orchestral, symphony, acoustic, passionate, melodic, polyphonic, epic, suspenseful, complex	3.92	1104	17
554	Unquestionable Presence	Technical Death Metal, Progressive Metal	technical, uncommon time signatures, complex, energetic, philosophical, male vocals, progressive, existential, heavy, spiritual	3.85	7238	132
555	Empyrean Isles	Hard Bop, Post-Bop	instrumental, improvisation, passionate, mellow, uncommon time signatures, rhythmic, acoustic	3.91	4014	60
556	Tango: Zero Hour / Nuevo Tango: Hora Zero	Tango nuevo	instrumental, passionate, mellow, complex, progressive, technical, lonely, sensual, nocturnal, romantic	3.93	1859	32
557	Power, Corruption & Lies	Synthpop, New Wave, Post-Punk	rhythmic, melancholic, male vocals, mechanical, energetic, anxious, bittersweet, melodic, romantic, passionate	3.82	16619	192
558	The Legend of Zelda: Breath of the Wild	Video Game Music, Ambient, Modern Classical	minimalistic, instrumental, epic, bittersweet, lush, pastoral, eclectic, calm, suspenseful, sparse	3.92	654	7
560	Taking Tiger Mountain (By Strategy)	Art Rock, Art Pop	playful, surreal, quirky, male vocals, avant-garde, eclectic, concept album, melodic, abstract, cryptic	3.87	8947	149
561	Mental Funeral	Death Metal	death, heavy, violence, vulgar, disturbing, raw, rhythmic, dark, infernal, ominous	3.88	4292	62
562	Sun Ship	Spiritual Jazz, Avant-Garde Jazz	avant-garde, passionate, improvisation, instrumental, spiritual, energetic, technical, chaotic, complex, lush	3.91	2710	35
563	Os afro-sambas de Baden e Vinícius	Samba	passionate, female vocals, religious, mythology, male vocals, poetic, dark, spiritual, melodic, raw	3.93	1718	18
564	The Lord of the Rings: The Return of the King	Film Score, Cinematic Classical, Orchestral	epic, fantasy, orchestral, triumphant, suspenseful, sentimental, acoustic, choral, martial, sombre	3.91	1531	15
565	Feldman Edition 6: String Quartet No. 2	Modern Classical, Chamber Music	string quartet, sparse, instrumental, acoustic, atonal, hypnotic, meditative, surreal, chamber music, calm	3.89	872	21
566	Die Kunst der Fuge	Baroque Music	acoustic, instrumental, technical, melodic	3.93	438	1
567	I Could Live in Hope	Slowcore	lonely, sad, melancholic, lethargic, depressive, mellow, introspective, minimalistic, alienation, apathetic	3.86	10712	133
568	Skylarking	Psychedelic Pop, Pop Rock, Neo-Psychedelia	psychedelic, summer, melodic, lush, pastoral, concept album, male vocals, bittersweet, warm, poetic	3.86	8653	200
569	Supreme Clientele	East Coast Hip Hop, Hardcore Hip Hop, Abstract Hip Hop	violence, crime, abstract, male vocals, urban, rhythmic, humorous, drugs, aggressive, boastful	3.88	6661	108
570	At the Heart of Winter	Black Metal	winter, cold, melodic, epic, heavy, male vocals, fantasy, energetic, dense, atmospheric	3.88	5540	82
571	The G.A.T...	Jazz Rap, East Coast Hip Hop, Conscious Hip Hop	sampling, boastful, urban, lo-fi, repetitive, male vocals, introspective, warm, optimistic, crime	3.9	1383	10
572	Ladies and Gentlemen We Are Floating in Space	Neo-Psychedelia, Space Rock, Art Rock	lonely, drugs, melancholic, romantic, psychedelic, space, dense, sad, male vocals, introspective	3.82	15967	198
573	The Great Annihilator	Post-Punk, Experimental Rock	sombre, misanthropic, ominous, atmospheric, apocalyptic, mysterious, male vocals, lonely, pessimistic, female vocals	3.86	10963	65
574	Juju	Gothic Rock, Post-Punk	nocturnal, dark, female vocals, mysterious, anxious, energetic, psychedelic, rhythmic, surreal, sombre	3.88	7823	100
575	Arise	Thrash Metal	aggressive, angry, energetic, heavy, male vocals, violence, death, apocalyptic, conscious, political	3.87	6223	128
576	Stained Class	Heavy Metal	energetic, male vocals, heavy, melodic, rebellious, anthemic, science fiction, passionate, technical, triumphant	3.88	6120	137
577	Richard D. James Album	IDM, Drill and Bass	playful, complex, instrumental, energetic, mechanical, quirky, atmospheric, rhythmic, melodic, technical	3.81	18173	181
578	Desertshore	Avant-Folk, Chamber Folk	sombre, dark, lonely, medieval, poetic, female vocals, apocalyptic, cold, funereal, ominous	3.86	8572	117
579	Beneath the Remains	Thrash Metal	aggressive, violence, energetic, male vocals, heavy, apocalyptic, angry, death, political, dark	3.87	6602	124
580	Mosaic	Hard Bop	instrumental, energetic, warm, acoustic, improvisation, rhythmic, playful, autumn	3.93	1631	19
581	Strawberry Jam	Neo-Psychedelia, Art Pop	manic, playful, psychedelic, energetic, bittersweet, surreal, melodic, dense, noisy, passionate	3.79	19295	298
582	De-Loused in the Comatorium	Progressive Rock, Post-Hardcore	energetic, technical, cryptic, anxious, complex, passionate, concept album, uncommon time signatures, psychedelic, progressive	3.81	16100	376
583	Operation: Doomsday	Abstract Hip Hop, East Coast Hip Hop	humorous, sampling, abstract, male vocals, playful, concept album, rhythmic, mellow, poetic, quirky	3.85	13466	119
584	Ironman	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	aggressive, urban, crime, boastful, sexual, violence, male vocals, rhythmic, dark, sampling	3.89	5251	100
585	Funkentelechy vs. the Placebo Syndrome	P-Funk	playful, humorous, rhythmic, science fiction, uplifting, male vocals, happy, quirky, concept album, warm	3.91	2841	63
586	A Clockwork Orange	Film Soundtrack, Western Classical Music	triumphant, instrumental, playful, orchestral, quirky, surreal, melodic, epic, polyphonic	3.91	1722	38
587	Ace of Spades	Heavy Metal, Hard Rock	energetic, aggressive, male vocals, sexual, heavy, rhythmic, raw, drugs, rebellious, hedonistic	3.85	8890	190
589	The Good Son	Singer/Songwriter, Piano Rock	male vocals, sombre, melancholic, romantic, religious, nocturnal, lonely, lush, poetic, melodic	3.87	7427	100
590	Be	Conscious Hip Hop	uplifting, conscious, happy, mellow, male vocals, urban, warm, love, passionate, sampling	3.88	7776	125
591	And Their Refinement of the Decline	Ambient, Drone	peaceful, atmospheric, mellow, melancholic, warm, calm, meditative, instrumental, minimalistic, soothing	3.87	6449	103
592	Crimson	Melodic Death Metal, Progressive Metal	fantasy, epic, progressive, apocalyptic, melodic, heavy, dark, concept album, male vocals, science fiction	3.85	5037	111
593	Sorrow Tears and Blood	Afrobeat	rhythmic, protest, political, angry, male vocals, violence, repetitive, warm, rebellious, conscious	3.92	2037	15
594	Speak No Evil	Post-Bop	instrumental, acoustic, mellow, mysterious, nocturnal, improvisation, calm, complex, technical	3.9	4289	70
595	The Shape of Punk to Come	Post-Hardcore, Hardcore Punk	energetic, angry, protest, aggressive, political, anarchism, rebellious, passionate, male vocals, eclectic	3.84	9666	158
596	Blowout Comb	Jazz Rap, East Coast Hip Hop, Conscious Hip Hop	mellow, urban, female vocals, male vocals, political, conscious, soothing, warm, rhythmic, nocturnal	3.88	5347	84
597	Mulholland Dr.	Film Soundtrack, Film Score	dark, mysterious, atmospheric, surreal, suspenseful, instrumental, female vocals	3.93	1283	14
599	Glassworks	Minimalism	instrumental, repetitive, hypnotic, orchestral, minimalistic, lush, mysterious, atmospheric, complex, surreal	3.89	5378	61
600	Symphony No. 3	Symphony, Modern Classical	sad, passionate, female vocals, melancholic, orchestral, symphony, atmospheric, sentimental, acoustic	3.88	2574	44
601	救済の技法 (Kyuusai no gihou)	Art Pop, Progressive Pop, Electronic	epic, dense, Wall of Sound, passionate, lush, atmospheric, ethereal, orchestral, futuristic, melodic	3.91	1741	12
602	Tender Prey	Post-Punk, Gothic Rock	nocturnal, dark, death, religious, anxious, male vocals, poetic, energetic, melancholic, sombre	3.86	8442	119
603	Ten	Grunge, Alternative Rock, Hard Rock	passionate, energetic, male vocals, melancholic, melodic, angry, heavy, bittersweet, lonely, anthemic	3.77	20078	565
604	The Clash	Punk Rock	political, angry, energetic, rebellious, raw, rhythmic, conscious, male vocals, anthemic, melodic	3.83	13511	329
605	Songs From the Big Chair	Synthpop, New Wave	anthemic, passionate, melodic, lush, male vocals, introspective, melancholic, conscious, love, sentimental	3.86	8882	150
606	The Cold Vein	Abstract Hip Hop, East Coast Hip Hop, Experimental Hip Hop, Conscious Hip Hop	cold, futuristic, urban, ethereal, mechanical, cryptic, abstract, atmospheric, conscious, male vocals	3.86	7976	149
607	A Farewell to Kings	Progressive Rock, Hard Rock	progressive, science fiction, male vocals, technical, fantasy, complex, philosophical, epic, uncommon time signatures, passionate	3.86	7731	164
608	Blood Fire Death	Black Metal, Thrash Metal	mythology, war, history, raw, aggressive, epic, dark, male vocals, energetic, apocalyptic	3.86	7330	112
609	Don Cherry	Spiritual Jazz	psychedelic, hypnotic, spiritual, avant-garde, surreal, ritualistic, atmospheric, mysterious, male vocals, nocturnal	3.91	2618	30
610	Minecraft: Volume Beta	Ambient, Video Game Music, Electronic	instrumental, peaceful, atmospheric, lush, ethereal, eclectic, cold, meditative, bittersweet, soothing	3.91	2029	17
611	Mercy, Mercy, Mercy!	Hard Bop, Soul Jazz	energetic, passionate, uplifting, melodic, playful, improvisation, optimistic, rhythmic	3.93	1147	31
612	Unearthed	Americana	introspective, melancholic, acoustic, religious, poetic, pastoral, male vocals	3.91	1070	17
613	XXX	Hardcore Hip Hop	drugs, vulgar, sexual, depressive, boastful, manic, hedonistic, energetic, male vocals, aggressive	3.82	15085	109
614	Hayalet Islığı	Boom Bap, Abstract Hip Hop	funereal, death, concept album, passionate, male vocals, sampling, lonely, rhythmic, depressive, sentimental	3.9	951	11
615	ABC Music: The Radio 1 Sessions	Noise Pop, Art Pop, Indie Rock	repetitive, warm, hypnotic, rhythmic, female vocals, uplifting, Wall of Sound, energetic, political, psychedelic	3.93	722	16
616	Violent Femmes	Folk Punk, Alternative Rock, Acoustic Rock	anxious, lonely, sexual, humorous, acoustic, male vocals, rebellious, playful, energetic, raw	3.82	13368	208
617	Free Jazz	Free Jazz	improvisation, chaotic, instrumental, avant-garde, technical, dissonant, energetic, acoustic, anxious, complex	3.88	4655	91
618	Monk's Dream	Hard Bop	instrumental, playful, improvisation, acoustic, soothing	3.9	3677	56
619	Iron Maiden	NWOBHM, Heavy Metal	energetic, male vocals, rebellious, heavy, melodic, raw, fantasy, anthemic, rhythmic, nocturnal	3.83	12839	325
620	Jailbreak	Hard Rock	energetic, male vocals, rebellious, melodic, anthemic, passionate, playful, love, triumphant, sentimental	3.87	5529	165
622	EVOL	Noise Rock, Experimental Rock	raw, atmospheric, mysterious, noisy, dissonant, anxious, surreal, dark, sombre, nocturnal	3.84	12577	167
623	The Idiot	Art Rock, Post-Punk	dark, cold, drugs, hedonistic, nihilistic, anxious, atmospheric, nocturnal, alienation, male vocals	3.85	10544	175
624	Doggystyle	G-Funk, West Coast Hip Hop, Gangsta Rap	vulgar, sexual, drugs, humorous, hedonistic, crime, urban, boastful, party, alcohol	3.84	9927	189
625	Bocanada	Art Pop, Downtempo, Art Rock, Neo-Psychedelia	eclectic, atmospheric, male vocals, poetic, sampling, hypnotic, lush, melancholic, melodic, psychedelic	3.9	3314	32
626	Ask the Ages	Avant-Garde Jazz	instrumental, energetic, improvisation, technical, chaotic, passionate, noisy, complex, avant-garde, manic	3.9	2456	44
627	Aladdin Sane	Glam Rock, Art Rock	male vocals, melodic, playful, energetic, passionate, quirky, rebellious, urban, anthemic, sexual	3.81	17488	292
628	Times of Grace	Atmospheric Sludge Metal	heavy, atmospheric, apocalyptic, male vocals, nihilistic, sombre, dense, misanthropic, dark, depressive	3.88	4693	55
629	Search for the New Land	Post-Bop	instrumental, improvisation, warm, acoustic, passionate	3.92	1630	28
630	This Is Happening	Dance-Punk, Indietronica	rhythmic, sarcastic, energetic, repetitive, male vocals, bittersweet, deadpan, quirky, eclectic, nocturnal	3.81	15074	179
631	Leprosy	Death Metal	aggressive, heavy, death, male vocals, energetic, pessimistic, angry, ominous, manic, dark	3.86	8506	130
632	Repetition	Post-Hardcore, Noise Rock	anxious, dissonant, noisy, repetitive, apathetic, misanthropic, raw, melancholic, male vocals, cryptic	3.88	5810	36
633	Sechs Suiten für Violoncello Solo BWV 1007-1012	Baroque Music	suite, instrumental, acoustic, soothing, passionate, melodic, soft	3.92	893	8
634	Bloodborne	Video Game Music, Cinematic Classical, Modern Classical	epic, orchestral, choral, suspenseful, scary, dark, ominous, apocalyptic, fantasy, mysterious	3.92	680	4
635	Permanent Waves	Progressive Rock, Hard Rock	philosophical, male vocals, uncommon time signatures, complex, science fiction, progressive, melodic, introspective, energetic, technical	3.85	7910	171
636	The Dance of the Moon and the Sun	Drone, Psychedelic Folk, Avant-Folk	ethereal, winter, cold, occult, hypnotic, lo-fi, atmospheric, ritualistic, melancholic, psychedelic	3.87	4723	98
637	悪魔城ドラキュラX～月下の夜想曲～ (Akumajo Dracula X ~Gekka no Nocturne~)	Video Game Music, Sequencer & Tracker, Neoclassical Darkwave	fantasy, atmospheric, nocturnal, orchestral, epic, ominous, dark, melodic, sombre, eclectic	3.9	787	7
638	Helplessness Blues	Indie Folk, Chamber Folk	autumn, acoustic, lush, nature, romantic, pastoral, bittersweet, poetic, melodic, male vocals	3.82	13823	208
639	The Idler Wheel Is Wiser Than the Driver of the Screw and Whipping Cords Will Serve You More Than Ropes Will Ever Do	Singer/Songwriter, Art Pop	introspective, female vocals, poetic, breakup, melodic, anxious, sparse, bittersweet, love, melancholic	3.84	10634	151
640	For Your Pleasure	Art Rock, Glam Rock	sexual, dark, male vocals, nocturnal, anxious, sensual, energetic, hedonistic, melodic, urban	3.86	8035	172
642	The Main Ingredient	East Coast Hip Hop, Boom Bap, Conscious Hip Hop	mellow, urban, sampling, conscious, rhythmic, male vocals, sexual, atmospheric, boastful, warm	3.89	2437	51
643	Xenogears	Video Game Music, Sequencer & Tracker	atmospheric, epic, mysterious, war, cold, dark, science fiction, ...	3.89	416	4
644	Endless	Ambient Pop, Alternative R&B, Art Pop	atmospheric, ethereal, mellow, male vocals, melancholic, LGBT, bittersweet, love, longing, sparse	3.85	8911	39
645	The Complete Works	Modern Classical	orchestral, dissonant, complex, avant-garde, dense, eclectic, manic, suspenseful, chaotic, scary	3.89	1039	12
646	剣風伝奇ベルセルク (Berserk)	Television Music, Electronic	ominous, dark, medieval, instrumental, triumphant, female vocals, infernal, male vocals, epic, mechanical	3.92	1080	6
647	Teens of Denial	Indie Rock	anxious, bittersweet, energetic, drugs, dense, raw, existential, male vocals, passionate, pessimistic	3.82	14218	104
648	Bee Thousand	Lo-Fi / Slacker Rock	lo-fi, melodic, surreal, cryptic, playful, male vocals, energetic, raw, passionate, poetic	3.84	9904	189
649	South of Heaven	Thrash Metal	angry, dark, male vocals, death, heavy, energetic, aggressive, infernal, misanthropic, war	3.84	9635	161
650	Court and Spark	Singer/Songwriter, Folk Pop	poetic, melodic, lush, female vocals, acoustic, romantic, soft, introspective, love, mellow	3.88	5647	119
651	Let's Get It On	Smooth Soul	sexual, romantic, sensual, passionate, love, warm, male vocals, melodic, urban, lush	3.88	5982	100
652	6 Feet Deep	Horrorcore, East Coast Hip Hop	dark, humorous, violence, occult, death, misanthropic, male vocals, sampling, drugs, suicide	3.87	4952	95
653	Fight Songs: The Music of Team Fortress 2	Video Game Music, Big Band, Jazz Fusion	orchestral, epic, eclectic, instrumental, anthemic, quirky, triumphant, ensemble, martial, energetic	3.9	877	6
654	Nada como um dia após o outro dia	Hardcore Hip Hop, Conscious Hip Hop	conscious, protest, crime, urban, male vocals, uplifting, pessimistic, atmospheric	3.91	867	5
655	Kingdom Hearts II Original Soundtrack	Video Game Music, Cinematic Classical	instrumental, passionate, melancholic, sentimental, orchestral, eclectic, melodic, playful, epic, atmospheric	3.92	485	10
656	Ascension [Edition II]	Free Jazz, Spiritual Jazz	passionate, acoustic, instrumental, spiritual, chaotic, dense, improvisation, avant-garde, noisy, anxious	3.9	564	2
657	American Football	Midwest Emo	lonely, melancholic, breakup, autumn, bittersweet, male vocals, mellow, uncommon time signatures, sentimental, introspective	3.78	20432	184
658	Atomizer	Noise Rock, Post-Hardcore	misanthropic, mechanical, aggressive, noisy, raw, male vocals, disturbing, angry, rebellious, violence	3.84	9710	119
659	Band on the Run	Pop Rock	melodic, happy, male vocals, uplifting, playful	3.86	7187	191
660	Fear of a Black Planet	Political Hip Hop, East Coast Hip Hop, Conscious Hip Hop	political, angry, protest, dense, urban, conscious, energetic, sampling, rebellious, male vocals	3.85	7160	142
661	The Devil and God Are Raging Inside Me	Emo, Indie Rock	passionate, melancholic, depressive, angry, introspective, anxious, male vocals, sombre, sad, serious	3.8	14407	233
662	69 Love Songs	Indie Pop	love, LGBT, romantic, sarcastic, humorous, concept album, bittersweet, melodic, male vocals, female vocals	3.84	9268	248
663	Epicus Doomicus Metallicus	Epic Doom Metal, Traditional Doom Metal	epic, heavy, sombre, ominous, occult, dark, fantasy, melodic, male vocals, death	3.86	7026	116
665	R4™ / Ridge Racer Type 4 / Direct Audio	Video Game Music, Electronic Dance Music	nocturnal, urban, mellow, rhythmic, uplifting, energetic, lush, eclectic, warm	3.93	385	2
666	And Then Nothing Turned Itself Inside-Out	Dream Pop, Indie Rock	nocturnal, mellow, atmospheric, melancholic, soft, bittersweet, introspective, soothing, warm, male vocals	3.85	9289	141
667	Apostrophe (')	Jazz-Rock, Art Rock, Experimental Rock	humorous, complex, male vocals, eclectic, playful, surreal, concept album, technical, quirky, uncommon time signatures	3.85	8745	138
668	Nespithe	Technical Death Metal	technical, complex, cryptic, surreal, uncommon time signatures, heavy, male vocals, science fiction, dark, death	3.87	4554	121
669	The Royal Scam	Pop Rock	urban, male vocals, sarcastic, mellow, drugs, playful, rhythmic, melodic, crime, deadpan	3.88	4699	117
670	The Sidewinder	Hard Bop	instrumental, energetic, acoustic, playful, happy, passionate, improvisation, urban, warm	3.9	3095	57
671	Final Fantasy VIII	Video Game Music, Sequencer & Tracker	fantasy, romantic, eclectic, science fiction, playful, mood, epic, atmospheric	3.91	837	13
672	Symphony No. 3 (Symphony of Sorrowful Songs); 3 Olden Style Pieces	Modern Classical	sad, female vocals, melancholic, orchestral, atmospheric, sentimental, acoustic, passionate, symphony	3.9	580	3
674	The Stooges	Garage Rock, Proto-Punk	raw, noisy, sexual, rebellious, energetic, nihilistic, apathetic, psychedelic, male vocals, hedonistic	3.83	13382	264
675	Harmony in Ultraviolet	Ambient	melancholic, atmospheric, instrumental, noisy, dense, sombre, meditative, hypnotic, soothing, dark	3.86	7951	69
676	Green River	Swamp Rock	male vocals, passionate, pastoral, uplifting, melodic, rebellious, warm, energetic	3.87	6745	121
677	The Blueprint	East Coast Hip Hop, Chipmunk Soul	boastful, male vocals, rhythmic, sampling, urban, triumphant, crime, introspective, lush, sentimental	3.84	9875	152
678	Oceanic	Atmospheric Sludge Metal, Post-Metal	atmospheric, aquatic, heavy, male vocals, concept album, epic, dense, aggressive, melancholic, death	3.85	7200	100
679	The Fountain	Film Score, Modern Classical, Cinematic Classical	melancholic, instrumental, atmospheric, epic, sentimental, suspenseful	3.87	2269	59
680	真・女神転生III Nocturne (Shin Megami Tensei III: Nocturne)	Video Game Music, Sequencer & Tracker	dark, suspenseful, atmospheric, apocalyptic, occult, energetic, instrumental, epic, surreal	3.94	340	1
681	Portishead	Trip Hop	atmospheric, dark, sombre, mysterious, melancholic, female vocals, nocturnal, cold, introspective, anxious	3.83	13325	141
682	"Al final de este viaje..."	Nueva trova	acoustic, passionate, male vocals, poetic, conscious, warm, melodic, melancholic, protest, love	3.91	1489	33
683	Rhapsody in Blue; An American in Paris	Modern Classical	melodic, urban, orchestral, tone poem, instrumental, energetic, acoustic, complex, epic, sentimental	3.91	929	16
684	Estudando o samba	Samba, MPB	male vocals, humorous, avant-garde, complex, playful, quirky, poetic, melodic, melancholic, surreal	3.9	1962	20
685	João Gilberto	Bossa nova	warm, calm, soothing, acoustic, soft, hypnotic, male vocals, repetitive, minimalistic, poetic	3.9	1880	49
686	Virgins	Ambient, Drone, Electroacoustic	dark, dense, instrumental, atmospheric, noisy, ominous, surreal, dissonant, hypnotic, cold	3.84	9339	73
687	Painful	Indie Rock, Noise Pop	melancholic, nocturnal, mellow, atmospheric, noisy, female vocals, male vocals, lonely, romantic, bittersweet	3.86	7661	91
688	Mama's Gun	Neo-Soul	lush, mellow, female vocals, warm, romantic, psychedelic, sensual, love, nocturnal, peaceful	3.88	4096	48
689	Souls at Zero	Atmospheric Sludge Metal, Sludge Metal	apocalyptic, dark, heavy, misanthropic, atmospheric, male vocals, angry, nihilistic, ominous, sombre	3.88	3977	53
690	Neue Wiener Schule: Die Streichquartette	Serialism, Chamber Music	instrumental, atonal, acoustic, string quartet	3.9	652	10
691	Choir Concerto	Modern Classical, Choral, Concerto	atmospheric, choral, epic, concerto, spiritual, dissonant, religious, polyphonic, bittersweet	3.93	381	2
692	Mule Variations	Singer/Songwriter, Blues Rock	male vocals, raw, mysterious, melancholic, poetic, atmospheric, dark, eclectic, passionate, nocturnal	3.87	6516	122
693	Piece of Mind	Heavy Metal, NWOBHM	male vocals, epic, energetic, passionate, history, anthemic, heavy, mythology, fantasy, melodic	3.82	11786	257
694	The Colour of Spring	Art Pop	spring, male vocals, passionate, bittersweet, lush, melodic, warm, mellow, introspective, atmospheric	3.85	9548	141
695	Maiden Voyage	Modal Jazz	instrumental, acoustic, improvisation, aquatic, mellow, melodic, concept album, calm	3.88	4582	55
696	Imaginations From the Other Side	Power Metal	fantasy, epic, melodic, male vocals, heavy, medieval, energetic, passionate, triumphant, anthemic	3.83	4157	64
697	The Godfather	Film Score, Cinematic Classical	sombre, instrumental, pastoral, orchestral, ominous, crime, atmospheric, folklore, acoustic, dark	3.9	1413	11
698	Jet Set Radio Future (ジェットセットラジオフューチャー)	Video Game Music, Big Beat	party, playful, energetic, urban, rhythmic, futuristic, psychedelic, ethereal, lush, eclectic	3.91	981	5
699	Walter Carlos' Clockwork Orange	Electronic, Western Classical Music, Film Soundtrack	futuristic, humorous, suspenseful, atmospheric, melodic, poetic, avant-garde, dark, mechanical, apocalyptic	3.92	605	16
700	LISA	Video Game Music, Electronic, Post-Industrial	apocalyptic, eclectic, instrumental, dark, energetic, melancholic, sampling, scary, psychedelic, infernal	3.9	613	10
701	ゼノブレイド Xenoblade	Video Game Music, Cinematic Classical	epic, sentimental, eclectic, suspenseful, instrumental, atmospheric, lush, mysterious, triumphant, orchestral	3.88	427	5
702	Nonagon Infinity	Psychedelic Rock, Garage Rock	repetitive, energetic, psychedelic, science fiction, male vocals, uncommon time signatures, occult, concept album, rhythmic, hypnotic	3.82	12536	83
703	Blues for the Red Sun	Stoner Rock, Stoner Metal	heavy, desert, psychedelic, male vocals, warm, dense, drugs, hypnotic, cryptic, humorous	3.85	8499	143
704	Worry.	Pop Punk, Power Pop, Indie Rock	energetic, melodic, anxious, alcohol, introspective, male vocals, love, political, pessimistic, passionate	3.83	8422	62
705	Money Jungle	Hard Bop	energetic, improvisation, instrumental, acoustic, rhythmic, dissonant, technical, raw	3.88	4323	68
706	The Real McCoy	Post-Bop	instrumental, passionate, rhythmic, technical, acoustic, improvisation, energetic, complex	3.9	2512	36
749	Off the Wall	Disco, Pop	party, happy, male vocals, warm, rhythmic, love, energetic, lush, nocturnal, romantic	3.83	10358	189
707	Octet; Music for a Large Ensemble; Violin Phase	Minimalism	repetitive, instrumental, hypnotic, minimalistic, acoustic, meditative, rhythmic, soothing, avant-garde, atmospheric	3.91	1635	13
708	Legacy of Brutality	Horror Punk, Punk Rock	Halloween, lo-fi, male vocals, energetic, scary, dark, aggressive, death, atmospheric, passionate	3.91	1152	25
709	Barry Lyndon	Film Soundtrack, Western Classical Music	instrumental, acoustic, melodic, epic	3.92	455	5
710	Peace Sells... But Who's Buying?	Thrash Metal	technical, energetic, male vocals, aggressive, sarcastic, political, angry, death, war, ominous	3.82	11871	272
711	Nursery Cryme	Progressive Rock, Symphonic Prog	fantasy, surreal, male vocals, progressive, quirky, melodic, playful, humorous, uncommon time signatures, warm	3.85	8417	192
712	American IV: The Man Comes Around	Americana	introspective, melancholic, sombre, male vocals, death, serious, poetic, acoustic, lonely, melodic	3.87	5890	133
713	Complete / Sämtliche / Les 21 Nocturnes	Romanticism	instrumental, bittersweet, acoustic, nocturnal, melancholic, sombre, atmospheric, passionate	3.91	356	6
714	Talking Heads: 77	New Wave, Art Punk	anxious, playful, energetic, rhythmic, male vocals, quirky, urban, humorous, melodic, manic	3.8	17233	222
715	The Age of Adz	Art Pop, Progressive Pop, Indietronica	epic, futuristic, dense, introspective, complex, lush, love, passionate, anxious, male vocals	3.81	13745	189
716	Idle Moments	Hard Bop	instrumental, mellow, improvisation, warm, nocturnal, soothing, acoustic, atmospheric, melodic	3.89	3292	48
717	勝訴ストリップ (Shōso strip)	Art Pop, J-Rock	noisy, female vocals, dense, energetic, passionate, playful, melodic, quirky, manic, urban	3.87	3479	36
718	Disco Elysium	Video Game Music, Ambient, Post-Rock	melancholic, atmospheric, sombre, instrumental, cold, lonely, mysterious, urban, winter, dark	3.88	659	12
719	Boxer	Indie Rock, Post-Punk Revival	melancholic, lonely, bittersweet, introspective, sombre, male vocals, lush, autumn, poetic, nocturnal	3.8	13770	275
720	Bad Brains	Hardcore Punk	energetic, angry, political, raw, aggressive, passionate, male vocals, rebellious, conscious, lo-fi	3.84	9354	185
721	Floating Into the Night	Ambient Pop, Dream Pop	nocturnal, ethereal, atmospheric, soothing, mysterious, surreal, love, mellow, female vocals, melancholic	3.86	6526	88
722	Left Hand Path	Death Metal	dark, heavy, aggressive, misanthropic, male vocals, anti-religious, death, energetic, angry, raw	3.86	5521	69
723	The Woods	Indie Rock	noisy, energetic, raw, passionate, female vocals, rebellious, heavy, anxious, aggressive, angry	3.85	6514	112
724	Gnossiennes; Gymnopédies; Ogives; Trois sarabandes; Petite ouverture à danser	Impressionism	melancholic, instrumental, sparse, bittersweet, calm, autumn, lonely, pastoral, soothing, soft	3.9	1358	18
726	Merriweather Post Pavilion	Psychedelic Pop, Neo-Psychedelia	summer, psychedelic, dense, warm, uplifting, happy, hypnotic, playful, melodic, male vocals	3.72	27566	643
727	Stories From the City, Stories From the Sea	Alternative Rock, Singer/Songwriter	urban, female vocals, melodic, optimistic, love, introspective, passionate, bittersweet, anxious, melancholic	3.84	9637	153
728	Damnation	Progressive Rock	sombre, mellow, atmospheric, melancholic, male vocals, progressive, soft, autumn, introspective, depressive	3.83	10229	232
729	Willisau (Quartet) 1991	Avant-Garde Jazz, Modern Creative	improvisation, instrumental, abstract, complex, eclectic, acoustic, chamber music, avant-garde, technical, atonal	3.92	309	8
730	Kill 'Em All	Thrash Metal	energetic, rebellious, aggressive, heavy, male vocals, raw, boastful, violence, anthemic, hedonistic	3.77	21929	398
731	A I A: Alien Observer	Ambient	ethereal, atmospheric, lonely, space, melancholic, female vocals, lo-fi, mysterious, nocturnal, warm	3.85	8277	52
732	Arnold Schoenberg 2: Streichquartette I-IV	Expressionism, Chamber Music, Serialism	string quartet, avant-garde, complex, atonal, anxious, technical, melancholic, atmospheric, dissonant, sombre	3.89	1085	7
733	Cowboy Bebop Blue	Television Music	bittersweet, female vocals, male vocals, eclectic, rhythmic, playful, longing	3.91	983	12
734	Divers	Chamber Folk, Singer/Songwriter	poetic, history, female vocals, pastoral, lush, passionate, bittersweet, complex, concept album, fantasy	3.85	6611	76
735	Nightfall	Epic Doom Metal, Traditional Doom Metal, Doom Metal	epic, heavy, religious, death, male vocals, sombre, fantasy, melodic, dark, ominous	3.85	4536	71
736	Game Theory	East Coast Hip Hop, Hardcore Hip Hop	urban, sombre, dark, male vocals, angry, atmospheric, political, crime, rhythmic, raw	3.87	4522	72
737	Keeper of the Seven Keys Part II	Power Metal	fantasy, epic, melodic, energetic, male vocals, uplifting, triumphant, optimistic, anthemic, happy	3.83	4655	82
738	We Insist! Max Roach's Freedom Now Suite	Avant-Garde Jazz	protest, female vocals, avant-garde, passionate, serious, political, rhythmic, conscious, concept album, energetic	3.88	2954	31
739	3 Gymnopédies & Other Piano Works · und andere Klavierstücke	Impressionism	instrumental, melancholic, mellow, soothing, peaceful, minimalistic, acoustic, melodic, atmospheric, playful	3.9	1869	21
740	Cartola	Samba-choro	melancholic, poetic, romantic, male vocals, bittersweet, melodic, breakup, soft, female vocals, acoustic	3.91	1715	24
741	De mysteriis dom Sathanas	Black Metal	satanic, cold, dark, aggressive, nocturnal, male vocals, sombre, occult, death, heavy	3.83	9543	171
742	My Arms, Your Hearse	Progressive Metal	dark, melancholic, atmospheric, sombre, death, progressive, male vocals, heavy, concept album, paranormal	3.84	7106	121
743	Under the Sign of the Black Mark	Black Metal	infernal, satanic, raw, aggressive, death, male vocals, heavy, dark, mythology, atmospheric	3.85	6203	76
744	Steve McQueen	Sophisti-Pop, Pop Rock	bittersweet, romantic, melodic, passionate, melancholic, sentimental, longing, breakup, male vocals, love	3.86	5486	134
745	The Rocky Horror Picture Show	Film Soundtrack, Glam Rock, Rock Opera	LGBT, energetic, rock opera, playful, sexual, humorous, happy, female vocals, male vocals, uplifting	3.88	1679	40
746	Da lama ao caos	Manguebeat	rhythmic, political, energetic, conscious, male vocals, protest, tropical, playful, passionate, angry	3.9	1298	13
747	ピンポン オリジナルサウンドトラック	Television Music, Electronic Dance Music	rhythmic, uplifting, party, lush, mechanical, energetic, instrumental	3.9	501	2
748	4 Balladen; Barcarolle; Fantasie	Romanticism	instrumental, acoustic, mellow, ballad, technical, passionate	3.92	362	2
750	Lightning to the Nations	NWOBHM, Heavy Metal	energetic, male vocals, melodic, anthemic, sexual, heavy, passionate	3.87	2932	87
751	Run the Jewels 2	Hardcore Hip Hop	aggressive, energetic, political, boastful, angry, crime, male vocals, urban, rebellious, conscious	3.79	16711	109
752	Goo	Alternative Rock, Noise Rock	energetic, noisy, male vocals, rebellious, dissonant, female vocals, apathetic, anxious, sexual, raw	3.79	16479	188
753	Scary Monsters (And Super Creeps)	Art Rock, New Wave	quirky, male vocals, melodic, playful, rhythmic, energetic, anxious, eclectic, futuristic, raw	3.82	13469	253
754	Histoire de Melody Nelson	French Pop, Art Pop	sexual, sensual, concept album, hedonistic, male vocals, lush, poetic, melodic, disturbing, orchestral	3.83	8184	178
755	The Blues and the Abstract Truth	Hard Bop	instrumental, playful, passionate, acoustic, mellow	3.88	2650	56
756	フリクリ (FLCL): OST 1 ~ Addict	Power Pop, Television Music, J-Rock, Alternative Rock	male vocals, energetic, rebellious, instrumental, romantic, melancholic, summer, noisy, melodic, anthemic	3.89	1667	8
757	I'm Still in Love With You	Southern Soul	romantic, passionate, warm, love, melodic, sensual, male vocals, mellow, summer, soft	3.89	2507	51
758	New World Symphony / The Moldau	Romanticism, Symphony	triumphant, symphony, acoustic, orchestral, instrumental	3.92	320	2
759	Pink	Noise Rock, Stoner Metal	energetic, noisy, heavy, psychedelic, aggressive, male vocals, raw, passionate, dissonant, warm	3.82	11767	129
760	무너지기 (Crumbling)	Neo-Psychedelia, Folktronica, Psychedelic Pop	lush, psychedelic, dense, warm, male vocals, soft, ethereal, female vocals, melodic, mellow	3.83	9916	94
761	Yeti	Krautrock, Psychedelic Rock	psychedelic, improvisation, dense, heavy, hypnotic, atmospheric, avant-garde, male vocals, dark, energetic	3.84	7788	151
762	Transilvanian Hunger	Black Metal	cold, lo-fi, raw, dark, satanic, atmospheric, repetitive, misanthropic, nocturnal, minimalistic	3.83	8346	110
763	The Tired Sounds Of	Ambient, Drone	ethereal, soothing, peaceful, warm, instrumental, meditative, atmospheric, calm, sparse, repetitive	3.84	7409	71
764	So	Art Pop, Pop Rock	passionate, melodic, warm, male vocals, lush, sentimental, rhythmic, introspective, bittersweet, melancholic	3.85	7414	179
765	Buena Vista Social Club	Son cubano, Bolero	warm, tropical, melodic, mellow, rhythmic, male vocals, acoustic, uplifting, sentimental, playful	3.87	6695	81
766	Jesus Christ Superstar	Rock Opera, Film Soundtrack, Show Tunes	epic, religious, concept album, Christian, male vocals, female vocals, energetic, rock opera	3.89	611	20
767	The Nutcracker	Romanticism, Orchestral	instrumental, playful, warm, lush, romantic, suite, winter, acoustic, melodic, orchestral	3.91	503	8
768	Pétrouchka; Le Sacre du printemps	Modern Classical, Orchestral	acoustic, avant-garde, orchestral, instrumental, spring, playful	3.88	489	2
769	Can't Buy a Thrill	Pop Rock	melodic, sarcastic, playful, male vocals, urban, warm, mellow, conscious, soft, lush	3.85	7351	144
770	Paracletus	Black Metal	chaotic, infernal, philosophical, uncommon time signatures, technical, satanic, dissonant, dense, dark, complex	3.83	6249	72
771	Brilliant Corners	Hard Bop	mellow, instrumental, technical, improvisation, acoustic, complex, playful	3.87	5213	73
772	Pierced From Within	Brutal Death Metal	aggressive, technical, complex, energetic, heavy, male vocals, dense, dark, hateful, uncommon time signatures	3.86	3292	57
773	Nocturnes	Romanticism	instrumental, nocturnal, soothing, calm, melancholic, acoustic, mellow, complex, bittersweet, melodic	3.91	339	2
774	Requiem; Lontano; Continuum	Modern Classical, Choral	scary, dense, avant-garde, dissonant, suspenseful, ominous, complex, choral, atonal, polyphonic	3.88	707	5
775	The Life of Pablo	Pop Rap, Hip Hop	boastful, vulgar, religious, sexual, manic, sampling, eclectic, passionate, male vocals, energetic	3.7	32526	277
776	Argus	Hard Rock, Progressive Rock	medieval, epic, male vocals, triumphant, progressive, melodic, pastoral, mythology	3.86	4553	158
777	Abigail	Heavy Metal	paranormal, concept album, ominous, heavy, male vocals, suspenseful, nocturnal, melodic, energetic, complex	3.85	4253	103
779	Scheherazade and Other Stories	Symphonic Prog	epic, female vocals, fantasy, melodic, complex, progressive, medieval, concept album, suite, pastoral	3.88	2703	63
780	Freak Out!	Experimental Rock, Satire, Psychedelic Rock	satirical, humorous, psychedelic, sarcastic, playful, male vocals, eclectic, political, surreal, quirky	3.81	11812	293
781	Sonic the Hedgehog CD Original Soundtrack 20th Anniversary Edition	Video Game Music, House	atmospheric, sampling, lush, playful, energetic, instrumental, futuristic, rhythmic, dense, eclectic	3.89	573	4
782	アダンの風 (Windswept Adan)	Chamber Folk, Singer/Songwriter	ethereal, peaceful, aquatic, female vocals, calm, nature, lush, soothing, soft, melodic	3.84	8464	72
783	By Inheritance	Thrash Metal	energetic, technical, melodic, political, angry, male vocals, aggressive, pessimistic, heavy	3.87	2355	58
784	Jacques Brel [Ces gens-là]	Chanson à texte	poetic, lush, passionate, male vocals, orchestral, love, romantic, manic, sarcastic, bittersweet	3.89	1825	20
785	渋星 (Shibuboshi)	Experimental Big Band, Jazz Fusion	epic, manic, chaotic, dense, rhythmic, complex, aggressive, avant-garde, instrumental, dissonant	3.9	1171	7
786	Haibane-Renmei: Hanenone	Television Music, Chamber Music, Western Classical Music	mysterious, bittersweet, soothing, female vocals, peaceful	3.93	326	4
787	Berlin	Art Rock	depressive, sad, rock opera, male vocals, poetic, urban, bittersweet, dark, concept album, breakup	3.84	8733	203
788	Ommadawn	Progressive Rock, New Age	mellow, meditative, progressive, lush, epic, calm, atmospheric, peaceful, pastoral, autumn	3.86	4341	90
789	Straight, No Chaser	Post-Bop	instrumental, soft, peaceful, warm, quirky, lush, technical	3.89	1818	25
790	This Nation's Saving Grace	Post-Punk	sarcastic, deadpan, repetitive, apathetic, satirical, energetic, male vocals, urban, cryptic, misanthropic	3.84	7232	124
791	The Chronic	G-Funk, West Coast Hip Hop, Gangsta Rap	crime, drugs, urban, vulgar, violence, sampling, sexual, boastful, male vocals, hedonistic	3.81	11729	242
792	Emperor Tomato Ketchup	Art Pop	hypnotic, political, playful, rhythmic, repetitive, psychedelic, female vocals, futuristic, abstract, melodic	3.84	9055	139
793	Consuming Impulse	Death Metal	aggressive, rhythmic, male vocals, anxious, energetic, heavy, violence, death, misanthropic, dense	3.86	3429	50
794	...Like Clockwork	Alternative Rock	sombre, death, male vocals, lonely, melancholic, melodic, desert, existential, introspective, nocturnal	3.81	13099	152
795	The Glowing Man	Post-Rock, Experimental Rock	atmospheric, repetitive, hypnotic, epic, dense, ominous, ritualistic, spiritual, apocalyptic, heavy	3.82	9926	93
796	Hollow Knight	Video Game Music, Cinematic Classical, Ambient	ethereal, mysterious, epic, atmospheric, lush, calm, instrumental, melancholic, depressive, bittersweet	3.9	866	3
797	Skeleton Tree	Singer/Songwriter, Art Rock	death, introspective, dark, melancholic, atmospheric, male vocals, sombre, poetic, religious, sparse	3.83	9221	93
798	Relayer	Progressive Rock, Symphonic Prog	epic, complex, progressive, technical, uncommon time signatures, fantasy, energetic, male vocals, dense, philosophical	3.84	7768	225
799	Necroticism: Descanting the Insalubrious	Death Metal	violence, heavy, aggressive, death, male vocals, rhythmic, technical, energetic, concept album, poetic	3.85	4554	100
800	Veedon Fleece	Singer/Songwriter, Contemporary Folk, Folk Rock	pastoral, poetic, warm, male vocals, autumn, longing, passionate, melodic, sentimental, lush	3.87	3132	86
801	Call Me	Southern Soul	passionate, romantic, warm, melodic, love, male vocals, sensual, lush, Christian, uplifting	3.88	3023	65
802	ファイナルファンタジーX (Final Fantasy X)	Video Game Music, Sequencer & Tracker	fantasy, epic, eclectic, atmospheric, science fiction, romantic, bittersweet, choral, mellow, female vocals	3.9	802	14
803	Graceland	Pop Rock, Singer/Songwriter	playful, eclectic, warm, poetic, male vocals, introspective, rhythmic, melodic, summer, longing	3.82	8658	189
804	This Heat	Experimental Rock, Experimental	cold, ominous, mechanical, anxious, avant-garde, suspenseful, dark, political, male vocals, atmospheric	3.84	6660	93
805	Verisäkeet	Folk Metal, Black Metal, Pagan Black Metal	epic, pagan, mythology, male vocals, forest, atmospheric, dense, nature, passionate, heavy	3.83	2901	55
806	Symphonie Nr. 6 »Pastorale«	Symphony, Romanticism	symphony, orchestral, instrumental, pastoral, acoustic, melodic, passionate, lush, natural, sentimental	3.91	312	6
807	The Modern Dance	Post-Punk, Art Punk, Experimental Rock	anxious, raw, sarcastic, dissonant, manic, energetic, chaotic, male vocals, avant-garde, urban	3.82	9202	174
808	Metal Box	Post-Punk, Experimental Rock	dark, anxious, rhythmic, repetitive, male vocals, cold, dissonant, mechanical, nihilistic, misanthropic	3.82	8384	186
809	Tim Burton's The Nightmare Before Christmas	Film Score, Show Tunes, Holiday Music	Halloween, Christmas, male vocals, playful, uplifting, lonely, ominous, melodic, female vocals, paranormal	3.87	1639	21
811	Never for Ever	Art Pop, Baroque Pop, Progressive Pop	melodic, quirky, female vocals, ethereal, lush, playful, sensual, atmospheric, progressive, fantasy	3.85	7815	120
812	Goodbye Yellow Brick Road	Piano Rock, Pop Rock	melodic, bittersweet, male vocals, romantic, melancholic, lush, eclectic, energetic, playful, sentimental	3.84	7051	209
813	Symphony No. 5	Modern Classical, Symphony	instrumental, symphony, triumphant, epic, suspenseful, complex, energetic, orchestral, anxious, ominous	3.91	305	4
814	Moonmadness	Progressive Rock, Symphonic Prog	mellow, epic, progressive, melancholic, uncommon time signatures, winter, lonely, melodic, psychedelic, nocturnal	3.86	4939	118
815	The Slider	Glam Rock	playful, sexual, male vocals, melodic, energetic, dense, passionate	3.86	4814	137
816	Rodeo	Trap, Southern Hip Hop	drugs, nocturnal, party, atmospheric, sexual, hedonistic, hypnotic, male vocals, alcohol, urban	3.77	16186	105
817	Soul Food	Southern Hip Hop, Conscious Hip Hop	sombre, conscious, male vocals, urban, political, rhythmic, existential, spiritual, introspective, optimistic	3.86	2826	59
818	Magdalene	Art Pop, Glitch Pop	introspective, female vocals, longing, atmospheric, ethereal, melancholic, breakup, abstract, progressive, love	3.8	13509	103
819	The Kick Inside	Art Pop	romantic, poetic, love, female vocals, sensual, melodic, passionate, warm, lush, uplifting	3.83	10583	195
820	The Grand Wazoo	Jazz-Rock, Jazz Fusion	instrumental, complex, technical, quirky, triumphant, eclectic, epic, progressive, psychedelic	3.86	5273	100
821	Sackcloth 'n' Ashes	Gothic Country, Alt-Country	misanthropic, pessimistic, passionate, religious, poetic, pastoral, Christian, dark, spiritual, anxious	3.86	4593	76
822	Max & Match	K-Pop, Dance-Pop, Future Bass	rhythmic, female vocals, melodic, playful, energetic, lush, sensual, romantic, love, urban	3.84	3498	26
823	Neon Genesis Evangelion	Television Music, Cinematic Classical	epic, triumphant, anthemic, suspenseful, melodic, instrumental, lush, mellow, energetic, passionate	3.89	1457	5
824	The Head on the Door	Post-Punk, New Wave	melodic, male vocals, bittersweet, melancholic, lush, eclectic, atmospheric, anxious, psychedelic, playful	3.82	11839	158
825	Children of God	Experimental Rock, Post-Punk, Gothic Rock	ominous, male vocals, misanthropic, female vocals, sexual, sombre, atmospheric, repetitive, religious, dark	3.81	10861	117
826	Ravedeath, 1972	Ambient, Drone	instrumental, atmospheric, dense, noisy, sombre, surreal, hypnotic, melancholic, apocalyptic, cold	3.82	9873	87
827	Bookends	Folk Pop, Folk Rock	mellow, soft, melodic, pastoral, male vocals, warm, introspective, sentimental, poetic, passionate	3.84	7291	145
828	Operation: Mindcrime	Heavy Metal, Progressive Metal	political, rock opera, crime, melodic, male vocals, urban, concept album, progressive, epic, rebellious	3.79	6277	204
829	Paysage d'Hiver	Atmospheric Black Metal	lo-fi, cold, winter, raw, lonely, atmospheric, male vocals, dark, nocturnal, repetitive	3.85	4909	69
830	Dusty in Memphis	Pop Soul, Blue-Eyed Soul	romantic, melodic, female vocals, warm, mellow, uplifting, soothing, love, lush, sensual	3.86	4136	115
831	Peace and Love	Nyahbinghi	ritualistic, passionate, spiritual, religious, soothing, psychedelic, repetitive, hypnotic, meditative, warm	3.88	2269	37
832	Samurai Champloo Music Record: Departure	Instrumental Hip Hop, Television Music	soothing, atmospheric, meditative, instrumental, lush, mellow, ethereal, rhythmic, peaceful, hypnotic	3.88	2227	12
833	Lola Versus Powerman and the Moneygoround (Part One)	Pop Rock	satirical, sarcastic, concept album, melodic, playful, male vocals, humorous, bittersweet, energetic, quirky	3.86	5220	127
834	Mecca and the Soul Brother	East Coast Hip Hop, Boom Bap, Jazz Rap, Conscious Hip Hop	urban, rhythmic, conscious, sampling, male vocals, serious, boastful, nocturnal, religious, spiritual	3.85	3728	79
835	Bloom	Dream Pop, Indie Pop	ethereal, mellow, female vocals, atmospheric, melancholic, warm, passionate, melodic, soothing, longing	3.77	17683	226
836	In absentia	Progressive Rock	melancholic, sombre, melodic, atmospheric, progressive, male vocals, heavy, crime, dark, concept album	3.81	11083	251
837	Jeopardy	Post-Punk	anxious, energetic, male vocals, melancholic, passionate, raw, dark, alienation, conscious, existential	3.86	5473	83
838	Liege & Lief	British Folk Rock, Folk Rock	folklore, pastoral, melodic, poetic, female vocals, passionate, bittersweet, energetic, progressive, warm	3.86	4086	113
839	Eat a Peach	Southern Rock, Jam Band, Blues Rock	warm, pastoral, improvisation, mellow, male vocals, summer, introspective, melodic, love, uplifting	3.86	4093	111
840	Ptah, the El Daoud	Spiritual Jazz	instrumental, spiritual, meditative, soothing, mellow, atmospheric, avant-garde, warm, hypnotic, improvisation	3.88	2983	36
841	Clifford Brown and Max Roach	Hard Bop	instrumental, warm, energetic, melodic, technical, acoustic, urban, rhythmic, uplifting, happy	3.88	2094	35
842	Tropicália ou panis et circencis	Tropicália	tropical, psychedelic, satirical, history, eclectic, protest, melodic, progressive, conscious, lush	3.88	1962	28
843	Long Live Rock 'n' Roll	Hard Rock, Heavy Metal	fantasy, passionate, energetic, male vocals, uplifting, melodic, anthemic, heavy	3.85	4349	92
844	The Crimson Idol	Heavy Metal, Rock Opera	anxious, melodic, concept album, self-hatred, introspective, lonely, melancholic, rock opera, pessimistic, male vocals	3.84	2427	71
845	Tristan und Isolde	Opera, Romanticism	opera, epic, female vocals, romantic, male vocals, suspenseful, love	3.88	521	7
846	Cavalcade	Avant-Prog	chaotic, complex, avant-garde, technical, male vocals, dense, eclectic, dissonant, progressive, suspenseful	3.8	13946	193
847	No More Shall We Part	Singer/Songwriter, Piano Rock	melancholic, religious, lonely, depressive, sad, introspective, male vocals, poetic, winter, alienation	3.85	6212	119
848	Covenant	Death Metal	satanic, misanthropic, angry, heavy, occult, ominous, energetic, aggressive, rhythmic, dark	3.85	4342	64
849	6 String Quartets	Modern Classical, Chamber Music	string quartet, acoustic, instrumental, chamber music, dissonant	3.89	317	7
850	Santana III	Latin Rock	energetic, psychedelic, rhythmic, tropical, passionate, warm, playful, male vocals, sexual, sensual	3.88	2785	58
851	The Jazz Composer's Orchestra	Experimental Big Band, Free Jazz	dense, complex, avant-garde, passionate, chaotic, instrumental, ominous, improvisation, aggressive, suspenseful	3.87	1277	16
852	Over the Garden Wall	Television Music, Ragtime, Chamber Folk, American Folk Music	autumn, pastoral, Halloween, eclectic, nocturnal, fairy tale, suspenseful, bittersweet, playful, quirky	3.88	839	6
853	Variations Goldberg BWV 988	Baroque Music	acoustic, instrumental, complex, melodic, polyphonic, playful, melancholic, technical, ethereal, sentimental	3.9	345	1
854	The Elder Scrolls III: Morrowind	Video Game Music, Cinematic Classical, Modern Classical	atmospheric, melancholic, instrumental, medieval, epic, lonely, orchestral, suspenseful, fantasy	3.88	791	12
855	Giù la testa	Film Score, Spaghetti Western	atmospheric, desert	3.9	601	12
856	Les cinq quatuors à cordes; Trio à cordes; Khoom	Chamber Music, Modern Classical	chamber music, string quartet, minimalistic, avant-garde, sparse, meditative, female vocals, microtonal	3.89	551	7
857	Lust for Life	Rock, Art Rock	energetic, sexual, playful, male vocals, passionate, raw, rebellious, love, anthemic, drugs	3.82	10149	150
858	Apollo: Atmospheres & Soundtracks	Space Ambient, Soundtracks	ethereal, space, soothing, atmospheric, meditative, instrumental, calm, mysterious, peaceful, sombre	3.84	6770	92
859	New Plastic Ideas	Post-Hardcore, Noise Rock	noisy, raw, anxious, dissonant, energetic, male vocals, apathetic, heavy, angry, depressive	3.85	5329	32
860	Hex Enduction Hour	Post-Punk, Art Punk	sarcastic, repetitive, misanthropic, energetic, cryptic, raw, noisy, rebellious, male vocals, satirical	3.84	6243	114
861	Didn't It Rain	Singer/Songwriter, Contemporary Folk, Slowcore	sparse, lonely, depressive, melancholic, sombre, sad, dark, lethargic, male vocals, serious	3.86	2936	34
862	The IVth Crusade	Death Metal	war, rhythmic, heavy, dark, male vocals, dense, history, epic, violence, energetic	3.86	2963	43
863	Le mystère des voix bulgares : volume 1	Bulgarian Folk Music, Polyphonic Chant, White Voice	polyphonic, a cappella, choral, ethereal, melancholic, passionate, female vocals, spiritual, folklore, pastoral	3.88	2300	27
864	Rated R	Stoner Rock, Alternative Rock	energetic, male vocals, psychedelic, desert, drugs, sexual, heavy, alcohol, hedonistic, melodic	3.8	12989	193
865	Silent Hill 3	Video Game Music, Trip Hop	dark, suspenseful, nocturnal, cold, surreal, sombre, atmospheric, mysterious, female vocals, ominous	3.88	1772	17
866	The Four Seasons	Baroque Music, Concerto	spring, summer, autumn, winter, seasonal, concerto, instrumental, acoustic, sentimental, lush	3.89	672	6
867	Person Pitch	Psychedelic Pop, Neo-Psychedelia, Plunderphonics	psychedelic, sampling, warm, hypnotic, uplifting, summer, tropical, atmospheric, male vocals, dense	3.78	13725	277
868	E·MO·TION	Dance-Pop, Synthpop	energetic, happy, romantic, love, female vocals, melodic, uplifting, optimistic, party, sentimental	3.77	13751	159
869	Dopesmoker	Stoner Metal, Doom Metal	drugs, heavy, hypnotic, repetitive, desert, male vocals, psychedelic, epic, dense, spiritual	3.81	9006	135
870	All Hail West Texas	Singer/Songwriter, Indie Folk	lo-fi, acoustic, male vocals, bittersweet, poetic, concept album, pastoral, raw, minimalistic, introspective	3.85	4959	55
871	Solid Air	Singer/Songwriter, British Folk Rock	mellow, male vocals, nocturnal, romantic, passionate, rhythmic, love, sensual, autumn, melodic	3.86	3679	101
872	Klavierkonzert Nr. 3 C-dur / Klavierkonzert G-dur	Modern Classical, Concerto	orchestral, concerto, acoustic, instrumental	3.9	544	5
873	Amarcord	Film Score, Cinematic Classical		3.9	358	4
874	Daytona	Hardcore Hip Hop, Southern Hip Hop	sampling, drugs, crime, boastful, male vocals, aggressive, urban, violence, dark, serious	3.76	18882	133
875	Crime of the Century	Progressive Rock, Art Rock	melodic, male vocals, progressive, introspective, existential, bittersweet, complex, sarcastic, alienation, anxious	3.84	5723	136
876	Gentleman	Afrobeat	political, energetic, hypnotic, rhythmic, rebellious, conscious, repetitive, angry, passionate, tropical	3.88	2424	31
877	One Flight Up	Hard Bop	improvisation, rhythmic, nocturnal, warm, acoustic, urban, technical, melodic, playful, passionate	3.9	653	4
878	City	Industrial Metal	aggressive, heavy, chaotic, dense, complex, misanthropic, mechanical, manic, male vocals, angry	3.83	4642	98
879	Science Fiction	Free Jazz, Avant-Garde Jazz	improvisation, avant-garde, technical, chaotic, energetic, passionate, spiritual, apocalyptic, dense, female vocals	3.87	2351	32
880	Conspiracy	Heavy Metal	paranormal, suspenseful, melodic, male vocals, progressive, heavy, scary, concept album, occult, rock opera	3.86	2127	43
881	Psycho	Film Score, Cinematic Classical, Modern Classical	suspenseful, instrumental, ominous, mysterious, dark, nocturnal	3.89	670	7
882	Made in Abyss	Television Music, Ambient, Modern Classical	peaceful, calm, suspenseful, melancholic, epic, instrumental, lush	3.89	538	2
883	Miles Smiles	Modal Jazz, Post-Bop	instrumental, improvisation, energetic, playful, acoustic, warm, complex, passionate, technical, rhythmic	3.86	4312	75
884	Fas – Ite, maledicti, in ignem aeternum	Black Metal	satanic, apocalyptic, technical, chaotic, infernal, dense, dissonant, uncommon time signatures, concept album, male vocals	3.83	3988	54
885	American III: Solitary Man	Americana, Country	lonely, introspective, longing, depressive, acoustic, melodic, sombre, bittersweet, melancholic, poetic	3.86	3557	74
886	Saint Dominic's Preview	Singer/Songwriter, Folk Rock	pastoral, male vocals, poetic, sentimental, warm, uplifting, passionate, summer	3.86	2852	65
887	Complete Works Opp 1-31	Serialism, Modern Classical	atonal, female vocals, avant-garde, uncommon time signatures, acoustic	3.87	789	12
888	Hana-bi	Film Score, Neoclassical New Age, Cinematic Classical	orchestral, mellow, longing, melodic, sentimental, melancholic	3.9	511	4
889	Aretha Now	Southern Soul	female vocals, passionate, uplifting, warm, love, melodic, summer, rhythmic, romantic, longing	3.88	1792	28
890	Outer Wilds	Video Game Music, Post-Rock, Folktronica	mysterious, space, lonely, apocalyptic, atmospheric, science fiction, melancholic, meditative, futuristic, ominous	3.9	346	3
891	Murder Ballads	Alternative Rock, Singer/Songwriter	crime, dark, death, suspenseful, violence, concept album, winter, male vocals, humorous, vulgar	3.82	8731	135
892	Structures From Silence	Space Ambient	peaceful, space, ethereal, soothing, atmospheric, repetitive, meditative, instrumental, calm, hypnotic	3.85	5089	73
893	Passion (Music for The Last Temptation of Christ)	Film Score, New Age	meditative, spiritual, tribal, atmospheric, desert, instrumental, mysterious, sombre, religious, Christian	3.86	3227	65
894	A divina comédia ou ando meio desligado	Psychedelic Rock, Tropicália	playful, psychedelic, warm, tropical, summer, male vocals, female vocals, satirical, quirky, surreal	3.87	2896	46
895	Super Mario Galaxy 2	Video Game Music, Cinematic Classical, Orchestral	orchestral, space, triumphant, melodic, playful, nature, energetic, instrumental, seasonal, fantasy	3.9	337	2
896	Ramones	Punk Rock	energetic, raw, urban, rebellious, male vocals, melodic, repetitive, playful, minimalistic, violence	3.77	13655	405
897	Wowee Zowee	Indie Rock	playful, male vocals, eclectic, humorous, energetic, sarcastic, surreal, melodic, bittersweet, noisy	3.82	9195	179
898	'Round About Midnight	Hard Bop	instrumental, nocturnal, acoustic, passionate, urban, rhythmic, soothing, improvisation, mellow, lonely	3.85	6205	85
899	Abattoir Blues / The Lyre of Orpheus	Alternative Rock, Art Rock	religious, male vocals, love, dark, melodic, introspective, passionate, existential, epic, apocalyptic	3.84	6076	104
900	3rd	Pop Rock	lonely, sad, melancholic, depressive, melodic, introspective, male vocals, sombre, nihilistic, existential	3.83	5665	167
901	Crescent	Post-Bop	instrumental, improvisation, warm, acoustic, nocturnal, passionate, spiritual, soothing, melancholic	3.87	2744	33
902	For Philip Guston	Modern Classical, Chamber Music	meditative, sombre, sparse, instrumental, minimalistic, calm, acoustic, mysterious, chamber music, dissonant	3.82	1103	20
903	Per qualche dollaro in più	Film Score, Spaghetti Western	ominous, atmospheric, desert, instrumental, sombre, epic, warm, suspenseful	3.89	978	8
904	Is This Real?	Punk Rock	introspective, energetic, anxious, alienation, male vocals, passionate, longing, heavy, dark, raw	3.85	4559	49
905	One Nation Under a Groove	P-Funk, Funk Rock	party, uplifting, happy, political, rhythmic, psychedelic, male vocals, passionate, humorous, urban	3.86	3925	61
906	Gal Costa	Tropicália, Psychedelic Pop	tropical, psychedelic, summer, female vocals, warm, playful, melodic, lush, romantic, mellow	3.86	3403	37
907	Those Who Throw Objects at the Crocodiles Will Be Asked to Retrieve Them	Progressive Pop, Art Pop, Jazz Pop, Jazz Fusion	female vocals, warm, repetitive, male vocals, psychedelic, mellow, eclectic, peaceful, melodic, tropical	3.86	3298	30
908	Teen Dream	Dream Pop, Indie Pop	soothing, romantic, ethereal, mellow, melancholic, warm, melodic, female vocals, longing, bittersweet	3.76	18168	256
909	Feels	Neo-Psychedelia	warm, playful, psychedelic, love, surreal, spring, bittersweet, male vocals, passionate, uplifting	3.78	15740	233
910	Music for the Masses	Synthpop	male vocals, melodic, passionate, cold, atmospheric, dark, rhythmic, sensual, romantic, sombre	3.82	8894	139
911	Black Celebration	Synthpop	dark, nocturnal, sombre, atmospheric, ominous, male vocals, melodic, melancholic, passionate, romantic	3.83	8124	113
912	Biomech	Progressive Metal, Alternative Metal	atmospheric, aquatic, dense, melodic, ethereal, male vocals, introspective, Wall of Sound, uplifting, passionate	3.82	4223	110
913	Symphonie Nr. 7	Symphony, Romanticism	symphony, instrumental, orchestral, acoustic, triumphant, playful, epic, passionate, pastoral, energetic	3.89	400	0
914	Hosianna Mantra	Neoclassical New Age	meditative, peaceful, female vocals, ethereal, spiritual, soothing, mellow, calm, mysterious, atmospheric	3.83	7157	91
915	Songs About Leaving	Slowcore	lonely, depressive, sad, suicide, melancholic, death, female vocals, male vocals, breakup, autumn	3.83	6793	68
916	Scott 3	Baroque Pop, Singer/Songwriter, Art Pop	lush, melancholic, melodic, atmospheric, winter, sombre, poetic, male vocals, orchestral, romantic	3.83	6082	83
917	Little Girl Blue	Vocal Jazz	female vocals, melancholic, romantic, sentimental, melodic, passionate, acoustic, bittersweet, soft	3.86	2659	42
918	Here in After	Death Metal	complex, technical, anti-religious, uncommon time signatures, rhythmic, dark, male vocals, infernal, heavy, aggressive	3.85	2406	34
919	Basra	Hard Bop, Modal Jazz	instrumental, improvisation, acoustic, melodic, mellow, rhythmic	3.88	1194	17
920	Street Fighter III: 3rd Strike - Fight for the Future	Video Game Music, Breakbeat, Acid House	mellow, energetic, aggressive, male vocals, urban, sampling, ethereal, lush, eclectic, instrumental	3.89	480	7
921	Concerto grosso I; Concerto for Oboe and Harp; Concerto for Piano and Strings	Concerto, Serialism, Modern Classical, Chamber Music	instrumental, scary, suspenseful, atonal, chamber music, dissonant, avant-garde, acoustic, eclectic, ominous	3.89	277	4
922	Spirit They're Gone Spirit They've Vanished	Neo-Psychedelia, Experimental	bittersweet, noisy, fantasy, playful, nocturnal, melancholic, surreal, ethereal, male vocals, psychedelic	3.78	12671	175
923	The Snow Goose	Symphonic Prog, Progressive Rock	instrumental, concept album, epic, winter, progressive, mellow, melodic, fantasy, lush, atmospheric	3.84	5091	107
924	What's Your Pleasure?	Dance-Pop, Disco	sensual, female vocals, love, lush, rhythmic, nocturnal, party, romantic, soft, sexual	3.79	11225	99
925	S.F. Sorrow	Psychedelic Rock, Rock Opera	psychedelic, rock opera, male vocals, war, death, pessimistic, concept album, philosophical, progressive, lonely	3.84	4181	125
926	Per un pugno di dollari	Film Score, Spaghetti Western	atmospheric, desert, instrumental, sombre, mysterious, epic, warm, suspenseful	3.88	1097	8
927	Mishima	Film Score, Modern Classical	repetitive, minimalistic, sombre, atmospheric, instrumental, hypnotic	3.87	852	10
928	If Beale Street Could Talk	Film Score, Cinematic Classical	romantic, lush, soft, peaceful, meditative, sensual, orchestral, sentimental, soothing, instrumental	3.91	347	1
929	Yanqui U.X.O.	Post-Rock	instrumental, apocalyptic, atmospheric, epic, suite, suspenseful, ominous, political, sombre, noisy	3.79	14060	169
930	Visions of Bodies Being Burned	Horrorcore, Industrial Hip Hop, Experimental Hip Hop	dark, avant-garde, noisy, ominous, male vocals, nocturnal, death, scary, concept album, Halloween	3.8	10451	107
931	Closing Time	Singer/Songwriter, Piano Blues	lonely, melancholic, nocturnal, love, romantic, alcohol, male vocals, sad, longing, sombre	3.82	9046	193
932	Music From Big Pink	Folk Rock, Roots Rock	peaceful, passionate, poetic, male vocals, bittersweet, lush, warm, spiritual, sentimental, mellow	3.82	7313	199
933	Illadelph Halflife	East Coast Hip Hop, Boom Bap	urban, mellow, male vocals, raw, nocturnal, serious, conscious, poetic, rhythmic	3.85	3928	53
934	Buhloone Mind State	East Coast Hip Hop, Conscious Hip Hop, Jazz Rap	playful, uplifting, sampling, urban, rhythmic, male vocals, conscious, mellow	3.86	2504	38
935	Two Airships / Exploder Falls	Noise Pop, Neo-Psychedelia	noisy, psychedelic, surreal, energetic, instrumental, warm, dense, eclectic, uplifting, lobit	3.86	1615	18
936	Diabolical Conquest	Death Metal	infernal, dark, heavy, dense, rhythmic, aggressive, anti-religious, energetic, raw, death	3.85	1601	21
937	The Elder Scrolls V: Skyrim	Video Game Music, Orchestral, Cinematic Classical	epic, medieval, winter, pastoral, cold, atmospheric, orchestral, mysterious, suspenseful, melancholic	3.85	1512	23
938	Études Op.10 & Op.25	Romanticism	instrumental, acoustic, technical, complex, romantic, melodic, uplifting, suspenseful, poetic, soothing	3.88	635	6
939	For Emma, Forever Ago	Indie Folk, Singer/Songwriter	breakup, winter, melancholic, acoustic, romantic, male vocals, sad, sparse, melodic, passionate	3.75	17306	233
940	We're Only in It for the Money	Experimental Rock, Satire	satirical, sarcastic, humorous, psychedelic, avant-garde, pessimistic, concept album, eclectic, rebellious, manic	3.8	9086	214
941	Taxi Driver	Film Score, Cool Jazz	nocturnal, lonely, melancholic, atmospheric, urban, mysterious, instrumental, rain, pessimistic	3.87	1728	22
942	The ArchAndroid	Contemporary R&B, Art Pop	science fiction, futuristic, eclectic, uplifting, concept album, lush, energetic, political, female vocals, romantic	3.79	10228	204
943	Secret Treaties	Hard Rock	cryptic, mysterious, psychedelic, male vocals, energetic, playful, heavy, melodic, passionate, dark	3.84	4193	121
944	Severed Survival	Death Metal	violence, death, aggressive, raw, male vocals, heavy, vulgar, disturbing, energetic	3.84	3380	51
945	Point of Departure	Avant-Garde Jazz	instrumental, passionate, avant-garde, technical, complex, improvisation, acoustic, cryptic, rhythmic, serious	3.85	3024	56
946	Revés / Yosoy	Experimental Rock, Art Rock, Art Pop	eclectic, lush, male vocals, hypnotic, psychedelic, introspective, progressive, optimistic, melancholic, atmospheric	3.86	832	18
947	Os Mutantes	Tropicália, Psychedelic Rock	playful, psychedelic, tropical, sarcastic, energetic, humorous, male vocals, satirical, female vocals, quirky	3.83	7099	160
948	Get in the Van	Spoken Word	introspective, rebellious, history, male vocals, misanthropic, self-hatred, angry, serious, violence, pessimistic	3.86	332	9
949	The Somberlain	Melodic Black Metal	atmospheric, sombre, dark, nocturnal, ominous, misanthropic, infernal, melodic, occult, aggressive	3.84	3723	42
951	Saturation II	Pop Rap, West Coast Hip Hop	LGBT, boastful, summer, male vocals, playful, eclectic, rebellious, quirky, introspective, melodic	3.74	18322	85
952	Sabotage	Heavy Metal, Hard Rock	heavy, male vocals, energetic, introspective, epic, dark, alienation, rhythmic, complex, sombre	3.8	10532	233
953	Onward to Golgotha	Death Metal	infernal, heavy, rhythmic, aggressive, anti-religious, dark, death, ominous, atmospheric, raw	3.84	2781	46
954	Jet Set Radio	Video Game Music, Instrumental Hip Hop, Big Beat	sampling, urban, energetic, futuristic, playful, rhythmic, eclectic, instrumental, uplifting	3.87	1291	14
955	Sonny's Dream (Birth of the New Cool)	Progressive Big Band, Post-Bop	energetic, melodic, complex, acoustic, lush, mysterious, improvisation, instrumental, nocturnal	3.89	577	7
956	Meat Is Murder	Jangle Pop, Indie Pop	melancholic, introspective, lonely, poetic, existential, sarcastic, male vocals, conscious, melodic, alienation	3.75	18222	246
957	Deadwing	Progressive Rock	melancholic, sombre, death, male vocals, atmospheric, concept album, progressive, paranormal, melodic, eclectic	3.81	8375	201
958	Horse Rotorvator	Industrial	sexual, occult, sombre, ominous, vulgar, LGBT, ritualistic, dark, death, anxious	3.82	6812	85
959	A Sun That Never Sets	Atmospheric Sludge Metal, Post-Metal	heavy, dark, male vocals, sombre, nihilistic, atmospheric, melancholic, depressive, serious, infernal	3.83	3937	47
960	Caravanserai	Jazz-Rock, Latin Rock	tropical, improvisation, epic, spiritual, rhythmic, passionate, desert, mellow, technical, atmospheric	3.85	3047	97
961	Das Lied von der Erde	Romanticism, Symphony	symphony, orchestral, triumphant, uplifting, melodic, suspenseful	3.86	407	3
962	Unholy Cult	Death Metal	cold, infernal, anti-religious, complex, dissonant, technical, heavy, hateful, atmospheric, aggressive	3.84	1954	25
963	Alucinação	MPB, Singer/Songwriter, Folk Rock	philosophical, passionate, conscious, poetic, rebellious, acoustic, sentimental, mellow, urban, melodic	3.86	1369	15
964	Storia di un impiegato	Canzone d'autore	political, sombre, male vocals, rebellious, protest, introspective, crime, concept album, urban, melodic	3.87	1295	11
965	Bandana	Gangsta Rap	male vocals, sampling, drugs, crime, lush, urban, warm, introspective, hypnotic, boastful	3.78	13992	86
966	NEU!	Krautrock	repetitive, rhythmic, instrumental, minimalistic, hypnotic, atmospheric, mechanical, futuristic, psychedelic, avant-garde	3.79	11875	208
967	Transient Random-Noise Bursts With Announcements	Noise Pop, Experimental Rock	female vocals, repetitive, political, energetic, noisy, psychedelic, philosophical, warm, hypnotic, quirky	3.82	7155	90
968	Vingt regards sur l'enfant-Jésus	Modern Classical	complex, dark, instrumental, ethereal, spiritual, introspective, Christian, dissonant, uncommon time signatures, avant-garde	3.87	423	2
969	drukqs	IDM, Drill and Bass	complex, instrumental, chaotic, mechanical, energetic, eclectic, cold, rhythmic, atmospheric, abstract	3.79	12870	162
970	The Hissing of Summer Lawns	Singer/Songwriter, Jazz Pop	lush, poetic, melodic, female vocals, warm, summer, complex, mellow, soft, melancholic	3.84	4147	93
971	It's Time	Avant-Garde Jazz	epic, choral, energetic, passionate, complex, technical, uncommon time signatures	3.88	883	16
972	People's Instinctive Travels and the Paths of Rhythm	East Coast Hip Hop, Jazz Rap	playful, mellow, sampling, rhythmic, male vocals, conscious, urban, spiritual, poetic, passionate	3.82	8743	94
973	When the Kite String Pops	Sludge Metal	drugs, misanthropic, aggressive, nihilistic, death, disturbing, heavy, crime, male vocals, violence	3.82	5865	84
974	You Fail Me	Mathcore, Metalcore	angry, breakup, aggressive, sad, sombre, male vocals, dark, passionate, raw, heavy	3.81	5641	55
975	A Piece of Strange	Southern Hip Hop, Conscious Hip Hop	mellow, conscious, male vocals, concept album, mysterious, melancholic, lush, dark, poetic, warm	3.82	4718	70
976	No More Color	Technical Thrash Metal	technical, energetic, complex, uncommon time signatures, aggressive, heavy, dark, male vocals, manic, death	3.85	3030	43
977	The Diary	Gangsta Rap, Southern Hip Hop	crime, urban, violence, nihilistic, male vocals, angry, vulgar, boastful, introspective, aggressive	3.84	2878	48
978	Epidemic of Violence	Thrash Metal	aggressive, male vocals, rhythmic, heavy, dark, violence, energetic, manic, angry, apocalyptic	3.85	2005	51
979	Low-Life	Synthpop, New Wave, Alternative Dance	melancholic, male vocals, nocturnal, energetic, melodic, introspective, love, lonely, rhythmic, bittersweet	3.81	8714	86
980	Hammerheart	Viking Metal	epic, mythology, pagan, folklore, male vocals, anthemic, martial, heavy, passionate, war	3.83	5207	81
981	Dog Man Star	Britpop, Glam Rock, Art Rock	sexual, melancholic, drugs, dark, melodic, anxious, male vocals, lonely, nocturnal, pessimistic	3.82	4919	116
982	Ascenseur pour l'échafaud	Film Score, Cool Jazz, Dark Jazz	lonely, sombre, instrumental, nocturnal, mysterious, urban, improvisation, suspenseful, melancholic, atmospheric	3.84	4253	56
983	Leaving Your Body Map	Progressive Metal, Avant-Garde Metal	surreal, cryptic, eclectic, poetic, avant-garde, passionate, sombre, mysterious, concept album, fantasy	3.81	3715	61
984	I Want to See the Bright Lights Tonight	British Folk Rock, Contemporary Folk	melancholic, sombre, bittersweet, female vocals, male vocals, pessimistic, autumn, passionate, alcohol, melodic	3.84	3383	99
985	Clandestine	Death Metal	aggressive, heavy, male vocals, misanthropic, angry, death, raw, energetic, occult, dark	3.83	3426	50
986	"X"	Berlin School	concept album, instrumental, complex, progressive, atmospheric, epic, space, hypnotic, nocturnal, meditative	3.85	2589	48
987	Sahara	Post-Bop, Spiritual Jazz	instrumental, passionate, avant-garde, complex, spiritual, chaotic, manic, energetic, calm, technical	3.86	1474	23
988	ゼルダの伝説 ～風のタクト～ (The Legend of Zelda: The Wind Waker)	Video Game Music, Sequencer & Tracker	fantasy, epic, instrumental, aquatic	3.88	561	4
989	Suicide	Synth Punk, Minimal Synth	anxious, dark, mechanical, repetitive, disturbing, minimalistic, ominous, male vocals, raw, misanthropic	3.77	13096	273
990	Faith	Gothic Rock, Post-Punk	sombre, cold, atmospheric, melancholic, anxious, winter, ethereal, sad, male vocals, lonely	3.8	11155	181
991	Parallel Lines	New Wave, Pop Rock	melodic, energetic, female vocals, playful, romantic, sarcastic, love, rhythmic, warm, rebellious	3.8	9600	191
992	Mental Vortex	Technical Thrash Metal	technical, uncommon time signatures, heavy, male vocals, aggressive, philosophical, complex, angry, progressive, dark	3.84	3633	57
993	The Inflated Tear	Post-Bop	sombre, nocturnal, instrumental, quirky, acoustic, autumn, technical, melodic, playful, dense	3.86	1807	31
994	Ella Fitzgerald Sings the Cole Porter Song Book	Vocal Jazz, Standards	female vocals, love, soft, romantic, melodic, nocturnal, melancholic, soothing, longing, lonely	3.85	1521	42
995	Minas	MPB, Singer/Songwriter, Progressive Folk	longing, surreal, male vocals, complex, bittersweet, love, anxious, melodic, lush, conscious	3.87	1434	15
996	String Quartets Nos. 1-3	Chamber Music, Modern Classical	string quartet, instrumental, acoustic, anxious, atonal, aggressive, dissonant, avant-garde, sombre, suspenseful	3.87	591	8
997	Frances the Mute	Progressive Rock, Experimental Rock, Art Rock	passionate, complex, cryptic, energetic, surreal, anxious, uncommon time signatures, concept album, manic, psychedelic	3.77	12222	321
998	Crazy Rhythms	Post-Punk	anxious, rhythmic, energetic, hypnotic, male vocals, melodic, quirky, repetitive, manic, playful	3.82	7062	127
999	Starsailor	Experimental Rock, Avant-Folk, Singer/Songwriter	avant-garde, psychedelic, cryptic, sexual, male vocals, dissonant, manic, passionate, surreal, uncommon time signatures	3.8	7182	150
1000	Songs From Suicide Bridge	Contemporary Folk, Singer/Songwriter	lonely, acoustic, suicide, melancholic, introspective, depressive, sombre, dark, male vocals, sad	3.86	1387	15
1001	The Holy Bible	Alternative Rock	misanthropic, political, pessimistic, self-hatred, dark, anxious, depressive, aggressive, male vocals, nihilistic	3.8	7184	216
1002	Tilt	Experimental, Singer/Songwriter	ominous, sombre, dark, suspenseful, cryptic, avant-garde, melancholic, cold, scary, poetic	3.81	5115	90
1003	Effigy of the Forgotten	Brutal Death Metal	aggressive, technical, heavy, apocalyptic, death, male vocals, misanthropic, dark, violence, hateful	3.83	3597	53
1004	...For Victory	Death Metal	war, heavy, energetic, male vocals, aggressive, angry, epic, rhythmic, death, martial	3.84	2422	32
1005	Tijuana Moods	Post-Bop	instrumental, energetic, complex, acoustic, improvisation, passionate, warm, rhythmic, tropical, bittersweet	3.85	2944	34
1006	Deaf Dumb Blind (Summun Bukmun Umyun)	Spiritual Jazz	spiritual, rhythmic, passionate, improvisation, lush, soothing, hypnotic, dense, warm, uplifting	3.87	1540	20
1007	Surrealistic Pillow	Psychedelic Rock	psychedelic, drugs, melodic, surreal, female vocals, male vocals, mellow, love, uplifting, soft	3.8	10452	213
1008	Pop	Ambient	forest, atmospheric, meditative, soothing, repetitive, lush, warm, peaceful, hypnotic, instrumental	3.82	7270	92
1009	Alien Lanes	Lo-Fi / Slacker Rock, Indie Rock	lo-fi, melodic, energetic, male vocals, playful, surreal, raw, eclectic, warm, humorous	3.81	6370	112
1010	E2-E4	Progressive Electronic	repetitive, minimalistic, hypnotic, futuristic, instrumental, rhythmic, meditative, suite, atmospheric, mechanical	3.83	3809	80
1011	Yasimika	Mande Music	warm, passionate, soothing, uplifting, female vocals, male vocals, mellow, repetitive, acoustic, happy	3.86	2007	21
1012	The Chemical Wedding	Heavy Metal	male vocals, melodic, epic, energetic, fantasy, passionate, heavy	3.83	2217	53
1013	Fulfillingness' First Finale	Soul	male vocals, love, melodic, optimistic, mellow, passionate, happy, warm, sentimental, lush	3.85	3749	84
1014	Stormcock	Progressive Folk, Singer/Songwriter	acoustic, male vocals, pastoral, war, protest, melancholic, progressive, surreal, psychedelic, melodic	3.84	3250	77
1015	TA13OO	Southern Hip Hop, Trap	dark, male vocals, energetic, aggressive, conscious, urban, boastful, rhythmic, violence, introspective	3.74	17873	114
1016	Michigan	Chamber Folk, Singer/Songwriter, Indie Folk	winter, melancholic, concept album, lush, melodic, pastoral, male vocals, bittersweet, Christian, cold	3.8	11117	104
1017	Alligator	Indie Rock, Post-Punk Revival	melancholic, sombre, autumn, introspective, male vocals, bittersweet, poetic, mellow, passionate, urban	3.79	9555	159
1018	Hex	Post-Rock	atmospheric, melancholic, nocturnal, mellow, ethereal, sombre, lush, male vocals, sparse, hypnotic	3.8	8347	110
1019	Not Available	Experimental	surreal, cryptic, avant-garde, concept album, anxious, existential, dissonant, abstract, ominous, opera	3.81	5263	99
1020	Come My Fanatics...	Stoner Metal, Doom Metal	dark, heavy, drugs, misanthropic, hypnotic, male vocals, occult, psychedelic, aggressive, repetitive	3.82	5069	68
1021	The Notorious Byrd Brothers	Folk Rock, Psychedelic Rock	psychedelic, ethereal, melodic, warm, surreal, lush, atmospheric, eclectic, mellow, male vocals	3.83	4773	169
1022	It'll All Work Out in Boomland	Progressive Rock, Heavy Psych	progressive, male vocals, psychedelic, atmospheric, sombre, melodic, mellow, complex, cryptic, dense	3.85	2806	74
1023	Tashi Plays Messiaen: Quartet for the End of Time	Modern Classical, Chamber Music	depressive, avant-garde, sad, lethargic, atmospheric, sparse, apocalyptic, melancholic, instrumental, suspenseful	3.87	395	2
1024	Fleet Foxes	Chamber Folk, Indie Folk	pastoral, nature, warm, lush, melodic, acoustic, male vocals, poetic, uplifting, bittersweet	3.74	17398	368
1025	2112	Progressive Rock, Hard Rock	epic, science fiction, male vocals, space, philosophical, complex, progressive, energetic, passionate, futuristic	3.77	11667	267
1026	Crosby, Stills & Nash	Folk Rock	love, pastoral, melodic, warm, male vocals, uplifting, sentimental, mellow, soothing, autumn	3.83	4937	126
1027	Brown Sugar	Neo-Soul	urban, mellow, sexual, romantic, passionate, male vocals, love, sentimental, sensual, nocturnal	3.83	4740	56
1028	Morbid Tales	Thrash Metal	occult, dark, energetic, rhythmic, male vocals, sombre, heavy, raw, nocturnal, aggressive	3.83	4117	75
1029	Black Future	Technical Thrash Metal	science fiction, aggressive, apocalyptic, technical, futuristic, complex, energetic, dense, heavy, male vocals	3.83	4207	103
1030	Samba esquema novo	Samba	uplifting, warm, tropical, summer, melodic, playful, mellow, happy, romantic, male vocals	3.85	2881	39
1031	Confusion	Afrobeat	rhythmic, political, improvisation, energetic, rebellious, hypnotic, mellow, repetitive, warm, conscious	3.86	1825	22
1032	Non al denaro non all'amore né al cielo	Canzone d'autore	passionate, male vocals, ballad, sentimental, existential, poetic, longing, introspective, bittersweet, acoustic	3.86	1918	25
1033	The Minstrel Show	Southern Hip Hop, Conscious Hip Hop	satirical, male vocals, conscious, introspective, concept album, sampling, humorous, rhythmic, boastful, urban	3.85	1771	31
1034	Nina Simone Sings the Blues	Soul Blues, Blues	female vocals, sensual, passionate, acoustic, playful, breakup, love, longing, lonely, melancholic	3.86	2061	23
1035	Madvillainy Instrumentals	Instrumental Hip Hop	instrumental, sampling, rhythmic, nocturnal, mellow, mysterious, quirky, psychedelic, playful, crime	3.85	671	5
1036	Debut	Art Pop, House	passionate, romantic, female vocals, playful, rhythmic, eclectic, love, party, sensual, lush	3.73	21941	257
1037	Saturation III	Pop Rap, West Coast Hip Hop	quirky, male vocals, introspective, LGBT, boastful, bittersweet, eclectic, energetic, playful, summer	3.74	17118	68
1038	Mother Earth's Plantasia	Space Age Pop, Progressive Electronic	nature, soothing, instrumental, mellow, melodic, calm, soft, warm, playful, atmospheric	3.82	7784	69
1039	Reckoning	Jangle Pop, Alternative Rock	melodic, energetic, male vocals, bittersweet, spring, melancholic, abstract, poetic, rain, introspective	3.81	7816	147
1040	Dirty Mind	Synth Funk	sexual, vulgar, playful, energetic, rhythmic, party, male vocals, hedonistic, sensual, androgynous vocals	3.82	6270	140
1041	American Water	Indie Rock, Lo-Fi / Slacker Rock	pastoral, bittersweet, poetic, mellow, warm, male vocals, lonely, sarcastic, melancholic, summer	3.82	5736	80
1042	(pronounced 'lĕh-'nérd 'skin-'nérd)	Southern Rock	energetic, sentimental, male vocals, bittersweet, passionate, warm, melodic, pastoral, raw, uplifting	3.81	5803	147
1043	Over-Nite Sensation	Art Rock, Experimental Rock	humorous, playful, sexual, complex, technical, eclectic, male vocals, quirky	3.83	5580	128
1044	Countdown to Ecstasy	Pop Rock	sarcastic, playful, complex, male vocals, technical, quirky, rhythmic, warm, summer, energetic	3.83	5064	102
1045	October Rust	Gothic Metal	atmospheric, melancholic, sexual, autumn, romantic, nocturnal, male vocals, lush, melodic, passionate	3.82	4663	73
1046	El patio	Andalusian Rock, Progressive Rock	progressive, male vocals, passionate, epic, mysterious, poetic, melodic, longing, psychedelic, love	3.85	2005	46
1047	Live and Let Die	East Coast Hip Hop, Gangsta Rap, Hardcore Hip Hop	crime, violence, boastful, urban, dark, nihilistic, rhythmic, vulgar, hateful, aggressive	3.83	1597	39
1048	Study in Brown	Hard Bop	instrumental, improvisation, acoustic, energetic, rhythmic, melodic, warm, uplifting, playful	3.86	1460	19
1049	Ambient 1: Music for Airports	Ambient	soothing, atmospheric, meditative, peaceful, mellow, ethereal, calm, minimalistic, sparse, hypnotic	3.76	14784	230
1050	Spectrum of Death	Thrash Metal	aggressive, raw, energetic, male vocals, infernal, heavy, manic, rhythmic, hateful	3.83	2728	89
1051	ThunderSteel	Heavy Metal, US Power Metal, Power Metal	melodic, energetic, triumphant, male vocals, epic, fantasy, war, anthemic, uplifting, death	3.83	1770	50
1052	Evolution	Post-Bop	complex, instrumental, technical, suspenseful, acoustic, rhythmic, mysterious, improvisation, nocturnal, playful	3.86	1490	32
1053	Rip, Rig and Panic	Post-Bop	energetic, mellow, instrumental, melancholic, warm, acoustic, uplifting, ballad, technical, melodic	3.86	1345	19
1055	Q: Are We Not Men? A: We Are Devo!	New Wave, Post-Punk, Art Punk	humorous, playful, quirky, energetic, satirical, manic, male vocals, sarcastic, uncommon time signatures, anxious	3.78	11063	218
1056	Kimono My House	Glam Rock, Art Pop, Pop Rock	androgynous vocals, playful, energetic, quirky, humorous, melodic, sarcastic, rhythmic, progressive, male vocals	3.8	6956	151
1057	Rum Sodomy & the Lash	Celtic Rock, Folk Rock	alcohol, energetic, passionate, bittersweet, poetic, war, history, hedonistic, playful, death	3.82	4526	121
1058	Death Certificate	West Coast Hip Hop, Political Hip Hop, Gangsta Rap	crime, political, angry, aggressive, urban, energetic, protest, vulgar, male vocals, conscious	3.82	4010	85
1059	Darkness Descends	Thrash Metal	energetic, aggressive, death, heavy, manic, male vocals, dark, nihilistic, apocalyptic, infernal	3.83	3122	83
1060	Les stances à Sophie	Avant-Garde Jazz, Film Soundtrack	improvisation, rhythmic, avant-garde, female vocals, passionate, energetic, complex, technical, urban, dissonant	3.84	2547	33
1061	What Color Is Love	Chicago Soul, Soul	romantic, mellow, male vocals, soothing, spiritual, warm, passionate, lush	3.85	2052	43
1062	Chinatown	Film Score, Cinematic Classical	melancholic, atmospheric, instrumental, urban	3.87	378	2
1063	Tapestry	Singer/Songwriter, Soft Rock	soft, female vocals, romantic, warm, mellow, bittersweet, melodic, lonely, introspective, melancholic	3.82	6304	176
1064	Tea for the Tillerman	Singer/Songwriter, Folk Pop, Folk Rock	bittersweet, acoustic, optimistic, peaceful, soft, poetic, male vocals, longing, melodic, love	3.82	5601	128
1065	Third Side of Tape	Experimental Hip Hop, Instrumental Hip Hop	eclectic, surreal, hypnotic, raw, lo-fi, rhythmic, anxious, atmospheric, nocturnal, sampling	3.82	4683	51
1066	Pithecanthropus Erectus	Post-Bop	instrumental, acoustic, improvisation, rhythmic, mellow, passionate, technical	3.84	4447	61
1067	A Beginner's Mind	Indie Folk	male vocals, ethereal, soft, concept album, melodic, mellow, atmospheric, poetic, warm, love	3.84	3654	26
1068	Germfree Adolescents	Punk Rock	rebellious, energetic, playful, female vocals, satirical, angry, political, sarcastic, alienation, quirky	3.83	3381	86
1069	The Planets	Modern Classical, Orchestral	instrumental, triumphant, epic, space, passionate, orchestral	3.89	309	9
1070	Days of Future Passed	Baroque Pop, Art Rock, Symphonic Prog, Progressive Pop	orchestral, lush, concept album, philosophical, romantic, poetic, warm, uplifting, melodic, epic	3.8	7004	195
1071	Paris 1919	Baroque Pop, Art Pop, Singer/Songwriter	lush, melancholic, male vocals, bittersweet, melodic, warm, poetic, romantic, orchestral, pastoral	3.81	6714	138
1072	Sinner Get Ready	Neoclassical Darkwave, Avant-Folk	sombre, female vocals, funereal, Christian, ominous, disturbing, dissonant, passionate, spiritual, depressive	3.8	7101	84
1073	Lifes Rich Pageant	Jangle Pop, Alternative Rock	melodic, male vocals, political, energetic, spring, conscious, uplifting, abstract, melancholic, bittersweet	3.81	6777	150
1074	Shiny Beast (Bat Chain Puller)	Art Rock, Experimental Rock	surreal, humorous, abstract, playful, male vocals, complex, bittersweet, tropical, melodic, psychedelic	3.84	3449	79
1075	Radio City	Power Pop	melodic, bittersweet, male vocals, romantic, warm, playful, summer, passionate, urban	3.82	5343	113
1076	Quatuor pour la fin du temps	Modern Classical, Chamber Music	sombre, apocalyptic, religious, complex, instrumental, acoustic, suspenseful, longing, mysterious, suite	3.85	996	8
1077	If I Could Do It All Over Again, I'd Do It All Over You	Canterbury Scene	psychedelic, summer, warm, melodic, mellow, atmospheric, progressive, male vocals, energetic, rhythmic	3.85	2884	74
1078	Death or Glory	Heavy Metal, Power Metal	melodic, anthemic, history, energetic, male vocals, epic, heavy, war, triumphant	3.83	1700	31
1079	Let England Shake	Singer/Songwriter, Art Rock	war, history, passionate, protest, female vocals, political, death, serious, poetic, concept album	3.79	10359	219
1080	あらためまして、はじめまして、ミドリです。 (Aratamemashite, hajimemashite, Midori desu.)	Art Punk	manic, female vocals, aggressive, playful, noisy, complex, uncommon time signatures, chaotic, energetic, quirky	3.8	7863	61
1081	#1 Record	Power Pop, Folk Pop	melodic, romantic, bittersweet, uplifting, summer, playful, optimistic, love, male vocals, sentimental	3.8	7346	167
1082	Pleasure to Kill	Thrash Metal	aggressive, death, hateful, misanthropic, male vocals, manic, violence, angry, energetic, heavy	3.81	4891	128
1083	Black Sea	New Wave, Pop Rock, Post-Punk	anxious, energetic, playful, political, male vocals, quirky, sarcastic, conscious, war, melodic	3.83	4574	105
1084	Monotheist	Doom Metal	heavy, male vocals, ominous, sombre, apocalyptic, cold, dark, atmospheric, anti-religious, death	3.82	4266	91
1085	The Elder Scrolls IV: Oblivion	Video Game Music, Cinematic Classical, Modern Classical	epic, peaceful, suspenseful, instrumental, warm, forest, orchestral, medieval, atmospheric, triumphant	3.85	836	11
1086	Seventeen Seconds	Post-Punk, Gothic Rock	sombre, atmospheric, melancholic, cold, winter, male vocals, anxious, nocturnal, introspective, depressive	3.78	12826	182
1087	From a Basement on the Hill	Singer/Songwriter, Indie Rock	melancholic, melodic, depressive, drugs, self-hatred, pessimistic, dense, male vocals, alienation, sad	3.82	6576	116
1088	Under a Funeral Moon	Black Metal	lo-fi, cold, raw, satanic, misanthropic, dark, ominous, atmospheric, nocturnal, forest	3.81	6058	75
1509	Baduizm	Neo-Soul	female vocals, sexual, mellow, love, nocturnal, rhythmic, passionate, warm, conscious, melodic	3.79	4386	62
1089	Dance Tonight! Revolution Tomorrow!	Emoviolence	philosophical, passionate, chaotic, raw, aggressive, dissonant, energetic, male vocals, angry, rebellious	3.82	5190	30
1090	Nefertiti	Post-Bop, Modal Jazz	instrumental, technical, melancholic, complex, passionate, ominous, cold, atmospheric, nocturnal, soothing	3.84	3850	50
1091	Cold Fact	Folk Rock, Singer/Songwriter	drugs, poetic, political, philosophical, protest, urban, conscious, melodic, bittersweet, male vocals	3.84	3018	70
1092	Les cinq saisons	Progressive Folk	pastoral, warm, uplifting, progressive, spring, lush, melodic, acoustic, romantic, concept album	3.84	3005	100
1093	Transcendence Into the Peripheral	Death Doom Metal	ominous, atmospheric, heavy, funereal, infernal, dense, death, dark, raw, hypnotic	3.82	3096	61
1094	To the Nameless Dead	Folk Metal	epic, passionate, folklore, male vocals, history, atmospheric, nature, pagan, melancholic, pastoral	3.82	2919	62
1095	Ghost in the Shell	Film Score, Ambient	atmospheric, tribal, science fiction, futuristic, urban, meditative, ethereal, mysterious, spiritual, choral	3.86	1170	7
1096	Fetch the Bolt Cutters	Art Pop, Singer/Songwriter, Progressive Pop	raw, female vocals, passionate, progressive, rhythmic, playful, rebellious, introspective, angry, poetic	3.72	18091	240
1097	Henry's Dream	Punk Blues, Post-Punk, Singer/Songwriter	dark, energetic, sombre, raw, poetic, male vocals, passionate, misanthropic, violence, suspenseful	3.82	5896	67
1098	Requiem KV 626	Classical Period, Choral, Christian Liturgical Music	Christian, lush, acoustic, epic, religious, death, choral, dense, funereal, spiritual	3.85	464	6
1099	Tri repetae	IDM	mechanical, cold, complex, atmospheric, rhythmic, hypnotic, instrumental, futuristic, minimalistic, repetitive	3.79	9664	124
1100	Radio Amor	Ambient, Drone	melancholic, atmospheric, instrumental, lush, lonely, soothing, meditative, mysterious, nocturnal, ethereal	3.83	4780	39
1101	Arthur Verocai	MPB, Psychedelic Pop	male vocals, lush, psychedelic, summer, mellow, longing, warm, melodic, romantic, bittersweet	3.85	2166	20
1102	かがやき (Kagayaki)	Chamber Folk, Neoclassical New Age	peaceful, warm, sentimental, calm, lush, atmospheric, soothing, soft, natural, folklore	3.85	1984	13
1103	Milestones	Hard Bop	energetic, instrumental, technical, improvisation, acoustic, playful, passionate, warm, rhythmic, happy	3.83	4451	60
1104	Nightfall in Middle-Earth	Power Metal	fantasy, epic, melodic, energetic, concept album, male vocals, war, passionate, medieval, anthemic	3.78	4460	77
1105	Terrifyer	Grindcore	chaotic, aggressive, manic, misanthropic, male vocals, angry, disturbing, hateful, heavy, nihilistic	3.81	3911	54
1106	Adam's Apple	Post-Bop	improvisation, instrumental, mellow, acoustic, energetic, urban	3.86	1264	22
1107	Mode for Joe	Hard Bop, Post-Bop	improvisation, acoustic, passionate, instrumental, energetic	3.87	822	11
1108	天使のたまご 音楽編 / 水に棲む (Tenshi no tamago ongaku hen / Mizu ni sumu)	Film Score, Modern Classical	ominous, ethereal, surreal, mysterious, sombre, atmospheric, choral, instrumental, epic, dark	3.88	347	2
1109	Eastern Sounds	Hard Bop	instrumental, calm, soothing, spiritual, melancholic, peaceful, mellow, uplifting, warm, complex	3.85	2329	40
1110	Mystification	Heavy Metal, US Power Metal	male vocals, energetic, epic, aggressive, paranormal, dark, heavy, fantasy, death, ominous	3.84	1147	16
1111	Suite bergamasque; Children's Corner; Estampes; L'isle joyeuse; La fille aux cheveux de lin; La plus que lente; Etude pour les arpèges	Impressionism	instrumental, acoustic, peaceful, complex, technical, suite, spring	3.88	372	2
1112	The Boatman's Call	Singer/Songwriter	sombre, melancholic, breakup, male vocals, sad, romantic, love, passionate, poetic, religious	3.8	7755	128
1113	革命京劇 (Revolutionary Pekinese Opera) Ver.1.28	Sound Collage, Turntable Music, Plunderphonics, Musique concrète	chaotic, sampling, manic, noisy, avant-garde, satirical, epic, surreal, concept album, dense	3.82	4073	47
1114	Santana	Latin Rock	rhythmic, psychedelic, warm, energetic, male vocals, improvisation, passionate, summer, technical, love	3.84	4306	79
1115	Adiós Nonino	Tango nuevo	melancholic, passionate, instrumental, sentimental, technical, sombre, complex	3.88	443	4
1116	24 Préludes, Op. 28	Romanticism	acoustic, instrumental, melancholic, technical, mellow, soothing, sentimental, melodic, bittersweet, longing	3.87	401	6
1117	Concerto No. 1	Romanticism, Concerto	acoustic, instrumental, concerto, technical, uplifting, epic, passionate, melodic, romantic, mellow	3.88	316	3
1118	Word...Life	East Coast Hip Hop, Boom Bap	philosophical, urban, melancholic, mellow, existential, introspective, rhythmic, sampling, passionate, sentimental	3.83	1728	40
1119	All My Heroes Are Cornballs	Experimental Hip Hop, Glitch Hop	surreal, sampling, eclectic, humorous, male vocals, dense, chaotic, psychedelic, playful, lush	3.73	16655	137
1120	Destination Out!	Post-Bop	sparse, instrumental, suspenseful, soothing, mysterious, mellow, improvisation	3.85	1387	26
1121	The Assassination of Jesse James by the Coward Robert Ford	Film Score, Modern Classical	melancholic, history, funereal, chamber music, instrumental, introspective, folklore, suspenseful	3.86	1146	19
1122	Red Medicine	Post-Hardcore	raw, noisy, anxious, passionate, political, dissonant, male vocals, energetic, angry, sarcastic	3.81	6477	66
1123	Somewhere Far Beyond	Power Metal	melodic, fantasy, epic, male vocals, medieval, anthemic, energetic, passionate, uplifting, heavy	3.79	3218	54
1124	Heartwork	Melodic Death Metal	rhythmic, energetic, heavy, melodic, angry, male vocals, aggressive, death, violence, nihilistic	3.79	6313	145
1125	If I Should Fall From Grace With God	Celtic Rock, Celtic Punk, Folk Rock	alcohol, melodic, passionate, bittersweet, energetic, male vocals, playful, history, poetic, patriotic	3.83	3638	91
1126	Sonny Side Up	Bebop	improvisation, instrumental, acoustic, male vocals, playful, technical, urban, aggressive, uplifting, energetic	3.86	1335	14
1127	Quattro pezzi per orchestra; Anahit; Uaxuctum	Microtonal Classical, Orchestral	microtonal, orchestral, ominous, avant-garde, meditative, instrumental, acoustic	3.84	714	9
1128	8½	Film Score	epic, humorous	3.87	527	5
1129	Elephant	Garage Rock Revival, Alternative Rock	energetic, raw, playful, rebellious, male vocals, minimalistic, melodic, love, romantic, female vocals	3.74	17125	347
1130	Replica	Plunderphonics, Ambient	sampling, surreal, atmospheric, mysterious, melancholic, hypnotic, cold, repetitive, lonely, dark	3.77	12490	94
2704	Maanam	Post-Punk, New Wave	female vocals, energetic, rhythmic, melodic, passionate, manic	3.75	1286	15
1131	Tigermilk	Twee Pop, Chamber Pop, Indie Pop	bittersweet, mellow, melodic, poetic, LGBT, lush, male vocals, melancholic, warm, romantic	3.79	9051	140
1132	Black Rose: A Rock Legend	Hard Rock	alcohol, melancholic, energetic, bittersweet, male vocals, warm, melodic, heavy, love, passionate	3.83	2503	82
1133	The Nocturnal Silence	Death Metal	anti-religious, heavy, nocturnal, death, misanthropic, occult, aggressive, ominous, dark, energetic	3.84	1634	26
1134	Indestructible	Hard Bop, Post-Bop	instrumental, passionate, acoustic, improvisation, warm, melodic, playful, technical, energetic, rhythmic	3.86	845	15
1135	New Day Rising	Post-Hardcore, Alternative Rock	energetic, passionate, raw, noisy, melodic, male vocals, introspective, angry, summer, lo-fi	3.8	6564	121
1136	A Wizard, a True Star	Art Pop, Experimental Rock, Art Rock	manic, playful, psychedelic, dense, eclectic, surreal, love, satirical, chaotic, male vocals	3.81	4183	133
1137	György Ligeti Edition 3: Works for Piano - Études, Musica ricercata	Modern Classical	acoustic, technical, instrumental, dissonant, complex	3.86	499	3
1138	The Stranger	Piano Rock, Pop Rock, Singer/Songwriter	male vocals, sentimental, love, urban, calm, melodic, bittersweet, playful, soft, mellow	3.81	5155	136
1139	The Sunset Tree	Indie Folk, Singer/Songwriter	introspective, bittersweet, poetic, melancholic, acoustic, pastoral, male vocals, autumn, lush, sentimental	3.82	4750	60
1140	Star Wars: Return of the Jedi	Film Score, Cinematic Classical, Orchestral	epic, instrumental, science fiction, fantasy, space, orchestral	3.85	947	7
1141	Psychocandy	Noise Pop, Post-Punk	noisy, apathetic, male vocals, dissonant, melodic, raw, romantic, deadpan, dense, Wall of Sound	3.75	15387	276
1142	Голос сталі	Folk Metal, Pagan Black Metal	epic, pagan, triumphant, patriotic, mythology, heavy, anthemic, male vocals, passionate, dense	3.8	2284	49
1143	Streetcleaner	Industrial Metal, Sludge Metal	misanthropic, mechanical, pessimistic, nihilistic, heavy, hateful, aggressive, dark, apocalyptic, noisy	3.79	6469	126
1144	Happy Sad	Singer/Songwriter, Psychedelic Folk	happy, sad, introspective, romantic, bittersweet, male vocals, poetic, mellow, passionate, warm	3.81	5976	115
1145	Stakes Is High	East Coast Hip Hop, Conscious Hip Hop	urban, rhythmic, sampling, conscious, male vocals, political, protest, humorous	3.83	2121	42
1146	Cool Struttin'	Hard Bop	instrumental, improvisation, nocturnal, acoustic, energetic, rhythmic, mellow, playful, warm	3.85	1694	32
1147	Tattoo	Blues Rock	passionate, male vocals	3.85	1267	29
1148	Ewa Demarczyk śpiewa piosenki Zygmunta Koniecznego	Poezja śpiewana	passionate, poetic, anxious, female vocals, sombre, sentimental, melodic, lush, quirky, manic	3.85	1527	25
1149	Clics modernos	New Wave	political, urban, conscious, male vocals, energetic, sarcastic, protest, melodic, playful, rebellious	3.84	1576	30
1150	Super Mario 64	Video Game Music, Sequencer & Tracker	playful, eclectic, melodic, instrumental, energetic, atmospheric, quirky, uplifting, mysterious, lush	3.85	1215	16
1151	Geraes	MPB, Contemporary Folk, Singer/Songwriter	male vocals, pastoral, longing, conscious, poetic	3.86	743	8
1152	Nuovo Cinema Paradiso	Film Score, Cinematic Classical	orchestral	3.86	483	5
1153	Œuvres d'Erik Satie	Impressionism	instrumental, technical, playful, complex, acoustic, peaceful, melancholic	3.87	358	8
1154	Take Me to Your Leader	Abstract Hip Hop, East Coast Hip Hop	sampling, science fiction, humorous, concept album, quirky, abstract, playful, male vocals, lush, surreal	3.8	7880	64
1155	The United States of America	Psychedelic Rock, Experimental Rock	psychedelic, eclectic, female vocals, avant-garde, male vocals, surreal, sampling, political, satirical, quirky	3.81	6038	143
1156	Spiritual Unity	Free Jazz	chaotic, instrumental, passionate, improvisation, spiritual, avant-garde, acoustic, manic, anxious, atonal	3.8	4955	86
1157	Takk...	Post-Rock	ethereal, melancholic, uplifting, atmospheric, mellow, bittersweet, lush, epic, warm, soothing	3.76	13236	234
1158	A Promise	Experimental, Electronic, Post-Industrial	sad, depressive, anxious, suicide, LGBT, pessimistic, self-hatred, male vocals, disturbing, avant-garde	3.78	9142	56
1159	A Night in Tunisia	Hard Bop	instrumental, improvisation, acoustic, energetic, technical, warm, passionate, nocturnal	3.85	1405	22
1160	My Aim Is True	New Wave, Pub Rock	sarcastic, anxious, passionate, energetic, male vocals, rebellious, melodic, humorous, angry	3.79	7974	181
1161	Anima latina	Progressive Pop, Psychedelic Pop, Art Pop	psychedelic, warm, summer, lush, love, mellow, progressive, male vocals, passionate, melodic	3.83	2665	66
1162	You Got My Mind Messed Up	Deep Soul, Southern Soul	passionate, male vocals, love, warm, sensual, breakup, bittersweet, lonely, sad, longing	3.84	2228	54
1163	Autechre [LP5]	IDM	mechanical, rhythmic, futuristic, complex, atmospheric, instrumental, mysterious, hypnotic, surreal, cold	3.81	5463	72
1164	Unhalfbricking	British Folk Rock	female vocals, pastoral, warm, melodic, nature, passionate, spring, playful, ethereal, mellow	3.83	3223	87
1165	Kivenkantaja	Folk Metal, Viking Metal	epic, mythology, winter, male vocals, atmospheric, pagan, melodic, cold, forest, pastoral	3.81	2261	34
1166	V: Hävitetty	Folk Metal, Viking Metal	epic, pagan, mythology, apocalyptic, atmospheric, male vocals, concept album, passionate, forest, dark	3.81	1877	41
1167	Younger Than Yesterday	Folk Rock, Psychedelic Pop, Pop Rock	psychedelic, melodic, playful, pastoral, male vocals, bittersweet, uplifting, mellow	3.81	5202	155
1168	Court in the Act	NWOBHM, Heavy Metal	energetic, melodic, male vocals, heavy, epic, raw, death, technical	3.84	1506	37
1169	Iannis Xenakis 1: Chamber Music 1955-1990	Stochastic Music, Chamber Music	avant-garde, complex, chamber music, instrumental, suspenseful, atonal, dissonant, acoustic, technical	3.83	715	4
1170	Terminal Redux	Technical Thrash Metal	science fiction, technical, complex, futuristic, space, concept album, epic, male vocals, dense, progressive	3.8	5203	80
1171	Bath	Progressive Metal, Avant-Garde Metal	poetic, surreal, fantasy, love, melancholic, passionate, atmospheric, cryptic, mysterious, eclectic	3.78	5005	88
1172	Keeper of the Seven Keys Part I	Power Metal	fantasy, melodic, energetic, male vocals, epic, triumphant, optimistic, passionate, uplifting, anthemic	3.78	4942	85
1173	Tektra	Drone, Electroacoustic, Ambient	mysterious, generative music, atmospheric, ominous, hypnotic, avant-garde, surreal, suspenseful, instrumental, futuristic	3.83	715	7
2889	O passo do Lui	New Wave, Pop Rock	energetic, male vocals, party, passionate	3.76	381	3
1174	All We Love We Leave Behind	Metalcore	angry, aggressive, passionate, heavy, male vocals, energetic, poetic, sad, technical, complex	3.79	6109	75
1175	Parsley, Sage, Rosemary and Thyme	Folk Pop, Folk Rock	mellow, melodic, male vocals, pastoral, autumn, soft, melancholic, poetic, existential, bittersweet	3.81	5673	120
1176	Colored Sands	Technical Death Metal	technical, dissonant, complex, atmospheric, heavy, ominous, dense, history, uncommon time signatures, male vocals	3.81	4109	53
1177	We Are the Romans	Mathcore	uncommon time signatures, aggressive, heavy, energetic, technical, male vocals, chaotic, dissonant, angry, complex	3.81	3907	45
1178	This Is the Sea	Pop Rock, Folk Rock	passionate, male vocals, philosophical, melodic, poetic, political, protest, eclectic, atmospheric, lush	3.83	2516	70
1179	Out There	Post-Bop	acoustic, instrumental, improvisation, energetic, technical, melodic, warm, avant-garde, passionate, surreal	3.84	2327	29
1180	Crystal Logic	Heavy Metal, US Power Metal	male vocals, fantasy, epic, science fiction, apocalyptic, melodic, heavy, triumphant, energetic, passionate	3.81	2244	62
1181	Little Richard	Rock & Roll, Rhythm & Blues	playful, energetic, sexual, rhythmic, raw, passionate, male vocals, uplifting, longing	3.84	968	18
1182	Novos Baianos F.C.	MPB, Samba-rock	warm, summer, acoustic, playful, happy, energetic, tropical, sports, psychedelic, female vocals	3.86	884	12
1183	Blast From the Past	Power Metal	male vocals, energetic, melodic, anthemic	3.82	549	12
1184	Fear of a Blank Planet	Progressive Rock	anxious, pessimistic, drugs, lonely, male vocals, concept album, heavy, melancholic, progressive, melodic	3.77	8563	280
1185	Birds of Fire	Jazz Fusion, Jazz-Rock	instrumental, technical, uncommon time signatures, energetic, improvisation, complex, psychedelic, progressive, surreal, playful	3.82	4674	96
1186	Over the Edge	Punk Rock, Post-Punk	dark, sombre, anxious, passionate, serious, energetic, alienation, angry, lonely, introspective	3.83	3388	51
1187	John Prine	Country, Singer/Songwriter, Contemporary Folk	lonely, political, bittersweet, male vocals, poetic, depressive, protest, warm, conscious, mellow	3.82	3070	75
1188	Black Antlers	Electronic, Post-Industrial, Experimental	atmospheric, male vocals, ominous, nocturnal, death, LGBT, abstract, surreal, rhythmic, avant-garde	3.83	2487	20
1189	Ghost Tropic	Contemporary Folk, Singer/Songwriter, Slowcore	atmospheric, sad, nature, dark, melancholic, male vocals, sparse, forest, sombre, death	3.83	2209	29
1190	This Is a Long Drive for Someone With Nothing to Think About	Indie Rock	anxious, melancholic, lonely, raw, introspective, depressive, existential, sad, noisy, sarcastic	3.79	9969	129
1191	Breakfast in America	Pop Rock, Progressive Pop	melodic, male vocals, lush, bittersweet, melancholic, introspective, playful, quirky, sarcastic, passionate	3.8	6717	130
1192	Burritos, Inspiration Point, Fork Balloon Sports, Cards in the Spokes, Automatic Biographies, Kites, Kung Fu, Trophies, Banana Peels We've Slipped On and Egg Shells We've Tippy Toed Over	Post-Hardcore, Midwest Emo	energetic, passionate, playful, raw, bittersweet, anxious, male vocals, summer, cryptic, uncommon time signatures	3.8	5063	46
1193	From the Lions Mouth	Post-Punk	atmospheric, anxious, sombre, melancholic, passionate, dark, depressive, introspective, existential, male vocals	3.82	4245	83
1194	The Lioness	Singer/Songwriter, Slowcore, Contemporary Folk	melancholic, sombre, depressive, anxious, passionate, lonely, sad, longing, male vocals, poetic	3.82	3748	31
1195	Somewhere Along the Highway	Atmospheric Sludge Metal, Post-Metal	atmospheric, sombre, heavy, male vocals, melancholic, dense, dark, lonely, epic	3.81	3781	59
1196	Look at Yourself	Hard Rock, Progressive Rock	energetic, psychedelic, progressive, male vocals, heavy, love, technical, melodic, passionate	3.82	2904	94
1197	Spirit in the Dark	Southern Soul, Deep Soul	female vocals, passionate, energetic, bittersweet, religious, longing, rhythmic	3.85	1292	24
1198	Confield	IDM, Experimental	mechanical, futuristic, cold, complex, generative music, rhythmic, mysterious, hypnotic, instrumental, avant-garde	3.79	6033	84
1199	Uncle Meat	Experimental Rock, Avant-Prog	eclectic, playful, satirical, avant-garde, technical, uncommon time signatures, quirky, complex, male vocals, psychedelic	3.8	5596	152
1200	24 Préludes, Op. 28; Préludes Nr. 25, Op. 45; Nr. 26, Op. Posth.	Romanticism	technical, instrumental, soothing, meditative, acoustic, melodic, passionate, lush, lonely, ominous	3.85	638	1
1201	Crippled Symmetry	Modern Classical, Chamber Music	mysterious, dissonant, peaceful, ominous	3.85	381	1
1202	Hail to the Thief	Alternative Rock, Art Rock	political, sombre, anxious, eclectic, male vocals, cryptic, complex, melancholic, conscious, alienation	3.66	34080	492
1203	Blue Lines	Trip Hop	urban, atmospheric, mellow, nocturnal, sampling, male vocals, female vocals, rhythmic, melancholic, warm	3.76	13066	200
1204	Hall of the Mountain King	Heavy Metal, US Power Metal	melodic, male vocals, fantasy, epic, heavy, energetic, triumphant, rhythmic, angry	3.82	2511	57
1205	The Headless Children	Heavy Metal	political, male vocals, dark, melodic, energetic, heavy, war, apocalyptic, rebellious, passionate	3.82	1751	49
1206	Promises	Third Stream, Post-Minimalism	instrumental, minimalistic, meditative, atmospheric, repetitive, hypnotic, soothing, suite, mysterious, ethereal	3.79	9257	78
1207	3 Feet High and Rising	East Coast Hip Hop, Conscious Hip Hop	playful, sampling, humorous, psychedelic, uplifting, male vocals, urban, eclectic, happy, optimistic	3.79	7926	175
1208	Coltrane	Modal Jazz, Post-Bop	instrumental, improvisation, acoustic, warm, dense, technical, melodic, playful, meditative, hypnotic	3.83	2280	28
1209	Natura renovatur	Modern Classical	dissonant, cold, avant-garde, acoustic, instrumental, microtonal, meditative, dark, surreal, ominous	3.85	733	4
1210	Conference of the Birds	Avant-Garde Jazz	avant-garde, instrumental, improvisation, playful, uncommon time signatures	3.83	1898	31
1211	Underground	Post-Bop, Hard Bop	quirky, improvisation, complex, calm, repetitive	3.84	1535	16
1212	Milagre dos peixes	MPB, Avant-Folk	spiritual, male vocals, surreal, tropical, eclectic, avant-garde, psychedelic, atmospheric, instrumental, natural	3.84	1450	19
1213	Rid of Me	Alternative Rock	sexual, raw, angry, energetic, female vocals, noisy, anxious, passionate, breakup, rebellious	3.79	8396	147
1214	Ill Communication	East Coast Hip Hop	eclectic, energetic, male vocals, urban, party, sampling, rhythmic, playful, satirical, boastful	3.8	7512	142
2890	6 Pieces of Silver	Hard Bop	instrumental, acoustic, improvisation	3.78	342	7
1215	Fallout	Dark Ambient, Video Game Music	apocalyptic, mechanical, ritualistic, dark, ominous, atmospheric, sombre, desert, instrumental	3.84	900	12
1216	Exercises in Futility	Black Metal	misanthropic, nihilistic, male vocals, pessimistic, dark, ominous, melodic, atmospheric, heavy, dissonant	3.8	5542	40
1217	Franks Wild Years	Singer/Songwriter, Dark Cabaret	urban, poetic, concept album, nocturnal, eclectic, surreal, male vocals, passionate, alcohol, dark	3.81	5440	95
1218	Time Out of Mind	Singer/Songwriter, Folk Rock	poetic, melancholic, male vocals, lonely, breakup, love, introspective, bittersweet, longing, sentimental	3.81	5624	153
1219	Machine Gun	European Free Jazz	chaotic, manic, atonal, noisy, avant-garde, aggressive, improvisation, instrumental, heavy, energetic	3.79	4828	88
1220	Nothingface	Progressive Metal	science fiction, uncommon time signatures, complex, technical, introspective, cryptic, futuristic, progressive, male vocals, surreal	3.81	3327	47
1221	The Allman Brothers Band	Southern Rock, Blues Rock	male vocals, passionate, energetic, melodic, warm, improvisation, breakup, rhythmic	3.82	3053	72
1222	Complete & Unbelievable: The Otis Redding Dictionary of Soul	Southern Soul, Deep Soul	passionate, love, romantic, longing, male vocals, mellow, sentimental, breakup, playful, melodic	3.84	2024	36
1223	Scheherazade	Romanticism, Tone Poem	suite, acoustic, orchestral, instrumental, epic, lush, melodic, warm, tone poem, complex	3.85	425	9
1224	Loaded	Pop Rock	melodic, playful, male vocals, summer, bittersweet, warm, humorous, sentimental, uplifting, love	3.74	16087	314
1225	Badmotorfinger	Grunge, Alternative Metal	heavy, male vocals, angry, energetic, uncommon time signatures, aggressive, passionate, psychedelic, anxious, dark	3.77	8927	197
1226	Suspiria	Progressive Rock, Film Score	ominous, suspenseful, atmospheric, ritualistic, scary, instrumental, dark, progressive, surreal, occult	3.83	2648	47
1227	Soul Station	Hard Bop	acoustic, instrumental, sentimental, melodic, warm, romantic, playful, rhythmic, energetic	3.84	2045	34
1228	The Omen	Film Score, Orchestral, Cinematic Classical	scary, suspenseful, religious, satanic, occult	3.87	294	5
1229	Summerteeth	Indie Rock, Pop Rock	bittersweet, melancholic, male vocals, uplifting, lonely, sentimental, summer, warm, melodic, sad	3.79	7932	139
1230	あくまのうた (Akuma no uta)	Stoner Metal	raw, aggressive, heavy, energetic, male vocals, noisy, nihilistic, angry, dense, psychedelic	3.8	7341	64
1231	Layla and Other Assorted Love Songs	Blues Rock	passionate, romantic, bittersweet, male vocals, melodic, technical, love, warm, concept album, mellow	3.79	6211	207
1232	New Skin for the Old Ceremony	Singer/Songwriter, Contemporary Folk	male vocals, breakup, bittersweet, poetic, melancholic, acoustic, romantic, longing, introspective, melodic	3.82	4614	68
1233	Bridge of Sighs	Blues Rock, Hard Rock	passionate, male vocals, heavy, romantic, atmospheric, drugs, rhythmic, nocturnal, psychedelic, raw	3.83	2011	105
1234	Hoodoo Man Blues	Chicago Blues	male vocals, passionate, rhythmic, sexual, sensual, urban, longing, nocturnal	3.84	1794	47
1235	Land of the Free	Power Metal	energetic, male vocals, melodic, fantasy, optimistic, triumphant, science fiction, concept album, war	3.79	1916	39
1236	Rothko Chapel; Why Patterns?	Modern Classical, Chamber Music	meditative, sombre, sparse, chamber music, ominous, mysterious, avant-garde, dissonant, spiritual, hypnotic	3.82	1837	28
1237	Rory Gallagher	Blues Rock	melancholic, male vocals, energetic, psychedelic, bittersweet, melodic, sentimental	3.84	1452	34
1238	Schindler's List	Film Score, Cinematic Classical	war, melancholic, history, orchestral, depressive, sad, sombre, instrumental	3.83	614	6
1239	Just for a Day	Dream Pop, Shoegaze	ethereal, atmospheric, mellow, melancholic, female vocals, male vocals, lush, soothing, romantic, longing	3.77	11277	122
1240	The Moon Is a Dead World	Screamo, Post-Hardcore	technical, manic, passionate, progressive, anxious, dense, complex, male vocals, noisy, apocalyptic	3.8	4319	42
1241	The Times They Are A-Changin'	Contemporary Folk, Singer/Songwriter	political, acoustic, protest, poetic, male vocals, conscious, minimalistic, serious, sombre, melancholic	3.78	10507	211
1242	The Unseen	West Coast Hip Hop, Abstract Hip Hop, Jazz Rap, Experimental Hip Hop, Boom Bap	humorous, psychedelic, drugs, urban, sampling, surreal, abstract, playful, quirky, rhythmic	3.78	7236	81
1243	Meat Puppets II	Cowpunk, Alternative Rock	raw, psychedelic, male vocals, energetic, warm, desert, playful, introspective, surreal, existential	3.8	6153	130
1244	King for a Day... Fool for a Lifetime	Alternative Metal	eclectic, male vocals, sarcastic, energetic, rhythmic, angry, heavy, humorous, aggressive, manic	3.78	6393	134
1245	Tindersticks [II]	Chamber Pop	autumn, melancholic, introspective, nocturnal, lush, melodic, poetic, sombre, male vocals, sad	3.82	2904	64
1246	Never Turn Your Back on a Friend	Hard Rock, Heavy Metal	androgynous vocals, energetic, introspective, love, male vocals, philosophical, optimistic, uplifting	3.82	2433	76
1247	Paris, Texas	Acoustic Blues, Film Score	desert, instrumental, mellow, atmospheric, acoustic, lonely	3.84	1238	36
1248	Películas	Progressive Rock, Jazz-Rock	melodic, urban, male vocals, poetic, progressive, lush, uncommon time signatures, melancholic, passionate, complex	3.85	846	13
1249	Veteran	Experimental Hip Hop, Glitch Hop, Industrial Hip Hop	aggressive, political, sampling, sarcastic, manic, male vocals, vulgar, boastful, violence, eclectic	3.72	18320	120
1250	Have You in My Wilderness	Art Pop, Chamber Pop	ethereal, lush, poetic, female vocals, atmospheric, mellow, melancholic, longing, progressive, bittersweet	3.78	9052	79
1251	Tallahassee	Indie Folk, Singer/Songwriter	concept album, introspective, male vocals, pastoral, breakup, poetic, autumn, alcohol, melodic, pessimistic	3.81	3830	38
1252	Tell Mama	Southern Soul	female vocals	3.85	904	23
1253	20 palavras ao redor do Sol	Singer/Songwriter, MPB, Baião	female vocals, nature, energetic, warm, psychedelic, rhythmic, playful, poetic, bittersweet, tropical	3.87	308	4
1254	Mark Hollis	Singer/Songwriter, Chamber Jazz	sparse, melancholic, male vocals, minimalistic, introspective, poetic, atmospheric, calm, acoustic, meditative	3.81	4623	92
1255	Standing on the Verge of Getting It On	Funk Rock, P-Funk	energetic, playful, sexual, philosophical, male vocals, humorous, psychedelic, poetic, spiritual	3.82	2701	41
1256	Sonic R	Video Game Music, Eurodance, Dance-Pop	energetic, happy, uplifting, anthemic, warm, optimistic, melodic, female vocals, urban, summer	3.82	1047	16
1257	Plastic Beach	Electropop, Art Pop	eclectic, summer, playful, aquatic, warm, conscious, concept album, male vocals, melodic, mellow	3.71	19995	186
1258	Tommy	Rock Opera	rock opera, epic, male vocals, melodic, anthemic, triumphant, concept album, energetic, surreal, progressive	3.76	11325	333
1259	4eva Is a Mighty Long Time	Southern Hip Hop	introspective, spiritual, bittersweet, longing, boastful, uplifting, conscious, passionate, eclectic, male vocals	3.8	6451	44
1260	Brave Murder Day	Death Doom Metal	melancholic, lonely, sombre, male vocals, depressive, pessimistic, dark, hypnotic, atmospheric, cold	3.8	4857	82
1261	Wildhoney	Gothic Metal	sombre, atmospheric, mysterious, male vocals, psychedelic, nature, cryptic, lush, ethereal, passionate	3.81	3474	77
1262	Below the Heavens	Conscious Hip Hop, West Coast Hip Hop, Boom Bap, Jazz Rap	uplifting, conscious, mellow, male vocals, introspective, Christian, rhythmic, happy, urban, love	3.8	3521	52
1263	HBO (Haitian Body Odor)	East Coast Hip Hop, Abstract Hip Hop, Boom Bap	conscious, lo-fi, abstract, technical, urban, introspective, male vocals, rhythmic, mellow, raw	3.84	907	8
1264	Edward Scissorhands	Film Score, Cinematic Classical	fantasy, winter, lonely, dark, instrumental, romantic, Christmas, melodic, death, epic	3.83	727	12
1265	Grey Area	UK Hip Hop, Conscious Hip Hop	female vocals, urban, rhythmic, conscious, introspective, political, protest, anxious, boastful, dark	3.77	11235	96
1266	Musick to Play in the Dark²	Electronic, Experimental, Post-Industrial	nocturnal, meditative, occult, cold, dark, atmospheric, lonely, ethereal, nature, LGBT	3.81	3118	29
1267	Roots	Chicago Soul, Funk	uplifting, optimistic, sexual, melodic, rhythmic, political, lush, warm, conscious, sensual	3.83	2503	46
1268	Different Trains; Electric Counterpoint	Minimalism, Chamber Music	repetitive, hypnotic, sampling, war, minimalistic, atmospheric, history, uncommon time signatures, chamber music, instrumental	3.82	2530	37
1269	1996	Modern Classical, Chamber Music	instrumental, melodic, rhythmic, chamber music, melancholic, meditative, lush, sentimental	3.83	1808	8
1270	Gutter Ballet	Heavy Metal	male vocals, melodic, introspective, energetic, epic, progressive, passionate, nocturnal, sombre, rock opera	3.82	1787	40
1271	Silent Hill	Dark Ambient, Video Game Music, Industrial	scary, disturbing, ominous, mechanical, atmospheric, cold, surreal, mysterious, instrumental, dark	3.83	1733	25
1272	Eternal Rhythm	Free Jazz, Spiritual Jazz	instrumental, improvisation, spiritual, eclectic, passionate, chaotic, complex, acoustic, avant-garde, mysterious	3.82	2269	26
1273	The John Coltrane Quartet Plays	Avant-Garde Jazz, Modal Jazz	instrumental, technical, improvisation, complex, dense, surreal, passionate, energetic, dissonant, acoustic	3.84	1071	18
1274	映画 聲の形 オリジナル・サウンドトラック A Shape of Light	Film Score, Modern Classical, Minimalism	minimalistic, instrumental, sparse, ethereal, atmospheric, melancholic, urban, lethargic, lobit, meditative	3.86	396	1
1275	2012 - 2017	Deep House	sampling, rhythmic, repetitive, party, urban, atmospheric, uplifting, playful, sentimental, warm	3.76	12969	97
1276	I See a Darkness	Singer/Songwriter, Americana, Alt-Country, Contemporary Folk	sombre, lonely, autumn, depressive, alienation, sarcastic, pastoral, male vocals, dark, acoustic	3.78	7960	117
1277	Octopus	Progressive Rock	playful, complex, uncommon time signatures, male vocals, medieval, technical, progressive, quirky, avant-garde, cryptic	3.79	6006	123
1278	Chocolate and Cheese	Alternative Rock, Neo-Psychedelia	humorous, eclectic, playful, satirical, quirky, male vocals, psychedelic, surreal, melodic, warm	3.79	7030	111
1279	Little Earthquakes	Singer/Songwriter, Piano Rock	introspective, female vocals, poetic, bittersweet, melancholic, passionate, melodic, rebellious, sexual, depressive	3.8	5702	171
1280	Red Burns	Sound Collage, Neo-Soul	eclectic, sampling, urban, conscious, mellow, abstract, psychedelic, existential, political, cryptic	3.81	3547	27
1281	Compulsion	Free Jazz, Post-Bop, Avant-Garde Jazz	improvisation, avant-garde, instrumental, rhythmic, complex, energetic, manic, dense, dissonant, passionate	3.83	1271	21
1282	Previsão do tempo	MPB, Singer/Songwriter	male vocals, tropical, summer, eclectic, lush, mellow, sentimental, melodic, bittersweet, romantic	3.84	958	21
1283	The Immortal Otis Redding	Southern Soul	male vocals, romantic, melodic, love, passionate	3.85	898	10
1284	Axe to Fall	Metalcore	aggressive, energetic, passionate, angry, dark, male vocals, heavy, noisy, chaotic, dense	3.78	5205	74
1285	Blessed Are the Sick	Death Metal	occult, satanic, rhythmic, aggressive, misanthropic, heavy, dark, ominous, infernal, energetic	3.8	4482	87
1286	The Afro-Eurasian Eclipse	Big Band	suite, instrumental, concept album, nocturnal, warm, acoustic, uplifting, technical, melodic, playful	3.85	683	9
1287	Deus Ex: Game of the Year Edition	Video Game Music, Sequencer & Tracker, Ambient	futuristic, mechanical, dark, atmospheric, instrumental, nocturnal, melodic, sombre, science fiction, sampling	3.85	433	4
1288	Back to Black	Soul, Rhythm & Blues, Pop Soul	lonely, drugs, breakup, female vocals, melodic, love, alcohol, bittersweet, longing, playful	3.77	9732	209
1289	The Marble Index	Avant-Folk	cold, sombre, poetic, dark, winter, ominous, female vocals, mysterious, atmospheric, cryptic	3.79	6271	98
1290	Substrata	Ambient, Electronic	cold, atmospheric, winter, lonely, ethereal, mysterious, hypnotic, natural, mellow, instrumental	3.8	5758	64
1291	Begin	Sunshine Pop, Psychedelic Pop	melodic, summer, happy, optimistic, lush, warm, psychedelic, soft, male vocals, mellow	3.81	3380	78
1292	放課後ティータイムII (Ho-kago Tea Time Second)	Power Pop, J-Rock	energetic, happy, female vocals, optimistic, uplifting, playful, melodic, passionate, skit	3.81	923	12
1293	Is This Desire?	Alternative Rock, Singer/Songwriter, Downtempo	sombre, dark, female vocals, melancholic, lonely, atmospheric, cold, anxious, longing, nocturnal	3.81	5442	93
1294	Still Bill	Soul	male vocals, warm, romantic, passionate, soothing, uplifting, melodic, optimistic	3.83	1950	42
1295	Secos & Molhados	Folk Pop, Progressive Pop, Art Pop	androgynous vocals, poetic, male vocals, melodic, tropical, playful, quirky, psychedelic, progressive, political	3.82	1780	34
1296	One Step Beyond	Post-Bop	sparse, ominous, complex, mysterious, instrumental, passionate, rhythmic, technical, improvisation, energetic	3.84	868	14
1297	Concerto for Orchestra	Modern Classical, Orchestral	instrumental, polyphonic, orchestral, suspenseful, technical, uncommon time signatures, complex, anxious, acoustic, mysterious	3.84	850	7
1298	Chopin / Brahms / Liszt / Ravel / Prokofieff	Romanticism	technical, instrumental, acoustic, lush, melodic, melancholic, complex, passionate	3.85	420	6
1299	Dead Magic	Neoclassical Darkwave	funereal, sombre, female vocals, atmospheric, ethereal, dark, nocturnal, ritualistic, mysterious, spiritual	3.78	8855	68
1300	A Trick of the Tail	Progressive Rock	fantasy, complex, uncommon time signatures, melodic, surreal, philosophical, male vocals, folklore, progressive, epic	3.79	6239	179
1301	Real Life	Post-Punk, Art Punk	anxious, misanthropic, energetic, male vocals, sarcastic, cold, progressive, dark, eclectic, existential	3.79	5677	107
1302	Nowa Aleksandria	Coldwave, Post-Punk	cold, mechanical, rhythmic, anxious, dark, male vocals, alienation, atmospheric, urban, nihilistic	3.81	4220	49
1303	Follow the Leader	East Coast Hip Hop, Boom Bap	boastful, urban, sampling, rhythmic, male vocals, energetic, raw	3.81	3344	74
1304	Captain Beyond	Heavy Psych, Hard Rock	psychedelic, heavy, energetic, complex, space, progressive, male vocals, uncommon time signatures, drugs, surreal	3.81	2967	128
1305	Remedy Lane	Progressive Metal	passionate, romantic, introspective, melodic, concept album, complex, male vocals, technical, philosophical, progressive	3.77	3164	85
1306	The Payback	Funk, Soul	male vocals, repetitive, passionate, rhythmic, aggressive, hypnotic, anthemic, uplifting, concept album, urban	3.82	2620	53
1307	Hard to Earn	East Coast Hip Hop, Boom Bap	urban, sampling, male vocals, boastful, rhythmic, raw, introspective, deadpan, political, violence	3.82	2682	53
1308	Volume 6: Days Have Gone By	American Primitivism	acoustic, pastoral, meditative, hypnotic, spiritual, instrumental, sparse, autumn, atmospheric, mellow	3.83	2101	26
1309	Zarathustra	Progressive Rock, Symphonic Prog	philosophical, passionate, dark, poetic, technical, uncommon time signatures, male vocals, epic, introspective, complex	3.82	1712	58
1310	Another Thought	Art Pop	mellow, melancholic, minimalistic, introspective, romantic, lonely, sparse, male vocals, love, nocturnal	3.82	2200	23
1311	Racional vol. 1	Funk, Soul	religious, spiritual, male vocals, conscious, repetitive, philosophical, warm, passionate, rhythmic, lush	3.82	1476	20
1312	The Elements	Spiritual Jazz	psychedelic, surreal, spiritual, avant-garde, hypnotic, improvisation, concept album, instrumental, polyphonic, atmospheric	3.84	1159	18
1313	Grasa de las capitales	Progressive Rock, Jazz-Rock	male vocals, melancholic, melodic, epic, conscious, urban, poetic, lonely, political, nocturnal	3.84	911	16
1314	Raiders of the Lost Ark	Film Score, Cinematic Classical	instrumental, anthemic, epic, orchestral, energetic, triumphant, mythology, acoustic, melodic, suspenseful	3.82	704	8
1315	Strangeways, Here We Come	Jangle Pop, Indie Pop	sarcastic, melancholic, lonely, poetic, romantic, male vocals, melodic, introspective, bittersweet, passionate	3.74	14185	211
1316	In the Flat Field	Gothic Rock, Post-Punk	dark, anxious, male vocals, cold, energetic, ominous, noisy, raw, dissonant, manic	3.77	9432	112
1317	Morningrise	Progressive Metal	romantic, dark, melodic, atmospheric, melancholic, male vocals, progressive, epic, complex, heavy	3.77	7007	136
1318	The Sun Rises in the East	East Coast Hip Hop, Boom Bap, Conscious Hip Hop, Hardcore Hip Hop	philosophical, urban, male vocals, nocturnal, sampling, raw, conscious, pessimistic, rhythmic, boastful	3.8	3412	73
1319	Vier letzte Lieder; Muttertändelei; Waldseligkeit; Zueignung; Freundliche Vision; Die heiligen drei Könige	Lieder, Romanticism, Orchestral	orchestral, female vocals, acoustic	3.85	306	3
1320	Figure 8	Singer/Songwriter, Indie Pop	melancholic, melodic, male vocals, bittersweet, pessimistic, poetic, lush, love, self-hatred, introspective	3.78	8525	145
1321	The Milk-Eyed Mender	Contemporary Folk, Singer/Songwriter	acoustic, melodic, poetic, female vocals, playful, passionate, mellow, warm, pastoral, summer	3.78	8073	166
1322	Deliverance	Progressive Metal	heavy, male vocals, dark, complex, atmospheric, progressive, introspective, ominous, nocturnal, uncommon time signatures	3.77	7673	136
1323	Smile	Psychedelic Pop, Baroque Pop, Progressive Pop	Wall of Sound, melodic, psychedelic, lush, poetic, playful, concept album, pastoral, progressive, male vocals	3.78	5839	213
1324	Acquiring the Taste	Progressive Rock	playful, complex, uncommon time signatures, quirky, medieval, mysterious, eclectic, surreal, male vocals, progressive	3.81	3848	79
1325	Per un amico	Symphonic Prog, Progressive Rock	progressive, fantasy, uncommon time signatures, complex, male vocals, playful, ..., eclectic, technical, cryptic	3.81	2746	54
1326	Clutching at Straws	Neo-Prog	alcohol, male vocals, concept album, melodic, progressive, melancholic, sentimental, poetic, introspective, lush	3.81	2604	91
1327	The Galilean Satellites	Atmospheric Sludge Metal, Post-Metal	science fiction, space, dense, passionate, atmospheric, heavy, lonely, concept album, epic, sad	3.8	2255	52
1328	Teenage Snuff Film	Punk Blues, Singer/Songwriter, Post-Punk	misanthropic, dark, male vocals, lonely, sombre, melancholic, deadpan, alienation, nocturnal, apathetic	3.82	2174	31
1329	The Baby Huey Story: The Living Legend	Chicago Soul, Funk	passionate, male vocals, uplifting, energetic, conscious, lush, atmospheric, anthemic, triumphant	3.83	2073	34
1330	Straight Life	Post-Bop, Jazz Fusion	dense, complex, improvisation, instrumental, hypnotic, atmospheric, rhythmic, warm, technical	3.83	1447	22
1331	La buona novella	Canzone d'autore, Chamber Folk	religious, concept album, acoustic, Christian, poetic, sombre, male vocals, choral, history, pastoral	3.83	1341	15
1332	El derecho de vivir en paz	Nueva canción latinoamericana	male vocals, conscious, political, protest, passionate, melodic, war, folklore, satirical, melancholic	3.84	1119	13
1333	Isn't Anything	Noise Pop, Shoegaze	noisy, sexual, atmospheric, love, hypnotic, romantic, ethereal, dissonant, male vocals, dense	3.72	18217	224
1334	The Joshua Tree	Pop Rock, Alternative Rock	passionate, uplifting, anthemic, melodic, atmospheric, male vocals, ethereal, conscious, sentimental, Christian	3.72	14446	381
1335	Small Change	Singer/Songwriter, Piano Blues	bittersweet, alcohol, poetic, romantic, humorous, urban, passionate, male vocals, nocturnal, playful	3.8	6056	111
1336	To Mega Therion	Thrash Metal	heavy, rhythmic, occult, energetic, aggressive, dark, ominous, fantasy, male vocals, concept album	3.79	5574	82
1337	Down on the Road by the Beach	Ambient Pop, Surf Music	summer, tropical, calm, ethereal, aquatic, soothing, psychedelic, bittersweet, peaceful, mellow	3.84	1006	13
2891	Back to Back: Duke Ellington and Johnny Hodges Play the Blues	Jazz, Big Band	instrumental, acoustic	3.77	310	7
1338	The Ligeti Project II: Lontano; Atmosphères; Apparitions; San Francisco Polyphony; Concert românesc	Modern Classical, Orchestral	orchestral, acoustic, sparse, instrumental	3.83	629	11
1339	Phantom of the Paradise	Film Soundtrack, Rock Opera, Glam Rock, Pop Rock	concept album, playful, rock opera, male vocals, female vocals, melodic	3.85	417	18
1340	Bram Stoker's Dracula	Film Score, Cinematic Classical	orchestral, ominous, scary, dark, cold	3.86	400	6
1341	The Black Album	East Coast Hip Hop	boastful, male vocals, rhythmic, urban, crime, drugs, bittersweet, conscious, introspective, sampling	3.78	7662	112
1342	English Settlement	Pop Rock, New Wave, Art Rock	playful, eclectic, conscious, energetic, political, melodic, complex, anxious, quirky, rhythmic	3.8	4701	105
1343	The Legacy	Thrash Metal	energetic, dark, heavy, ominous, occult, male vocals, aggressive, ..., melodic	3.8	4142	104
1344	Storia di un minuto	Symphonic Prog, Progressive Rock	melodic, progressive, male vocals, complex, epic, triumphant, pastoral, passionate, ..., philosophical	3.81	2911	55
1345	Persecution Mania	Thrash Metal	aggressive, war, rhythmic, energetic, angry, male vocals, heavy, death, dark, history	3.81	3066	53
1346	The Dreadful Hours	Death Doom Metal, Gothic Metal	romantic, melancholic, heavy, sombre, male vocals, depressive, dark, fantasy, love, longing	3.8	2170	33
1347	Mortal Throne of Nazarene	Death Metal	infernal, dark, rhythmic, heavy, aggressive, atmospheric, satanic, raw, anti-religious, death	3.81	1777	25
1348	Quintett C-Dur	Romanticism, Chamber Music	chamber music, soothing, passionate, mellow, acoustic, instrumental	3.86	360	3
1349	Sonhos e memórias: 1941-1972	MPB, Pop Rock	mellow, melodic, male vocals	3.86	317	11
1350	Halo 3	Video Game Music, Cinematic Classical	instrumental, orchestral, war, martial, space, epic, atmospheric, science fiction, choral	3.85	359	1
1351	His 'n' Hers	Britpop	sexual, melodic, male vocals, sarcastic, bittersweet, quirky, sensual, lush, passionate, longing	3.8	4392	74
1352	Workin' With the Miles Davis Quintet	Hard Bop	instrumental, improvisation, acoustic, urban, passionate, nocturnal, lush, spring, autumn	3.82	2850	29
1353	Muddy Waters	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	drugs, urban, crime, male vocals, rhythmic, sampling, humorous, boastful, sexual, vulgar	3.81	1784	42
1354	Halcyon Digest	Neo-Psychedelia, Indie Rock	mellow, psychedelic, melodic, soothing, atmospheric, bittersweet, melancholic, male vocals, alienation, lonely	3.74	13365	152
1355	John Wesley Harding	Folk Rock, Singer/Songwriter, Contemporary Folk	poetic, pastoral, acoustic, male vocals, cryptic, history, conscious, melodic, religious, sparse	3.78	8702	205
1356	Daughters	Noise Rock, Post-Hardcore	manic, energetic, noisy, heavy, misanthropic, chaotic, dissonant, male vocals, aggressive, dense	3.78	7697	86
1357	Songs From the Wood	Folk Rock, Progressive Rock	pastoral, nature, medieval, forest, male vocals, melodic, progressive, autumn, uplifting, pagan	3.8	4105	108
1358	Prowler in the Yard	Grindcore	chaotic, manic, sexual, aggressive, misanthropic, heavy, male vocals, dark, disturbing, death	3.79	3984	61
1359	Excitable Boy	Singer/Songwriter, Piano Rock, Pop Rock	male vocals, sarcastic, deadpan, playful, poetic, eclectic, humorous, melodic, war	3.81	2637	73
1360	Transcendence	Heavy Metal, US Power Metal	fantasy, melodic, triumphant, male vocals, science fiction, progressive, epic, dark, energetic, passionate	3.8	1704	55
1361	The Deluge	Heavy Metal, US Power Metal	male vocals, epic, mythology, melodic, anti-religious, heavy, rhythmic, fantasy, passionate, technical	3.81	1264	18
1362	Roky Erickson and the Aliens (5 Symbols)	Hard Rock	paranormal, anxious, energetic, fantasy, raw, science fiction, male vocals, psychedelic, nocturnal	3.83	845	21
1363	OIL OF EVERY PEARL'S UN-INSIDES	Bubblegum Bass, Deconstructed Club	LGBT, futuristic, female vocals, mechanical, noisy, surreal, chaotic, dense, playful, androgynous vocals	3.71	15963	145
1364	Teaser and the Firecat	Singer/Songwriter, Folk Pop, Folk Rock, Contemporary Folk	uplifting, poetic, acoustic, love, bittersweet, introspective, sentimental, soft, mellow, melodic	3.81	3069	77
1365	Disraeli Gears	Blues Rock, Psychedelic Rock	psychedelic, drugs, male vocals, warm, melodic, surreal, rhythmic, mellow, energetic	3.75	11334	285
1366	Faust	Krautrock, Experimental Rock	surreal, cryptic, avant-garde, eclectic, psychedelic, atmospheric, progressive, sampling, male vocals, abstract	3.76	8132	163
1367	Southernplayalisticadillacmuzik	Southern Hip Hop	urban, boastful, playful, conscious, rhythmic, male vocals, crime, drugs, nocturnal, aggressive	3.79	7439	85
1368	Dimension Hatröss	Progressive Metal, Technical Thrash Metal	science fiction, uncommon time signatures, complex, dissonant, apocalyptic, technical, concept album, futuristic, male vocals, avant-garde	3.79	3603	62
1369	Chega de saudade	Bossa nova	peaceful, warm, male vocals, calm, soft, mellow, uplifting, summer, acoustic, tropical	3.82	2702	41
1370	Metal Church	Heavy Metal, US Power Metal	energetic, dark, male vocals, heavy, death, occult, violence, ominous, infernal, triumphant	3.8	2642	70
1371	O Brother, Where Art Thou?	Film Soundtrack, American Folk Music, Country	religious, melodic, pastoral, longing, warm, spiritual, male vocals, female vocals, acoustic	3.82	1706	38
1372	Purple Sun	Avant-Garde Jazz	improvisation, instrumental	3.84	491	6
1373	I'm in Your Mind Fuzz	Psychedelic Rock, Garage Rock	psychedelic, male vocals, energetic, surreal, noisy, playful, hypnotic, concept album, fantasy, progressive	3.78	7658	38
1374	Korowód	Progressive Folk, Poezja śpiewana, Folk Rock	autumn, poetic, lush, serious, male vocals, warm, existential, romantic, pastoral, melodic	3.83	1250	18
1375	Love in Us All	Free Jazz, Spiritual Jazz	improvisation, acoustic, spiritual, avant-garde, passionate, dissonant, complex, anxious, playful, eclectic	3.83	937	9
1376	Te Deum	Modern Classical, Choral, Christian Liturgical Music	religious, ethereal, sombre, choral, mellow, soothing	3.83	870	18
1377	Moondog	Modern Classical, Third Stream	rhythmic, instrumental, uplifting, epic, complex, orchestral, fantasy, acoustic, pagan, mythology	3.8	5169	56
1378	Spleen and Ideal	Darkwave, Neoclassical Darkwave	dark, spiritual, medieval, sombre, atmospheric, male vocals, female vocals, mysterious, melancholic, epic	3.8	4905	58
1379	Ladies of the Canyon	Singer/Songwriter, Contemporary Folk	female vocals, mellow, pastoral, melodic, poetic, love, warm, introspective, romantic, autumn	3.81	4044	86
2938	The Progressive Blues Experiment	Blues Rock, Electric Blues	male vocals	3.74	632	21
1380	Fishscale	East Coast Hip Hop, Hardcore Hip Hop	drugs, crime, energetic, urban, aggressive, male vocals, violence, rhythmic, humorous, boastful	3.8	4204	96
1381	In a Glass House	Progressive Rock	complex, playful, uncommon time signatures, technical, male vocals, energetic, melodic, medieval, rhythmic, progressive	3.81	3041	69
1382	The Incredible Jazz Guitar of Wes Montgomery	Hard Bop	instrumental, technical, melodic, rhythmic, mellow, improvisation, warm, playful, calm	3.82	2772	36
1383	Darwin!	Symphonic Prog, Progressive Rock	concept album, epic, progressive, male vocals, philosophical, complex, history, energetic, passionate, existential	3.81	2168	46
1384	K.A	Zeuhl	science fiction, female vocals, male vocals, spiritual, energetic, eclectic, technical, complex, epic, progressive	3.82	1726	33
1385	Burnin'	Roots Reggae	political, uplifting, religious, protest, optimistic, conscious, spiritual, warm, passionate, male vocals	3.81	2995	54
1386	Center of Attention	East Coast Hip Hop, Boom Bap, Jazz Rap	mellow, urban, playful, conscious, sampling, rhythmic, male vocals, boastful, nocturnal	3.83	1504	30
1387	Sleep's Holy Mountain	Stoner Metal, Doom Metal	heavy, psychedelic, fantasy, male vocals, drugs, repetitive, hypnotic, epic, science fiction, rhythmic	3.78	6876	81
1388	Stand Up	Blues Rock, British Folk Rock	warm, playful, passionate, eclectic, melodic, male vocals, bittersweet, progressive, longing, medieval	3.79	5015	139
1389	Terria	Progressive Metal	atmospheric, nature, uplifting, male vocals, lush, ethereal, peaceful, Wall of Sound, introspective, melancholic	3.78	3370	76
1390	Edu Lôbo [Missa breve]	MPB	male vocals, religious, lush, dense, Christian, meditative, passionate, mellow	3.84	931	15
1391	The Mission	Film Score, Cinematic Classical, Modern Classical	uplifting, religious, epic, tribal, suspenseful, lush, Christian, atmospheric, choral	3.84	774	12
1392	Death Note	Post-Rock, Television Music, Orchestral	suspenseful, instrumental, uncommon time signatures, urban, dark, mysterious, eclectic, ominous, nocturnal, epic	3.83	680	7
1393	The Angel and the Dark River	Doom Metal, Gothic Metal	melancholic, sombre, romantic, male vocals, dark, cold, depressive, atmospheric, poetic, sad	3.79	2795	49
1394	Da Devil's Playground: Underground Solo	Memphis Rap, Southern Hip Hop	hypnotic, drugs, dark, lo-fi, crime, nocturnal, repetitive, ethereal, violence, anxious	3.8	2611	22
1395	Paêbirú	Psychedelic Folk, Brazilian Folk Music	surreal, psychedelic, folklore, tribal, eclectic, mysterious, male vocals, poetic, concept album, nature	3.82	2042	48
1396	Big Fun	Jazz Fusion, Avant-Garde Jazz	instrumental, psychedelic, hypnotic, avant-garde, warm, atmospheric, dense, surreal, improvisation, spiritual	3.82	1913	49
1397	Leave Home	Punk Rock	energetic, melodic, playful, male vocals, raw, sarcastic, humorous, anthemic, repetitive	3.78	5258	106
1398	A New World Record	Symphonic Rock, Pop Rock	melodic, lush, uplifting, orchestral, male vocals, bittersweet, playful, passionate, futuristic, soft	3.79	4322	120
1399	Perverted by Language	Post-Punk	cryptic, satirical, male vocals, anxious, repetitive, misanthropic, dissonant, surreal, energetic, raw	3.8	3302	56
1400	Filles de Kilimanjaro	Post-Bop	improvisation, instrumental, complex, mysterious, suspenseful, rhythmic, uncommon time signatures, sombre, technical, composition	3.82	3078	47
1401	The Perfect Element I	Progressive Metal	introspective, complex, melodic, progressive, male vocals, concept album, eclectic, lonely, melancholic, uncommon time signatures	3.76	2764	59
1402	Just as I Am	Soul, Country Soul	passionate, warm, uplifting, male vocals, summer, melodic, soothing, conscious, bittersweet, melancholic	3.82	2162	45
1403	Three Cheers for Disappointment	Ska Punk, Skate Punk	energetic, pessimistic, melodic, male vocals, sarcastic, summer, manic, concept album, aggressive, noisy	3.8	1875	15
1404	Einstein on the Beach	Minimalism, Opera	opera, repetitive, minimalistic, avant-garde, hypnotic, mechanical, complex, choral, surreal, uncommon time signatures	3.8	1221	29
1405	Ogum Xangô	MPB, Afoxé	improvisation, playful, hypnotic, rhythmic, tropical, repetitive, energetic, acoustic, uplifting, warm	3.82	1172	28
1406	Trout Mask Replica	Experimental Rock	uncommon time signatures, surreal, humorous, manic, complex, dissonant, avant-garde, chaotic, playful, male vocals	3.67	15953	651
1408	Hell Awaits	Thrash Metal	infernal, satanic, death, heavy, raw, misanthropic, male vocals, anti-religious, manic, aggressive	3.77	7533	154
1409	Absence	Industrial Hip Hop, Conscious Hip Hop, Abstract Hip Hop, Experimental Hip Hop, East Coast Hip Hop	noisy, atmospheric, dark, conscious, political, ominous, dense, dissonant, anti-religious, misanthropic	3.78	5872	81
1410	Pretzel Logic	Pop Rock	urban, male vocals, mellow, melodic, eclectic, rhythmic, bittersweet, sarcastic, playful, soft	3.79	5608	122
1411	Bonded by Blood	Thrash Metal	aggressive, male vocals, violence, energetic, raw, rhythmic, angry, crime, boastful, heavy	3.78	4738	155
1412	Killer	Hard Rock, Glam Rock	energetic, violence, playful, sarcastic, male vocals, dark, progressive, rebellious, death, eclectic	3.78	4028	151
1413	Hell on Earth	East Coast Hip Hop, Gangsta Rap, Boom Bap	urban, crime, atmospheric, dark, anxious, violence, rhythmic, male vocals, ominous, nocturnal	3.8	2932	53
1414	Labcabincalifornia	West Coast Hip Hop, Boom Bap	rhythmic, male vocals, sampling, nocturnal, playful, introspective, calm, sombre, ethereal, melodic	3.81	2688	54
1415	"Them"	Heavy Metal	heavy, ominous, suspenseful, melodic, male vocals, paranormal, rock opera, dark, concept album, complex	3.8	2592	37
1416	Oh Yeah	Post-Bop	improvisation, playful, acoustic, humorous, instrumental, warm, eclectic, rhythmic, quirky, melodic	3.82	2306	51
1417	Black Fire	Post-Bop	instrumental, acoustic, improvisation, passionate, complex, avant-garde, technical, rhythmic, dissonant	3.82	1712	24
1418	Ellington Uptown	Big Band	acoustic, instrumental, dense, technical, urban, rhythmic, playful, energetic, passionate, lush	3.83	1425	25
1419	Koi no yokan	Alternative Metal	atmospheric, love, ethereal, male vocals, melancholic, anxious, romantic, passionate, heavy, cryptic	3.77	6745	80
1420	Lightbulb Sun	Progressive Rock	melancholic, male vocals, warm, autumn, progressive, breakup, lonely, melodic, bittersweet, introspective	3.78	5920	112
1421	Like Water for Chocolate	Conscious Hip Hop	conscious, political, urban, male vocals, passionate, sampling, love, sentimental, romantic, sensual	3.8	4131	72
1422	The Power and the Glory	Progressive Rock	playful, uncommon time signatures, complex, technical, concept album, political, avant-garde, male vocals, melodic, medieval	3.81	3135	64
1423	Птица	Art Rock, Folk Rock	male vocals, melancholic, cryptic, surreal, rhythmic, eclectic, quirky, progressive, lush, passionate	3.81	2285	21
1424	Crimson Glory	Heavy Metal, US Power Metal	fantasy, male vocals, melodic, triumphant, mythology, epic, energetic, apocalyptic	3.8	1428	29
1425	Deuce	Blues Rock	passionate, energetic, warm, melodic, rhythmic, sentimental, male vocals, bittersweet, melancholic	3.83	1173	16
1426	Young, Gifted and Black	Southern Soul, Deep Soul	female vocals, passionate, warm, mellow, melodic, rhythmic, happy, triumphant, sentimental, anthemic	3.84	1001	24
1427	Prepare Thyself to Deal With a Miracle	Spiritual Jazz, Third Stream	atmospheric, spiritual, epic, ensemble, passionate, seasonal, uplifting, concept album, warm, playful	3.83	1116	11
1428	GBAポケモン ルビー&サファイア ミュージック・スーパーコンプリート (GBA Pokémon Ruby & Sapphire Music Super Complete)	Video Game Music, 16-bit	triumphant, playful, energetic, instrumental, optimistic, happy	3.84	454	2
1429	Vespro della Beata Vergine	Renaissance Music, Baroque Music, Christian Liturgical Music, Choral	passionate, triumphant, Christian, male vocals, female vocals, hymn, choral, religious, polyphonic, acoustic	3.85	396	3
1430	Reachin' (A New Refutation of Time and Space)	Jazz Rap, East Coast Hip Hop	conscious, warm, protest, summer, urban, introspective, calm, rhythmic, spiritual, mellow	3.8	4046	64
1431	L.A.M.F.	Punk Rock	raw, urban, playful, drugs, rebellious, male vocals, nihilistic, energetic, noisy, heavy	3.81	1981	51
1432	Dah Shinin'	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	crime, urban, dark, raw, violence, male vocals, rhythmic, boastful, hypnotic, mellow	3.81	1702	41
1433	I Want You	Smooth Soul	sexual, love, romantic, sensual, nocturnal, passionate, soothing, longing, lush, sentimental	3.82	2636	49
1434	Ella and Louis	Vocal Jazz	soft, warm, romantic, soothing, female vocals, male vocals, love, passionate, sentimental, lush	3.82	2122	31
1435	Préludes · Volume 1	Impressionism	complex, instrumental, nocturnal, acoustic, sparse, sombre, atmospheric, lethargic, technical, passionate	3.83	794	5
1436	Lonerism	Neo-Psychedelia, Psychedelic Rock	psychedelic, summer, warm, lonely, melodic, dense, introspective, lush, melancholic, male vocals	3.7	20038	202
1437	Agent Orange	Thrash Metal	war, aggressive, energetic, male vocals, heavy, death, violence, dark	3.79	3875	52
1438	Resurrection	Conscious Hip Hop, Boom Bap, Jazz Rap	urban, conscious, passionate, political, sampling, rhythmic, uplifting, male vocals, optimistic, love	3.8	3500	73
1439	Mandylion	Gothic Metal	female vocals, atmospheric, melancholic, ethereal, autumn, passionate, melodic, lush, nocturnal, sombre	3.8	2790	61
1440	Ride on Time	City Pop	passionate, optimistic, male vocals, happy, melodic, urban, warm, nocturnal, lonely, mellow	3.83	1347	10
1441	Las últimas composiciones de Violeta Parra	Nueva canción latinoamericana, Singer/Songwriter	female vocals, poetic, acoustic, existential, bittersweet, melancholic, conscious, love, raw, political	3.83	937	19
1442	Odelay	Alternative Rock, Neo-Psychedelia	eclectic, playful, sampling, energetic, humorous, psychedelic, male vocals, surreal, quirky, rhythmic	3.73	14845	302
1443	He Has Left Us Alone but Shafts of Light Sometimes Grace the Corner of Our Rooms...	Post-Rock, Modern Classical	melancholic, apocalyptic, sombre, atmospheric, lonely, mysterious, suspenseful, depressive, instrumental, ominous	3.76	9094	97
1444	Brighten the Corners	Indie Rock	mellow, melodic, male vocals, abstract, bittersweet, playful, autumn, humorous, cryptic, surreal	3.78	7414	121
1445	Naked City	Avant-Garde Jazz, Jazz-Rock	eclectic, urban, chaotic, manic, avant-garde, aggressive, instrumental, mysterious, dark, nocturnal	3.77	6195	101
1446	Alice	Singer/Songwriter, Dark Cabaret, Vocal Jazz	sombre, lonely, male vocals, romantic, nocturnal, dark, poetic, concept album, bittersweet, mysterious	3.79	5111	101
1447	Tindersticks	Chamber Pop	bittersweet, melancholic, male vocals, passionate, melodic, lush, sombre, atmospheric, mellow, autumn	3.79	3894	84
1448	Demons and Wizards	Hard Rock	epic, fantasy, male vocals, melodic, energetic, sombre, mysterious, psychedelic, progressive, passionate	3.79	3543	117
1449	Train of Thought	Conscious Hip Hop, East Coast Hip Hop, Boom Bap	conscious, political, rhythmic, summer, warm, urban, male vocals, sampling, passionate, melodic	3.8	2469	60
1450	At Last!	Rhythm & Blues, Soul, Soul Blues	female vocals, passionate, sentimental, love, sensual, breakup, melodic, lush, romantic, warm	3.81	2247	38
1451	Dez anos depois	Bossa nova	soothing, melancholic, soft, romantic, female vocals, sparse, rain, warm, sentimental, lonely	3.82	2200	29
1452	Frank Sinatra Sings for Only the Lonely	Standards, Vocal Jazz	lonely, melancholic, breakup, depressive, male vocals, nocturnal, concept album, atmospheric, dark, sentimental	3.81	1893	43
1453	The Evil One	Hard Rock	manic, anxious, science fiction, paranormal, dark, male vocals, cryptic, energetic, rhythmic, infernal	3.81	1097	24
1454	The Freedom Book	Post-Bop	improvisation, instrumental	3.83	723	17
1455	Fallout 2	Video Game Music, Dark Ambient	apocalyptic, dark, ritualistic, mechanical, nocturnal, desert, instrumental	3.82	577	7
1456	Schlagenheim	Math Rock, Noise Rock, Experimental Rock	complex, male vocals, noisy, manic, dissonant, chaotic, playful, uncommon time signatures, technical, abstract	3.71	15937	123
1457	The Real Thing	Funk Metal, Alternative Metal	male vocals, playful, energetic, rhythmic, heavy, eclectic, satirical, melodic, anthemic, quirky	3.75	8313	180
1458	Songs of Faith and Devotion	Alternative Rock	dark, passionate, religious, atmospheric, sombre, melodic, spiritual, nocturnal, romantic, introspective	3.79	6436	124
1459	Face to Face	Pop Rock, Mod	melodic, male vocals, quirky, satirical, sarcastic, concept album, playful, introspective, humorous, summer	3.78	5832	157
1460	Love It to Death	Hard Rock, Glam Rock	rebellious, drugs, energetic, occult, sexual, male vocals, melodic, raw	3.79	3862	147
1461	Winterkaelte	Atmospheric Black Metal	winter, cold, nature, atmospheric, lo-fi, repetitive, dark, male vocals, hypnotic, forest	3.81	1892	25
1462	Space Shanty	Canterbury Scene, Progressive Rock	male vocals, atmospheric, science fiction, energetic, melodic, psychedelic, space	3.82	1636	56
1463	Right Now!	Post-Bop	improvisation, rhythmic, acoustic	3.85	398	4
1464	Expresso 2222	Tropicália, MPB	tropical, eclectic, uplifting, happy, summer, warm, improvisation, male vocals, repetitive	3.82	1009	15
1465	Libertango	Tango nuevo	instrumental, progressive, technical, atmospheric, passionate, complex, warm, sentimental, suspenseful, sensual	3.83	953	22
1466	Thunder Perfect Mind	Neofolk	occult, spiritual, apocalyptic, medieval, cryptic, melancholic, poetic, religious, sombre, dark	3.78	4672	58
1467	Sunset Mission	Dark Jazz	nocturnal, atmospheric, sombre, dark, melancholic, urban, instrumental, lonely, calm, lethargic	3.79	4386	58
1468	The Inalienable Dreamless	Grindcore	science fiction, technical, aggressive, dissonant, apocalyptic, heavy, concept album, chaotic, anxious, energetic	3.77	3931	65
1469	America	American Primitivism	acoustic, instrumental, meditative, epic, complex, calm, hypnotic, pastoral, lush, technical	3.81	2387	30
1470	Ashes Are Burning	Symphonic Prog, Progressive Rock	melodic, female vocals, poetic, uplifting, nature, lush, pastoral, orchestral	3.81	1994	58
1471	Tusk	Pop Rock, Soft Rock	eclectic, female vocals, bittersweet, male vocals, energetic, dense, raw, love, melodic, passionate	3.78	5518	160
1472	Fire of Unknown Origin	Hard Rock	male vocals, science fiction, mysterious, dark, anthemic, melodic, progressive, passionate, alienation, occult	3.8	3134	72
1473	Interstellar Space	Free Jazz	instrumental, chaotic, improvisation, space, manic, technical, energetic, avant-garde, atonal, complex	3.8	2989	52
1474	Shakara	Afrobeat	energetic, rhythmic, conscious, passionate, sarcastic, playful, repetitive, hypnotic, warm, rebellious	3.82	1508	16
1475	The Cooker	Hard Bop	improvisation, instrumental, warm, acoustic, technical, melodic, dense, nocturnal, passionate, energetic	3.84	858	11
1476	Songs for Distingué Lovers	Vocal Jazz, Standards	female vocals, mellow, nocturnal, romantic, lush, sentimental, melancholic, melodic, love, passionate	3.83	760	13
1477	Lo mato	Salsa dura	male vocals, warm, rhythmic, urban, progressive, energetic, lush, tropical, violence, optimistic	3.84	531	6
1478	The Godfather, Part II	Film Score, Cinematic Classical		3.84	353	2
1479	Time 'n' Place	Twee Pop, Indie Pop	female vocals, quirky, noisy, playful, bittersweet, melodic, lonely, introspective, sentimental, existential	3.73	13130	78
1480	Niggas on the Moon: The Powers That B Disc 1	Glitch Hop, Experimental Hip Hop, Abstract Hip Hop	cryptic, avant-garde, sampling, misanthropic, male vocals, chaotic, ominous, surreal, cold, futuristic	3.72	12906	79
1481	93 'Til Infinity	West Coast Hip Hop, Jazz Rap, Boom Bap	boastful, male vocals, mellow, rhythmic, urban, violence, sampling, energetic, repetitive, abstract	3.8	3087	53
1482	Everything Is Fire	Technical Death Metal	atmospheric, sombre, technical, chaotic, dissonant, dense, male vocals, pessimistic, apocalyptic, misanthropic	3.79	2629	63
1483	Consume Red	Experimental Rock, Drone, Noise Rock	suspenseful, repetitive, noisy, hypnotic, chaotic, apocalyptic, instrumental, avant-garde, ritualistic, dissonant	3.79	2338	31
1484	Fisherman's Blues	Celtic Rock, Folk Rock	longing, passionate, melodic, pastoral, melancholic, poetic, autumn, aquatic	3.81	2036	71
1485	Good Old Boys	Singer/Songwriter, Satire, Piano Rock	satirical, concept album, political, conscious, sarcastic, male vocals, history, melodic, self-hatred, love	3.8	1887	55
1486	Father of Folk Blues	Delta Blues	acoustic, male vocals, spiritual, pastoral, Christian, raw, religious, passionate	3.81	1841	36
1487	Сто лет одиночества	Psychedelic Rock, Post-Punk	lo-fi, melancholic, philosophical, psychedelic, existential, cryptic, poetic, warm, surreal, religious	3.8	1402	10
1488	Open the Gates	Heavy Metal, US Power Metal	epic, mythology, male vocals, energetic, fantasy, heavy, concept album	3.8	1312	27
1489	Singles	Grunge, Film Soundtrack, Alternative Rock	male vocals, melodic, longing, bittersweet	3.81	1136	33
1490	Izipho Zam (My Gifts)	Free Jazz, Spiritual Jazz	chaotic, passionate, spiritual, warm, meditative, male vocals, avant-garde, improvisation	3.83	840	12
1491	La ley innata	Rock urbano español, Hard Rock	suite, concept album, male vocals, lonely, epic, lush, poetic, introspective, progressive, anthemic	3.79	838	21
1492	The Score	East Coast Hip Hop, Conscious Hip Hop	political, crime, female vocals, conscious, male vocals, lush, boastful, introspective, nocturnal, sampling	3.78	6153	114
1493	Fake Train	Post-Hardcore, Noise Rock	noisy, anxious, raw, angry, aggressive, passionate, rhythmic, rebellious, dissonant, energetic	3.79	4978	40
1494	The Gathering Wilderness	Folk Metal	passionate, atmospheric, nature, male vocals, folklore, pagan, history, introspective, repetitive, melancholic	3.8	1833	31
1495	Time	Pop Rock, Synthpop, Rock Opera	concept album, science fiction, futuristic, melodic, bittersweet, male vocals, rock opera, lonely, space, alienation	3.79	3747	85
1496	Sonny Rollins, Vol. 2	Hard Bop	acoustic, instrumental, improvisation	3.84	595	14
1497	Moon Safari	Downtempo, Ambient Pop	mellow, atmospheric, soothing, warm, love, romantic, melodic, hypnotic, lush, peaceful	3.73	15033	297
1498	High Violet	Indie Rock, Art Rock	melancholic, lonely, sombre, male vocals, sad, autumn, poetic, mellow, alienation, dense	3.73	11740	284
1499	Giles Corey	Slowcore, Singer/Songwriter	depressive, suicide, sombre, lonely, dark, death, lo-fi, self-hatred, atmospheric, ominous	3.75	8735	74
1500	In on the Kill Taker	Post-Hardcore	energetic, passionate, noisy, raw, political, rebellious, male vocals, rhythmic, anthemic, heavy	3.79	5361	56
1501	Apple Venus Volume 1	Chamber Pop, Art Pop	lush, spring, pastoral, melodic, bittersweet, nature, male vocals, orchestral, romantic, breakup	3.81	2176	77
1502	You Must Believe in Spring	Cool Jazz	mellow, instrumental, winter, acoustic, improvisation, peaceful, soothing, introspective, nocturnal, warm	3.82	1660	27
1503	Hard Again	Chicago Blues	male vocals, sexual, longing, passionate, rhythmic, raw, energetic, playful	3.82	1578	53
1504	Super Tight...	Southern Hip Hop, Gangsta Rap	vulgar, boastful, crime, sexual, drugs, mellow, rhythmic, male vocals, sampling, urban	3.8	1672	30
1505	Munly & The Lee Lewis Harlots	Gothic Country, Americana	dark, suspenseful, cryptic, disturbing, poetic, violence, male vocals, sexual, pastoral, female vocals	3.81	1402	21
1506	4, 5, 6	East Coast Hip Hop, Boom Bap, Gangsta Rap	dark, urban, male vocals, violence, boastful, crime, sampling, rhythmic, atmospheric, aggressive	3.81	1286	38
1507	Van Halen	Hard Rock	energetic, male vocals, sexual, playful, melodic, technical, love, rebellious, hedonistic, passionate	3.73	8952	296
1508	Roman Candle	Singer/Songwriter, Indie Folk	melancholic, lo-fi, acoustic, sombre, depressive, male vocals, melodic, raw, angry, alienation	3.78	7286	94
1510	16 Lovers Lane	Jangle Pop, Indie Pop	romantic, mellow, melodic, love, spring, melancholic, male vocals, lush, longing, bittersweet	3.79	3994	93
1511	Let's Stay Together	Southern Soul, Smooth Soul	warm, romantic, passionate, melodic, summer, love, male vocals, sensual, uplifting, lush	3.81	2966	43
1512	スーパーマリオ ヨッシーアイランド オリジナル・サウンド・ヴァージョン (Super Mario Yoshi Island Original Sound Version)	Video Game Music, 16-bit	playful, uplifting, tropical, optimistic, happy, instrumental, energetic, melodic, soothing	3.83	495	7
1513	The Album of the Soundtrack of the Trailer of the Film of Monty Python and the Holy Grail	Comedy, Film Soundtrack	humorous, concept album, male vocals	3.83	291	13
1514	Roxy Music	Art Rock, Glam Rock	quirky, male vocals, futuristic, energetic, playful, love, sexual, romantic, eclectic, progressive	3.77	6442	168
1515	Funkadelic	Funk Rock, Funk	psychedelic, drugs, rhythmic, sexual, playful, hypnotic, humorous, raw, hedonistic, spiritual	3.8	3565	71
1516	Machine Gun Etiquette	Punk Rock	energetic, aggressive, male vocals, anti-religious, rebellious, anthemic, raw	3.8	2861	73
1517	Black Woman	Free Jazz, Spiritual Jazz	female vocals, avant-garde, spiritual, abstract, manic, noisy, improvisation, psychedelic, passionate, hypnotic	3.8	2718	43
1518	Punishment for Decadence	Technical Thrash Metal, Thrash Metal	technical, aggressive, energetic, heavy, male vocals, complex, uncommon time signatures, death, apocalyptic, chaotic	3.8	2422	40
1519	Couldn't Stand the Weather	Blues Rock, Electric Texas Blues	male vocals, energetic, rhythmic, melodic, summer, warm, love, epic, sentimental, folklore	3.81	2092	46
1520	It Serve You Right to Suffer	Electric Blues	rhythmic, raw, serious, lonely, nocturnal, lethargic, melancholic, male vocals, calm, passionate	3.81	1381	20
1521	Judgment!	Post-Bop	improvisation, instrumental, mellow, nocturnal, mysterious	3.82	1111	21
1522	Soul Mining	New Wave, Art Pop	anxious, melancholic, melodic, passionate, male vocals, existential, rhythmic, bittersweet, philosophical, depressive	3.78	4980	86
1523	Gunfighter Ballads and Trail Songs	Cowboy	desert, crime, concept album, male vocals, melodic, death, ballad, folklore, pastoral, mellow	3.8	3988	69
1524	Uncut Gems	Progressive Electronic, Film Score	suspenseful, anxious, lush, instrumental, eclectic, cold, atmospheric, choral, urban, winter	3.81	2320	12
1525	Cheap Thrills	Blues Rock, Psychedelic Rock	female vocals, psychedelic, passionate, raw, longing, love, energetic, rhythmic, male vocals, lonely	3.78	4084	137
1526	Something / Anything?	Pop Rock	melodic, romantic, eclectic, humorous, playful, male vocals, love, bittersweet, uplifting, optimistic	3.79	3953	132
1527	The Eye of Every Storm	Atmospheric Sludge Metal, Post-Rock, Post-Metal	atmospheric, melancholic, male vocals, heavy, suspenseful, sombre, ominous, dark, lonely, aquatic	3.77	3850	69
1528	Natty Dread	Roots Reggae, Reggae	optimistic, uplifting, conscious, political, warm, rhythmic, protest, male vocals, melodic, spiritual	3.8	3212	59
1529	Il était une forêt...	Depressive Black Metal, Atmospheric Black Metal	depressive, cold, lonely, self-hatred, passionate, dark, suicide, misanthropic, serious, atmospheric	3.79	2606	41
1530	Banco del Mutuo Soccorso	Symphonic Prog, Progressive Rock	passionate, funereal, male vocals, mysterious, progressive, atmospheric, energetic, rhythmic, melodic, playful	3.8	1852	37
1531	The Silent Corner and the Empty Stage	Progressive Rock, Art Rock	melancholic, philosophical, existential, passionate, male vocals, poetic, lonely, alienation, progressive	3.79	1795	57
1532	II	Progressive Rock, Psychedelic Rock	male vocals, melodic, progressive, psychedelic, technical	3.81	1368	28
1533	Screams of Anguish	Death Metal	heavy, violence, death, aggressive, dark, technical, complex, energetic, paranormal, manic	3.8	1334	26
1534	4 Visions	Zeuhl	technical, futuristic, uncommon time signatures, energetic, female vocals, complex, space, progressive, mysterious, atmospheric	3.81	1204	28
1535	The Complete String Trios and Quartets	Chamber Music, Serialism	sparse, anxious, acoustic, atonal, string quartet, avant-garde, instrumental, suspenseful, dissonant, atmospheric	3.82	524	3
1536	La double vie de Véronique: The Double Life of Veronika	Choral, Film Score	orchestral, chamber music, choral	3.82	413	5
1537	Blue Bell Knoll	Dream Pop	ethereal, atmospheric, female vocals, hypnotic, mellow, cryptic, lush, surreal, cold, psychedelic	3.78	6844	86
1538	The Natural Bridge	Indie Rock, Lo-Fi / Slacker Rock	poetic, nocturnal, male vocals, mellow, melancholic, lonely, sad, rain, autumn, pastoral	3.8	2738	34
1539	Tutti morimmo a stento	Canzone d'autore, Contemporary Folk	drugs, passionate, death, male vocals, sombre, concept album, melancholic, war, melodic, poetic	3.82	1210	17
1540	Inner Urge	Hard Bop	instrumental, improvisation, acoustic	3.83	858	12
1541	The Gigolo	Hard Bop, Modal Jazz	energetic, instrumental	3.83	474	10
1542	ハウルの動く城 (Hauru no ugoku shiro)	Film Score, Cinematic Classical	playful, soothing, melodic	3.84	440	2
1543	A German Requiem	Romanticism, Choral	choral, melancholic, epic, sombre, male vocals, female vocals, uplifting, spiritual, Christian	3.83	368	7
1544	Achtung Baby	Alternative Rock, Pop Rock	male vocals, passionate, melodic, energetic, playful, anthemic, nocturnal, atmospheric, urban, breakup	3.72	10411	304
1545	Parade: Music From the Motion Picture "Under the Cherry Moon"	Film Soundtrack, Psychedelic Soul, Pop Rock, Art Pop	eclectic, sexual, rhythmic, playful, male vocals, melodic, warm, romantic, psychedelic, nocturnal	3.79	3986	104
1546	The Last in Line	Heavy Metal	melodic, energetic, male vocals, anthemic, passionate, uplifting, fantasy, nocturnal, heavy, dark	3.78	3750	77
1547	Around the Fur	Alternative Metal, Nu Metal	heavy, aggressive, energetic, anxious, passionate, angry, sexual, male vocals, cryptic, rhythmic	3.73	10326	129
1548	Realm of Chaos	Death Metal	heavy, war, apocalyptic, science fiction, aggressive, rhythmic, male vocals, dense, energetic, death	3.79	3119	42
1549	Caesar Demos	Alternative Rock, Psychedelic Rock, Art Rock	eclectic, humorous, psychedelic, lo-fi, melancholic, raw, melodic, quirky, drugs, bittersweet	3.82	510	8
1550	Stupid Dream	Progressive Rock	melancholic, introspective, male vocals, sombre, melodic, progressive, atmospheric, passionate, autumn, eclectic	3.77	5653	115
1551	Blood Money	Singer/Songwriter, Experimental Rock, Dark Cabaret	misanthropic, dark, male vocals, passionate, nihilistic, poetic, concept album, sombre, melancholic, quirky	3.78	4881	69
1552	Billion Dollar Babies	Hard Rock, Glam Rock	male vocals, sarcastic, playful, raw, energetic, violence, death, boastful	3.77	4370	158
1553	Universal Consciousness	Spiritual Jazz, Free Jazz	instrumental, spiritual, improvisation, complex, passionate, warm, chaotic, avant-garde, atmospheric, psychedelic	3.8	2377	23
1554	Horrorscope	Thrash Metal	male vocals, rebellious, heavy, dark, rhythmic, energetic, angry	3.79	2076	51
1555	Accident of Birth	Heavy Metal	epic, heavy, fantasy, male vocals, melodic, energetic, passionate	3.8	1726	45
1556	Slumber of Sullen Eyes	Death Metal	heavy, male vocals, aggressive, ominous, dark, rhythmic, dense, death, anti-religious, melancholic	3.79	1825	30
1557	Celeste	Video Game Music, Electronic, Progressive Electronic	atmospheric, melodic, ominous, introspective, repetitive, instrumental, bittersweet, winter, melancholic, mellow	3.81	1451	10
1558	Lady Sings the Blues	Vocal Jazz, Standards	female vocals, love, acoustic, melancholic, sentimental, passionate, longing, romantic, melodic, mellow	3.8	1639	17
1559	The War of the Worlds	Rock Opera, Progressive Rock, Symphonic Rock, Symphonic Prog	science fiction, apocalyptic, concept album, epic, rock opera, male vocals, progressive, rhythmic, futuristic, passionate	3.78	1536	59
1560	Batman	Film Score, Cinematic Classical	suspenseful, epic, nocturnal, dark, fantasy, mysterious, quirky	3.82	603	8
1561	Ella Fitzgerald Sings the Irving Berlin Song Book	Vocal Jazz, Standards, Big Band	female vocals, romantic, playful, love, lush, orchestral, soothing	3.84	365	8
1562	Super Metroid: Sound in Action	Video Game Music, 16-bit	ominous, alienation, atmospheric, science fiction, suspenseful, instrumental, space, repetitive, aquatic, infernal	3.82	324	6
1563	Silent Shout	Electropop, Synthpop	cryptic, nocturnal, cold, dark, atmospheric, androgynous vocals, rhythmic, futuristic, winter, mysterious	3.73	10442	159
1564	Immunity	Microhouse, IDM	atmospheric, instrumental, hypnotic, rhythmic, nocturnal, lush, mechanical, calm, mysterious, futuristic	3.75	9029	85
1565	Choirs of the Eye	Avant-Garde Metal, Experimental Rock, Post-Metal	ethereal, abstract, dark, mysterious, avant-garde, dense, atmospheric, poetic, lush, surreal	3.75	4136	111
1566	World Downfall	Deathgrind	aggressive, political, male vocals, raw, heavy, energetic, conscious, apocalyptic, misanthropic, angry	3.78	3742	72
1567	Turiya Sings	New Age	meditative, ethereal, spiritual, soothing, religious, peaceful, repetitive, atmospheric, lo-fi, female vocals	3.81	1270	12
1568	The Devil's Playground	Memphis Rap, Southern Hip Hop	lo-fi, crime, dark, raw, violence, infernal, ominous, repetitive, satanic, male vocals	3.81	331	5
1569	Call Me If You Get Lost	West Coast Hip Hop	male vocals, boastful, hedonistic, warm, sampling, lush, summer, eclectic, rhythmic, introspective	3.72	16649	192
1570	TNT	Post-Rock, Experimental Rock	instrumental, mellow, atmospheric, rhythmic, soothing, peaceful, eclectic, complex, calm, meditative	3.76	7679	99
1571	Cure for Pain	Jazz-Rock, Alternative Rock	sensual, drugs, bittersweet, mellow, dark, alcohol, sombre, introspective, male vocals, nocturnal	3.77	5310	71
1572	What Does Anything Mean? Basically	Post-Punk	melancholic, ethereal, passionate, philosophical, poetic, atmospheric, introspective, male vocals, energetic, lush	3.8	3307	46
1573	Bridges	Soul, Jazz-Funk, Funk	rhythmic, political, melodic, male vocals, conscious, uplifting, lush, mellow, warm, atmospheric	3.81	1225	17
1574	Somewhere Out in Space	Power Metal	melodic, energetic, science fiction, male vocals, optimistic, anthemic, heavy, uplifting, triumphant, fantasy	3.78	1184	26
1575	Siren	Art Pop	lush, atmospheric, epic, melodic, passionate, futuristic, male vocals, sampling, spiritual, eclectic	3.84	364	2
1576	Secrets of the Beehive	Art Pop, Ambient Pop	melancholic, atmospheric, mellow, autumn, bittersweet, male vocals, nocturnal, lush, melodic, poetic	3.78	4384	81
1577	Capital Punishment	East Coast Hip Hop, Boom Bap, Gangsta Rap, Hardcore Hip Hop	crime, boastful, male vocals, aggressive, sexual, urban, technical, sampling, rhythmic, violence	3.79	2846	64
1578	La voce del padrone	New Wave	summer, male vocals, playful, quirky, humorous, melodic, philosophical, lush, satirical, cryptic	3.79	2496	36
1579	Aaliyah	Contemporary R&B	sensual, female vocals, passionate, love, urban, atmospheric, rhythmic, nocturnal, eclectic, playful	3.78	2651	54
1580	Hybris	Symphonic Prog, Progressive Rock	complex, forest, progressive, poetic, male vocals, technical, atmospheric, epic, nature, anxious	3.79	2174	64
1581	Turn of the Cards	Symphonic Prog, Progressive Rock	poetic, melodic, uplifting, epic, pastoral, female vocals, dense, philosophical	3.81	1524	46
1582	Funky Kingston	Reggae, Rocksteady	tropical, warm, energetic, optimistic, rhythmic, uplifting, melodic, passionate, raw, summer	3.81	1480	21
1583	Alturas de Machu Pichu	Progressive Rock, Progressive Folk, Andean Rock	poetic, epic, male vocals, concept album, passionate, uplifting, atmospheric, nature, progressive, folklore	3.8	1539	32
1584	A Flame to the Ground Beneath	Power Metal	epic, passionate, melodic, male vocals, uplifting, triumphant, introspective, ethereal, energetic, progressive	3.78	1133	32
1585	The Marriage of Heaven and Hell Part Two	Heavy Metal, US Power Metal, Power Metal	melodic, energetic, mythology, fantasy, triumphant, epic, male vocals, concept album, introspective	3.77	777	19
1586	At Basin Street	Hard Bop	acoustic, improvisation, energetic, instrumental, rhythmic, warm, uplifting	3.83	702	7
1587	Oxygène	Progressive Electronic	instrumental, futuristic, ethereal, space, atmospheric, suite, progressive, soothing, lush, concept album	3.78	5736	116
1588	Frizzle Fry	Funk Metal, Alternative Metal	playful, humorous, energetic, male vocals, quirky, rhythmic, technical, sarcastic, manic, avant-garde	3.75	5908	86
1589	Coma of Souls	Thrash Metal	aggressive, energetic, political, male vocals, heavy, nihilistic, pessimistic, alienation, angry, apocalyptic	3.79	2973	58
1590	Taken by Force	Hard Rock, Heavy Metal	male vocals, melodic, heavy, rebellious, passionate, anthemic, rhythmic, energetic	3.8	2250	66
1591	Go	Hard Bop	instrumental, warm, playful, acoustic, improvisation, nocturnal, happy, melodic, romantic	3.81	2066	32
1593	Looks Like Rain	Progressive Country, Singer/Songwriter	ethereal, rain, concept album, lonely, introspective, breakup, poetic, love, bittersweet, pastoral	3.8	797	11
1594	The Kitchen Tape	Lo-Fi / Slacker Rock, Power Pop, Alternative Rock	raw, male vocals, melodic, lo-fi, alienation, melancholic, bittersweet, introspective, passionate, anxious	3.79	738	7
1595	Idiot Prayer: Nick Cave Alone at Alexandra Palace	Singer/Songwriter	lonely, melancholic, spiritual, love, bittersweet, passionate, male vocals	3.82	564	9
1596	A peleja do Diabo com o dono do céu	Contemporary Folk, Cantoria	male vocals, lush, rhythmic, acoustic, melodic, poetic, summer, atmospheric, passionate, nature	3.83	435	6
1597	Violent Restitution	Thrash Metal	violence, male vocals, energetic, aggressive, angry, crime, urban, heavy	3.8	1187	24
1598	Our Man in Paris	Hard Bop	acoustic, instrumental	3.82	1153	20
1599	Diablo II: Soundtrack	Video Game Music, Dark Ambient	dark, atmospheric, instrumental, forest, desert, medieval, ominous, lonely, suspenseful, mellow	3.8	685	14
1600	Rawkus Presents: Soundbombing II	Boom Bap, Hardcore Hip Hop	male vocals, female vocals, political, rhythmic, urban, boastful, sampling	3.82	567	11
1601	Dragging a Dead Deer Up a Hill	Psychedelic Folk, Ambient	ethereal, melancholic, lonely, lo-fi, atmospheric, forest, soothing, acoustic, introspective, female vocals	3.75	8880	108
1602	Ritchie Blackmore's Rainbow	Hard Rock	fantasy, male vocals, uplifting, melodic, poetic, energetic, passionate, heavy	3.78	4687	88
1603	The Drift	Experimental, Singer/Songwriter, Post-Industrial	suspenseful, scary, ominous, atmospheric, dark, anxious, history, poetic, sombre, avant-garde	3.74	4430	133
1604	Killing Technology	Thrash Metal, Technical Thrash Metal	science fiction, uncommon time signatures, energetic, dissonant, aggressive, progressive, space, male vocals, technical, futuristic	3.78	2922	50
1605	Danzig II: Lucifuge	Hard Rock, Heavy Metal, Blues Rock	occult, male vocals, heavy, energetic, dark, rhythmic, passionate	3.78	2897	48
1606	Phenomenon	Hard Rock	male vocals, melodic, bittersweet, rhythmic, science fiction	3.8	2141	71
1607	Fantastic, Vol. 2	Hip Hop	warm, mellow, urban, sexual, male vocals, boastful, rhythmic, playful, sampling, nocturnal	3.8	2201	39
1608	Nighttime Birds	Gothic Metal	melancholic, female vocals, passionate, nature, romantic, winter, melodic, bittersweet, progressive, sombre	3.8	1847	41
1609	Purple Mountains	Alt-Country, Singer/Songwriter, Indie Rock	depressive, death, introspective, lonely, breakup, deadpan, male vocals, alienation, sad, sarcastic	3.77	6442	51
1610	Dig Me Out	Indie Rock, Punk Rock	passionate, energetic, melodic, rebellious, raw, LGBT, female vocals, angry, breakup, love	3.77	5618	75
1611	Seven Churches	Death Metal, Thrash Metal	raw, infernal, aggressive, satanic, energetic, heavy, male vocals, ominous, mythology, hateful	3.77	4292	107
1612	Midtown 120 Blues	Deep House	LGBT, protest, melancholic, soothing, warm, urban, conscious, atmospheric, nocturnal, repetitive	3.78	3394	52
1613	Propaganda	Glam Rock, Art Pop	energetic, playful, humorous, androgynous vocals, quirky, sarcastic, melodic, satirical, hypnotic, male vocals	3.79	3213	63
1615	Edge of Thorns	Heavy Metal	introspective, melodic, male vocals, progressive, melancholic, sombre, energetic	3.79	1444	34
1616	Return to the 36 Chambers: The Dirty Version	East Coast Hip Hop, Hardcore Hip Hop	manic, raw, humorous, vulgar, drugs, male vocals, lo-fi, playful, quirky, surreal	3.77	5711	121
1617	Texas Flood	Blues Rock, Electric Texas Blues	male vocals, energetic, improvisation, passionate, technical, raw, love, rhythmic, melodic, playful	3.78	3736	94
1618	Promise	Sophisti-Pop, Smooth Soul	female vocals, sensual, nocturnal, love, sentimental, soothing, calm, passionate, melodic, lush	3.8	2925	31
1619	No Room for Squares	Hard Bop	instrumental, improvisation, melodic, rhythmic	3.83	678	12
1620	Lawrence of Arabia	Film Score, Cinematic Classical, Orchestral	instrumental, epic, orchestral, triumphant	3.82	404	15
1621	Presenting The Fabulous Ronettes Featuring Veronica	Girl Group, Brill Building	Wall of Sound, female vocals, romantic, melodic, love, uplifting, sentimental, happy, vocal group, passionate	3.8	2757	56
1622	Sail Away	Singer/Songwriter, Piano Rock	satirical, sarcastic, male vocals, conscious, humorous, poetic, melodic, political, deadpan, bittersweet	3.79	2804	70
1623	Afrodisiac	Afrobeat	energetic, tribal, male vocals, passionate, rhythmic, tropical, party, manic, political, rebellious	3.82	1531	13
1624	Beauty Reaps the Blood of Solitude	Neofolk	melancholic, lush, nature, poetic, female vocals, male vocals, love, atmospheric, acoustic	3.8	1446	19
1625	Traveller	Heavy Metal, US Power Metal	energetic, melodic, science fiction, epic, space, male vocals, concept album, rock opera, rhythmic, heavy	3.78	1251	35
1626	The Suburbs	Indie Rock	melancholic, concept album, bittersweet, male vocals, poetic, melodic, warm, summer, female vocals, sentimental	3.68	19779	368
1627	Ceres & Calypso in the Deep Time	Dream Pop, Neo-Psychedelia, Shoegaze	Wall of Sound, psychedelic, lush, tropical, warm, dense, playful, fantasy, ethereal, atmospheric	3.75	9377	69
1628	A dança da solidão	Samba-canção, Samba	melancholic, poetic, warm, love, male vocals, lonely, melodic, death, atmospheric, bittersweet	3.83	340	1
1629	Surf's Up	Psychedelic Pop, Pop Rock	bittersweet, melancholic, psychedelic, sombre, Wall of Sound, male vocals, conscious, vocal group, aquatic, atmospheric	3.75	8144	178
1630	Perdition City	Electronic, Trip Hop	urban, futuristic, nocturnal, sombre, atmospheric, cold, science fiction, mysterious, dark, male vocals	3.75	7532	132
1631	Goat	Noise Rock, Post-Hardcore	anxious, manic, noisy, raw, sarcastic, angry, dissonant, male vocals, rebellious, aggressive	3.75	7377	99
1632	Hats	Sophisti-Pop	nocturnal, romantic, melancholic, lonely, mellow, urban, atmospheric, lush, ethereal, sombre	3.77	3872	76
1633	Trenchtown Mix Up	Roots Reggae	uplifting, rebellious, conscious, spiritual, male vocals, tropical, religious, vocal group, warm, summer	3.81	850	15
1634	Paid In Full	East Coast Hip Hop, Boom Bap	boastful, rhythmic, raw, sampling, urban, minimalistic, male vocals, technical, playful	3.76	7028	180
1635	Duke Ellington & John Coltrane	Hard Bop, Cool Jazz	acoustic, improvisation, instrumental, mellow, soft, soothing, melodic, calm, nocturnal, warm	3.8	3483	34
1636	Symphonien No. 8 »Unvollendete« · No. 3	Romanticism, Symphony	symphony, acoustic, instrumental, orchestral, triumphant, melodic, lush, energetic, passionate, polyphonic	3.84	295	5
1637	Armed Forces	New Wave, Pop Rock	sarcastic, melodic, passionate, energetic, anxious, male vocals, political, conscious, war	3.77	4942	107
1638	The New Order	Thrash Metal	energetic, aggressive, male vocals, apocalyptic, heavy, melodic, dark, ...	3.78	3539	92
1725	Morrison Hotel	Psychedelic Rock, Blues Rock	energetic, male vocals, poetic, psychedelic, passionate, warm, playful, melodic	3.73	10940	218
1639	Daily Operation	East Coast Hip Hop, Conscious Hip Hop, Boom Bap	urban, conscious, male vocals, mellow, rhythmic, boastful, sampling, deadpan, minimalistic, repetitive	3.79	2723	55
1640	The Black Halo	Power Metal, Rock Opera	melodic, fantasy, male vocals, energetic, romantic, rock opera, lonely, concept album, sombre, dark	3.74	2397	53
1641	Vol. II: Death Chants, Breakdowns and Military Waltzes	American Primitivism	instrumental, hypnotic, acoustic, pastoral, bittersweet, warm, meditative, passionate, soft, melodic	3.8	1937	21
1642	Fish Out of Water	Progressive Rock	uplifting, triumphant, epic, poetic, male vocals, progressive	3.81	1316	49
1643	Miłość w czasach popkultury	Alternative Rock, Pop Rock	lonely, introspective, urban, melodic, bittersweet, passionate, male vocals, existential, melancholic, philosophical	3.8	1389	7
1644	Persepolis	Electroacoustic, Tape Music, Stochastic Music	dissonant, noisy, apocalyptic, surreal, instrumental, avant-garde, ominous, chaotic, dense, hypnotic	3.78	1307	11
1645	Il tempo della gioia	Symphonic Prog, Progressive Rock	melodic, suspenseful, passionate, male vocals, progressive, ethereal, atmospheric, poetic, technical, complex	3.81	982	20
1646	Chico Buarque	MPB, Singer/Songwriter	political, male vocals, bittersweet, conscious, female vocals, tropical, melodic, love, warm, romantic	3.82	802	8
1647	Ella Fitzgerald Sings the Duke Ellington Song Book, Vol. 1	Vocal Jazz, Big Band	female vocals, warm, nocturnal, improvisation, rhythmic, bittersweet, passionate, acoustic, urban, melodic	3.82	636	13
1648	The Thin Red Line	Film Score, Cinematic Classical	epic, atmospheric, orchestral, suspenseful, instrumental	3.81	533	4
1649	Enemy of the Sun	Atmospheric Sludge Metal, Sludge Metal	apocalyptic, heavy, dark, atmospheric, misanthropic, tribal, male vocals, nihilistic, infernal, spiritual	3.78	3041	44
1650	Criss-Cross	Post-Bop	improvisation, acoustic, technical, instrumental, playful	3.81	953	14
1651	Let Freedom Ring	Post-Bop	acoustic, instrumental, melodic, playful, energetic	3.82	787	17
1652	The Cape Verdean Blues	Hard Bop	instrumental, acoustic, improvisation	3.82	632	10
1653	John Peel Sessions	Post-Punk	male vocals, atmospheric, melancholic, passionate, rhythmic, poetic, philosophical, ethereal, melodic, surreal	3.82	509	5
1654	Cajas de música difíciles de parar	Folk Rock, Singer/Songwriter	male vocals	3.81	482	5
1655	Un baión para el ojo idiota	Hard Rock, Blues Rock	political, satirical, male vocals, ideology, energetic, nocturnal, urban, cryptic	3.81	454	7
1656	Rap é compromisso	Boom Bap, Conscious Hip Hop	urban, conscious, male vocals, crime	3.82	443	6
1657	Pygmalion	Ambient Pop, Dream Pop, Post-Rock	ethereal, melancholic, sparse, mellow, atmospheric, mysterious, surreal, male vocals, repetitive, hypnotic	3.74	10387	114
1658	Sounds of Silence	Folk Pop, Folk Rock	calm, male vocals, poetic, conscious, mellow, melodic, bittersweet, introspective, soft, acoustic	3.77	6912	115
1659	De La Soul Is Dead	East Coast Hip Hop, Conscious Hip Hop	humorous, satirical, sampling, sarcastic, eclectic, male vocals, urban, playful, concept album, skit	3.78	3528	77
1660	Dare Iz a Darkside	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	psychedelic, humorous, male vocals, drugs, dark, urban, rhythmic, surreal, aggressive, boastful	3.8	1495	43
1661	A Prince Among Thieves	East Coast Hip Hop, Boom Bap	concept album, crime, male vocals, urban, sampling, rhythmic, skit, opera, death, dark	3.8	1271	36
1662	平成風俗 (Heisei fūzoku)	Jazz Pop, Art Pop, Film Soundtrack	melodic, orchestral, lush, complex, female vocals, mellow, urban, progressive, passionate, eclectic	3.8	1357	11
1663	The Bridge	Hard Bop	mellow, instrumental	3.81	1243	31
1664	Caught Up	Southern Soul, Deep Soul	concept album, longing, passionate, female vocals, melodic, angry, humorous, ballad, bittersweet	3.81	849	14
1665	13	Alternative Rock, Art Rock, Experimental Rock	male vocals, melancholic, eclectic, noisy, breakup, psychedelic, atmospheric, lonely, depressive, nocturnal	3.74	9696	180
1666	Chaos Is Me	Emoviolence	passionate, angry, aggressive, chaotic, anxious, philosophical, raw, manic, energetic, male vocals	3.77	6040	49
1667	Technique	Alternative Dance, Synthpop	melancholic, energetic, rhythmic, male vocals, love, technique, melodic, longing, breakup, warm	3.75	8052	119
1668	Phaedra	Berlin School	atmospheric, instrumental, space, futuristic, hypnotic, cold, ethereal, mysterious, psychedelic, repetitive	3.76	7494	119
1669	All Bitches Die	Death Industrial, Neoclassical Darkwave	misanthropic, female vocals, noisy, ominous, depressive, apocalyptic, disturbing, alienation, concept album, nihilistic	3.76	4862	42
1670	Blood Visions	Garage Punk	energetic, raw, lo-fi, anxious, passionate, melodic, misanthropic, male vocals, humorous, violence	3.77	4663	50
1671	Draconian Times	Gothic Metal	melodic, melancholic, epic, male vocals, heavy, sombre, pessimistic, energetic, atmospheric	3.77	3211	37
1672	Paegan Terrorism Tactics	Sludge Metal	dark, nihilistic, male vocals, misanthropic, drugs, heavy, death, crime, disturbing, aggressive	3.78	2885	54
1673	Twelve Dreams of Dr. Sardonicus	Psychedelic Rock	psychedelic, male vocals, eclectic, melodic, playful, atmospheric, bittersweet, passionate, ethereal, energetic	3.79	2507	100
1674	Radios Appear	Punk Rock	urban, male vocals, energetic	3.8	1506	48
1675	Organized Konfusion	East Coast Hip Hop, Jazz Rap, Boom Bap	conscious, rhythmic, urban, playful, male vocals, boastful, abstract, technical, sampling	3.8	1509	43
1676	The Blues Brothers	Rhythm & Blues, Film Soundtrack	energetic, satirical, female vocals, spiritual, urban, optimistic, melodic, playful, male vocals, rhythmic	3.79	1534	29
1677	Jorge Ben	MPB, Samba-rock	psychedelic, tropical, melodic, playful, uplifting, passionate, male vocals, summer, lush, chaotic	3.81	1438	20
1678	Black Hand Inn	Heavy Metal, Power Metal	anthemic, fantasy, energetic, male vocals, melodic, epic, triumphant, rhythmic, ...	3.79	1020	21
1679	(What's the Story) Morning Glory?	Britpop	melodic, male vocals, uplifting, anthemic, bittersweet, dense, passionate, warm, energetic, lush	3.67	17960	503
1680	White Blood Cells	Garage Rock Revival, Alternative Rock	energetic, raw, melodic, male vocals, rebellious, minimalistic, noisy, love, autumn, bittersweet	3.72	12924	213
1681	Lorca	Avant-Folk, Psychedelic Folk, Singer/Songwriter	avant-garde, surreal, psychedelic, ominous, pastoral, atmospheric, sexual, poetic, sensual, male vocals	3.77	4393	74
1682	Strange Times	Post-Punk	melancholic, atmospheric, passionate, ethereal, philosophical, male vocals, existential, psychedelic, introspective, dark	3.79	3508	66
1683	Insignificance	Singer/Songwriter, Indie Rock, Art Rock	misanthropic, lush, lonely, satirical, male vocals, warm, sarcastic, melancholic, humorous, uncommon time signatures	3.77	3785	55
1684	I Put a Spell on You	Vocal Jazz, Soul	female vocals, passionate, lush, sentimental, melodic, sensual, angry, rhythmic, melancholic, playful	3.8	2373	26
1685	A Christmas Gift for You From Philles Records	Christmas Music, Brill Building, Girl Group	Wall of Sound, winter, Christmas, happy, melodic, lush, carol, bittersweet, passionate, romantic	3.78	2123	66
1686	Folk Singer	Delta Blues	acoustic, male vocals, melancholic, minimalistic, passionate, pastoral	3.8	1998	54
1687	Trilogie de la mort	Drone	meditative, instrumental, hypnotic, spiritual, warm, minimalistic, sombre, repetitive, calm, atmospheric	3.78	1905	21
1688	Time (The Revelator)	Americana, Contemporary Folk, Singer/Songwriter	melancholic, acoustic, melodic, female vocals, introspective, mellow, pastoral, autumn, calm, sparse	3.79	1943	40
1689	Industrial Silence	Alternative Rock	nocturnal, sombre, male vocals, romantic, melancholic, atmospheric, poetic, lush, longing, passionate	3.8	1488	35
1690	Desaparezca aquí	Folk Rock, Singer/Songwriter	poetic, introspective, male vocals	3.82	529	9
1691	Sunbather	Blackgaze, Post-Metal	melancholic, passionate, atmospheric, male vocals, warm, dense, lonely, existential, ethereal, poetic	3.67	17132	185
1692	For the First Time	Post-Rock, Experimental Rock, Post-Punk	anxious, manic, suspenseful, male vocals, monologue, progressive, introspective, abstract, complex, passionate	3.7	15647	235
1693	American Recordings	Americana, Country	acoustic, male vocals, religious, mellow, death, introspective, lonely, dark, sombre	3.78	3575	72
1694	Sing to God	Progressive Rock, Art Punk, Experimental Rock, Zolo	manic, dense, energetic, quirky, chaotic, complex, uncommon time signatures, epic, playful, male vocals	3.75	3067	94
1695	Blizzard of Ozz	Heavy Metal, Hard Rock	male vocals, anthemic, energetic, occult, melodic, introspective, dark, heavy	3.75	6836	233
1696	Bury Me at Makeout Creek	Indie Rock, Singer/Songwriter	lonely, anxious, passionate, suicide, raw, female vocals, lo-fi, melancholic, lethargic, bittersweet	3.77	5856	19
1697	Affinità-divergenze fra il compagno Togliatti e noi: Del conseguimento della maggiore età	Post-Punk, Art Punk	political, energetic, anxious, male vocals, lo-fi, anthemic, rhythmic, rebellious, conscious, ominous	3.78	2597	43
1698	Dead Heart in a Dead World	Progressive Metal, Heavy Metal	death, heavy, dark, complex, philosophical, technical, melodic, progressive, passionate, energetic	3.76	2527	69
1699	Zoundegnon Bernard 'Papillon' guitariste principal	Soukous, Fon Music	male vocals, energetic, rhythmic, happy, warm, melodic, uplifting, party, tropical, technical	3.83	576	7
1700	L'aldilà	Film Score, Horror Synth, Modern Classical	progressive, scary, cold, repetitive, funereal, manic, instrumental, dark, epic, sombre	3.84	301	5
1701	Vergogna schifosi	Film Score, Lounge	spring, theme, ethereal, lush, soothing, calm	3.83	312	6
1702	The Cars	New Wave, Power Pop, Pop Rock	playful, uplifting, love, melodic, energetic, male vocals, anthemic, quirky, rhythmic, romantic	3.74	7896	158
1703	It's a Wonderful Life	Indie Rock, Indie Pop	depressive, melancholic, sombre, introspective, bittersweet, male vocals, lo-fi, mellow, lonely, melodic	3.77	4361	71
1704	Radio Ethiopia	Art Rock, Proto-Punk	poetic, rebellious, female vocals, energetic, urban, drugs, raw, romantic, cryptic	3.78	3851	71
1705	Inspiration Information	Psychedelic Soul	mellow, soft, warm, peaceful, psychedelic, melodic, lush, uplifting, male vocals, summer	3.8	2649	75
1706	Picchio dal Pozzo	Progressive Rock, Canterbury Scene	playful, progressive, complex, mellow, surreal, eclectic, abstract, cryptic, avant-garde, energetic	3.81	1016	24
1707	On Top of the World	Southern Hip Hop, Gangsta Rap, Conscious Hip Hop	conscious, crime, urban, drugs, boastful, male vocals, sexual, violence, introspective, sombre	3.79	1027	21
1708	Piano Bar	New Wave, Pop Rock	political, sombre, anxious, conscious, urban, melodic, male vocals, quirky, playful, sarcastic	3.79	1026	15
1709	Almoraima	Flamenco	rhythmic, instrumental, acoustic, complex, melancholic, warm, technical, melodic, passionate, sentimental	3.83	383	6
1710	AmeriKKKa's Most Wanted	West Coast Hip Hop, Gangsta Rap, Political Hip Hop, Hardcore Hip Hop	aggressive, urban, political, angry, crime, energetic, boastful, rebellious, protest, conscious	3.76	5119	108
1711	Critical Beatdown	East Coast Hip Hop, Boom Bap	energetic, boastful, sampling, male vocals, urban, rhythmic, aggressive, playful, humorous, abstract	3.77	2490	63
1712	Breaking Atoms	East Coast Hip Hop, Boom Bap, Conscious Hip Hop	sampling, boastful, conscious, energetic, urban, male vocals, rhythmic, violence, mellow	3.78	2269	52
1713	Wrecking Ball	Alt-Country	ethereal, female vocals, atmospheric, melancholic, bittersweet, introspective, warm, longing, lush, mellow	3.8	1768	57
1714	War ina Babylon	Roots Reggae	conscious, warm, tropical, spiritual, male vocals, rhythmic, atmospheric, rebellious, war, hypnotic	3.8	1694	38
1715	Intents and Purposes: The Jazz Artistry of Bill Dixon	Third Stream, Free Jazz, Modern Creative	complex, atmospheric, avant-garde, dark, instrumental, infernal, improvisation	3.81	883	9
1716	New Orleans Suite	Big Band	suite, instrumental, uplifting	3.82	634	12
1717	Yellow Magic Orchestra	Synthpop	male vocals, repetitive, surreal, warm, melodic, minimalistic, mechanical, rhythmic, futuristic	3.81	626	5
1718	Just Another Diamond Day	Chamber Folk, Singer/Songwriter, Contemporary Folk	peaceful, mellow, pastoral, soothing, nature, spring, soft, female vocals, acoustic, calm	3.76	5949	108
1719	Midnight Blue	Hard Bop	nocturnal, soothing, calm, instrumental, melodic, soft, playful, improvisation, warm, ballad	3.8	1765	39
1720	The Thing	Film Score, Cinematic Classical	suspenseful, ominous, atmospheric, instrumental	3.82	661	9
1721	Star Wars Episode III: Revenge of the Sith	Film Score, Cinematic Classical	instrumental, choral, epic, orchestral, dark, space, theme, anthemic, melodic, depressive	3.8	671	6
1722	Neon Bible	Indie Rock	melancholic, passionate, dark, anxious, melodic, male vocals, orchestral, epic, concept album, female vocals	3.68	20406	481
1723	Portrait in Jazz	Cool Jazz	instrumental, soothing, mellow, improvisation, calm, acoustic, technical, romantic, winter	3.79	2912	25
1724	Enta da Stage	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	crime, boastful, urban, violence, aggressive, dark, sampling, male vocals, rhythmic, nihilistic	3.78	2449	71
1726	Eureka	Art Pop, Chamber Pop, Jazz Pop	lush, mellow, melodic, misanthropic, satirical, humorous, quirky, bittersweet, warm, male vocals	3.76	4934	66
1727	Piece of Time	Technical Death Metal	technical, energetic, philosophical, complex, heavy, conscious, aggressive, uncommon time signatures, male vocals, existential	3.78	3803	67
1728	Chet Baker Sings	Vocal Jazz, Cool Jazz, Standards	love, lonely, romantic, melancholic, soft, mellow, male vocals, bittersweet, longing, calm	3.78	3646	35
1729	Кров у наших криницях (Blood in Our Wells)	Atmospheric Black Metal, Pagan Black Metal	pagan, nationalism, history, epic, atmospheric, male vocals, romantic, nature, sombre, repetitive	3.76	3442	51
1730	Voyage of the Acolyte	Symphonic Prog, Progressive Rock	pastoral, concept album, progressive, fantasy, melodic, instrumental	3.78	2236	55
1731	I Trawl the MEGAHERTZ	Modern Classical, Chamber Jazz	lush, monologue, orchestral, abstract, existential, introspective, female vocals, poetic, male vocals, sentimental	3.79	2008	31
1732	The Maniacal Vale	Funeral Doom Metal	dense, heavy, ominous, male vocals, psychedelic, depressive, atmospheric, apocalyptic, sombre, funereal	3.76	1748	72
1733	Light of Day, Day of Darkness	Progressive Metal	dark, longing, progressive, sombre, poetic, heavy, introspective, melancholic, melodic, atmospheric	3.77	1668	59
1734	East-West	Blues Rock	male vocals, passionate, rhythmic, energetic, melodic, longing, lonely, technical	3.79	1489	58
1735	Out of the Cool	Progressive Big Band, Cool Jazz	instrumental, atmospheric, technical, improvisation, acoustic, mysterious, eclectic, introspective, poetic, winter	3.81	1213	23
1736	Brel [Les Marquises]	Chanson à texte	poetic, bittersweet, melancholic, male vocals, love, passionate, lush, sombre, death, sarcastic	3.8	995	20
1737	Metastasis; Pithoprakta; Eonta	Stochastic Music, Orchestral	atonal, complex, avant-garde, suspenseful, dissonant, orchestral, polyphonic, technical, mysterious, instrumental	3.8	864	15
1738	Like a Ship... (Without a Sail)	Soul, Gospel, Spirituals	spiritual, Christian, religious, uplifting, choral, anthemic, soothing, vocal group, optimistic, male vocals	3.82	783	8
1739	(I'm) Stranded	Punk Rock	energetic, raw, male vocals, rebellious, sexual, playful, urban	3.79	2056	66
1740	Ashes 2 Ashes, Dust 2 Dust	Memphis Rap, Southern Hip Hop, Gangsta Rap	lo-fi, nihilistic, violence, crime, death, noisy, aggressive, urban, boastful, male vocals	3.78	1789	4
1741	La leyenda del tiempo	Flamenco nuevo	passionate, male vocals, poetic, warm, progressive, summer, technical, rhythmic, playful, eclectic	3.8	1441	18
1742	Night Dreamer	Post-Bop	nocturnal, urban, calm, lush, soothing, mellow, instrumental	3.81	1238	21
1743	Lucifer: Book of Angels Volume 10	Chamber Jazz	soothing, melodic, instrumental, acoustic, mellow, warm, desert, mysterious	3.81	833	16
1744	The Juggaknots	East Coast Hip Hop, Boom Bap	urban, conscious, sampling, lo-fi, rhythmic, dark, misanthropic, crime, sexual, quirky	3.8	876	21
1745	Días y flores	Nueva trova	poetic, warm, peaceful, fantasy, political, male vocals, acoustic	3.82	791	21
1746	The Last of Us	Video Game Music, Ambient	ominous, anxious, melancholic, atmospheric, instrumental, apocalyptic, suspenseful, dark, sombre, lush	3.81	743	7
1747	O poeta e o violão	Bossa nova	soft, acoustic, soothing, happy, calm, male vocals, passionate, melancholic	3.82	467	8
1748	Da pacem	Choral, Modern Classical	choral, spiritual, melancholic, serious, Christian, passionate, melodic, sombre, natural	3.81	475	5
1750	La Camorra: La soledad de la provocación apasionada	Tango nuevo, Latin American Classical Music	sombre, instrumental, suite, acoustic, melodic, suspenseful, dense, energetic, passionate, technical	3.84	311	4
1751	Metropolis Pt. 2: Scenes From a Memory	Progressive Metal	uncommon time signatures, technical, complex, concept album, progressive, melodic, male vocals, epic, rock opera, death	3.67	9372	267
1752	Fire of Love	Punk Blues, Psychobilly	raw, energetic, sexual, rebellious, male vocals, manic, passionate, hedonistic, nihilistic, rhythmic	3.76	6258	101
1753	There's Nothing Wrong With Love	Indie Rock	bittersweet, warm, playful, summer, mellow, melodic, sentimental, sarcastic, male vocals, love	3.76	5998	80
1754	Product	Bubblegum Bass	playful, futuristic, energetic, quirky, female vocals, happy, mechanical, rhythmic, surreal, dissonant	3.76	5035	39
1755	Two Hunters	Atmospheric Black Metal	nature, forest, epic, atmospheric, male vocals, dark, melancholic, autumn, dense, heavy	3.76	4786	78
1756	Judgement	Alternative Rock	melancholic, dark, atmospheric, male vocals, lonely, anxious, sad, passionate, introspective, depressive	3.76	4269	80
1757	The Texas-Jerusalem Crossroads	Post-Rock, Shoegaze, Christian Rock	Christian, epic, religious, apocalyptic, male vocals, concept album, triumphant, spiritual, progressive, atmospheric	3.77	3349	51
1758	Sojourner	Alt-Country, Americana, Folk Rock, Contemporary Folk	introspective, male vocals, lonely, sad, existential, pessimistic, mellow, lethargic, poetic, sombre	3.8	862	9
1759	The River	Heartland Rock, Singer/Songwriter	passionate, male vocals, romantic, anthemic, energetic, melodic, love, sentimental, conscious	3.75	6356	135
1760	Here, My Dear	Smooth Soul	breakup, passionate, melodic, warm, angry, lush, male vocals, bittersweet, concept album, introspective	3.79	2739	70
1761	Tell Me About the Long Dark Path Home	Midwest Emo, Post-Rock	atmospheric, melancholic, sad, winter, cold, male vocals, depressive, sombre, lonely, forest	3.78	2551	23
1762	Everybody Digs Bill Evans	Cool Jazz, Modal Jazz, Post-Bop	instrumental, improvisation, soothing, nocturnal, technical, passionate, peaceful, mellow, warm, acoustic	3.8	1673	23
1763	Dialogue	Post-Bop, Modal Jazz, Avant-Garde Jazz	instrumental, avant-garde, atmospheric, mysterious, uncommon time signatures, suspenseful, acoustic, anxious, improvisation, complex	3.8	1517	36
1764	Contours	Post-Bop, Avant-Garde Jazz	instrumental, acoustic, improvisation, anxious, technical, suspenseful	3.8	1248	19
1765	Todos os olhos	MPB, Singer/Songwriter	playful, humorous, bittersweet, quirky, urban, avant-garde, sarcastic, male vocals, poetic, passionate	3.8	1171	14
1766	West Side Soul	Chicago Blues, Soul Blues	love, male vocals, rhythmic, raw, passionate, energetic	3.81	1081	40
1767	How I'm Feeling Now	Electropop, Hyperpop, Bubblegum Bass	longing, noisy, love, female vocals, introspective, lonely, romantic, bittersweet, sentimental, melodic	3.67	16910	167
1768	Wide Awake	Indie Rock, Art Punk	political, rhythmic, sarcastic, energetic, anxious, male vocals, playful, conscious, urban, satirical	3.73	10685	97
1769	Diary	Midwest Emo	melancholic, passionate, male vocals, sad, introspective, serious, anxious, bittersweet, depressive, sentimental	3.74	9296	105
1770	Metaphorical Music	Jazz Rap, Instrumental Hip Hop	peaceful, soothing, instrumental, lush, optimistic, meditative, mellow, atmospheric, spring, rhythmic	3.76	6549	43
1771	Extreme Aggression	Thrash Metal	aggressive, energetic, nihilistic, angry, male vocals, heavy, pessimistic, dark	3.77	2905	65
1772	Phases and Stages	Outlaw Country	breakup, mellow, male vocals, concept album, melancholic, sombre, sad, acoustic, introspective, lonely	3.8	1256	26
1773	Showcase	Roots Reggae	conscious, mellow, male vocals, rhythmic, female vocals, hypnotic, urban, religious, summer, tropical	3.81	834	15
1774	The Individualism of Gil Evans	Post-Bop, Progressive Big Band	mellow, instrumental, atmospheric, suspenseful, lush	3.82	588	11
1775	Zé Ramalho	Contemporary Folk, Singer/Songwriter, Cantoria	psychedelic, melodic, acoustic, male vocals, poetic, energetic, passionate, triumphant, conscious, rhythmic	3.82	507	18
1776	Punch-Drunk Love	Film Score		3.82	435	8
1777	Turangalîla-symphonie	Modern Classical, Symphony	complex, instrumental, symphony, epic, orchestral, polyphonic, avant-garde, love, passionate, lush	3.81	336	3
1778	Focus	Progressive Metal, Technical Death Metal	technical, complex, philosophical, progressive, futuristic, introspective, spiritual, male vocals, heavy, psychedelic	3.72	6535	173
1779	Sunflower	Pop Rock, Sunshine Pop	love, uplifting, warm, vocal group, romantic, male vocals, spring, pastoral, sentimental, melodic	3.76	5939	151
1780	Parallelograms	Psychedelic Folk, Singer/Songwriter	soothing, psychedelic, mellow, nature, peaceful, female vocals, pastoral, melancholic, mysterious, ethereal	3.78	3798	74
1781	Full Moon Fever	Pop Rock, Heartland Rock	melodic, male vocals, optimistic, triumphant, romantic, lush, anthemic, summer, bittersweet	3.78	3515	93
1782	Inflammable Material	Punk Rock	political, rebellious, energetic, passionate, angry, male vocals, raw, protest, anthemic, aggressive	3.78	2669	66
1783	One Beat	Indie Rock	political, female vocals, passionate, energetic, rebellious, angry	3.78	2759	37
1784	Fuente y caudal	Flamenco	acoustic, instrumental, technical, warm, pastoral, passionate, mellow, sensual, longing, complex	3.81	1071	17
1785	Blues	Blues Rock	rebellious, love, male vocals	3.8	883	14
1786	Silent Hill 4 -The Room-	Video Game Music, Ambient, Trip Hop	atmospheric, ominous, dark, anxious, suspenseful, melancholic, mysterious, sombre, cold, female vocals	3.8	946	18
1787	Vol. 9mm "It's On"	Memphis Rap, Southern Hip Hop	lo-fi, crime, rhythmic, vulgar, repetitive, sampling, sexual, atmospheric, male vocals, death	3.81	507	7
1788	RTJ4	Hardcore Hip Hop, Political Hip Hop	male vocals, political, boastful, aggressive, conscious, sampling, energetic, passionate, urban, rhythmic	3.71	12842	118
1789	Drums and Wires	New Wave, Post-Punk	playful, anxious, energetic, rhythmic, humorous, quirky, political, male vocals, melodic, sarcastic	3.76	6533	113
1790	空中キャンプ (Kūchū Camp)	Dream Pop	mellow, melodic, playful, atmospheric, uplifting, warm, summer, male vocals, optimistic, androgynous vocals	3.76	6665	37
1791	The Hurting	Synthpop, New Wave	melancholic, passionate, depressive, sad, male vocals, anxious, rhythmic, introspective, melodic, sentimental	3.77	4540	103
1792	Car Wheels on a Gravel Road	Alt-Country, Americana, Singer/Songwriter	pastoral, melancholic, melodic, female vocals, love, passionate, warm, bittersweet, sentimental, romantic	3.77	3375	87
1793	Marbles	Progressive Rock, Alternative Rock	male vocals, introspective, calm, progressive, mellow, melancholic, melodic, atmospheric, soft, concept album	3.77	1703	73
1794	Two Sevens Clash	Roots Reggae	spiritual, male vocals, rhythmic, optimistic, uplifting, warm, tropical, conscious, hypnotic, passionate	3.8	1435	34
1795	Will the Circle Be Unbroken	Bluegrass, Traditional Country	pastoral, uplifting, melodic, optimistic, passionate, happy, male vocals, female vocals, acoustic, energetic	3.79	1258	33
1796	Calling Card	Blues Rock	melodic, love, male vocals, longing, playful, surreal, rhythmic	3.81	1071	21
1797	The Circle Maker	Chamber Jazz, Klezmer	dissonant, improvisation, dense, atmospheric, passionate, lush, eclectic, mysterious, energetic, instrumental	3.8	974	16
1798	Procession to the Infraworld	Death Metal	atmospheric, heavy, energetic, male vocals, melodic, epic, aggressive, mysterious, ominous, surreal	3.78	932	11
1799	Drumming; Music for Mallet Instruments, Voices and Organ; Six Pianos	Minimalism	hypnotic, repetitive, minimalistic, rhythmic, dense, complex, technical, acoustic, mellow, meditative	3.8	830	9
1800	Rossz csillag alatt született	Breakcore, Drill and Bass, Modern Classical	manic, anxious, uncommon time signatures, melancholic, suspenseful, complex, orchestral, ominous, sombre, rhythmic	3.73	8369	115
1801	Tubular Bells	Progressive Rock	instrumental, progressive, epic, technical, atmospheric, complex, eclectic, uncommon time signatures, quirky, playful	3.74	8069	174
1802	You	Space Rock, Canterbury Scene	psychedelic, playful, space, atmospheric, hypnotic, science fiction, drugs, progressive, eclectic, mythology	3.77	3587	81
1803	Horrified	Grindcore	aggressive, death, energetic, raw, lo-fi, violence, vulgar, heavy, noisy, chaotic	3.77	2650	62
1804	Elis & Tom	Bossa nova	ballad, male vocals, female vocals, melodic, summer, melancholic, warm, peaceful, nocturnal, poetic	3.79	2076	31
1805	Thembi	Spiritual Jazz, Avant-Garde Jazz	improvisation, instrumental, atmospheric, mellow, spiritual, avant-garde, warm, complex, psychedelic, manic	3.8	2032	19
1806	...and His Mother Called Him Bill	Big Band, Swing	instrumental, acoustic, rhythmic, mellow, nocturnal, complex, melancholic, improvisation, melodic, playful	3.81	768	12
1807	Tetsuo	Film Score, Industrial, Electro-Industrial	mechanical, cold, instrumental, aggressive, noisy, futuristic, dissonant	3.79	523	5
1808	in vain	Modern Classical	dissonant, anxious, avant-garde, suspenseful, mysterious, microtonal, acoustic, instrumental, complex, orchestral	3.81	493	3
1809	Kingdom Hearts	Video Game Music, Sequencer & Tracker	instrumental, melodic, epic, atmospheric, sentimental, suspenseful, mysterious, lush, bittersweet, eclectic	3.8	448	9
1810	Los Jaivas [El indio]	Progressive Rock, Andean Rock	passionate, poetic, male vocals, progressive, folklore, acoustic, eclectic	3.81	471	15
1811	Dreamer	Southern Soul	mellow, male vocals, sensual, warm	3.82	402	8
1812	The Dealer	Post-Bop	improvisation, instrumental	3.8	729	16
1813	Aion; Pfhat; Konx-Om-Pax	Microtonal Classical, Orchestral	avant-garde, dark, ominous, orchestral, dissonant, atmospheric, disturbing, scary	3.81	347	2
1814	Hissing Fauna, Are You the Destroyer?	Psychedelic Pop, Indie Pop, Neo-Psychedelia	energetic, psychedelic, breakup, anxious, bittersweet, concept album, misanthropic, melodic, androgynous vocals, sarcastic	3.72	9873	190
1815	Parachute	Psychedelic Rock, Psychedelic Pop, Progressive Pop	bittersweet, lonely, melodic, pastoral, autumn, love, surreal, concept album, rain, psychedelic	3.79	1966	60
1816	Uwaga! Jedzie tramwaj	Dream Pop	bittersweet, existential, mellow, lethargic, soft, male vocals, soothing, sentimental, sombre, melancholic	3.78	1887	29
1817	Lucifer's Friend	Hard Rock	male vocals, energetic, heavy, progressive, psychedelic, melodic, passionate, hedonistic	3.79	1438	54
1818	The Survivors' Suite	ECM Style Jazz, Avant-Garde Jazz	suite, instrumental, improvisation, tribal, mysterious, passionate, spiritual	3.79	1243	8
1819	Somnium	Ambient, Drone	meditative, atmospheric, nocturnal, forest, soothing, mysterious, rain, instrumental, natural, aquatic	3.78	1187	28
1820	Stray	Heavy Psych, Hard Rock	heavy, male vocals, psychedelic, raw, energetic, warm, playful	3.79	1049	36
1821	Concierto	Cool Jazz, Post-Bop	instrumental, meditative, calm, soft, mellow, improvisation	3.8	842	18
1822	Melodrama	Synthpop, Alt-Pop, Art Pop	introspective, female vocals, breakup, nocturnal, bittersweet, passionate, melodic, lonely, melancholic, concept album	3.68	14864	144
1823	½ Mensch	Industrial	dark, mechanical, anxious, raw, chaotic, noisy, rhythmic, male vocals, cold, scary	3.75	5356	48
1824	Grotesque (After the Gramme)	Post-Punk	sarcastic, satirical, cryptic, raw, energetic, misanthropic, urban, repetitive, conscious, manic	3.78	3630	65
1825	The Clown	Post-Bop	instrumental, technical, acoustic, improvisation, playful, complex, energetic, passionate	3.78	3455	42
1826	Io sono nato libero	Symphonic Prog, Progressive Rock	male vocals, war, complex, poetic, progressive, sombre, passionate, eclectic, political, suspenseful	3.78	1574	28
1827	Saxophone Improvisations Series F	Free Jazz, Free Improvisation, Modern Creative	improvisation, atonal, technical, instrumental, sparse	3.78	783	12
1828	Fome	Alternative Rock	male vocals, anxious, melodic, playful, eclectic, cryptic, bittersweet, melancholic	3.81	463	16
1829	Escalator Over the Hill	Experimental Big Band, Third Stream	surreal, avant-garde, eclectic, ominous, quirky, poetic, chaotic, epic, dark, cryptic	3.77	1516	28
1830	Omega	Flamenco nuevo, Experimental Rock	poetic, male vocals, passionate, progressive	3.79	865	14
1831	Today!	Piedmont Blues, Country Blues	acoustic, male vocals, calm, melodic, soft, warm, pastoral, soothing, mellow, melancholic	3.81	695	13
1832	Rag Madhuvanti and Rag Misra Tilang	Hindustani Classical Music	rhythmic, hypnotic, instrumental, technical, complex, acoustic, suspenseful, suite, progressive, warm	3.82	526	2
1833	Songs From a Room	Contemporary Folk, Singer/Songwriter	poetic, melancholic, male vocals, acoustic, sombre, autumn, soft, sparse, lonely, serious	3.76	6487	105
1834	The Wild, the Innocent & the E Street Shuffle	Heartland Rock	urban, summer, energetic, male vocals, poetic, passionate, melodic, eclectic, bittersweet, epic	3.76	5178	128
1835	Misplaced Childhood	Neo-Prog	concept album, sentimental, uplifting, male vocals, melodic, introspective, melancholic, passionate, suite, rock opera	3.74	4540	133
1836	Gaucho	Jazz-Rock, Yacht Rock, Pop Rock	misanthropic, sarcastic, lush, mellow, complex, male vocals, drugs, cryptic, satirical, soft	3.76	4145	97
1837	恋人へ (Koibito e)	Shibuya-kei, Jazz Pop	soothing, mellow, lush, melodic, warm, male vocals, female vocals, uplifting, bittersweet, summer	3.78	3413	28
1838	Wave Notation 1: Music for Nine Post Cards	Ambient	calm, sparse, meditative, minimalistic, mellow, soothing, soft, peaceful, instrumental, lonely	3.79	3016	17
1839	Hatred for Mankind	Death Metal, Death Doom Metal	misanthropic, hateful, heavy, infernal, violence, dense, aggressive, disturbing, sampling, death	3.78	2341	19
1840	Köhntarkösz	Zeuhl	mysterious, dark, hypnotic, progressive, uncommon time signatures, avant-garde, male vocals, female vocals, ominous, psychedelic	3.78	2223	44
1841	A mulher do fim do mundo	Vanguarda paulista, Samba, Art Rock	passionate, female vocals, poetic, urban, melancholic, conscious, dark, rhythmic, eclectic, introspective	3.78	1786	14
1842	Final Fantasy VII Remake	Video Game Music, Cinematic Classical	dense, heavy, rhythmic, mellow, nocturnal, dark, triumphant, melodic, progressive, epic	3.78	363	3
1843	Benji	Contemporary Folk, Singer/Songwriter	death, melancholic, introspective, sombre, autumn, male vocals, serious, acoustic, sentimental, mellow	3.7	11570	163
1844	Yayayi	Chopped and Screwed, Glitch Hop, Instrumental Hip Hop, Experimental Hip Hop	surreal, psychedelic, sampling, eclectic, futuristic, hypnotic, urban, mechanical, mysterious, rhythmic	3.77	1500	18
1845	Awakening the World	Power Metal	introspective, melodic, energetic, male vocals, triumphant, rebellious, anthemic, epic, fantasy, uplifting	3.76	947	26
1846	Ben	MPB, Samba-rock	male vocals, happy, tropical, uplifting, rhythmic, mellow, lush, optimistic, passionate, playful	3.81	729	13
1847	Roll Call	Hard Bop	instrumental, improvisation, acoustic, technical, energetic, rhythmic	3.81	740	16
1848	Joy as an Act of Resistance.	Post-Punk, Post-Hardcore	political, aggressive, energetic, male vocals, sarcastic, rebellious, conscious, LGBT, passionate, raw	3.7	12266	108
1849	String Quartets	Impressionism, Chamber Music	string quartet, acoustic, instrumental, mysterious, chamber music, melodic, technical, polyphonic, complex	3.8	618	6
1850	The Hours	Film Score, Modern Classical		3.81	504	5
1851	The Black Parade	Pop Punk, Rock Opera, Alternative Rock	rock opera, energetic, death, passionate, concept album, male vocals, melodic, anthemic, epic, dark	3.65	12799	200
1852	Suede	Britpop, Glam Rock	sexual, sensual, passionate, LGBT, melancholic, poetic, romantic, androgynous vocals, melodic, male vocals	3.75	5261	106
1853	Panzerfaust	Black Metal	cold, raw, lo-fi, winter, forest, aggressive, male vocals, atmospheric, dark, pagan	3.76	4560	51
1854	Pleased to Meet Me	Alternative Rock, Power Pop	bittersweet, anxious, energetic, alcohol, melancholic, male vocals, melodic, rebellious	3.77	4126	78
1855	All Mod Cons	Mod Revival, New Wave, Power Pop	urban, melodic, energetic, male vocals, conscious, rhythmic, angry, passionate, rebellious, love	3.76	3871	86
1856	///Codename: Dustsucker	Post-Rock	atmospheric, melancholic, ethereal, dark, lush, nocturnal, male vocals, sombre, female vocals, abstract	3.78	3147	43
1857	Still	Acoustic Rock, Singer/Songwriter	male vocals, passionate, dark, depressive, atmospheric, sombre, lonely, acoustic, minimalistic, nihilistic	3.77	3284	52
1858	The Awakening	Post-Bop	passionate, improvisation, playful, peaceful, warm, instrumental, acoustic, technical	3.8	1332	13
1859	Blod-draum	Death Metal	chaotic, occult, uncommon time signatures, dissonant, cold, complex, dense, aggressive, raw, nature	3.79	990	21
1860	Top Priority	Blues Rock, Hard Rock	rhythmic, warm, melodic, playful, bittersweet, sentimental, male vocals, energetic	3.8	902	16
1861	Fotheringay	British Folk Rock	female vocals, melodic, male vocals, warm, lush, pastoral, sentimental, nature, longing, philosophical	3.8	830	26
1862	Hedwig and the Angry Inch	Glam Rock, Film Soundtrack	rebellious, male vocals, female vocals, energetic	3.8	372	13
1863	I Don't Like Shit, I Don't Go Outside	Abstract Hip Hop, West Coast Hip Hop	lonely, depressive, misanthropic, dark, nocturnal, apathetic, melancholic, raw, drugs, alienation	3.7	14478	72
1864	Blood Mountain	Progressive Metal, Sludge Metal	fantasy, technical, male vocals, energetic, concept album, aggressive, psychedelic, heavy, poetic, progressive	3.73	8460	146
1865	Pearl	Blues Rock, Soul Blues	passionate, female vocals, energetic, love, breakup, anthemic	3.75	4983	106
1866	This Is Hardcore	Art Rock	sexual, sarcastic, dark, male vocals, sensual, nocturnal, anxious, pessimistic, introspective, melancholic	3.76	5122	100
1867	Night Time	Post-Punk	nocturnal, anxious, passionate, rhythmic, energetic, rebellious, atmospheric, male vocals, political, sombre	3.78	3266	53
1868	Everywhere at the End of Time: Stage 6	Dark Ambient, Drone, Turntable Music, Sound Collage	concept album, atmospheric, lonely, depressive, death, sampling, ominous, surreal, dark, funereal	3.72	3440	42
1869	Annihilation of the Wicked	Technical Death Metal	mythology, technical, aggressive, occult, heavy, history, death, male vocals, epic, energetic	3.76	3533	79
1870	Arntor	Melodic Black Metal	epic, atmospheric, male vocals, winter, melodic, pagan, folklore, medieval, mythology, cold	3.76	2683	48
1871	Setting Sons	Mod Revival, New Wave	melodic, anxious, energetic, male vocals, angry, sarcastic, political, urban	3.78	2587	72
1872	Bad Reputation	Hard Rock	energetic, male vocals, love, melodic, rebellious, anthemic, rhythmic	3.78	2284	60
1873	Coltrane's Sound	Hard Bop	acoustic, improvisation, energetic, instrumental, mellow, nocturnal, playful	3.79	1808	27
1874	Lights Out	Hard Rock	melodic, anthemic, male vocals, energetic, love, rhythmic, boastful	3.79	1667	73
1875	Voimasta ja kunniasta	Folk Metal, Viking Metal	epic, folklore, male vocals, atmospheric, triumphant, mythology, concept album, forest, melodic, pagan	3.76	1648	24
1876	Crêuza de mä	Canzone d'autore, Contemporary Folk	folklore, summer, poetic, mellow, male vocals, passionate, concept album, calm, warm, acoustic	3.78	1174	19
1877	III: So Long Suckers	Doom Metal	heavy, repetitive, dark, melancholic, hateful, death, occult, funereal, male vocals	3.77	1067	33
1879	The Jaki Byard Experience	Post-Bop	energetic, instrumental, eclectic, passionate, warm, technical, acoustic, dense	3.8	616	11
1880	Beverly Glenn-Copeland	Singer/Songwriter, Contemporary Folk, Psychedelic Folk	male vocals, progressive, psychedelic, passionate, ethereal, warm, uplifting, acoustic, improvisation, androgynous vocals	3.81	567	10
1881	The B-52's	New Wave	playful, energetic, party, manic, quirky, female vocals, male vocals, science fiction, rhythmic, humorous	3.75	6267	144
1882	Red Headed Stranger	Outlaw Country	concept album, calm, mellow, male vocals, melancholic, crime, acoustic, soft, death, sombre	3.78	2697	57
1883	L'île re-sonante	Drone	instrumental, minimalistic, hypnotic, repetitive, calm, warm, avant-garde, ethereal, soothing, peaceful	3.79	589	3
1885	Grim Fandango	Video Game Music, Jazz	..., instrumental	3.81	393	4
1886	Welcome to My Nightmare	Hard Rock, Glam Rock	suspenseful, crime, rock opera, scary, male vocals, introspective, surreal, eclectic, melodic, ...	3.76	2881	115
1887	Born Under a Bad Sign	Electric Blues, Soul Blues	male vocals, melodic, rhythmic	3.78	1986	39
1888	Last One on Earth	Death Metal	raw, angry, heavy, death, rhythmic, dark, pessimistic, male vocals, noisy, atmospheric	3.78	1976	23
1889	Red Clay	Post-Bop, Soul Jazz	passionate, instrumental, nocturnal, warm, improvisation, playful, soothing, urban, mellow	3.79	1782	26
1890	Conquistador!	Free Jazz	improvisation, instrumental, chaotic, complex, dissonant, avant-garde, passionate	3.78	1624	24
1891	Of Queues and Cures	Canterbury Scene	complex, lush, improvisation, warm, technical, triumphant	3.79	1113	32
1892	The Straight Story	Film Score, Chamber Music	instrumental, bittersweet, pastoral	3.81	534	6
1893	Sama Layuca	Post-Bop, Avant-Garde Jazz	instrumental, warm, acoustic, technical, melodic, passionate, energetic, desert, complex, rhythmic	3.82	378	9
1894	The Last of the Mohicans	Film Score, Cinematic Classical		3.82	322	8
1895	Help!	Pop Rock	bittersweet, melodic, love, male vocals, romantic, uplifting, longing, energetic	3.67	20697	380
1896	Little Dark Age	Synthpop, Neo-Psychedelia, Psychedelic Pop	psychedelic, playful, lush, melodic, bittersweet, male vocals, quirky, warm, sarcastic, surreal	3.68	17725	141
1897	Things We Lost in the Fire	Slowcore	melancholic, sad, atmospheric, mellow, lethargic, bittersweet, soothing, warm, calm, sentimental	3.76	5111	58
1898	Diamond Life	Smooth Soul, Sophisti-Pop	romantic, female vocals, warm, love, nocturnal, sensual, soothing, calm, mellow, melodic	3.77	4799	61
1899	Gris-Gris	New Orleans R&B, Psychedelic Rock, Psychedelic Soul	occult, tribal, psychedelic, mysterious, hypnotic, rhythmic, drugs, spiritual, male vocals, raw	3.76	4027	96
1900	The Years of Decay	Thrash Metal	misanthropic, energetic, hateful, male vocals, aggressive, heavy, pessimistic, rhythmic, rebellious, violence	3.75	2807	77
1901	Norman Fucking Rockwell!	Singer/Songwriter, Art Pop	female vocals, bittersweet, longing, love, melancholic, ethereal, romantic, lush, melodic, mellow	3.69	15140	185
1902	Ocean Rain	Post-Punk	nocturnal, lush, melancholic, male vocals, atmospheric, melodic, passionate, rain, romantic, psychedelic	3.74	7688	153
1903	Ragged Glory	Hard Rock	raw, male vocals, love, melodic, warm	3.77	3853	108
1904	Whut? Thee Album	East Coast Hip Hop, Hardcore Hip Hop, Boom Bap	vulgar, humorous, sampling, sexual, violence, male vocals, rhythmic, urban, drugs, aggressive	3.77	2152	46
1905	On Fire	Slowcore, Dream Pop	mellow, melancholic, soft, atmospheric, lethargic, soothing, melodic, male vocals, lonely, bittersweet	3.72	10101	148
1906	Foi um rio que passou em minha vida	Samba	rhythmic, melancholic, romantic, melodic, love, lush, male vocals	3.82	434	2
1907	Synecdoche, New York	Film Score	sad, depressive, existential, repetitive, melancholic, sombre, atmospheric, longing, suspenseful, introspective	3.81	427	4
1908	Washing Machine	Noise Rock, Alternative Rock, Experimental Rock	abstract, cryptic, dissonant, mysterious, noisy, male vocals, female vocals, apathetic, urban, ominous	3.73	8525	98
1909	Mekanïk Destruktïw Kommandöh	Zeuhl	epic, rhythmic, science fiction, martial, dense, ritualistic, apocalyptic, war, avant-garde, uncommon time signatures	3.74	5712	127
1910	Pale Folklore	Folk Metal, Atmospheric Black Metal	melancholic, nature, forest, passionate, melodic, atmospheric, dark, male vocals, winter, pagan	3.74	5626	92
1911	Katy Lied	Pop Rock	urban, male vocals, sarcastic, mellow, playful, complex, warm, melodic, eclectic, rhythmic	3.77	4188	99
1912	Goodbye and Hello	Singer/Songwriter, Folk Rock, Psychedelic Folk	poetic, psychedelic, male vocals, melancholic, passionate, romantic, spring, political, melodic, mellow	3.75	5233	95
1913	Introspective	Synthpop, Dance-Pop, Hi-NRG	introspective, male vocals, party, sensual, rhythmic, repetitive, longing, progressive, deadpan, energetic	3.76	3288	51
1914	Imperial Bedroom	Pop Rock, Singer/Songwriter, New Wave	melancholic, passionate, lush, male vocals, warm, melodic, energetic, bittersweet	3.76	3270	84
1915	Chicago Transit Authority	Jazz-Rock	male vocals, lush, technical, melodic, passionate, complex, progressive, rhythmic, optimistic, uncommon time signatures	3.77	2722	106
1916	Grievous Angel	Country Rock, Singer/Songwriter, Country	pastoral, male vocals, warm, introspective, mellow, longing, sentimental, acoustic, peaceful, bittersweet	3.76	2692	68
1917	Arbeit macht frei	Avant-Prog, Jazz-Rock, Progressive Rock	complex, male vocals, uncommon time signatures, political, progressive, melodic, technical, rhythmic, playful, passionate	3.77	2499	44
1918	Üdü Ẁüdü	Zeuhl	martial, dark, hypnotic, suspenseful, rhythmic, mysterious, apocalyptic, heavy, futuristic, epic	3.78	2094	47
1919	Heart Food	Singer/Songwriter, Chamber Folk	female vocals, bittersweet, melodic, Christian, soothing, poetic, religious, melancholic, pastoral, passionate	3.78	1872	57
1920	Caetano Veloso	Tropicália	summer, melodic, playful, eclectic, male vocals, warm, psychedelic, tropical, uplifting	3.79	1680	35
1921	From Filthy Tongue of Gods and Griots	Industrial Hip Hop, Abstract Hip Hop, Experimental Hip Hop	poetic, angry, misanthropic, dark, conscious, political, noisy, pessimistic, anti-religious, nihilistic	3.75	4966	40
1922	Clube da Esquina 2	MPB, Singer/Songwriter	melancholic, acoustic, bittersweet, poetic	3.81	622	9
1923	Cantar	MPB	female vocals, happy, warm, peaceful, uplifting, summer, love, soothing, calm, soft	3.82	470	7
1924	Glass Bead Games	Modal Jazz	melodic, energetic, spiritual	3.82	373	5
1925	Salisbury	Hard Rock, Progressive Rock	male vocals, progressive, epic, energetic, passionate, melodic, heavy	3.77	2558	68
1926	This Godless Endeavor	Thrash Metal, Progressive Metal	melodic, political, heavy, philosophical, conscious, complex, angry, melancholic, energetic, aggressive	3.74	2716	64
1927	Change of the Century	Avant-Garde Jazz	instrumental, improvisation, energetic, acoustic, avant-garde	3.78	2224	26
1928	Sleep Has His House	Neofolk, Avant-Folk, Drone	death, hypnotic, sombre, concept album, meditative, poetic, soft, melancholic, ethereal, funereal	3.77	1871	14
1929	Graves of the Archangels	Death Metal	anti-religious, occult, heavy, dissonant, satanic, atmospheric, male vocals, misanthropic, hateful, aggressive	3.76	1600	31
1930	Lost Highway	Film Soundtrack, Post-Industrial, Dark Jazz	mysterious, ominous, atmospheric, male vocals, dark, abstract, nocturnal, sensual, sombre, aggressive	3.79	1583	22
1931	Ella and Louis Again	Vocal Jazz, Standards	female vocals, love, melodic, male vocals, calm, passionate, soft, nocturnal, romantic, peaceful	3.81	505	7
1932	Winobranie	Avant-Garde Jazz	eclectic, instrumental, avant-garde	3.8	483	5
1933	Babylon by Gus, Vol 1: O ano do macaco	Conscious Hip Hop	rhythmic, conscious, male vocals, energetic, urban, eclectic, boastful, sampling, melodic, rebellious	3.81	364	4
1934	Complete Works for Cello and Piano	Modern Classical, Chamber Music	instrumental, melancholic, passionate, complex, acoustic, ethereal, technical, atmospheric, dense, chamber music	3.82	322	3
1935	Moon Pix	Singer/Songwriter, Slowcore	sad, female vocals, lonely, introspective, sentimental, depressive, melancholic, lethargic, nocturnal, sparse	3.75	5977	101
1936	Floodland	Gothic Rock	sombre, dark, epic, atmospheric, male vocals, passionate, nocturnal, melodic, melancholic, rhythmic	3.76	4755	78
1937	Fear	Art Rock	anxious, male vocals, dark, surreal, energetic, melodic, bittersweet, longing, sarcastic, eclectic	3.77	3277	70
1938	The Gathering	Thrash Metal	heavy, death, aggressive, apocalyptic, dark, energetic, male vocals, occult, ominous, rhythmic	3.76	2560	85
1939	Metamorphogenesis	Funeral Doom Metal	atmospheric, psychedelic, depressive, nihilistic, ominous, heavy, pessimistic, dense, male vocals, misanthropic	3.77	1419	27
1940	Nocturnal	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	nocturnal, urban, male vocals, dark, playful, mellow, sampling, humorous, crime, boastful	3.78	1239	34
1941	You Don't Mess Around With Jim	Singer/Songwriter, Folk Pop	sentimental, male vocals, soothing, warm, acoustic, introspective, melodic, uplifting, mellow, longing	3.79	1195	15
1942	Iron Man	Avant-Garde Jazz, Post-Bop	instrumental, improvisation, passionate	3.79	1160	16
1943	The Sermon!	Soul Jazz	improvisation, instrumental, mellow, uplifting, technical	3.8	985	24
1944	True Blue	Hard Bop	improvisation, acoustic, instrumental, melodic	3.8	959	20
1945	For Musicians Only	Bebop	improvisation, technical, instrumental, rhythmic, complex, energetic	3.81	790	13
1946	Sweet Tea	Hill Country Blues, Blues Rock	passionate, male vocals, lonely, love, rhythmic, psychedelic, raw, longing, improvisation, hypnotic	3.79	871	26
1947	Give Up	Indietronica, Indie Pop	male vocals, romantic, love, bittersweet, poetic, melodic, lush, longing, melancholic, futuristic	3.72	9297	156
1948	Head Over Heels	Ethereal Wave, Gothic Rock, Post-Punk, Dream Pop	dark, atmospheric, cryptic, female vocals, cold, ethereal, surreal, mysterious, hypnotic, dense	3.74	7597	93
1949	76:14	Ambient, Ambient Techno	atmospheric, futuristic, instrumental, soothing, space, hypnotic, repetitive, ethereal, nocturnal, mysterious	3.75	4921	60
1950	Pure Holocaust	Black Metal	aggressive, cold, raw, winter, energetic, dense, infernal, triumphant, fantasy, chaotic	3.76	4105	72
1951	Super Ape	Dub, Roots Reggae	warm, mellow, atmospheric, spiritual, nature, hypnotic, summer, tropical, psychedelic, lo-fi	3.77	3649	54
1952	First and Last and Always	Gothic Rock	dark, sombre, male vocals, anxious, atmospheric, nocturnal, passionate, melodic, anthemic, bittersweet	3.76	4336	62
1953	Below the Lights	Progressive Metal, Black Metal	progressive, male vocals, atmospheric, dark, complex, heavy, melodic, mythology, mysterious, epic	3.75	2936	35
1954	Second Life Syndrome	Progressive Rock	male vocals, melancholic, atmospheric, progressive, concept album, introspective, melodic, complex, heavy, epic	3.76	2974	68
1955	Cobra and Phases Group Play Voltage in the Milky Night	Art Pop, Progressive Pop	female vocals, warm, melodic, eclectic, hypnotic, rhythmic, atmospheric, lush, surreal, uncommon time signatures	3.78	2813	68
1956	つまんね (Tsumanne)	Noise Pop, J-Rock	androgynous vocals, self-hatred, misanthropic, nihilistic, depressive, manic, suicide, noisy, bittersweet, lush	3.76	2971	25
1957	Uptown Saturday Night	East Coast Hip Hop, Jazz Rap	urban, party, abstract, male vocals, mellow, playful, boastful, optimistic, hedonistic, uplifting	3.78	2172	36
1958	Love	Pop Rock, Mashup, Psychedelic Rock	melodic, male vocals, mashup, psychedelic, hypnotic, suite, uplifting, lush, complex, eclectic	3.75	2309	142
1959	Alina	Minimalism	peaceful, instrumental, sparse, minimalistic, acoustic, melancholic, mellow, melodic, chamber music, longing	3.76	2064	46
1960	Meus caros amigos	MPB, Singer/Songwriter	lush, poetic, male vocals, bittersweet, political, conscious, rhythmic, warm, summer, sentimental	3.79	1135	16
1961	Mediterráneo	Nueva canción española, Singer/Songwriter, Baroque Pop	poetic, passionate, melancholic, introspective, pastoral, male vocals	3.79	993	25
1962	Mogwai Young Team	Post-Rock	atmospheric, melancholic, epic, instrumental, lonely, suspenseful, cold, nocturnal, noisy, sampling	3.72	10385	158
1963	The Late Great Townes Van Zandt	Country, Singer/Songwriter	male vocals, pastoral, acoustic, melancholic, love, longing, mellow, melodic	3.79	1588	20
1964	Fathers and Sons	Chicago Blues	male vocals	3.8	690	14
1965	I Do Not Play No Rock 'n' Roll	Electric Blues, Hill Country Blues	raw, male vocals, pastoral, rhythmic, energetic, love, playful, repetitive, longing, warm	3.8	563	14
1966	Banjo-Kazooie	Video Game Music, Sequencer & Tracker	seasonal, uplifting, playful, melodic, instrumental, quirky, aquatic, atmospheric, energetic, desert	3.8	396	5
1967	Heavy Horses	Folk Rock, Progressive Rock	pastoral, nature, spring, male vocals, autumn	3.77	3022	77
1968	Pentagram	Traditional Doom Metal, Heavy Metal	heavy, male vocals, dark, raw, death, rhythmic, occult, satanic, dense, anthemic	3.76	2397	45
1969	Stone Flower	Bossa nova	calm, summer, peaceful, soft, warm, tropical, soothing, nocturnal, mellow, male vocals	3.78	2149	31
1970	Gilberto Gil	Tropicália	psychedelic, energetic, tropical, playful, male vocals, summer, uplifting, mellow, happy, rhythmic	3.78	2034	29
1971	Naturally	Blues Rock, Country Rock	mellow, warm, pastoral, male vocals, autumn, soothing, hypnotic, rhythmic, melodic, playful	3.78	1906	41
1972	Explorations	Cool Jazz	mellow, romantic, soothing, instrumental, calm, improvisation, technical, melodic, rhythmic, acoustic	3.79	1914	21
1973	A Long Hot Summer	East Coast Hip Hop, Boom Bap	conscious, urban, concept album, summer, rhythmic, sampling, crime, male vocals, introspective, boastful	3.77	1618	39
1974	Stardew Valley	Video Game Music, Sequencer & Tracker	mellow, calm, seasonal, peaceful, instrumental, happy, eclectic, melodic, playful, atmospheric	3.82	378	2
1975	Cello-Suiten	Baroque Music	suite, acoustic, instrumental, warm	3.8	350	6
1976	Barbaro (ma non troppo)	Avant-Prog, Rock in Opposition	instrumental, uncommon time signatures, atonal, manic, progressive, ominous, complex, disturbing	3.78	336	6
1977	Starless and Bible Black	Progressive Rock	uncommon time signatures, improvisation, anxious, complex, technical, avant-garde, male vocals, progressive, abstract, cryptic	3.73	8971	150
1978	Los Angeles	Punk Rock	energetic, female vocals, sarcastic, playful, male vocals, raw, urban, existential, philosophical, drugs	3.75	5091	115
1979	Transition	Avant-Garde Jazz	instrumental, energetic, passionate, technical, improvisation, chaotic, rhythmic, complex	3.8	933	12
1980	Hound Dog Taylor and the Houserockers	Electric Blues	energetic, hypnotic, heavy, raw, male vocals	3.79	792	21
1981	Carlos, Erasmo...	MPB	passionate, lush, melodic, male vocals, tropical, summer, eclectic, sensual, optimistic, rhythmic	3.8	727	9
1982	Cantofabule	Progressive Rock	progressive, male vocals, psychedelic, melodic, energetic	3.8	487	18
1983	Check Your Head	East Coast Hip Hop	male vocals, eclectic, energetic, party, rhythmic, sampling, urban, humorous, satirical, quirky	3.74	6542	116
1984	Funcrusher Plus	Abstract Hip Hop, East Coast Hip Hop, Experimental Hip Hop	urban, raw, futuristic, abstract, lo-fi, sampling, nocturnal, science fiction, aggressive, cold	3.75	3764	64
1985	Idlewild South	Southern Rock, Blues Rock	male vocals, energetic, warm, uplifting, longing, melodic, passionate	3.78	2367	67
1986	Of Ruine or Some Blazing Starre	Neofolk	passionate, spiritual, atmospheric, cryptic, poetic, philosophical, melancholic, introspective, existential, hypnotic	3.77	2336	31
1987	魔女の宅急便 (Majo no takkyūbin)	Film Score, Cinematic Classical		3.81	398	1
1988	Slaughter of the Soul	Melodic Death Metal	energetic, angry, heavy, melodic, anti-religious, misanthropic, aggressive, pessimistic, death, male vocals	3.72	5820	149
1989	Country Life	Glam Rock, Art Rock	male vocals, romantic, love, sensual, dense, sexual, passionate, hedonistic, eclectic, energetic	3.76	4607	116
1990	Turn Loose the Swans	Death Doom Metal, Doom Metal	melancholic, romantic, sombre, atmospheric, dark, ominous, depressive, male vocals, heavy, poetic	3.75	3015	52
1991	E.S.P.	Post-Bop	instrumental, acoustic, technical, improvisation, melancholic, warm, peaceful, uplifting, ballad, melodic	3.78	2811	49
1992	Mwandishi	Jazz Fusion	mysterious, psychedelic, progressive, uncommon time signatures, instrumental, rhythmic, complex, spiritual	3.78	1883	28
1993	Tomorrow the Green Grass	Alt-Country, Americana	melodic, passionate, pastoral, bittersweet, male vocals, autumn, summer, love	3.77	1896	48
1994	Back to Times of Splendor	Progressive Metal	epic, melodic, melancholic, progressive, romantic, triumphant, passionate, concept album, heavy, male vocals	3.74	1754	54
1995	All American Music	Country	male vocals, pastoral	3.79	418	16
1996	The Fat of the Land	Big Beat	energetic, aggressive, manic, party, sampling, male vocals, rhythmic, rebellious, mechanical, raw	3.72	10637	154
1997	Out of the Blue	Pop Rock, Symphonic Rock	melodic, uplifting, male vocals, orchestral, bittersweet, lush, futuristic, epic, anthemic, progressive	3.75	5368	159
1998	Killers	NWOBHM, Heavy Metal	energetic, male vocals, rebellious, heavy, violence, melodic, anthemic, raw, history, rhythmic	3.71	10918	268
1999	The Serpent's Egg	Neoclassical Darkwave	sombre, medieval, mythology, spiritual, atmospheric, ethereal, mysterious, folklore, female vocals, male vocals	3.76	4195	62
2000	Seven Swans	Singer/Songwriter, Indie Folk, Chamber Folk	Christian, religious, acoustic, mellow, male vocals, melancholic, pastoral, autumn, bittersweet, soft	3.73	9325	110
2001	Solid State Survivor	Synthpop	playful, futuristic, melodic, energetic, mechanical, happy, quirky, rhythmic, repetitive, uplifting	3.75	5132	44
2002	The Gilded Palace of Sin	Country Rock	male vocals, melodic, warm, pastoral, mellow, bittersweet, love, sentimental, longing, psychedelic	3.76	3014	88
2003	The Lost Tapes	East Coast Hip Hop, Conscious Hip Hop, Hardcore Hip Hop	urban, sampling, male vocals, conscious, philosophical, introspective, crime, rhythmic, sentimental, boastful	3.76	3485	69
2004	Silent Feet	ECM Style Jazz, Jazz Fusion	lush, mellow, progressive, bittersweet, instrumental, spiritual, mysterious	3.8	523	8
2005	Angel's Egg	Canterbury Scene, Space Rock, Progressive Rock	playful, psychedelic, humorous, male vocals, sexual, ethereal, surreal, drugs, quirky, female vocals	3.76	3035	55
2006	Elegant Gypsy	Jazz Fusion	technical, instrumental, passionate, complex, warm, energetic, playful, rhythmic	3.78	2042	46
2007	Internal Affairs	East Coast Hip Hop, Boom Bap	dark, urban, crime, aggressive, male vocals, violence, infernal, nocturnal, abstract, technical	3.77	1854	47
2008	The Colours of Chloë	Chamber Jazz, Jazz Fusion, Third Stream	soothing, meditative, dense, spring, atmospheric, warm, ethereal, instrumental, complex, progressive	3.78	1552	16
2009	Sarah Vaughan	Vocal Jazz, Standards	female vocals, acoustic, melancholic, love, lonely, romantic, mellow, longing, soft, melodic	3.78	1774	32
2010	Re	Latin Alternative, Art Pop	eclectic, energetic, playful, quirky, male vocals, happy, political, melodic, folklore, warm	3.76	1569	47
2011	Lô Borges	MPB, Singer/Songwriter	male vocals, mellow, warm, psychedelic, lush, progressive	3.79	1318	25
2012	Sappukei	Post-Hardcore, J-Rock	noisy, aggressive, male vocals, chaotic, passionate, raw, energetic, dark, anxious, nihilistic	3.78	1303	6
2013	N° 4	Chanson à texte	melancholic, passionate, poetic, male vocals, love, lonely, introspective, lush, longing	3.79	857	14
2014	Orchestral Works Vol. 1	Modern Classical, Symphony	dissonant, technical, avant-garde, anxious, ominous, symphony, disturbing, orchestral, suspenseful, scary	3.81	347	3
2015	Era uma vez um homem e o seu tempo	MPB, Folk Rock	sentimental, ballad, male vocals, existential, love, poetic, serious, warm, soft, calm	3.81	333	7
2016	Sonic Adventure "Digi-Log Conversation"	Video Game Music, J-Rock	energetic, eclectic, summer, melodic, instrumental, uplifting, tropical, warm, playful	3.8	348	4
2017	Pescado 2	Psychedelic Rock, Heavy Psych	psychedelic, poetic, male vocals, warm, passionate, surreal, raw, natural, progressive, heavy	3.79	1036	22
2018	Mysterious Skin	Ambient, Film Score	ethereal, bittersweet, melancholic, atmospheric, calm, instrumental, meditative, cold, sensual	3.81	490	13
2019	Leapin' and Lopin'	Hard Bop	instrumental	3.81	445	6
2020	Verklärte Nacht; Variationen für Orchester	Romanticism, Orchestral	orchestral, instrumental, acoustic	3.79	347	3
2021	György Ligeti Edition 1: String Quartets and Duets	Modern Classical, Chamber Music	dissonant	3.8	358	1
2022	Maxinquaye	Trip Hop	sexual, dark, atmospheric, urban, introspective, female vocals, sampling, nocturnal, sensual, ominous	3.74	6925	102
2023	Plays the Music of Twin Peaks	Experimental Rock	ominous, atmospheric, dark, suspenseful, mysterious, noisy, surreal, sombre, instrumental, concept album	3.75	6452	32
2024	Black Earth	Dark Jazz	dark, sombre, ominous, nocturnal, instrumental, atmospheric, suspenseful, calm, mysterious, melancholic	3.76	4573	94
2025	Tinderbox	Post-Punk, Gothic Rock	playful, surreal, dark, atmospheric, female vocals, sombre, ominous, anxious, nocturnal, melodic	3.77	2667	45
2026	From the Choirgirl Hotel	Art Pop, Singer/Songwriter	female vocals, melancholic, sad, introspective, dark, sombre, eclectic, poetic, melodic, concept album	3.77	3055	88
2027	Кино (Чёрный альбом)	New Wave, Post-Punk	melancholic, bittersweet, male vocals, depressive, melodic, romantic, anxious, deadpan, autumn, rhythmic	3.78	1811	10
2028	qp	Contemporary Folk, Singer/Songwriter	ethereal, soothing, calm, mellow, soft, female vocals, sparse, acoustic, melancholic, warm	3.77	3503	15
2029	Cause of Death	Death Metal	death, aggressive, heavy, dark, male vocals, violence, apocalyptic, pessimistic, energetic, nocturnal	3.75	3582	53
2030	Sound Affects	Mod Revival, New Wave, Post-Punk	melodic, lonely, bittersweet, rhythmic, male vocals, energetic, political	3.76	3323	69
2031	Elvenefris	Technical Death Metal	uplifting, epic, mythology, spiritual, technical, heavy, melodic, atmospheric, passionate, ethereal	3.74	1916	69
2032	Vacation	Indie Rock, Punk Rock	passionate, summer, bittersweet, energetic, melodic, melancholic, sarcastic, alcohol, anxious, introspective	3.76	1573	18
2033	Over	Art Rock, Singer/Songwriter	depressive, poetic, breakup, male vocals, lonely, melancholic, sad, passionate, autumn, acoustic	3.77	1382	47
2034	Streets: A Rock Opera	Heavy Metal, Rock Opera	lonely, passionate, introspective, male vocals, rock opera, concept album, anxious, melodic, drugs, urban	3.75	1412	50
2035	Invisible	Progressive Rock	poetic, uncommon time signatures, complex, cryptic, male vocals, progressive, melodic, rhythmic, eclectic, abstract	3.79	1109	18
2036	Piñata Beats	Instrumental Hip Hop	repetitive, instrumental, rhythmic, sampling, lush, summer, warm, uplifting, urban, melodic	3.78	738	5
2037	Monk.	Hard Bop		3.81	551	8
2038	Rosemary's Baby	Film Score, Cinematic Classical, Modern Classical	scary, occult, satanic, lullaby, ominous, atmospheric, nocturnal, dark	3.79	679	6
2039	The Legend of Zelda: 25th Anniversary Special Orchestra CD	Video Game Music, Orchestral, Cinematic Classical	orchestral, instrumental, epic, melodic, soothing, bittersweet, passionate	3.78	511	13
2040	Multi - Dimensional: Sonic Adventure 2	Video Game Music, Hard Rock, J-Rock	eclectic, melodic, energetic, instrumental, summer, urban, playful, uplifting, epic	3.79	416	6
2041	Nelson Cavaquinho	Samba	sad, bittersweet, acoustic, breakup, calm, death, longing, pessimistic, sentimental, male vocals	3.81	335	8
2042	The Well-Tempered Clavier: Book I - Preludes and Fugues 1-8	Baroque Music	instrumental, acoustic, mechanical, melodic	3.79	327	5
2043	The Draughtsman's Contract	Film Score, Minimalism	orchestral, repetitive	3.79	363	6
2044	Préludes · Volume 2	Impressionism	acoustic, instrumental	3.81	330	2
2045	OFF	Video Game Music, Dark Ambient, Electronic	dark, lonely, mysterious, surreal, cold, instrumental, lobit, atmospheric, disturbing, ominous	3.77	321	6
2046	No Love Deep Web	Hardcore Hip Hop, Experimental Hip Hop, Abstract Hip Hop, Industrial Hip Hop	misanthropic, aggressive, anxious, nihilistic, manic, dark, cryptic, drugs, angry, violence	3.65	21344	111
2047	Jurassic Park	Film Score, Cinematic Classical	orchestral, epic, instrumental, suspenseful, mysterious, melodic	3.78	731	14
2048	Body and Soul	Vocal Jazz, Standards	female vocals, mellow, acoustic, melodic, poetic, love, bittersweet, passionate, sentimental, sensual	3.79	490	3
2049	Nowhere	Shoegaze	melancholic, noisy, male vocals, melodic, energetic, atmospheric, introspective, bittersweet, poetic, romantic	3.7	12688	169
2050	'Allelujah! Don't Bend! Ascend!	Post-Rock	instrumental, apocalyptic, atmospheric, sombre, political, noisy, dense, melancholic, epic, heavy	3.7	12641	150
2051	Autobahn	Progressive Electronic	futuristic, repetitive, hypnotic, mechanical, atmospheric, rhythmic, male vocals, progressive, minimalistic, happy	3.72	10535	176
2052	Me Against the World	West Coast Hip Hop, Conscious Hip Hop, Gangsta Rap	crime, passionate, sombre, urban, melancholic, death, introspective, anxious, serious, drugs	3.72	6575	180
2053	Bayou Country	Swamp Rock	passionate, warm, male vocals, energetic, raw, psychedelic, rhythmic, rebellious	3.76	5283	113
2054	The Jester Race	Melodic Death Metal	melodic, male vocals, heavy, passionate, energetic, fantasy, epic, poetic, aggressive, concept album	3.72	5018	106
2055	Flying Teapot	Canterbury Scene, Space Rock	playful, humorous, fantasy, drugs, male vocals, psychedelic, quirky, concept album, space, female vocals	3.76	3935	73
2056	Hole in the Heart	Death Industrial	noisy, atmospheric, lonely, cold, sad, melancholic, dense, dark, death, depressive	3.76	3556	38
2057	Watching From a Distance	Doom Metal	passionate, melancholic, longing, lonely, depressive, introspective, romantic, heavy, sad, breakup	3.74	2699	76
2058	A Little Man and a House and the Whole World Window	Progressive Rock, Art Punk, Zolo	energetic, playful, complex, technical, anxious, progressive, manic, humorous, eclectic, male vocals	3.75	2420	57
2059	From Wisdom to Hate	Technical Death Metal	technical, atonal, complex, male vocals, heavy, energetic, uncommon time signatures, philosophical, dissonant, aggressive	3.76	2394	34
2060	La planète sauvage	Film Score, Jazz-Funk, Third Stream	ominous, progressive, instrumental, psychedelic, meditative, space, surreal, atmospheric, science fiction, mysterious	3.78	1803	45
2061	Strictly Business	East Coast Hip Hop, Boom Bap	boastful, male vocals, rhythmic, urban, sampling, raw, deadpan	3.75	2656	74
2062	Hall of the Mountain Grill	Space Rock, Psychedelic Rock	space, psychedelic, science fiction, drugs, atmospheric, male vocals, progressive, rhythmic	3.77	2504	73
2063	Dynamo	Shoegaze, Alternative Rock	ethereal, atmospheric, psychedelic, male vocals, dense, warm, lush, uplifting, hypnotic, Wall of Sound	3.76	2548	34
2064	Moa Anbessa	Ethio-Jazz, Art Punk	male vocals, energetic, eclectic, rhythmic, noisy, passionate, avant-garde, heavy, warm	3.78	1384	10
2065	King of Kings	Spiritual Jazz, Afro-Jazz	ritualistic, spiritual, hypnotic, passionate, improvisation, dense, rhythmic, female vocals, tribal, male vocals	3.79	1278	5
2066	Bar Kokhba	Chamber Jazz, Jewish Music	melancholic, instrumental, chamber music, improvisation, spiritual, playful, mysterious, warm, string quartet, desert	3.78	988	12
2067	Bare Nuckle II	Video Game Music, Acid House, FM Synthesis, Acid Techno	rhythmic, instrumental, futuristic, urban, party, nocturnal, energetic, melodic, mechanical, repetitive	3.78	655	5
2068	Les espaces acoustiques	Spectralism	chamber music, orchestral, suspenseful, complex, atonal, dissonant, acoustic, instrumental, avant-garde, disturbing	3.79	666	6
2069	Somebody Loan Me a Dime	Chicago Blues, Soul Blues	sad, melancholic, urban, breakup, male vocals, rhythmic, love, sentimental, melodic, passionate	3.81	323	6
2070	Islands	Progressive Rock	complex, atmospheric, poetic, mysterious, uncommon time signatures, male vocals, mellow, progressive, pastoral, melodic	3.72	9664	191
2071	Document	Alternative Rock, Jangle Pop	male vocals, political, anthemic, energetic, melodic, bittersweet, autumn, rebellious, playful	3.73	7827	143
2072	Satori	Heavy Psych	psychedelic, heavy, male vocals, dark, anxious, apocalyptic, epic, ominous, progressive, hypnotic	3.75	4891	103
2073	Volume Two	Canterbury Scene, Psychedelic Rock, Jazz-Rock, Experimental Rock	surreal, playful, psychedelic, quirky, humorous, uncommon time signatures, avant-garde, progressive, male vocals, energetic	3.76	3633	80
2074	American Beauty	Folk Rock, Country Rock	mellow, pastoral, male vocals, warm, peaceful, melodic, poetic, bittersweet, soothing, summer	3.72	7216	208
2075	Sons of Northern Darkness	Black Metal	cold, winter, heavy, male vocals, mythology, aggressive, war, energetic, epic, melodic	3.75	3316	57
2076	Salvation	Atmospheric Sludge Metal, Post-Metal	atmospheric, melancholic, heavy, male vocals, passionate, dense, sombre, dark, epic, apocalyptic	3.75	2772	35
2077	Wildflowers	Singer/Songwriter, Heartland Rock	male vocals, acoustic, melodic, melancholic, anthemic, mellow, pastoral	3.77	2413	80
2078	Far Away From the Sun	Melodic Black Metal	melodic, cold, male vocals, nocturnal, triumphant, dark, aggressive, mysterious, epic, occult	3.75	2191	44
2079	Jazz på svenska	Jazz, Chamber Jazz	instrumental, minimalistic, melancholic, soothing, calm, sparse, folklore, acoustic, soft, melodic	3.78	1299	22
2080	Spokojnie	Post-Punk	political, passionate, existential, psychedelic, male vocals	3.78	1307	13
2081	Unity	Post-Bop	improvisation, instrumental, warm, technical, melodic, atmospheric, mysterious, energetic, mellow	3.79	1150	32
2082	Durazno sangrando	Progressive Rock	male vocals, poetic, passionate, complex, melodic, psychedelic, philosophical, abstract, existential, fantasy	3.79	1106	26
2083	L'école du micro d'argent	French Hip Hop, Boom Bap, Conscious Hip Hop	conscious, male vocals, urban, political, rhythmic, war, sampling, science fiction, passionate, sarcastic	3.76	1125	24
2084	Lance	Neo-Psychedelia, Indie Rock	spring, bittersweet, noisy, sentimental, warm, playful, psychedelic, melodic, male vocals, passionate	3.78	851	13
2085	Velvet Goldmine	Glam Rock, Film Soundtrack, Art Rock	LGBT, anthemic, rhythmic, mellow, female vocals, anxious, concept album, longing, melancholic, warm	3.8	543	14
2086	アンハッピーリフレイン (Unhappy Refrain)	Pop Rock, J-Rock	chaotic, sarcastic, melancholic, female vocals, bittersweet, passionate, energetic, noisy, self-hatred, alienation	3.78	611	9
2087	Unknown Soldier	Afrobeat	male vocals, political, rebellious, protest, rhythmic, repetitive, angry, hypnotic, death, passionate	3.81	403	6
2088	Most Things Haven't Worked Out	Electric Blues, Hill Country Blues	passionate, repetitive, male vocals, hypnotic, raw, pessimistic, lonely, love, atmospheric, rhythmic	3.8	470	10
2089	Dark Souls III	Video Game Music, Choral, Orchestral, Cinematic Classical	choral, orchestral, epic, fantasy, atmospheric, ominous, infernal, dark, apocalyptic	3.8	398	5
2090	The Cecil Taylor Unit	Free Jazz	instrumental, complex, acoustic, avant-garde, suspenseful, dissonant, chaotic, improvisation, dense	3.79	380	9
2091	Ser hümano!!	Latin Rap, Conscious Hip Hop	male vocals, sampling, drugs, sexual, introspective, boastful, conscious, party, playful, cryptic	3.79	365	4
2092	Naked Lunch	Film Score, Third Stream, Cinematic Classical, Dark Jazz	dark, ominous	3.8	352	5
2093	Fantastic Damage	Experimental Hip Hop, Abstract Hip Hop, East Coast Hip Hop	futuristic, abstract, dense, urban, raw, anxious, noisy, mechanical, male vocals, chaotic	3.75	3930	56
2094	Free Hand	Progressive Rock	complex, playful, uncommon time signatures, philosophical, quirky, technical, melodic, male vocals, medieval, progressive	3.77	2453	53
2095	Ain't That Good News	Southern Soul, Soul	passionate, optimistic, male vocals, bittersweet, lush, warm, love	3.78	1254	19
2096	Canticles of Ecstasy	Gregorian Chant	atmospheric, ethereal, female vocals, religious, Christian, spiritual, medieval, melodic, hypnotic, choral	3.79	1294	11
2097	Shuffering and Shmiling	Afrobeat	protest, energetic, rhythmic, male vocals, conscious, repetitive, playful, hypnotic, warm, passionate	3.8	848	11
2098	The Perfect Prescription	Neo-Psychedelia, Space Rock	drugs, psychedelic, hypnotic, atmospheric, repetitive, religious, ethereal, concept album, male vocals, mellow	3.74	4707	101
2099	Murmuüre	Atmospheric Black Metal, Ambient, Avant-Garde Metal	noisy, atmospheric, surreal, mysterious, occult, psychedelic, sombre, lo-fi, ritualistic, dissonant	3.74	3597	42
2100	Vikingligr veldi	Black Metal	atmospheric, male vocals, folklore, mythology, pagan, winter, dark, ominous, energetic, heavy	3.75	2661	41
2101	Shadow Kingdom	Drone, Psychedelic Folk	melancholic, ethereal, atmospheric, hypnotic, ritualistic, meditative, dense, nocturnal, psychedelic, noisy	3.76	1585	32
2102	Equal Rights	Roots Reggae	political, male vocals, conscious, sarcastic, serious, rebellious, rhythmic	3.78	1223	33
2103	Remember the Future	Progressive Rock	peaceful, epic, concept album, conscious, warm, progressive, nature, male vocals, complex, melodic	3.78	1413	57
2104	Extensions	Modal Jazz, Spiritual Jazz		3.79	610	4
2105	Bomberman Hero	Video Game Music, Atmospheric Drum and Bass, Acid Techno	futuristic, instrumental, rhythmic, energetic, mechanical, repetitive, lo-fi, eclectic, playful, hypnotic	3.78	622	6
2106	Ella Fitzgerald Sings the Rodgers and Hart Song Book	Vocal Jazz, Standards	female vocals, soft, calm, romantic	3.78	482	12
2107	Getting Ready...	Electric Texas Blues, Blues Rock	male vocals, melancholic, sad, warm, passionate, dense, lonely, heavy, breakup, longing	3.8	443	9
2108	The Leftovers: Music From the HBO® Series - Season One	Television Music, Modern Classical, Cinematic Classical	ethereal, soft, instrumental, suspenseful, melancholic, chamber music, sombre, atmospheric, lonely, mysterious	3.79	402	0
2109	Akhnaten	Opera, Post-Minimalism	history, complex, opera, epic, orchestral, ritualistic	3.79	416	9
2110	Imagine	Pop Rock, Singer/Songwriter	passionate, political, conscious, melancholic, male vocals, melodic, bittersweet, sentimental, lush, warm	3.7	9358	214
2111	Fleetwood Mac	Pop Rock	melodic, love, bittersweet, female vocals, male vocals, longing, mellow, sentimental, spring, lonely	3.74	6149	111
2112	World Coming Down	Gothic Metal, Doom Metal	death, heavy, sombre, pessimistic, male vocals, depressive, nocturnal, lethargic, lonely, melancholic	3.76	2821	48
2113	Shoot Out the Lights	Folk Rock, Singer/Songwriter	breakup, melancholic, female vocals, male vocals, pessimistic, death, poetic, bittersweet, passionate, introspective	3.76	1881	50
2114	Colors	Progressive Metal, Metalcore	technical, complex, progressive, male vocals, eclectic, heavy, passionate, energetic, cryptic, aggressive	3.67	6574	136
2115	白虎野 (Byakkoya)	Art Pop, Synthpop, Progressive Pop	orchestral, epic, complex, surreal, progressive, male vocals, choral, dense, uplifting, Wall of Sound	3.8	383	4
2116	All the Pretty Little Horses	Neofolk	poetic, melancholic, mysterious, sombre, apocalyptic, cryptic, spiritual, acoustic, passionate, male vocals	3.73	5359	65
2117	Demanufacture	Industrial Metal, Groove Metal	science fiction, heavy, anti-religious, mechanical, rhythmic, aggressive, concept album, futuristic, apocalyptic, political	3.71	3974	97
2118	Here's Little Richard	Rock & Roll, Rhythm & Blues	energetic, playful, uplifting, passionate, male vocals, raw, happy, party, rebellious, rhythmic	3.75	3334	63
2119	How to Measure a Planet?	Progressive Rock, Art Rock	peaceful, female vocals, atmospheric, introspective, warm, melodic, progressive, melancholic, mellow, meditative	3.76	1937	43
2120	Focus 3	Progressive Rock		3.77	1507	43
2121	Winter in America	Soul, Jazz-Funk, Soul Jazz	conscious, rhythmic, melancholic, political, mellow, longing, uplifting, passionate, male vocals, introspective	3.77	1424	27
2122	The Shadow Cabinet	Power Metal, Progressive Metal	triumphant, heavy, progressive, epic, energetic, male vocals, complex, technical	3.73	541	15
2123	The Sound of Music	Film Soundtrack, Show Tunes, Film Score	spring, female vocals, happy, warm, acoustic, uplifting, melodic, playful, orchestral, sentimental	3.76	529	19
2124	Play the Blues	Chicago Blues	pessimistic, playful, male vocals	3.81	298	5
2125	Beauty and the Beast	Film Soundtrack, Film Score	male vocals, instrumental, female vocals, love, suite, orchestral, fairy tale, fantasy, melodic	3.78	295	5
2126	Brave New World	Heavy Metal	male vocals, melodic, energetic, passionate, progressive, heavy, history, science fiction, philosophical, epic	3.71	7657	197
2127	In den Gärten Pharaos	Ambient	instrumental, spiritual, meditative, mysterious, tribal, hypnotic, psychedelic, ritualistic, atmospheric, ethereal	3.75	4329	52
2128	Lysol	Sludge Metal, Drone Metal	heavy, hypnotic, repetitive, male vocals, atmospheric, apocalyptic, rebellious, ominous, raw, aggressive	3.75	3788	51
2129	No New York	No Wave	noisy, raw, dissonant, misanthropic, avant-garde, rhythmic, chaotic, aggressive, urban, manic	3.75	3684	56
2130	John Barleycorn Must Die	Progressive Rock	progressive, melodic, passionate, rhythmic, melancholic, male vocals, warm, eclectic, atmospheric, love	3.76	3479	102
2131	Damn the Torpedoes	Heartland Rock	male vocals, melodic, anthemic, uplifting, love, passionate, energetic, urban, lush, romantic	3.76	3467	74
2132	Doc at the Radar Station	Experimental Rock, Art Rock	cryptic, rhythmic, playful, poetic, aggressive, male vocals, dissonant, complex, uncommon time signatures, raw	3.75	3029	68
2133	Soul on Ice	West Coast Hip Hop, Conscious Hip Hop, Boom Bap	political, hateful, urban, atmospheric, serious, cold, nocturnal, technical, dark, violence	3.76	1179	50
2134	Jacques Brel [J'arrive]	Chanson à texte	poetic, male vocals	3.79	500	7
2135	Ambient 2: The Plateaux of Mirror	Ambient	meditative, peaceful, atmospheric, instrumental, soothing, ethereal, sparse, natural, soft, calm	3.75	5848	71
2136	The Sensual World	Art Pop	sensual, female vocals, passionate, lush, romantic, melodic, atmospheric, poetic, love, nocturnal	3.75	5893	89
2137	Return to Forever	Jazz Fusion	soothing, mellow, summer, peaceful, tropical, playful, warm, female vocals, improvisation, technical	3.76	3294	56
2138	The Don Killuminati: The 7 Day Theory	West Coast Hip Hop, Gangsta Rap	crime, religious, angry, anxious, political, violence, introspective, dark, death, sentimental	3.74	3574	81
2139	Folksongs and Instrumentals With Guitar	Piedmont Blues, American Folk Music	acoustic, pastoral, female vocals, warm, melodic, raw, mellow, passionate, technical, forest	3.78	1379	19
2140	Coisas	Samba-Jazz	instrumental, rhythmic, nocturnal, longing, soft	3.79	778	19
2141	World of Echo	Ambient Pop, Avant-Folk, Experimental	mellow, avant-garde, atmospheric, sparse, psychedelic, male vocals, cryptic, introspective, soft, ethereal	3.73	5338	65
2142	N° 1 in Heaven	Synthpop, Electro-Disco	energetic, playful, futuristic, melodic, rhythmic, party, humorous, male vocals, androgynous vocals, hedonistic	3.75	3152	51
2143	Camel	Progressive Rock, Symphonic Prog	progressive, melodic, male vocals, surreal, complex, instrumental, psychedelic, epic	3.76	3292	71
2144	Doremi Fasol Latido	Space Rock	psychedelic, science fiction, space, atmospheric, anxious, energetic, male vocals, hypnotic, noisy, rhythmic	3.76	2904	79
2145	Françoise Hardy [La question]	French Pop, Chamber Folk, Chanson	romantic, lush, female vocals, mellow, melodic, melancholic, passionate, love, sensual, soft	3.76	2878	48
2146	Alien	Industrial Metal	angry, aggressive, misanthropic, heavy, dense, chaotic, technical, energetic, male vocals, mechanical	3.74	2827	64
2147	Haile I Hymn (Chapter 1)	Roots Reggae	spiritual, religious, warm, melodic, peaceful, male vocals, passionate, ethereal, lush	3.79	556	21
2148	Cookin' With the Miles Davis Quintet	Hard Bop	instrumental, acoustic, technical, nocturnal, passionate, warm, energetic, melancholic, rhythmic, uplifting	3.76	3008	34
2149	Secret South	Gothic Country, Alt-Country	religious, male vocals, passionate, pastoral, pessimistic, atmospheric, Christian, dark, anxious, melancholic	3.76	2356	34
2150	Phantom Thread	Film Score, Modern Classical	romantic, calm, warm, instrumental, atmospheric, melancholic, acoustic, polyphonic, soothing, lush	3.77	2355	20
2151	Music of India: Three Classical Rāgas	Hindustani Classical Music	instrumental, hypnotic, meditative, passionate, spiritual, warm, acoustic, improvisation, mellow, peaceful	3.78	1807	22
2152	This Is Our Music	Avant-Garde Jazz	technical, instrumental, improvisation, energetic, avant-garde, acoustic, playful, rhythmic	3.77	1779	32
2153	Kulu Sé Mama	Free Jazz, Spiritual Jazz	spiritual, improvisation, avant-garde, ritualistic, rhythmic, dense, complex, dissonant, manic	3.77	1722	19
2154	Disposable Arts	East Coast Hip Hop, Boom Bap	concept album, urban, conscious, rhythmic, male vocals, sexual, sampling, violence, skit, boastful	3.76	1391	23
2155	The Real Folk Blues	Electric Blues		3.8	332	4
2156	A Hard Day's Night	Merseybeat, Pop Rock	love, romantic, melodic, male vocals, energetic, happy, uplifting, bittersweet, lonely, breakup	3.65	20388	462
2157	Aftermath	Blues Rock, Rock	energetic, rebellious, male vocals, melodic, anxious, romantic, bittersweet, lush	3.72	8973	218
2158	The Epic	Spiritual Jazz	epic, uplifting, spiritual, meditative, lush, progressive, melodic, concept album, optimistic, playful	3.73	6825	99
2159	Among the Living	Thrash Metal	energetic, rhythmic, male vocals, aggressive, political, heavy, melodic, angry, rebellious, conscious	3.72	6814	165
2160	From Here We Go Sublime	Minimal Techno, Tech House	repetitive, hypnotic, sampling, atmospheric, lush, minimalistic, instrumental, rhythmic, ethereal, soothing	3.74	5890	82
2161	The Basement Tapes	Roots Rock, Folk Rock	raw, playful, male vocals, surreal, folklore, pastoral, humorous	3.74	4638	123
2162	Autumn Aurora	Atmospheric Black Metal, Pagan Black Metal	autumn, nature, pagan, atmospheric, forest, hypnotic, repetitive, sombre, male vocals, rain	3.74	4128	48
2163	Behaviour	Synthpop	melancholic, lonely, male vocals, sarcastic, sombre, introspective, poetic, atmospheric, lush, melodic	3.75	3699	87
2164	Far Cry	Post-Bop	instrumental, calm, complex, soft, warm, melodic, mellow, passionate, improvisation	3.78	1270	17
2165	Du & jag döden	Alternative Rock, Pop Rock	melancholic, death, cold, melodic, dark, male vocals, winter	3.77	1226	19
2166	Siembra	Salsa dura	conscious, rhythmic, passionate, energetic, melodic, male vocals, warm, political, urban, tropical	3.79	951	25
2167	Time and Place	Deep Soul, Southern Soul	passionate, male vocals, love, sentimental, melodic, warm, repetitive	3.79	812	14
2168	The Quest	Modal Jazz	instrumental	3.79	698	13
2169	Sonny Clark Trio	Hard Bop	instrumental, acoustic	3.8	426	4
2170	Concierto de Aranjuez	Modern Classical, Spanish Classical Music, Concerto, Impressionism, Neoclassicism	concerto, melodic, passionate, instrumental, uplifting, pastoral, spring	3.79	316	3
2171	Symphonie fantastique	Romanticism, Symphony	passionate, symphony, melancholic, epic, complex, longing, playful, anxious, suspenseful, psychedelic	3.8	317	5
2172	We Cool?	Pop Punk, Power Pop, Indie Rock	anxious, alcohol, introspective, energetic, depressive, bittersweet, pessimistic, male vocals, melodic, self-hatred	3.74	4357	23
2173	undun	East Coast Hip Hop, Conscious Hip Hop	concept album, crime, melancholic, philosophical, male vocals, death, existential, introspective, ..., atmospheric	3.74	4441	69
2174	Vauxhall and I	Indie Pop, Pop Rock	melancholic, warm, lonely, introspective, sarcastic, mellow, pessimistic, passionate, melodic, poetic	3.74	4184	81
2175	Muswell Hillbillies	Country Rock, Pop Rock, Roots Rock, Blues Rock	bittersweet, playful, humorous, male vocals, sarcastic, melodic, conscious, concept album, alienation, alcohol	3.75	3147	110
2176	Brothers and Sisters	Southern Rock	male vocals, uplifting, melodic, energetic	3.77	2683	74
2177	The Low Spark of High Heeled Boys	Progressive Rock	mellow, eclectic, passionate, melodic, male vocals, nature	3.77	2169	66
2178	Valentyne Suite	Progressive Rock	male vocals, psychedelic, progressive, epic, playful, warm	3.76	2064	47
2179	Judee Sill	Chamber Folk, Singer/Songwriter	female vocals, bittersweet, religious, Christian, melodic, poetic, pastoral, acoustic, romantic, spiritual	3.77	1992	48
2180	Yèkatit: Ethio Jazz	Ethio-Jazz	melodic, instrumental, mellow, psychedelic, mysterious, repetitive, hypnotic	3.8	504	5
2181	W strefie jarania i w strefie rymowania	Boom Bap	male vocals, sampling, warm, urban, rhythmic, playful, summer, drugs, humorous	3.78	543	6
2182	Goldfinger	Film Score, Cinematic Classical		3.79	345	6
2183	10,000 Days	Alternative Metal, Progressive Rock, Progressive Metal	uncommon time signatures, philosophical, progressive, complex, male vocals, heavy, existential, drugs, spiritual, atmospheric	3.65	14792	362
2184	No Now	Glitch Pop, Alternative R&B	manic, dense, futuristic, melodic, cryptic, psychedelic, chaotic, surreal, male vocals, noisy	3.72	5941	55
2185	Here Are The Sonics!!!	Garage Rock, Proto-Punk	energetic, raw, male vocals, manic, playful, rebellious, lo-fi, hedonistic, noisy, rhythmic	3.74	5259	131
2186	Blue Valentine	Singer/Songwriter, Piano Blues	urban, poetic, male vocals, nocturnal, sad, melancholic, alienation, introspective, atmospheric, romantic	3.75	5191	85
2187	Brother, Sister	Indie Rock, Post-Hardcore	religious, poetic, introspective, passionate, male vocals, philosophical, spiritual, existential, melancholic, energetic	3.74	2951	42
2188	Written in Waters	Avant-Garde Metal, Progressive Metal	avant-garde, surreal, dissonant, uncommon time signatures, cryptic, ominous, progressive, male vocals, complex, atmospheric	3.73	2791	50
2189	Legion	Death Metal	satanic, aggressive, anti-religious, infernal, heavy, technical, male vocals, rhythmic, energetic, manic	3.74	2882	66
2190	The Social Network	Film Score, Electronic, Ambient	anxious, atmospheric, instrumental, sombre, cold, suspenseful, nocturnal, dark, melancholic, mysterious	3.76	2605	29
2191	Walk Away Renée / Pretty Ballerina	Baroque Pop, Psychedelic Pop	melodic, lush, male vocals, romantic, bittersweet, poetic, melancholic, warm, spring, orchestral	3.77	1930	60
2192	White Light	Singer/Songwriter, Country Rock	introspective, mellow, melancholic, male vocals, warm, melodic, cryptic, bittersweet, pastoral	3.76	1634	54
2193	Tempo of the Damned	Thrash Metal	aggressive, rhythmic, male vocals, hateful, vulgar, violence, energetic, heavy, anti-religious, melodic	3.75	2088	65
2194	The Yellow Princess	American Primitivism	instrumental, passionate, pastoral, technical, melodic, meditative, acoustic, hypnotic, protest, surreal	3.77	1759	22
2195	Berry Is on Top	Rock & Roll	male vocals, rhythmic, playful, passionate, energetic	3.77	1319	37
2196	Jimmy Carter Syndrome	Gothic Country	violence, ominous, serious, anxious, poetic, vulgar, dark, disturbing, pastoral, cryptic	3.78	978	8
2197	The Marriage of Heaven and Hell: Part One	Heavy Metal, Power Metal, US Power Metal	mythology, melodic, epic, fantasy, male vocals, romantic, passionate, introspective, energetic, concept album	3.74	784	19
2198	Tristeza on Guitar	Samba-choro	instrumental, acoustic, melodic, summer, mellow, bittersweet, melancholic, eclectic, warm, technique	3.8	627	4
2199	The Witcher 3: Wild Hunt	Video Game Music, Cinematic Classical	epic, medieval, orchestral, fantasy, instrumental	3.78	579	4
2200	Solaris, The Mirror, Stalker: Music From Motion Pictures	Ambient, Film Score, Electronic	meditative, aquatic, philosophical, disturbing, spiritual, space, alienation, religious, death, science fiction	3.77	495	6
2201	ドラム (Drum)	Avant-Folk	acoustic, male vocals, pastoral, lonely, peaceful, technical, bittersweet, mysterious, nature, poetic	3.79	490	5
2202	Show No Mercy	Thrash Metal, Speed Metal	satanic, energetic, death, aggressive, infernal, male vocals, occult, dark, heavy, angry	3.71	7747	173
2203	Rubycon	Berlin School	atmospheric, meditative, instrumental, aquatic, space, nocturnal, suspenseful, repetitive, mysterious, hypnotic	3.75	4482	66
2204	Above	Alternative Rock, Grunge	male vocals, sombre, depressive, lonely, introspective, dark, drugs, melodic, melancholic, autumn	3.75	3754	84
2205	Orbital [Brown Album]	Techno	hypnotic, energetic, psychedelic, rhythmic, futuristic, repetitive, atmospheric, uplifting, mechanical, instrumental	3.75	3490	57
2206	Si monvmentvm reqvires, circvmspice	Black Metal	satanic, infernal, concept album, dissonant, philosophical, dense, ominous, dark, religious, heavy	3.73	3649	53
2207	The Sham Mirrors	Progressive Metal, Symphonic Metal, Avant-Garde Metal	futuristic, surreal, science fiction, philosophical, space, complex, atmospheric, mysterious, cold, male vocals	3.69	3972	80
2208	Three Friends	Progressive Rock	uncommon time signatures, playful, progressive, concept album, eclectic, complex, technical, male vocals, quirky, melodic	3.76	2785	71
2339	Spectrum	Jazz Fusion, Jazz-Rock	energetic, instrumental, technical, playful, rhythmic, warm, uplifting	3.76	2340	56
2209	Mabool: The Story of the Three Sons of Seven	Progressive Metal, Folk Metal	melodic, epic, progressive, spiritual, concept album, mythology, triumphant, male vocals, desert, ...	3.72	2388	70
2210	Hamburger Concerto	Symphonic Prog, Progressive Rock	playful, improvisation, melodic, uplifting, epic, male vocals, progressive	3.76	1326	47
2211	Hark! The Village Wait	British Folk Rock	female vocals, pastoral, folklore, progressive, ballad, male vocals, melodic, medieval, uncommon time signatures, bittersweet	3.78	933	28
2212	I Am the Blues	Chicago Blues	male vocals, sexual, hypnotic	3.78	826	31
2213	'Frisco Mabel Joy	Progressive Country, Singer/Songwriter	sad, pastoral, melancholic, male vocals, bittersweet, sentimental, introspective, soft, longing, breakup	3.77	512	17
2214	Bossanova	Alternative Rock, Indie Rock	energetic, anxious, noisy, male vocals, melodic, science fiction, warm, summer, quirky, playful	3.7	12271	196
2215	The Who Sell Out	Freakbeat, Mod, Pop Rock	humorous, concept album, satirical, playful, jingle, male vocals, quirky, melodic, energetic, psychedelic	3.71	8063	234
2216	Walk Among Us	Horror Punk, Hardcore Punk	energetic, rebellious, dark, raw, anthemic, melodic, violence, playful, paranormal, male vocals	3.73	6083	108
2217	Fantasma	Shibuya-kei, Indietronica, Neo-Psychedelia	eclectic, playful, happy, energetic, psychedelic, summer, sampling, male vocals, quirky, melodic	3.73	5719	70
2218	One of Us Is the Killer	Mathcore	uncommon time signatures, chaotic, energetic, technical, aggressive, angry, complex, male vocals, manic, heavy	3.73	4064	33
2219	New Ancient Strings	Mande Music	calm, instrumental, meditative, peaceful, acoustic, melodic, warm, soothing, spiritual, mellow	3.78	1358	13
2220	In Step	Blues Rock, Electric Texas Blues	male vocals, passionate	3.77	1407	42
2221	Los peores 7 km de mi vida	Screamo, Post-Rock	passionate, noisy, aggressive, raw, lo-fi, male vocals, chaotic, atmospheric, heavy, depressive	3.75	1259	16
2222	Кровоизлияние	Technical Thrash Metal	complex, uncommon time signatures, energetic, technical, aggressive, male vocals, angry, heavy, political	3.76	1156	18
2223	Satta Masa Gana	Roots Reggae	passionate, mellow, conscious, religious, male vocals, tropical, warm, vocal group, spiritual, serious	3.78	1077	31
2224	Runaway Slave	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	rhythmic, urban, boastful, energetic, male vocals, sampling, mysterious, playful, conscious, technical	3.76	980	24
2225	Alice in Hell	Thrash Metal, Technical Thrash Metal	energetic, technical, aggressive, male vocals, complex, heavy, melodic, dark, nocturnal, violence	3.74	3533	89
2226	Angel Witch	NWOBHM, Heavy Metal	fantasy, male vocals, energetic, occult, passionate, dark, melodic	3.76	2656	83
2227	Restless and Wild	Heavy Metal	heavy, aggressive, male vocals, manic, rebellious, melodic, energetic, anthemic	3.75	2616	81
2228	Inventions for Electric Guitar	Progressive Electronic, Krautrock	futuristic, psychedelic, hypnotic, instrumental, repetitive, meditative, atmospheric, peaceful, ethereal, soothing	3.77	1913	33
2229	Ëmëhntëhtt-Ré	Zeuhl, Jazz-Rock	dark, ominous, mysterious, science fiction, spiritual, religious, epic, progressive, passionate, ritualistic	3.74	1069	29
2230	Nightingales & Bombers	Progressive Rock	progressive, male vocals, nocturnal	3.78	873	32
2231	Such Sweet Thunder	Big Band	playful, instrumental, nocturnal, warm, passionate, romantic, soothing, concept album, melancholic, technical	3.79	812	17
2232	Invictus	Power Metal, Heavy Metal, US Power Metal	triumphant, epic, rock opera, male vocals, melodic, mythology, heavy, energetic, fantasy, history	3.73	809	23
2233	Vol. 3	Blues Rock, Hard Rock	heavy, urban, rebellious, male vocals, energetic	3.79	496	19
2234	Complete Orchestral Works	Stochastic Music, Orchestral	avant-garde, dissonant, ominous, suspenseful, complex, orchestral, infernal, dense, atmospheric, instrumental	3.78	380	9
2235	Aus den sieben Tagen	Indeterminacy	cryptic, avant-garde, mysterious, atonal, dissonant, aleatory, spiritual, meditative, sparse, improvisation	3.75	402	9
2236	Miami	Punk Blues, Post-Punk	desert, hedonistic, melodic, passionate, energetic, male vocals, warm, summer, atmospheric, dark	3.75	3186	62
2237	Volcanic Rock	Heavy Psych, Hard Rock, Heavy Metal	energetic, heavy, epic, male vocals, psychedelic, raw, sexual, rebellious, warm, dense	3.76	1481	61
2238	Прыг-скок: Детские песенки	Post-Punk, Psychedelic Rock	lo-fi, surreal, folklore, ritualistic, cryptic, melancholic, poetic, philosophical, death, raw	3.76	1011	12
2239	Por este rio acima	Portuguese Folk Music, Progressive Folk	history, male vocals, energetic, patriotic, acoustic, playful, melodic, happy	3.78	540	12
2240	Dumpmeister	East Coast Hip Hop, Abstract Hip Hop, Hardcore Hip Hop	lo-fi, cryptic, crime, rhythmic, surreal, raw, sampling, nocturnal, abstract, urban	3.78	361	3
2241	Unfinished Masterpiece	Salsa dura, Descarga	energetic, male vocals, improvisation, urban, progressive, passionate, bittersweet, soothing, uncommon time signatures, tropical	3.81	284	6
2242	Dirty	Noise Rock, Alternative Rock	noisy, dissonant, female vocals, male vocals, apathetic, angry, heavy, sexual, urban, energetic	3.7	11402	190
2243	Houdini	Sludge Metal	heavy, aggressive, sarcastic, cryptic, male vocals, raw, humorous, angry, rebellious, abstract	3.72	8186	99
2244	Go for Your Guns	Funk, Soul	warm, rhythmic, nocturnal, male vocals, melodic, sensual, sentimental, playful, love, lush	3.78	695	15
2245	Dubnobasswithmyheadman	Techno, Progressive House	repetitive, male vocals, atmospheric, nocturnal, sexual, futuristic, rhythmic, hypnotic, urban, energetic	3.74	4456	67
2246	Warrior on the Edge of Time	Space Rock, Psychedelic Rock	psychedelic, space, fantasy, science fiction, epic, energetic, male vocals, warm, atmospheric, repetitive	3.76	2292	69
2247	The Ghost~Pop Tape	Alternative R&B, Ambient Pop, Art Pop, Electronic	lo-fi, ethereal, atmospheric, nocturnal, sexual, melancholic, lonely, melodic, dark, sampling	3.73	2429	26
2248	The Rotters' Club	Canterbury Scene, Jazz-Rock, Progressive Rock	playful, mellow, technical, complex, melodic, uncommon time signatures, psychedelic, quirky, atmospheric, male vocals	3.76	1938	53
2249	Tons of Sobs	Blues Rock	passionate, raw, male vocals, rhythmic, sexual	3.77	1444	52
2250	Port Royal	Heavy Metal, Power Metal	energetic, male vocals, history, anthemic, crime, heavy, epic, uplifting, rebellious, aquatic	3.75	1314	17
2251	Slaughtersun (Crown of the Triarchy)	Melodic Black Metal	melodic, atmospheric, triumphant, apocalyptic, dark, death, heavy, male vocals, epic, raw	3.76	1204	12
2252	Farseeing the Paranormal Abysm	Death Metal	atmospheric, epic, melodic, ominous, apocalyptic, complex, progressive, triumphant, occult, male vocals	3.75	1020	25
2253	The Big Beat	Hard Bop	instrumental, acoustic, improvisation, warm, passionate, energetic	3.78	808	8
2254	Sometimes I Wish We Were an Eagle	Singer/Songwriter, Alt-Country	poetic, male vocals, lush, soothing, melancholic, mellow, nature, deadpan, calm, introspective	3.74	3598	59
2255	1990	Singer/Songwriter	lonely, Christian, lo-fi, depressive, sad, religious, sombre, anxious, male vocals, alienation	3.74	3839	45
2256	Any Other City	Indie Rock	female vocals, playful, passionate, melancholic, energetic, anxious, bittersweet, romantic, poetic, repetitive	3.74	3263	47
2257	The Gallery	Melodic Death Metal	male vocals, complex, melodic, poetic, melancholic, energetic, serious, apocalyptic, heavy, progressive	3.72	3362	70
2258	Bad Timing	American Primitivism	instrumental, acoustic, autumn, pastoral, mellow, technical, lush, meditative, hypnotic, repetitive	3.77	2553	23
2259	MetaL MetaL	Vanguarda paulista, Afoxé	religious, rhythmic, chaotic, female vocals, uplifting, spiritual, male vocals, energetic, tropical, playful	3.77	1657	12
2260	Taking Over	Thrash Metal	energetic, male vocals, anthemic, heavy, aggressive, violence	3.75	1821	53
2261	Cantigas do Maio	Música de intervenção, Contemporary Folk, Singer/Songwriter	poetic, political, melancholic, conscious, minimalistic, acoustic, male vocals	3.77	758	16
2262	Pretty Hate Machine	Industrial Rock, Electro-Industrial	mechanical, angry, dark, male vocals, anxious, passionate, sexual, pessimistic, self-hatred, rhythmic	3.68	13714	250
2263	Return to Heaven Denied	Power Metal	melodic, energetic, male vocals, nocturnal, heavy, epic, progressive, technical	3.75	699	15
2264	Adoniran Barbosa	Samba-choro, Samba	urban, bittersweet, humorous, conscious, tropical, melodic, male vocals, soothing, calm	3.79	520	5
2265	R Plus Seven	Progressive Electronic	atmospheric, futuristic, surreal, ethereal, progressive, mysterious, instrumental, spiritual, sampling, sparse	3.71	9927	55
2266	Monster Movie	Krautrock, Psychedelic Rock	repetitive, hypnotic, rhythmic, psychedelic, male vocals, energetic, cryptic, raw, improvisation, progressive	3.71	9001	167
2267	Slide	Chillwave, Synthpop, Hypnagogic Pop	atmospheric, passionate, melodic, psychedelic, male vocals, mellow, hypnotic, love, warm, dense	3.73	5947	39
2268	You're Not Alone	Blues Rock, Electric Blues, Space Rock	melancholic, male vocals, energetic, sombre	3.78	320	12
2269	Sheer Heart Attack	Hard Rock, Glam Rock	energetic, melodic, male vocals, eclectic, playful, epic, passionate, uplifting	3.7	8576	232
2270	Weighing Souls With Sand	Drone Metal, Shoegaze, Post-Metal	atmospheric, depressive, dense, heavy, noisy, apocalyptic, epic, melancholic, sombre, anxious	3.71	4982	83
2271	Stranded	Glam Rock, Art Rock	warm, lush, male vocals, sensual, passionate, eclectic, romantic, uplifting, melodic, poetic	3.75	3658	98
2272	Lick My Decals Off, Baby	Experimental Rock	playful, uncommon time signatures, avant-garde, humorous, complex, surreal, male vocals, abstract, poetic, manic	3.74	4119	109
2273	ワールドイズユアーズ (World Is Yours)	Post-Hardcore, J-Rock, Alternative Rock	energetic, female vocals, bittersweet, uplifting, raw, melodic, noisy, anthemic, rhythmic	3.74	3592	13
2274	If I Could Only Remember My Name	Folk Rock, Singer/Songwriter	psychedelic, ethereal, warm, bittersweet, male vocals, lush, autumn, peaceful, introspective, longing	3.75	2976	102
2275	Every Picture Tells a Story	Roots Rock, Pop Rock	male vocals, passionate, sentimental, raw, warm, energetic, rhythmic	3.73	2877	102
2276	Basket of Light	British Folk Rock, Folk Baroque	female vocals, sentimental, acoustic, longing, uplifting, male vocals, spring, folklore, pastoral, melodic	3.76	2220	54
2277	Curtains	Chamber Pop	romantic, lush, longing, bittersweet, melancholic, male vocals, sensual, sombre, sexual, lonely	3.76	1924	32
2278	01010101	Screamo	angry, melancholic, passionate, aggressive, anxious, male vocals, raw, dark, noisy, progressive	3.76	1589	21
2279	Hanging Gardens	Avant-Garde Jazz	hypnotic, minimalistic, repetitive, rhythmic, instrumental, improvisation, technical, meditative, psychedelic, atmospheric	3.77	1384	15
2280	Page One	Hard Bop	instrumental, improvisation, acoustic, melodic, playful	3.78	1250	22
2281	輪廻交響楽 (Ecophony Rinne)	Tribal Ambient, New Age	tribal, atmospheric, meditative, hypnotic, ominous, suspenseful, ritualistic, spiritual, choral, nocturnal	3.77	1207	9
2282	Decoration Day	Southern Rock, Country Rock	male vocals, introspective, melancholic, romantic, suicide, alienation, sombre, bittersweet, history, pastoral	3.76	1127	29
2283	Światła miasta	Conscious Hip Hop	urban, melancholic, sampling, nocturnal, atmospheric, introspective, poetic, Christian, rhythmic, philosophical	3.77	891	3
2284	Fish Rising	Space Rock, Canterbury Scene, Progressive Rock	progressive, ethereal, psychedelic, hypnotic, energetic, summer, male vocals	3.76	1415	51
2285	Enigmatic	Progressive Rock	poetic, eclectic, passionate, progressive, male vocals, epic, psychedelic, love, complex, death	3.76	1273	40
2286	The Yellow Album	Television Music, Musical Comedy, Children's Music, Pop, Rock	children's music, humorous, aquatic, eclectic, playful, happy, tropical, male vocals, quirky, novelty	3.74	741	12
2287	Symbiosis	Third Stream, Post-Bop	complex, passionate, improvisation, instrumental, nocturnal	3.79	568	5
2288	Actos inexplicables	Singer/Songwriter, Folk Rock	breakup, existential, melancholic, pessimistic, male vocals, death, poetic, alcohol	3.78	575	7
2289	Power to the People	Post-Bop	instrumental, lush, mellow	3.79	479	11
2290	Solta o pavão	Samba-rock, MPB	energetic, male vocals, Christian, philosophical, uplifting, spiritual, summer, love, passionate, lush	3.79	491	6
2291	Images and Words	Progressive Metal	uncommon time signatures, technical, complex, progressive, male vocals, melodic, epic, philosophical, passionate, uplifting	3.64	10960	354
2292	Vs.	Post-Punk	anxious, noisy, angry, raw, male vocals, aggressive, chaotic, energetic, cryptic, rebellious	3.73	5573	81
2293	The Wonderful and Frightening World of The Fall	Post-Punk	cryptic, surreal, sarcastic, satirical, male vocals, repetitive, psychedelic, raw, playful, quirky	3.76	2555	51
2294	Timewind	Berlin School, Progressive Electronic	space, ethereal, futuristic, atmospheric, instrumental, meditative, calm, melancholic, nocturnal, hypnotic	3.76	2290	37
2340	Strong Arm of the Law	NWOBHM, Heavy Metal	energetic, male vocals, anthemic, passionate, melodic, aggressive	3.75	1888	33
2295	Accelerated Evolution	Progressive Metal	passionate, energetic, melodic, male vocals, progressive, Wall of Sound, introspective, uplifting, epic, atmospheric	3.74	2315	52
2296	Tales of Creation	Doom Metal, Epic Doom Metal, Traditional Doom Metal	male vocals, sombre, dark, heavy, lonely, epic, ominous, fantasy, uplifting	3.76	1866	27
2297	Come to My Garden	Smooth Soul, Pop Soul	lush, passionate, female vocals, romantic, love, soft, uplifting, melodic, rain, longing	3.77	1614	25
2298	India's Master Musician	Hindustani Classical Music	acoustic, instrumental, hypnotic, spiritual, meditative, warm, mellow, rhythmic, technical, improvisation	3.79	613	5
2299	Bad News Is Coming	Chicago Blues	pessimistic, urban, warm, male vocals, energetic, passionate, summer	3.8	323	5
2300	Die Lit	Trap, Cloud Rap, Southern Hip Hop	repetitive, hypnotic, male vocals, boastful, drugs, sexual, hedonistic, rhythmic, ethereal, party	3.63	17030	185
2301	The Way of All Flesh	Progressive Metal, Death Metal	conscious, heavy, atmospheric, serious, nature, angry, technical, male vocals, progressive, death	3.71	4866	61
2302	Good	Jazz-Rock, Alternative Rock	sexual, male vocals, soothing, atmospheric, dark, warm, deadpan, urban, minimalistic, death	3.74	4183	48
2303	The Marshall Mathers LP	Hardcore Hip Hop	vulgar, misanthropic, hateful, sarcastic, humorous, violence, drugs, angry, crime, aggressive	3.65	16794	312
2304	To See the Next Part of the Dream	Shoegaze, Emo	melancholic, noisy, raw, male vocals, introspective, self-hatred, alienation, atmospheric, depressive, concept album	3.7	9622	124
2305	Unsilent Death	Grindcore, Powerviolence	aggressive, chaotic, heavy, misanthropic, angry, male vocals, nihilistic, violence, rhythmic, energetic	3.72	6113	51
2306	Dry	Alternative Rock, Singer/Songwriter	raw, passionate, sexual, female vocals, energetic, angry, uncommon time signatures, noisy, sensual, rhythmic	3.73	6230	101
2307	Wheels of Fire	Blues Rock, Psychedelic Rock	male vocals, energetic, psychedelic, heavy, melodic, playful, raw	3.73	5580	133
2308	Everything Must Go	Alternative Rock, Britpop	melodic, male vocals, energetic, melancholic, poetic, bittersweet, passionate, anthemic, triumphant	3.74	4054	114
2309	Get Happy!!	Pop Rock, New Wave	melodic, male vocals, energetic	3.75	3191	109
2310	Portal of I	Progressive Metal	melodic, epic, fantasy, dense, male vocals, progressive, lush, sombre, technical, death	3.7	2933	81
2311	The Erosion of Sanity	Technical Death Metal, Death Metal	complex, technical, chaotic, heavy, aggressive, energetic, male vocals, dense, ominous, apocalyptic	3.74	2800	42
2312	Fresh	Funk, Psychedelic Soul, Soul	rhythmic, male vocals, female vocals, political, soothing, playful, melodic, mellow, love, lush	3.76	2428	60
2313	Night Beat	Southern Soul, Soul	warm, male vocals, nocturnal, mellow, romantic, passionate, melodic	3.76	2025	54
2314	Jordan: The Comeback	Sophisti-Pop, Art Pop	romantic, lush, melancholic, poetic, mellow, introspective, urban, melodic, bittersweet, Christian	3.76	1842	46
2315	Cricklewood Green	Blues Rock, Psychedelic Rock, Hard Rock	political, psychedelic, melodic, male vocals	3.76	1318	46
2316	Steal This Album	Political Hip Hop, West Coast Hip Hop, Conscious Hip Hop, Hardcore Hip Hop	political, satirical, humorous, conscious, rhythmic, playful, male vocals, protest	3.75	1262	31
2317	Old No. 1	Outlaw Country, Singer/Songwriter, Progressive Country	melodic, passionate, male vocals, bittersweet, romantic, pastoral, acoustic	3.75	953	19
2318	Batman Returns	Film Score, Cinematic Classical	instrumental, dark, suspenseful, cold, winter, ominous, nocturnal, mysterious	3.78	339	6
2319	Last Sessions	Piedmont Blues, Delta Blues		3.79	295	5
2320	Songs About Fucking	Noise Rock, Post-Hardcore	misanthropic, noisy, angry, aggressive, sexual, raw, male vocals, energetic, rebellious, mechanical	3.69	11814	150
2321	Legenda	Hardcore Punk	aggressive, dark, energetic, heavy, raw, male vocals, religious, history, progressive	3.75	1084	13
2322	The Geto Boys	Southern Hip Hop, Gangsta Rap, Horrorcore	crime, vulgar, violence, aggressive, male vocals, rebellious, humorous, energetic, sexual, sampling	3.76	1077	13
2323	Happy Bivouac	Power Pop, Alternative Rock, J-Rock	energetic, playful, summer, male vocals, noisy, bittersweet, anthemic	3.75	1104	4
2324	The Listening	Southern Hip Hop, Conscious Hip Hop, Boom Bap	male vocals, concept album, sampling, warm, summer, love, conscious, rhythmic, urban, boastful	3.75	1023	28
2325	Anime salve	Canzone d'autore, Singer/Songwriter	male vocals, dark, melancholic, philosophical, vulgar, poetic, atmospheric, pastoral, playful	3.76	840	12
2326	Triadic Memories	Modern Classical	sombre, dark, hypnotic, instrumental, surreal, sparse, atonal, depressive, avant-garde	3.77	719	9
2327	The Piano	Modern Classical, Film Score	melancholic, atmospheric, orchestral, instrumental	3.78	694	12
2328	Espelho cristalino	Progressive Folk, MPB	progressive, male vocals, existential, rhythmic, melodic, poetic, passionate, folklore, dense, quirky	3.78	565	4
2329	Gently Disturbed	Jazz, Post-Bop, Chamber Jazz	technical, instrumental	3.78	465	11
2330	Cantata de Santa María de Iquique	Nueva canción latinoamericana, Poetry	political, history, concept album, male vocals, poetic, anxious, sombre, monologue, passionate, death	3.78	337	1
2331	Halloween III: Season of the Witch	Film Score, Horror Synth	suspenseful, ominous, Halloween, atmospheric, instrumental	3.8	300	6
2332	There Existed an Addiction to Blood	Industrial Hip Hop, Horrorcore	scary, crime, noisy, disturbing, violence, nocturnal, paranormal, male vocals, vulgar, atmospheric	3.7	9993	79
2333	Born in the U.S.A.	Pop Rock, Heartland Rock	passionate, energetic, anthemic, male vocals, melodic, bittersweet, political, conscious, urban, summer	3.7	8501	185
2334	cLOUDDEAD	Experimental Hip Hop, Abstract Hip Hop	surreal, atmospheric, cryptic, ethereal, mysterious, sampling, abstract, lo-fi, male vocals, psychedelic	3.7	6110	106
2335	Sin After Sin	Heavy Metal	male vocals, energetic, heavy, melodic, melancholic, introspective, anthemic, sad, progressive, dark	3.74	4858	109
2336	Dub Housing	Post-Punk, Experimental Rock, Art Punk	anxious, energetic, dissonant, urban, male vocals, repetitive, sarcastic, surreal, abstract, alienation	3.73	4421	82
2337	Liar	Noise Rock, Post-Hardcore	energetic, aggressive, noisy, rhythmic, anxious, raw, dissonant, rebellious, nihilistic, angry	3.74	3864	47
2338	Undercurrent	Cool Jazz	soft, calm, peaceful, instrumental, soothing, mellow, passionate, lush, romantic, sparse	3.76	2409	43
2342	Rain Upon the Impure	Atmospheric Black Metal	dark, atmospheric, heavy, male vocals, sombre, ominous, mysterious, dense, lo-fi, nocturnal	3.74	1721	33
2343	Hyper Light Drifter	Ambient, Video Game Music, Electronic	atmospheric, instrumental, mellow, ethereal, melancholic, lonely, mysterious, warm, sombre, apocalyptic	3.78	601	5
2344	Realization	Jazz Fusion	improvisation, instrumental, avant-garde, surreal	3.81	260	9
2345	A Ghost Is Born	Alternative Rock	male vocals, bittersweet, melancholic, eclectic, mellow, dissonant, playful, love, lush	3.73	6540	171
2346	Avalon	Sophisti-Pop, New Romantic, Pop Rock	romantic, male vocals, lush, sensual, melancholic, atmospheric, ethereal, mellow, melodic, soothing	3.73	5364	167
2347	Lesser Matters	Dream Pop, Indie Pop	melancholic, soothing, lo-fi, warm, melodic, lonely, autumn, mellow, bittersweet, love	3.74	4340	54
2348	Tupelo Honey	Folk Rock, Singer/Songwriter	pastoral, longing, acoustic, sentimental, male vocals, love, passionate, soft, lush, romantic	3.76	2505	75
2349	Dawn of Possession	Death Metal	infernal, dark, death, misanthropic, heavy, anti-religious, pessimistic, male vocals, angry, hateful	3.75	2443	28
2350	Blues in Orbit	Big Band	acoustic, playful, instrumental, improvisation, meditative, mysterious, melodic, nocturnal, warm	3.79	567	6
2351	Halfbreed	Blues Rock		3.78	494	14
2352	Aurora	Art Pop, Ambient Pop	lush, peaceful, uplifting, spiritual, abstract, ethereal, cryptic, anthemic, hypnotic, poetic	3.79	432	2
2353	Caligula	Neoclassical Darkwave, Death Industrial	hateful, female vocals, angry, noisy, violence, disturbing, death, scary, depressive, ominous	3.69	8624	89
2354	1184	Melodic Black Metal	male vocals, triumphant, pagan, melodic, medieval, melancholic, folklore, cold, mythology, energetic	3.74	2170	23
2355	Lurker of Chalice	Atmospheric Black Metal	cold, atmospheric, sombre, ominous, melancholic, lonely, funereal, male vocals, dark, depressive	3.74	1840	30
2356	Pagan Altar	Traditional Doom Metal, NWOBHM, Heavy Metal	dark, heavy, occult, raw, male vocals, satanic, lo-fi	3.74	1691	32
2357	Temple of Shadows	Power Metal	technical, male vocals, melodic, concept album, triumphant, history, passionate, epic, progressive, uncommon time signatures	3.71	1707	51
2358	Deathcult for Eternity: The Triumph	Death Metal	atmospheric, triumphant, progressive, mysterious, male vocals, epic, occult, dark, melodic, dense	3.75	1057	15
2359	Green Eyed God	Progressive Rock, Psychedelic Rock	energetic, heavy, psychedelic, eclectic, progressive, melodic, ritualistic, rhythmic, repetitive, nocturnal	3.77	596	33
2360	Arizona Bay	Stand-Up Comedy, Spoken Word	vulgar, political, humorous, sarcastic, male vocals, misanthropic, conscious, philosophical, satirical	3.66	690	25
2361	Kuře v hodinkách	Progressive Rock	male vocals, energetic	3.78	464	23
2362	Jards Macalé	MPB	lonely, melancholic, male vocals, urban, raw, complex, poetic, psychedelic, rhythmic, anxious	3.79	482	9
2364	At Action Park	Post-Hardcore, Noise Rock, Math Rock	raw, dissonant, angry, aggressive, male vocals, rhythmic, sarcastic, minimalistic, repetitive, misanthropic	3.72	6754	73
2365	Hiding Places	Abstract Hip Hop, East Coast Hip Hop	abstract, depressive, male vocals, conscious, nihilistic, rhythmic, nocturnal, cryptic, urban, pessimistic	3.72	6313	34
2366	Going Places	Noise, Drone	atmospheric, noisy, hypnotic, dark, dense, sombre, melancholic, instrumental, ominous, mysterious	3.72	4796	44
2367	Pretenders	New Wave	female vocals, energetic, sexual, playful, melodic, love, bittersweet, passionate, rhythmic	3.74	3528	116
2368	Paul Simon	Singer/Songwriter, Folk Rock	introspective, warm, mellow, peaceful, calm, melodic, male vocals, poetic, eclectic	3.75	3407	73
2369	Duck Stab / Buster & Glen	Experimental Rock, Art Pop	surreal, cryptic, dark, playful, ominous, quirky, atonal, humorous, disturbing, male vocals	3.73	3447	75
2370	Minstrel in the Gallery	Progressive Rock, Folk Rock	epic, progressive, sarcastic, concept album, male vocals, medieval, fantasy	3.75	3226	88
2371	New Gold Dream (81-82-83-84)	New Wave, Synthpop	melodic, male vocals, cryptic, sombre, atmospheric, dense, nocturnal, melancholic, hypnotic, mysterious	3.74	3237	103
2372	Above the Weeping World	Melodic Death Metal	melancholic, sombre, melodic, male vocals, death, atmospheric, dark, epic, concept album, pessimistic	3.72	2190	47
2373	I, Jonathan	Pop Rock, Singer/Songwriter	summer, humorous, warm, playful, bittersweet, male vocals, minimalistic, melodic, love, energetic	3.76	1477	34
2374	I Talk With the Spirits	Post-Bop	instrumental, quirky, nocturnal, spiritual, introspective, playful, passionate, melancholic, acoustic, mysterious	3.77	1097	16
2375	Âme debout	Avant-Folk	manic, passionate, protest, female vocals, avant-garde, angry, warm, psychedelic, bittersweet, rebellious	3.76	1031	19
2376	The Pernicious Enigma	Funeral Doom Metal	dense, surreal, heavy, psychedelic, atmospheric, misanthropic, cold, disturbing, scary, hypnotic	3.75	1093	26
2377	Jericho	Heavy Psych, Hard Rock	energetic, passionate, heavy, progressive, male vocals	3.77	736	34
2378	A Boy Named Charlie Brown	Cool Jazz, Television Music	improvisation, melodic, instrumental, mellow, soothing, calm, acoustic, peaceful, playful	3.77	751	11
2379	となりのトトロ (Tonari no Totoro)	Film Score, Neoclassical New Age, Cinematic Classical	pastoral, summer, eclectic, happy, soothing, sentimental, nature, playful, instrumental, mysterious	3.78	589	3
2380	Sung Tongs	Freak Folk, Neo-Psychedelia, Avant-Folk	acoustic, autumn, playful, psychedelic, hypnotic, tribal, nature, abstract, surreal, male vocals	3.67	14698	203
2381	Buffalo Springfield Again	Folk Rock, Psychedelic Rock	psychedelic, warm, male vocals, melodic, bittersweet, love, eclectic	3.74	3898	101
2382	Drive Like Jehu	Post-Hardcore	energetic, anxious, noisy, dissonant, male vocals, angry, passionate, manic, complex, uncommon time signatures	3.75	2789	28
2383	Rattlesnakes	Jangle Pop	romantic, bittersweet, melodic, male vocals, poetic, longing, urban, sarcastic, acoustic, autumn	3.75	2503	69
2384	Lady in Satin	Vocal Jazz	female vocals, melancholic, sentimental, sad, lonely, love, orchestral, lush, passionate, bittersweet	3.74	2624	67
2385	Out of Myself	Progressive Rock	melancholic, atmospheric, passionate, introspective, male vocals, melodic, longing, complex, technical, progressive	3.74	2588	48
2386	Kaya	Roots Reggae	warm, love, male vocals, mellow, soothing, tropical, peaceful, summer, melodic, rhythmic	3.76	2395	62
2476	Rushup Edge	Acid Techno, IDM	rhythmic, mechanical, playful, instrumental, complex, energetic, microtonal, futuristic, technical, quirky	3.75	1713	24
2387	Crossings	Jazz Fusion, Avant-Garde Jazz	psychedelic, atmospheric, avant-garde, spiritual, mysterious, tribal, futuristic, nocturnal, mellow, complex	3.76	1780	29
2388	Dead Man's Party	New Wave	playful, death, male vocals, Halloween, energetic, party, melodic, quirky	3.76	1728	24
2389	Warren Zevon	Singer/Songwriter	misanthropic, sarcastic, male vocals, playful, melodic, satirical, nocturnal, humorous	3.76	1512	44
2390	In for the Kill	Hard Rock, Heavy Metal	progressive, male vocals, energetic	3.76	1477	54
2391	Songs of Darkness, Words of Light	Death Doom Metal, Gothic Metal, Doom Metal	melancholic, male vocals, depressive, romantic, dark, heavy, sombre, ominous, poetic, lonely	3.74	1581	31
2392	6 & 12 String Guitar	American Primitivism	instrumental, acoustic, pastoral, complex, technical, melodic, soothing, dense, playful, uplifting	3.77	1303	35
2393	On the Run	Memphis Rap, Gangsta Rap, Southern Hip Hop	crime, lo-fi, violence, angry, aggressive, drugs, conscious, urban, vulgar, male vocals	3.75	1237	10
2394	Symphony for Improvisers	Free Jazz	avant-garde, dense, passionate, instrumental, improvisation, energetic, complex, manic, acoustic, uplifting	3.76	1083	17
2395	Mind Wars	Thrash Metal	manic, political, apocalyptic, epic, energetic, anti-religious, aggressive	3.76	814	16
2396	Natural Elements	Jazz Fusion	improvisation, warm, technical, hypnotic, uplifting, playful, passionate, soothing, energetic, instrumental	3.78	775	15
2397	Climax	Film Soundtrack, Electronic Dance Music	ominous, party, rhythmic, sexual, playful, energetic, hypnotic, repetitive, male vocals	3.78	280	2
2398	Parklife	Britpop	playful, energetic, eclectic, sarcastic, satirical, male vocals, melodic, urban, uplifting, psychedelic	3.67	13192	238
2399	Hear Nothing See Nothing Say Nothing	D-Beat	energetic, apocalyptic, aggressive, raw, heavy, political, anarchism, rebellious, angry, dark	3.74	4714	99
2400	New York	Rock, Singer/Songwriter	urban, poetic, political, sarcastic, deadpan, male vocals, conscious, anthemic, raw, serious	3.74	4226	119
2401	Clarity	Alternative Rock, Emo, Midwest Emo	passionate, melancholic, love, bittersweet, male vocals, melodic, introspective, romantic, lonely, lush	3.73	3820	53
2402	Replicas	Synthpop, New Wave	science fiction, futuristic, cold, anxious, apathetic, mechanical, concept album, male vocals, nocturnal, ominous	3.74	3305	75
2403	Lovedrive	Hard Rock, Heavy Metal	male vocals, love, ballad, energetic, sexual, anthemic	3.74	2381	61
2404	The Divine Wings of Tragedy	Progressive Metal, Neoclassical Metal	energetic, uncommon time signatures, melodic, male vocals, complex, fantasy, mythology, technical, epic, passionate	3.71	2552	60
2405	The Spell of Retribution	Death Metal	progressive, occult, melodic, epic, mythology, ominous, complex, fantasy, male vocals, triumphant	3.75	690	4
2406	Conjuration of the Spectral Empire	Death Metal	energetic, dark, melodic, occult, epic, mythology, heavy, male vocals, aggressive, triumphant	3.73	621	11
2407	Spem in alium	Renaissance Music, Polyphonic Chant, Choral	religious, spiritual, polyphonic, choral, ethereal, male vocals, female vocals, meditative, dense, a cappella	3.78	568	10
2408	Blues-ette	Hard Bop	improvisation, acoustic, playful, instrumental, atmospheric, technical, melodic, energetic, rhythmic, mellow	3.78	515	16
2409	A Meeting by the River	Contemporary Folk, Acoustic Blues, Hindustani Classical Music	meditative, improvisation, peaceful, soothing, pastoral, spiritual, acoustic, instrumental, warm	3.78	490	13
2410	The Source	Songhai Music, Blues	peaceful, melodic, male vocals, mellow	3.78	503	11
2411	Metal Gear Solid	Video Game Music, Ambient, Sequencer & Tracker	suspenseful, futuristic, atmospheric, mechanical, cold, ominous, nocturnal, anxious, instrumental, winter	3.78	460	8
2412	Cowboy Bebop: Knockin' on Heaven's Door - O.S.T. Future Blues	Film Soundtrack	female vocals, playful, male vocals, energetic	3.77	391	2
2413	Another Side of Bob Dylan	Contemporary Folk, Singer/Songwriter	acoustic, poetic, male vocals, playful, love, autumn, sarcastic, humorous, mellow, political	3.71	7963	197
2414	A Rainbow in Curved Air	Minimalism, Progressive Electronic, Electronic	instrumental, hypnotic, meditative, uplifting, warm, futuristic, atmospheric, mysterious, psychedelic, avant-garde	3.72	3991	77
2415	Brass	Abstract Hip Hop, Experimental Hip Hop, East Coast Hip Hop	political, cryptic, dark, female vocals, abstract, atmospheric, male vocals, sampling, angry, philosophical	3.74	3289	24
2416	Emitt Rhodes	Pop Rock, Singer/Songwriter	melodic, love, soft, playful, male vocals, bittersweet, romantic, lo-fi, sentimental	3.76	995	54
2417	Fuchsia Swing Song	Hard Bop, Post-Bop	improvisation, acoustic, instrumental	3.77	950	13
2419	Introducing...	Danzón, Afro-Cuban Jazz	rhythmic, tropical, passionate, instrumental, melodic, warm, mellow, playful, male vocals	3.79	584	8
2420	Pongo en tus manos abiertas...	Nueva canción latinoamericana	conscious, political, acoustic, male vocals, protest, melancholic, melodic, rebellious, passionate	3.77	509	13
2421	Super æ	Experimental Rock, Noise Rock, Psychedelic Rock	psychedelic, playful, energetic, noisy, hypnotic, rhythmic, repetitive, avant-garde, warm, uplifting	3.72	4998	71
2422	Second Helping	Southern Rock	male vocals, pastoral, warm, uplifting, summer	3.73	3049	67
2423	Dawn: Winter Journal	Singer/Songwriter, Indie Folk	acoustic, introspective, sparse, male vocals, winter, lonely, poetic, melancholic, sombre, cold	3.74	2855	25
2424	You Are My Everlovin / Celestial Power	Drone, Avant-Folk, Free Folk	instrumental, hypnotic, psychedelic, atmospheric, repetitive, avant-garde, improvisation, minimalistic, spiritual, dense	3.74	2486	25
2425	Fire and Water	Hard Rock	bittersweet, romantic, heavy, passionate, male vocals, sentimental	3.75	2351	93
2426	W.A.S.P.	Heavy Metal, Glam Metal	sexual, aggressive, male vocals, melodic, heavy, passionate, anthemic, energetic, rebellious, rhythmic	3.71	2445	61
2427	Dialoghi del presente	Post-Minimalism	minimalistic, lonely, melancholic, calm, peaceful, passionate, sonata, avant-garde, sparse, mysterious	3.75	2146	22
2428	The Ultra-Violence	Thrash Metal	energetic, aggressive, heavy, raw, violence, male vocals, death, rebellious, dark, apocalyptic	3.75	2080	34
2429	Sadness Will Prevail	Avant-Garde Metal, Noise Rock	misanthropic, lonely, nihilistic, self-hatred, aggressive, raw, sad, dark, manic, angry	3.72	2102	41
2430	What We Did on Our Holidays	British Folk Rock, Folk Rock	pastoral, soft, peaceful, melodic, psychedelic, mellow, male vocals, female vocals, folklore, ethereal	3.76	1762	65
2431	V: The New Mythology Suite	Progressive Metal	energetic, melodic, uncommon time signatures, complex, male vocals, progressive, fantasy, mythology, concept album, epic	3.72	1954	49
2432	Prima edizione	UK Garage, Speed Garage	Christian, sampling, uplifting, energetic, happy, repetitive, party, rhythmic, spiritual, playful	3.76	1217	21
2433	Africa Must Be Free by 1983	Roots Reggae	conscious, warm, rhythmic, mellow, religious, protest, spiritual, political, optimistic, androgynous vocals	3.77	790	15
2434	Nova	Spiritual Jazz, Soul Jazz, Avant-Garde Jazz	energetic, instrumental, rhythmic, anxious, improvisation, passionate	3.77	627	7
2435	Pres and Teddy	Swing	calm, acoustic, instrumental, improvisation, technical, playful, passionate	3.79	467	3
2436	Filmzenék Tarr Béla filmjeihez	Film Score, Minimalism, Cinematic Classical	melancholic, atmospheric, folklore, instrumental, sparse, existential, sombre, repetitive	3.77	437	2
2437	Symphony No. 4	Modern Classical, Symphony	symphony, acoustic	3.78	383	4
2438	Afrociberdelia	Manguebeat	urban, rhythmic, eclectic, male vocals, energetic, conscious, sampling, cryptic, triumphant, manic	3.78	426	2
2439	Kaputt	Sophisti-Pop, Art Pop	poetic, lush, soft, mellow, bittersweet, cryptic, romantic, male vocals, melodic, nocturnal	3.7	7657	139
2440	Rounds	Folktronica, IDM	warm, rhythmic, autumn, instrumental, sampling, atmospheric, mellow, repetitive, calm, lush	3.71	7391	70
2441	Watershed	Progressive Metal	complex, progressive, male vocals, sombre, melodic, dark, introspective, heavy, melancholic, passionate	3.69	7208	237
2442	Chaos A.D.	Groove Metal, Thrash Metal	heavy, aggressive, political, angry, male vocals, energetic, war, violence, protest, apocalyptic	3.69	5455	123
2443	Contemporary Movement	Slowcore	mellow, lethargic, depressive, atmospheric, melancholic, lo-fi, warm, male vocals, introspective, breakup	3.74	4372	24
2444	In Sides	Ambient Techno	psychedelic, instrumental, repetitive, playful, atmospheric, surreal, space, rhythmic, energetic, mysterious	3.74	3977	67
2445	The Great Cold Distance	Alternative Metal	melancholic, atmospheric, lonely, dark, depressive, cold, male vocals, autumn, alienation, heavy	3.71	4190	75
2446	Christmas and the Beads of Sweat	Singer/Songwriter, Piano Rock, Pop Soul, Art Pop	female vocals, winter, sombre, urban, poetic, cold, melancholic, Christmas	3.77	683	13
2447	Neverhood Songs	Video Game Music, Avant-Folk	humorous, male vocals, quirky, playful, avant-garde, acoustic, surreal, eclectic, melodic	3.77	469	18
2448	VA-11 HALL-A: Second Round	Video Game Music, Synthwave	nocturnal, futuristic, urban, instrumental, science fiction, playful, atmospheric, mechanical, happy, melancholic	3.77	449	4
2449	Underwater Moonlight	Neo-Psychedelia, Jangle Pop, Post-Punk	energetic, melodic, psychedelic, quirky, male vocals, playful, sarcastic, surreal, summer, raw	3.72	4694	93
2450	Into the Music	Singer/Songwriter, Folk Rock	introspective, passionate, romantic, love, male vocals, melodic	3.76	1583	40
2451	Fifth Dimension	Folk Rock, Psychedelic Rock	psychedelic, melodic, mellow, pastoral, male vocals, calm, peaceful, spring, love, science fiction	3.73	4569	142
2452	OM	Atmospheric Black Metal, Pagan Black Metal, Progressive Metal	atmospheric, pagan, forest, ethereal, spiritual, nature, dense, ritualistic, complex, progressive	3.71	3610	64
2453	In Their Darkened Shrines	Technical Death Metal, Death Metal	death, technical, heavy, mythology, epic, uncommon time signatures, aggressive, ritualistic, energetic, male vocals	3.72	3170	80
2454	Burnt Offerings	Power Metal, US Power Metal, Heavy Metal	heavy, male vocals, dark, aggressive, infernal, death, epic, introspective, fantasy	3.72	2068	53
2455	Paix	Avant-Folk, Progressive Folk, Psychedelic Rock	passionate, apocalyptic, epic, psychedelic, avant-garde, protest, rhythmic, death, warm, political	3.75	1788	32
2456	Ballads	Cool Jazz	instrumental, mellow, acoustic, warm, soothing, nocturnal, improvisation, romantic	3.75	2921	43
2457	For Girls Who Grow Plump in the Night	Canterbury Scene, Progressive Rock	warm, complex, male vocals, melodic, progressive, quirky, psychedelic, playful	3.76	1717	50
2458	The Fantastic Expedition of Dillard & Clark	Country Rock, Progressive Country	male vocals, pastoral, melodic, longing, bittersweet, introspective, breakup, acoustic, technical, calm	3.75	1289	25
2459	Magnolia	Singer/Songwriter, Film Soundtrack, Pop Rock	female vocals, introspective, melodic, soft	3.75	1446	39
2461	Now He Sings, Now He Sobs	Post-Bop	instrumental, improvisation, technical, acoustic, complex, melodic, energetic	3.77	1134	19
2462	Don't Give Up on Me	Southern Soul, Deep Soul, Soul	introspective, male vocals, longing	3.77	870	33
2463	Millions Now Living Will Never Die	Post-Rock, Experimental Rock	instrumental, mellow, atmospheric, hypnotic, soothing, progressive, minimalistic, aquatic, lush, eclectic	3.7	8500	132
2464	Super Ghostbusters	Musical Comedy, Sequencer & Tracker, Musical Parody, Novelty	humorous, repetitive, paranormal, manic, vulgar, chaotic, quirky, male vocals, concept album, playful	3.64	736	29
2465	Stronger Than Evil	Heavy Metal	melodic, medieval, epic, male vocals, fantasy, war, uplifting, pagan, anthemic, energetic	3.75	566	9
2466	It's Monk's Time	Hard Bop	playful, instrumental	3.78	556	8
2467	Sailing the Seas of Cheese	Funk Metal	playful, quirky, humorous, male vocals, energetic, technical, uncommon time signatures, satirical, surreal, complex	3.72	6295	103
2468	Ambient 4: On Land	Ambient	dark, atmospheric, instrumental, forest, mysterious, ominous, sombre, nocturnal, meditative, hypnotic	3.73	5525	77
2469	Dead Roots Stirring	Stoner Metal	male vocals, heavy, dense, psychedelic, rhythmic, technical, uplifting, epic, atmospheric, spiritual	3.75	2511	23
2470	Dark Space III	Atmospheric Black Metal, Black Metal	dark, space, cold, dense, atmospheric, ominous, noisy, raw, nocturnal, hypnotic	3.73	2469	49
2471	Hum of Life	Post-Punk, Art Punk	energetic, female vocals, playful, noisy, rhythmic, chaotic, anxious, manic, uncommon time signatures, ritualistic	3.76	1649	22
2472	Under the Bushes Under the Stars	Indie Rock, Lo-Fi / Slacker Rock	melodic, raw, lo-fi, male vocals, uplifting, cryptic, passionate, summer, alcohol, bittersweet	3.75	2399	47
2473	Braveheart	Film Score, Cinematic Classical	epic, spring, war	3.77	533	8
2474	This Is Boston Not L.A.	Hardcore Punk		3.78	315	15
2475	Blasphemy Made Flesh	Brutal Death Metal, Technical Death Metal	heavy, aggressive, violence, anti-religious, male vocals, death, technical, hateful, disturbing, vulgar	3.73	2589	35
2477	Lil' Beethoven	Art Pop, Chamber Pop	repetitive, sarcastic, playful, quirky, satirical, humorous, concept album, bittersweet, complex, male vocals	3.74	1461	34
2478	King of da Playaz Ball	Memphis Rap, Gangsta Rap, Southern Hip Hop	crime, atmospheric, drugs, violence, dark, raw, sexual, urban, male vocals, introspective	3.75	1465	12
2479	Shotgun Willie	Outlaw Country	male vocals, alcohol, playful, humorous, acoustic, melodic, mellow, pastoral	3.76	1209	22
2480	Scrambles	Punk Rock, Indie Rock	energetic, pessimistic, urban, manic, male vocals, playful, alcohol, depressive, melodic, winter	3.74	1270	10
2481	Scenes From the Second Storey	Alternative Rock, Post-Hardcore, Alternative Metal	passionate, psychedelic, atmospheric, male vocals, melancholic, angry, melodic, heavy, epic, sombre	3.72	1155	36
2482	Delusion of the Fury	Microtonal Classical	ritualistic, avant-garde, microtonal, tribal, surreal, atmospheric, complex, male vocals, opera, ominous	3.76	999	13
2483	Thelonious Alone in San Francisco	Hard Bop	calm, warm, instrumental, soft, nocturnal, autumn	3.77	939	17
2484	One Last Laugh in a Place of Dying	Alternative Rock	melancholic, lonely, sad, heavy, sombre, angry, passionate, introspective, melodic, mellow	3.76	824	21
2485	Roadmaster	Country Rock, Singer/Songwriter	love, introspective, warm, autumn, lush, male vocals	3.77	757	22
2486	Tim Maia	Samba Soul, MPB, Psychedelic Soul	playful, love, male vocals, mellow, surreal, melancholic, romantic, spiritual, protest, melodic	3.77	706	6
2487	Straight Outta Compton	Gangsta Rap, West Coast Hip Hop	crime, urban, protest, angry, aggressive, violence, rebellious, male vocals, vulgar, energetic	3.68	10591	204
2488	The Campfire Headphase	IDM, Folktronica	warm, mellow, atmospheric, ethereal, psychedelic, lush, summer, melancholic, soothing, sampling	3.7	9430	120
2489	Aviary	Progressive Pop, Art Pop, Ambient Pop, Experimental	avant-garde, lush, ethereal, female vocals, complex, atmospheric, surreal, progressive, abstract, mysterious	3.71	6737	92
2490	Scenery	Hard Bop	instrumental, playful, warm, summer, happy, mellow, calm, technical, autumn, sensual	3.73	5968	24
2491	Your Funeral ... My Trial	Post-Punk, Gothic Rock	anxious, depressive, dark, ominous, romantic, male vocals, atmospheric, mysterious, melancholic, sexual	3.73	5742	55
2492	Burn	Hard Rock	male vocals, energetic, heavy, psychedelic, melodic, progressive	3.72	4696	127
2493	Chill Out	Ambient	pastoral, warm, sampling, soothing, atmospheric, lush, peaceful, meditative, concept album, mysterious	3.73	4095	69
2494	Living in Darkness	Punk Rock, Surf Punk	anxious, energetic, male vocals, pessimistic, rebellious, dark, introspective, alienation, raw, angry	3.74	3121	46
2495	Moontan	Hard Rock	male vocals, energetic, sexual, passionate, progressive	3.76	1322	57
2496	Battle Cry	Heavy Metal, US Power Metal	fantasy, triumphant, energetic, melodic, heavy, male vocals, rhythmic, epic, aggressive, violence	3.74	1097	19
2497	Mystic Chords & Sacred Spaces	Space Ambient	meditative, instrumental, ethereal, space, mysterious, dark, atmospheric, hypnotic, psychedelic, repetitive	3.75	941	14
2498	The Lords of Hypocrisy	Heavy Metal, Traditional Doom Metal	occult, raw, dark, male vocals, apocalyptic, heavy, sad	3.75	906	10
2499	Conquering Lion	Roots Reggae	male vocals, rhythmic, religious, warm, peaceful, spiritual, love, conscious, calm, repetitive	3.77	435	8
2500	Multiple	Jazz Fusion		3.79	436	9
2501	Modrý Efekt & Radim Hladík	Progressive Rock	instrumental, space	3.78	401	17
2502	Si todo hiciera crack	Symphonic Prog, Progressive Rock		3.78	429	23
2503	Finger Poppin' With the Horace Silver Quintet	Hard Bop	instrumental, rhythmic, energetic	3.79	417	9
2504	Script for a Jester's Tear	Neo-Prog	melancholic, introspective, male vocals, melodic, complex, lush, progressive, poetic, passionate, lonely	3.73	3211	111
2505	Coming Up	Britpop, Glam Rock	male vocals, melodic, bittersweet, energetic, sexual, party, LGBT, optimistic, romantic, urban	3.73	3206	60
2506	Fox Confessor Brings the Flood	Alt-Country, Singer/Songwriter, Americana	female vocals, melodic, nature, lush, longing, mellow, folklore, introspective, pastoral, concept album	3.74	2851	78
2507	GP	Country Rock, Singer/Songwriter, Country	melodic, male vocals, warm, mellow, romantic, Christian, soft, introspective, female vocals, love	3.75	1888	56
2508	Niggaz of Destruction	Memphis Rap, Southern Hip Hop	lo-fi, violence, crime, nocturnal, infernal, nihilistic, male vocals, dark, raw, vulgar	3.74	1895	13
2509	天空の城ラピュタ (Tenkū no shiro Laputa)	Film Score, Cinematic Classical, Neoclassical New Age	epic, instrumental, bittersweet	3.78	403	3
2510	Heavy Rocks	Stoner Metal, Stoner Rock, Sludge Metal	energetic, heavy, noisy, psychedelic, male vocals, dense, desert, aggressive, raw, playful	3.72	4687	61
2511	Then Play On	Blues Rock	male vocals, melancholic, atmospheric, psychedelic, passionate, mellow, rhythmic	3.74	3021	93
2512	Starspawn	Death Metal	atmospheric, heavy, science fiction, technical, male vocals, aggressive, dense, complex, progressive, uncommon time signatures	3.74	2782	29
2513	Haus der Luege	Industrial, Post-Industrial	mechanical, poetic, anxious, atmospheric, dark, nocturnal, avant-garde, ominous, philosophical, manic	3.73	2732	24
2514	Psalm 9	Traditional Doom Metal	Christian, dark, apocalyptic, serious, heavy, male vocals, death, sombre, energetic, funereal	3.74	2533	51
2515	Inferno	Heavy Metal, Hard Rock	aggressive, energetic, heavy, violence, male vocals, raw, rebellious, rhythmic	3.74	1974	64
2516	Purgatory Afterglow	Melodic Death Metal	melodic, melancholic, rhythmic, heavy, complex, energetic, ominous, male vocals, dark, progressive	3.72	1934	32
2517	Where Did Our Love Go	Girl Group, Motown Sound, Pop Soul	romantic, melodic, female vocals, love, uplifting, lush, longing, vocal group, happy, bittersweet	3.76	1662	24
2518	The Outer Limits	Progressive Metal	science fiction, male vocals, progressive, space, mysterious, cryptic, futuristic, epic, uncommon time signatures, energetic	3.74	1639	25
2519	Mythical & Magical	Heavy Metal	occult, fantasy, male vocals, mythology, heavy, sombre, pagan, ominous, spiritual, energetic	3.75	895	18
2520	Jewelz	East Coast Hip Hop, Boom Bap	mellow, urban, rhythmic, boastful, male vocals, conscious, sampling, nocturnal, playful, calm	3.76	823	22
2521	Right Time	Roots Reggae	warm, vocal group, passionate, mellow, spiritual, religious, melodic, tropical, political	3.76	678	16
2658	Ready for Freddie	Hard Bop	instrumental, acoustic, improvisation, technical, playful, energetic, urban, mellow	3.76	834	14
2522	Vib-Ribbon	Video Game Music, J-Pop, Art Pop	energetic, female vocals, playful, optimistic, melodic, happy, warm, quirky, abstract, rhythmic	3.76	670	10
2523	Expansions	Post-Bop, Modal Jazz	instrumental, rhythmic, acoustic, technical, improvisation, passionate, energetic, melodic	3.79	477	6
2524	The Great Lost Kinks Album	Pop Rock		3.78	427	12
2525	E.T. the Extra-Terrestrial	Film Score, Cinematic Classical, Romanticism, Orchestral	orchestral, science fiction	3.75	410	4
2526	Cello Concerto; Sea Pictures	Romanticism, Orchestral	female vocals, acoustic, melodic, concerto, passionate, orchestral, instrumental, complex	3.77	336	6
2527	The Book of Mormon (Original Broadway Cast Recording)	Show Tunes, Satire, Musical Comedy	satirical, triumphant, quirky, female vocals, vulgar, optimistic, passionate, history, sentimental, vocal group	3.75	340	5
2528	Killing Joke	Post-Punk	mechanical, cold, anxious, political, war, male vocals, rhythmic, energetic, dark, angry	3.72	6145	100
2529	Fireball	Hard Rock	male vocals, psychedelic, heavy, playful, energetic, melodic, repetitive, passionate, aggressive, rebellious	3.72	5545	135
2530	Nattens madrigal: Aatte hymne til ulven i manden	Black Metal	lo-fi, noisy, raw, nocturnal, forest, aggressive, fantasy, philosophical, concept album, male vocals	3.71	5563	115
2531	Specials	2 Tone	energetic, political, urban, male vocals, rebellious, conscious, playful, rhythmic, anxious, angry	3.73	4428	90
2532	Love's Secret Domain	Post-Industrial, Electronic	psychedelic, surreal, nocturnal, atmospheric, dark, sensual, hypnotic, mysterious, drugs, mechanical	3.73	3704	55
2533	Isa	Progressive Metal, Black Metal	atmospheric, dark, complex, male vocals, progressive, epic, heavy, mythology, introspective, spiritual	3.72	2454	30
2534	Helvete	Grindcore	aggressive, political, rebellious, heavy, energetic, rhythmic, chaotic, angry, male vocals	3.74	1519	21
2535	Liberation Music Orchestra	Experimental Big Band	avant-garde, political, complex, protest, uplifting, martial, dense, triumphant, improvisation, sampling	3.76	1311	29
2536	Al Green Gets Next to You	Southern Soul	male vocals	3.77	1196	31
2537	Colossal Youth	Post-Punk, Minimal Wave, Indie Pop	sparse, minimalistic, bittersweet, female vocals, introspective, lo-fi, quirky, playful, cold, melodic	3.71	5529	118
2538	The Sophtware Slump	Indie Pop, Indie Rock	nature, melancholic, bittersweet, science fiction, lonely, futuristic, philosophical, male vocals, alienation, melodic	3.72	5425	118
2539	The Pavilion of Dreams	Minimalism, Ambient	nocturnal, calm, ethereal, instrumental, sparse, soothing, atmospheric, longing, sentimental, soft	3.74	2793	23
2540	Bl_ck B_st_rds	East Coast Hip Hop, Boom Bap	urban, humorous, sampling, energetic, male vocals, drugs, conscious, raw, boastful, hedonistic	3.74	2429	23
2541	Blazing Arrow	West Coast Hip Hop, Conscious Hip Hop	optimistic, mellow, warm, uplifting, playful, passionate, conscious, introspective, summer, male vocals	3.74	2479	74
2542	Fire Down Under	Heavy Metal, Hard Rock	energetic, passionate, male vocals, love, anthemic, rebellious, triumphant	3.75	1385	47
2543	To the Depths, in Degradation	Death Metal	aggressive, infernal, death, dark, heavy, ominous, raw, disturbing, hateful, complex	3.74	1414	28
2544	Eternally Yours	Punk Rock	rebellious, male vocals, energetic, lush, melodic, anxious, rhythmic	3.75	1267	41
2545	The Soul Album	Southern Soul, Deep Soul	passionate, love, male vocals, melodic	3.76	1254	15
2546	War Master	Death Metal	heavy, war, dense, aggressive, male vocals, dark, energetic, rhythmic, death, apocalyptic	3.73	2612	30
2547	From Elvis in Memphis	Blue-Eyed Soul, Country Soul	male vocals, love, passionate, melodic, breakup, sentimental, longing, bittersweet, lush, warm	3.74	2173	70
2548	Gal	Tropicália, Psychedelic Pop, Psychedelic Rock	surreal, psychedelic, manic, tropical, summer, warm, melodic, sexual, playful, female vocals	3.74	1831	42
2549	Newk's Time	Hard Bop	improvisation, acoustic, instrumental	3.78	610	11
2550	West Side Story	Show Tunes, Film Soundtrack		3.76	615	18
2551	Our Thing	Hard Bop		3.78	491	6
2552	The Mack	Soul, Film Soundtrack	warm, melodic, lush, male vocals, playful	3.78	425	8
2553	Ainda	Chamber Folk, Film Soundtrack	mellow, female vocals, warm, melodic, playful	3.78	303	7
2554	An Empty Bliss Beyond This World	Ambient, Turntable Music	melancholic, lonely, atmospheric, mellow, sampling, instrumental, sparse, mysterious, ominous, bittersweet	3.68	8357	100
2555	Smiling With No Teeth	Neo-Soul	eclectic, playful, male vocals, conscious, rhythmic, energetic, introspective, quirky, political, concept album	3.71	6869	65
2556	Mestarin kynsi	Avant-Garde Metal, Black Metal, Psychedelic Rock	psychedelic, hypnotic, atmospheric, mysterious, surreal, ominous, dense, progressive, heavy, space	3.7	6021	72
2557	Reading, Writing and Arithmetic	Jangle Pop, Indie Pop	soothing, bittersweet, autumn, ethereal, melodic, female vocals, melancholic, rain, mellow, warm	3.73	4168	93
2558	How It Feels to Be Something On	Alternative Rock, Midwest Emo	melancholic, passionate, bittersweet, sad, melodic, male vocals, depressive, atmospheric, spiritual, autumn	3.73	3830	39
2559	Hosannas From the Basements of Hell	Industrial Metal	heavy, repetitive, dark, energetic, noisy, dense, mechanical, angry, ritualistic, tribal	3.74	1608	30
2560	We Shall All Be Healed	Indie Folk, Singer/Songwriter	male vocals, drugs, introspective, death, sentimental, melancholic, depressive, concept album, anxious, religious	3.76	1460	12
2561	Trouble	Heavy Metal, Traditional Doom Metal	heavy, introspective, male vocals, Christian, religious, sombre, rhythmic	3.75	1169	30
2562	The Great Otis Redding Sings Soul Ballads	Southern Soul, Deep Soul	passionate, romantic, longing, love, sentimental, male vocals, bittersweet, ballad	3.77	1016	14
2563	Pour Down Like Silver	Folk Rock	female vocals, melancholic, male vocals, sombre, bittersweet, sentimental, autumn, Islamic	3.76	877	34
2564	Tata Kazika	Warsaw City Folk, Alternative Rock	urban, poem, alcohol, ballad, male vocals, political, folklore	3.76	888	9
2565	Последний герой	Post-Punk, New Wave	cold, rhythmic, male vocals, sombre, melodic, nocturnal, melancholic	3.76	862	7
2566	Streichquartett Op. 3; Lyrische Suite	Chamber Music, Expressionism	instrumental, acoustic, string quartet, atonal, suspenseful, avant-garde, anxious, complex, dissonant, sparse	3.78	372	1
2567	Being There	Alt-Country, Country Rock, Roots Rock	male vocals, bittersweet, sentimental, melancholic, breakup, melodic, lonely, love, pastoral, poetic	3.72	5258	87
2568	Easter Everywhere	Psychedelic Rock	psychedelic, spiritual, drugs, philosophical, hypnotic, cryptic, melodic, male vocals, rhythmic, energetic	3.73	3663	117
2569	Thousand Knives of Ryuichi Sakamoto	Progressive Electronic	futuristic, eclectic, playful, instrumental, quirky, melodic, rhythmic, hypnotic, atmospheric, mechanical	3.74	3212	23
2570	Look Sharp!	New Wave, Power Pop	energetic, playful, rhythmic, sarcastic, male vocals, rebellious, love	3.74	2401	76
2571	Bilateral	Progressive Metal	complex, male vocals, introspective, technical, uncommon time signatures, melodic, epic, progressive, heavy, passionate	3.72	2153	48
2572	To Our Children's Children's Children	Progressive Rock, Progressive Pop	warm, melodic, lush, progressive, space, philosophical, bittersweet, epic, male vocals, psychedelic	3.75	2017	70
2573	2	Progressive Rock, Heavy Psych	female vocals, warm, psychedelic, raw, energetic, progressive, bittersweet, autumn	3.76	752	27
2574	Pequeñas anécdotas sobre las instituciones	Progressive Rock, Progressive Folk	conscious, concept album, melodic, male vocals, protest, political, poetic, urban, sombre	3.76	769	16
2575	To the Highe$t Bidder	Progressive Rock, Canterbury Scene	quirky, complex, humorous, playful, progressive, avant-garde	3.77	659	22
2576	Białe wakacje	Psychedelic Rock, Alternative Rock, Indie Rock	psychedelic	3.75	678	5
2577	A Pleasant Shade of Gray	Progressive Metal	sombre, suite, progressive, introspective, existential, male vocals, concept album, complex, technical, uncommon time signatures	3.73	1279	50
2578	Rhythm-al-ism	West Coast Hip Hop	urban, rhythmic, mellow, summer, hedonistic, boastful, lush, party, warm, sexual	3.76	650	17
2579	Sonic Mania	Video Game Music, Synth Funk	instrumental, rhythmic, happy, playful, lush, optimistic, energetic, quirky, melodic, warm	3.77	354	5
2580	Greatest of the Delta Blues Singers	Delta Blues	lonely, melancholic, acoustic, soft, religious, introspective, male vocals, calm, dark, sombre	3.77	333	4
2581	Microcastle / Weird Era Continued	Indie Rock, Neo-Psychedelia	melancholic, atmospheric, psychedelic, mellow, male vocals, surreal, lonely, melodic, alienation, depressive	3.69	10033	190
2582	My Life in the Bush of Ghosts	Experimental Rock, Art Rock	sampling, rhythmic, atmospheric, playful, eclectic, avant-garde, energetic, anxious, progressive, abstract	3.71	7098	127
2583	Bug	Noise Rock, Indie Rock, Alternative Rock, Lo-Fi / Slacker Rock	male vocals, melancholic, noisy, apathetic, lonely, raw, energetic, heavy, aggressive, lethargic	3.71	6848	90
2584	The Dusk in Us	Metalcore	heavy, dark, introspective, passionate, aggressive, raw, male vocals, energetic, dense, technical	3.71	4718	42
2585	XTRMNTR	Alternative Dance, Electronic	noisy, angry, male vocals, protest, political, sampling, aggressive, energetic, urban, rhythmic	3.71	4414	93
2586	Charmed	House	uplifting, sampling, warm, happy, summer, energetic, sentimental, rhythmic, repetitive, love	3.72	3703	60
2587	The Meadowlands	Indie Rock	breakup, melancholic, lonely, male vocals, mellow, introspective, autumn, passionate, bittersweet, melodic	3.72	3676	78
2588	Stronghold	Atmospheric Black Metal, Symphonic Black Metal	epic, fantasy, triumphant, melodic, sombre, male vocals, medieval, hypnotic, atmospheric, dense	3.71	3257	40
2589	Waka / Jawaka	Jazz-Rock, Jazz Fusion	technical, quirky, complex, male vocals, playful, instrumental, surreal, progressive, avant-garde, sarcastic	3.74	3582	81
2590	Wave	Bossa nova	summer, warm, soothing, mellow, soft, rhythmic, tropical, melodic, lush, calm	3.74	3086	55
2591	In 'n Out	Hard Bop, Post-Bop		3.77	601	6
2592	The Madcap Laughs	Psychedelic Folk, Singer/Songwriter, Psychedelic Rock	psychedelic, lonely, cryptic, introspective, surreal, male vocals, playful, bittersweet, raw, apathetic	3.7	8436	193
2593	Loud City Song	Art Pop, Ambient Pop	nocturnal, mysterious, urban, atmospheric, poetic, ethereal, lush, female vocals, surreal, mellow	3.71	6482	73
2594	Grand Prix	Power Pop, Jangle Pop	melodic, bittersweet, male vocals, longing, uplifting, romantic, sentimental, love, mellow, warm	3.73	3219	81
2595	The Disintegration Loops III	Tape Music, Ambient, Minimalism	repetitive, minimalistic, atmospheric, instrumental, ethereal, aleatory, sombre, hypnotic, calm, sparse	3.72	3097	26
2596	Mirror Man	Blues Rock, Psychedelic Rock	rhythmic, surreal, improvisation, psychedelic, male vocals, progressive, playful, raw, avant-garde, quirky	3.73	2623	77
2597	Catch for Us the Foxes	Post-Hardcore, Indie Rock	religious, passionate, poetic, male vocals, introspective, spiritual, melancholic, sombre, energetic, anxious	3.73	2385	30
2598	Dopesick	Sludge Metal	drugs, heavy, angry, aggressive, hateful, misanthropic, nihilistic, raw, male vocals, pessimistic	3.74	2263	30
2599	Death Church	Anarcho-Punk, Hardcore Punk, Deathrock	dark, anarchism, misanthropic, raw, rebellious, political, male vocals, protest, manic, angry	3.73	2227	41
2600	Hair of the Dog	Hard Rock	male vocals, energetic, heavy, aggressive, passionate, drugs	3.73	1997	75
2601	Easter	Glam Rock, Rock	female vocals, rebellious, conscious, raw, passionate, poetic, sexual, urban, energetic, anti-religious	3.73	4257	72
2602	For You	City Pop	summer, uplifting, passionate, warm, romantic, melodic, optimistic, male vocals, love, lush	3.74	3010	19
2603	The Metal Opera	Power Metal, Rock Opera	rock opera, fantasy, epic, melodic, male vocals, energetic, triumphant, heavy	3.68	1735	41
2604	Klaus Mitffoch	Post-Punk	cold, urban, energetic, anxious, rhythmic, male vocals, political, raw, melodic, dissonant	3.75	1471	10
2605	Nosferatu: Brüder des Schattens - Söhne des Lichts	Film Score, Ambient, Raga Rock	instrumental, atmospheric, hypnotic, nocturnal, pastoral	3.75	1155	20
2606	Stand By	Progressive Electronic, Avant-Prog	futuristic, ominous, repetitive, progressive, science fiction, cold, instrumental, uncommon time signatures, suite, atmospheric	3.75	907	13
2607	Photo-Finish	Blues Rock, Hard Rock		3.77	724	20
2608	Lawrence of Newark	Avant-Garde Jazz, Jazz Fusion	dense, instrumental, chaotic, psychedelic	3.77	643	19
2609	Culpeper's Orchard	Progressive Rock, Psychedelic Rock	psychedelic, progressive, male vocals	3.77	628	28
2610	Cargo	Hard Rock, Jam Band	male vocals	3.76	618	30
2611	La dolce vita	Film Score	instrumental, romantic, sensual	3.77	348	1
2612	Gita	Singer/Songwriter, Rock, Folk Rock	sarcastic, playful, melodic, eclectic, male vocals, love, poetic, urban, protest, philosophical	3.76	375	5
2613	Stand Back! Here Comes Charley Musselwhite's South Side Band	Electric Blues, Chicago Blues	rhythmic, melodic, male vocals	3.77	331	12
2614	Vol. 2: Shake Sugaree	Acoustic Blues, Piedmont Blues, American Folk Music		3.77	316	6
2615	Whistle Stop	Hard Bop		3.79	302	4
2616	Untitled Unmastered.	Jazz Rap, Conscious Hip Hop, West Coast Hip Hop	political, passionate, anxious, conscious, male vocals, eclectic, urban, abstract, nocturnal, atmospheric	3.64	19346	97
2617	Quarteto Nôvo	Baião, Samba-Jazz	uncommon time signatures, instrumental, complex, tropical, improvisation, warm, uplifting, party, technical, playful	3.77	642	19
2618	Modern Vampires of the City	Indie Pop	warm, melodic, lush, urban, male vocals, uplifting, philosophical, passionate, playful, melancholic	3.67	11963	139
2619	Push the Sky Away	Art Rock	atmospheric, sparse, poetic, sombre, male vocals, melancholic, cryptic, ominous, spiritual, hypnotic	3.71	6939	109
2620	Mr. Tambourine Man	Folk Rock, Pop Rock	melodic, bittersweet, male vocals, pastoral, warm, mellow, peaceful, soothing, spring, romantic	3.72	5299	157
2621	Magma [Kobaïa]	Zeuhl, Jazz-Rock	science fiction, apocalyptic, war, complex, energetic, concept album, male vocals, warm, raw, progressive	3.73	2307	43
2622	Mutantes	Tropicália, Psychedelic Rock, Psychedelic Pop	psychedelic, playful, tropical, melodic, surreal, humorous, energetic, summer, eclectic, quirky	3.74	2318	39
2623	World Extermination	Grindcore	aggressive, apocalyptic, chaotic, heavy, male vocals, misanthropic, angry, energetic, nihilistic, political	3.74	2048	29
2624	Cold Roses	Alt-Country, Americana	male vocals, lonely, melancholic, breakup, introspective, longing, summer, sentimental, love, melodic	3.75	1763	64
2625	DOOM	Industrial Metal, Video Game Music	heavy, instrumental, repetitive, atmospheric, mechanical, dark, aggressive, violence, futuristic, noisy	3.74	1565	21
2626	Super Session	Blues Rock, Electric Blues	male vocals, energetic, psychedelic, passionate, instrumental	3.75	1424	60
2627	Canción animal	Alternative Rock, Pop Rock	melodic, sexual, energetic, male vocals, warm, love, poetic, sensual, melancholic, anthemic	3.74	1607	25
2628	Six	Progressive Rock, Alternative Rock, Art Rock	male vocals, uncommon time signatures, complex, melodic, progressive, energetic, eclectic, psychedelic, quirky, playful	3.74	1445	51
2629	Smoked Out Loced Out	Memphis Rap, Southern Hip Hop	lo-fi, drugs, crime, violence, sexual, male vocals, nocturnal, psychedelic, raw, dark	3.74	1084	11
2630	Crystals	Free Jazz, Experimental Big Band	improvisation, energetic, instrumental, chaotic, dense, avant-garde, passionate, dissonant, spiritual, technical	3.76	834	19
2631	After the Rain	Electric Blues, Chicago Blues	raw, male vocals, passionate, playful, epic, lush, rhythmic, energetic, warm, psychedelic	3.77	593	12
2632	A Handful of Beauty	Jazz Fusion		3.77	481	8
2633	Oblivion Access	Experimental Hip Hop, Abstract Hip Hop	misanthropic, anxious, angry, nihilistic, depressive, existential, abstract, self-hatred, nocturnal, alienation	3.71	5878	38
2634	Ray of Light	Downtempo, Art Pop	female vocals, atmospheric, melodic, meditative, introspective, psychedelic, spiritual, hypnotic, ethereal, poetic	3.71	6002	119
2635	Yerself Is Steam	Neo-Psychedelia, Noise Pop	psychedelic, drugs, noisy, surreal, raw, dense, male vocals, cryptic, anxious, quirky	3.71	5438	103
2636	Big Science	Art Pop, Experimental, Electronic	futuristic, avant-garde, female vocals, cryptic, deadpan, quirky, sparse, cold, minimalistic, surreal	3.71	5134	72
2637	Bloody Kisses	Gothic Metal	sexual, satirical, male vocals, dark, sensual, sarcastic, misanthropic, heavy, nocturnal, melodic	3.71	5206	106
2638	I'll Try Living Like This	Vaporwave, Plunderphonics	surreal, sampling, psychedelic, futuristic, chaotic, atmospheric, hypnotic, dense, anxious, repetitive	3.71	5131	54
2639	Road to Ruin	Punk Rock	rebellious, male vocals, energetic, repetitive, playful, melodic, humorous, anthemic, raw	3.72	4224	71
2640	Change	Indie Rock	melancholic, male vocals, introspective, energetic, lonely, breakup, sentimental, anxious, mellow, autumn	3.73	3364	46
2641	How I Loved You	Folk Rock, Gothic Country	melancholic, sombre, poetic, love, atmospheric, dark, male vocals, depressive, lonely, longing	3.72	4457	38
2642	Burnt Weeny Sandwich	Jazz-Rock, Avant-Prog, Experimental Rock	playful, technical, uncommon time signatures, humorous, eclectic, male vocals, avant-garde, complex, quirky, progressive	3.73	3915	82
2643	Unchained	Americana, Country	male vocals, religious, pastoral	3.74	2265	40
2644	Never, Neverland	Thrash Metal, Technical Thrash Metal	energetic, technical, male vocals, complex, melodic, aggressive, surreal, anxious	3.73	2281	48
2645	Blacklisted	Alt-Country, Singer/Songwriter	female vocals, atmospheric, melodic, nocturnal, dark, introspective, melancholic, passionate, longing, summer	3.74	2043	53
2646	Una semana en el motor de un autobús	Indie Rock	breakup, melancholic, summer, drugs, psychedelic, depressive, noisy, melodic, bittersweet, apathetic	3.74	1858	51
2647	Year of the Cat	Singer/Songwriter, Folk Pop, Pop Rock	male vocals, longing, melancholic, peaceful, love, melodic	3.75	1634	62
2648	Brave	Progressive Rock	atmospheric, introspective, male vocals, concept album, lonely, sombre, melodic, bittersweet, passionate, poetic	3.74	1778	64
2649	American V: A Hundred Highways	Americana, Country	pastoral, poetic, religious, male vocals, acoustic, lonely, death, melancholic, introspective, sombre	3.74	2182	54
2650	The Dark	Heavy Metal, Thrash Metal, US Power Metal	male vocals, heavy, dark, energetic, aggressive	3.74	1565	43
2651	Pop Crimes	Singer/Songwriter, Art Rock	dark, male vocals, melancholic, sombre, sad, depressive, love, noisy, romantic, raw	3.76	1314	16
2652	Secret of the Runes	Symphonic Metal	pagan, mythology, epic, concept album, choral, melodic, triumphant, male vocals, female vocals, progressive	3.72	1316	25
2653	Pixies at the BBC	Alternative Rock, Indie Rock	energetic, male vocals, playful, rebellious, female vocals, passionate, dense, noisy, melodic, raw	3.76	838	23
2654	Plus 4	Hard Bop	improvisation, acoustic, instrumental, warm	3.76	560	13
2655	Concertos for Cello, Violin & Piano	Modern Classical, Concerto	surreal, instrumental, orchestral, atonal, acoustic, avant-garde, dissonant	3.77	379	10
2656	No Dogs Allowed	Twee Pop, Bedroom Pop, Singer/Songwriter	female vocals, quirky, introspective, melodic, humorous, sarcastic, summer, energetic, self-hatred, warm	3.74	1558	12
2657	The Fix	Southern Hip Hop, Gangsta Rap	introspective, crime, rhythmic, violence, religious, sombre, male vocals, conscious	3.74	1526	43
2659	Beyond the Crimson Horizon	Epic Doom Metal, Doom Metal, Traditional Doom Metal	melodic, sombre, heavy, male vocals, dark, fantasy, dense, spiritual, lonely	3.75	847	25
2660	On the Boards	Blues Rock	complex, progressive, male vocals	3.76	791	24
2661	We'll Talk About It Later	Jazz-Rock, Jazz Fusion		3.76	704	13
2662	Movimento perpétuo	Portuguese Music	instrumental, technical, passionate, warm, acoustic	3.77	663	14
2663	Bleeding	Progressive Metal	male vocals, progressive, heavy, complex, energetic, psychedelic, introspective, abstract, melodic, sombre	3.75	647	12
2664	Refazenda	MPB	pastoral, uplifting, abstract, conscious, poetic, male vocals, mellow	3.76	508	10
2665	Flying Microtonal Banana	Psychedelic Rock, Garage Rock	microtonal, psychedelic, desert, hypnotic, rhythmic, male vocals, warm, repetitive, playful, surreal	3.69	10466	58
2666	Some Girls	Rock	male vocals, energetic, playful, rhythmic, love, sexual, eclectic, humorous, sarcastic, lonely	3.71	6485	191
2667	Today	Slowcore, Indie Pop, Dream Pop	mellow, melancholic, calm, warm, introspective, lethargic, lonely, melodic, existential, atmospheric	3.71	5583	49
2668	Labor Days	Abstract Hip Hop, East Coast Hip Hop, Conscious Hip Hop	atmospheric, cryptic, complex, urban, poetic, conscious, male vocals, abstract, philosophical, mysterious	3.7	5897	91
2669	666	Progressive Rock, Psychedelic Rock	apocalyptic, concept album, mythology, Christian, epic, psychedelic, cryptic, progressive, eclectic, chaotic	3.71	4364	108
2670	Workingman's Dead	Folk Rock, Country Rock	mellow, male vocals, melodic, pastoral, soothing, psychedelic, philosophical, melancholic, bittersweet	3.72	4517	130
2671	Mclusky Do Dallas	Noise Rock, Post-Hardcore	aggressive, energetic, sarcastic, angry, raw, humorous, vulgar, noisy, anxious, misanthropic	3.71	4167	69
2672	The Pearl	Ambient	soothing, instrumental, calm, peaceful, meditative, melancholic, ethereal, atmospheric, autumn, hypnotic	3.73	3507	37
2673	Lincoln	Indie Pop, Alternative Rock	humorous, bittersweet, playful, eclectic, quirky, melodic, surreal, male vocals, energetic, satirical	3.72	3647	77
2674	Gone to Earth	Art Pop, Ambient Pop, Ambient	atmospheric, calm, mellow, male vocals, soothing, spiritual, mysterious, soft, warm, lush	3.74	1893	43
2675	3 + 3	Funk, Psychedelic Soul	male vocals, romantic, rhythmic, technical, nocturnal, sensual, uplifting, ballad, happy, melodic	3.75	1714	32
2676	Thelonious Monk With John Coltrane	Hard Bop	instrumental, improvisation, acoustic	3.74	2270	28
2677	Awaken the Guardian	Progressive Metal, Heavy Metal, US Power Metal	fantasy, melodic, progressive, male vocals, complex, mysterious, uncommon time signatures, energetic, epic, cryptic	3.71	2198	70
2678	Leichenschrei	Industrial	mechanical, sampling, dark, noisy, cold, disturbing, atmospheric, scary, chaotic, surreal	3.73	2108	31
2679	"mu" First Part	Free Jazz, Spiritual Jazz	instrumental, spiritual, improvisation, tribal, avant-garde, rhythmic, minimalistic, passionate, ritualistic, natural	3.74	1401	9
2680	Ethiopian Knights	Jazz-Funk	energetic, rhythmic, instrumental, improvisation	3.75	1289	19
2681	Musta seremonia	Death Doom Metal, Death Metal	heavy, ominous, raw, dense, dark, male vocals, death, poetic, aggressive, lo-fi	3.74	1286	10
2682	The Ending Quest	Death Metal	sombre, melancholic, ominous, male vocals, aggressive, dark, heavy, melodic, death, nihilistic	3.74	1167	16
2683	Carol of Harvest	Progressive Folk, Progressive Rock	melancholic, female vocals, psychedelic, longing	3.76	635	29
2684	Memento z banalnym tryptykiem	Progressive Rock, Symphonic Prog	progressive, male vocals, eclectic, complex, happy, energetic	3.76	604	13
2685	Endless Skies	Hard Rock, Folk Rock	fantasy, male vocals, melodic, epic	3.76	570	20
2686	Original Soundtrack From Mosfilm "Solaris"	Film Score, Electroacoustic, Ambient	lonely, atmospheric, ominous, meditative, science fiction, instrumental, suspenseful, melancholic, space	3.75	590	6
2687	El silencio	Latin Alternative, Post-Punk, Alternative Rock	male vocals, melancholic, romantic, melodic, poetic, rhythmic, bittersweet, eclectic, sad, love	3.75	579	7
2688	Hail Infernal Darkness	Death Metal	aggressive, violence, rhythmic, dense, dissonant, heavy, infernal, male vocals, raw, dark	3.74	516	7
2689	Andy Irvine & Paul Brady	Irish Folk Music	warm, acoustic, peaceful, melodic, playful, bittersweet, folklore, pastoral, male vocals	3.78	311	6
2690	In Europe	Electric Blues	female vocals, passionate, raw, longing	3.78	299	8
2691	Close Encounters of the Third Kind	Film Score, Cinematic Classical	ominous, science fiction, mysterious, atmospheric, suspenseful, instrumental, orchestral, melodic, epic	3.78	320	6
2692	Mutter	Neue Deutsche Härte	heavy, energetic, sexual, male vocals, aggressive, sombre, anthemic, martial, ominous, dark	3.69	7287	113
2693	Harvest Moon	Country Rock, Singer/Songwriter, Folk Rock	pastoral, warm, mellow, autumn, male vocals, sentimental, longing, soft, melodic, romantic	3.73	4692	94
2694	Architecture & Morality	Synthpop	melancholic, atmospheric, passionate, ethereal, melodic, male vocals, lush, sombre, winter, cold	3.72	4056	79
2695	Лиловый день	Avant-Folk, Singer/Songwriter, Psychedelic Folk	psychedelic, sampling, poetic, melancholic, surreal, avant-garde, male vocals, sombre, acoustic, mysterious	3.73	1433	25
2696	Taj Mahal	Electric Blues	male vocals, raw, hedonistic, passionate, triumphant, love	3.75	1127	28
2697	Africa Express Presents... Terry Riley's In C Mali	Minimalism, Indeterminacy	rhythmic, hypnotic, repetitive, warm, uplifting, playful, improvisation, energetic, progressive, aleatory	3.77	717	6
2698	And the Cannons of Destruction Have Begun...	Heavy Metal, US Power Metal	epic, male vocals, energetic, melodic, Christian, fantasy	3.74	697	15
2699	Oktubre	Post-Punk	dark, anxious, male vocals, drugs, cryptic, conscious, rebellious, satirical, apocalyptic, ominous	3.75	789	20
2700	Invitation to Openness	Jazz Fusion	calm, rhythmic, nocturnal, dark, warm, sombre, mysterious, instrumental	3.77	374	10
2701	Absolutely Free	Experimental Rock, Psychedelic Rock, Jazz-Rock	sarcastic, humorous, satirical, playful, psychedelic, male vocals, concept album, complex, technical, political	3.71	6200	165
2702	Addicted	Alternative Metal, Industrial Metal	energetic, playful, melodic, heavy, dense, ethereal, female vocals, male vocals, passionate, anthemic	3.7	2919	75
2703	Brilliant Trees	Art Pop	nature, melancholic, male vocals, atmospheric, pastoral, rhythmic, existential, hypnotic, mellow, nocturnal	3.74	2694	49
2705	Transient	Contemporary R&B, Downtempo	sensual, atmospheric, rhythmic, urban, female vocals, nocturnal, romantic, melodic, longing, ethereal	3.76	493	4
2706	Литоургиiа (Litourgiya)	Black Metal	atmospheric, choral, religious, mysterious, male vocals, concept album, aggressive, heavy, passionate, energetic	3.71	5186	43
2707	Damned Damned Damned	Punk Rock	energetic, raw, male vocals, nihilistic, rhythmic, anthemic, lo-fi, hedonistic, violence, playful	3.73	4063	101
2708	Honky Château	Piano Rock, Pop Rock, Singer/Songwriter	male vocals, melodic, mellow, warm, quirky	3.73	3423	76
2709	NOLA	Stoner Metal, Southern Metal, Sludge Metal	male vocals, heavy, drugs, rhythmic, dense, psychedelic, raw, introspective	3.71	3592	91
2710	The Hot Rock	Indie Rock	passionate, melodic, rebellious, romantic, female vocals, breakup, melancholic, LGBT	3.74	2484	36
2711	Winter's Gate	Melodic Death Metal	epic, concept album, melancholic, suite, folklore, male vocals, fantasy, progressive, sombre, atmospheric	3.72	1983	23
2712	Shahen-Shah	Qawwali	spiritual, Islamic, passionate, male vocals, rhythmic, uplifting, warm, repetitive, energetic, hypnotic	3.75	1279	15
2713	Blackout	Hard Rock, Heavy Metal	male vocals, energetic, heavy, romantic, melodic, passionate, anthemic, love	3.72	2987	72
2714	The Key	Technical Death Metal, Death Metal	science fiction, energetic, futuristic, aggressive, complex, anti-religious, technical, heavy, rhythmic, space	3.72	2406	36
2715	Memoria Vetusta II: Dialogue With the Stars	Atmospheric Black Metal	male vocals, sombre, passionate, dark, atmospheric, melodic, nature, melancholic, spiritual, forest	3.73	1929	51
2717	Marcus Garvey	Roots Reggae	conscious, passionate, mellow, political, male vocals, rhythmic, atmospheric, spiritual, sombre, hypnotic	3.74	1943	42
2718	Signos	New Wave	male vocals, melodic, anthemic, playful, rhythmic, atmospheric, energetic, sensual, passionate, bittersweet	3.75	1154	19
2719	Power Plant	Power Metal	energetic, melodic, male vocals, triumphant, science fiction, anthemic, uplifting, fantasy, passionate, heavy	3.72	1104	24
2720	Good for Your Soul	New Wave, Post-Punk	male vocals, playful, energetic, sarcastic, anxious, eclectic, pessimistic, manic	3.76	1038	11
2721	Big Wave	City Pop, Film Soundtrack	summer, melodic, lush, happy, warm, love, Wall of Sound, uplifting, romantic, sentimental	3.76	807	8
2722	Dystopia	Sludge Metal, Crust Punk	misanthropic, nihilistic, conscious, hateful, political, angry, drugs, self-hatred, heavy, pessimistic	3.75	754	7
2723	Dreaming My Dreams	Outlaw Country	introspective, melodic, pastoral, male vocals	3.76	659	13
2724	Punisher	Singer/Songwriter, Indie Folk	mellow, female vocals, lonely, sad, melancholic, longing, introspective, bittersweet, breakup, nocturnal	3.66	13250	139
2725	Darklands	Alternative Rock	melodic, melancholic, male vocals, rain, bittersweet, nocturnal, atmospheric, introspective, poetic, urban	3.71	7053	98
2726	Thunder, Lightning, Strike	Indietronica, Indie Rock, Alternative Dance	energetic, happy, playful, eclectic, sampling, uplifting, lo-fi, triumphant, quirky, female vocals	3.71	4838	124
2727	Eternal Nightmare	Thrash Metal	aggressive, energetic, male vocals, violence, heavy, nihilistic, death, raw, technical, manic	3.73	1843	73
2728	Dixie Chicken	Southern Rock, Boogie Rock	male vocals, rhythmic, romantic, warm, happy, passionate, melodic, mellow	3.74	1319	40
2729	Cuphead	Big Band, Video Game Music	energetic, warm, rhythmic, melodic, playful, lush, uplifting, fantasy, happy, acoustic	3.75	1040	6
2730	Posłuchaj to do ciebie	Post-Punk	male vocals, rhythmic, quirky, anxious	3.76	934	11
2731	The Jazz Messengers	Hard Bop	instrumental, acoustic, improvisation, uplifting, rhythmic, warm, energetic	3.76	848	8
2732	Cannonball Adderley Quintet in Chicago	Hard Bop	acoustic, improvisation, instrumental, dense, rhythmic, energetic, eclectic	3.77	654	15
2733	Dogon A.D.	Free Jazz	uncommon time signatures, improvisation, repetitive, instrumental	3.75	511	9
2734	10.000 anos depois entre Vénus e Marte	Symphonic Prog, Progressive Rock	space, epic, atmospheric, passionate, male vocals	3.76	451	25
2735	I'm Ready	Chicago Blues		3.78	363	8
2736	Room on Fire	Garage Rock Revival, Indie Rock	male vocals, energetic, melodic, urban, rhythmic, apathetic, sexual, sarcastic, rebellious, raw	3.65	15929	266
2737	Hypermagic Mountain	Noise Rock	noisy, chaotic, raw, heavy, manic, male vocals, dense, playful, technical, dissonant	3.72	3916	54
2738	Un canto por México vol. 1	Mexican Folk Music, Ranchera	female vocals, folklore, male vocals, romantic, love, warm, lush, concept album, eclectic, uplifting	3.74	3312	32
2740	Volume 5: The Transfiguration of Blind Joe Death	American Primitivism	instrumental, acoustic, sparse, spiritual, pastoral, meditative, lo-fi, mellow, playful, melancholic	3.74	2574	39
2741	Wrath of the Math	East Coast Hip Hop, Boom Bap, Conscious Hip Hop	conscious, rhythmic, misanthropic, existential, sampling, dark, crime, urban, aggressive, boastful	3.74	1409	35
2742	Solar Fire	Progressive Rock	epic, progressive, space, mythology, male vocals	3.75	1094	31
2743	Bless the Weather	Singer/Songwriter, Contemporary Folk	male vocals, mellow, acoustic	3.75	1308	37
2744	The Dirty South	Southern Rock	concept album, crime, longing, passionate, folklore, history, bittersweet, sombre, conscious, political	3.74	1357	27
2745	Epica	Power Metal	male vocals, rock opera, concept album, fantasy, melodic, energetic, romantic, technical, epic	3.7	1485	25
2746	Government Commissions: BBC Sessions 1996-2003	Post-Rock	instrumental, melancholic, sad, epic	3.75	1401	21
2747	Soul Revolution	Roots Reggae	male vocals, melodic, rebellious, warm, mellow, rhythmic, conscious, tropical, drugs, bittersweet	3.75	1064	32
2748	El Corazón	Alt-Country, Country Rock, Americana	melancholic, male vocals	3.75	950	28
2749	Blues From Laurel Canyon	Blues Rock, British Blues	lonely, atmospheric, male vocals	3.75	879	20
2750	The Psychomodo	Glam Rock, Art Rock, Art Pop	quirky, surreal, playful, male vocals, humorous, ominous, lyrics, rhythmic, abstract, lush	3.75	806	16
2751	L'heptade	Progressive Folk, Symphonic Prog	orchestral, concept album, lush, autumn, melancholic, mysterious, nocturnal, warm, male vocals, female vocals	3.75	807	27
2752	Veritas Diaboli manet in aeternum	Black Metal	ominous, complex, satanic, dissonant, dense, religious, male vocals, dark, atmospheric, apocalyptic	3.71	648	5
2988	Terrible Certainty	Thrash Metal	aggressive, heavy, dark, male vocals, energetic, angry, death, political, violence	3.71	2423	51
2753	Satch Plays Fats: A Tribute to the Immortal Fats Waller	Vocal Jazz	female vocals, male vocals, warm, playful, romantic, sexual, melodic, mellow, soothing, improvisation	3.77	493	13
2754	Life After Death	East Coast Hip Hop, Gangsta Rap, Hardcore Hip Hop	death, concept album, violence, crime, boastful, urban, sampling, dark, male vocals, introspective	3.71	5647	111
2755	HEY WHAT	Post-Industrial, Ambient Pop, Experimental Rock	noisy, avant-garde, abstract, spiritual, female vocals, male vocals, atmospheric, mechanical, heavy, hypnotic	3.72	4355	39
2756	Love Over Gold	Art Rock, Pop Rock, Rock	male vocals, progressive, passionate, nocturnal, epic, mellow, melancholic, rain, atmospheric, melodic	3.71	4306	102
2757	Jaco Pastorius	Jazz Fusion	rhythmic, instrumental, complex, technical, melodic, warm, eclectic, lush	3.74	2456	60
2758	Icon	Gothic Metal	male vocals, melancholic, heavy, religious, melodic, energetic, sombre, dark, epic, nihilistic	3.72	2332	43
2759	Return of the Boom Bap	Boom Bap, East Coast Hip Hop, Conscious Hip Hop, Political Hip Hop	political, angry, conscious, boastful, raw, sampling, philosophical, urban, technical, passionate	3.73	1987	40
2760	Liberty Belle and the Black Diamond Express	Jangle Pop, Indie Pop	playful, bittersweet, male vocals, melancholic, romantic, melodic, uplifting, humorous, rhythmic	3.74	1818	35
2761	The Best Part	East Coast Hip Hop, Boom Bap, Conscious Hip Hop	urban, conscious, sampling, rhythmic, boastful, male vocals	3.74	802	20
2762	Historia podwodna	Post-Punk	political, energetic, complex, dark	3.76	661	6
2763	Porgy & Bess	Vocal Jazz	female vocals, male vocals, melodic, passionate, love, sentimental, calm, bittersweet, romantic, poetic	3.76	569	6
2764	Ni vent... Ni nouvelle	Progressive Rock	instrumental, progressive	3.77	404	15
2765	The Toms	Power Pop	romantic, love, melodic, bittersweet, lo-fi, summer, dense, energetic, raw, melancholic	3.76	386	11
2767	Beauty and the Beat	East Coast Hip Hop, Abstract Hip Hop, Experimental Hip Hop, Psychedelia	psychedelic, sampling, eclectic, energetic, surreal, abstract, male vocals, lush, drugs, atmospheric	3.72	3530	57
2768	Tales From the Thousand Lakes	Melodic Death Metal	folklore, melancholic, male vocals, lonely, mythology, epic, heavy, melodic, concept album, progressive	3.7	3600	84
2769	Another Music in a Different Kitchen	Punk Rock	energetic, male vocals, melodic, raw, love, rebellious, sexual	3.73	3029	51
2770	Flowers From Exile	Neofolk	history, melancholic, war, romantic, martial, warm, poetic, concept album, anarchism, sombre	3.72	2940	35
2771	Eli and the Thirteenth Confession	Pop Soul, Singer/Songwriter, Progressive Pop	passionate, melodic, energetic, female vocals, uncommon time signatures, progressive, uplifting, mellow, alcohol, complex	3.72	2724	70
2772	Księżyc	Avant-Folk	mysterious, ethereal, surreal, nocturnal, psychedelic, atmospheric, female vocals, ominous, pastoral, melodic	3.74	2060	20
2773	La La Land	Show Tunes, Film Soundtrack, Jazz Pop	romantic, male vocals, female vocals, playful, warm, happy, bittersweet, lush, uplifting	3.72	1813	10
2774	Split	Blues Rock, Heavy Psych, Hard Rock	anxious, male vocals, psychedelic, heavy, manic, rhythmic, technical	3.73	1497	46
2775	Nothing to Fear	New Wave	playful, satirical, energetic, male vocals, urban, anthemic, melodic, quirky, surreal, sexual	3.75	1392	17
2776	The Family That Plays Together	Psychedelic Rock	psychedelic, male vocals, rhythmic, melodic, progressive	3.76	1251	46
2777	Amoroso	Bossa nova	love, male vocals, peaceful, calm, nocturnal, romantic, poetic, summer, bittersweet, lush	3.76	860	9
2778	Completely Well	Electric Blues, Blues Rock, Soul Blues	rhythmic, breakup, bittersweet, male vocals, optimistic	3.76	814	13
2779	Kamikaze	Singer/Songwriter, Folk Rock	poetic, melancholic, mellow, introspective, male vocals, atmospheric, psychedelic, philosophical, ethereal, sentimental	3.75	833	16
2780	Muzyka klasyczna	Boom Bap, Hip Hop	sampling, male vocals, rhythmic, urban, dense, melancholic, passionate, introspective, conscious	3.74	872	5
2781	Whatever People Say I Am, That's What I'm Not	Indie Rock, Garage Rock Revival	urban, energetic, sarcastic, male vocals, raw, rhythmic, alcohol, hedonistic, melodic, party	3.61	20479	397
2782	Definitely Maybe	Britpop, Alternative Rock	energetic, melodic, male vocals, uplifting, anthemic, hedonistic, optimistic, passionate, raw, psychedelic	3.64	13288	411
2783	The Mask and Mirror	Celtic New Age, Celtic Folk Music, Contemporary Folk	female vocals, pastoral, bittersweet, melancholic, poetic, spiritual, sentimental, soft, atmospheric, ethereal	3.74	1096	22
2784	The Shawshank Redemption	Film Score, Cinematic Classical	melancholic, orchestral, instrumental	3.77	351	6
2785	Metal Gear Solid 3: Snake Eater	Video Game Music, Cinematic Classical	suspenseful, mysterious, atmospheric, tribal, anxious, forest, instrumental, eclectic	3.77	356	3
2786	Tidal	Singer/Songwriter, Piano Rock	female vocals, introspective, melancholic, sentimental, longing, melodic, angry, passionate, sensual, lonely	3.7	7802	108
2787	The Soft Machine	Canterbury Scene, Psychedelic Rock	psychedelic, male vocals, progressive, quirky, surreal, rhythmic, playful, hypnotic, suite, uncommon time signatures	3.72	4767	108
2788	New History Warfare Vol. 2: Judges	Post-Minimalism, Experimental	dark, sombre, ominous, mysterious, technical, dissonant, surreal, cryptic, hypnotic, minimalistic	3.72	3622	75
2789	Tumbleweed Connection	Piano Rock, Pop Rock, Roots Rock, Singer/Songwriter	pastoral, history, concept album, melodic, male vocals, desert, melancholic, romantic, war, epic	3.72	3034	97
2790	Shleep	Canterbury Scene, Singer/Songwriter, Art Rock	poetic, warm, humorous, quirky, rhythmic, progressive, psychedelic, male vocals, autumn, complex	3.73	2403	32
2791	Marsbéli krónikák	Progressive Rock, Symphonic Prog	science fiction, instrumental, melodic, progressive, complex, futuristic, space, technical	3.74	640	23
2792	Mock Tudor	Singer/Songwriter, Folk Rock	breakup, male vocals, melodic, melancholic, introspective	3.75	634	18
2793	Goodfellas	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	urban, dark, rhythmic, sampling, boastful, male vocals	3.75	622	16
2794	Keine Macht für Niemand	Deutschrock	political, protest, passionate, rebellious, raw, anarchism, alienation, anxious, anthemic, angry	3.75	575	17
2795	La sanie des siècles : Panégyrique de la dégénérescence	Black Metal	medieval, raw, melancholic, lo-fi, male vocals, vulgar, melodic, depressive, sombre, rhythmic	3.7	3178	38
2796	Second Toughest in the Infants	Techno	repetitive, atmospheric, urban, male vocals, nocturnal, hypnotic, progressive, cryptic, rhythmic, dark	3.73	2763	42
2797	A Tab in the Ocean	Progressive Rock, Space Rock	progressive, psychedelic, epic, male vocals, energetic, technical, dense, philosophical	3.74	1912	50
2798	Delta Momma Blues	Singer/Songwriter, Country	acoustic, bittersweet, male vocals, passionate, introspective, poetic, pastoral, melodic, longing, sad	3.75	1464	18
2799	Anabelas	Progressive Rock	complex, progressive, eclectic, energetic, playful, male vocals, technical, passionate, epic	3.74	1270	37
2800	On Land and in the Sea	Art Punk, Progressive Rock, Zolo	manic, playful, humorous, anxious, complex, progressive, quirky, surreal, uncommon time signatures, energetic	3.73	1294	35
2801	Keasbey Nights	Ska Punk, Third Wave Ska	energetic, playful, melancholic, passionate, bittersweet, quirky, male vocals, anxious, sentimental, manic	3.72	1359	33
2802	In the Dark	Roots Reggae	mellow, warm, melodic, summer, bittersweet, male vocals	3.76	550	5
2803	The Andrzej Trzaskowski Quintet	Avant-Garde Jazz, Post-Bop		3.77	470	4
2804	Nuevo día	Flamenco nuevo	poetic, passionate, female vocals, pastoral, melodic, male vocals, melancholic, sentimental, folklore, peaceful	3.77	448	7
2805	Black Saint	Spiritual Jazz, Post-Bop	instrumental, acoustic, improvisation	3.77	436	6
2806	Alternative 4	Alternative Rock	depressive, atmospheric, melancholic, introspective, male vocals, sombre, angry, lonely, existential, anxious	3.71	3630	61
2807	In Search of Space	Space Rock	atmospheric, space, hypnotic, psychedelic, science fiction, drugs, male vocals, progressive, nocturnal, dark	3.73	2839	74
2808	For Alto	Free Improvisation, Modern Creative, Free Jazz	improvisation, instrumental, raw, avant-garde, dissonant, passionate, technical, manic, chaotic, atonal	3.71	2121	38
2809	Dreaming Neon Black	Progressive Metal, Thrash Metal	lonely, pessimistic, dark, concept album, depressive, melancholic, sombre, heavy, introspective, technical	3.72	1822	44
2810	Step in the Arena	East Coast Hip Hop, Jazz Rap	urban, male vocals, boastful, mellow, sampling, conscious, rhythmic, serious, warm, philosophical	3.73	2754	43
2811	Love at First Sting	Hard Rock, Heavy Metal	male vocals, love, energetic, anthemic, sexual, melodic, heavy, romantic, breakup, passionate	3.71	2773	66
2812	Группа крови	New Wave, Post-Punk	melancholic, protest, male vocals, sombre, conscious, war, cold, winter, poetic, apathetic	3.74	2594	18
2813	Rhythm Nation 1814	New Jack Swing, Dance-Pop	political, conscious, rhythmic, concept album, female vocals, urban, passionate, mechanical, love, energetic	3.71	2590	41
2814	Captain Fantastic and the Brown Dirt Cowboy	Pop Rock, Piano Rock	epic, passionate, concept album, happy, male vocals, mellow, warm, melodic, lush	3.73	2436	82
2815	A-Z	Post-Punk	male vocals, cold, lonely, atmospheric, nocturnal, urban, anxious, dark	3.74	1602	28
2816	Hollywood Town Hall	Alt-Country, Country Rock, Americana	bittersweet, pastoral, melodic, male vocals, longing, love, sentimental	3.74	1561	56
2817	Rejuvenation	Funk, New Orleans R&B	rhythmic, uplifting, male vocals, romantic, mellow, melodic, love, lush, sentimental, eclectic	3.75	1417	24
2818	Nadir's Big Chance	Art Rock, Proto-Punk	eclectic, energetic, concept album, melodic, male vocals	3.74	1289	30
2819	Once: Music From the Motion Picture	Singer/Songwriter, Film Soundtrack, Folk Pop	passionate, acoustic, breakup, female vocals, love, male vocals, sentimental	3.74	987	25
2820	Sweet Fanny Adams	Glam Rock, Hard Rock	male vocals, energetic, heavy, melodic, playful, epic, love, bittersweet, passionate, lush	3.74	896	38
2821	The Visit	Celtic New Age, Celtic Folk Music	female vocals, melodic, peaceful, pastoral, bittersweet, passionate, sentimental, ethereal, warm, soft	3.75	931	26
2822	Muzyka poważna	Boom Bap, Hip Hop	urban, rhythmic, introspective, sampling, male vocals, passionate, dense, melancholic, conscious	3.74	889	6
2823	The Anatomy of Addiction	Industrial Metal, Experimental Rock, Industrial	heavy, rhythmic, angry, ritualistic, pessimistic, apocalyptic, repetitive, drugs, tribal, alienation	3.74	757	15
2824	Down Among the Deadmen	Heavy Metal, US Power Metal	science fiction, epic, medieval, fantasy, heavy, male vocals	3.74	753	13
2825	De svarta riterna	Atmospheric Black Metal	raw, cold, atmospheric, lo-fi, male vocals, dissonant, improvisation, winter, pagan	3.75	641	8
2826	Drowner Yellow Swans	Noise, Drone	depressive, noisy, atmospheric, dense, male vocals, bittersweet, lo-fi, disturbing, winter, aquatic	3.74	469	8
2827	Coleman Hawkins Encounters Ben Webster	Cool Jazz, Swing	improvisation, acoustic, instrumental, mellow, playful	3.76	572	8
2828	Blowing In From Chicago	Hard Bop	instrumental, acoustic, improvisation	3.77	356	4
2829	The Room Extended	EAI	avant-garde, sparse, noisy, sampling, improvisation, ominous, sombre, lonely, surreal, nocturnal	3.74	325	3
2830	Spiegel; Monumentum; Momente	Serialism, Orchestral	atonal, suspenseful, ominous, sparse, orchestral, complex, dissonant, chaotic, surreal, avant-garde	3.75	371	6
2831	Out Front	Hard Bop	instrumental, acoustic, improvisation	3.76	345	13
2832	Come, Come to the Sunset Tree	Indie Folk, Singer/Songwriter	lo-fi, drugs, melancholic, lonely, introspective, acoustic, poetic	3.76	389	6
2833	War	Post-Punk, Alternative Rock	war, political, male vocals, passionate, protest, energetic, angry, anthemic, conscious, melodic	3.68	9409	192
2834	Geek the Girl	Singer/Songwriter, Slowcore	sad, lonely, dark, anxious, self-hatred, introspective, female vocals, misanthropic, atmospheric, depressive	3.7	4041	75
2835	Solo Piano	Minimalism	minimalistic, instrumental, acoustic, soothing, repetitive, melancholic, hypnotic, sentimental, calm, bittersweet	3.73	1474	27
2836	Blackheart Man	Roots Reggae	protest, apocalyptic, spiritual, religious, passionate, sentimental, warm, soothing, tropical, calm	3.75	831	27
2837	L'imprudence	Art Pop, Chanson, Nouvelle chanson française	melancholic, poetic, male vocals, sombre, atmospheric, passionate	3.73	824	29
2838	Montrose	Hard Rock	energetic, male vocals, melodic, rebellious, rhythmic, heavy, party, warm, triumphant, playful	3.73	1451	95
2839	With Hearts Toward None	Black Metal	male vocals, atmospheric, melodic, dark, nihilistic, heavy, misanthropic, aggressive, raw, pessimistic	3.71	3072	31
2840	Thrust	Jazz-Funk, Jazz Fusion	instrumental, rhythmic, space, uplifting, improvisation, manic, complex	3.74	2273	43
2841	Oil of Every Pearl's Un-Insides Remix Album (Non Stop)	Deconstructed Club, Techno, UK Bass	mechanical, futuristic, female vocals, heavy, rhythmic, sampling, dense, hypnotic, energetic, surreal	3.72	1865	8
2842	Night of the Stormrider	US Power Metal, Power Metal, Thrash Metal	fantasy, male vocals, dark, aggressive, apocalyptic, concept album, heavy, pessimistic, epic, violence	3.7	1934	55
2843	Spirit	Psychedelic Rock	psychedelic, progressive, male vocals, eclectic, playful, melodic, rhythmic, warm, lush, spiritual	3.74	1681	53
2844	Monuments to Thieves	Crust Punk	angry, heavy, political, dark, chaotic, apocalyptic, male vocals, pessimistic, anarchism, raw	3.74	1570	13
2845	O amor, o sorriso e a flor	Bossa nova	warm, calm, soft, male vocals, soothing, sentimental, acoustic, peaceful, melodic	3.75	950	14
2846	Mighty Joe Moon	Alternative Rock, Americana, Alt-Country	pastoral, energetic, atmospheric, bittersweet, melancholic, lush, introspective, male vocals, passionate, melodic	3.75	906	27
2847	Wede Harer Guzo	Ethio-Jazz	warm, peaceful, calm, summer, lo-fi, happy, playful, uplifting, hypnotic, mellow	3.76	855	6
2848	The Heat Is On	Funk, Smooth Soul, Soul	nocturnal, sensual, conscious, male vocals, sexual, rhythmic, sentimental, love, passionate, playful	3.75	733	21
2849	I'm John Lee Hooker	Electric Blues	rhythmic, sexual, male vocals	3.75	701	11
2850	L.A. Turnaround	Contemporary Folk, Singer/Songwriter, English Folk Music	male vocals, melodic, pastoral, love, poetic, technical, mellow, calm, acoustic, lyrics	3.75	537	13
2851	Bare Knuckle	Video Game Music, Acid House, FM Synthesis, Chiptune	urban, rhythmic, nocturnal, instrumental, melodic, futuristic, energetic, atmospheric, lush, mellow	3.76	503	7
2852	A 18' del sol	Jazz-Rock, Progressive Rock	poetic, male vocals, soft, mellow, melodic, technical, surreal	3.75	643	12
2853	Volume 3	Samba-canção, MPB, Singer/Songwriter	warm, male vocals, spring, poetic, melodic, bittersweet, lush, sentimental, vocal group, calm	3.76	590	6
2854	Workout	Hard Bop	instrumental, acoustic, improvisation, warm, mellow, passionate, energetic, nocturnal	3.77	499	8
2855	Litania: Music of Krzysztof Komeda	ECM Style Jazz	melancholic, hypnotic, atmospheric	3.76	453	8
2856	Special Edition	Avant-Garde Jazz	instrumental, avant-garde, improvisation	3.77	352	8
2857	Alfredo	Gangsta Rap	sampling, male vocals, drugs, crime, violence, boastful, urban, lush, mellow, warm	3.68	10831	84
2858	Balls to the Wall	Heavy Metal	melodic, male vocals, rebellious, heavy, sexual, triumphant, love, anthemic, aggressive	3.7	2797	89
2859	Requiem for a Dream	Film Score, Modern Classical, Cinematic Classical	suspenseful, melancholic, ominous, dark, atmospheric, scary, depressive, anxious, instrumental, drugs	3.72	2145	35
2860	A River Ain't Too Much to Love	Contemporary Folk, Singer/Songwriter	nature, introspective, male vocals, bittersweet, sentimental, pastoral, mellow	3.74	1641	29
2862	Cave Story	Video Game Music, Chiptune, Sequencer & Tracker	rhythmic, melodic, ethereal, soothing, instrumental, mechanical	3.77	327	3
2863	Antisocialites	Indie Pop, Jangle Pop	female vocals, bittersweet, lush, melodic, longing, love, breakup, ethereal, summer, romantic	3.68	9374	82
2864	Disco Volante	Experimental Rock, Experimental	manic, playful, eclectic, avant-garde, chaotic, complex, male vocals, surreal, ominous, aggressive	3.68	5970	154
2865	Force It	Hard Rock	male vocals, melodic, psychedelic, progressive, love, bittersweet, rhythmic, energetic, anxious	3.74	1438	56
2866	Lucinda Williams	Alt-Country, Americana, Singer/Songwriter	female vocals, melodic, longing, warm, rebellious, passionate, love, sarcastic	3.74	1042	35
2867	The All Seeing Eye	Avant-Garde Jazz	improvisation, instrumental, dark, ominous, avant-garde, sombre, nocturnal, concept album	3.74	935	23
2868	Nocny patrol	New Wave, Post-Punk	sensual, female vocals, political, nocturnal, atmospheric, love, passionate, longing, rhythmic	3.75	786	7
2869	Indianola Mississippi Seeds	Electric Blues	male vocals	3.76	541	11
2870	Imperial	Southern Hip Hop, Trap	angry, political, aggressive, crime, urban, drugs, energetic, rebellious, passionate, atmospheric	3.66	11271	50
2871	It Was Written	East Coast Hip Hop, Gangsta Rap, Boom Bap	urban, crime, boastful, male vocals, sampling, conscious, aggressive, violence, rhythmic, dark	3.69	7276	121
2872	A Kiss in the Dreamhouse	Gothic Rock, Post-Punk	psychedelic, sensual, eclectic, atmospheric, mysterious, playful, surreal, energetic, abstract, cryptic	3.73	2792	42
2873	Get Lost	Indie Pop	romantic, sad, melodic, melancholic, sombre, sarcastic, introspective, bittersweet, breakup, poetic	3.73	2363	36
2874	Wolfheart	Gothic Metal	nocturnal, mysterious, sombre, male vocals, dark, sensual, melodic, ominous, hedonistic, romantic	3.72	2097	36
2875	Let Mortal Heroes Sing Your Fame	Atmospheric Black Metal, Symphonic Black Metal	fantasy, epic, triumphant, melodic, male vocals, medieval, atmospheric, repetitive, nature, sampling	3.71	2066	20
2876	Moontower	Progressive Metal	progressive, existential, melodic, male vocals, introspective, heavy, manic, complex, psychedelic, uplifting	3.71	1403	44
2877	The Sky Is Crying	Blues Rock, Electric Texas Blues	improvisation, rhythmic, lethargic, male vocals	3.75	1021	22
2878	Masterplan	Power Metal, Heavy Metal	male vocals, melodic, uplifting, progressive, heavy, fantasy, energetic, rebellious, optimistic, passionate	3.71	945	30
2879	The Rutles	Musical Parody, Pop Rock, Comedy Rock	parody, male vocals, humorous, energetic, uplifting, melodic, playful, mellow, happy	3.72	827	47
2880	Neotokyo	Video Game Music, IDM, Drum and Bass	futuristic, instrumental, urban, science fiction, melancholic, eclectic, atmospheric, lush, passionate, rhythmic	3.73	826	13
2881	Ample Destruction	Heavy Metal, US Power Metal	male vocals, energetic, violence, war, melodic, rhythmic, anthemic, death, triumphant, heavy	3.71	1375	34
2882	The Book of Secrets	Celtic New Age, Celtic Folk Music	ethereal, female vocals, peaceful, melancholic, passionate, pastoral, medieval, fairy tale, melodic, poetic	3.74	1358	35
2883	Sweet Revenge	Singer/Songwriter, Country	male vocals	3.75	795	17
2884	Linea gotica	Alternative Rock, Art Rock	war, religious, epic, sombre, male vocals, female vocals, noisy, death	3.74	743	10
2885	Percussion Bitter Sweet	Hard Bop, Post-Bop	instrumental, bittersweet, female vocals	3.75	620	9
2886	Love Songs for the Apocalypse	Folk Punk	anarchism, drugs, sarcastic, passionate, male vocals, alcohol, acoustic, playful, self-hatred, bittersweet	3.7	779	7
2887	Nic dziwnego	Hip Hop	calm	3.76	541	4
2888	When the World Was One	Spiritual Jazz, Modal Jazz	spiritual, soothing, atmospheric, hypnotic, instrumental, passionate, warm, calm	3.77	424	7
2892	Black Monk Time	Garage Rock, Proto-Punk	energetic, war, rhythmic, playful, male vocals, protest, rebellious, angry, manic, anxious	3.7	5222	139
2893	Exile in Guyville	Indie Rock, Singer/Songwriter	female vocals, sarcastic, melodic, apathetic, sexual, deadpan, vulgar, bittersweet, breakup, love	3.7	4569	109
2894	Witchcult Today	Doom Metal, Stoner Metal	psychedelic, heavy, dark, male vocals, occult, drugs, ominous, sombre, dense, hypnotic	3.72	3688	54
2895	Into the Labyrinth	Neoclassical Darkwave	spiritual, medieval, folklore, mythology, atmospheric, sombre, eclectic, epic, tribal, male vocals	3.73	3095	41
2896	The Southern Harmony and Musical Companion	Southern Rock, Blues Rock	passionate, energetic, pastoral, raw, male vocals	3.72	2083	74
2897	Crimson II	Melodic Death Metal, Progressive Metal	science fiction, fantasy, epic, melodic, progressive, energetic, concept album, complex, male vocals, suite	3.69	1937	45
2898	Depois do fim	Symphonic Prog, Progressive Rock	female vocals, melodic, progressive, fantasy, dark, hypnotic, surreal, playful, atmospheric, nature	3.73	1051	32
2899	Thank Christ for the Bomb	Blues Rock, Hard Rock	war, political, male vocals, dissonant, alienation, energetic, conscious, sarcastic	3.74	978	33
2900	Electric Bath	Experimental Big Band, Third Stream	passionate, instrumental, uplifting, manic, uncommon time signatures, complex, warm	3.76	962	20
2901	Catherine Ribeiro + 2 Bis	Avant-Folk, Psychedelic Folk	passionate, female vocals, manic, rebellious, psychedelic, angry, protest, surreal	3.74	880	27
2902	Donnie Darko	Film Score, Dark Ambient	mysterious, dark, atmospheric, apocalyptic	3.74	943	19
2903	Choice Cuts	Heavy Psych, Hard Rock, Progressive Rock	energetic, psychedelic, raw, drugs, male vocals	3.75	624	21
2904	Statek kosmiczny	Experimental Rock, Psychedelic Rock	psychedelic	3.75	644	4
2905	Corazones	Synthpop	love, passionate, bittersweet, male vocals, melancholic, lonely, sentimental, conscious, introspective, anthemic	3.75	683	15
2906	Symphonic Holocaust	Progressive Rock	dark, anxious, progressive, nocturnal, cryptic, atmospheric, instrumental, epic, complex, dissonant	3.75	615	22
2907	A Man Needs a Woman	Deep Soul, Southern Soul		3.76	469	5
2908	Bicicleta	Progressive Rock	introspective, melodic, poetic, male vocals, conscious, political, epic, longing, complex, playful	3.76	509	8
2909	The Immortal	Piedmont Blues, Country Blues	playful, male vocals, acoustic, melodic, warm	3.77	392	7
2910	Halo	Video Game Music, Cinematic Classical	epic, atmospheric, dark, orchestral, choral, science fiction, futuristic, male vocals, instrumental, female vocals	3.75	415	5
2911	Krigssång	Progressive Rock	male vocals	3.76	341	13
2912	La espada y la pared	Alternative Rock	playful, eclectic, bittersweet, quirky, melancholic, male vocals	3.77	339	6
2913	Damaged	Hardcore Punk	energetic, angry, aggressive, raw, rebellious, male vocals, sarcastic, noisy, nihilistic, alienation	3.66	11522	203
2914	Psychostasia	Death Metal	technical, atmospheric, dissonant, rhythmic, surreal, heavy, dark, male vocals, dense, occult	3.73	1390	17
2915	Sulle corde di Aries	Progressive Rock, Progressive Electronic	atmospheric, male vocals, cryptic, sparse, repetitive, eclectic, avant-garde, existential, poetic, space	3.74	1303	20
2916	Ugly But Honest: 1996-1999	Slowcore	melancholic, male vocals, sad, female vocals, breakup, lethargic, depressive, lo-fi, calm, alcohol	3.74	1307	17
2917	Troubadour	Blues Rock, Country Rock	mellow, love, melodic, warm, male vocals, drugs	3.74	1188	27
2918	Num-Heavymetallic	Post-Hardcore, Art Punk	raw, energetic, noisy, male vocals, sarcastic, eclectic, nihilistic, aggressive, melodic, anxious	3.74	677	3
2919	I'm a Loser	Deep Soul, Southern Soul	female vocals, breakup, depressive, warm, bittersweet, passionate	3.76	564	15
2920	The Biggest Thing Since Colossus	Piano Blues, Chicago Blues	raw, male vocals	3.77	276	7
2921	Going Blank Again	Shoegaze, Alternative Rock	melodic, male vocals, summer, energetic, psychedelic, uplifting, warm, dense, noisy, optimistic	3.71	5619	74
2922	ΚΕΦΑΛΗΞΘ [Psalm 69]	Industrial Metal	mechanical, aggressive, political, anti-religious, angry, misanthropic, male vocals, energetic, sampling, satirical	3.69	4657	95
2923	Relaxin' With the Miles Davis Quintet	Hard Bop	instrumental, acoustic, improvisation, soothing, mellow, energetic, rhythmic, warm	3.73	2867	31
2924	No One Can Do It Better	West Coast Hip Hop, Hardcore Hip Hop	boastful, male vocals, energetic, rhythmic, passionate, urban, sampling	3.73	1496	55
2925	Take As Needed for Pain	Sludge Metal	misanthropic, angry, raw, heavy, drugs, aggressive, disturbing, male vocals, dark, rebellious	3.71	2831	49
2926	Songs for Swingin' Lovers!	Standards, Vocal Jazz	happy, male vocals, romantic, love, sentimental, playful, optimistic, uplifting, passionate, melodic	3.72	2575	72
2927	Fugazi	Neo-Prog	passionate, melodic, introspective, male vocals, eclectic, progressive, lush, uplifting, melancholic, atmospheric	3.72	2473	76
2928	Damage Done	Melodic Death Metal	melancholic, melodic, introspective, sombre, male vocals, philosophical, aggressive, energetic	3.69	2411	31
2929	Almendra	Psychedelic Rock, Psychedelic Pop	melodic, psychedelic, poetic, melancholic, male vocals, peaceful, surreal, philosophical, urban, eclectic	3.72	1992	38
2930	Kristofferson	Outlaw Country, Singer/Songwriter, Progressive Country	male vocals, acoustic, introspective, sarcastic, sombre, melodic, melancholic	3.73	1199	25
2931	Louis Armstrong Plays W. C. Handy	Vocal Jazz, Dixieland	male vocals, acoustic, technical, improvisation, uplifting, happy, warm, humorous, playful, mellow	3.74	1184	28
2932	Where Have I Known You Before	Jazz Fusion	concept album, complex, warm, psychedelic, avant-garde, atmospheric, technical, epic, space, instrumental	3.74	980	25
2933	Martwa polska jesień	Black Metal	male vocals, heavy, dark, energetic, aggressive, autumn, winter, melodic, sombre, atmospheric	3.73	997	5
2934	The World of Cecil Taylor	Avant-Garde Jazz	instrumental, improvisation, acoustic, avant-garde, energetic, mellow, playful, warm, autumn	3.75	891	17
2935	Spring	Progressive Rock	sombre, spring, male vocals, lush, progressive, political, melodic	3.75	785	45
2936	High Priestess of Soul	Vocal Jazz, Soul	female vocals, passionate, lush, romantic, spiritual, religious, melodic, poetic, love, sentimental	3.75	784	12
2937	Runnin-n-Gunnin	Memphis Rap, Gangsta Rap, Southern Hip Hop	crime, lo-fi, dark, death, repetitive, urban, violence, male vocals, nihilistic, raw	3.73	885	2
2939	Aion	Alternative Rock	male vocals, dark, depressive, melancholic, poetic, heavy, progressive, aggressive, existential, ethereal	3.74	515	8
2940	Time for Tyner	Post-Bop, Modal Jazz	acoustic, technical, melodic, playful, energetic, instrumental	3.77	318	4
2941	I'll Play the Blues for You	Electric Blues, Soul Blues		3.77	285	8
2942	Black Foliage: Animation Music Volume 1	Neo-Psychedelia, Psychedelic Pop	surreal, psychedelic, playful, fantasy, cryptic, dense, abstract, male vocals, spring, melodic	3.7	4639	60
2943	Bomber	Heavy Metal, Hard Rock	energetic, heavy, male vocals, rebellious, boastful, aggressive, raw, rhythmic	3.71	3610	65
2945	Death Walks Behind You	Hard Rock, Progressive Rock	progressive, death, male vocals, heavy, dark, energetic, psychedelic, anthemic	3.72	2293	66
2946	Uprising	Roots Reggae	uplifting, conscious, warm, male vocals, political, rhythmic, melodic, religious, happy, love	3.73	2323	35
2947	The Black Ark	Free Jazz, Spiritual Jazz	improvisation, passionate, chaotic, rhythmic, instrumental, dissonant	3.72	1040	15
2948	La llorona	Contemporary Folk, Singer/Songwriter	female vocals, bittersweet, passionate, lush, melancholic, pastoral, melodic, love, sombre, cryptic	3.74	934	22
2949	Hell III	Doom Metal, Sludge Metal, Drone Metal	melancholic, heavy, funereal, male vocals, raw, dark, infernal, repetitive, noisy	3.74	879	5
2950	Blowin' the Blues Away	Hard Bop	playful, acoustic, improvisation, energetic, instrumental	3.76	707	16
2951	Coffin for Head of State	Afrobeat	protest, political, repetitive, religious, rhythmic, angry, male vocals, female vocals, passionate, melodic	3.76	671	9
2952	The Natch'l Blues	Blues		3.75	653	21
2953	Elis	MPB, Vocal Jazz	female vocals, longing, rhythmic, sensual, lush, mellow, conscious	3.76	434	12
2954	Captain Marvel	Jazz Fusion	summer, tropical, warm, improvisation, uplifting, passionate, instrumental	3.77	404	12
2955	I Got Dem Ol' Kozmic Blues Again Mama!	Blues Rock	passionate, female vocals, longing, sexual, love, sentimental	3.73	2088	36
2956	Pandemonium	Industrial Rock, Industrial Metal	heavy, hypnotic, mechanical, philosophical, male vocals, dark, cryptic, apocalyptic, repetitive, dense	3.72	1641	33
2957	The Seaside	Art Punk, Progressive Rock, Zolo	playful, quirky, anxious, uncommon time signatures, complex, energetic, chaotic, male vocals, manic, progressive	3.73	1020	17
2958	Here Come the Lords	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	boastful, rhythmic, dark, urban, aggressive, male vocals, energetic, sampling, crime	3.74	967	22
2959	Forces of Victory	Dub Poetry	political, angry, urban, poetic, rhythmic, rebellious, passionate, conscious, violence, hypnotic	3.75	825	17
2960	SlaughtaHouse	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	crime, urban, rhythmic, male vocals, violence, satirical	3.73	869	19
2961	Deserter's Songs	Chamber Pop, Neo-Psychedelia	lush, fantasy, ethereal, bittersweet, male vocals, atmospheric, melancholic, melodic, poetic, soothing	3.69	6251	133
2962	Bullhead	Sludge Metal	heavy, ominous, rhythmic, male vocals, repetitive, anxious, dark, rebellious, raw, cryptic	3.71	4593	68
2963	Permutation	Nu Jazz, IDM	atmospheric, dark, nocturnal, instrumental, sampling, rhythmic, mysterious, energetic, urban, surreal	3.71	4184	42
2964	Jesus of Cool	Power Pop, New Wave	sarcastic, melodic, male vocals, energetic, playful	3.73	1936	63
2965	Stormcrowfleet	Funeral Doom Metal	sombre, funereal, ethereal, atmospheric, dense, epic, calm, nature, nocturnal, male vocals	3.72	1911	40
2966	Grand Funk	Hard Rock, Heavy Psych	energetic, raw, heavy, male vocals, passionate, psychedelic	3.72	1899	64
2967	Hatfield and the North	Canterbury Scene, Jazz-Rock, Progressive Rock	complex, autumn, playful, uncommon time signatures, technical, melodic, soothing, male vocals, female vocals, quirky	3.73	1717	51
2968	The Eye	Heavy Metal	occult, male vocals, suspenseful, ominous, melodic, concept album, dark, paranormal, heavy, crime	3.73	1516	23
2970	Strangers Almanac	Alt-Country, Americana	lonely, sentimental, sad, alcohol, melancholic, sombre, male vocals, depressive, existential, breakup	3.73	1258	32
2971	Blessing in Disguise	Heavy Metal, US Power Metal, Thrash Metal	male vocals, dark, death, energetic, heavy	3.73	1149	34
2972	Those Deep Buds	Post-Punk, Art Punk	manic, female vocals, avant-garde, rhythmic, noisy, playful	3.74	736	9
2973	Duos for Doris	EAI, Reductionism	improvisation, suspenseful, sparse, ominous, instrumental, melancholic, mysterious, death, spiritual, dissonant	3.72	794	11
2974	No One Cares	Standards, Vocal Jazz	melancholic, lonely, depressive, introspective, suicide, alcohol, male vocals, sad, longing, nocturnal	3.75	672	17
2975	Hooker 'n Heat	Electric Blues, Blues Rock	rhythmic, warm, summer, male vocals, energetic	3.76	610	19
2976	Canções praieiras	Samba-canção, Singer/Songwriter	aquatic, melancholic, nature, male vocals, longing, calm, soothing, sparse, lonely, acoustic	3.75	580	14
2977	Cosa nuestra	Salsa dura	rhythmic, urban, male vocals, energetic, party, boastful, progressive, passionate, happy, breakup	3.76	514	4
2978	Imagination Lady	Blues Rock, Hard Rock	male vocals, rhythmic, raw, psychedelic, passionate, energetic, heavy	3.76	466	21
2979	Kronos Quartet Performs Philip Glass	Post-Minimalism, Chamber Music, Minimalism	string quartet, minimalistic, acoustic, instrumental, sombre	3.76	418	8
2980	Fiu fiu...	Alternative Rock, Post-Punk	dense, soft	3.77	374	3
2981	...And the Circus Leaves Town	Stoner Rock, Stoner Metal	heavy, desert, psychedelic, male vocals, dense, warm, passionate	3.71	4582	82
2982	Drinking Songs	Contemporary Folk, Singer/Songwriter, Slowcore	depressive, alcohol, lonely, dark, alienation, sombre, sad, existential, lethargic, atmospheric	3.7	3640	37
2983	Strangers From the Universe	Indie Rock, Art Rock, Art Punk	humorous, quirky, eclectic, playful, female vocals, male vocals, cryptic, anxious, noisy, abstract	3.72	2805	19
2984	City of Caterpillar	Screamo, Post-Hardcore	anxious, melancholic, passionate, atmospheric, male vocals, energetic, sombre, aggressive, epic, dark	3.7	2742	26
2985	In C	Minimalism, Indeterminacy	polyphonic, repetitive, rhythmic, minimalistic, hypnotic, warm, instrumental, playful, uplifting, acoustic	3.72	2530	49
2986	The Wicked Pickett	Southern Soul, Deep Soul		3.77	355	7
2987	Indiana Jones and the Last Crusade	Film Score, Cinematic Classical	orchestral	3.74	396	5
2989	Testimony of the Ancients	Death Metal, Technical Death Metal	dark, heavy, philosophical, aggressive, male vocals, complex, progressive, technical, death	3.71	2150	31
2990	Interstellar	Film Score, Ambient	space, orchestral, instrumental, suspenseful, atmospheric, mysterious, anxious, lush, melancholic, futuristic	3.71	1988	16
2991	Makin' Magick	Outsider House	warm, sampling, happy, optimistic, uplifting, energetic, quirky, rhythmic, playful, party	3.73	1824	19
2992	The Sinking of the Titanic	Minimalism	repetitive, atmospheric, melancholic, sombre, instrumental, sampling, sentimental, aquatic, spiritual, ethereal	3.72	1463	29
2993	Feats Don't Fail Me Now	Southern Rock	passionate, rhythmic, energetic, eclectic	3.74	933	31
2994	Open Sesame	Hard Bop	improvisation, mellow, nocturnal, warm, acoustic, playful, passionate, energetic, instrumental	3.75	916	17
2995	Witchi-Tai-To	ECM Style Jazz	spiritual, instrumental, melodic, passionate	3.75	830	13
2996	Rainy Day Music	Alt-Country, Pop Rock	melancholic, melodic, male vocals	3.74	861	30
2997	The Dwelling	Black Metal, Thrash Metal	satanic, nocturnal, energetic, mysterious, infernal, occult, male vocals, death, rhythmic, ritualistic	3.71	818	22
2998	Misery Index	Deathgrind	aggressive, heavy, pessimistic, male vocals, anarchism, political, raw, nihilistic, angry, alienation	3.73	1500	13
2999	Shift	Grindcore	political, aggressive, rhythmic, angry, chaotic, energetic, apocalyptic, heavy	3.72	1198	12
3000	Angels of Distress	Funeral Doom Metal	ethereal, male vocals, death, melancholic, sombre, nocturnal, funereal, atmospheric, depressive, dark	3.71	1125	19
3001	Genocide & Juice	West Coast Hip Hop, Political Hip Hop, Conscious Hip Hop	protest, political, rebellious, male vocals, conscious, humorous, rhythmic, female vocals	3.72	797	16
3003	Marcus' Children	Roots Reggae	spiritual, hypnotic, male vocals, conscious, rhythmic, passionate, mellow	3.77	378	7
3004	Apocalypse Now	Film Score, Spoken Word	war, ominous, apocalyptic, chaotic, suspenseful	3.75	352	9
3005	A Saucerful of Secrets	Psychedelic Rock	psychedelic, surreal, mysterious, space, atmospheric, male vocals, hypnotic, progressive, avant-garde, abstract	3.64	17144	316
3007	Wildlife	Post-Hardcore	passionate, anxious, death, poetic, sad, concept album, serious, introspective, angry, energetic	3.69	4111	59
3008	Actually	Synthpop	melodic, male vocals, rhythmic, LGBT, bittersweet, energetic, sarcastic, nocturnal, melancholic, urban	3.71	3660	59
3009	Please	Synthpop, Dance-Pop	male vocals, rhythmic, urban, nocturnal, LGBT, melodic, sarcastic, party, atmospheric, sensual	3.71	3422	61
3010	Jazz in Silhouette	Post-Bop	instrumental, improvisation, spiritual, psychedelic, space, warm, passionate, nocturnal	3.73	3000	46
3011	Streethawk: A Seduction	Indie Rock, Chamber Pop	poetic, passionate, philosophical, melodic, male vocals, bittersweet, lush, quirky, warm, love	3.72	2393	33
3012	Johnny the Fox	Hard Rock	melodic, energetic, male vocals, concept album, triumphant, anthemic, crime, epic, playful, rhythmic	3.73	2107	62
3013	Felona e Sorona	Symphonic Prog, Progressive Rock	space, lush, progressive, dark, melancholic, atmospheric, lonely, concept album, melodic, epic	3.72	1515	51
3014	Ezz-thetics	Modal Jazz, Avant-Garde Jazz	energetic, nocturnal, instrumental, urban, acoustic, quirky, improvisation, technical, melodic, avant-garde	3.74	963	16
3015	Ceux du dehors	Rock in Opposition, Avant-Prog	chamber music, instrumental, dark, complex, ominous, fantasy, avant-garde, uncommon time signatures	3.72	1219	19
3017	The Real New Fall LP: Formerly Country on the Click	Post-Punk	surreal, cryptic, energetic, male vocals, raw, sarcastic, aggressive, rhythmic, repetitive	3.74	1254	33
3018	Biglietto per l'Inferno	Progressive Rock	sombre, dark, male vocals, mysterious, complex, existential, raw, introspective, progressive, passionate	3.74	929	23
3019	The Way Up	Jazz Fusion	uncommon time signatures, instrumental, complex, passionate, eclectic	3.74	906	23
3020	In the Heart of the Moon	Mande Music, Songhai Music	melodic, mellow, soothing, calm, acoustic, peaceful, repetitive, spiritual, instrumental, warm	3.76	761	20
3021	Milton	MPB, Singer/Songwriter	melancholic, melodic, warm, sentimental, male vocals, poetic, lush	3.76	626	5
3022	El escarabajo más grande de Europa	Indie Pop	melodic, melancholic, surreal, male vocals, playful, poetic, introspective, quirky, sentimental, winter	3.74	448	6
3023	Far Canal	Progressive Rock, Heavy Psych		3.76	381	16
3024	Deus Ex: Human Revolution	Video Game Music, Electronic	futuristic, atmospheric, urban, nocturnal, science fiction, dark, apocalyptic, instrumental	3.73	376	11
3025	Cabaret	Cabaret, Film Soundtrack, Show Tunes	humorous, playful, dark, nocturnal, bittersweet, melodic, progressive, sarcastic, passionate, love	3.75	371	10
3026	We Get Requests	Cool Jazz	instrumental, soft, melodic	3.77	353	3
3027	Graduation	Pop Rap	triumphant, boastful, uplifting, anthemic, optimistic, male vocals, sampling, happy, energetic, melodic	3.57	30136	248
3028	Murray Street	Noise Rock, Indie Rock, Alternative Rock	male vocals, noisy, warm, dissonant, female vocals, bittersweet, psychedelic, hypnotic, summer, rhythmic	3.69	6564	92
3029	Mob Rules	Heavy Metal	male vocals, heavy, energetic, fantasy, passionate, dark, anthemic, nocturnal, melodic, sombre	3.68	6527	140
3030	The Pleasure Principle	Synthpop, New Wave	futuristic, anxious, science fiction, cold, mechanical, atmospheric, male vocals, quirky, rhythmic, alienation	3.7	5053	110
3031	Diary of a Madman	Heavy Metal, Hard Rock	male vocals, anthemic, dark, energetic, fantasy, melodic, occult, heavy	3.7	4384	142
3032	The Disintegration Loops II	Tape Music, Ambient, Minimalism	repetitive, ethereal, minimalistic, hypnotic, atmospheric, instrumental, sombre, sparse, aleatory, soothing	3.69	3752	31
3033	New Age of Earth	Progressive Electronic, Space Ambient	peaceful, ethereal, instrumental, soothing, space, atmospheric, warm, mellow, progressive, futuristic	3.72	2858	42
3034	Ruun	Progressive Metal, Black Metal	dark, complex, male vocals, atmospheric, mythology, progressive, heavy, epic	3.71	2009	34
3035	The Odyssey	Progressive Metal	uncommon time signatures, melodic, energetic, complex, mythology, epic, male vocals, progressive, fantasy, triumphant	3.7	2112	66
3036	Knock Knock	Singer/Songwriter	pastoral, introspective, cryptic, mellow, male vocals, breakup, sarcastic, bittersweet, sentimental, warm	3.72	2903	38
3037	Vovin	Symphonic Metal	female vocals, male vocals, epic, choral, mythology, atmospheric, occult, melodic, mysterious, progressive	3.69	1510	26
3038	I Feel Alright	Country Rock, Alt-Country, Americana, Singer/Songwriter	introspective, passionate, male vocals, longing, bittersweet, drugs, pastoral, love	3.73	999	28
3039	Music for K	Free Jazz	energetic, improvisation, instrumental, avant-garde	3.74	793	8
3040	Pile of Skulls	Heavy Metal, Power Metal	energetic, male vocals, melodic, anthemic, fantasy, epic, rebellious	3.73	780	13
3041	The Winter Ray	Post-Rock	mysterious, lonely, hypnotic, nocturnal, dark, cold, instrumental, winter, atmospheric, anarchism	3.73	778	13
3042	Locura	Synthpop, New Wave	sexual, male vocals, sensual, melodic, LGBT, hedonistic, urban, nocturnal, passionate, mellow	3.73	640	8
3043	The Deep End, Volume 1	Southern Rock, Hard Rock	male vocals	3.75	394	10
3044	I'm Never Gonna Die Again	Punk Blues	noisy, dark, depressive, deadpan, poetic, male vocals, aggressive	3.76	318	5
3045	Good Morning Spider	Indie Rock, Lo-Fi / Slacker Rock	lonely, existential, anxious, melancholic, dark, male vocals, melodic, eclectic, bittersweet, lo-fi	3.72	2807	47
3046	Ella Fitzgerald Sings the George and Ira Gershwin Song Book	Vocal Jazz, Standards	female vocals, romantic, playful, mellow, orchestral, lush	3.73	709	18
3047	Lubbock (On Everything)	Progressive Country, Singer/Songwriter, Country	male vocals, humorous, playful, sarcastic, melodic, mellow, rebellious, hedonistic, satirical, passionate	3.72	566	13
3048	Befriended	Folk Pop	soothing, calm, mellow, female vocals, introspective, peaceful, poetic, bittersweet, sentimental, pastoral	3.75	574	13
3049	Highway to Hell	Hard Rock	energetic, sexual, male vocals, rebellious, rhythmic, raw, boastful, hedonistic, nocturnal, melodic	3.61	11105	329
3050	Black Up	Experimental Hip Hop, Abstract Hip Hop	surreal, mysterious, dark, hypnotic, nocturnal, atmospheric, spiritual, futuristic, male vocals, cryptic	3.68	7181	84
3051	Music From the Unrealized Film Script, Dusk at Cubist Castle	Neo-Psychedelia, Psychedelic Pop	psychedelic, melodic, spring, lo-fi, atmospheric, male vocals, eclectic, warm, surreal, playful	3.7	5034	92
3053	Superficies de placer	New Wave	sensual, hedonistic, male vocals, tropical, summer, LGBT, drugs, mysterious, warm, sexual	3.76	350	3
3054	Lost Wisdom	Indie Folk, Singer/Songwriter	melancholic, acoustic, male vocals, lonely, female vocals, poetic, mysterious, sparse, lo-fi, melodic	3.71	4134	24
3055	Unit Structures	Free Jazz	chaotic, improvisation, instrumental, passionate, atonal, energetic, dissonant, dense, complex, avant-garde	3.71	2611	50
3056	For the Roses	Singer/Songwriter, Folk Pop, Contemporary Folk	female vocals, complex, melodic, introspective, love, pastoral, spring, poetic, bittersweet, mellow	3.73	2578	57
3057	Sea Shanties	Heavy Psych, Progressive Rock	heavy, energetic, psychedelic, male vocals, noisy, raw, progressive, aggressive, dark, rhythmic	3.72	1985	73
3058	Rastaman Vibration	Roots Reggae	male vocals, warm	3.73	1836	44
3059	Moondawn	Berlin School, Progressive Electronic	instrumental, rhythmic, space, hypnotic, progressive, psychedelic, futuristic, ominous, nocturnal, repetitive	3.73	1700	26
3060	Extreme Conditions Demand Extreme Responses	Deathgrind, Grindcore	angry, political, energetic, male vocals, aggressive, heavy, anti-religious, apocalyptic, dark, raw	3.72	1742	25
3061	Day of Reckoning	Traditional Doom Metal, Doom Metal	infernal, drugs, male vocals, dark, heavy, sombre, introspective, ominous	3.72	1661	36
3062	Thunder and Lightning	Hard Rock, Heavy Metal	energetic, male vocals, melodic, heavy, anthemic, playful, rhythmic, triumphant, sentimental	3.72	1656	54
3063	Music From the Film "Aguirre"	Film Score, Krautrock	instrumental, atmospheric, ethereal, mysterious, warm, calm, peaceful, mellow	3.73	1627	26
3064	Afreaka!	Psychedelic Soul, Funk	rhythmic, psychedelic, progressive, male vocals, surreal, complex, tropical, mysterious	3.73	1398	37
3065	Bridge Across Forever	Symphonic Prog, Progressive Rock	spiritual, Christian, epic, progressive, religious, male vocals, complex	3.71	1293	37
3066	Second Winter	Blues Rock, Electric Texas Blues		3.73	862	35
3067	I Can't Stand the Rain	Southern Soul	female vocals	3.75	789	20
3068	Fantaisie militaire	Nouvelle chanson française, Chanson	poetic, melancholic, atmospheric, romantic, male vocals, sombre, passionate, lush, existential	3.74	1122	19
3069	Sueño Stereo	Alternative Rock	psychedelic, male vocals, lush, atmospheric, uplifting, hypnotic, ethereal, warm, mellow, eclectic	3.74	942	17
3070	Guitarra portuguesa	Portuguese Music	instrumental, passionate, warm, technical, acoustic, melodic, soothing, uplifting, longing, melancholic	3.75	739	18
3071	La Biblia	Progressive Rock, Rock Opera	concept album, Christian, male vocals, religious, epic, poetic, rock opera, passionate, progressive, lo-fi	3.75	532	18
3072	Как я стал предателем	Art Rock, New Wave	energetic, rhythmic, anxious, warm, male vocals, sarcastic, abstract, playful, humorous, quirky	3.74	705	3
3073	Johnny Burnette and the Rock 'n Roll Trio	Rockabilly	energetic, rhythmic, male vocals, lonely, passionate, playful, love, longing, hedonistic, raw	3.74	670	14
3074	Love, Love	Jazz Fusion	atmospheric, rhythmic, mysterious, uncommon time signatures	3.75	485	13
3075	The Melody at Night, With You	ECM Style Jazz	melodic, peaceful, soft, mellow, instrumental, introspective, calm, acoustic, soothing, ballad	3.75	512	13
3076	System of a Down	Alternative Metal	political, energetic, angry, sarcastic, manic, aggressive, heavy, male vocals, quirky, playful	3.64	11878	225
3077	Blind Faith	Blues Rock, British Blues	psychedelic, melodic, male vocals, lonely, improvisation, rhythmic, sentimental, hypnotic	3.71	3765	127
3078	Porgy and Bess	Big Band, Progressive Big Band	instrumental, orchestral, nocturnal, mellow, lush, melancholic, acoustic, uplifting, warm, composition	3.72	3333	67
3079	Side by Side	Swing, Big Band	instrumental, rhythmic, uplifting, playful, energetic, triumphant	3.76	359	6
3080	Kala	UK Hip Hop, Electropop	eclectic, political, playful, female vocals, aggressive, conscious, tribal, energetic, sarcastic, rhythmic	3.66	9131	150
3081	Under the Pink	Singer/Songwriter, Art Pop	bittersweet, female vocals, melodic, poetic, lush, sexual, ballad, mellow, sentimental, winter	3.72	3559	96
3082	Nemesis Divina	Black Metal	epic, energetic, dark, heavy, melodic, male vocals, aggressive, anti-religious, pagan, cold	3.71	2928	28
3083	(A) Senile Animal	Sludge Metal	heavy, rebellious, aggressive, energetic, sarcastic, male vocals, dense, angry, rhythmic, raw	3.72	2342	36
3084	Communion	Death Metal, Symphonic Metal	epic, mythology, male vocals, dark, melodic, orchestral, occult, heavy, death, ominous	3.68	2181	38
3085	In the Rectory of the Bizarre Reverend	Doom Metal, Traditional Doom Metal	epic, repetitive, fantasy, heavy, occult, dark, male vocals, melancholic, death, sombre	3.71	1965	51
3086	Memoria Vetusta I: Fathers of the Icy Age	Atmospheric Black Metal, Black Metal	epic, cold, atmospheric, fantasy, energetic, male vocals, aggressive, melodic, sombre, death	3.72	1906	19
3087	Visions	Power Metal	melodic, energetic, male vocals, epic, atmospheric, passionate, conscious, love, heavy	3.67	1758	47
3088	Time of the Last Persecution	Singer/Songwriter, Folk Rock	introspective, philosophical, apocalyptic, melancholic, male vocals, poetic, religious, raw, passionate, spiritual	3.73	1332	39
3089	European Echoes	European Free Jazz	infernal, chaotic, manic, avant-garde, noisy, dense, atonal, instrumental, dissonant, acoustic	3.72	1014	9
3090	Safe + Sound	West Coast Hip Hop, Gangsta Rap, G-Funk	sexual, vulgar, summer, party, boastful, playful, urban, male vocals, lush	3.72	1042	21
3091	Ghosts	Progressive Rock	male vocals, melodic, progressive	3.75	548	20
3092	Penguin Eggs	English Folk Music, Contemporary Folk	male vocals, acoustic, folklore, pastoral, melancholic, mythology, warm, soothing	3.74	422	13
3093	Straight Ahead	Hard Bop	instrumental, acoustic, playful	3.76	390	6
3094	Drowning by Numbers	Post-Minimalism, Film Score	ensemble, melancholic, acoustic, minimalistic, sombre, atmospheric, bittersweet, instrumental, ominous	3.75	422	5
3095	Detta har hänt	Progressive Rock	technical, uncommon time signatures, instrumental	3.75	345	14
3096	Frengers	Dream Pop, Indie Pop	androgynous vocals, melancholic, lush, bittersweet, winter, ethereal, longing, melodic, soft, energetic	3.7	3936	68
3097	공중도덕 (Gongjoong Doduk)	Psychedelic Folk, Psychedelic Pop, Avant-Folk	psychedelic, playful, soft, acoustic, abstract, surreal, pastoral, autumn, mellow, male vocals	3.72	3081	11
3098	Apocalypse 91...The Enemy Strikes Black	Political Hip Hop, East Coast Hip Hop, Hardcore Hip Hop, Conscious Hip Hop	protest, energetic, aggressive, political, sampling, noisy, angry, male vocals, rhythmic, conscious	3.71	2579	63
3099	Nancy & Lee	Baroque Pop, Country Pop	female vocals, male vocals, pastoral, lush, melodic, warm, mellow, romantic, sentimental, love	3.71	2221	42
3100	History Will Absolve Me	East Coast Hip Hop, Hardcore Hip Hop, Abstract Hip Hop, Conscious Hip Hop	political, conscious, male vocals, dark, aggressive, sampling, abstract, rhythmic, urban, sarcastic	3.71	2425	22
3101	Dreamworld	Memphis Rap, Horrorcore, Southern Hip Hop	dark, nocturnal, ominous, lo-fi, hypnotic, violence, crime, urban, atmospheric, mysterious	3.72	2210	14
3102	Energy	Ska Punk, Punk Rock	energetic, political, male vocals, humorous, urban, protest, rhythmic, rebellious, playful, passionate	3.7	2051	64
3103	Into the Electric Castle: A Space Opera	Rock Opera, Progressive Rock, Progressive Metal	rock opera, fantasy, male vocals, female vocals, epic, science fiction, melodic, complex, progressive, space	3.67	2043	53
3104	Feel the Fire	Thrash Metal	rebellious, violence, male vocals, death, aggressive, heavy, energetic	3.71	1885	37
3105	Måltid	Rock in Opposition, Avant-Prog	energetic, humorous, complex, uncommon time signatures, progressive, male vocals, avant-garde, playful, ..., quirky	3.73	1524	33
3106	Nosferatu	US Power Metal, Speed Metal, Heavy Metal	male vocals, energetic, melodic, rhythmic, fantasy, epic, technical, heavy, death, progressive	3.71	1216	34
3107	Black Moses	Smooth Soul, Soul	passionate, sensual, male vocals, romantic, rhythmic, epic, bittersweet, sexual, poetic, melancholic	3.74	1105	19
3108	Volume 16: For da Summa of '94	Memphis Rap, Southern Hip Hop, Gangsta Rap	rhythmic, summer, sampling, raw, crime, drugs, lo-fi, male vocals, vulgar, nocturnal	3.72	411	3
3109	A Space in Time	Blues Rock, Hard Rock	melodic, psychedelic, political, mellow, male vocals	3.73	1485	46
3110	They Say I'm Different	Funk	passionate, sexual, melodic, rebellious, rhythmic, psychedelic, female vocals, playful, raw	3.74	1253	19
3111	Nantucket Sleighride	Hard Rock, Blues Rock, Heavy Psych	heavy, playful, male vocals, psychedelic, passionate	3.73	1245	39
3112	The Skull	Traditional Doom Metal, Doom Metal	religious, sombre, heavy, Christian, male vocals, serious, epic, optimistic, nocturnal, dark	3.73	1034	29
3113	Timeless	Jazz Fusion	technical, complex, psychedelic, improvisation, pastoral, instrumental, lush, energetic, soothing, calm	3.74	874	20
3114	きくおミク6 (Kikuo Miku 6)	Art Pop, Progressive Pop	surreal, playful, female vocals, melancholic, dark, death, eclectic, abstract, complex, quirky	3.73	907	7
3115	Far From the Madding Crowd	Power Metal, Progressive Metal, Folk Metal	fantasy, complex, pastoral, nature, male vocals, melodic, triumphant, uncommon time signatures, epic, energetic	3.66	735	26
3116	ゲームボーイ『ポケモン』のサウンドがまるごと入って、遊べるCD (GameBoy 『Pokémon』 no Sound ga Marugoto Itte, Asoberu CD)	Video Game Music, Chiptune	triumphant, playful, optimistic, instrumental, energetic, happy, polyphonic	3.73	688	24
3117	The Devil Made Me Do It	Political Hip Hop, West Coast Hip Hop, Hardcore Hip Hop, Conscious Hip Hop	political, rhythmic, raw, sampling, dark, philosophical, violence, protest, serious, ominous	3.72	695	22
3118	The Pink Panther	Film Score, Lounge	instrumental, soothing	3.75	541	10
3119	Harry Potter and the Prisoner of Azkaban	Film Score, Cinematic Classical		3.74	405	5
3120	Trois couleurs: Bleu	Modern Classical, Film Score, Choral		3.75	347	2
3121	Müptezhel	Trap	male vocals, drugs, urban, crime, nocturnal, sexual, hedonistic, sensual, love, party	3.65	465	4
3122	Akira	Film Score, Tribal Ambient, Dark Ambient	surreal, atmospheric, violence, philosophical, suspenseful	3.75	317	3
3123	The Witch Doctor	Hard Bop	instrumental, rhythmic, energetic, urban, improvisation, melodic	3.76	280	3
3124	Year of the Snitch	Experimental Hip Hop, Abstract Hip Hop	chaotic, cryptic, male vocals, sampling, surreal, dark, manic, avant-garde, abstract, eclectic	3.62	17732	131
3125	Circles	Neo-Soul	bittersweet, male vocals, introspective, melancholic, sad, mellow, death, lonely, sentimental, existential	3.66	11392	115
3126	Bright Green Field	Art Punk, Post-Punk, Experimental Rock	manic, male vocals, anxious, quirky, abstract, energetic, rhythmic, playful, complex, progressive	3.66	10242	123
3127	Y	Post-Punk, Experimental Rock, Art Punk	rhythmic, dissonant, anarchism, political, ominous, avant-garde, noisy, raw, male vocals, manic	3.67	7153	118
3128	Fever	Dance-Pop, Nu-Disco, Electro-Disco	energetic, party, love, sensual, female vocals, romantic, optimistic, futuristic, rhythmic, passionate	3.69	3644	63
3129	Space Is the Place	Avant-Garde Jazz	space, science fiction, manic, improvisation, avant-garde, energetic, female vocals, chaotic, dense, male vocals	3.71	3336	55
3130	Equinoxe	Progressive Electronic	futuristic, space, instrumental, ethereal, suite, progressive, atmospheric, sombre, rain, melancholic	3.72	2826	48
3131	Blow by Blow	Jazz-Rock	technical, complex, instrumental, rhythmic, epic, lush, playful	3.72	2760	99
3132	The Human Menagerie	Glam Rock, Art Pop	male vocals, melodic, playful, quirky, lush, eclectic, passionate	3.73	939	22
3133	Art Pepper Meets the Rhythm Section	Cool Jazz	instrumental, acoustic, improvisation, rhythmic	3.74	836	12
3134	Quella Vecchia Locanda	Progressive Rock, Symphonic Prog	male vocals, progressive, complex, fantasy, poetic, uncommon time signatures, concept album, melodic	3.73	824	19
3135	Tristan et Iseult	Zeuhl, Film Score	dark, epic, martial, uncommon time signatures, atmospheric, war, science fiction, chaotic, sparse, avant-garde	3.73	814	18
3136	Burn the Sun	Progressive Metal	male vocals, complex, energetic, melodic, progressive	3.71	834	35
3137	T-Bone Blues	Electric Texas Blues	passionate, longing, playful, melodic, male vocals, rhythmic, energetic, mellow, uplifting	3.75	450	10
3138	Symphonies of Sickness	Death Metal, Goregrind	death, manic, vulgar, heavy, disturbing, male vocals, ominous, raw, violence, chaotic	3.7	3509	70
3139	Document #8	Screamo, Emoviolence	aggressive, passionate, male vocals, anxious, introspective, ominous, death, energetic, sombre, noisy	3.7	3240	30
3140	Whatever and Ever Amen	Piano Rock, Alternative Rock	breakup, melancholic, love, satirical, self-hatred, passionate, humorous, boastful, angry, melodic	3.72	2764	74
3141	A Boy ボーイ	Chamber Folk, Singer/Songwriter, Psychedelic Folk	bittersweet, acoustic, sad, mellow, nocturnal, female vocals, melancholic, soft, existential, rain	3.72	1248	9
3142	Spooky Two	Blues Rock	male vocals, passionate	3.73	1085	39
3143	Mr. Scarface Is Back	Gangsta Rap, Southern Hip Hop	death, nihilistic, male vocals, vulgar, crime, misanthropic, aggressive, angry, drugs, boastful	3.72	1211	31
3144	O.gród K.oncentracyjny (dwa dni później)	Alternative Rock, Poetry, Art Rock	poem, urban, male vocals, conscious, poetic, atmospheric, nocturnal, surreal, eclectic	3.74	661	0
3145	?	Progressive Rock, Christian Rock, Symphonic Prog	Christian, epic, male vocals, religious, triumphant, melodic, concept album, passionate, longing	3.7	643	18
3146	Lonesome, On'ry and Mean	Outlaw Country	male vocals, pastoral, bittersweet, melodic, sentimental, introspective, acoustic	3.74	428	8
3147	O canto livre de Nara	Bossa nova, Samba-Jazz	lush, female vocals, rhythmic, mellow, warm, conscious, poetic, bittersweet, passionate, sentimental	3.76	424	8
3148	Bullitt	Film Score, Jazz-Funk, Lounge	atmospheric	3.74	487	9
3149	Man of the Light	Post-Bop, Jazz Fusion		3.75	473	6
3150	Knife Play	Experimental Rock, Synth Punk	suicide, LGBT, sad, depressive, noisy, death, raw, lonely, anxious, male vocals	3.69	5191	42
3151	Nail	Industrial Rock, Experimental Rock, Industrial	misanthropic, satirical, angry, manic, energetic, chaotic, nihilistic, raw, dark, apocalyptic	3.67	4320	53
3152	Destroyer's Rubies	Chamber Pop, Indie Rock	melodic, passionate, abstract, philosophical, male vocals, poetic, love, bittersweet, quirky, lush	3.7	3660	75
3153	Axioma Ethica Odini	Progressive Metal	complex, epic, mythology, atmospheric, dark, philosophical, progressive, male vocals, melodic, sombre	3.68	2616	59
3154	Attack of the Grey Lantern	Britpop, Alternative Rock	concept album, melodic, male vocals, quirky, psychedelic, humorous, noisy, passionate, lush, energetic	3.71	1691	55
3155	光のカケラ (Hikari No Kakera)	Shoegaze	noisy, epic, male vocals, passionate, atmospheric, ethereal, heavy, lo-fi, psychedelic, warm	3.73	722	3
3156	Jazz Samba Encore!	Samba-Jazz, Bossa nova	calm, instrumental, rhythmic, warm, summer, tropical, female vocals, melodic	3.75	663	10
3157	Harsh Realities	Grindcore	heavy, aggressive, energetic, male vocals, raw, dense, apocalyptic, political, hateful, angry	3.73	622	7
3158	Firebirds	Avant-Garde Jazz	improvisation, instrumental, complex, melodic	3.76	320	8
3159	Niemen vol. 2	Progressive Rock	poetic, male vocals	3.76	343	8
3160	Filmworks XIII: Invitation to a Suicide	Film Soundtrack, Chamber Jazz	chamber music, improvisation, concept album, dark, autumn, suicide, melodic, avant-garde, uncommon time signatures, instrumental	3.75	333	7
3161	Blues Breakers	Blues Rock, British Blues	male vocals, passionate, energetic, love, playful, repetitive	3.7	3407	106
3162	Mingus Dynasty	Post-Bop	complex, playful, energetic, instrumental, technical, acoustic	3.74	1522	17
3163	Dirty Acres	Southern Hip Hop, Conscious Hip Hop, Political Hip Hop	melancholic, sampling, political, atmospheric, male vocals, sensual, conscious, mellow	3.7	1525	53
3164	Stranglers IV (Rattus Norvegicus)	New Wave, Punk Rock	sarcastic, energetic, vulgar, rhythmic, male vocals, rebellious, anxious, urban, psychedelic, raw	3.71	3040	75
3165	Forgotten Legends	Atmospheric Black Metal	pagan, hypnotic, atmospheric, repetitive, sombre, male vocals, forest, autumn, rain, nature	3.71	2580	35
3166	Scientist Rids the World of the Evil Curse of the Vampires	Dub	Halloween, hypnotic, warm, tropical, rhythmic, male vocals, repetitive, psychedelic, nocturnal, paranormal	3.72	2266	54
3167	Steig aus	Jazz-Rock, Krautrock	psychedelic, improvisation, instrumental, atmospheric, melodic, rhythmic, progressive	3.73	1380	32
3168	Split Personalities	Indie Rock	LGBT, anxious, passionate, ethereal, noisy, romantic, energetic, introspective, warm, male vocals	3.73	1071	13
3169	All the Footprints You've Ever Left and the Fear Expecting Ahead	Screamo	passionate, anxious, energetic, heavy, dark, cold, atmospheric, melancholic, aggressive, male vocals	3.7	2955	25
3170	Souvenirs	Art Rock	female vocals, atmospheric, ethereal, mysterious, melancholic, sombre, mellow, dark, hypnotic, nocturnal	3.72	1896	38
3171	Southeastern	Singer/Songwriter, Americana	sad, soft, introspective, serious, lonely, melancholic, bittersweet, pastoral, male vocals, drugs	3.72	1484	23
3172	Squeezing Out Sparks	Pub Rock	deadpan, sarcastic, poetic, love, passionate, angry, male vocals, energetic	3.74	1084	40
3356	Bad Girls	Disco	rhythmic, female vocals, party, sexual, energetic, love, repetitive, sensual, passionate, lush	3.72	1786	45
3174	All We Got Iz Us	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	dark, aggressive, nihilistic, crime, violence, urban, male vocals, raw, misanthropic, angry	3.72	789	29
3175	Cornbread	Hard Bop	improvisation, instrumental	3.75	629	11
3176	Dread Beat an' Blood	Dub Poetry	protest, rebellious, serious, poetic, angry, urban, political, introspective, rhythmic, conscious	3.75	602	12
3177	The Amazing Bud Powell, Vol. 2	Bebop	acoustic, instrumental, improvisation, rhythmic	3.75	574	9
3178	Come With Me 2 Hell, II: Lords of Terror	Memphis Rap, Southern Hip Hop, Gangsta Rap, Horrorcore	lo-fi, repetitive, dark, violence, crime, infernal, sampling, male vocals, mysterious, raw	3.71	632	4
3179	The Art Tatum - Ben Webster Quartet	Cool Jazz, Stride	instrumental, soothing, nocturnal, calm, improvisation, acoustic, romantic	3.75	541	7
3180	Slow Turning	Singer/Songwriter, Americana		3.74	489	18
3181	Speak Kindly of Your Volunteer Fire Department	Lo-Fi / Slacker Rock, Indie Rock	melodic, lo-fi, passionate, male vocals, cryptic, abstract, eclectic	3.75	469	5
3182	Playing the Piano	Modern Classical	instrumental, calm, melancholic, mellow, peaceful	3.75	496	2
3183	Tom Zé	MPB, Singer/Songwriter	playful, male vocals, peaceful, humorous, warm	3.75	458	7
3184	Leeway	Hard Bop	instrumental	3.75	417	9
3185	O monstro precisa de amigos	Alternative Rock	nocturnal, melodic, playful, male vocals	3.74	400	9
3186	Island: Eine Sinfonie in 10 Sätzen	Modern Classical, Drone, Symphony	instrumental, ominous, repetitive, ritualistic, dissonant, infernal, symphony, avant-garde	3.71	317	2
3187	De natura sonorum	Musique concrète, Electroacoustic	mysterious, instrumental, dissonant, mechanical, futuristic, complex, technical, avant-garde, atmospheric, surreal	3.71	1230	15
3188	Under the Skin	Film Score, Drone, Electroacoustic	hypnotic, ominous, atmospheric, dissonant, repetitive, suspenseful, cold, mysterious, instrumental, scary	3.72	1186	11
3189	A Social Grace	Progressive Metal	technical, uncommon time signatures, complex, existential, heavy, male vocals, nihilistic, progressive, energetic, suspenseful	3.7	1129	28
3190	The Exciting Wilson Pickett	Southern Soul, Deep Soul	male vocals, energetic, melodic, rhythmic, uplifting, playful, romantic, passionate, summer, love	3.74	943	15
3191	Essence	Alt-Country, Singer/Songwriter	female vocals, passionate, longing, melancholic, love, bittersweet, mellow, calm, introspective	3.74	903	34
3193	Willis Alan Ramsey	Singer/Songwriter, Country Rock	bittersweet, male vocals, acoustic, melodic	3.74	315	12
3194	Aerial	Art Pop, Ambient Pop	poetic, warm, ethereal, romantic, spring, female vocals, soothing, melancholic, peaceful, nature	3.7	4692	134
3195	Königsforst	Ambient Techno, Minimal Techno, Ambient	hypnotic, mellow, repetitive, atmospheric, forest, instrumental, calm, ethereal, rhythmic, soothing	3.7	3707	29
3196	A Dawn to Fear	Atmospheric Sludge Metal, Post-Metal	atmospheric, male vocals, dark, dense, heavy, melancholic, epic, sombre, passionate, nocturnal	3.71	2765	30
3197	Walls of Jericho	Speed Metal, Power Metal	energetic, male vocals, triumphant, melodic, epic, fantasy, heavy, raw	3.68	3094	80
3198	In It for the Money	Britpop	male vocals, energetic, melodic, bittersweet, psychedelic	3.71	2402	64
3199	Somewhere City	Midwest Emo, Emo-Pop	energetic, optimistic, uplifting, quirky, passionate, male vocals, melodic, concept album, anthemic, summer	3.71	2202	17
3200	Private Parts	Spoken Word, New Age	meditative, calm, cryptic, soothing, ethereal, minimalistic, male vocals, philosophical, poetic, peaceful	3.7	1666	20
3201	Samurai Champloo Music Record: Impression	Instrumental Hip Hop, Television Music	instrumental, mellow, rhythmic, sampling, meditative, atmospheric, ethereal, lush, soothing, hypnotic	3.73	1393	6
3202	I Ain't Marching Anymore	Contemporary Folk, Singer/Songwriter, Northern American Music	protest, acoustic, political, conscious, rebellious, melodic, male vocals, war	3.72	1246	29
3203	Masterpieces by Ellington	Big Band	acoustic, female vocals, melodic, mellow, romantic, technical, melancholic	3.74	944	22
3204	Девушки поют	Art Rock, Jazz-Rock	complex, melancholic, manic, technical, male vocals, uncommon time signatures	3.73	714	10
3205	Below the Salt	British Folk Rock	medieval, folklore, female vocals, male vocals, a cappella, lyrics, uplifting, ballad, pastoral	3.74	661	22
3206	Internal Flight	New Age, Flamenco nuevo	instrumental, ethereal, acoustic, atmospheric, uplifting, meditative, spiritual, technical, repetitive, calm	3.74	645	5
3207	Raw Sienna	Blues Rock	mellow, male vocals, drugs, longing	3.75	626	22
3208	Garra	MPB, Samba Soul	warm, political, rhythmic, uplifting, melodic, male vocals, conscious, lush, eclectic, bittersweet	3.74	628	13
3210	Extension of a Man	Soul	male vocals, rhythmic, uplifting, passionate, triumphant, lush, sentimental, pastoral, bittersweet, surreal	3.74	696	18
3211	E seu violão	Contemporary Folk, Singer/Songwriter	acoustic, poetic, melancholic, male vocals, concept album, nature, soothing, calm, tropical, death	3.73	594	14
3212	The Locust Years	Progressive Metal, Heavy Metal	progressive, female vocals, male vocals, political, energetic, war, passionate, heavy	3.72	568	12
3213	The Salmon of Doubt	Neo-Psychedelia, Experimental Hip Hop, Experimental	avant-garde, abstract, noisy, sampling, psychedelic, poetic, eclectic, hypnotic, sombre, lo-fi	3.7	539	5
3214	Vietato ai minori di 18 anni?	Progressive Rock	male vocals, uncommon time signatures, depressive, complex, dark, melancholic, progressive, aggressive, angry, energetic	3.75	356	17
3215	Os Tincoãs	Samba, Afoxé	spiritual, male vocals, warm, uplifting, summer, religious, optimistic, happy, melodic, rhythmic	3.76	357	6
3216	Members, Don't Git Weary	Post-Bop	instrumental, improvisation, pastoral, mysterious, warm, suspenseful, spiritual, peaceful, nocturnal, melodic	3.76	331	8
3217	The Battle of Los Angeles	Rap Metal, Alternative Metal	political, angry, energetic, male vocals, protest, aggressive, rebellious, heavy, conscious, urban	3.65	10322	164
3218	Victorialand	Dream Pop, Ethereal Wave, Ambient Pop	ethereal, atmospheric, soothing, calm, female vocals, mysterious, peaceful, winter, meditative, cryptic	3.69	6406	90
3219	Bluffer's Guide to the Flight Deck	Neo-Psychedelia, Indie Pop	bittersweet, mellow, atmospheric, longing, existential, introspective, poetic, lush, melancholic, love	3.7	2175	49
3220	Danzig III: How the Gods Kill	Heavy Metal, Hard Rock, Blues Rock	male vocals, occult, heavy, dark, rhythmic, energetic	3.71	2050	35
3221	Anno Domini High Definition	Progressive Rock, Progressive Metal	progressive, male vocals, melodic, epic, heavy, atmospheric, introspective, melancholic, uncommon time signatures	3.69	2196	69
3222	Refavela	MPB	warm, spiritual, sentimental, male vocals, summer, eclectic, dense, conscious	3.74	356	4
3223	Tender Buttons	Indietronica, Dream Pop	female vocals, bittersweet, hypnotic, surreal, melodic, raw, lo-fi, psychedelic, abstract, noisy	3.69	6343	58
3224	Who Will Cut Our Hair When We're Gone?	Indie Pop	death, playful, anxious, paranormal, humorous, male vocals, quirky, melodic, eclectic, lo-fi	3.68	5971	94
3225	Ash Ra Tempel	Krautrock, Psychedelic Rock	psychedelic, atmospheric, suspenseful, dense, hypnotic, instrumental, ritualistic, improvisation, mysterious, nocturnal	3.7	3491	72
3226	Light as a Feather	Jazz Fusion	mellow, female vocals, energetic, passionate, playful, bittersweet, happy, peaceful	3.73	1673	27
3227	Cowboy in Sweden	Country Pop, Baroque Pop, Singer/Songwriter	pastoral, mellow, melancholic, male vocals, love, female vocals, introspective, lush, bittersweet, melodic	3.71	1494	39
3228	Manassas	Country Rock, Folk Rock	melodic, male vocals, concept album, eclectic, passionate, warm, calm, pastoral	3.73	1264	52
3229	Thunder and Consolation	Post-Punk	conscious, melodic, sarcastic, passionate, dark, sombre, rhythmic, pastoral, political, male vocals	3.73	1040	24
3230	The Ghost of Cain	Post-Punk, Alternative Rock	energetic, anthemic, sombre, angry, protest, dark, male vocals, nocturnal, atmospheric	3.74	845	9
3231	The Monad of Creation	Funeral Doom Metal	melancholic, funereal, poetic, nocturnal, mysterious, existential, heavy, abstract, lethargic, melodic	3.72	868	10
3232	A New Perspective	Hard Bop		3.74	821	19
3233	Nocel	Black Metal, Post-Metal	sombre, atmospheric, heavy, anxious, nocturnal, dark, complex, melancholic, psychedelic, nihilistic	3.73	872	8
3234	Los delirios del Mariscal	Progressive Rock	technical, uncommon time signatures, complex, instrumental, male vocals	3.74	540	20
3235	Una más (One More Time)	Hard Bop		3.76	471	8
3236	Echoes of a Friend	Spiritual Jazz	passionate, spiritual, longing, sentimental, dense, acoustic, technical, energetic, instrumental	3.75	389	9
3237	Cantiga de longe	MPB, Bossa nova	soft, male vocals	3.75	367	6
3238	La mosca y la sopa	Blues Rock	political, playful, male vocals, energetic, poetic	3.74	356	6
3239	FooL on CooL generation	Power Pop, Television Music, J-Rock, Alternative Rock	playful, melodic, melancholic, male vocals, energetic, passionate	3.75	360	2
3240	Alenar	Nova cançó, Singer/Songwriter	female vocals, passionate, mellow, acoustic, melodic, pastoral	3.74	276	4
3241	Lizard	Progressive Rock, Symphonic Prog	complex, fantasy, uncommon time signatures, progressive, playful, philosophical, cryptic, male vocals, medieval, psychedelic	3.67	10089	188
3242	Malibu	Neo-Soul	warm, sexual, summer, mellow, melodic, playful, male vocals, lush, introspective, urban	3.67	9685	58
3243	Transatlanticism	Indie Rock, Indie Pop	melancholic, lonely, bittersweet, sad, autumn, introspective, longing, male vocals, breakup, melodic	3.65	9925	172
3244	Amber	IDM, Ambient Techno	atmospheric, mysterious, hypnotic, rhythmic, instrumental, mechanical, repetitive, soothing, cold, futuristic	3.68	7979	82
3245	Music for the Jilted Generation	Big Beat, Breakbeat	energetic, party, sampling, urban, mechanical, dark, rhythmic, aggressive, nocturnal, male vocals	3.69	5711	74
3246	Hidden History of the Human Race	Death Metal, Progressive Metal	technical, space, male vocals, science fiction, uncommon time signatures, complex, heavy, mythology, atmospheric, mysterious	3.68	4744	40
3247	Phallus Dei	Krautrock, Psychedelic Rock	psychedelic, progressive, pagan, tribal, avant-garde, male vocals, surreal, nocturnal, hypnotic, manic	3.7	4793	107
3248	Night Train	Cool Jazz	instrumental, nocturnal, mellow, improvisation, acoustic, soothing	3.73	1378	28
3249	Hier kommt der schwartze Mond	Slowcore, Space Rock, Neo-Psychedelia	atmospheric, melancholic, soft, hypnotic, mellow, meditative, nocturnal, lethargic, lo-fi, space	3.72	1222	10
3250	On the Shore	British Folk Rock	folklore, male vocals, female vocals, melodic	3.74	1075	40
3251	Sonic Excess in Its Purest Form	Sludge Metal	dark, heavy, melancholic, male vocals, melodic, angry, aggressive, misanthropic, sombre, pessimistic	3.73	1084	13
3252	Hub-Tones	Hard Bop	instrumental, improvisation, soothing	3.74	703	14
3253	가장 보통의 존재	Pop Rock, Indie Rock	melodic, mellow, soft, male vocals, melancholic, bittersweet	3.72	723	7
3254	The Rite of Strings	Jazz Fusion	uplifting, melodic, instrumental	3.75	334	4
3255	Gossip	Singer/Songwriter	longing, male vocals, melodic	3.75	324	12
3256	Zauberberg	Ambient Techno, Minimal Techno, Ambient	hypnotic, repetitive, ominous, forest, instrumental, atmospheric, dark, sombre, minimalistic, dense	3.7	3556	23
3257	Electr-o-Pura	Indie Rock, Noise Pop	noisy, melodic, bittersweet, male vocals, female vocals, love, autumn, sentimental, mellow, longing	3.71	3402	62
3258	Free Your Mind... and Your Ass Will Follow	Psychedelic Rock, Funk Rock, Acid Rock	psychedelic, drugs, heavy, spiritual, rhythmic, noisy, improvisation, political, raw, surreal	3.71	3243	65
3259	Eldorado	Symphonic Rock, Art Rock, Progressive Pop	concept album, lush, melodic, complex, mysterious, orchestral, male vocals, progressive, fantasy, alienation	3.7	3211	94
3260	The Least We Can Do Is Wave to Each Other	Progressive Rock	philosophical, male vocals, complex, progressive, fantasy, poetic, cold, melodic, quirky, apocalyptic	3.71	3054	60
3261	Songs for Drella	Art Rock	concept album, melancholic, humorous, male vocals, minimalistic, death, bittersweet	3.71	2889	61
3262	Nia	West Coast Hip Hop, Conscious Hip Hop	uplifting, rhythmic, playful, conscious, lush, male vocals, abstract, sampling, autumn, urban	3.72	1335	30
3263	March 16–20, 1992	Americana, Alt-Country	male vocals, pastoral, bittersweet, melancholic, acoustic, sad, melodic, conscious, depressive	3.73	1172	25
3264	The Mandé Variations	Mande Music	acoustic, calm, meditative, instrumental, melodic, soothing, warm, technical, soft, atmospheric	3.74	854	25
3265	Cabeça dinossauro	Punk Rock, Alternative Rock	political, aggressive, sarcastic, energetic, misanthropic, anarchism, violence, male vocals, rebellious, conscious	3.72	864	17
3266	Negro é lindo	MPB, Samba-rock, Samba Soul	male vocals, romantic, mellow, rhythmic, sentimental, sports, acoustic, passionate, lush	3.75	663	11
3267	Confesiones de invierno	Folk Rock, Folk Pop, Contemporary Folk	melodic, urban, melancholic, warm, poetic, male vocals	3.74	647	10
3268	Continuo	Chamber Jazz, Post-Bop	instrumental, acoustic, technical	3.74	547	6
3269	Testimony	Progressive Rock, Symphonic Prog, Christian Rock	Christian, male vocals, religious, triumphant, melodic, epic, concept album	3.7	510	17
3270	Out of the Afternoon	Post-Bop	improvisation, melodic, bittersweet, melancholic, poetic, technical, soothing, composition, acoustic, dense	3.75	400	6
3271	ファイナルファンタジーIV (Final Fantasy IV)	Video Game Music, 16-bit	epic, fantasy, instrumental, atmospheric, science fiction, melodic, war, triumphant	3.74	400	10
3272	E	Alternative R&B, Art Pop	ethereal, androgynous vocals, cold, alienation, drugs, anxious, atmospheric, self-hatred, futuristic, melodic	3.65	9102	62
3273	R.A.P. Music	Southern Hip Hop, Hardcore Hip Hop	political, angry, crime, urban, aggressive, energetic, male vocals, violence, boastful, rebellious	3.67	6507	100
3274	Soundtracks	Krautrock, Psychedelic Rock	psychedelic, rhythmic, hypnotic, repetitive, male vocals, progressive, raw, playful	3.69	6175	99
3275	Public Strain	Post-Punk, Indie Rock	winter, lonely, lo-fi, cold, androgynous vocals, melancholic, cryptic, noisy, raw, urban	3.68	5999	50
3276	Last Fair Deal Gone Down	Alternative Rock	dark, depressive, atmospheric, melancholic, lonely, sad, male vocals, introspective, alienation, pessimistic	3.7	2881	36
3277	The Complete Guide to Insufficiency	Singer/Songwriter, Avant-Folk	melancholic, acoustic, lonely, depressive, introspective, death, male vocals, repetitive, funereal, sombre	3.71	2480	33
3278	Force Majeure	Progressive Electronic, Progressive Rock	instrumental, futuristic, progressive, atmospheric, suspenseful, space, complex, melodic	3.71	2310	48
3279	The Henry Cow Legend	Rock in Opposition, Canterbury Scene	complex, improvisation, uncommon time signatures, playful, avant-garde, rhythmic, instrumental, dissonant, dense, progressive	3.71	2316	45
3280	Silence Is Sexy	Post-Industrial, Art Pop, Experimental, Art Rock	minimalistic, sparse, playful, poetic, mysterious, mechanical, suspenseful, lonely, existential, cold	3.71	2152	34
3281	Aerial Ballet	Baroque Pop	bittersweet, introspective, male vocals, lonely, psychedelic, melodic, love, sentimental, uplifting, lush	3.72	1936	49
3282	Blast Tyrant	Stoner Rock, Hard Rock	energetic, heavy, male vocals, rhythmic, psychedelic, drugs, paranormal, boastful	3.7	2085	23
3283	King of the Dead	Heavy Metal	male vocals, fantasy, apocalyptic, energetic, heavy, epic, rhythmic, melodic, angry, raw	3.71	1861	43
3284	There Will Be Blood	Modern Classical, Film Score	ominous, suspenseful, sombre, dark, atmospheric, chamber music, anxious, instrumental, melancholic, desert	3.72	1832	44
3285	Flygod	East Coast Hip Hop, Hardcore Hip Hop	drugs, crime, rhythmic, sampling, nocturnal, dark, violence, urban, male vocals, serious	3.72	1366	9
3286	Звезда по имени Солнце	Post-Punk, New Wave	melancholic, male vocals, rhythmic, sentimental, sparse, conscious, abstract, apathetic, dark, poetic	3.72	1228	9
3287	Silent Cries and Mighty Echoes	Progressive Rock, Space Rock	atmospheric, melodic, philosophical, male vocals, epic, spiritual, space	3.73	1129	43
3288	Hymnvs	Ambient	melancholic, cold, mysterious, atmospheric, lonely, calm, winter, instrumental, ominous, dark	3.73	1027	22
3289	Lady Pank	New Wave, Pop Rock		3.73	740	6
3290	Chemist	Avant-Garde Jazz	suspenseful, hypnotic, sparse, repetitive, instrumental, psychedelic, atmospheric, improvisation, minimalistic	3.74	684	11
3291	Italyan, Rum Casusu Çikti	Comedy Rock	humorous, complex, male vocals, parody, vulgar, technical, satirical, eclectic, uncommon time signatures, happy	3.71	675	11
3292	Manfred Mann Chapter Three	Jazz-Rock	male vocals, playful, ominous	3.73	569	15
3293	Waiters on the Dance	Progressive Rock, Psychedelic Rock	heavy, female vocals, concept album, progressive, science fiction	3.74	422	23
3294	Duke Ellington Meets Coleman Hawkins	Jazz	acoustic, instrumental, nocturnal, warm, ballad, technical, melodic, playful, poetic, passionate	3.75	391	10
3295	Sim City	Art Pop, Progressive Pop	science fiction, LGBT, concept album, atmospheric, melodic, cryptic, rhythmic, surreal, sampling, ethereal	3.74	429	2
3296	If You Saw Thro' My Eyes	Singer/Songwriter, British Folk Rock	introspective, calm, bittersweet, sentimental, male vocals	3.74	397	19
3297	Chapter One: Latin America	Latin Jazz, Spiritual Jazz	passionate, acoustic, improvisation, instrumental, rhythmic, folklore, energetic, pastoral, male vocals, anxious	3.75	344	2
3298	Ben Webster Meets Oscar Peterson	Cool Jazz, Standards, Jazz	improvisation, instrumental, mellow, warm, acoustic, autumn	3.75	350	4
3299	The Impossible Kid	Abstract Hip Hop, East Coast Hip Hop	cryptic, complex, conscious, poetic, abstract, male vocals, introspective, rhythmic, sampling, eclectic	3.68	6101	61
3300	Live Through This	Grunge, Alternative Rock	angry, rebellious, female vocals, energetic, passionate, sarcastic, anxious, introspective, sombre, hateful	3.67	5907	116
3301	White Chalk	Singer/Songwriter, Chamber Folk	lonely, melancholic, depressive, dark, female vocals, sad, introspective, sombre, atmospheric, poetic	3.7	4838	137
3302	T H E	Math Rock, J-Rock	female vocals, complex, passionate, energetic, melodic, uncommon time signatures, quirky, playful, sentimental, technical	3.7	4107	25
3303	Madman Across the Water	Piano Rock, Pop Rock	melodic, love, romantic, passionate, cryptic, uplifting, playful, male vocals, spiritual, melancholic	3.7	3372	94
3304	I Should Coco	Britpop, Power Pop	male vocals, energetic, playful, humorous, hedonistic, melodic, quirky, manic	3.7	3320	66
3305	Out of Season	Contemporary Folk	female vocals, introspective, melancholic, atmospheric, sombre, lush, autumn, sad, acoustic, soft	3.71	3050	54
3306	The Red in the Sky Is Ours	Death Metal	complex, sombre, male vocals, dark, chaotic, technical, melodic, progressive, anti-religious, nihilistic	3.7	2949	71
3307	The Great Misdirect	Progressive Metal	male vocals, technical, progressive, complex, heavy, uncommon time signatures, eclectic, energetic, dense, aggressive	3.68	2861	68
3308	Buddy Holly	Rockabilly, Rock & Roll	love, melodic, uplifting, male vocals, romantic, longing, passionate, rhythmic, happy, energetic	3.71	2085	32
3309	Eros	Avant-Prog, Zeuhl	instrumental, uncommon time signatures, playful, technical, energetic, science fiction, complex, avant-garde, progressive, quirky	3.71	1666	32
3451	Further Definitions	Swing, Bebop	warm, instrumental	3.75	353	8
3310	Elizium	Gothic Rock	atmospheric, ethereal, dark, nocturnal, hypnotic, male vocals, sombre, introspective, melancholic, mysterious	3.71	2037	40
3311	John Coltrane and Johnny Hartman	Vocal Jazz	romantic, male vocals, love, melodic, nocturnal, soothing, calm, sentimental, sensual, mellow	3.72	2033	51
3312	Illusions	Thrash Metal, Technical Thrash Metal	energetic, aggressive, death, male vocals, heavy, raw, manic, violence, angry, dark	3.71	1609	34
3313	For kunsten maa vi evig vike	Melodic Black Metal, Black Metal	melodic, male vocals, raw, sombre, aggressive, longing, atmospheric, nocturnal, occult, ominous	3.71	1488	26
3314	Rodrigo y Gabriela	Acoustic Rock	acoustic, instrumental, technical, energetic, summer, warm, melodic, tropical, rhythmic	3.72	1398	31
3315	First Take	Soul	female vocals, melancholic, warm, ballad, sentimental, sensual, lush, bittersweet	3.74	940	27
3316	Grave New World	Progressive Rock	progressive, complex, warm, peaceful, spiritual, bittersweet, male vocals, spring, lush, pastoral	3.72	973	26
3317	Miss America	Singer/Songwriter	female vocals, manic, lush, melancholic, introspective, anxious, sad, quirky, longing, breakup	3.73	949	39
3318	Hijos del agobio	Andalusian Rock, Progressive Rock	passionate, psychedelic, melodic, epic, progressive, male vocals, mysterious	3.74	632	22
3320	Häntä koipien välissä	Pop Rock	humorous, melodic, sombre, sarcastic, male vocals	3.72	310	7
3321	Waiting for the Sun	Psychedelic Rock	psychedelic, male vocals, poetic, love, passionate, eclectic, mysterious, melodic, bittersweet, romantic	3.67	10028	185
3322	Chutes Too Narrow	Indie Pop	melodic, summer, bittersweet, male vocals, melancholic, breakup, uplifting, cryptic, poetic, warm	3.67	7901	184
3323	My War	Hardcore Punk, Sludge Metal	raw, anxious, aggressive, male vocals, heavy, angry, dark, misanthropic, introspective, alienation	3.68	6937	111
3324	Lianne La Havas	Neo-Soul, Singer/Songwriter	female vocals, passionate, warm, lush, love, mellow, introspective, soft, bittersweet, soothing	3.69	5743	62
3325	LC	Art Rock, Dream Pop, Post-Punk	atmospheric, calm, sparse, peaceful, meditative, melancholic, minimalistic, male vocals, mysterious, ethereal	3.7	3488	55
3326	Up on the Sun	Cowpunk, Alternative Rock	male vocals, warm, rhythmic, summer, nature, lethargic, psychedelic, mellow	3.71	2799	43
3327	Wanted: Dead or Alive	East Coast Hip Hop, Hardcore Hip Hop	rhythmic, urban, sampling, boastful, male vocals, energetic, crime, conscious, dark, sexual	3.72	843	23
3328	Trust Us	Alternative Rock	male vocals, raw, eclectic, progressive, passionate, mellow, psychedelic	3.73	794	13
3329	This Is My Country	Chicago Soul	male vocals, political, romantic, uplifting, love, passionate	3.74	672	11
3330	À vontade	Bossa nova, Choro, Samba-Jazz	calm, mellow, instrumental, technical, melodic, summer, bittersweet, passionate, lush, sentimental	3.74	691	9
3331	Buena Vista Social Club Presents Ibrahim Ferrer	Afro-Cuban Jazz, Bolero	rhythmic, warm, tropical, mellow, melodic, male vocals, romantic	3.75	729	10
3332	Desert Places	Progressive Rock, Blues Rock		3.73	511	28
3333	s.o.n.o.g.r.a.m.	Conscious Hip Hop	Islamic, conscious, introspective, urban, male vocals, political, mellow	3.74	568	15
3334	Fabulosos calavera	Latin Alternative, Art Rock	eclectic, death, male vocals, bittersweet, poetic, energetic, rebellious, introspective, infernal, concept album	3.74	477	8
3335	La Mer; Nocturnes; Jeux; Rhapsodie pour clarinette et orchestre	Impressionism, Orchestral	orchestral, acoustic, instrumental, soft, nocturnal, melodic, meditative, atmospheric, aquatic, bittersweet	3.75	346	4
3336	...And Out Come the Wolves	Punk Rock	energetic, male vocals, angry, anthemic, rebellious, melodic, uplifting, urban	3.69	3454	113
3337	Deluxe	Krautrock, Electronic	ethereal, warm, repetitive, meditative, mellow, futuristic, male vocals, space, instrumental, epic	3.71	2339	46
3338	The Congregation	Progressive Metal	passionate, uncommon time signatures, male vocals, rhythmic, technical, melancholic, anxious, progressive, complex, lonely	3.69	2264	38
3339	Up	Art Rock	pessimistic, death, introspective, atmospheric, melancholic, dark, sad, male vocals, anxious, sombre	3.72	2413	85
3340	Manger on McNichols	Jazz Rap, Gangsta Rap, Conscious Hip Hop	urban, apathetic, introspective, deadpan, crime, conscious, drugs, male vocals, dark, death	3.71	2250	16
3341	プラトニック プラネット (Platonic Planet)	J-Pop, Electropop	happy, energetic, female vocals, melodic, futuristic, uplifting, playful, eclectic, Wall of Sound, optimistic	3.7	1504	10
3342	Triarchy of the Lost Lovers	Melodic Black Metal	male vocals, melodic, atmospheric, heavy, cold, occult, triumphant, death, anti-religious, passionate	3.71	1406	19
3343	The Light at the End of the World	Death Doom Metal, Gothic Metal, Doom Metal	dark, poetic, heavy, depressive, male vocals, fantasy, lonely, atmospheric, death, nocturnal	3.7	1327	22
3344	Inventions & Dimensions	Post-Bop	improvisation, rhythmic, acoustic, instrumental, melodic, atmospheric	3.74	1154	21
3345	Die Æsthetik der Herrschaftsfreiheit	Neofolk	history, anarchism, war, philosophical, political, martial, melancholic, poetic, romantic, ominous	3.71	1181	25
3346	The London Howlin' Wolf Sessions	Electric Blues		3.74	825	23
3347	Train a Comin'	Americana, Singer/Songwriter, Alt-Country	male vocals, acoustic, rebellious, sarcastic, romantic, melodic, pastoral, mellow, love	3.73	619	28
3348	New Dark Age	Epic Doom Metal, Doom Metal, Heavy Metal	epic, melodic, male vocals, heavy, fantasy	3.72	592	14
3349	Mother	Video Game Music, Pop Rock	melodic, optimistic, romantic, female vocals, sentimental, happy, passionate, male vocals, psychedelic, quirky	3.75	352	4
3350	Marrow of the Spirit	Atmospheric Black Metal	cold, winter, melancholic, pagan, sombre, dark, male vocals, atmospheric, forest, nocturnal	3.68	5692	114
3351	Songs	Contemporary Folk, Singer/Songwriter	pastoral, acoustic, melancholic, soothing, warm, bittersweet, soft, nature, introspective, LGBT	3.7	4857	44
3352	Supermodified	Nu Jazz, IDM, Electronic	atmospheric, rhythmic, dark, instrumental, sampling, nocturnal, eclectic, futuristic, energetic, dense	3.7	3627	52
3353	For Long Tomorrow	Math Rock	mellow, uncommon time signatures, melodic, melancholic, peaceful, lush, soft, rhythmic, complex, ethereal	3.71	2545	17
3354	Hole	Industrial Rock, Industrial	sarcastic, misanthropic, mechanical, manic, playful, energetic, martial, death, humorous, dark	3.7	2139	29
3355	Theli	Symphonic Metal	male vocals, occult, mythology, epic, triumphant, choral, ominous, progressive, energetic, melodic	3.67	1763	46
3357	The World Is a Ghetto	Funk, Soul	urban, political, conscious, male vocals, psychedelic, epic, lush, progressive	3.72	1712	32
3358	Twisted Into Form	Thrash Metal	energetic, technical, heavy, male vocals, progressive, angry	3.71	1276	32
3359	In Hearing of Atomic Rooster	Hard Rock, Progressive Rock	progressive, mellow, playful, male vocals, energetic	3.73	1108	39
3360	In Camera	Art Rock, Avant-Prog, Progressive Rock	avant-garde, philosophical, existential, poetic, passionate, male vocals	3.72	1090	31
3361	East of the River Nile	Reggae	mellow, warm, instrumental, melodic, tropical, hypnotic, atmospheric, summer, meditative, psychedelic	3.73	1013	18
3362	The Magic of Ju-Ju	Free Jazz, Post-Bop, Spiritual Jazz	improvisation, instrumental, avant-garde, hypnotic, rhythmic	3.73	852	12
3363	Truelove's Gutter	Singer/Songwriter, Chamber Pop	romantic, lush, melancholic, lonely, love, breakup, melodic, mellow, male vocals, nocturnal	3.73	777	27
3364	Aquatic	Avant-Garde Jazz	aquatic, instrumental, rhythmic, avant-garde, minimalistic, acoustic, repetitive, atmospheric, hypnotic	3.74	593	6
3365	The August Engine	Progressive Metal, Heavy Metal	heavy, progressive, complex, sombre, male vocals, concept album, political, female vocals	3.71	566	16
3366	Ponyoak	Lo-Fi / Slacker Rock, Power Pop	melodic, bittersweet, lo-fi, male vocals, energetic, playful, breakup, lonely, cryptic, acoustic	3.73	585	12
3367	Marek Grechuta & Anawa	Poezja śpiewana, Progressive Pop, Baroque Pop	sad, melancholic, poetic, serious, romantic, passionate, pastoral, folklore, love	3.74	544	3
3368	Hypothetical	Progressive Metal	melodic, progressive, male vocals, heavy, fantasy, epic	3.7	586	18
3369	Zeit	Space Ambient, Progressive Electronic	space, meditative, hypnotic, dark, atmospheric, ominous, mysterious, instrumental, suspenseful, futuristic	3.69	4403	107
3370	Black Sheep Boy	Indie Rock, Indie Folk	melancholic, lonely, introspective, uplifting, male vocals, bittersweet, melodic, love, concept album, poetic	3.69	3345	64
3371	Chaos and Creation in the Backyard	Singer/Songwriter, Pop Rock	melodic, male vocals, soft, warm, introspective, romantic, melancholic, sentimental, longing, lush	3.71	2620	117
3372	Watertown	Baroque Pop, Traditional Pop	breakup, concept album, male vocals, introspective, poetic, lush, melancholic, autumn, melodic, rain	3.72	749	19
3373	Hot Pants	Funk	improvisation, rhythmic, male vocals, energetic, warm, hypnotic, repetitive, uplifting, summer, passionate	3.74	725	10
3374	April in Paris	Big Band, Swing	warm, acoustic, energetic, instrumental	3.74	524	16
3375	Delta Estácio blues	Vanguarda paulista, Experimental Rock	female vocals, rhythmic, avant-garde, uncommon time signatures, pagan, dissonant, mechanical, protest, abstract, playful	3.74	524	2
3376	Southbound	Contemporary Folk, Appalachian Folk Music	lonely, longing, melancholic, acoustic, minimalistic, pastoral, male vocals, mellow, love, passionate	3.74	465	8
3377	Time Machines	Drone	hypnotic, meditative, psychedelic, atmospheric, instrumental, minimalistic, dark, surreal, repetitive, futuristic	3.7	2470	30
3378	They Might Be Giants	Indie Pop, Alternative Rock	playful, humorous, eclectic, energetic, male vocals, melodic, sampling, satirical, quirky, uplifting	3.7	2579	57
3379	Something Wicked This Way Comes	Power Metal, Heavy Metal, US Power Metal	fantasy, energetic, melodic, heavy, male vocals, epic, aggressive, dark, melancholic	3.66	2226	52
3380	Betty Davis	Funk	rhythmic, female vocals, passionate, rebellious, sexual, energetic	3.72	1467	30
3381	Demonstration Tapes	Twee Pop, Indie Pop	melodic, energetic, uplifting, female vocals, lo-fi, happy, playful, love, mellow, longing	3.7	1427	29
3382	The Faith / Void	Hardcore Punk	energetic, angry, raw, male vocals, chaotic, aggressive, hateful, noisy, rhythmic, misanthropic	3.71	1485	49
3383	Dreamweaver	Thrash Metal	pagan, male vocals, mythology, energetic, ..., complex, rebellious, poetic, concept album, occult	3.71	1021	28
3384	Halloween	Film Score, Horror Synth	ominous, suspenseful, scary, dark, instrumental, repetitive, hypnotic, Halloween, atmospheric	3.73	954	20
3385	Under the Big Black Sun	Punk Rock	female vocals, male vocals, energetic	3.72	1367	36
3386	Maxwell's Urban Hang Suite	Neo-Soul, Contemporary R&B	sensual, mellow, melodic, sexual, love, lush, male vocals, soothing, romantic, soft	3.71	1316	25
3387	World Galaxy	Spiritual Jazz	orchestral, instrumental, psychedelic, ethereal, lush, spiritual, dense, surreal, ominous, atmospheric	3.73	1065	13
3388	Palepoli	Progressive Rock, Symphonic Prog	epic, abstract, concept album, male vocals, war, heavy, triumphant, poetic, complex	3.73	856	23
3389	September of My Years	Standards, Vocal Jazz	melancholic, sentimental, male vocals, lush, introspective, existential, concept album, sombre	3.73	823	32
3391	Szobel	Jazz Fusion, Avant-Prog	complex, energetic, rhythmic, technical, instrumental, uncommon time signatures, avant-garde, manic, dissonant, dense	3.74	465	12
3392	Time Is...	Progressive Rock	male vocals	3.74	424	18
3393	Castelos & ruínas	Conscious Hip Hop	sampling, male vocals, conscious, urban, rhythmic, introspective, nocturnal, serious, existential, passionate	3.73	493	1
3394	The Way Ahead	Avant-Garde Jazz	improvisation, avant-garde, energetic, manic, instrumental	3.75	413	3
3395	Wish Someone Would Care	Southern Soul, Deep Soul	melancholic, longing, female vocals, mellow, sentimental, passionate, sensual, nocturnal, love, warm	3.75	430	9
3396	Caifanes Vol. 2 [El Diablito]	Alternative Rock, Post-Punk	sombre, male vocals, melancholic, melodic, atmospheric, cryptic, dark	3.74	492	8
3397	Divine Songs	New Age, New Age Kirtan	spiritual, female vocals, meditative, ethereal, peaceful, longing, soothing, hypnotic, uplifting	3.74	446	3
3398	Tuesday Wonderland	Avant-Garde Jazz		3.74	444	5
3399	7	Dream Pop, Neo-Psychedelia	ethereal, atmospheric, lush, female vocals, hypnotic, surreal, dense, psychedelic, melancholic, bittersweet	3.64	12466	102
3400	Sea Change	Singer/Songwriter, Folk Rock	melancholic, sad, warm, breakup, introspective, lonely, melodic, male vocals, lush, soothing	3.65	10731	284
3401	Hi, How Are You: The Unfinished Album	Singer/Songwriter	lo-fi, anxious, lonely, depressive, male vocals, raw, dark, sparse, sentimental, introspective	3.67	6438	69
3402	Let There Be Rock	Hard Rock	male vocals, energetic, heavy, rebellious, raw, sexual, rhythmic, boastful, hedonistic, melodic	3.64	6531	194
3403	Through the Darkest Hour	Epic Doom Metal, Traditional Doom Metal, Doom Metal	heavy, epic, male vocals, sombre, dark, melodic, paranormal, dense	3.72	680	8
3404	The Nightly Disease	Alternative Rock, Art Rock	male vocals, mellow, hedonistic, sexual, sensual, nocturnal, atmospheric, mysterious, romantic	3.73	699	13
3405	Escape From New York	Film Score, Horror Synth	urban, anxious, dark, apocalyptic, instrumental, suspenseful, atmospheric	3.73	612	4
3406	The Disintegration Loops	Tape Music, Ambient, Minimalism	repetitive, instrumental, minimalistic, atmospheric, sparse, sombre, hypnotic, aleatory, ethereal, melancholic	3.64	7907	127
3407	Outer Isolation	Technical Thrash Metal	science fiction, technical, complex, heavy, uncommon time signatures, energetic, futuristic, male vocals, space, epic	3.7	3443	62
3408	Bachelor No. 2 (Or, the Last Remains of the Dodo)	Singer/Songwriter, Pop Rock	female vocals, introspective, soft, love, bittersweet, autumn, melodic, sarcastic, psychedelic	3.72	1662	44
3409	Everyone Into Position	Progressive Rock	melancholic, passionate, progressive, atmospheric, male vocals, uncommon time signatures, dense, melodic	3.71	1510	36
3410	Song of the Marching Children	Progressive Rock, Symphonic Prog	female vocals	3.74	560	19
3411	Electro-Shock Blues	Indie Pop, Singer/Songwriter	death, sad, melancholic, depressive, suicide, bittersweet, concept album, self-hatred, lonely, passionate	3.68	5728	128
3412	Music of My Mind	Soul, Funk	mellow, romantic, male vocals, sensual, happy, love, bittersweet, sentimental, melodic, playful	3.71	3175	64
3413	Rock for Light	Hardcore Punk	energetic, passionate, political, male vocals, spiritual, angry, raw	3.7	2843	68
3414	Steamin' With the Miles Davis Quintet	Hard Bop	instrumental, acoustic, improvisation, mellow, melodic	3.72	1781	20
3415	Róka Hasa Rádió	Avant-Garde Metal, Progressive Metal	science fiction, atmospheric, epic, ..., philosophical, space, female vocals, progressive, poetic, male vocals	3.69	1329	46
3416	Reconstruction Site	Indie Rock	male vocals, sentimental, melodic, optimistic, melancholic, playful	3.72	1399	21
3417	Solo Monk	Stride	instrumental, acoustic, peaceful, calm, soft, melodic	3.73	1336	23
3418	Still Life (Talking)	Jazz Fusion	soothing, atmospheric, soft, male vocals, warm, uplifting, mysterious, lush, playful, desert	3.73	997	17
3419	A Pagan Place	Pop Rock	male vocals	3.73	879	26
3420	Stunts, Blunts & Hip Hop	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	boastful, playful, urban, rhythmic, male vocals, sampling, energetic	3.71	913	30
3421	Dreams d'azur	Progressive Metal, Gothic Metal	progressive, melancholic, passionate, dark, melodic, death, male vocals	3.69	503	10
3422	The Cook, the Thief, His Wife & Her Lover	Post-Minimalism, Film Score	repetitive, minimalistic, melodic, sparse, melancholic	3.75	402	3
3423	Visitation	Jazz-Rock, Progressive Rock, Symphonic Prog	complex, instrumental, technical, eclectic, progressive	3.73	469	8
3424	East Broadway Run Down	Post-Bop, Avant-Garde Jazz		3.74	457	9
3425	Movin' On	Progressive Rock	uncommon time signatures, male vocals, eclectic	3.75	349	17
3426	5 by Monk by 5	Hard Bop	playful, improvisation, nocturnal, acoustic, instrumental	3.75	319	3
3427	Dancing in the Dragon's Jaws	Singer/Songwriter, Folk Rock	surreal, abstract, poetic, technical, Christian, male vocals, acoustic	3.75	353	14
3428	The Music From Peter Gunn	Television Music, Cool Jazz, Jazz Pop		3.75	324	6
3429	Dippin'	Hard Bop, Soul Jazz	introspective, improvisation, complex, acoustic, passionate, energetic, instrumental	3.75	312	4
3430	Utopia	Television Music, Experimental, Ambient	dark, abstract, avant-garde, androgynous vocals, suspenseful, instrumental, ominous	3.71	339	0
3431	Clouds Taste Metallic	Noise Pop, Neo-Psychedelia	psychedelic, noisy, playful, surreal, science fiction, optimistic, fantasy, summer, energetic, happy	3.68	6545	120
3432	The Satanist	Death Metal, Black Metal	satanic, heavy, male vocals, infernal, triumphant, dark, epic, misanthropic, rebellious, atmospheric	3.66	6046	80
3433	Fetch	Noise Rock, Experimental Rock	playful, energetic, noisy, female vocals, manic, chaotic, quirky, rhythmic, happy, technical	3.68	5875	39
3434	Tin Drum	Art Pop, New Wave	rhythmic, quirky, playful, male vocals, concept album, progressive, complex, atmospheric, poetic, existential	3.68	4564	78
3435	White Pepper	Pop Rock, Alternative Rock, Psychedelic Pop	male vocals, playful, eclectic, love, melodic, psychedelic, romantic, bittersweet, lush, mellow	3.69	4235	63
3436	Into the Wild	Acoustic Rock, Film Soundtrack, Singer/Songwriter	male vocals, alienation, passionate, longing, melancholic, pastoral, lonely, introspective, existential, poetic	3.7	2782	61
3437	Boys for Pele	Art Pop, Singer/Songwriter	female vocals, eclectic, poetic, passionate, introspective, atmospheric, sad, sensual, melancholic, complex	3.7	2904	88
3438	Night and Day	Art Pop	melodic, nocturnal, urban, male vocals, LGBT, alienation, conscious, rhythmic, eclectic, quirky	3.71	1929	63
3439	Tangerine Dream	Psychedelic Pop	psychedelic, warm, male vocals, melodic, fairy tale, surreal, fantasy, progressive, playful, mellow	3.71	1762	62
3440	Spilt Milk	Power Pop, Progressive Pop	melodic, happy, energetic, progressive, lush, playful, quirky, warm, bittersweet, psychedelic	3.7	1800	70
3441	Woven Hand	Alt-Country, Folk Rock	melancholic, existential, longing, dark, deadpan, sombre, atmospheric, pastoral, ominous, introspective	3.72	1671	18
3442	Heyday	Jangle Pop, Neo-Psychedelia	melodic, psychedelic, lush, autumn, male vocals, bittersweet, energetic, melancholic, atmospheric, poetic	3.72	1479	39
3443	Nieustanne tango	Post-Punk, New Wave, Coldwave	male vocals, energetic, rhythmic, anxious, passionate	3.72	1020	5
3444	Reach Out	Motown Sound, Soul	uplifting, passionate, male vocals, melodic, vocal group, energetic	3.73	918	20
3445	Be Forewarned	Doom Metal, Traditional Doom Metal	dark, heavy, sombre, male vocals, death, occult, pessimistic, existential, drugs, mythology	3.72	970	17
3446	Disconnected	Progressive Metal	male vocals, futuristic, sombre, anxious, pessimistic, ominous, cold, progressive	3.71	964	25
3447	Garcia	Folk Rock, Psychedelic Rock, Roots Rock	male vocals, warm, psychedelic, melodic	3.72	703	20
3448	The Edges of Twilight	Hard Rock	introspective, nocturnal, melodic, passionate, male vocals, hypnotic	3.72	692	28
3449	Les porches	Progressive Rock	uncommon time signatures, complex, composition, passionate, male vocals	3.72	589	23
3450	Asante	Post-Bop, Spiritual Jazz	passionate, spiritual, rhythmic, atmospheric, ethereal, avant-garde, complex	3.74	473	8
3452	Ho visto anche degli zingari felici	Canzone d'autore	melodic, male vocals, nocturnal, longing, passionate	3.74	288	8
3453	The New Abnormal	Indie Rock	male vocals, bittersweet, melancholic, sentimental, warm, melodic, passionate, atmospheric, summer, lonely	3.63	14002	181
3454	Original Pirate Material	UK Garage, UK Hip Hop	urban, drugs, humorous, bittersweet, nocturnal, poetic, melancholic, alcohol, introspective, philosophical	3.67	6039	127
3455	Race	Singer/Songwriter, Lo-Fi / Slacker Rock, Bedroom Pop, Indie Folk	bittersweet, lo-fi, melodic, melancholic, male vocals, mellow, lonely, raw, warm, lethargic	3.71	1612	13
3456	Electric Mud	Electric Blues, Blues Rock, Psychedelic Rock	rhythmic, psychedelic, energetic, epic, sensual, passionate, lush, sentimental, folklore, male vocals	3.72	1215	46
3457	National Health	Canterbury Scene, Jazz-Rock, Progressive Rock	complex, improvisation, technical, progressive	3.72	964	34
3458	Helen Merrill	Vocal Jazz, Standards	female vocals, calm, romantic, soothing, nocturnal, soft, longing, melodic, passionate, bittersweet	3.73	844	17
3459	Здорово и вечно	Noise Rock, Post-Punk	noisy, depressive, apocalyptic, lo-fi, cryptic, philosophical, male vocals, satirical, political, poetic	3.71	791	5
3460	III - Tri-Logy	Progressive Rock, Psychedelic Rock	mythology, mellow, conscious, introspective, male vocals, technical, psychedelic	3.73	752	13
3461	Sweet Old World	Alt-Country	female vocals, breakup, passionate, bittersweet, love, longing	3.73	653	17
3462	Shahbaaz	Qawwali	passionate, uplifting, repetitive, male vocals, ritualistic, Islamic, energetic, rhythmic, warm, hypnotic	3.74	455	6
3463	Rockers Meets King Tubbys in a Fire House	Dub	rhythmic, repetitive, tropical, warm, psychedelic, instrumental, hypnotic	3.74	424	8
3464	Brötzmann / Van Hove / Bennink	European Free Jazz	instrumental, improvisation, noisy, avant-garde, manic, chaotic, humorous, surreal, playful, sampling	3.74	447	5
3465	Continuum Unbound	Field Recordings, Musique concrète, Nature Recordings	soothing, meditative, forest, atmospheric, instrumental, tropical, natural, rain, avant-garde, hypnotic	3.7	457	4
3466	Это мама	Jazz-Rock, Progressive Rock, Avant-Prog, Art Rock	avant-garde, surreal, melancholic, uncommon time signatures, eclectic, winter, complex	3.72	418	1
3467	Signals	Progressive Rock	male vocals, philosophical, melodic, science fiction, political, introspective, complex, cold, futuristic, uncommon time signatures	3.69	5038	132
3468	Copper Blue	Alternative Rock, Power Pop	melodic, energetic, passionate, bittersweet, male vocals, breakup, anthemic, noisy, urban, love	3.7	2519	88
3469	Fantastic Planet	Alternative Rock	drugs, space, atmospheric, concept album, male vocals, sombre, anxious, energetic, melodic, heavy	3.7	2437	49
3470	Camembert electrique	Psychedelic Rock, Canterbury Scene	psychedelic, playful, humorous, energetic, quirky, avant-garde, complex, progressive, atmospheric, male vocals	3.7	2639	56
3471	Everything Goes Numb	Ska Punk, Third Wave Ska	energetic, bittersweet, uplifting, melodic, passionate, male vocals, rebellious, playful, anthemic, suicide	3.68	2908	57
3472	Technodelic	Synthpop	futuristic, mechanical, anxious, sampling, psychedelic, surreal, rhythmic, playful, melancholic, urban	3.71	1671	16
3473	Nothing	Djent	mechanical, complex, technical, aggressive, futuristic, science fiction, heavy, psychedelic, repetitive, cold	3.68	1697	15
3474	Tall Poppy Syndrome	Progressive Metal	progressive, male vocals, technical, uncommon time signatures, melodic, heavy, introspective, melancholic, complex, epic	3.7	1548	29
3475	Rengeteg	Progressive Metal, Avant-Garde Metal	progressive, atmospheric, male vocals, nature, melodic, epic, poetic, forest, ethereal, avant-garde	3.7	1501	33
3476	De Profundis	Death Metal	heavy, dark, male vocals, death, aggressive, technical	3.71	1331	19
3477	Crac!	Avant-Prog, Progressive Rock	male vocals, improvisation, progressive, manic, quirky, political, warm, playful, dense	3.72	1304	24
3478	Ini Kamoze	Dancehall, Reggae	rhythmic, warm, summer, tropical, male vocals, playful, melodic, uplifting, urban, psychedelic	3.71	1211	14
3479	Unlock the Shrine	Atmospheric Black Metal	ominous, dark, disturbing, atmospheric, nihilistic, aggressive, scary, cold, male vocals, alienation	3.7	1219	21
3480	Evil Invaders	Thrash Metal	aggressive, male vocals, energetic, violence, heavy, boastful, raw, death, pessimistic	3.71	1177	31
3481	No Rest for the Wicked	Hard Rock, Heavy Psych	male vocals, heavy, energetic, drugs, psychedelic	3.73	512	19
3482	Caravan	Hard Bop	improvisation, energetic, instrumental	3.73	533	6
3483	Presents Author Unknown	Power Pop, Pop Rock	uplifting, melodic, male vocals, playful, summer, love	3.73	497	15
3484	One	Progressive Rock, Symphonic Prog, Christian Rock	Christian, male vocals, complex, melodic, progressive, epic	3.72	489	16
3485	Flesh of My Skin: Blood of My Blood	Roots Reggae	warm, female vocals, tropical, conscious, male vocals, mellow, nocturnal, mysterious, dark, spiritual	3.74	419	12
3486	Lavender Country	Progressive Country	LGBT, melodic, humorous, male vocals, warm, political, dark, protest, female vocals, bittersweet	3.73	339	7
3487	Mood Swings	Hard Rock, AOR	love, melodic, longing, bittersweet, sentimental, male vocals	3.69	359	11
3488	Mind Transplant	Jazz Fusion, Jazz-Rock		3.74	333	9
3489	Hades: Original Soundtrack	Video Game Music, Alternative Metal	infernal, eclectic, atmospheric, lush, mythology, energetic, epic, progressive, heavy	3.73	367	3
3490	ג (Gimel)	Avant-Garde Jazz	instrumental	3.76	304	4
3491	Scream Bloody Gore	Death Metal	aggressive, violence, raw, death, male vocals, heavy, energetic, infernal, manic, occult	3.66	8021	138
3492	Starfish	Jangle Pop, Neo-Psychedelia, Dream Pop	melodic, psychedelic, atmospheric, lonely, melancholic, introspective, lush, male vocals, soothing, ethereal	3.69	3385	85
3493	Dopes to Infinity	Stoner Rock, Space Rock	drugs, space, psychedelic, science fiction, male vocals, heavy, hedonistic, aggressive, sarcastic, rebellious	3.7	2250	41
3494	Sound-Dust	Art Pop, Progressive Pop, Indie Pop	female vocals, progressive, mellow, lush, melodic, warm, psychedelic, soft, surreal, anxious	3.71	2290	51
3495	Hérésie	Rock in Opposition	dark, apocalyptic, infernal, ominous, atmospheric, suspenseful, nocturnal, instrumental, progressive, avant-garde	3.7	2004	50
3496	Taking Drugs to Make Music to Take Drugs To	Neo-Psychedelia, Space Rock, Garage Rock	drugs, noisy, psychedelic, male vocals, mellow, lo-fi, repetitive, spiritual, minimalistic, dense	3.71	1272	21
3497	The Wake of Magellan	Heavy Metal, Rock Opera, Progressive Metal	male vocals, melodic, rock opera, epic, complex, introspective, fantasy, concept album, ..., existential	3.7	1051	22
3498	Superflat	Radio Drama, Experimental	concept album, surreal, political, depressive, skit, self-hatred, introspective, humorous, existential, male vocals	3.64	1145	33
3499	FEZ	Video Game Music, Progressive Electronic, Ambient	atmospheric, warm, ethereal, lush, soothing, meditative, spring, instrumental, uplifting, melodic	3.72	902	13
3500	Will of Gods Is a Great Power	Doom Metal, Epic Doom Metal	melodic, pagan, male vocals, nature, mythology, sombre, epic, mysterious, heavy, cold	3.71	822	17
3501	Dedicated to You, But You Weren't Listening	Jazz-Rock, Jazz Fusion, Canterbury Scene	improvisation, technical, avant-garde, instrumental	3.73	753	19
3502	Strange Celestial Road	Avant-Garde Jazz, Jazz-Funk, Jazz Fusion, Experimental Big Band	science fiction, space, psychedelic, male vocals, improvisation, futuristic, female vocals, spiritual	3.73	721	11
3503	Blues From the Gutter	Piano Blues, New Orleans Blues	male vocals, drugs, dark, mellow, passionate, warm, serious, longing, pessimistic, depressive	3.74	627	15
3504	Stillbirth Machine	Death Metal	noisy, raw, war, lo-fi, heavy, violence, angry, chaotic, aggressive, male vocals	3.71	650	6
3505	Lenox Avenue Breakdown	Avant-Garde Jazz	improvisation, instrumental, playful, energetic	3.74	570	9
3506	Wiosna Ludu	Polish Folk Music	female vocals, psychedelic, atmospheric, mysterious, sombre, tribal	3.75	449	6
3507	Feelin' the Spirit	Soul Jazz	improvisation, spiritual, meditative, instrumental, mellow, uplifting	3.74	411	7
3508	Miserere	Modern Classical, Choral	Christian, spiritual, religious, choral	3.73	370	4
3509	Serenade to a Soul Sister	Hard Bop, Post-Bop		3.75	281	4
3510	N° 5	Chanson à texte	male vocals, love, passionate	3.74	352	4
3511	Stadaconé	Progressive Rock, Jazz Fusion		3.74	310	11
3512	The Max Roach Trio Featuring the Legendary Hasaan	Hard Bop	playful, improvisation, instrumental, rhythmic	3.74	297	11
3513	Angel Song	Post-Bop, ECM Style Jazz	nocturnal, calm	3.75	310	3
3514	Section.80	West Coast Hip Hop, Conscious Hip Hop	conscious, urban, political, rhythmic, male vocals, concept album, mellow, drugs, introspective, Christian	3.62	18446	93
3515	Souvenirs d'un autre monde	Shoegaze, Post-Metal, Blackgaze	melancholic, ethereal, atmospheric, spring, soothing, forest, male vocals, sentimental, warm, lush	3.64	9497	175
3516	Your Queen Is a Reptile	Afro-Jazz	rhythmic, protest, passionate, energetic, male vocals, conscious, tribal, eclectic, dense, political	3.69	5215	41
3517	A Walk Across the Rooftops	Sophisti-Pop, Art Pop	melancholic, mellow, romantic, atmospheric, urban, nocturnal, rain, bittersweet, lush, poetic	3.7	2232	66
3518	Downward Is Heavenward	Alternative Rock, Post-Hardcore	space, science fiction, atmospheric, poetic, bittersweet, love, melodic, romantic, male vocals, lush	3.7	2259	46
3519	Dreamtime Return	Tribal Ambient, Ambient	meditative, atmospheric, mysterious, instrumental, peaceful, ethereal, tribal, soothing, surreal, nature	3.7	2009	39
3520	Apollo 18	Alternative Rock, Indie Pop	playful, quirky, eclectic, humorous, melodic, male vocals, sarcastic, surreal, space, death	3.71	1862	42
3521	...Doedskvad	Black Metal	male vocals, melodic, death, cold, epic, energetic, suite, heavy, angry, misanthropic	3.7	1690	19
3522	Magrudergrind	Grindcore, Powerviolence	aggressive, angry, rhythmic, political, manic, energetic, chaotic, male vocals, sampling, heavy	3.71	1556	16
3523	Stoneage Romeos	Power Pop, Garage Rock	playful, energetic, melodic, male vocals, romantic, bittersweet, longing, warm, love, uplifting	3.71	1176	40
3524	No Heavy Petting	Hard Rock	male vocals, melodic, energetic	3.73	1146	48
3525	He Miss Road	Afrobeat	male vocals, rhythmic, psychedelic, energetic, political, uplifting, warm, happy	3.73	1069	12
3526	Forse le lucciole non si amano più	Symphonic Prog, Progressive Rock	peaceful, melodic, lush, complex, uncommon time signatures, medieval, fantasy, male vocals, triumphant, playful	3.7	1023	41
3527	Profondo rosso	Progressive Rock, Film Score	suspenseful, mysterious, nocturnal, atmospheric, anxious, instrumental, complex, progressive	3.73	978	21
3528	Deception Ignored	Technical Thrash Metal, Progressive Metal	technical, complex, uncommon time signatures, male vocals, anxious, suspenseful, abstract, manic, heavy, concept album	3.71	782	24
3529	Showcase Vol 1	Dub, Reggae	spiritual, mellow, rhythmic, psychedelic, summer, male vocals, atmospheric, warm	3.73	642	9
3530	+'Justments	Soul	lonely, introspective, melodic, male vocals	3.73	531	11
3531	Recuerdos de mi tierra	Andalusian Rock, Progressive Rock	progressive, male vocals	3.73	464	23
3532	The Phantom of the Opera	Show Tunes	opera, passionate, orchestral, sentimental, male vocals, female vocals, longing, polyphonic, epic, love	3.69	533	20
3533	Продано!	Singer/Songwriter	philosophical, poetic, female vocals, acoustic, passionate, depressive, pessimistic	3.73	473	5
3534	Tachibana, Vol. 1	Spiritual Jazz, Modal Jazz	improvisation, energetic, instrumental	3.74	424	2
3535	Rehearsals for Retirement	Contemporary Folk, Singer/Songwriter	political, sombre, war, melancholic, introspective, depressive, protest, sarcastic, history	3.73	434	19
3536	TWET	European Free Jazz	hypnotic, dark, atmospheric, improvisation, instrumental, avant-garde	3.74	438	5
3537	Metro	Art Rock, Glam Rock	sombre, complex, mysterious, lush, eclectic, male vocals, sensual, progressive, passionate, melancholic	3.74	417	19
3538	Turkish Women at the Bath	Modal Jazz, Post-Bop, Hard Bop	instrumental, improvisation, rhythmic, acoustic, mysterious, energetic	3.74	423	8
3539	Four Moments	Progressive Rock, Symphonic Prog		3.74	384	19
3540	Ze słowem biegnę do ciebie	Progressive Rock, Symphonic Prog	passionate, ethereal	3.74	406	9
3541	Rareform	Deathcore, Progressive Metal, Melodic Metalcore	heavy, energetic, technical, uncommon time signatures, passionate, aggressive, complex, chaotic, melodic, male vocals	3.7	387	5
3542	ファンファーレ (Fanfare)	Indie Pop	female vocals, uplifting, bittersweet, calm, melodic, summer, warm	3.74	330	5
3543	Rocky	Film Soundtrack, Film Score	anthemic, epic, lush, triumphant, orchestral	3.74	293	4
3544	British Steel	Heavy Metal	male vocals, rebellious, anthemic, energetic, heavy, melodic, boastful, triumphant, passionate, party	3.66	7759	182
3545	Shades of Blue: Madlib Invades Blue Note	Instrumental Hip Hop, Jazz Rap, West Coast Hip Hop	atmospheric, instrumental, sampling, rhythmic, mellow, melodic, hypnotic, urban, repetitive, calm	3.69	5112	50
3546	Lupe Fiasco's Food & Liquor	Conscious Hip Hop	conscious, rhythmic, male vocals, urban, uplifting, energetic, introspective, political, poetic, passionate	3.68	4666	81
3547	Songs the Lord Taught Us	Psychobilly, Garage Punk	energetic, playful, sexual, male vocals, lo-fi, noisy, raw, rebellious, Halloween, dark	3.69	4032	64
3548	The Sky Moves Sideways	Progressive Rock	male vocals, atmospheric, progressive, space, instrumental, hypnotic, psychedelic, abstract, improvisation, melodic	3.69	4138	85
3549	Blue Öyster Cult	Hard Rock	male vocals, psychedelic, cryptic, energetic, mysterious, playful, surreal, dark, nocturnal, raw	3.7	3595	109
3550	Imaginary Sonicscape	Avant-Garde Metal, Progressive Metal	eclectic, psychedelic, playful, complex, progressive, melodic, philosophical, male vocals, avant-garde, death	3.67	3136	65
3551	Bakesale	Indie Rock	anxious, pessimistic, angry, melodic, misanthropic, sarcastic, lo-fi, depressive, lonely, male vocals	3.69	3609	56
3552	...In "Jane From Occupied Europe"	Post-Punk, Art Punk	dense, noisy, chaotic, manic, male vocals, surreal, anxious, mysterious, rhythmic, ominous	3.7	2900	43
3553	Coles Corner	Singer/Songwriter, Chamber Pop, Traditional Pop	lush, melancholic, mellow, romantic, bittersweet, nocturnal, melodic, male vocals, sentimental, soft	3.71	1466	43
3554	Pat Metheny Group	Jazz Fusion, ECM Style Jazz	instrumental, calm, uplifting, spring, holiday, romantic, peaceful, technical, melodic, playful	3.72	1030	20
3555	新しい日の誕生 (Atarashī hi no tanjō)	Ambient, Dreampunk	nocturnal, futuristic, atmospheric, urban, rain, soothing, ethereal, lonely, mellow, melancholic	3.66	9088	89
3556	The Crane Wife	Folk Rock, Indie Folk, Indie Pop	progressive, folklore, male vocals, war, warm, passionate, poetic, female vocals, crime, love	3.67	5321	150
3557	Blue Afternoon	Singer/Songwriter, Psychedelic Folk	lonely, mellow, peaceful, poetic, male vocals, calm, warm, melodic, soothing, passionate	3.7	2771	50
3558	Focus II	Progressive Rock, Symphonic Prog	autumn, playful, melodic, pastoral, warm, mellow, complex, progressive	3.71	2037	68
3559	Nowe sytuacje	New Wave, Post-Punk	rhythmic, energetic, playful, anxious, quirky, sarcastic, male vocals, humorous, sexual	3.71	1618	12
3560	Alma de diamante	Jazz-Rock	poetic, male vocals, soothing, mellow, progressive, atmospheric, lush, conscious, melancholic, spiritual	3.74	502	12
3561	Work Song	Hard Bop	improvisation, instrumental, acoustic	3.74	324	7
3562	Damn Right I Am Somebody	Funk	energetic, rhythmic, sampling, uplifting, melodic, playful, progressive, passionate, instrumental, political	3.75	291	10
3563	King Bee	Blues		3.75	306	4
3564	Crack-Up	Progressive Folk, Chamber Folk	male vocals, atmospheric, lush, nature, poetic, progressive, bittersweet, acoustic, melancholic, autumn	3.66	8526	105
3565	Strange Mercy	Art Pop, Indie Pop, Art Rock	lush, female vocals, anxious, melodic, noisy, bittersweet, quirky, sensual, warm, passionate	3.66	8497	103
3566	Kingdom Come	Heavy Psych, Hard Rock, Heavy Metal	energetic, heavy, manic, chaotic, medieval, male vocals, passionate, raw, fantasy, rebellious	3.69	2031	74
3567	Ritual	Black Metal	dark, heavy, occult, aggressive, male vocals, serious, infernal, angry, forest, ominous	3.7	1436	22
3568	Into the Mirror Black	US Power Metal	introspective, male vocals, fantasy, dark, heavy, melodic, energetic, technical, aggressive, serious	3.7	1156	33
3569	Outward Bound	Hard Bop	instrumental, acoustic, improvisation, technical, passionate	3.73	1088	15
3570	Plays Standards	Avant-Prog, Experimental Rock, Turntable Music	chaotic, manic, dense, sampling, eclectic, avant-garde, noisy, playful, surreal, improvisation	3.7	1104	10
3571	Live the Dream	Folk Punk	anarchism, alcohol, anxious, drugs, rebellious, passionate, suicide, angry, conscious, bittersweet	3.69	973	5
3572	Dire Straits	Rock, Roots Rock	male vocals, rhythmic, mellow, bittersweet	3.68	6075	138
3573	Ultra	Alternative Rock, Synthpop	dark, male vocals, sombre, anxious, melancholic, rhythmic, introspective, nocturnal, atmospheric, urban	3.69	4927	93
3574	Heaven Up Here	Post-Punk	melancholic, anxious, atmospheric, psychedelic, introspective, sombre, cold, ominous, dark, depressive	3.7	3770	82
3575	Blank Generation	Punk Rock, Art Punk	raw, male vocals, energetic, sarcastic, humorous, quirky, playful, rebellious, sexual, technical	3.69	3547	92
3576	If You're Into It, I'm Out of It	Breakcore, Jungle, Dark Ambient	ominous, dark, atmospheric, suspenseful, nocturnal, mysterious, instrumental, repetitive, scary, mechanical	3.7	2860	26
3577	Mariner	Atmospheric Sludge Metal	atmospheric, heavy, dark, space, female vocals, male vocals, concept album, progressive, science fiction, melancholic	3.7	2554	29
3578	Unrest	Rock in Opposition	avant-garde, improvisation, complex, uncommon time signatures, instrumental, progressive, abstract, playful, dissonant, depressive	3.7	2462	47
3579	Nervous Young Man	Lo-Fi / Slacker Rock, Singer/Songwriter	lo-fi, anxious, male vocals, lonely, death, love, introspective, alienation, LGBT, dense	3.69	2722	31
3580	Hergest Ridge	Progressive Rock	pastoral, instrumental, passionate, warm, melodic, atmospheric, spring, progressive, choral, alienation	3.71	2022	69
3581	RIITIIR	Progressive Metal	mythology, philosophical, complex, cold, sombre, atmospheric, epic, dark, melodic, progressive	3.68	2003	55
3582	Budgie	Hard Rock, Heavy Metal	heavy, male vocals, quirky, rhythmic, playful	3.7	1803	70
3583	The Paul Butterfield Blues Band	Electric Blues	male vocals, passionate, energetic	3.72	1130	36
3584	Armageddon	Hard Rock	male vocals, psychedelic, progressive	3.72	832	47
3585	Illusions on a Double Dimple	Progressive Rock, Symphonic Prog	male vocals, technical, complex	3.72	748	36
3586	Captain My Captain	Queercore, Riot Grrrl	LGBT, passionate, introspective, political, female vocals, energetic, conscious, angry, melodic, uplifting	3.72	734	10
3587	The Falconer's Arm I	American Primitivism	instrumental, pastoral, hypnotic, acoustic, technical, meditative, calm, peaceful, atmospheric	3.73	716	6
3588	Il nostro caro angelo	Art Pop, Progressive Pop	melodic, sentimental, male vocals, soft, romantic, ethereal, eclectic, bittersweet, dense, female vocals	3.72	646	7
3589	Rosemary Lane	Contemporary Folk, English Folk Music, Folk Baroque	soft, acoustic, sombre, folklore, pastoral, mellow, melancholic, lonely, calm, autumn	3.73	568	16
3592	Paint a Picture	Progressive Rock, Symphonic Prog	melodic, progressive, epic, male vocals	3.74	374	23
3593	Matança do porco	Progressive Rock	instrumental, technical, summer, progressive, lush, eclectic, energetic, rhythmic, playful, dense	3.73	400	15
3594	Wonderful Rainbow	Noise Rock	noisy, energetic, manic, chaotic, repetitive, complex, playful, technical, heavy, male vocals	3.67	6722	89
3595	Tales of Mystery and Imagination	Progressive Rock, Art Rock	concept album, complex, poetic, progressive, mysterious, uplifting, lush, male vocals, mellow, soft	3.7	2959	100
3596	Wintersun	Melodic Death Metal, Power Metal	energetic, male vocals, epic, fantasy, uncommon time signatures, pagan, melodic, winter, death, cold	3.62	3205	90
3597	The Tokyo Blues	Hard Bop		3.74	360	1
3598	Spirits Rejoice!	Avant-Garde Jazz	improvisation, instrumental, manic, uplifting, technical, complex, avant-garde, acoustic, energetic	3.74	301	3
3599	Sowiesoso	Electronic, Krautrock	instrumental, mellow, calm, forest, atmospheric, warm, minimalistic, repetitive	3.7	2557	42
3600	Wolf City	Psychedelic Rock, Krautrock	psychedelic, surreal, female vocals, male vocals, quirky, progressive, melodic, eclectic, rhythmic, atmospheric	3.71	2287	52
3601	Love Bites	Punk Rock, Pop Punk	love, male vocals, energetic, breakup, introspective, LGBT, melodic, rebellious	3.7	2028	27
3602	Bend Sinister	Post-Punk	apathetic, cryptic, lo-fi, urban, sarcastic, repetitive, anxious, raw, nocturnal, dark	3.71	1869	40
3603	Dark Recollections	Death Metal	aggressive, heavy, rhythmic, raw, dense, male vocals, death, dark, infernal, ominous	3.71	1561	28
3604	Blush Music	Gothic Country, Avant-Folk, Alt-Country	dark, peaceful, ethereal, melancholic, male vocals, pastoral, atmospheric, sombre, rhythmic, mysterious	3.71	1440	21
3605	Fuzzy	Americana, Alt-Country, Indie Rock	melancholic, longing, melodic, passionate, male vocals, political	3.71	1399	38
3606	A Different Kind of Tension	Punk Rock	energetic, anxious, male vocals, existential, rhythmic	3.71	1517	33
3607	No Gods / No Managers	Ska Punk, Hardcore Punk	anarchism, political, drugs, nihilistic, anti-religious, energetic, male vocals, suicide, urban, pessimistic	3.69	1538	31
3608	McDonald and Giles	Progressive Rock, Art Rock		3.72	971	52
3609	The Lion King	Film Soundtrack, Cinematic Classical	female vocals, melodic, male vocals, lush, playful, triumphant, warm, children's music	3.69	1077	20
3610	Field Songs	Singer/Songwriter, Folk Rock, Acoustic Rock	lonely, introspective, male vocals, sad, melancholic, acoustic	3.72	1023	14
3611	The Point!	Pop, Spoken Word, Television Music, Pop Rock	playful, male vocals, fairy tale, concept album, melodic, warm, humorous	3.72	813	19
3612	Die Healing	Doom Metal, Traditional Doom Metal	dark, heavy, apocalyptic, male vocals, sombre, ominous, fantasy, atmospheric, funereal	3.72	813	14
3613	Krig-ha, bandolo!	Singer/Songwriter, Folk Rock, MPB	male vocals, existential, energetic, protest, passionate, philosophical, warm, poetic, playful, urban	3.71	628	8
3614	Irish Coffee	Hard Rock		3.73	505	20
3615	Лунный переворот	Psychedelic Rock, Post-Punk	psychedelic, passionate, cryptic, existential, anthemic, Wall of Sound, surreal, philosophical, poetic, mysterious	3.73	410	2
3616	Funeral Dress	Indie Rock, Folk Rock	love, breakup, melodic, bittersweet, raw, male vocals, female vocals	3.74	289	3
3617	The Raven That Refused to Sing (And Other Stories)	Progressive Rock	sombre, progressive, eclectic, male vocals, passionate, complex, melancholic, atmospheric, paranormal, epic	3.66	5813	118
3618	Lifted or The Story Is in the Soil, Keep Your Ear to the Ground	Indie Folk	introspective, male vocals, passionate, poetic, acoustic, raw, anxious, love, alienation, melodic	3.67	4534	113
3619	Schizophrenia	Thrash Metal	heavy, apocalyptic, aggressive, raw, death, dark, male vocals, energetic, hateful, angry	3.68	3487	58
3620	Gentlemen Take Polaroids	Art Pop, New Wave	atmospheric, nocturnal, lush, rain, sombre, rhythmic, urban, male vocals, cold, mellow	3.69	3260	75
3621	Parallels	Progressive Metal	introspective, sombre, male vocals, progressive, melodic, uncommon time signatures, breakup, melancholic, passionate	3.69	1231	42
3622	Dancing in Your Head	Jazz Fusion, Avant-Garde Jazz	chaotic, repetitive, energetic, hypnotic, improvisation, manic, rhythmic, technical, instrumental, avant-garde	3.72	1164	25
3623	Merry Christmas, Mr. Lawrence	Film Score, Electronic	atmospheric, bittersweet, anxious, melodic, war, ethereal, suspenseful, winter, instrumental, mysterious	3.72	1113	19
3624	Ventura	Indie Rock	mellow, introspective, eclectic, melancholic, love, romantic, soothing, male vocals, passionate, soft	3.7	1140	28
3625	Pateando piedras	New Wave, Synthpop	protest, political, conscious, urban, rebellious, sarcastic, pessimistic, energetic, rhythmic, male vocals	3.72	725	19
3626	El circo	Latin Alternative, Third Wave Ska	urban, rhythmic, tropical, energetic, party, warm, male vocals	3.75	331	7
3627	Cornonstípicum	Symphonic Prog, Progressive Rock	male vocals, female vocals, complex, abstract, technical, melodic, playful, composition, progressive, vocal group	3.74	288	12
3628	I'm Your Man	Singer/Songwriter, Sophisti-Pop	poetic, male vocals, soft, introspective, romantic, love, sarcastic, deadpan, quirky, mysterious	3.68	4632	96
3629	Night Falls Over Kortedala	Chamber Pop, Singer/Songwriter, Indie Pop	romantic, playful, happy, bittersweet, melodic, love, male vocals, spring, sentimental, sampling	3.68	3987	97
3630	Heartbreaker	Alt-Country, Americana, Singer/Songwriter	melancholic, lonely, male vocals, love, breakup, acoustic, introspective, melodic, longing, bittersweet	3.68	3672	111
3631	Nilsson Schmilsson	Pop Rock, Singer/Songwriter	humorous, playful, melodic, eclectic, male vocals, longing, manic, warm, quirky	3.69	3043	79
3632	The Turn of a Friendly Card	Art Rock, Progressive Rock	concept album, male vocals, suite, lush, bittersweet, melodic, progressive, romantic, soft, introspective	3.71	2075	56
3633	The Young Mods' Forgotten Story	Chicago Soul	male vocals	3.73	592	17
3634	10.21	Metalcore	heavy, passionate, energetic, dark, breakup, aggressive, male vocals, sombre, melodic, poetic	3.71	534	14
3635	Llegando los monos	Post-Punk, New Wave	quirky, humorous, urban, sarcastic, male vocals, pessimistic, angry, manic, political, anxious	3.72	465	6
3636	Vivadixiesubmarinetransmissionplot	Lo-Fi / Slacker Rock, Indie Rock, Singer/Songwriter	melancholic, bittersweet, lo-fi, summer, poetic, autumn, male vocals, depressive, surreal, mellow	3.69	3108	42
3637	Timothy's Monster	Alternative Rock, Indie Rock, Psychedelic Rock	bittersweet, male vocals, drugs, heavy, mellow, introspective, psychedelic, summer, love, raw	3.7	1383	26
3638	Afro-Cuban	Hard Bop, Afro-Cuban Jazz	instrumental, melodic, rhythmic, acoustic, warm, tropical, soothing, improvisation, summer, uplifting	3.72	1036	13
3639	Together Alone	Pop Rock	breakup, melodic, bittersweet, melancholic, poetic, introspective, male vocals, sad	3.72	1114	53
3640	Transcendental Blues	Americana, Alt-Country, Roots Rock	melancholic, male vocals	3.73	646	18
3641	A Caress of the Void	Funeral Doom Metal, Death Doom Metal	melancholic, ominous, depressive, male vocals, death, nocturnal, heavy, sombre, atmospheric, dense	3.7	603	11
3642	Alone	Doom Metal, Epic Doom Metal, Traditional Doom Metal	male vocals, melancholic, lonely, dark, sombre, death, heavy, melodic, misanthropic	3.71	594	24
3643	Components	Post-Bop	atmospheric, instrumental, abstract, improvisation	3.73	541	12
3644	Larmes de héros	Heavy Metal	heavy, fantasy, epic, male vocals, melancholic, passionate	3.71	534	11
3645	Subsurface	Progressive Metal	heavy, melodic, progressive, introspective, male vocals	3.69	528	15
3646	Angel of Salvation	Power Metal	male vocals, energetic, epic, melodic, anthemic, uplifting, triumphant, passionate, technical, optimistic	3.66	514	8
3647	Stick-Up!	Hard Bop, Post-Bop	instrumental, acoustic, improvisation	3.74	413	13
3648	Arbos	Modern Classical, Minimalism		3.73	423	3
3649	Livin' in Hysteria	Power Metal, Heavy Metal	melodic, male vocals, energetic, fantasy, heavy, epic, uplifting	3.72	402	6
3650	Dedicado a Antonio Machado, poeta	Nueva canción española	poetic, protest, male vocals, folklore	3.74	400	10
3651	The Freedom Rider	Hard Bop		3.75	371	7
3652	Variations in Dream-Time	Avant-Garde Jazz, Third Stream, Modern Creative	complex, melodic, instrumental, chaotic, avant-garde, uncommon time signatures, dissonant	3.72	389	5
3653	Wahoo!	Jazz Fusion, Jazz-Rock	warm, rhythmic	3.74	359	9
3654	Gov't Mule	Blues Rock, Jam Band		3.72	442	15
3655	Kocorono	Alternative Rock, Post-Hardcore	concept album, noisy, melodic, raw, breakup, poetic, anxious, longing, melancholic, bittersweet	3.72	453	5
3656	The Giant Is Awakened	Avant-Garde Jazz	acoustic, improvisation, instrumental	3.73	395	5
3657	Atom Heart Mother	Progressive Rock, Psychedelic Rock	psychedelic, peaceful, progressive, suite, male vocals, mellow, soft, pastoral, atmospheric, complex	3.6	18989	364
3658	Zeichnungen des Patienten O.T.	Industrial	anxious, noisy, dissonant, dark, scary, chaotic, mechanical, avant-garde, disturbing, ominous	3.68	2766	24
3659	Johnny Cash With His Hot and Blue Guitar!	Country, Rockabilly	male vocals, rebellious, crime, Christian, rhythmic, love, pastoral, melodic, longing, warm	3.7	2593	33
3660	Kovemmat kädet	Pop Rock, Art Pop	melancholic, female vocals, melodic, sentimental, atmospheric, lonely	3.73	421	9
3661	Only Forever	Britpop, Alternative Rock	melodic, anthemic, melancholic, epic, Wall of Sound, passionate, androgynous vocals	3.72	381	14
3662	Virus	Power Metal	energetic, melodic, male vocals, apocalyptic, dark	3.68	379	14
3663	Svitanie	Progressive Rock	melodic, instrumental, warm, technique, folklore, male vocals	3.74	313	10
3664	The Ramblin' Man	Outlaw Country	male vocals	3.72	329	3
3665	John Larkin	Avant-Garde Jazz, Vocal Jazz	avant-garde, complex, energetic, male vocals, improvisation, passionate	3.75	287	3
3666	The Turning Wheel	Art Pop, Baroque Pop	fantasy, lush, triumphant, female vocals, ethereal, psychedelic, surreal, melodic, nature, passionate	3.66	7408	88
3667	Awake	Progressive Metal	uncommon time signatures, technical, male vocals, progressive, introspective, melodic, philosophical, heavy, melancholic, epic	3.63	7245	204
3668	Remission	Sludge Metal, Progressive Metal, Metalcore	mythology, aggressive, heavy, progressive, technical, male vocals, poetic, chaotic, energetic, uncommon time signatures	3.66	6230	85
3669	New York Dolls	Glam Rock, Proto-Punk, Glam Punk	energetic, rebellious, male vocals, playful, raw, urban, hedonistic, noisy	3.67	5499	140
3670	Fully Completely	Alternative Rock	melodic, warm, pastoral, male vocals, history, sentimental, sports, anxious, uplifting, poetic	3.7	1056	44
3671	Calculating Infinity	Mathcore	uncommon time signatures, manic, technical, chaotic, angry, energetic, aggressive, complex, male vocals, dissonant	3.66	5786	80
3672	Lazer Guided Melodies	Neo-Psychedelia, Space Rock, Dream Pop	peaceful, ethereal, spiritual, soothing, space, atmospheric, drugs, psychedelic, calm, melancholic	3.68	5177	61
3673	Maaäet	Dark Folk	melancholic, dark, meditative, acoustic, winter, sombre, nocturnal, funereal, cold, ominous	3.7	2329	26
3674	剃刀乙女 (Kamisori otome)	Contemporary Folk, Singer/Songwriter	calm, soft, female vocals, soothing, mellow, bittersweet, melancholic, acoustic, minimalistic, peaceful	3.71	1949	5
3675	Low Estate	Gothic Country, Alt-Country	dark, Christian, male vocals, pastoral, rhythmic, melodic, religious, autumn, anxious, passionate	3.71	1670	19
3676	Jewels of Thought	Spiritual Jazz, Avant-Garde Jazz	improvisation, passionate, lush, male vocals, psychedelic, spiritual, religious, avant-garde, atmospheric, warm	3.72	1515	13
3677	Robot Hive / Exodus	Stoner Rock, Hard Rock	male vocals, heavy, melodic, abstract, energetic, passionate	3.7	1152	18
3678	No Guru, No Method, No Teacher	Singer/Songwriter, Pop Rock	male vocals, nocturnal, soothing, spiritual, passionate, spring, melancholic, meditative, medieval	3.71	913	29
3679	Armchair Boogie	Contemporary Folk, Singer/Songwriter	playful, acoustic, raw, love, male vocals, melodic, humorous, introspective, pastoral, longing	3.71	831	15
3680	The Future Is Now	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	rhythmic, violence, urban, futuristic, political, sampling, male vocals, conscious, drugs, aggressive	3.71	838	17
3681	Act II: The Father of Death	Rock Opera, Hard Rock	science fiction, concept album, epic, male vocals, dark, rock opera, futuristic, urban, passionate, rebellious	3.68	855	12
3682	Tonton Macoute	Jazz-Rock, Progressive Rock		3.73	497	22
3683	Parte de la religión	New Wave, Pop Rock	male vocals, melodic, conscious, playful, quirky, sarcastic, sampling, atmospheric	3.73	506	5
3684	Lucio Dalla	Canzone d'autore	male vocals	3.73	465	5
3782	Godspelized	Spiritual Jazz, Avant-Garde Jazz	improvisation, spiritual, epic, manic, instrumental, chaotic	3.72	413	5
3685	The Human Equation	Progressive Metal, Rock Opera, Progressive Rock	rock opera, male vocals, female vocals, melodic, epic, complex, concept album, introspective, death, philosophical	3.61	3105	102
3686	Climbing!	Hard Rock, Blues Rock, Heavy Psych	heavy, melodic, passionate, psychedelic, male vocals, energetic	3.7	1931	66
3687	Recomposed by Max Richter: Vivaldi - The Four Seasons	Modern Classical	acoustic, instrumental, orchestral, lush, seasonal, atmospheric, soothing, melodic, uplifting, melancholic	3.68	1701	33
3688	Letzte Tage, Letzte Nächte	Krautrock, Neoclassical New Age	spiritual, female vocals, pastoral, uplifting, hypnotic, warm, ethereal, mysterious, religious, passionate	3.71	1618	21
3689	Blue Screen Life	Indie Rock	introspective, lonely, apathetic, melodic, male vocals, melancholic, cryptic, winter, soothing, rhythmic	3.71	1725	20
3690	New York Tendaberry	Singer/Songwriter, Pop Soul, Art Pop	passionate, female vocals, nocturnal, manic, lonely, urban, complex, melodic, mellow, playful	3.69	1482	39
3691	Jolene	Nashville Sound, Singer/Songwriter	female vocals, love, melodic, mellow, passionate, longing, warm, melancholic, bittersweet, romantic	3.71	1423	12
3692	Western Culture	Rock in Opposition	complex, uncommon time signatures, instrumental, avant-garde, dissonant, improvisation, eclectic, technical, apocalyptic, political	3.7	1441	19
3693	Music From The Adventures of Pete & Pete	Jangle Pop, Indie Pop, Television Music	uplifting, autumn, melodic, melancholic, mellow, male vocals, sentimental, bittersweet, space, energetic	3.71	1351	36
3694	Welcome My Last Chapter	Melodic Black Metal	melodic, cold, melancholic, dark, sombre, atmospheric, complex, forest, energetic, aggressive	3.69	1195	19
3695	SMPTe	Progressive Rock, Symphonic Prog	male vocals, melodic, technical	3.69	1189	38
3696	Cruel Sister	Progressive Folk, British Folk Rock, Folk Baroque	folklore, female vocals, acoustic	3.72	1036	26
3697	Labour of Lust	Power Pop, Pop Rock, Pub Rock		3.72	896	27
3698	Oddech wymarłych światów	Thrash Metal	death, aggressive, infernal, male vocals, satanic, energetic, raw, heavy	3.7	716	8
3699	Xaphan: Book of Angels Volume 9	Experimental Rock	improvisation, eclectic, instrumental, quirky	3.71	641	16
3700	Indian Summer	Progressive Rock	heavy, psychedelic, progressive	3.72	581	21
3701	J'un oeil	Progressive Rock		3.73	357	16
3702	The Mountain Queen	Progressive Rock, Jazz-Rock	eclectic, energetic	3.74	333	16
3703	Georges Brassens [Fernande]	Chanson à texte	sarcastic, male vocals, acoustic, sexual, humorous	3.74	295	4
3704	Los Tres	Alternative Rock, Folk Rock	male vocals, melodic, eclectic, political, bittersweet, passionate	3.72	350	9
3705	Origin of Symmetry	Alternative Rock, Art Rock	energetic, passionate, science fiction, epic, futuristic, male vocals, melodic, anxious, progressive, space	3.61	14702	276
3706	Coal	Progressive Metal	male vocals, melodic, uncommon time signatures, progressive, passionate, atmospheric, melancholic, rhythmic, complex, introspective	3.68	1985	33
3707	In Trance	Hard Rock	male vocals, melancholic, existential, energetic, melodic, introspective, longing, nocturnal	3.7	1925	46
3708	The Worldhood of the World (As Such)	Post-Hardcore	rhythmic, raw, humorous, technical, playful, sarcastic, male vocals, energetic	3.72	570	9
3709	Rainmaker	British Folk Rock		3.75	303	7
3710	Mauvais œil	French Hip Hop, Boom Bap	dark, drugs, violence, urban, rhythmic, male vocals, religious, sampling, angry, crime	3.69	354	9
3711	Suspended Night	ECM Style Jazz	nocturnal, atmospheric, calm, mellow, soothing	3.75	320	2
3712	Even in the Quietest Moments...	Progressive Pop, Pop Rock, Progressive Rock	male vocals, melodic, progressive, spiritual, melancholic, peaceful, lush, bittersweet, sarcastic, passionate	3.7	2712	64
3714	Księżyc milczy luty	Black Metal, Post-Metal, Experimental Rock	dark, melancholic, dense, surreal, nocturnal, atmospheric, heavy, aggressive, cryptic, male vocals	3.69	1919	19
3715	Survival	Roots Reggae	political, warm, uplifting, conscious	3.71	1615	36
3716	Instruments Disorder (170 Songs CD)	Noisecore, Harsh Noise	chaotic, noisy, aggressive, raw, avant-garde, manic, improvisation, atonal, infernal, lo-fi	3.67	1643	45
3717	Vol. 5: Dil Cosby Suite	Instrumental Hip Hop, West Coast Hip Hop	sampling, eclectic, playful, rhythmic, energetic, mellow, instrumental, dense, urban, repetitive	3.7	1400	20
3718	V	Progressive Rock	male vocals	3.7	1146	28
3719	呼吸 (Kokyuu)	Dream Pop, Film Soundtrack	ethereal, melancholic, lonely, mellow, lethargic, melodic, sombre, atmospheric, lush, calm	3.71	1145	8
3720	Rain Without End	Death Doom Metal	melodic, melancholic, male vocals, sombre, lonely, introspective, lethargic, rain, ethereal, cold	3.7	956	19
3721	A Hard Road	Blues Rock, British Blues	passionate, male vocals	3.71	1013	33
3722	Freedom Flight	Funk, Soul	psychedelic, mellow, melodic, love, male vocals, warm, optimistic, hypnotic, eclectic	3.72	830	20
3723	Dies Irae	Progressive Rock, Rock Opera, Symphonic Rock	suspenseful, orchestral, choral, mysterious, rock opera, dark, sombre, death, eclectic, ominous	3.68	854	19
3724	The Belle Album	Southern Soul	male vocals, introspective, Christian, love, passionate, happy, sensual	3.73	606	17
3725	Epica Etica Etnica Pathos	Art Rock, Alternative Rock	conscious, anxious, complex, religious, epic, passionate, folklore, eclectic, male vocals, progressive	3.72	633	11
3726	Parcel of Rogues	British Folk Rock	melodic, melancholic, folklore, male vocals, female vocals, pastoral	3.73	507	19
3727	Anthology (Movie Themes 1974-1998)	Film Score, Horror Synth	scary, hypnotic, Halloween, anxious, complex, cold, nocturnal, anthemic, instrumental	3.74	495	2
3728	攻殻機動隊: Stand Alone Complex O.S.T. (Ghost in the Shell: Stand Alone Complex O.S.T.)	Electronic, Television Music, Art Pop	female vocals, male vocals, futuristic, bittersweet, lush, orchestral, eclectic, epic, passionate	3.71	356	1
3729	Moon Germs	Jazz Fusion	playful, energetic, improvisation, instrumental	3.74	304	7
3730	You're Dead!	Nu Jazz, Wonky, Jazz Fusion	death, psychedelic, complex, concept album, melancholic, atmospheric, apocalyptic, spiritual, male vocals, rhythmic	3.64	11193	75
3731	Screamadelica	Alternative Dance, Neo-Psychedelia	drugs, hypnotic, psychedelic, uplifting, party, eclectic, male vocals, happy, playful, hedonistic	3.63	9879	165
3732	Vulgar Display of Power	Groove Metal	angry, aggressive, heavy, male vocals, energetic, violence, hateful, rebellious, rhythmic, boastful	3.58	9611	304
3733	Three Cheers for Sweet Revenge	Emo-Pop, Pop Punk, Post-Hardcore	energetic, passionate, anthemic, love, melodic, male vocals, melancholic, death, anxious, concept album	3.59	9481	117
3734	春と修羅 (Haru to Shura)	Noise Pop, J-Rock, J-Pop	female vocals, energetic, passionate, rhythmic, eclectic, noisy, anxious, rebellious, uplifting, quirky	3.67	6277	23
3735	The Heart of Saturday Night	Singer/Songwriter, Piano Blues	urban, poetic, melancholic, alcohol, male vocals, lonely, nocturnal, romantic, playful, mellow	3.68	5529	99
3736	Doopee Time	Art Pop	concept album, playful, quirky, melodic, female vocals, bittersweet, love, sampling, melancholic, eclectic	3.69	1930	28
3737	Bandolier	Hard Rock	male vocals, eclectic, playful, progressive	3.71	1164	39
3738	Round the Edges	Heavy Psych, Psychedelic Rock	raw, psychedelic, energetic, improvisation, male vocals, dark, progressive	3.72	918	38
3739	Strappado	Thrash Metal	heavy, raw, aggressive, male vocals, rhythmic, angry, hateful, nihilistic, anti-religious, misanthropic	3.7	999	26
3740	March to the Black Holocaust	Black Metal	raw, lo-fi, dark, noisy, hateful, satanic, nocturnal, occult, sombre, dissonant	3.69	967	19
3741	Au-delà du délire	Progressive Rock	pastoral, progressive, fantasy, male vocals, humorous	3.71	845	36
3742	Coping With the Urban Coyote	Stoner Rock	desert, energetic, male vocals, dense, melodic, heavy, psychedelic	3.72	830	20
3743	Maxophone	Progressive Rock, Symphonic Prog	mellow, complex, male vocals, romantic, progressive, epic, eclectic, ethereal, melodic	3.71	774	31
3744	Di Melo	Samba Soul, MPB, Samba-rock	warm, melodic, male vocals, energetic	3.73	494	8
3745	Living Eyes	Punk Rock	energetic, male vocals	3.74	434	9
3746	Of the Sun + Moon	Heavy Metal, Progressive Metal	energetic, melodic, mysterious, fantasy, space, science fiction, progressive, heavy, male vocals, epic	3.71	349	13
3747	Thousands on a Raft	Progressive Rock, Blues Rock		3.74	278	13
3748	Mujeres	Nueva trova	male vocals	3.74	311	3
3749	Showdown!	Electric Texas Blues, Electric Blues		3.74	274	10
3750	A Single Man	Film Score, Modern Classical		3.73	302	6
3751	So Tonight That I Might See	Dream Pop, Neo-Psychedelia	mellow, melancholic, atmospheric, psychedelic, female vocals, romantic, lethargic, bittersweet, calm, sensual	3.66	8331	140
3752	Boston	Hard Rock, AOR	energetic, melodic, male vocals, uplifting, happy, anthemic, love, romantic, warm, bittersweet	3.63	6914	246
3754	Miss Machine	Mathcore	uncommon time signatures, energetic, technical, manic, angry, complex, male vocals, aggressive, chaotic, heavy	3.66	4505	75
3755	Signify	Progressive Rock	sombre, dark, atmospheric, progressive, mellow, melancholic, introspective, male vocals, nocturnal, cold	3.69	4291	79
3756	Fatal Portrait	Heavy Metal	energetic, male vocals, occult, heavy, melodic, ominous, nocturnal, suspenseful, mysterious, dark	3.7	2058	44
3757	Possession	Industrial Rock, Experimental Rock	apocalyptic, chaotic, avant-garde, dense, raw, dark, anxious, heavy, infernal, repetitive	3.69	1669	24
3758	Doe or Die	East Coast Hip Hop, Boom Bap	male vocals, mellow, crime, atmospheric, calm, conscious, urban, rhythmic, violence, alcohol	3.71	1849	53
3759	Wait Long by the River and the Bodies of Your Enemies Will Float By	Punk Blues, Garage Rock	raw, energetic, poetic, passionate, male vocals, depressive, dark, angry, death, alcohol	3.7	1491	24
3760	Promulgation of the Fall	Death Metal	atmospheric, heavy, dense, ominous, misanthropic, dark, hateful, aggressive, male vocals, anti-religious	3.69	1464	22
3761	Eraserhead	Dark Ambient, Film Soundtrack, Drone, Sound Collage	dark, atmospheric, noisy, apocalyptic, surreal, disturbing, scary, mysterious, existential, avant-garde	3.69	1445	12
3762	Psonic Psunspot	Psychedelic Pop, Neo-Psychedelia	psychedelic, surreal, melodic, male vocals, quirky, hypnotic, humorous, playful	3.71	1282	19
3763	Snow	Progressive Rock, Rock Opera	existential, melodic, concept album, male vocals, spiritual, dark, introspective, ..., epic, rock opera	3.7	962	28
3764	Travel	Post-Industrial, Neoclassical Darkwave	mysterious, ominous, lonely, repetitive, bittersweet, dark, sombre, ethereal, funereal, meditative	3.71	801	4
3765	The Sleep of Morbid Dreams	Death Metal	aggressive, heavy, dark, dense, death, male vocals, atmospheric, raw	3.7	766	8
3766	Falconer	Power Metal	melodic, history, energetic, male vocals, fantasy, medieval, heavy	3.66	787	29
3767	God Is More Than Love Can Ever Be	Spiritual Jazz, Avant-Garde Jazz	instrumental, rhythmic, cryptic, surreal, mysterious, uncommon time signatures, uplifting, spiritual, melodic, passionate	3.73	688	9
3768	Micah P. Hinson and the Gospel of Progress	Singer/Songwriter, Indie Folk	male vocals	3.71	688	15
3769	Embrya	Neo-Soul, Contemporary R&B, Smooth Soul	lush, male vocals, mellow, soothing, love, sensual, cryptic, melodic, soft, psychedelic	3.71	699	16
3770	Comin Real Wit It	Memphis Rap, Gangsta Rap, Southern Hip Hop	lo-fi, sampling, crime, male vocals, boastful, violence, psychedelic, ethereal, rhythmic, hypnotic	3.72	661	5
3771	Subterranea	Neo-Prog	progressive, uplifting, existential, rock opera, epic, concept album, ethereal, melodic, atmospheric	3.7	659	20
3772	The Underfall Yard	Progressive Rock	lush, complex, progressive, mellow, epic, male vocals, uncommon time signatures, playful, uplifting, history	3.72	468	17
3773	...Majestic Thou in Ruin	Death Doom Metal	dense, heavy, death, male vocals, funereal, ominous, dark, aggressive, nature, nocturnal	3.72	427	5
3774	A Via-Láctea	MPB, Singer/Songwriter	melodic, longing, male vocals, poetic, atmospheric, lush, melancholic, mellow	3.73	416	10
3775	Five Pieces 1975	Avant-Garde Jazz, Modern Creative	improvisation, complex, technical, melodic, mysterious	3.72	622	7
3776	Know What I Mean?	Hard Bop	soft, ballad, waltz, bittersweet, soothing, lonely, nocturnal, romantic, improvisation, instrumental	3.73	567	5
3777	Ever	Neo-Prog	epic, melodic, uncommon time signatures, progressive, male vocals	3.7	576	20
3778	Avalancha	Hard Rock	cryptic, male vocals, abstract	3.7	616	16
3779	Koniec żartów	Hip Hop, Boom Bap	warm, humorous, optimistic	3.71	613	10
3780	Jaws	Film Score, Cinematic Classical, Orchestral	suspenseful, ominous, aquatic, orchestral	3.71	563	9
3781	Like an Old Fashioned Waltz	Singer/Songwriter, British Folk Rock, Folk Rock	female vocals	3.73	412	15
4017	Tallulah	Jangle Pop, Indie Pop	male vocals, female vocals, melodic	3.71	1023	32
3783	Billie Holiday	Vocal Jazz, Traditional Pop	sentimental, female vocals, melodic, melancholic, romantic, love, bittersweet, lush, longing, lonely	3.73	371	2
3785	Dark Eyes	ECM Style Jazz	instrumental, nocturnal, atmospheric	3.74	323	5
3786	Rockin' and Romance	Pop Rock, Pop	warm, melodic, male vocals	3.73	312	12
3787	808s & Heartbreak	Electropop, Synthpop	cold, lonely, breakup, male vocals, sad, introspective, melancholic, love, sombre, winter	3.54	28372	230
3788	It Was Hot, We Stayed in the Water	Psychedelic Folk, Indie Folk, Lo-Fi / Slacker Rock	melancholic, warm, bittersweet, lo-fi, nature, male vocals, summer, female vocals, playful, noisy	3.67	6309	37
3789	You Are Free	Singer/Songwriter, Indie Folk	female vocals, melancholic, autumn, sad, pastoral	3.68	4907	93
3790	Irrlicht	Space Ambient, Progressive Electronic	dark, space, mysterious, instrumental, atmospheric, ominous, avant-garde, suspenseful, futuristic, hypnotic	3.68	3597	71
3791	The Blackening	Groove Metal, Thrash Metal	aggressive, hateful, heavy, political, male vocals, dark, angry, energetic, melodic, vulgar	3.63	3640	121
3792	Earth A.D. / Wolfs Blood	Hardcore Punk, Horror Punk	raw, male vocals, energetic, paranormal, aggressive, heavy, manic, occult, death, noisy	3.68	3291	61
3793	In Search of the Lost Chord	Psychedelic Pop, Progressive Pop	spiritual, philosophical, lush, progressive, drugs, psychedelic, male vocals, ethereal, atmospheric, warm	3.69	2820	86
3794	The Blue Notebooks	Modern Classical	melancholic, atmospheric, calm, mysterious, sentimental, sombre, instrumental, introspective, soft, melodic	3.69	2680	20
3796	Garden of Delete	Post-Industrial, Progressive Electronic	chaotic, surreal, futuristic, complex, science fiction, sampling, androgynous vocals, atmospheric, dark, nocturnal	3.65	7943	82
3797	Source Tags & Codes	Indie Rock, Post-Hardcore	energetic, anxious, noisy, aggressive, apocalyptic, passionate, male vocals, epic, melancholic, chaotic	3.66	6131	158
3798	It Still Moves	Indie Rock, Southern Rock	male vocals, melancholic, warm, melodic, passionate, epic, bittersweet, romantic, spring	3.7	2393	55
3799	Whiskey for the Holy Ghost	Singer/Songwriter, Folk Rock	dark, sombre, male vocals, atmospheric, depressive, melancholic, nocturnal, suicide	3.7	1860	28
3800	We Shall Overcome: The Seeger Sessions	American Folk Music, Folk Rock, Americana	male vocals, melodic, uplifting, playful, passionate, pastoral, warm, optimistic, acoustic	3.7	1761	54
3801	Francis Albert Sinatra & Antônio Carlos Jobim	Bossa nova, Standards, Vocal Jazz	male vocals, romantic, soothing, calm, melodic, longing, passionate, sentimental, love, warm	3.7	1359	39
3802	Act IV: Rebirth in Reprise	Progressive Rock, Indie Rock, Rock Opera	rock opera, male vocals, autumn, concept album, melodic, eclectic, bittersweet, epic	3.68	1213	9
3803	mikgazer vol.1	Shoegaze	ethereal, female vocals, noisy, lush, bittersweet, melancholic, warm, love, ..., energetic	3.71	1125	14
3804	Grace Under Pressure	Progressive Rock	philosophical, male vocals, melodic, atmospheric, science fiction, futuristic, war, introspective, energetic, complex	3.69	4119	122
3805	Värähtelijä	Psychedelic Rock, Black Metal	hypnotic, dark, ominous, atmospheric, psychedelic, space, eclectic, male vocals, heavy, progressive	3.68	3487	47
3806	Tana Talk 3	East Coast Hip Hop, Gangsta Rap, Hardcore Hip Hop	crime, drugs, violence, urban, sampling, boastful, dark, ominous, male vocals, atmospheric	3.7	1687	12
3807	The Dark Third	Progressive Rock	female vocals, male vocals, epic, melodic, poetic, mythology, atmospheric, passionate, progressive, melancholic	3.69	1432	52
3808	Tortured Existence	Thrash Metal	rhythmic, aggressive, raw, violence, death, manic, infernal, energetic, heavy, dark	3.7	1196	28
3809	Бодун	Art Rock, Experimental Rock, Art Punk	playful, quirky, melancholic, eclectic, male vocals, uncommon time signatures, rhythmic, alcohol, cryptic, anxious	3.7	1018	13
3810	Mercator Projected	Progressive Rock	progressive, psychedelic, eclectic, uncommon time signatures, humorous, male vocals, fantasy, melodic	3.72	802	27
3811	Beyond the Veil	Gothic Metal	melodic, dark, female vocals, aggressive, male vocals, epic, suspenseful, sexual, anti-religious, ominous	3.69	908	19
3812	Elastic Rock	Jazz Fusion, Jazz-Rock	mellow, lush, atmosphere, instrumental	3.72	742	19
3813	Sola Scriptura	Progressive Rock, Symphonic Prog	Christian, epic, male vocals, complex, dark, concept album, progressive, melodic	3.68	534	28
3814	Life on the Line	Pub Rock, Punk Rock	male vocals, energetic, melodic, rebellious, urban	3.73	370	11
3815	Leño	Hard Rock, Rock urbano español, Progressive Rock	lo-fi, rebellious, urban, male vocals	3.72	326	9
3816	Moonlight	Film Score, Modern Classical, Cinematic Classical	sombre, soft, melancholic, depressive, orchestral, atmospheric, lonely, interlude, female vocals, nocturnal	3.73	377	3
3817	The Flower King	Progressive Rock, Symphonic Prog	peaceful, melodic, pastoral, progressive, uplifting, complex	3.73	351	10
3818	Bad	Dance-Pop, Contemporary R&B, Pop	playful, romantic, energetic, male vocals, rhythmic, love, optimistic, uplifting, urban, passionate	3.62	8721	154
3819	The Boy With the Arab Strap	Twee Pop, Chamber Pop, Indie Pop	bittersweet, warm, poetic, melancholic, romantic, melodic, male vocals, summer, mellow, soft	3.66	7686	122
3820	Wish	Alternative Rock	love, male vocals, bittersweet, ethereal, romantic, melancholic, passionate, melodic, anxious, sentimental	3.67	7701	126
3821	Tres Hombres	Blues Rock, Southern Rock	male vocals, raw, rhythmic, energetic, rebellious, desert, hedonistic, anthemic, playful, passionate	3.67	4049	112
3822	La Máquina de Hacer Pájaros	Progressive Rock, Symphonic Prog	complex, technical, progressive, energetic, male vocals, androgynous vocals, satirical, playful	3.72	756	13
3823	Stare Into Death and Be Still	Technical Death Metal	dense, technical, dark, atmospheric, dissonant, complex, ominous, heavy, uncommon time signatures, apocalyptic	3.67	3904	47
3824	The '59 Sound	Heartland Rock, Punk Rock	energetic, bittersweet, anthemic, male vocals, romantic, introspective, melodic, sentimental, summer, passionate	3.68	2467	74
3825	The Lion and the Cobra	Art Pop, Pop Rock, Singer/Songwriter	passionate, raw, bittersweet, female vocals, energetic, epic, triumphant, eclectic, angry	3.7	1985	62
3826	The Ideal Crash	Art Rock, Alternative Rock	mellow, longing, bittersweet, melancholic, dense, passionate, lonely, male vocals	3.69	1816	31
3827	Bubblegum	Alternative Rock, Singer/Songwriter	melancholic, introspective, male vocals	3.71	1781	38
3828	Argybargy	Power Pop, New Wave	energetic, quirky, melodic, playful, male vocals	3.7	1410	41
3829	Document #5	Screamo, Emoviolence	male vocals, aggressive, anxious, noisy, manic, angry, chaotic, misanthropic, energetic, heavy	3.7	1434	13
3830	L'apocalypse des animaux	Ambient, Television Music, Progressive Electronic	melancholic, instrumental, mellow, apocalyptic, atmospheric, ethereal, nocturnal, nature, sentimental, mysterious	3.71	1297	25
3831	Absent Friends	Baroque Pop, Art Pop	lush, bittersweet, orchestral, melodic, male vocals, sentimental, lonely, romantic	3.71	1130	40
3832	Flyin' Shoes	Singer/Songwriter, Country, Outlaw Country	male vocals, love, longing	3.71	1028	16
3833	Elektronik Türküler	Anatolian Rock, Psychedelic Rock	psychedelic, raw, hypnotic, male vocals, poem, longing, sad, anxious, atmospheric, ethereal	3.72	978	25
3834	Mice and Rats in the Loft	Progressive Folk, British Folk Rock	progressive, pastoral, acoustic, psychedelic, complex, forest, atmospheric, death, dark, male vocals	3.71	903	42
3835	Screams and Whispers	Progressive Metal, Thrash Metal	introspective, sombre, dark, complex, male vocals, aggressive, heavy, rhythmic, progressive, energetic	3.68	958	34
3836	Oxidized	Mathcore	noisy, heavy, chaotic, rhythmic, dissonant, complex, futuristic, aggressive, dense, avant-garde	3.69	961	18
3837	...To Be Continued	Smooth Soul, Southern Soul	male vocals, sensual, warm, sexual, psychedelic, romantic, melodic, love, bittersweet, passionate	3.71	891	16
3838	Asylum	Progressive Rock		3.72	803	36
3839	Okie	Country Rock, Blues Rock	mellow, male vocals, pastoral	3.72	715	20
3840	The Pilgrim	Drone, Dark Ambient	death, meditative, sombre, funereal, sparse, concept album, ominous, dark, atmospheric, lonely	3.7	673	5
3841	Is It Because I'm Black	Chicago Soul, Soul	sad, political, urban, male vocals, conscious, rhythmic, melancholic, warm, spiritual, protest	3.72	469	11
3842	Brown and Roach Incorporated	Hard Bop	instrumental, acoustic, improvisation, technical, melodic, energetic, warm, rhythmic, uplifting	3.73	481	15
3843	Music	Acid Rock, Psychedelic Rock	lo-fi, female vocals, psychedelic, atmospheric	3.72	441	19
3844	First Time! The Count Meets the Duke	Big Band	acoustic, instrumental, rhythmic, energetic	3.74	393	11
3845	The Gospel According to Zeus	Hard Rock, Heavy Psych, Psychedelic Rock		3.72	453	23
3846	教育 (Kyōiku)	Art Rock, Pop Rock, J-Rock	energetic, passionate, noisy, female vocals, playful, eclectic, anxious, raw, technical, anthemic	3.7	763	5
3847	Too Far to Care	Alt-Country, Country Rock	anxious, male vocals	3.71	606	18
3848	Earth vs. The Wildhearts	Hard Rock, Alternative Rock	heavy, vulgar, rebellious, playful, love, male vocals, energetic	3.7	592	26
3849	Prose combat	French Hip Hop, Jazz Rap, Boom Bap, Conscious Hip Hop	male vocals, urban, rhythmic, conscious	3.7	604	17
3850	Ming	Avant-Garde Jazz	instrumental, improvisation, technical, composition, acoustic, dense, abstract, surreal, chaotic, warm	3.71	553	8
3851	Introducing Lemon	Art Rock, Experimental Rock, Avant-Prog	progressive, quirky, male vocals, uncommon time signatures, complex, dissonant, playful, eclectic, introspective	3.72	336	12
3852	The Similitude of a Dream	Symphonic Prog, Progressive Rock	melodic, concept album, complex, Christian, male vocals, progressive	3.71	333	11
3853	Ezarian	Post-Hardcore	anxious, atmospheric, ..., melancholic, male vocals, dissonant, passionate, cold	3.73	326	5
3854	Come In	Noise Pop, Lo-Fi / Slacker Rock, Emo	lo-fi, noisy, melancholic, bittersweet, LGBT, energetic, passionate, androgynous vocals, raw, dense	3.65	7978	68
3855	Protection	Trip Hop	melancholic, atmospheric, mellow, sampling, rhythmic, introspective, nocturnal, female vocals, male vocals, lush	3.67	7504	111
3856	Le poison qui rend fou	Avant-Prog, Rock in Opposition	dissonant, uncommon time signatures, complex, dark, female vocals, cold, ominous, suspenseful	3.71	495	11
3857	Garden Shed	Symphonic Prog, Progressive Rock	lush, medieval, progressive, epic, quirky, complex, male vocals	3.72	471	26
3858	Pamięć	Progressive Rock	technical, symphony, space, atmosphere	3.72	449	15
3859	After Midnight	Vocal Jazz	nocturnal, longing, warm, peaceful, love, bittersweet, male vocals, calm, soothing	3.72	449	12
3860	Niemen [Red Album]	Progressive Rock	psychedelic, melodic, playful, progressive, passionate, male vocals	3.73	396	11
3861	Droga za widnokres	Poezja śpiewana	melodic	3.73	389	7
3862	Innuendo	Pop Rock, Hard Rock	melancholic, dark, male vocals, death, depressive, bittersweet, melodic, epic, passionate, eclectic	3.65	5626	125
3863	You Want It Darker	Singer/Songwriter, Chamber Folk	death, poetic, male vocals, sombre, dark, love, existential, introspective, calm, breakup	3.68	4543	49
3864	Tracy Chapman	Singer/Songwriter, Folk Rock	female vocals, conscious, political, love, melancholic, sentimental, melodic, acoustic, passionate, androgynous vocals	3.69	3851	80
3865	A Natural Disaster	Alternative Rock, Progressive Rock	atmospheric, melancholic, passionate, melodic, progressive, introspective, male vocals, sad, lush	3.68	3193	68
3866	Nattestid ser porten vid...	Black Metal	raw, melodic, cold, energetic, male vocals, lo-fi, aggressive, winter, epic, dense	3.69	1937	20
3867	Skyforger	Progressive Metal	mythology, male vocals, melodic, nature, folklore, epic, concept album, melancholic, passionate, heavy	3.67	2118	65
3868	Boys and Girls	Sophisti-Pop, Pop Rock, Art Pop	atmospheric, romantic, male vocals, nocturnal, lush, sensual, sexual, urban, love	3.7	1663	39
3869	Talking Timbuktu	Songhai Music, Blues	warm, spiritual, male vocals, playful, summer, passionate, sensual, rhythmic, mellow, repetitive	3.71	1385	25
3870	Bizarro	Indie Rock	lonely, breakup, energetic, male vocals, sarcastic, anxious, pessimistic	3.71	1376	26
3871	Foulest Semen of a Sheltered Elite	Atmospheric Black Metal	infernal, ominous, dark, atmospheric, male vocals, heavy, serious, mysterious, dense, suspenseful	3.69	1092	18
3872	Ornette!	Avant-Garde Jazz, Free Jazz	improvisation, instrumental, avant-garde, energetic	3.71	1090	11
3873	II: Crush the Insects	Doom Metal, Traditional Doom Metal	humorous, repetitive, dark, heavy, boastful, male vocals, occult, melancholic, anthemic	3.7	1094	21
3874	Nilsson Sings Newman	Art Pop, Baroque Pop	conscious, male vocals, sentimental, bittersweet, melodic, warm	3.71	989	34
3875	Into the Depths of Sorrow	Epic Doom Metal, Traditional Doom Metal	epic, passionate, male vocals, sombre, lonely, heavy, introspective, melodic, depressive, melancholic	3.7	991	24
4931	Black Hole / Blank Canvas	Alternative Rock		3.7	440	7
3876	Rocksession	Jazz-Rock, Krautrock, Jam Band	instrumental, playful, improvisation, repetitive, complex, warm, psychedelic, progressive, atmospheric, hypnotic	3.71	819	18
3877	Pod vládou biče	Technical Death Metal, Deathgrind	progressive, manic, surreal, anxious, raw, complex, dark, technical, heavy, aggressive	3.7	823	10
3878	Too Much Guitar	Garage Rock, Garage Punk, Punk Blues	raw, noisy, rhythmic, sexual, male vocals, energetic, dense	3.71	772	22
3879	Doomsday Afternoon	Progressive Rock	melodic, bittersweet, male vocals, female vocals, apocalyptic, acoustic, passionate, nature, poetic, introspective	3.7	768	24
3881	A Swingin' Affair!	Standards, Vocal Jazz	male vocals, romantic, lonely, love, optimistic, energetic, spring, humorous, uplifting, longing	3.71	687	13
3882	Soul Journey	Americana, Contemporary Folk, Alt-Country	female vocals	3.72	662	21
3883	El espíritu del vino	Hard Rock	cryptic, male vocals, abstract, occult	3.7	641	20
3884	Vulnicura	Art Pop	breakup, sombre, melancholic, female vocals, concept album, serious, sad, sentimental, introspective, lush	3.64	10546	76
3885	Alice in Chains	Grunge, Alternative Metal	dark, drugs, depressive, lonely, male vocals, heavy, sad, alienation, introspective, sombre	3.65	7989	189
3886	I Am a Bird Now	Chamber Pop, Singer/Songwriter	LGBT, melancholic, female vocals, androgynous vocals, sombre, sad, passionate, longing, concept album, melodic	3.65	5933	160
3887	Endless Summer	Glitch	warm, atmospheric, summer, soothing, hypnotic, lush, repetitive, instrumental, meditative, melancholic	3.67	5453	71
3888	Streetnoise	Jazz-Rock, Progressive Rock	rhythmic, female vocals, romantic, uplifting, technical, melodic, playful, progressive, passionate, sentimental	3.72	566	13
3890	Mr. Bungle	Experimental Rock, Avant-Garde Metal, Funk Metal	manic, eclectic, playful, vulgar, humorous, surreal, complex, sexual, quirky, avant-garde	3.64	6399	123
3891	Chuck Person's Eccojams Vol. 1	Vaporwave	sampling, hypnotic, ethereal, repetitive, atmospheric, surreal, bittersweet, psychedelic, mysterious, aquatic	3.65	5397	47
3892	Buy	No Wave	anxious, energetic, rhythmic, dissonant, manic, avant-garde, raw, sarcastic, hedonistic, urban	3.67	4786	59
3893	Da Capo	Psychedelic Rock, Psychedelic Pop	psychedelic, melodic, energetic, melancholic, philosophical, bittersweet, male vocals, love, quirky, conscious	3.68	4625	155
3894	Benefit	Folk Rock, Hard Rock	progressive, pastoral, sombre, male vocals, energetic	3.68	3478	103
3895	Whoracle	Melodic Death Metal	male vocals, melodic, concept album, heavy, aggressive, energetic, passionate, epic, melancholic	3.65	3627	65
3896	Liumin	Dub Techno, Ambient Dub	urban, nocturnal, hypnotic, atmospheric, repetitive, rhythmic, futuristic, instrumental, warm, dense	3.68	3039	36
3897	Deicide	Death Metal	satanic, infernal, aggressive, heavy, manic, misanthropic, anti-religious, occult, male vocals, rhythmic	3.66	3336	67
3898	The Curtain Hits the Cast	Slowcore	sad, bittersweet, lonely, introspective, lethargic, minimalistic, melancholic, atmospheric, male vocals, female vocals	3.7	2431	28
3899	Soul Men	Southern Soul, Deep Soul	energetic, passionate, melodic, uplifting, rhythmic, male vocals	3.72	478	17
3900	Il n'y a plus rien	Poetry, Chanson à texte	lonely, introspective, death, poetic, anarchism, passionate, lush, male vocals	3.71	423	6
3901	The Magic City	Free Jazz	instrumental, avant-garde, dissonant, improvisation, uncommon time signatures, scary, acoustic, suspenseful, surreal	3.69	1594	33
3902	Rides Again	Hard Rock, Blues Rock	male vocals, rhythmic, passionate, playful, melodic	3.7	1107	41
3903	Senderos de traición	Gothic Rock, Alternative Rock	passionate, rhythmic, melancholic, lush, melodic, poetic, atmospheric, male vocals, sombre, bittersweet	3.69	1160	33
3904	Where You Are and Where You Want to Be	Emo, Post-Hardcore	male vocals, passionate, melancholic, aggressive, energetic, bittersweet, death, self-hatred, noisy, introspective	3.69	1085	8
3905	Way Out West	Hard Bop	instrumental, acoustic, sparse, improvisation, desert, pastoral, playful	3.72	1065	23
3906	Gladiator	Film Score, Cinematic Classical	epic, triumphant, martial, atmospheric, pastoral, orchestral, suspenseful, female vocals, lush, melodic	3.69	1080	18
3907	Complete Communion	Avant-Garde Jazz	instrumental, improvisation, energetic, avant-garde, hypnotic	3.71	905	9
3908	Shock Troops	Oi!	energetic, anthemic, rebellious, male vocals, passionate, protest, angry, melodic, political, conscious	3.7	911	27
3909	Music for Church Cleaners Vol. I and II	Ambient	atmospheric, improvisation, meditative, hypnotic, instrumental, spiritual, natural, calm, medieval, sparse	3.71	1062	7
3910	Full Force Galesburg	Indie Folk, Singer/Songwriter	lo-fi, melancholic, passionate, bittersweet, introspective, male vocals, warm, longing, love	3.71	1031	14
3911	De profundis	Modern Classical, Choral, Christian Liturgical Music		3.72	340	4
3912	Slowdive	Dream Pop, Shoegaze	ethereal, atmospheric, male vocals, sentimental, female vocals, mellow, lush, romantic, melancholic, bittersweet	3.63	12114	105
3913	Abyss	Darkwave, Gothic Rock	melancholic, ethereal, dark, atmospheric, nocturnal, female vocals, apocalyptic, heavy, cold, ominous	3.67	5536	53
3914	Real Gone	Experimental Rock	male vocals, manic, rhythmic, raw, sombre, noisy, nocturnal, eclectic, dissonant, death	3.69	3845	90
3915	Back Porch Bluegrass	Bluegrass	male vocals, energetic, uplifting, technical, happy, pastoral, playful, acoustic	3.73	319	7
3916	Joe's Garage Act I	Comedy Rock, Rock Opera, Experimental Rock	vulgar, sarcastic, concept album, satirical, humorous, rock opera, male vocals, quirky, sexual, eclectic	3.66	3572	61
3917	Red Apple Falls	Contemporary Folk, Singer/Songwriter	lonely, depressive, introspective, breakup, pessimistic, male vocals	3.7	2334	37
3918	Dazzle Ships	Synthpop	cold, war, anxious, sampling, political, male vocals, atmospheric, mechanical, abstract, melancholic	3.69	2190	48
3919	May God Bless Your Hustle	East Coast Hip Hop, Experimental Hip Hop	depressive, lonely, male vocals, urban, sampling, sombre, raw, serious, introspective, conscious	3.69	2311	12
3920	Black Market	Jazz Fusion	melodic, rhythmic, instrumental, warm, technical, playful, energetic, summer, soothing, urban	3.7	1971	40
3921	After	Progressive Metal, Black Metal	complex, progressive, male vocals, eclectic, heavy, dark, atmospheric, introspective, ominous, melancholic	3.67	1731	39
3922	無罪モラトリアム (Muzai moratorium)	Pop Rock, Alternative Rock, J-Rock	energetic, playful, female vocals, passionate, quirky, noisy, melodic, dense, love, progressive	3.69	1890	20
3923	The Meters	Deep Funk, Funk, New Orleans R&B	instrumental, rhythmic, uplifting, warm, playful, summer, minimalistic, repetitive	3.71	1579	25
3924	The Rack	Death Metal	heavy, male vocals, death, raw, dark, aggressive, sombre, atmospheric	3.69	1703	22
3925	Drawing of Sound	Drone, Ambient	ethereal, atmospheric, soothing, female vocals, hypnotic, psychedelic, meditative, repetitive, melancholic, winter	3.7	1822	27
3926	Jerusalem	Stoner Metal, Doom Metal	drugs, heavy, repetitive, epic, hypnotic, psychedelic, dense, desert, spiritual, male vocals	3.68	1927	29
3927	Songs From Northern Britain	Power Pop, Jangle Pop	summer, romantic, uplifting, sentimental, warm, mellow, melodic, male vocals, energetic	3.7	1667	44
3928	Bill Fay	Baroque Pop, Singer/Songwriter	melancholic, melodic, mellow, calm, lush, male vocals, bittersweet, dense, religious	3.7	970	34
3930	Mournin'	Hard Rock, Progressive Rock	heavy, aggressive, male vocals, energetic, passionate, rhythmic, raw	3.71	817	29
3931	Tilt (Immagini per un orecchio)	Progressive Rock, Jazz-Rock, Jazz Fusion	rhythmic, atmospheric, complex, uncommon time signatures, philosophical, progressive, male vocals	3.72	792	26
3932	Angels and Daemons at Play	Alternative Rock, Indie Rock	male vocals, melancholic, psychedelic, mellow	3.71	679	13
3933	Digital Dictator	Heavy Metal, US Power Metal	melodic, rhythmic, fantasy, energetic, science fiction, male vocals, heavy	3.71	576	19
3934	The Italian Flag	Indie Rock	noisy, anxious, female vocals, passionate, rhythmic, male vocals, energetic, ominous, quirky, eclectic	3.72	467	11
3935	The House of Atreus: Act I	Power Metal, Heavy Metal, US Power Metal	melodic, male vocals, mythology, epic, triumphant, history, rock opera, energetic, heavy, ...	3.7	497	11
3936	In Extremis	Avant-Prog	uncommon time signatures, complex, progressive, manic, technical, dense, avant-garde, eclectic, male vocals, quirky	3.71	448	15
3937	Beasts of No Nation	Afrobeat	conscious, rhythmic, political, warm, passionate, angry, male vocals, protest, rebellious, dark	3.73	399	7
3938	Fantasias for Guitar and Banjo	American Primitivism	instrumental, acoustic, meditative, melodic, rhythmic, warm, hypnotic	3.71	1389	30
3939	Rajaz	Progressive Rock, Symphonic Prog	desert, epic, progressive, male vocals, melodic	3.7	1187	30
3941	No Agreement	Afrobeat, Afro-Funk	political, rhythmic	3.72	633	7
3942	Nasty Gal	Funk, Funk Rock	raw, rebellious, sexual, female vocals, passionate, psychedelic, aggressive, energetic, manic	3.72	593	10
3943	Your Name	Film Score, Chamber Music, Cinematic Classical	bittersweet, melodic, male vocals, instrumental	3.71	697	3
3944	Strictly From Hunger	Psychedelic Rock	male vocals, energetic, atmospheric, rhythmic, psychedelic	3.72	460	24
3945	It Might as Well Be Swing	Vocal Jazz, Standards	love, melodic, romantic, warm, sentimental, male vocals, acoustic	3.73	393	5
3946	Things May Come and Things May Go, But the Art School Dance Goes on for Ever	Progressive Rock, Psychedelic Rock	psychedelic, poetic, atmospheric	3.73	345	13
3947	Into the Enchanted Chamber	Power Metal	fantasy, melodic, male vocals, energetic, folklore, triumphant, anthemic, mythology, death, heavy	3.64	392	20
3948	Chappaqua Suite	Free Jazz	avant-garde, improvisation, suite, instrumental, dissonant, acoustic, technical	3.73	346	6
3949	Filth	Noise Rock, No Wave	misanthropic, noisy, dark, aggressive, hateful, heavy, raw, angry, atonal, male vocals	3.61	14099	184
3950	Silent Alarm	Post-Punk Revival, Indie Rock	energetic, rhythmic, anxious, male vocals, urban, conscious, cold, political, passionate, love	3.63	11066	236
3951	Relatives in Descent	Post-Punk	dark, male vocals, existential, philosophical, anxious, political, pessimistic, cryptic, misanthropic, rebellious	3.67	5489	38
3952	Black Metal	Art Pop, Hypnagogic Pop	nocturnal, sombre, lonely, sampling, apathetic, urban, cold, atmospheric, deadpan, male vocals	3.66	5757	39
3953	Viva Emptiness	Alternative Metal, Alternative Rock	melancholic, male vocals, atmospheric, cold, heavy, dark, angry, depressive, crime, sombre	3.66	3339	56
3954	Lord Willin'	Southern Hip Hop, Gangsta Rap	male vocals, crime, boastful, urban, rhythmic, drugs, violence, hedonistic, vulgar	3.69	2919	33
3955	Musas Vol. 2	Nueva canción latinoamericana	female vocals, acoustic, calm, melodic, political, passionate, love, warm, summer, sentimental	3.7	2599	18
3956	Ziltoid the Omniscient	Progressive Metal	science fiction, humorous, satirical, rock opera, heavy, epic, progressive, male vocals, melodic, aggressive	3.67	2738	68
3957	El cielo	Art Rock, Progressive Rock	male vocals, progressive, melodic, melancholic, concept album, passionate, complex, poetic, epic, atmospheric	3.67	2791	83
3958	Frames	Progressive Rock	atmospheric, melodic, melancholic, progressive, uncommon time signatures, male vocals, cryptic, complex	3.69	1687	58
3959	Get to Heaven	Art Pop, Progressive Pop, Indie Rock	anxious, energetic, political, playful, conscious, satirical, war, male vocals, existential, rhythmic	3.65	6378	45
3960	Jesu	Drone Metal, Shoegaze, Post-Metal	atmospheric, dense, heavy, hypnotic, repetitive, sombre, melancholic, depressive, misanthropic, self-hatred	3.65	5691	80
3961	The Noise Made by People	Dream Pop, Indietronica, Neo-Psychedelia	female vocals, psychedelic, atmospheric, hypnotic, ethereal, lush, mellow, lonely, futuristic, cold	3.67	4700	43
3962	Peasant	Progressive Folk, Avant-Folk	medieval, passionate, acoustic, male vocals, pagan, bittersweet, concept album, progressive, forest, avant-garde	3.67	4437	46
3963	Live at the Witch Trials	Post-Punk	male vocals, energetic, satirical, sarcastic, urban, rebellious, angry, misanthropic, abstract, dissonant	3.68	3956	79
3964	The Pod	Experimental Rock, Lo-Fi / Slacker Rock, Neo-Psychedelia	surreal, lo-fi, humorous, drugs, psychedelic, male vocals, abstract, noisy, raw, quirky	3.66	4009	81
3965	Indecent & Obscene	Death Metal	raw, angry, misanthropic, heavy, dark, violence, male vocals, death, aggressive, occult	3.7	1269	24
3966	Blue Velvet	Film Score, Dark Jazz	anxious, dark, suspenseful, mysterious, atmospheric	3.72	963	9
3967	Inspiration Is Dead	Post-Hardcore, J-Rock, Alternative Rock	energetic, passionate, raw, female vocals, manic, melodic, male vocals, anthemic, melancholic, technical	3.7	938	4
3968	Nashville	Singer/Songwriter, Pop Rock, Folk Rock	soft, melodic, longing, bittersweet, sarcastic, sentimental, male vocals, love, happy	3.71	854	37
3969	Blissard	Indie Rock, Alternative Rock	melodic, melancholic, psychedelic, energetic, lonely, anxious	3.72	781	9
3970	Jazz Meets India	Spiritual Jazz, Free Jazz	improvisation, acoustic, meditative, instrumental, spiritual, avant-garde	3.71	639	10
3971	The Lady With the Golden Stockings	Avant-Garde Jazz, Hard Bop	rhythmic, energetic, mysterious, avant-garde	3.72	655	11
3972	Métamorphose	Heavy Metal	heavy, male vocals, rhythmic	3.7	655	7
3973	Bass Culture	Dub Poetry	protest, rhythmic, political, urban, conscious, male vocals, repetitive, poetic, hypnotic, angry	3.72	636	14
3974	Bells, Boots and Shambles	Progressive Folk, British Folk Rock, Canterbury Scene	quirky, female vocals, political, surreal, anxious, dark, warm, philosophical, fantasy, peaceful	3.71	531	16
3975	Paradox	Progressive Metal	melodic, concept album, introspective, religious, male vocals, melancholic	3.7	521	14
3976	Intermodulation	Modal Jazz, Post-Bop	instrumental	3.73	412	5
3977	Handful of Earth	Scottish Folk Music	acoustic, folklore, political, pastoral, male vocals, technique, passionate	3.72	420	13
3978	Échate un cantecito	Rumba flamenca, Singer/Songwriter	uplifting, melodic, passionate, warm, male vocals, happy, peaceful, rhythmic, sensual	3.72	373	6
3979	Never Mind the Bollocks Here's the Sex Pistols	Punk Rock	rebellious, male vocals, sarcastic, energetic, nihilistic, political, angry, misanthropic, raw, hedonistic	3.57	16117	593
3980	Apologies to the Queen Mary	Indie Rock	anxious, energetic, passionate, male vocals, triumphant, quirky, introspective, melodic	3.67	4554	111
3981	Alan Vega · Martin Rev	Synthpop, Synth Punk	cold, hypnotic, repetitive, playful, anxious, nocturnal, urban, male vocals, deadpan, dark	3.68	2746	49
3982	The Mountain	Progressive Rock, Progressive Metal	technical, progressive, melodic, epic, male vocals, uplifting, atmospheric, lush, eclectic, quirky	3.67	2447	49
3983	Tales From the Twilight World	Power Metal	fantasy, melodic, energetic, epic, medieval, male vocals, triumphant, science fiction, anthemic, nocturnal	3.67	2330	54
3984	Ensiferum	Folk Metal, Viking Metal	melodic, medieval, mythology, triumphant, epic, aggressive, pagan, folklore, anthemic, male vocals	3.66	2190	58
3985	Mass of the Fermenting Dregs	Alternative Rock, J-Rock	energetic, noisy, female vocals, epic, uplifting, happy	3.69	2636	14
3986	Saint Vitus	Traditional Doom Metal, Doom Metal	dark, heavy, male vocals, funereal, sombre, occult, dense, raw, lo-fi	3.68	2065	40
3987	Massive Conspiracy Against All Life	Atmospheric Black Metal, Black Metal	aggressive, dissonant, complex, ominous, angry, heavy, misanthropic, dark, hateful, atmospheric	3.68	1546	21
3988	Des visages des figures	Alternative Rock, Art Rock	political, sombre, passionate, male vocals, dark, depressive, nihilistic, eclectic, poetic, anxious	3.69	1438	23
3989	Casino	Jazz Fusion, Jazz-Rock	lush, passionate, instrumental, uplifting, rhythmic, progressive, technical, tropical, complex, energetic	3.71	786	16
3990	Rumor and Sigh	Folk Rock, Singer/Songwriter	male vocals	3.71	784	21
3991	None Shall Defy	Thrash Metal	aggressive, satanic, dark, infernal, heavy, death, ominous, nihilistic, occult, energetic	3.7	735	14
3992	Have Moicy!	Contemporary Folk	humorous, acoustic, pastoral, melodic, uplifting, mellow, male vocals, happy, quirky, playful	3.7	683	15
3994	Ode to Io	Stoner Rock	desert, psychedelic, male vocals, heavy, drugs, warm, dense, hypnotic	3.72	457	11
3995	Blood Sugar Sex Magik	Funk Rock, Alternative Rock	sexual, energetic, playful, drugs, humorous, vulgar, summer, male vocals, bittersweet, rhythmic	3.59	15087	338
3996	Countdown to Extinction	Heavy Metal	male vocals, political, heavy, energetic, sarcastic, melodic, apocalyptic, angry, dark, anthemic	3.64	8929	252
3997	2001	Gangsta Rap, West Coast Hip Hop	drugs, sexual, crime, male vocals, vulgar, urban, boastful, rhythmic, humorous, party	3.64	8288	160
3998	Polygondwanaland	Psychedelic Rock, Progressive Rock	uncommon time signatures, male vocals, progressive, psychedelic, mysterious, repetitive, hypnotic, epic, futuristic, space	3.67	6873	37
3999	Actor	Art Pop, Indie Pop	bittersweet, romantic, introspective, lush, melodic, warm, female vocals, passionate, mellow, love	3.66	6734	74
4000	The Night	Alternative Rock, Jazz-Rock	sensual, nocturnal, ominous, sombre, longing, poetic	3.7	1534	30
4001	Retribution	Death Metal	aggressive, rhythmic, death, male vocals, violence, apocalyptic, angry, heavy, dark, anti-religious	3.69	1236	26
4002	Swaddling Songs	Progressive Folk, Folk Rock	pastoral, suspenseful, playful, female vocals, poetic, warm, energetic, nature, pagan	3.71	881	42
4003	Time Further Out	Cool Jazz	mellow, uncommon time signatures, instrumental, calm, playful, acoustic, melodic, complex	3.72	884	19
4004	I'm Just a Prisoner	Southern Soul	female vocals	3.74	323	3
4005	Unfolded Like Staircase	Progressive Rock		3.72	363	12
4006	Ancestors Call	Tuvan Throat Singing	repetitive, longing, melancholic, spiritual, bittersweet, natural, pastoral, male vocals, hypnotic	3.74	337	2
4007	Prison	Poetry	nihilistic, misanthropic, dark, sarcastic, anxious, angry, self-hatred, male vocals, disturbing, satirical	3.73	322	12
4008	Neon Genesis Evangelion II	Television Music, Cinematic Classical	melodic, instrumental, triumphant, epic, lush, energetic, passionate, happy, martial, nocturnal	3.73	328	0
4009	Purple Moonlight Pages	Jazz Rap, Abstract Hip Hop	poetic, introspective, male vocals, abstract, philosophical, sampling, rhythmic, optimistic, mellow, cryptic	3.66	6714	62
4010	Enjoy Eternal Bliss	Post-Rock	instrumental, passionate, epic, atmospheric, melancholic, sentimental, suspenseful, bittersweet, lush, autumn	3.67	3259	86
4011	Oneirology	Southern Hip Hop, Conscious Hip Hop	lush, nocturnal, atmospheric, melancholic, concept album, urban, sexual, calm, male vocals, sampling	3.67	3239	64
4012	Stone's Reach	Melodic Death Metal	fantasy, melancholic, dark, melodic, progressive, male vocals, sombre, energetic	3.67	1740	56
4013	Impossible Princess	Art Pop, Electronic	introspective, eclectic, female vocals, atmospheric, melancholic, energetic, rhythmic, sensual, melodic, mysterious	3.69	1697	32
4014	Failures for Gods	Death Metal	aggressive, infernal, rhythmic, technical, dissonant, uncommon time signatures, hateful, anti-religious, complex, atmospheric	3.69	1527	22
4015	Somewhere in the Between	Ska Punk, Third Wave Ska	energetic, uplifting, introspective, passionate, triumphant, anthemic, melodic, rebellious, conscious, anti-religious	3.67	1554	24
4016	Honky Tonk Heroes	Outlaw Country	male vocals, acoustic, melodic, pastoral	3.69	1101	20
4018	In Search of Truth	Progressive Metal	dark, science fiction, lonely, concept album, melodic, suspenseful, introspective, passionate, alienation, ...	3.66	946	38
4019	The Geese & the Ghost	Progressive Folk, Progressive Rock	medieval, mellow, lush, melodic, warm, male vocals	3.71	852	39
4020	Expression	Free Jazz, Avant-Garde Jazz	mysterious, spiritual, improvisation, instrumental, dissonant, avant-garde, technical, passionate	3.7	1044	15
4021	Dark Matter	Neo-Prog, Symphonic Prog	melodic, progressive, atmospheric, male vocals, existential, uncommon time signatures	3.68	829	24
4022	Quietus	Funeral Doom Metal, Death Doom Metal	funereal, depressive, sombre, heavy, ominous, introspective, dark, atmospheric, melancholic, male vocals	3.69	772	10
4023	Tyranny	Progressive Metal	melodic, political, complex, male vocals, concept album, uncommon time signatures, energetic, progressive, passionate	3.67	767	28
4024	Soul Survivor	East Coast Hip Hop, Boom Bap	boastful, male vocals, urban, rhythmic, sampling	3.71	749	17
4025	The Satellite Years	Post-Hardcore, Metalcore	melancholic, space, male vocals, uplifting, energetic, melodic, heavy, passionate	3.69	775	18
4026	Forward to Termination	Thrash Metal	dark, energetic, aggressive, death, heavy, male vocals, angry, apocalyptic, infernal	3.69	695	13
4027	Erotic Cakes	Jazz Fusion, Progressive Rock	technical, melodic, complex, progressive, instrumental, energetic, playful	3.68	643	16
4028	Infamous Angel	Country, Americana	female vocals, sentimental, death, mellow, spiritual, melodic	3.71	556	16
4029	Familjesprickor	Rock in Opposition	technical, playful, complex, energetic, humorous, quirky, uncommon time signatures	3.71	517	15
4030	Fifth Angel	Heavy Metal, US Power Metal	melodic, rhythmic, anthemic, triumphant, energetic, male vocals, fantasy, introspective	3.7	448	10
4031	Turn	Post-Punk, Noise Rock	noisy, political, anarchism, playful, rebellious, chaotic, sarcastic, poetic, protest, passionate	3.71	429	6
4032	Creation and Destroy	Japanese Hardcore, D-Beat, Noisecore	noisy, raw, chaotic, energetic, aggressive, misanthropic, infernal, pessimistic, angry, manic	3.7	412	4
4033	Barefoot Boy	Jazz Fusion, Jazz-Rock		3.72	366	12
4034	Aura	Alternative Rock	philosophical, romantic, soft, male vocals, heavy, eclectic, poetic, mysterious	3.72	442	13
4035	Call of the Valley	Hindustani Classical Music	instrumental, soothing, meditative, calm, pastoral, improvisation, spiritual, melodic, atmospheric, mellow	3.71	951	22
4036	elseq 4	IDM	atmospheric, instrumental, mechanical, manic, cold, rhythmic, surreal, chaotic, uncommon time signatures	3.68	979	4
4037	Sweet Child	British Folk Rock, Progressive Folk, Folk Baroque	female vocals, acoustic, pastoral, technical, melodic, male vocals, eclectic, mellow, polyphonic	3.71	923	25
4038	Thelonious	Hard Bop	quirky, rhythmic, raw, complex, acoustic, technical, playful, progressive, orchestral, improvisation	3.71	909	13
4039	Forever Blue	Pop Rock, Americana, Roots Rock	breakup, male vocals, melodic, love, bittersweet, romantic, introspective, sentimental, longing	3.7	870	25
4040	Tumuli Shroomaroom	Stoner Metal, Stoner Rock	heavy, psychedelic, male vocals, drugs, dense, rhythmic, existential, energetic, anthemic	3.71	738	12
4041	Good Bye Lenin!	Film Score, Modern Classical		3.72	700	5
4042	Day for Night	Alternative Rock	raw, nocturnal, passionate, male vocals, cold, poetic, melancholic, atmospheric	3.72	628	19
4043	So Far	Contemporary Folk, Singer/Songwriter	melancholic, introspective, mellow, poetic, forest, bittersweet, acoustic, pastoral	3.71	319	15
4044	Diamond Eyes	Alternative Metal	heavy, sexual, atmospheric, male vocals, nocturnal, anxious, dense, rhythmic, romantic, passionate	3.64	6615	81
4045	Catch Thirtythree	Djent	rhythmic, repetitive, heavy, mechanical, complex, dark, concept album, cryptic, technical, uncommon time signatures	3.65	4025	94
4046	Spirit Phone	Synthpop, New Wave, Indietronica	playful, occult, humorous, manic, energetic, quirky, paranormal, male vocals, science fiction, melodic	3.66	3104	47
4047	Plux Quba	Tape Music, Electroacoustic	playful, surreal, atmospheric, avant-garde, sparse, mellow, peaceful, bittersweet, ethereal, soft	3.68	2203	24
4048	Ta det lugnt	Psychedelic Rock, Neo-Psychedelia	melodic, dense, psychedelic, pastoral, passionate, progressive, epic, anthemic, triumphant, complex	3.68	2584	56
4049	Wheels of Steel	NWOBHM, Heavy Metal	energetic, male vocals, anthemic, rebellious	3.69	2100	41
4050	Jazz Samba	Samba-Jazz, Bossa nova	summer, tropical, warm, instrumental, mellow, rhythmic, soothing, playful, uplifting, improvisation	3.7	1876	39
4051	Rockin' the Suburbs	Piano Rock, Singer/Songwriter, Pop Rock	humorous, sarcastic, melodic, male vocals, melancholic, bittersweet	3.68	2016	59
4052	Into the Everflow	Progressive Metal	complex, male vocals, uncommon time signatures, existential, progressive, heavy, abstract, psychedelic, technical, melodic	3.69	744	23
4053	Sommerabend	Symphonic Prog, Progressive Rock	psychedelic, male vocals, progressive	3.71	637	27
4054	The Silver Tongued Devil and I	Outlaw Country, Singer/Songwriter	breakup, melancholic, male vocals, longing, death, poetic, love, lush, soft, acoustic	3.7	672	15
4055	Voidwards	Doom Metal	ritualistic, psychedelic, mysterious, atmospheric, suspenseful, male vocals, ominous, heavy, infernal	3.69	566	15
4056	Pharoah	Spiritual Jazz	hypnotic, spiritual, male vocals, passionate, mysterious, mellow, meditative, uplifting, warm	3.72	544	6
4057	Volumen brutal	Heavy Metal, Hard Rock	male vocals, energetic, melodic	3.7	504	20
4058	All of the Above	East Coast Hip Hop, Conscious Hip Hop, Boom Bap	male vocals	3.72	490	13
4059	Sextet; Six Marimbas	Minimalism, Chamber Music	repetitive, instrumental, anxious, hypnotic, complex, atmospheric	3.72	447	4
4060	The Sacrilege of Fatal Arms	Symphonic Prog, Avant-Prog, Experimental Rock, Progressive Rock	eclectic, male vocals, avant-garde, ominous, suspenseful, choral, dark, epic, orchestral, sombre	3.68	454	15
4061	風の谷のナウシカ はるかな地へ (Kaze no tani no Naushika)	Film Score, New Age, Cinematic Classical	instrumental, fantasy, mysterious, epic, suspenseful, lush	3.73	433	4
4062	The Stylistics	Philly Soul, Smooth Soul	lush, romantic, melodic, love, soft, male vocals, soothing	3.72	515	9
4063	Wee Tam & The Big Huge	Psychedelic Folk	male vocals, pastoral, melodic, mellow, soothing, female vocals, existential, peaceful, nature, meditative	3.71	497	20
4064	Life'll Kill Ya	Singer/Songwriter, Folk Rock	death, sarcastic, bittersweet, humorous, pessimistic	3.72	458	10
4065	Sleeping With the Enemy	West Coast Hip Hop, Political Hip Hop, Conscious Hip Hop, Hardcore Hip Hop	protest, crime, rhythmic, political, sampling, rebellious, dark, violence, martial, aggressive	3.7	428	17
4066	Random Access Memories	Disco, Electronic	rhythmic, melodic, party, uplifting, playful, male vocals, lush, eclectic, warm, optimistic	3.57	20046	277
4067	Meet the Residents	Experimental	surreal, avant-garde, humorous, ominous, manic, playful, abstract, satirical, male vocals, lo-fi	3.65	5569	107
4068	Making Movies	Rock, Pop Rock	male vocals, rhythmic, love, playful, romantic, melodic, anthemic, uplifting, passionate	3.67	4321	104
4069	Leftoverture	Progressive Rock	epic, progressive, melodic, male vocals, energetic, technical, introspective, lush, passionate, spiritual	3.67	3220	92
4071	Dr. Octagon	Abstract Hip Hop	humorous, sexual, mysterious, cryptic, science fiction, surreal, vulgar, male vocals, abstract, psychedelic	3.66	5144	116
4072	ማሕሙድ ፡ ኣሕመድ ፡ (Mahmoud Ahmed)	Tizita	male vocals, passionate, warm, summer, romantic, repetitive, melodic, calm, religious, hypnotic	3.7	1389	30
4073	Stardust	Standards, Country Pop	nocturnal, peaceful, soft, longing, mellow, male vocals, passionate, soothing, melodic	3.69	1407	38
4074	Shake Some Action	Rock & Roll, Power Pop, Pop Rock	male vocals, energetic, melodic, love	3.69	1314	46
4075	Strange Warmings of Laddio Bolocko	Experimental Rock, Noise Rock	noisy, rhythmic, repetitive, hypnotic, instrumental, dissonant, chaotic, energetic, raw, uncommon time signatures	3.69	1286	19
4076	Love Devotion Surrender	Jazz Fusion, Jazz-Rock	spiritual, technical, energetic, improvisation, complex, warm	3.7	1181	48
4077	Księga Tajemnicza. Prolog	Horrorcore	drugs, psychedelic, dark, anxious, manic, rhythmic, disturbing, aggressive, ominous, male vocals	3.67	1199	21
4078	Never a Dull Moment	Roots Rock	raw, passionate, male vocals, energetic	3.7	1065	45
4079	Epilog	Symphonic Prog, Progressive Rock	uncommon time signatures, mellow, forest, instrumental	3.69	1082	25
4080	Odd Fellows Rest	Sludge Metal	heavy, male vocals, sombre, melodic, dark, melancholic, angry, aggressive	3.7	1018	20
4081	Arcane Rain Fell	Gothic Metal, Doom Metal	melancholic, female vocals, atmospheric, male vocals, sombre, depressive, sad, concept album, pessimistic, dark	3.68	1019	17
4082	Why Do They Call Me Mr. Happy?	Post-Hardcore, Art Punk	sarcastic, manic, hateful, poetic, rhythmic, progressive, energetic, conscious, misanthropic, aggressive	3.7	961	16
4083	Bright Phoebus	British Folk Rock, Contemporary Folk, English Folk Music	pastoral, pagan, female vocals, psychedelic, forest, male vocals, melodic, scary, warm, seasonal	3.73	350	10
4084	Enemigos de lo ajeno	New Wave, Pop Rock, Jangle Pop	melodic, male vocals	3.72	305	4
4085	Kattvals	Progressive Rock, Jazz-Rock	rhythmic, instrumental	3.73	281	15
4086	Life Before Insanity	Southern Rock, Blues Rock, Jam Band		3.73	300	7
4087	Emerson, Lake & Palmer	Progressive Rock, Symphonic Prog	fantasy, complex, male vocals, eclectic, progressive, technical, lush, melodic, epic, playful	3.66	5444	125
4088	Picaresque	Chamber Pop, Indie Folk, Indie Pop	poetic, folklore, bittersweet, male vocals, history, ballad, melodic, epic, melancholic, passionate	3.65	5265	140
4089	Clear Spot	Blues Rock	male vocals, passionate, dark, surreal, playful, nocturnal	3.68	2530	62
4090	Joy of a Toy	Canterbury Scene, Psychedelic Pop	playful, melodic, quirky, surreal, psychedelic, spring, progressive, humorous, happy, deadpan	3.68	2324	63
4091	Kaleidoscope	Post-Punk	anxious, sombre, dark, female vocals, ominous, cold, psychedelic, atmospheric, surreal, nocturnal	3.68	3599	53
4092	Slave to the Grind	Heavy Metal, Hard Rock	energetic, male vocals, heavy, angry, anthemic, rebellious, melodic, conscious, aggressive	3.67	2269	73
4093	The Magician's Birthday	Hard Rock	fantasy, epic, melodic, male vocals, heavy, progressive, mellow	3.68	2096	58
4094	Forlatt	Dark Folk	acoustic, instrumental, mellow, forest, lonely, calm, sombre, soothing, soft, nature	3.7	1487	24
4095	Presents Charles Mingus	Avant-Garde Jazz	acoustic, improvisation, avant-garde, technical, male vocals, anxious, sparse, passionate, complex, political	3.7	1346	26
4097	American Nervoso	Mathcore	chaotic, dissonant, aggressive, technical, complex, heavy, misanthropic, male vocals, energetic, angry	3.69	1415	9
4098	Free	Blues Rock	male vocals	3.7	1214	44
4099	0 + 2 = 1	Post-Hardcore, Art Punk	rhythmic, energetic, humorous, quirky, satirical, sarcastic, male vocals, raw	3.7	1198	14
4100	Slapp Happy or Slapp Happy	Art Pop, Progressive Pop	playful, female vocals, quirky, melodic, poetic, eclectic, lush	3.69	1010	23
4101	Harakka Bialoipokku	Progressive Rock, Jazz-Rock	instrumental, technical, progressive, eclectic, complex, playful, epic, pastoral, warm	3.71	782	20
4102	From the Witchwood	Folk Rock, Progressive Folk	complex, male vocals, progressive, psychedelic, lush, pastoral, dark	3.71	954	35
4103	Uomo di pezza	Symphonic Prog, Progressive Rock	spring, mellow, romantic, melodic, bittersweet, sentimental, male vocals, alienation, progressive, poetic	3.71	961	28
4104	Jóia	MPB, Singer/Songwriter, Contemporary Folk	soft, calm, minimalistic, male vocals, peaceful, acoustic, natural, poetic, abstract, avant-garde	3.7	785	20
4105	Lady Lake	Progressive Rock, Symphonic Prog	introspective, poetic, passionate, male vocals	3.71	730	32
4106	Barndomens Stigar	Avant-Prog	female vocals	3.71	630	17
4107	Twice Removed From Yesterday	Blues Rock		3.71	607	20
4108	Life Time	Avant-Garde Jazz	improvisation, sparse, instrumental, abstract, acoustic, technical, avant-garde, energetic, mysterious, rhythmic	3.71	608	17
4109	Defying the Rules	Power Metal	passionate, heavy, technical, male vocals, fantasy, energetic, concept album, melodic, science fiction, triumphant	3.67	558	27
4110	Faintly Blowing	Psychedelic Rock, Psychedelic Pop	atmospheric, melodic, poetic, psychedelic, fairy tale, male vocals	3.71	516	23
4111	Matita Perê	MPB	tropical, lush, orchestral, calm, male vocals, surreal, psychedelic, melodic	3.72	488	19
4112	Cigarette Smoke Phantom	Post-Rock	rhythmic, repetitive, atmospheric, noisy, raw, longing, male vocals, cold	3.71	503	4
4113	Dose	Southern Rock, Blues Rock, Jam Band		3.71	490	15
4932	The Spice of Life	Soul	female vocals, energetic, melodic, conscious, lush	3.69	376	14
4114	Late Night Final	Singer/Songwriter, Chamber Pop	romantic, bittersweet, mellow, melancholic, nocturnal, male vocals, melodic, lush	3.72	427	13
4115	Volunteered Slavery	Post-Bop	warm, melodic, male vocals, energetic, playful	3.73	419	10
4116	Uncle Charlie & His Dog Teddy	Country Rock	male vocals, melodic, pastoral	3.72	410	12
4117	We Three	Hard Bop	technical, calm, rhythmic, sensual, playful, instrumental, soft	3.73	411	9
4118	Friendship	Progressive Rock	male vocals	3.73	365	20
4119	I'll Take Care of You	Singer/Songwriter, Americana	acoustic, male vocals	3.71	782	9
4120	Litany	Modern Classical		3.72	352	4
4121	Mezmerize	Alternative Metal	political, energetic, humorous, melodic, male vocals, aggressive, heavy, playful, manic, eclectic	3.59	11836	207
4122	Écailles de lune	Blackgaze, Post-Metal, Shoegaze	ethereal, atmospheric, melancholic, passionate, male vocals, aquatic, sad, poetic, melodic, lush	3.64	7272	93
4123	Brick Body Kids Still Daydream	Abstract Hip Hop, Conscious Hip Hop	mellow, male vocals, introspective, conscious, warm, melodic, abstract, urban, passionate, concept album	3.68	4539	25
4124	Diadem of 12 Stars	Atmospheric Black Metal	nature, atmospheric, epic, dense, passionate, male vocals, melodic, female vocals, heavy, melancholic	3.67	3428	42
4125	Hallowed Ground	Folk Punk, Cowpunk, Country Rock	anxious, Christian, dark, death, acoustic, raw, male vocals, manic, energetic, suspenseful	3.68	2959	56
4126	Tyranny and Mutation	Hard Rock	male vocals, psychedelic, mysterious, cryptic, dark, energetic, surreal, melodic, playful, heavy	3.69	2764	82
4127	Sorcerer	Modal Jazz	instrumental, rhythmic, lush, suspenseful, mysterious, meditative, atmospheric	3.7	2441	41
4128	Elegy	Progressive Metal, Melodic Death Metal	male vocals, mythology, melodic, folklore, progressive, heavy, eclectic, epic, rhythmic	3.66	2238	57
4129	Quicksilver Messenger Service	Psychedelic Rock, Acid Rock	psychedelic, improvisation, melodic, male vocals, atmospheric	3.69	1803	49
4130	Innercity Griots	West Coast Hip Hop, Abstract Hip Hop, Jazz Rap	urban, abstract, playful, energetic, male vocals, conscious, raw, boastful, political, technical	3.68	1529	28
4131	Floating	Progressive Rock, Space Rock	psychedelic, complex, male vocals, progressive, futuristic, science fiction, energetic, heavy, mysterious, space	3.7	1306	40
4132	World Without Tears	Alt-Country, Singer/Songwriter	female vocals	3.71	764	37
4133	A Distant Thunder	Heavy Metal, Power Metal, US Power Metal	energetic, melodic, male vocals, heavy, epic, fantasy, rhythmic, technical, complex, dark	3.68	672	15
4134	Veneno	Andalusian Rock, Flamenco nuevo, Progressive Folk	male vocals, vulgar, acoustic, urban, technical, playful, progressive, rebellious, protest, cryptic	3.7	599	17
4135	Ship Ahoy	Philly Soul	lush, male vocals, conscious, passionate, love	3.72	511	14
4136	Cabretta	Pop Rock	longing, passionate, male vocals, energetic	3.71	484	16
4137	Βραχνός προφήτης	Entechna, Avant-Folk	eclectic, male vocals, passionate, poetic, female vocals, melodic, sombre, mysterious, cryptic	3.72	506	7
4138	Deseo carnal	New Wave	LGBT, female vocals, male vocals, love, breakup, dark, death	3.71	439	7
4139	Love Man	Southern Soul	love, male vocals	3.73	422	7
4140	星間性交	Vaporwave, Ambient	nocturnal, soothing, atmospheric, lethargic, sampling, peaceful, mysterious, melancholic, repetitive, soft	3.69	464	9
4141	Hold Me Forever (In Memory of My Mom Nancy York Carroll)	Progressive Rock	instrumental, melancholic, energetic, progressive, death, passionate	3.71	362	8
4142	The Thing to Do	Hard Bop	playful, acoustic, improvisation, instrumental	3.73	308	4
4143	The Ballasted Orchestra	Ambient, Drone	instrumental, dark, ethereal, cold, nocturnal, atmospheric, ominous, sparse, winter, hypnotic	3.68	2368	33
4144	This Is Marijata	Afro-Funk	lo-fi, rhythmic, conscious, psychedelic, passionate, male vocals, tropical, warm, energetic, improvisation	3.71	1147	7
4145	Under Jolly Roger	Heavy Metal, Power Metal	male vocals, energetic, anthemic, heavy	3.69	1270	26
4146	The Ghost Trade	Avant-Prog, Art Punk	ominous, male vocals, complex, rhythmic, political, progressive, sarcastic, avant-garde, atmospheric, satirical	3.7	860	10
4147	Blue & Sentimental	Hard Bop, Soul Jazz	instrumental, soothing, lonely, improvisation, nocturnal, passionate, atmosphere, sensual, playful, warm	3.73	347	8
4148	Domino	Post-Bop	ballad, eclectic, poetic, bittersweet, technical, passionate, improvisation, melancholic, warm, acoustic	3.72	349	5
4149	Homage to Charles Parker	Avant-Garde Jazz, Modern Creative		3.71	355	10
4150	Fables of the Reconstruction	Jangle Pop, Alternative Rock	cryptic, male vocals, mysterious, melancholic, melodic, lonely, autumn, nocturnal, passionate, ...	3.67	5541	129
4151	Viva Hate	Jangle Pop	melodic, bittersweet, sarcastic, male vocals, poetic, melancholic, sentimental, pessimistic, introspective, LGBT	3.66	5229	95
4152	Home, Like Noplace Is There	Emo	passionate, death, suicide, melancholic, anxious, introspective, poetic, existential, energetic, depressive	3.66	5020	46
4153	Rocks	Hard Rock	male vocals, hedonistic, energetic, sexual, heavy, urban, raw	3.64	4732	192
4154	Danzig	Hard Rock, Heavy Metal	heavy, male vocals, dark, occult, passionate, energetic, melodic, anthemic, raw	3.66	4112	68
4155	Volunteers	Psychedelic Rock, Folk Rock	political, conscious, rebellious, protest, psychedelic, female vocals, pastoral, male vocals, anarchism	3.67	3197	102
4156	The Cry of Love	Psychedelic Rock	male vocals, energetic, passionate, ballad, urban, melodic, playful, summer, rhythmic, conscious	3.7	2033	50
4157	Learning to Crawl	Pop Rock, New Wave	melodic, introspective, female vocals, melancholic, mellow, energetic, autumn, passionate, bittersweet	3.69	1647	53
4158	Straight Up	Power Pop, Pop Rock	male vocals, melodic, anthemic, mellow, warm, uplifting, love, sentimental, longing	3.69	1535	65
4159	Anodyne	Alt-Country, Americana	melancholic, pastoral, bittersweet, acoustic, male vocals, sad	3.69	1508	38
4160	The Underdark	Screamo	apocalyptic, passionate, dark, anxious, male vocals, melancholic, atmospheric, nocturnal, political, winter	3.69	1491	17
4161	All 'n All	Funk, Soul	optimistic, lush, summer, male vocals, rhythmic, uplifting, fantasy, party, tropical, warm	3.7	1393	28
4162	Väre	Dark Folk	atmospheric, sombre, funereal, dark, male vocals, melancholic, nature, meditative, nocturnal, poetic	3.7	1168	10
4163	Trace	Alt-Country, Americana	autumn, lonely, melancholic, male vocals, mellow, sentimental	3.69	1110	37
4164	Gun	Hard Rock, Psychedelic Rock	psychedelic, progressive, male vocals, energetic, epic	3.7	1007	31
4165	Wet Land	Ambient, New Age	soothing, aquatic, meditative, calm, peaceful, nature, instrumental, warm, soft, atmospheric	3.71	1044	7
4166	Back Stabbers	Philly Soul	love, optimistic, male vocals, conscious, passionate, vocal group, lush, melodic, playful, sentimental	3.71	962	22
4167	Jehovahkill	Psychedelic Rock, Art Rock, Alternative Rock	male vocals, rhythmic, surreal, abstract, psychedelic, cryptic, mythology, eclectic, pagan, passionate	3.68	903	41
4168	Effloresce	Progressive Rock	melodic, progressive, melancholic, psychedelic, male vocals, atmospheric, uncommon time signatures, passionate, dense, complex	3.68	1635	41
4169	Reloaded	East Coast Hip Hop, Gangsta Rap	crime, boastful, deadpan, urban, violence, minimalistic, poetic, atmospheric, drugs, male vocals	3.7	806	12
4170	Program Music III	Post-Rock, Electronic, Modern Classical	uplifting, epic, lush, eclectic, atmospheric, progressive, suite, complex, bittersweet, futuristic	3.7	667	2
4171	Requiem: Mezzo forte	Doom Metal, Gothic Metal	male vocals, sombre, female vocals, funereal, orchestral, atmospheric, nocturnal, religious, spiritual, Christian	3.67	630	27
4172	Village of the Pharoahs	Spiritual Jazz	improvisation, warm, psychedelic, peaceful, uplifting, spiritual, epic, avant-garde, instrumental, hypnotic	3.72	593	5
4173	Run the Jewels 3	Hardcore Hip Hop	aggressive, political, boastful, male vocals, energetic, angry, rebellious, conscious, rhythmic, crime	3.62	11593	72
4174	Loop-finding-jazz-records	Glitch, Ambient Techno, Microhouse	warm, instrumental, atmospheric, calm, hypnotic, minimalistic, soothing, soft, futuristic, repetitive	3.67	3723	29
4175	Teethed Glory and Injury	Atmospheric Black Metal, Post-Metal	dark, ominous, cold, atmospheric, heavy, male vocals, dissonant, avant-garde, mechanical, depressive	3.66	3649	39
4176	Only Theatre of Pain	Deathrock	dark, raw, anti-religious, anxious, male vocals, atmospheric, misanthropic, death, paranormal, energetic	3.67	3683	50
4177	The Crazy World of Arthur Brown	Psychedelic Rock	manic, psychedelic, occult, surreal, male vocals, playful, fantasy, quirky, infernal, concept album	3.69	2496	72
4178	The Work Which Transforms God	Black Metal, Atmospheric Black Metal	dissonant, mechanical, cold, ominous, dark, apocalyptic, philosophical, atmospheric, male vocals, heavy	3.67	2615	47
4179	Holiday	Indie Pop, Synthpop	melodic, romantic, bittersweet, sarcastic, male vocals, humorous, lo-fi, tropical, quirky, LGBT	3.68	2652	50
4180	Elements	Technical Death Metal, Progressive Metal, Avant-Garde Metal	technical, uncommon time signatures, male vocals, spiritual, nature, philosophical, progressive, complex, heavy, abstract	3.66	2718	62
4181	Wild Gift	Punk Rock	female vocals, urban, aggressive, male vocals	3.68	2093	38
4182	Das Tor	Atmospheric Black Metal	cold, lo-fi, winter, atmospheric, raw, hypnotic, repetitive, dark, noisy, melancholic	3.68	2007	35
4183	Metal Heart	Heavy Metal	male vocals, heavy, anthemic, melodic, passionate	3.67	2173	55
4184	The Destroyers of All	Technical Death Metal, Atmospheric Sludge Metal	atmospheric, complex, technical, sombre, chaotic, heavy, dissonant, male vocals, ominous, misanthropic	3.67	1941	42
4185	悲愴 (Pathétique)	Noise Rock, Psychedelic Rock, Noise, Free Improvisation	improvisation, noisy, psychedelic, avant-garde, manic, raw, dissonant, lo-fi, dense, hypnotic	3.65	1996	38
4186	8	Minimal Techno, Dub Techno	minimalistic, repetitive, cold, rhythmic, mechanical, atmospheric, nocturnal, hypnotic, futuristic, instrumental	3.7	1202	13
4187	Anticapital	Deathgrind	anarchism, pessimistic, aggressive, heavy, male vocals, political, nihilistic, dark, manic, misanthropic	3.69	1068	11
4188	L'isola di niente	Progressive Rock, Symphonic Prog	complex, atmospheric, progressive, uncommon time signatures, philosophical, melodic, epic, male vocals, warm, poetic	3.71	982	17
4189	Heralding: The Fireblade	Viking Metal, Black Metal	male vocals, energetic, atmospheric, mythology, epic, pagan, sombre, folklore	3.69	873	9
4190	Life Sentence	Heavy Metal	male vocals, energetic, heavy, melodic, aggressive	3.69	910	16
4191	Solstice	ECM Style Jazz, Jazz Fusion, Chamber Jazz	instrumental, calm, peaceful, atmospheric, mellow, dense, improvisation, melodic, technical, composition	3.71	763	12
4192	Китицi (Kytytsi)	Avant-Folk	female vocals, forest, melancholic, atmospheric, spiritual, ethereal, pastoral, autumn, folklore, playful	3.71	781	6
4193	The World of Genius Hans	Canterbury Scene, Avant-Prog, Progressive Rock		3.7	667	18
4194	Little Busters	Power Pop, Alternative Rock, J-Rock	energetic, anthemic, uplifting, bittersweet, raw, male vocals	3.69	691	10
4196	Moonshine	Folk Baroque, Contemporary Folk	male vocals, acoustic, folklore, pastoral	3.71	449	12
4197	Paradise Now	Psychedelic Rock	psychedelic, surreal, male vocals, dark, atmospheric, ominous, hypnotic, desert	3.7	550	18
4198	Fast Stories...From Kid Coma	Grunge, Psychedelic Rock	psychedelic, passionate, dense, melodic, epic, noisy, drugs, nocturnal, hypnotic, male vocals	3.71	527	29
4199	Untitled Album 1	Grindcore, Mathcore	technical, chaotic, manic, eclectic, uncommon time signatures, triumphant, science fiction, male vocals, complex, futuristic	3.69	534	8
4200	Samurai	Progressive Rock, Jazz-Rock	progressive, male vocals, melodic, lush, psychedelic, complex, mellow	3.71	456	22
4201	Smoke Stack	Post-Bop	acoustic, improvisation, instrumental, technical, warm, rhythmic, nocturnal	3.71	489	13
4202	The Fog	Film Score, Horror Synth		3.73	295	3
4203	Changó	Latin Rock, Progressive Rock		3.73	263	14
4204	4:44	East Coast Hip Hop	introspective, male vocals, sampling, serious, conscious, bittersweet, mellow, rhythmic, concept album, lush	3.64	8551	80
4205	Without You I'm Nothing	Alternative Rock	melancholic, introspective, drugs, depressive, lonely, pessimistic, sexual, male vocals, atmospheric, breakup	3.66	6230	99
4206	The Beach Boys Today!	Pop Rock, Baroque Pop	romantic, love, melodic, introspective, uplifting, vocal group, lush, male vocals, optimistic, summer	3.66	5843	142
4207	Amplifier Worship	Drone Metal, Sludge Metal	atmospheric, heavy, hypnotic, dense, repetitive, male vocals, noisy, angry, suspenseful, psychedelic	3.65	5522	54
4208	Ocean Beach	Slowcore, Folk Rock	sad, melancholic, introspective, atmospheric, male vocals, longing, bittersweet, lonely, mellow, warm	3.67	3538	48
4209	Torture Garden	Avant-Garde Jazz, Grindcore	manic, chaotic, angry, complex, energetic, eclectic, avant-garde, dissonant, anxious, technical	3.65	3223	63
4211	Un peu de l'âme des bandits	Rock in Opposition	uncommon time signatures, dissonant, eclectic, playful, avant-garde, female vocals, complex, surreal, cryptic, progressive	3.68	1971	33
4212	Shaft	Soul, Funk, Film Score	crime, rhythmic, instrumental, warm, lush, soft	3.7	1710	44
4213	Cymande	Funk, Psychedelic Soul	peaceful, rhythmic, soothing, mellow, spiritual, warm, uplifting, improvisation	3.7	1626	29
4214	Believe It	Jazz Fusion, Jazz-Rock	rhythmic, technical, instrumental	3.72	351	9
4215	Dolmen Music	Chamber Music, Modern Classical, Post-Minimalism	female vocals, avant-garde, chamber music, choral, surreal, hypnotic, repetitive, atmospheric, spiritual, nocturnal	3.67	2445	45
4216	Bad Love	Singer/Songwriter, Pop Rock, Piano Rock	male vocals, political, melodic, lyrics, sarcastic, ensemble, female vocals, vocal group, warm, humorous	3.72	339	17
4217	Lost in the Stars: The Music of Kurt Weill	Cabaret, Jazz	playful, eclectic, humorous, political, male vocals, female vocals	3.73	288	11
4218	Skeleton in Armour	Progressive Rock	female vocals, rhythmic, technical	3.73	276	18
4219	The Sanity Annex	East Coast Hip Hop, Abstract Hip Hop, Experimental Hip Hop	male vocals, abstract, atmospheric, urban, rhythmic, ethereal, nocturnal, eclectic	3.71	305	4
4220	A Gift From a Flower to a Garden	Folk Pop, Singer/Songwriter, Psychedelic Pop	mellow, psychedelic, male vocals, love, playful, children's music, nature, pastoral, uplifting, soft	3.69	1877	59
4221	Medusa	Hard Rock	male vocals	3.7	695	30
4222	Take a Look Around	East Coast Hip Hop, Boom Bap	rhythmic, urban, boastful, male vocals, conscious, playful, sampling	3.69	623	22
4223	Yes We Can	New Orleans R&B, Funk, Soul	happy, uplifting, male vocals, mellow, summer, conscious, melodic, playful, rhythmic, warm	3.7	517	19
4224	Rose Tattoo	Hard Rock, Pub Rock	rebellious, male vocals, hedonistic, energetic, crime, boastful, urban, anthemic	3.7	552	26
4226	The 80 Minute Râga	Hindustani Classical Music	meditative, hypnotic, spiritual, acoustic, improvisation, suite, technical, complex, psychedelic	3.72	483	8
4227	Black Love	Alternative Rock	melancholic, male vocals, romantic, breakup, passionate, nocturnal, dark, aggressive, urban, angry	3.69	1833	43
4228	Red Roses for Me	Celtic Punk, Celtic Rock	bittersweet, history, passionate, energetic, male vocals, alcohol, melodic, playful, vulgar, pastoral	3.7	1566	52
4229	Lyburnum Wits End Liberation Fly	Emocore, Post-Hardcore	raw, passionate, political, angry, anxious, rebellious, lo-fi, male vocals, misanthropic, noisy	3.68	1600	21
4230	In a Bar, Under the Sea	Art Rock, Alternative Rock	eclectic, male vocals, quirky, rebellious, humorous, party, love, energetic, alcohol, depressive	3.67	1476	22
4231	Words That Go Unspoken, Deeds That Go Undone	Death Metal	occult, sexual, ominous, complex, poetic, progressive, atmospheric, infernal, aggressive, satanic	3.67	1350	32
4232	Mulatu of Ethiopia	Ethio-Jazz	instrumental, mellow, warm, psychedelic, rhythmic, hypnotic, energetic, quirky, improvisation, playful	3.71	1110	13
4233	Cold Steel... for an Iron Age	Black Metal, Thrash Metal	heavy, dark, aggressive, male vocals, energetic, war, dense	3.68	1035	8
4234	1492: Conquest of Paradise	Film Score, Neoclassical New Age, Electronic	epic, lush, ethereal, spiritual, atmospheric, choral	3.69	974	17
4235	Kiko	Tex-Mex, Roots Rock	male vocals	3.69	817	27
4236	On Time	Hard Rock, Heavy Psych	heavy, male vocals, energetic, noisy	3.7	1120	42
4237	Alphataurus	Progressive Rock, Symphonic Prog	male vocals, progressive, complex, religious, philosophical, atmospheric, passionate	3.7	1082	31
4238	Weidorje	Zeuhl	futuristic, epic, energetic, ominous, space, heavy, science fiction, male vocals, rhythmic	3.7	871	23
4239	Pistachio Island	IDM	atmospheric, quirky, warm, mechanical, rhythmic, instrumental, sombre, longing	3.72	447	5
4240	Demian	Hard Rock, Heavy Psych	psychedelic, male vocals, melodic, drugs	3.72	391	24
4241	Drive By	Avant-Garde Jazz	hypnotic, repetitive, minimalistic, rhythmic, nocturnal, mellow, urban, mysterious, instrumental, suspenseful	3.7	865	15
4242	Small Parts Isolated and Destroyed	Post-Hardcore	aggressive, anxious, complex, pessimistic, technical, uncommon time signatures, male vocals, manic	3.7	816	11
4243	Gospel Train	Traditional Black Gospel, Blues	Christian, passionate, spiritual, uplifting, female vocals, rhythmic, religious, energetic	3.71	628	8
4244	Lightfoot!	Contemporary Folk, Singer/Songwriter	male vocals, mellow, longing, acoustic, breakup, sentimental, pastoral	3.72	372	11
4245	Head On	Jazz Fusion, Post-Bop	instrumental, mysterious, lush	3.73	309	9
4246	Siroco	Flamenco	chamber music, acoustic, passionate, instrumental, technical	3.73	315	11
4247	Midnight Cowboy	Film Soundtrack, Folk Pop		3.71	297	10
4248	Dookie	Pop Punk, Punk Rock	playful, energetic, humorous, rebellious, melodic, summer, male vocals, alienation, anxious, anthemic	3.57	15344	324
4249	Ruins	Singer/Songwriter, Ambient	lonely, sad, rain, soft, atmospheric, melancholic, sparse, female vocals, ethereal, minimalistic	3.66	5677	50
4250	Monkey Barz	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	male vocals, rebellious, violence, humorous, urban, aggressive, boastful, sampling, raw, vulgar	3.7	837	17
4251	Ritual de lo habitual	Alternative Rock	energetic, playful, male vocals, psychedelic, melodic, sexual, warm, summer, rhythmic, introspective	3.66	5061	118
4252	Troupeau Bleu	Jazz-Funk, Jazz Pop	female vocals, playful, melodic, rhythmic, lush, uplifting, soothing, warm	3.7	1530	13
4253	Sailin' Shoes	Southern Rock, Boogie Rock, Blues Rock	male vocals, warm, passionate, energetic, playful, surreal	3.69	1449	42
4254	Soulville	Cool Jazz	improvisation, instrumental, happy, melodic	3.7	647	6
4255	Hypertrace	Power Metal, Speed Metal	science fiction, energetic, melodic, futuristic, concept album, male vocals, anthemic, uplifting	3.69	644	19
4256	Warning of Danger	Heavy Metal, US Power Metal, Power Metal	energetic, heavy, triumphant, male vocals, fantasy, epic, melodic	3.68	634	9
4257	The Art of Navigating by the Stars	Progressive Rock, Progressive Metal	melodic, heavy, lonely, introspective, male vocals, progressive, space	3.68	618	32
4258	A Man and the Blues	Chicago Blues	passionate, male vocals	3.71	600	10
4259	Moving Gelatine Plates	Canterbury Scene, Progressive Rock	psychedelic, progressive, quirky, rhythmic, energetic, surreal, humorous, melodic, male vocals	3.71	464	13
4260	Short Sharp Shocked	Singer/Songwriter, Folk Rock, Alt-Country	female vocals, conscious	3.7	480	19
4261	Swing the Heartache: The BBC Sessions	Post-Punk, Gothic Rock	anxious, raw, dark, pessimistic, nihilistic, alienation, sombre, atmospheric, passionate, male vocals	3.72	482	10
4262	Nero a metà	Canzone d'autore, Blues Rock, Canzone napoletana	melodic, romantic, bittersweet, rhythmic, melancholic, mellow, dense, lyrics, playful, urban	3.69	397	8
4263	Retriever	Singer/Songwriter, Indie Pop, Pop Rock		3.72	400	17
4264	Electro-Acoustic Music	Electroacoustic, Stochastic Music, Tape Music	dense, atmospheric, avant-garde, instrumental, noisy, hypnotic, chaotic, apocalyptic, sombre, complex	3.68	386	7
4265	Odyshape	Post-Punk, Experimental Rock, Avant-Prog	surreal, avant-garde, female vocals, anxious, abstract, dark, mysterious, tribal, progressive, uncommon time signatures	3.67	2238	38
4266	Русское поле экспериментов	Post-Punk, Noise Rock, Punk Rock	lo-fi, depressive, raw, noisy, existential, philosophical, male vocals, political, passionate, cryptic	3.66	1466	20
4267	Subconscious Dissolution Into the Continuum	Funeral Doom Metal	heavy, nocturnal, funereal, male vocals, depressive, ominous, sombre, atmospheric, dark, psychedelic	3.68	987	18
4268	Avalon Sutra / As Long As I Can Hold My Breath	Ambient, Neoclassical New Age, Minimalism	meditative, peaceful, soft, calm, atmospheric, mellow, repetitive, ethereal, soothing, instrumental	3.7	778	8
4269	Manic Impressions	Progressive Metal, Thrash Metal	sombre, introspective, heavy, lonely, aggressive, technical, male vocals, complex, energetic, dark	3.69	758	21
4270	Bicho	MPB, Singer/Songwriter, Art Pop	rhythmic, warm, melodic, mellow, energetic, tropical, happy, playful, lush, uplifting	3.71	504	8
4271	The Window of Life	Neo-Prog	melodic, fantasy, progressive, epic, male vocals	3.69	467	20
4272	Looking In	Blues Rock, British Blues		3.71	448	14
4273	With The Oscar Peterson Trio #1	Cool Jazz, Bebop	improvisation, acoustic, instrumental, warm	3.72	347	3
4274	Folksongs & Ballads	American Folk Music, Contemporary Folk	acoustic, melancholic, pastoral, Christian, female vocals, autumn, apathetic, folklore, depressive, deadpan	3.72	341	6
4275	Miserere; Messe; Motets	Renaissance Music, Choral, Christian Liturgical Music, Polyphonic Chant	polyphonic, choral, a cappella, spiritual, calm, Christian	3.73	335	1
4276	Second Album	Blues Rock, Electric Blues		3.73	269	12
4277	Back in Black	Hard Rock	energetic, male vocals, sexual, rhythmic, raw, rebellious, anthemic, heavy, boastful, hedonistic	3.54	15828	563
4278	Chelsea Girl	Chamber Folk	melancholic, female vocals, apathetic, bittersweet, peaceful, mellow, lush, introspective, ethereal, autumn	3.65	7460	142
4279	Fever Ray	Art Pop, Synthpop	dark, atmospheric, melancholic, introspective, androgynous vocals, sombre, rhythmic, nocturnal, tribal, hypnotic	3.64	6946	123
4280	"Love and Theft"	Singer/Songwriter, Blues Rock, Folk Rock	male vocals, playful, bittersweet, poetic, humorous, longing, love	3.66	4205	123
4281	The Captain and Me	Pop Rock	male vocals, melodic, love, eclectic	3.69	1413	43
4282	Lets Get Free	Political Hip Hop, Southern Hip Hop, Conscious Hip Hop, Hardcore Hip Hop	political, rebellious, ominous, angry, male vocals, conscious, dark, uplifting, urban, sampling	3.68	1549	54
4283	Too Many Humans......	Noise Rock, Hardcore Punk	misanthropic, nihilistic, noisy, angry, raw, dissonant, hateful, sarcastic, lo-fi, pessimistic	3.68	1419	22
4284	The Heat Death of the Universe	Screamo	anxious, suicide, chaotic, uncommon time signatures, manic, aggressive, male vocals, progressive, technical, self-hatred	3.68	1410	22
4285	The Garden of Jane Delawney	British Folk Rock, Psychedelic Folk, Progressive Folk	psychedelic, female vocals, ethereal, poetic, folklore, progressive, melodic, nature, pastoral	3.7	983	31
4286	99.9 F°	Singer/Songwriter, Folk Pop, Art Pop	mellow, female vocals, melodic, poetic, playful	3.7	1014	31
4287	The Snowbringer Cult	Psychedelic Folk, Drone	ritualistic, hypnotic, forest, sombre, winter, nature, pastoral, cold, mysterious, spiritual	3.69	947	12
4288	An Evil Heat	Experimental Rock	anxious, misanthropic, chaotic, heavy, noisy, raw, abstract, manic, dissonant, avant-garde	3.69	879	6
4289	Enigmatic Ocean	Jazz Fusion, Jazz-Rock	instrumental, rhythmic, mellow, complex, technical, playful, energetic	3.7	809	30
4290	The Master	Film Score, Modern Classical, Orchestral	mysterious, anxious, atmospheric, orchestral, instrumental, melancholic	3.71	824	9
4291	Days of Purgatory	Power Metal, Thrash Metal, US Power Metal, Heavy Metal	rhythmic, melodic, energetic, fantasy, introspective, heavy, aggressive	3.65	815	16
4292	The Beatnuts	East Coast Hip Hop, Boom Bap, Jazz Rap	rhythmic, energetic, sexual, male vocals, playful, boastful, party, sampling, urban, hedonistic	3.69	625	28
4293	Future Blues	Blues Rock	passionate, male vocals, political, love, conscious	3.71	601	16
4294	Journey	Video Game Music, Ambient, Cinematic Classical	desert, peaceful, meditative, ethereal, atmospheric, calm, instrumental, spiritual	3.7	601	7
4295	I Got a Name	Singer/Songwriter, Folk Rock	male vocals, acoustic, introspective, sentimental, melodic, longing, mellow	3.72	562	7
4296	Idolatry	Thrash Metal	hateful, aggressive, male vocals, angry, heavy, death, rebellious, misanthropic	3.7	557	14
4297	Yendo de la cama al living	Pop Rock, Art Pop	political, conscious, anxious, male vocals, urban, quirky, melodic, sparse, meditative, alienation	3.69	617	13
4298	De Stijl	Blues Rock, Alternative Rock	energetic, raw, male vocals, rebellious, lo-fi, minimalistic, melodic, longing, love, lonely	3.65	7478	119
4299	Monoliths & Dimensions	Drone Metal, Drone	occult, sombre, dark, atmospheric, heavy, meditative, repetitive, dense, ritualistic, ominous	3.63	6127	98
4300	Arular	UK Hip Hop, Electropop	female vocals, political, aggressive, playful, sarcastic, warm, summer, rhythmic, tropical, mechanical	3.64	6153	101
4301	The Lexicon of Love	New Romantic, Synthpop	lush, rhythmic, love, male vocals, energetic, melodic, satirical, playful, romantic, quirky	3.66	3244	134
4302	Dig Your Own Hole	Big Beat	energetic, party, rhythmic, psychedelic, dense, sampling, repetitive, instrumental, noisy, manic	3.66	5969	90
4303	Haunt Me, Haunt Me Do It Again	Ambient	atmospheric, instrumental, ethereal, mysterious, melancholic, cold, calm, winter, suite	3.67	4415	27
4304	Sweetheart of the Rodeo	Country Rock, Country	pastoral, melodic, mellow, male vocals, warm, philosophical, existential, peaceful, Christian, longing	3.65	4288	151
4305	Andrew Bird & The Mysterious Production of Eggs	Singer/Songwriter, Chamber Pop	male vocals, poetic, bittersweet, soft, mellow, lush, melodic, cryptic, autumn, introspective	3.66	4456	95
4306	The Book About My Idle Plot on a Vague Anxiety	Math Rock, Post-Rock	instrumental, rhythmic, uncommon time signatures, melodic, calm, melancholic, sentimental, mellow, technical, atmospheric	3.67	4188	35
4307	Mars Audiac Quintet	Art Pop, Indie Pop, Ambient Pop	female vocals, repetitive, political, hypnotic, warm, rhythmic, lush, philosophical, psychedelic, progressive	3.67	4066	70
4308	I See Seaweed	Punk Blues, Art Rock	poetic, sombre, angry, political, misanthropic, male vocals, passionate, complex, noisy, raw	3.67	2684	46
4309	Empire	Heavy Metal, Progressive Metal	introspective, urban, male vocals, nocturnal, epic, melodic, political, longing, bittersweet, progressive	3.66	2775	94
4310	In Keeping Secrets of Silent Earth: 3	Progressive Rock, Alternative Rock, Emo-Pop	science fiction, epic, progressive, melodic, concept album, male vocals, passionate, rock opera, energetic, melancholic	3.63	3088	81
4311	Dust	Alternative Rock, Grunge	longing, warm, bittersweet, melancholic, psychedelic, male vocals	3.68	2323	62
4312	Fiction	Melodic Death Metal	philosophical, atmospheric, sombre, melancholic, melodic, male vocals, introspective, dark, heavy	3.65	2343	56
4313	Too-Rye-Ay	New Wave	energetic, romantic, melodic, bittersweet, passionate, male vocals, anxious, androgynous vocals, sarcastic, boastful	3.69	1999	51
4314	Exuvia	Death Doom Metal	atmospheric, hypnotic, ominous, dark, male vocals, ritualistic, repetitive, tribal, heavy, mysterious	3.68	1896	26
4315	Deep Listening	Drone, Ambient	meditative, atmospheric, instrumental, sombre, hypnotic, mysterious, nocturnal, ominous, space, sparse	3.68	1698	24
4316	Takin' Off	Post-Bop, Modal Jazz	instrumental, improvisation, rhythmic, acoustic, playful	3.7	1549	32
4317	Willpower	Noise Rock, Post-Hardcore	misanthropic, technical, heavy, uncommon time signatures, passionate, anxious, dissonant, male vocals, angry, raw	3.68	1575	21
4318	"L'homme à tête de chou"	Progressive Pop, French Pop	concept album, breakup, mysterious, bittersweet, male vocals, poetic, violence, melodic, sexual, death	3.67	1493	32
4319	If_Then_Else	Alternative Rock, Art Rock, Progressive Rock	atmospheric, female vocals, melancholic, mellow, melodic, eclectic	3.69	1445	38
4320	Spectral Mornings	Progressive Rock, Symphonic Prog	melodic, epic, technical, lush, ethereal, male vocals, romantic, bittersweet, instrumental, mellow	3.7	1142	39
4321	Road to the Riches	East Coast Hip Hop, Boom Bap, Hardcore Hip Hop	urban, energetic, rhythmic, male vocals, sampling, boastful, aggressive	3.68	1156	36
4322	The Coroner's Gambit	Singer/Songwriter, Indie Folk	lo-fi, acoustic, bittersweet, noisy, male vocals, raw, melancholic, playful, death, passionate	3.7	1151	13
4323	No World Order	Power Metal	melodic, energetic, male vocals, anthemic, heavy, uplifting, triumphant, political	3.67	1040	26
4324	Saetia	Screamo	passionate, energetic, anxious, angry, melancholic, male vocals, raw, lo-fi	3.68	961	5
4325	St. Louis to Liverpool	Rock & Roll	playful, male vocals, love, rhythmic, humorous, energetic	3.7	862	11
4326	Marshall Crenshaw	Power Pop, Pop Rock	breakup, melodic, romantic, bittersweet, melancholic, male vocals, autumn	3.7	878	23
4327	The Scream That Tore the Sky	Technical Death Metal	technical, mysterious, cryptic, complex, male vocals, energetic, philosophical, spiritual, occult, heavy	3.7	733	15
4328	Johnny Winter	Blues Rock		3.7	661	25
4330	Русский альбом	Contemporary Folk, Singer/Songwriter	folklore, male vocals, passionate, abstract, poetic, bittersweet, acoustic, medieval, sombre, spiritual	3.7	639	7
4331	Dark Quarterer	Heavy Metal	heavy, epic, male vocals, lo-fi, energetic, raw	3.68	629	16
4332	Sacrilegium	Progressive Rock, Symphonic Prog	epic, eclectic, ominous, quirky, martial	3.69	461	7
4333	Verde que te quero rosa	Samba-choro	bittersweet, lush, warm, male vocals, melodic, romantic, sad, rhythmic, soft, acoustic	3.73	401	6
4334	Sofia Gubaidulina	Modern Classical	dark, dissonant, microtonal, orchestral, suspenseful, sparse, scary, acoustic, avant-garde	3.72	343	5
4335	Malo	Latin Rock		3.73	329	14
4336	Soul	Film Score, Electronic	atmospheric, instrumental	3.72	308	2
4337	Puressence	Alternative Rock	anthemic, anxious, passionate, Wall of Sound, melancholic, androgynous vocals, melodic, heavy, introspective	3.72	324	8
4338	Shadows of the Sun	Ambient, Electronic, Ambient Pop	atmospheric, existential, male vocals, death, melodic, nocturnal, poetic, melancholic, abstract, apocalyptic	3.65	5744	115
4339	Trick	Lo-Fi / Slacker Rock, Singer/Songwriter, Bedroom Pop	melodic, lo-fi, lonely, calm, bittersweet, male vocals, melancholic, cryptic, mysterious, raw	3.67	3311	13
4340	Autumn Eternal	Atmospheric Black Metal	autumn, passionate, melancholic, atmospheric, nature, melodic, male vocals, triumphant, epic, heavy	3.67	2529	24
4341	The Lounge Lizards	Avant-Garde Jazz, Post-Bop	urban, instrumental, dissonant, anxious, avant-garde, manic, nocturnal, technical, ominous	3.68	2193	20
4342	Thorns	Black Metal, Industrial Metal	science fiction, mechanical, rhythmic, futuristic, noisy, disturbing, aggressive, philosophical, apocalyptic, dissonant	3.67	1421	22
4343	Voids	Post-Punk, Shoegaze	sombre, lo-fi, dark, misanthropic, male vocals, anxious, raw, nocturnal, depressive, melancholic	3.68	1311	20
4344	Widow's Weeds	Gothic Metal	romantic, poetic, male vocals, bittersweet, female vocals, medieval, sombre, passionate, melancholic, winter	3.68	812	26
4345	冀西南林路行 (Inside the Cable Temple)	Art Rock, Progressive Rock	complex, eclectic, nature, poetic, male vocals, concept album, lush, political, progressive, folklore	3.69	1220	9
4346	Feel the Darkness	Hardcore Punk	aggressive, angry, misanthropic, dark, alcohol, rebellious, male vocals, energetic	3.68	1143	31
4347	Dead Bees on a Cake	Art Pop	autumn, mellow, melancholic, mysterious, warm, ethereal, lush, male vocals, nature, spiritual	3.7	1197	31
4348	There's No Place Like America Today	Soul, Funk	romantic, religious, conscious, political, male vocals, melancholic, melodic, urban, warm, lush	3.7	997	15
4349	Little Criminals	Singer/Songwriter, Piano Rock	sarcastic, male vocals, satirical, melodic, bittersweet, mellow, lush, soft	3.7	963	22
4350	Magnified	Alternative Rock	heavy, bittersweet, sombre, noisy, cryptic, dark, violence, atmospheric, male vocals, anxious	3.69	976	21
4351	Spring Hill Fair	Jangle Pop, Indie Pop	male vocals, lonely, melodic, romantic, longing, bittersweet, love, melancholic, rhythmic	3.69	870	22
4352	Moon Beams	Cool Jazz	calm, mellow, nocturnal, longing, love, soothing, instrumental	3.7	866	11
4353	Forever Autumn	Gothic Metal, Gothic Rock	melancholic, autumn, nature, bittersweet, male vocals, sombre, calm, sentimental, mellow, progressive	3.67	842	21
4354	Toad	Heavy Psych, Hard Rock	heavy, male vocals, energetic	3.69	762	21
4356	Mellow Dream (メロー・ドリーム)	Hard Bop, Cool Jazz	happy	3.7	855	3
4357	Voice of Chunk	Avant-Garde Jazz, Jazz Fusion	eclectic, instrumental, rhythmic, manic	3.7	740	3
4359	Loki?	Progressive Pop, Singer/Songwriter, Piano Rock	male vocals, humorous, anxious, melodic, introspective, quirky, melancholic, lonely, existential, surreal	3.68	619	14
4360	New York, Fall 1974	Avant-Garde Jazz, Modern Creative	improvisation, complex, instrumental, mysterious, energetic, dense, sombre, sparse	3.7	587	12
4361	Music From the Morning of the World: The Balinese Gamelan	Balinese Gamelan, Gamelan	spiritual, ritualistic, rhythmic, hypnotic, complex, acoustic, meditative, suspenseful, instrumental, mysterious	3.71	543	7
4362	Fruto proibido	Glam Rock	lush, female vocals, passionate, playful, triumphant, existential, melodic, humorous, sarcastic, energetic	3.7	570	9
4363	The New Folk Sound of Terry Callier	Contemporary Folk	passionate, pastoral, male vocals	3.71	501	11
4364	L'araignée-mal	Progressive Rock, Symphonic Prog	complex, technical, progressive	3.71	430	20
4365	Sweet and Dandy	Reggae, Jamaican Ska	passionate, summer, playful, rhythmic, male vocals, warm, conscious, uplifting, vocal group, love	3.71	441	6
4366	The Very Special World of Lee Hazlewood: Lee Hazlewood Singing His Own Compositions	Country Pop, Baroque Pop	love, calm, male vocals, melodic	3.7	424	10
4367	Damn Right, I've Got the Blues	Chicago Blues, Electric Blues	raw, urban, aggressive	3.71	459	10
4368	DELTARUNE Chapter 2	Video Game Music, Sequencer & Tracker	instrumental, playful, quirky, melodic, eclectic, futuristic, rhythmic, uplifting	3.71	356	4
4369	Heaven to a Tortured Mind	Neo-Psychedelia, Art Rock	psychedelic, sensual, love, surreal, passionate, atmospheric, dense, rhythmic, sexual, melodic	3.62	11835	98
4370	Silver Apples	Psychedelic Rock, Electronic, Experimental Rock	futuristic, hypnotic, psychedelic, mechanical, surreal, avant-garde, rhythmic, anxious, repetitive, male vocals	3.64	6220	104
4371	Cell-Scape	Noise Rock	manic, noisy, chaotic, playful, female vocals, cryptic, futuristic, raw, complex, energetic	3.66	4363	56
4372	Traced in Air	Progressive Metal	technical, spiritual, male vocals, ethereal, progressive, melodic, passionate, uplifting, psychedelic, complex	3.64	3863	107
4373	How I Got Over	East Coast Hip Hop, Conscious Hip Hop	mellow, political, introspective, philosophical, urban, sombre, conscious, melodic, poetic, anxious	3.67	3809	75
4374	And the Glass Handed Kites	Dream Pop, Progressive Pop	complex, ethereal, cryptic, uncommon time signatures, atmospheric, androgynous vocals, psychedelic, winter, epic, noisy	3.67	3448	82
4375	The Director's Cut	Experimental Rock, Avant-Garde Metal, Alternative Metal	avant-garde, male vocals, aggressive, concept album, playful, suspenseful, heavy, eclectic, manic, chaotic	3.64	3199	50
4376	Ominous Doctrines of the Perpetual Mystical Macrocosm	Black Metal	satanic, occult, heavy, dark, atmospheric, male vocals, space, aggressive, dense, infernal	3.65	2159	30
4377	Initials B.B.	French Pop, Baroque Pop, Chanson	male vocals, melodic, playful, poetic, lush, love, romantic, quirky	3.68	1958	24
4378	The Brotherhood of the Bomb	Industrial Hip Hop, Illbient, Hardcore Hip Hop, Abstract Hip Hop	mechanical, noisy, rhythmic, atmospheric, male vocals, dark, cold, dense, urban, heavy	3.68	1798	18
4379	Master and Everyone	Contemporary Folk, Americana, Singer/Songwriter	acoustic, autumn, lethargic, breakup, pastoral, bittersweet, soft, calm, mellow, longing	3.68	1918	43
4380	Canaxis 5	Sound Collage	hypnotic, surreal, sampling, meditative, avant-garde, ominous, atmospheric, spiritual, eclectic, suspenseful	3.67	1724	33
4381	K.R.I.T Wuz Here	Southern Hip Hop, Dirty South, Hardcore Hip Hop	male vocals, conscious, sampling, introspective, boastful, warm, rhythmic, energetic	3.67	2169	36
4382	The Dark Ride	Power Metal	male vocals, melodic, anthemic, energetic, passionate, heavy, dark	3.66	1691	35
4384	5	Blues Rock, Country Rock	mellow, sensual, melodic, drugs, male vocals	3.7	613	19
4385	We Free Kings	Hard Bop, Post-Bop	technical, warm, acoustic, playful, passionate, energetic, improvisation, instrumental	3.71	577	14
4386	Defender of the Crown	Heavy Metal, US Power Metal	epic, fantasy, energetic, male vocals, melodic, boastful, technical, anthemic, violence, war	3.69	551	10
4387	M-16	Thrash Metal	war, death, dark, male vocals, aggressive, heavy, concept album	3.68	1629	24
4388	Vol 3: Dance of Death & Other Plantation Favorites	American Primitivism	instrumental, acoustic, meditative, autumn, pastoral, soft, warm, bittersweet, passionate, nature	3.7	1373	11
4389	Personal Best	Queercore, Riot Grrrl, Post-Hardcore	LGBT, energetic, passionate, rebellious, aggressive, female vocals, noisy, melodic, love, anthemic	3.68	1400	25
4390	Likferd	Melodic Black Metal	melodic, pagan, triumphant, epic, folklore, male vocals, medieval, aggressive, energetic, mythology	3.67	1212	13
4392	Cinema transcendental	MPB, Singer/Songwriter	peaceful, mellow, poetic, spiritual, philosophical, male vocals, tropical, warm, psychedelic, uplifting	3.7	506	12
4393	The Seventh House	Neo-Prog	melodic, uncommon time signatures, atmospheric, male vocals, progressive, existential	3.7	518	15
4394	This Time	Neo-Traditionalist Country	male vocals, melodic, bittersweet, melancholic, natural, pastoral, lush	3.69	490	17
4395	Machinarium	Video Game Music, Downtempo	bittersweet, mellow, peaceful, mysterious, quirky, mechanical, instrumental, soft, melodic, atmospheric	3.71	422	6
4396	This Is the Wind That Blows It Out: Solos for 6 & 12 String Guitar	American Primitivism	acoustic, instrumental, melancholic	3.72	411	6
4397	Illegal Business?	West Coast Hip Hop, Mobb Music, Gangsta Rap	crime, hedonistic, raw, skit, playful, summer, drugs, urban, party, violence	3.7	381	14
4398	Exhumed of the Earth	Death Doom Metal	heavy, Christian, dark, aggressive, sombre, spiritual, death, atmospheric, mysterious, conscious	3.7	373	10
4399	Lady of the Light	Progressive Rock, Hard Rock	melodic, progressive, longing, bittersweet, fantasy, male vocals	3.72	303	15
4400	A Tiny House, in Secret Speeches, Polar Equals	Dream Pop, Indietronica	lush, female vocals, dense, ethereal, male vocals, love, warm, atmospheric, uplifting, melodic	3.64	7169	57
4401	Haha Sound	Dream Pop, Indietronica, Neo-Psychedelia, Ambient Pop	psychedelic, atmospheric, surreal, hypnotic, ethereal, female vocals, lush, bittersweet, abstract, complex	3.66	3362	56
4402	Stratosfear	Berlin School	futuristic, instrumental, meditative, atmospheric, ominous, suspenseful, repetitive, hypnotic, progressive, psychedelic	3.68	2944	54
4403	Warehouse: Songs and Stories	Alternative Rock	melodic, energetic, male vocals, passionate, introspective, bittersweet, playful, melancholic, noisy	3.68	2812	84
4404	The Trials of Van Occupanther	Folk Rock, Indie Folk	melancholic, autumn, male vocals, melodic, pastoral, forest, introspective, nature, optimistic, concept album	3.68	2668	101
4405	Denim and Leather	NWOBHM, Heavy Metal	male vocals, energetic, anthemic, triumphant	3.68	1805	40
4406	Irreligious	Gothic Metal	ominous, male vocals, dark, anti-religious, melodic, passionate, heavy, sad, sombre, melancholic	3.68	1468	23
4407	Comment te dire adieu	French Pop, Chanson, Baroque Pop	melancholic, lush, female vocals, sentimental, melodic, romantic, bittersweet	3.69	1276	19
4408	Sirius B	Symphonic Metal	mythology, pagan, female vocals, epic, male vocals, melodic, choral, energetic, progressive, history	3.66	1047	15
4409	Kingston Wall	Psychedelic Rock, Progressive Rock	male vocals, energetic, epic, desert, technical, passionate, nocturnal	3.7	850	11
4410	Sandy	British Folk Rock, Singer/Songwriter	female vocals	3.69	734	24
4411	Mercy Falls	Progressive Metal	..., melodic, male vocals, concept album, progressive	3.65	583	30
4412	A Sultans Ransom	Heavy Metal, Power Metal, US Power Metal	male vocals, melodic, energetic, heavy, fantasy, anthemic, uplifting, epic, science fiction	3.68	471	7
4413	Sea Son	Progressive Rock, Jazz-Rock	instrumental	3.71	406	15
4414	En ny tid är här...	Hard Rock, Heavy Psych, Blues Rock	male vocals	3.7	409	13
4415	A toda Cuba le gusta	Son cubano, Afro-Cuban Jazz	warm, rhythmic, male vocals, passionate, sentimental, mellow, melodic, tropical	3.72	406	10
4416	Армагеддон-попс	Noise Rock, Post-Punk	depressive, cryptic, satirical, apocalyptic, anxious, raw, philosophical, poetic, angry, chaotic	3.7	440	3
4417	Carmina Burana	Choral, Modern Classical	orchestral, choral, triumphant, uncommon time signatures, anthemic, quirky, rhythmic, spring, female vocals, longing	3.69	391	7
4418	Baazaar	Chamber Jazz, Post-Bop		3.72	353	3
4419	Lipservice	Hard Rock, AOR	love, energetic, melodic, longing, bittersweet, male vocals	3.67	391	16
4420	Byrd in Hand	Hard Bop	improvisation, acoustic, technical, energetic, instrumental	3.72	328	6
4421	革命京劇 (Revolutionary Pekinese Opera)	Sound Collage, Turntable Music, Musique concrète, Plunderphonics	chaotic, sampling, manic, noisy, surreal, avant-garde, female vocals, anxious, playful, quirky	3.7	370	2
4422	Damn.	West Coast Hip Hop, Conscious Hip Hop	introspective, conscious, male vocals, rhythmic, death, urban, sampling, passionate, existential, serious	3.52	30228	235
4423	The Power of Failing	Midwest Emo	melancholic, male vocals, passionate, raw, introspective, sad, sentimental, bittersweet, existential, Christian	3.66	3409	32
4424	Propeller	Lo-Fi / Slacker Rock, Indie Rock	lo-fi, melodic, noisy, raw, bittersweet, male vocals, passionate, alcohol, anthemic, melancholic	3.68	2008	48
4425	Kesto (234.48:4)	Post-Industrial, Power Noise, Drone, Electronic	rhythmic, raw, mechanical, instrumental, heavy, cold, dissonant, noisy, eclectic, ominous	3.67	1822	31
4426	Roast Fish Collie Weed & Corn Bread	Roots Reggae	lo-fi, psychedelic, warm, drugs, rhythmic, passionate, quirky, spiritual, hypnotic, peaceful	3.69	1632	20
4427	Appetite for Destruction	Hard Rock	energetic, sexual, drugs, male vocals, hedonistic, alcohol, anthemic, urban, boastful, party	3.52	16526	614
4428	I'm Wide Awake, It's Morning	Indie Folk, Contemporary Folk	passionate, acoustic, romantic, male vocals, melodic, poetic, melancholic, introspective, sentimental, sad	3.62	9176	180
4429	The Undertones	Pop Punk, Punk Rock	energetic, male vocals, melodic, playful, anxious, raw	3.66	2510	47
4430	Across the Dark	Melodic Death Metal	melancholic, sombre, melodic, atmospheric, male vocals, autumn, heavy, progressive, epic	3.66	1383	38
4431	This Is Spinal Tap	Musical Parody, Heavy Metal, Comedy Rock, Film Soundtrack	humorous, male vocals, parody, sexual, melodic, eclectic, party, hedonistic, playful, anthemic	3.66	1334	60
4432	Inhale/Exhale	Grindcore	aggressive, chaotic, male vocals, heavy, political, angry, violence, hateful, anti-religious, dense	3.69	1050	16
4433	Danger Money	Progressive Rock	male vocals, melodic, technical, uncommon time signatures	3.69	853	39
4434	Eternal Sunshine of the Spotless Mind	Film Score, Film Soundtrack	lonely, melancholic, romantic, bittersweet, lush, soft, melodic, playful, progressive, love	3.7	891	20
4435	Kate & Anna McGarrigle	Folk Rock	female vocals	3.68	753	26
4436	Underground Kingz	Dirty South, Gangsta Rap, Southern Hip Hop	triumphant, crime, rhythmic, urban, male vocals, drugs, sampling, boastful, epic	3.66	1335	32
4437	The Hiram Clarke Hustler	Cloud Rap, Experimental Hip Hop, Southern Hip Hop	hypnotic, lo-fi, repetitive, hedonistic, male vocals, surreal, mellow, lethargic, crime, melancholic	3.65	1339	20
4438	Dance Hall Style	Dub, Roots Reggae	atmospheric, conscious, male vocals, lo-fi, mellow, ethereal, hypnotic, rhythmic, sensual, psychedelic	3.69	1103	19
4439	Whom the Moon a Nightsong Sings	Dark Folk	nocturnal, nature, calm, acoustic, autumn, melancholic, male vocals, atmospheric, female vocals, dark	3.68	1097	26
4440	Upsetters 14 Dub Black Board Jungle	Dub	instrumental, rhythmic, warm, lo-fi, mellow, tropical, summer, soothing, repetitive, hypnotic	3.7	848	17
4441	It's Me God	Post-Hardcore, Sludge Metal	misanthropic, energetic, dark, apocalyptic, angry, heavy, depressive, noisy, death, male vocals	3.69	839	10
4442	Emergency!	Jazz Fusion	male vocals, improvisation, psychedelic	3.7	809	23
4443	Into the Abyss...	Thrash Metal, Death Metal	lo-fi, energetic, heavy, death, male vocals, occult, noisy, raw, dark, aggressive	3.67	777	17
4444	Viaticum	Jazz Fusion, ECM Style Jazz	atmospheric, mysterious, melancholic, soft, instrumental, progressive, mellow, complex, improvisation	3.7	613	8
4445	Upon the Throne of Apocalypse	Death Metal	male vocals, heavy, anti-religious, atmospheric, aggressive, dense, ominous, dark, occult, serious	3.69	597	7
4446	...And the Battle Begun	Progressive Rock	progressive, melodic, passionate, male vocals, energetic, warm, avant-garde, complex, anxious, atmospheric	3.69	550	8
4448	Triskaidékaphobie	Avant-Prog, Rock in Opposition	uncommon time signatures, complex, dark, chamber music, cold, dissonant, ominous	3.7	378	9
4449	The Christmas Song	Christmas Music, Standards	Christmas, soft, warm, peaceful, Christian, soothing, melodic, nocturnal, male vocals, mellow	3.71	331	9
4450	Sunday Coming	Reggae	melodic, male vocals	3.71	299	12
4451	Sonny Rollins	Hard Bop	improvisation, warm, acoustic, melodic, passionate, instrumental	3.73	308	7
4452	SBB [Wołanie o brzęk szkła]	Progressive Rock		3.72	274	6
4453	Buhaina's Delight	Hard Bop	acoustic, energetic, improvisation	3.73	295	8
4454	Kiss Me Kiss Me Kiss Me	Post-Punk, Alternative Rock	love, romantic, melodic, lush, sensual, male vocals, passionate, bittersweet, atmospheric, eclectic	3.63	9987	162
4455	Porcupine	Post-Punk	atmospheric, psychedelic, melancholic, passionate, anxious, cold, surreal, lush, winter, male vocals	3.68	3146	57
4456	Rings Around the World	Neo-Psychedelia, Progressive Pop, Art Rock	melodic, psychedelic, eclectic, playful, male vocals, warm, bittersweet, melancholic, conscious, cryptic	3.67	2418	79
4457	Miles in the Sky	Post-Bop, Modal Jazz	instrumental, improvisation, rhythmic, eclectic, warm, energetic	3.69	2153	43
4458	Achievement	IDM, Sequencer & Tracker	playful, instrumental, mellow, psychedelic, quirky, rhythmic, melodic, surreal, bittersweet, hypnotic	3.68	1863	22
4459	Guitar Romantic	Power Pop, Garage Punk, Pop Punk	love, energetic, melodic, male vocals, passionate, bittersweet, lo-fi, rebellious, urban, raw	3.66	1773	56
4460	Ruby Vroom	Alternative Rock, Jazz-Rock	sampling, sarcastic, abstract, poetic, deadpan, urban, quirky, male vocals, rhythmic, surreal	3.67	1675	43
4461	P.H.U.Q.	Hard Rock, Power Pop	male vocals, quirky, energetic	3.7	315	16
4462	Flip Your Wig	Alternative Rock, Post-Hardcore	melodic, energetic, male vocals, anxious, introspective, playful, raw	3.67	3006	61
4463	Monomania	Lo-Fi / Slacker Rock, Singer/Songwriter	breakup, lo-fi, LGBT, angry, bittersweet, lonely, depressive, raw, hateful, male vocals	3.67	2409	17
4464	Wired	Jazz-Rock	complex, technical, playful, instrumental, energetic	3.69	1632	65
4465	The Spectre Within	Progressive Metal, Heavy Metal, US Power Metal	fantasy, melodic, progressive, energetic, male vocals, mysterious, complex, uncommon time signatures, nocturnal, technical	3.66	1608	34
4466	L'era del cinghiale bianco	Progressive Pop, Canzone d'autore	male vocals, philosophical, spiritual, rhythmic, sarcastic, poetic, atmospheric, religious, playful, tropical	3.69	777	8
4467	Diabolical Summoning	Death Metal	occult, death, heavy, male vocals, aggressive, satanic, angry, rhythmic	3.69	717	9
4468	The Friends of Rachel Worth	Indie Pop, Jangle Pop		3.71	693	21
4469	Just a Moment	Post-Hardcore, J-Rock	passionate, female vocals, energetic, male vocals, progressive, melodic, technical, manic, anxious, aggressive	3.68	653	5
4470	Folk, Blues & Beyond...	Acoustic Blues, Contemporary Folk, Folk Baroque	male vocals	3.7	529	14
4471	Doc Watson	Appalachian Folk Music, Contemporary Folk	acoustic, warm, melancholic, male vocals, folklore, pastoral, passionate	3.71	440	7
4472	Too Bad Jim	Electric Blues, Hill Country Blues	lonely, melodic, pastoral, rhythmic, passionate, minimalistic, male vocals, energetic	3.71	416	8
4473	マホロボシヤ (Mahoroboshiya)	Contemporary Folk, Singer/Songwriter	soothing, female vocals, mellow, melancholic, acoustic, soft, melodic, ballad, longing, cold	3.69	1415	3
4474	Folklore	Gothic Country, Americana, Alt-Country	sombre, dark, male vocals, acoustic, eclectic, ominous, melodic, atmospheric, autumn, melancholic	3.68	1330	25
4475	Jack Orion	English Folk Music, Folk Baroque, Contemporary Folk	acoustic, passionate, male vocals, technical, hypnotic, instrumental	3.69	969	23
4476	Hagnesta Hill	Alternative Rock, Pop Rock	melodic, autumn, passionate, melancholic, dense, eclectic, male vocals, cold	3.69	1050	16
4477	Hero and Heroine	Progressive Rock, Folk Rock	lush, soft, warm, male vocals, progressive, melodic	3.7	839	28
4478	Fin de siècle	Baroque Pop, Art Pop	conscious, male vocals, apocalyptic, melancholic, humorous, melodic, sarcastic, epic, bittersweet, orchestral	3.7	819	20
4479	Arachnoïd	Progressive Rock	dark, ritualistic, cryptic, uncommon time signatures, apocalyptic, infernal, complex, abstract, warm, psychedelic	3.7	767	20
4480	The 24 Caprices, Op. 1	Romanticism	technical	3.71	302	4
4481	Divine Discontent	Pop Rock, Alternative Rock	sentimental, melodic, female vocals, longing, soft, mellow, love, bittersweet, Christian	3.72	320	9
4482	G_d's Pee AT STATE'S END!	Post-Rock	instrumental, epic, atmospheric, apocalyptic, dark, triumphant, anarchism, suspenseful, hypnotic, political	3.63	9554	104
4483	Milo Goes to College	Hardcore Punk, Skate Punk	energetic, rebellious, angry, melodic, anxious, male vocals, aggressive, playful, vulgar, humorous	3.63	7386	104
4484	In the Wee Small Hours	Standards, Vocal Jazz	lonely, melancholic, nocturnal, concept album, male vocals, introspective, romantic, sentimental, breakup, mellow	3.64	5409	144
4485	Bandwagonesque	Power Pop, Jangle Pop	melodic, male vocals, bittersweet, romantic, love, sentimental, energetic, summer, warm	3.66	4301	105
4487	Oceanborn	Symphonic Metal, Power Metal	female vocals, melodic, fantasy, romantic, energetic, nocturnal, epic, sombre, aquatic, poetic	3.61	3325	79
4488	Dance of December Souls	Death Doom Metal, Melodic Black Metal	melancholic, passionate, romantic, death, raw, anti-religious, male vocals, sombre, dark, winter	3.67	2564	39
4489	Discouraged Ones	Gothic Metal	depressive, melancholic, male vocals, cold, lonely, apathetic, atmospheric, dark, introspective, raw	3.67	2517	49
4490	New Amerykah Part One: 4th World War	Neo-Soul	conscious, sensual, mellow, political, concept album, female vocals, philosophical, spiritual, eclectic, urban	3.68	2298	66
4491	ReturnOf4Eva	Southern Hip Hop, Dirty South, Conscious Hip Hop	conscious, rhythmic, introspective, uplifting, party, boastful, male vocals, optimistic, energetic, urban	3.66	2529	54
4492	Control	Dance-Pop, Contemporary R&B	female vocals, rhythmic, rebellious, sensual, urban, playful, love, triumphant, boastful, energetic	3.66	2236	42
4493	Green	Ambient, New Age	calm, peaceful, meditative, spring, instrumental, soft, soothing, repetitive, forest, atmospheric	3.68	2682	13
4494	Omnio	Progressive Metal	sombre, mysterious, female vocals, male vocals, progressive, cold, dark, avant-garde, complex, melodic	3.66	1388	29
4495	In the Shadows	Heavy Metal	male vocals, melodic, occult, fantasy, ominous, heavy, paranormal, dark, nocturnal, rhythmic	3.69	1428	25
4496	Lemuria	Symphonic Metal	pagan, mythology, male vocals, epic, female vocals, choral, melodic, energetic, history	3.64	1195	20
4497	Dum Spiro Spero	Progressive Metal, Avant-Garde Metal	heavy, technical, progressive, atmospheric, aggressive, male vocals, dense, ominous, complex, passionate	3.65	862	15
4498	There's a Vomitsprinkler in My Liverriver	Post-Hardcore, Art Punk	manic, eclectic, male vocals, noisy, playful, progressive, energetic, uncommon time signatures, lo-fi, surreal	3.67	735	8
4499	Felt	Psychedelic Rock, Blues Rock	male vocals, bittersweet, psychedelic, mellow	3.7	684	20
4500	Watch	Progressive Rock		3.71	660	26
4501	Some Other Stuff	Post-Bop, Avant-Garde Jazz	ominous, avant-garde, instrumental, rhythmic, quirky, improvisation, atmospheric, mysterious, abstract, acoustic	3.7	616	17
4502	Grobschnitt	Progressive Rock, Krautrock	psychedelic, passionate, male vocals, playful, complex, progressive, rhythmic, warm	3.7	580	19
4503	Brasil	Crossover Thrash	protest, aggressive, angry, energetic, conscious, political, rebellious, heavy, male vocals, alienation	3.68	560	6
4504	That's the Way It Is	Blue-Eyed Soul, Pop	longing, melodic, love, passionate, male vocals	3.68	555	16
4505	Imaginary Day	Jazz Fusion		3.7	516	7
4506	Songs of Pain	Singer/Songwriter	lo-fi, sad, lonely, melancholic, male vocals, depressive, religious, raw, humorous, alienation	3.67	2557	38
4507	Three Sided Tape Volume One	Experimental Hip Hop, Instrumental Hip Hop, Southern Hip Hop	eclectic, sampling, violence, male vocals, lo-fi, urban, rhythmic, drugs, noisy, crime	3.67	2624	7
4508	Shadows Collide With People	Singer/Songwriter, Alternative Rock, Art Rock, Experimental Rock	eclectic, introspective, warm, uplifting, psychedelic, passionate, melancholic, melodic, male vocals, bittersweet	3.67	2144	60
4509	The Execution of All Things	Indie Pop, Indie Rock	melancholic, bittersweet, female vocals, melodic, introspective, pessimistic, autumn, breakup, sentimental, love	3.68	1967	24
4510	Oath Bound	Atmospheric Black Metal, Symphonic Black Metal	epic, fantasy, medieval, melodic, melancholic, sombre, triumphant, forest, male vocals, dense	3.66	1882	22
4511	2nd	Krautrock	psychedelic, instrumental, ethereal, mellow, playful, hypnotic, repetitive, progressive, atmospheric, rhythmic	3.69	1673	35
4512	Journey to the Centre of the Eye	Space Rock, Progressive Rock, Psychedelic Rock	space, progressive, psychedelic, male vocals, surreal, concept album, science fiction, mysterious, existential, atmospheric	3.69	1170	36
4513	World Without God	Death Metal	anti-religious, rhythmic, aggressive, manic, vulgar, occult, male vocals, violence, hateful, death	3.67	1205	21
4514	Left and Leaving	Indie Rock	male vocals, optimistic, sentimental, autumn, mellow, bittersweet	3.69	974	26
4515	Master Control	Speed Metal, US Power Metal, Heavy Metal	melodic, epic, science fiction, heavy, energetic, male vocals, fantasy	3.69	797	14
4516	Домой!	Post-Punk, Singer/Songwriter	lo-fi, female vocals, dark, passionate	3.71	355	5
4517	Reckless Burning	Americana, Singer/Songwriter, Alt-Country	atmospheric, melancholic, female vocals	3.71	327	6
4518	Cowboys From Hell	Groove Metal, Thrash Metal	heavy, aggressive, energetic, male vocals, rhythmic, angry, violence	3.58	8615	220
4519	Brutalism	Post-Hardcore, Post-Punk	sarcastic, political, aggressive, male vocals, noisy, manic, raw, angry, urban, conscious	3.64	7119	40
4520	The Ecstatic	East Coast Hip Hop	conscious, urban, male vocals, political, rhythmic, eclectic, Islamic, sampling, abstract	3.67	3285	84
4521	Half-Mute	Post-Punk, Experimental Rock	dark, anxious, suspenseful, mechanical, hypnotic, cold, existential, male vocals, apocalyptic, ominous	3.67	2312	31
4522	Very	Synthpop, Dance-Pop	energetic, rhythmic, party, male vocals, bittersweet, romantic, LGBT, sarcastic	3.65	2264	50
4523	Citadel	Progressive Metal	technical, fantasy, progressive, male vocals, complex, melodic, sombre, atmospheric, dark, epic	3.64	1936	36
4524	Breathe Awhile	Progressive Rock, Psychedelic Rock	passionate, psychedelic, male vocals	3.69	747	22
4525	Teaser	Blues Rock	psychedelic, happy, playful, warm, energetic, eclectic, rhythmic, lush, sarcastic, sentimental	3.7	555	27
4526	Folk Roots, New Routes	English Folk Music, Folk Baroque	female vocals, acoustic, melodic	3.7	475	22
4527	Future Legends	Progressive Rock, Symphonic Prog	male vocals, melodic, progressive, epic, lush	3.7	474	21
4528	Street of Dreams	Cool Jazz, Soul Jazz	improvisation, mellow, instrumental	3.71	427	8
4529	Revival	Hard Rock	epic, longing, uplifting, melodic, energetic, passionate, male vocals	3.7	412	14
4530	Enter the Realm of Death	Death Metal	heavy, ominous, death, atmospheric, male vocals, dark, aggressive, fantasy, violence	3.69	430	4
4531	Undeceived	Progressive Metal, Death Metal	angry, triumphant, spiritual, Christian, progressive, melodic, aggressive, heavy	3.65	460	12
4532	Total Destruction to Your Mind	Soul, Southern Soul, Rhythm & Blues		3.71	370	10
4533	A Third of a Lifetime	Hard Rock, Heavy Psych		3.7	365	16
4534	Temple of the Dog	Grunge	death, melancholic, male vocals, heavy, passionate, bittersweet, melodic	3.65	4327	98
4535	Mass Romantic	Power Pop, Indie Pop	male vocals, female vocals, energetic, passionate, romantic, melodic, love, uplifting	3.66	3286	68
4536	A Secret Wish	Synthpop	atmospheric, lush, dark, nocturnal, female vocals, cold, mechanical, rhythmic, poetic, mysterious	3.68	1431	45
4537	Just a Poke	Psychedelic Rock, Progressive Rock, Jam Band	melodic, playful, psychedelic, male vocals	3.68	1330	38
4538	Phoenix Rising	Black Metal, Thrash Metal	energetic, war, heavy, male vocals, aggressive, dark, dense	3.68	1259	19
4539	The Laws of Scourge	Death Metal, Thrash Metal	misanthropic, aggressive, death, infernal, anti-religious, angry, dark, heavy, energetic, violence	3.67	1194	7
4540	Corredor polonês	Post-Punk, Vanguarda paulista, Math Rock	manic, energetic, anxious, dissonant, uncommon time signatures, technical, sarcastic, eclectic, male vocals, raw	3.69	784	9
4541	Jazz Impressions of Black Orpheus	Cool Jazz	acoustic, instrumental, tropical, improvisation, playful, summer, melodic, mellow	3.72	356	7
4542	To Watch the Storms	Progressive Rock, Art Rock		3.72	376	13
4543	Zabumbê-bum-á	Avant-Garde Jazz	playful, rhythmic, energetic	3.72	316	3
4545	Heaven Tonight	Power Pop, Hard Rock	melodic, male vocals, energetic, triumphant, playful, rhythmic, romantic	3.67	2046	67
4546	Bastards	Heavy Metal, Hard Rock	aggressive, male vocals, rebellious, heavy, energetic, raw	3.67	1633	28
4547	Fighting	Hard Rock	male vocals, energetic, anthemic, rhythmic, melodic, eclectic	3.69	1530	38
4548	Talking With the Taxman About Poetry	Folk Rock, Singer/Songwriter	political, male vocals, conscious, protest, sentimental, energetic, love, melancholic, sarcastic	3.68	1553	51
4549	With a Little Help From My Friends	Pop Rock, Blues Rock	love, uplifting, bittersweet, sentimental, male vocals, passionate	3.68	1116	27
4550	Naughty Boys	Synthpop	playful, uplifting, futuristic, quirky, happy, melodic, lush, male vocals, summer, mechanical	3.68	1235	14
4551	No Place for Disgrace	Thrash Metal	aggressive, heavy, male vocals, energetic, dark	3.68	1030	29
4552	The Puppet Master	Heavy Metal	ominous, fantasy, melodic, sombre, male vocals, concept album, rock opera, ..., ..., romantic	3.67	1063	24
4553	Stanley Road	Singer/Songwriter, Pop Rock	melodic, male vocals	3.69	960	29
4554	Ok nefna tysvar ty	Viking Metal, Folk Metal	triumphant, epic, anthemic, sombre, pagan, mythology, folklore, atmospheric, male vocals, passionate	3.68	915	9
4555	Small Faces	Mod, Pop Rock	longing, happy, psychedelic, playful, male vocals, energetic	3.69	793	30
4556	Dogman	Hard Rock		3.68	783	31
4557	High Visibility	Hard Rock	energetic, male vocals, raw, sexual, hedonistic, playful, passionate, aggressive, melodic, rebellious	3.69	759	17
4558	1972	Singer/Songwriter, Pop Rock, Indie Pop	autumn, warm, melodic, male vocals, summer, bittersweet	3.69	731	27
4559	Noon Chill	Art Pop	atmospheric, male vocals, poetic, love, mysterious, sampling, melancholic, playful, eclectic, mellow	3.69	552	6
4560	Master of Disguise	Speed Metal, Heavy Metal, US Power Metal	energetic, melodic, epic, heavy, war, passionate, male vocals, raw	3.67	466	14
4561	The Missing Years	Singer/Songwriter, Americana		3.7	391	9
4562	Mais on ne peut pas rêver tout le temps	Progressive Rock, Zeuhl	complex, lush, energetic, warm, peaceful, tropical, mellow	3.71	330	11
4563	Midnight Band: The First Minute of a New Day	Soul, Soul Jazz	atmospheric, passionate, energetic, male vocals, urban, melodic, poetic, hypnotic, rhythmic, conscious	3.71	320	9
4564	CTRL	Alternative R&B, Neo-Soul	love, introspective, sexual, bittersweet, breakup, sensual, mellow, female vocals, rhythmic, romantic	3.63	8996	51
4565	Stage Four	Post-Hardcore, Emo	death, passionate, melodic, male vocals, sad, energetic, melancholic, anxious, serious, sombre	3.66	3408	23
4566	Present From Nancy	Progressive Rock, Canterbury Scene	quirky, complex, humorous, technical, technique, playful, progressive, avant-garde, male vocals, energetic	3.7	677	24
4567	Hell Among the Yearlings	Americana, Contemporary Folk, Singer/Songwriter	female vocals, acoustic, poetic, ballad, sad, soft, melancholic	3.7	634	18
4568	In the Skies	Blues Rock	calm, peaceful, melancholic, male vocals, mellow	3.7	589	21
4569	Echospace [Detroit] Presents: "Altering Illusions" [Chapter One]	Dub Techno	atmospheric, repetitive, hypnotic, calm, nocturnal, soothing, instrumental	3.69	451	5
4570	Interplay	Cool Jazz	improvisation, warm, acoustic, technical, passionate, instrumental	3.71	428	8
4571	The House of Atreus: Act II	Power Metal, Heavy Metal, US Power Metal	energetic, triumphant, rock opera, mythology, male vocals, melodic, epic, history, heavy	3.67	417	6
4572	Waillee, Waillee	Psychedelic Folk, Singer/Songwriter	pastoral, psychedelic, female vocals, ethereal, alienation, lo-fi, mysterious, medley, melodic, playful	3.7	367	5
4573	The Cat	Big Band, Soul Jazz	energetic, instrumental, mellow, happy, uplifting	3.71	350	13
4574	Jacques Brel	Chanson à texte, Chanson	humorous, male vocals	3.69	323	5
4575	The Old Kit Bag	Folk Rock, Singer/Songwriter		3.72	315	12
4576	Urban Hymns	Britpop, Neo-Psychedelia	melancholic, psychedelic, male vocals, atmospheric, melodic, lush, drugs, bittersweet, mellow, introspective	3.63	7660	213
4577	You'd Prefer an Astronaut	Alternative Rock, Post-Hardcore	atmospheric, melancholic, space, poetic, male vocals, science fiction, cryptic, dense, heavy, introspective	3.67	2992	50
4578	Beaucoup Fish	Progressive House, Techno	hypnotic, repetitive, sexual, rhythmic, party, abstract, male vocals, surreal, atmospheric, psychedelic	3.68	2037	53
4579	Perils From the Sea	Folktronica	introspective, calm, death, melancholic, male vocals, sad, sombre, peaceful, melodic, atmospheric	3.68	1728	20
4580	Blood & Chocolate	Pop Rock	sarcastic, energetic, raw, aggressive, passionate, breakup, male vocals	3.68	1760	64
4581	Basie	Big Band, Swing	improvisation, instrumental, energetic, manic, playful	3.69	1668	36
4582	The Great Mass	Symphonic Metal, Death Metal	epic, heavy, melodic, mythology, dark, male vocals, atmospheric, orchestral, anti-religious	3.63	1732	45
4583	Rage for Order	Heavy Metal	futuristic, ominous, progressive, passionate, science fiction, male vocals, melodic, love, nocturnal, melancholic	3.67	2002	70
4584	I Just Can't Stop It	2 Tone, New Wave	male vocals, energetic, political, anxious, conscious, playful, melodic, rhythmic, warm	3.67	1774	50
4585	King of America	Pop Rock, Singer/Songwriter, Folk Rock	male vocals, melodic	3.68	1740	43
4586	Matching Mole	Canterbury Scene, Progressive Rock	male vocals, progressive, humorous, improvisation, complex	3.68	1584	36
4587	Frosting on the Beater	Power Pop, Alternative Rock	melodic, warm, bittersweet, passionate, sentimental, melancholic, male vocals, summer	3.68	1238	41
4588	Bellybutton	Power Pop, Pop Rock	male vocals, melodic, playful, psychedelic, progressive	3.68	1170	40
4590	AFTER 5 CLASH	City Pop	urban, nocturnal, optimistic, romantic, uplifting, sensual, playful, lush, male vocals, sentimental	3.7	842	9
4591	The Great Radio Controversy	Hard Rock	love, melodic, romantic, bittersweet, rhythmic, anthemic, introspective, male vocals, energetic	3.68	837	28
4981	Fegmania!	Psychedelic Pop, Jangle Pop, Neo-Psychedelia	quirky, psychedelic, male vocals	3.68	754	19
4592	Gesang der Jünglinge · Kontakte	Musique concrète, Integral Serialism, Electroacoustic	avant-garde, mechanical, surreal, atonal, instrumental, sparse, lethargic, futuristic, complex, scary	3.66	1145	15
4593	Razamanaz	Hard Rock	male vocals, energetic	3.68	1032	34
4594	Art Angels	Electropop, Synthpop	energetic, playful, fantasy, quirky, female vocals, manic, uplifting, bittersweet, lush, surreal	3.56	14569	133
4595	All Eyez on Me	West Coast Hip Hop, Gangsta Rap, G-Funk	crime, urban, boastful, violence, aggressive, sampling, male vocals, death, rhythmic, vulgar	3.62	7207	166
4596	Ga Ga Ga Ga Ga	Indie Rock	melodic, rhythmic, male vocals, conscious, quirky, melancholic, sarcastic, energetic, bittersweet, urban	3.65	4947	116
4597	Creedence Clearwater Revival	Swamp Rock, Blues Rock	male vocals, passionate, psychedelic, raw, rebellious, longing, dense, energetic, repetitive, rhythmic	3.66	4376	95
4598	Non-Stop Erotic Cabaret	Synthpop, New Wave	sexual, sarcastic, LGBT, nocturnal, male vocals, hedonistic, satirical, party, rhythmic, sensual	3.65	4209	81
4599	Today's Active Lifestyles	Math Rock, Indie Rock, Noise Rock	dissonant, energetic, chaotic, complex, noisy, anxious, uncommon time signatures, lo-fi, raw, playful	3.65	4285	48
4600	Niafunké	Songhai Music	warm, repetitive, melancholic, desert, meditative, atmospheric, hypnotic, tribal, male vocals, calm	3.7	718	15
4601	Star Wars Episode I: The Phantom Menace	Film Score, Cinematic Classical		3.7	687	6
4602	Communication	City Pop, Synthpop	rhythmic, love, female vocals, futuristic, nocturnal, melodic, bittersweet, sentimental, party, romantic	3.7	634	5
4603	The Masquerade Overture	Neo-Prog	male vocals	3.67	580	16
4604	一触即発 (Isshoku-Sokuhatsu)	Progressive Rock	uplifting, abstract, psychedelic, complex, progressive, male vocals	3.7	530	16
4605	Hinterland	Symphonic Prog, Progressive Rock	complex, melodic, male vocals, technical, epic, progressive, medieval	3.7	553	15
4606	Hokey Pokey	Contemporary Folk, British Folk Rock		3.7	527	21
4607	Super Mario World	Video Game Music, 16-bit, Chiptune	fantasy, instrumental, happy, melodic	3.7	537	5
4608	After chabón	Post-Punk	nocturnal, urban, anxious, sarcastic, mysterious, cold, male vocals	3.7	449	8
4609	Mirror of Souls	Power Metal	male vocals, melodic, Christian, optimistic, spiritual, energetic, religious, passionate, epic, heavy	3.68	375	15
4610	Oh! Calcutta!	Punk Rock	male vocals, anxious, energetic, raw, rebellious	3.69	420	7
4611	Duncan Browne	Chamber Folk, Singer/Songwriter	introspective, acoustic, melodic, poetic, bittersweet, lush, pastoral, male vocals	3.7	329	11
4612	Satanic Panic in the Attic	Psychedelic Pop, Indie Pop, Neo-Psychedelia	melodic, romantic, playful, psychedelic, warm, energetic, quirky, androgynous vocals, introspective, humorous	3.65	4472	74
4613	Welcome to Hell	Speed Metal, Heavy Metal, NWOBHM	raw, satanic, energetic, angry, heavy, infernal, rhythmic, male vocals, lo-fi, noisy	3.64	4023	96
4614	Destroy Erase Improve	Djent, Progressive Metal	technical, mechanical, aggressive, complex, futuristic, heavy, uncommon time signatures, male vocals, rhythmic, apocalyptic	3.63	3886	94
4615	With Oden on Our Side	Melodic Death Metal	mythology, pagan, war, melodic, energetic, heavy, male vocals, aggressive, epic, triumphant	3.63	3363	92
4616	Ton-Ton Macoute!	Swamp Blues	male vocals, energetic, passionate, melodic	3.71	307	12
4617	Scar	Americana, Singer/Songwriter	mellow, introspective, melodic	3.7	338	14
4618	Do You Want More?!!!??!	Jazz Rap, East Coast Hip Hop	male vocals, rhythmic, urban, nocturnal, mellow, playful, warm, improvisation, sexual, boastful	3.66	3039	63
4619	Life's a Riot With Spy vs. Spy	Folk Punk, Singer/Songwriter	political, rebellious, conscious, romantic, male vocals, minimalistic, raw	3.67	1531	35
4621	Her	Film Score, Ambient	sad, atmospheric, instrumental, melancholic, lonely, minimalistic, bittersweet, cold, soft, anxious	3.68	1394	12
4622	Southern Rock Opera	Southern Rock	concept album, conscious, rock opera, warm, humorous, deadpan, alienation, death, summer, epic	3.68	1077	29
4623	Unorthodox Behaviour	Jazz Fusion, Jazz-Rock	technical, complex, instrumental, uncommon time signatures	3.68	1248	36
4624	Shazam	Psychedelic Rock, Progressive Rock	complex, male vocals, melodic, progressive, energetic, psychedelic, quirky, playful, passionate, bittersweet	3.68	1180	54
4625	Invoking the Majestic Throne of Satan	Black Metal	satanic, male vocals, dark, infernal, triumphant, occult, raw, ominous, repetitive	3.66	1054	13
4626	Spirit the Earth Aflame	Folk Metal, Pagan Black Metal	male vocals, atmospheric, epic, passionate, heavy, melancholic, folklore, pagan, romantic, introspective	3.67	970	9
4627	The Light	Progressive Rock	existential, melodic, complex, introspective, male vocals, energetic, eclectic, progressive, abstract, playful	3.68	929	20
4628	Gene Clark With The Gosdin Brothers	Folk Rock, Country Rock, Singer/Songwriter	melodic, male vocals, psychedelic, bittersweet	3.68	781	29
4629	From Books and Dreams	Heavy Psych, Progressive Rock, Krautrock	heavy, dark, psychedelic, ominous, progressive, male vocals, hypnotic, occult, technical, nocturnal	3.69	660	31
4630	Belonging	ECM Style Jazz	instrumental, soft, calm	3.7	613	8
4631	Sundown	Contemporary Folk, Singer/Songwriter	melodic, pastoral, soft, poetic, mellow, introspective, male vocals	3.7	504	13
4632	Rough Mix	Rock, Roots Rock	male vocals	3.7	519	20
4633	Naon margina	Jaipongan	rhythmic, female vocals, hypnotic, complex, lo-fi, passionate, acoustic, sensual	3.7	512	5
4634	Tim Berne's Fractured Fairy Tales	Avant-Garde Jazz		3.7	377	4
4635	Quem é quem	Bossa nova, MPB	calm, mellow, rhythmic, tropical, happy, warm, peaceful, uplifting, summer, love	3.71	359	6
4636	Modern Lovers 88	Rock & Roll, Pop Rock	warm, desert, summer, nocturnal, quirky, happy, uplifting, party, male vocals, energetic	3.7	346	9
4637	Chapter 1: Delirium	Funeral Doom Metal	male vocals, funereal, sombre, depressive, pessimistic, apocalyptic, heavy, abstract, melodic, misanthropic	3.69	336	9
4638	Felt Mountain	Downtempo, Ambient Pop	atmospheric, ethereal, mysterious, lush, female vocals, cryptic, nocturnal, surreal, suspenseful, dark	3.65	5445	108
4639	Dear Catastrophe Waitress	Chamber Pop, Indie Pop, Twee Pop	optimistic, bittersweet, warm, melodic, male vocals, happy, romantic, playful, love, female vocals	3.65	5694	114
4640	Kiwanuka	Psychedelic Soul	male vocals, lush, warm, passionate, mellow, psychedelic, orchestral, introspective, melancholic, uplifting	3.67	3561	34
4641	After Bathing at Baxter's	Psychedelic Rock, Acid Rock	rebellious, psychedelic, drugs, mysterious, war, energetic, male vocals, raw, female vocals, abstract	3.66	3551	115
4642	The Predator	West Coast Hip Hop, Gangsta Rap, Political Hip Hop	crime, political, violence, urban, angry, male vocals, aggressive, conscious, rhythmic, sampling	3.66	2711	56
4643	Cheap Trick	Hard Rock, Power Pop	raw, energetic, male vocals, rebellious, melodic, passionate	3.66	2026	71
4644	Dear You	Punk Rock, Emo	male vocals, melancholic, sarcastic, introspective, melodic, passionate, bittersweet, longing, depressive, anxious	3.67	1873	36
4645	Eternal Devastation	Thrash Metal	energetic, male vocals, technical, apocalyptic, aggressive, raw, heavy, alienation, anti-religious, rebellious	3.67	1716	37
4646	Twin Cinema	Power Pop, Indie Pop	female vocals, male vocals, energetic, passionate, uplifting, melodic, playful, noisy, raw, quirky	3.65	4073	86
4647	Chaosphere	Djent	heavy, chaotic, mechanical, technical, aggressive, apocalyptic, futuristic, complex, rhythmic, misanthropic	3.64	3624	75
4648	The Creek Drank the Cradle	Contemporary Folk, Singer/Songwriter	lo-fi, acoustic, calm, mellow, sparse, male vocals, melancholic, soft, peaceful, pastoral	3.67	3354	59
4649	Searching for the Young Soul Rebels	Blue-Eyed Soul, New Wave	energetic, passionate, bittersweet, melodic, urban, male vocals, anxious, boastful, sarcastic, angry	3.66	2169	67
4650	Point of Know Return	Progressive Rock	energetic, technical, male vocals, epic, progressive, uncommon time signatures, passionate, lush, melodic	3.67	2199	52
4651	Laid	Alternative Rock, Indie Pop	atmospheric, melancholic, male vocals, melodic, passionate, mellow, bittersweet	3.67	1521	56
4652	From Langley Park to Memphis	Sophisti-Pop, Pop Rock	passionate, romantic, male vocals, melodic, poetic, lush, sentimental, female vocals, ethereal, urban	3.68	1439	41
4653	Malleus Maleficarum	Thrash Metal	male vocals, heavy, death, aggressive, energetic, technical, rhythmic, conscious, violence	3.67	1468	26
4654	Rua	Art Rock, Folk Rock	passionate, melancholic, male vocals, dark, longing, pessimistic, serious, death, melodic, eclectic	3.67	1041	21
4655	Back to the World	Chicago Soul	political, conscious, male vocals	3.7	928	18
4656	Act II: The Meaning of, and All Things Regarding Ms. Leading	Progressive Rock, Indie Rock, Rock Opera	concept album, energetic, rock opera, dense, complex, melodic, progressive, epic, eclectic, male vocals	3.65	1543	38
4657	Into the Infernal Regions of the Ancient Cult	Black Metal	infernal, occult, satanic, dark, male vocals, ominous, heavy, ritualistic, nocturnal, raw	3.66	1238	15
4658	Jouhou	Grindcore	aggressive, chaotic, introspective, energetic, angry, misanthropic, science fiction, heavy, cryptic, technical	3.66	1154	13
4659	Selda	Anatolian Rock, Turkish Folk Music	political, psychedelic, female vocals, protest, raw, folklore, passionate, melancholic	3.69	1033	18
4660	Family Entertainment	Psychedelic Rock, Progressive Rock	male vocals, quirky, eclectic	3.69	907	32
4661	Bastion	Video Game Music, Folktronica, Downtempo	futuristic, warm, anxious, melancholic, sombre, atmospheric, apocalyptic, rhythmic, mysterious, mechanical	3.68	908	6
4662	Half-Cut	Slowcore	lethargic, atmospheric, male vocals, dense, cold, depressive, autumn, melancholic, lonely, winter	3.68	841	6
4665	Black in Mind	Power Metal	melodic, male vocals, energetic, heavy, aggressive, dark, occult	3.69	521	13
4666	Megalázottak és megszomorítottak	Progressive Rock, Symphonic Prog	nocturnal, poetic, progressive, dark, mellow, melancholic, introspective, melodic	3.69	496	16
4667	Звезда	Alternative Rock, Indie Rock	poetic, melancholic, male vocals, cryptic, atmospheric, longing	3.68	514	5
4668	Blues Walk	Hard Bop	warm, playful, improvisation, instrumental	3.7	458	11
4669	The Guitar Trio	Flamenco Jazz, Flamenco	mellow, complex, warm, uplifting, technical, instrumental	3.71	453	8
4670	Not in My Airforce	Lo-Fi / Slacker Rock, Singer/Songwriter, Indie Rock	male vocals, lo-fi, passionate, eclectic, bittersweet, melodic, abstract	3.7	417	10
4671	Contagion	Neo-Prog	male vocals, melodic, technical	3.68	494	15
4673	Changes	Progressive Rock, Psychedelic Rock, Jazz-Rock	female vocals, psychedelic, mellow, mysterious	3.69	601	30
4674	MK II	Blues Rock, Progressive Rock	mellow, psychedelic, progressive, atmospheric	3.7	393	9
4675	Only Want You for Your Body	Hard Rock, Heavy Psych	energetic, heavy, male vocals, sexual, boastful, hedonistic, vulgar	3.69	465	20
4676	Rue des cascades	Chamber Folk		3.7	514	3
4677	Granicus	Hard Rock, Psychedelic Rock	male vocals	3.7	463	35
4678	The Delfonics	Philly Soul, Smooth Soul	lush, melodic, romantic	3.7	464	5
4679	The Last Emperor	Film Score, Cinematic Classical, Orchestral	uplifting, melodic, sparse, bittersweet, instrumental	3.7	470	6
4680	Кровь за кровь	Heavy Metal	male vocals, heavy, melodic, passionate	3.68	492	9
4681	LSD and Remixes	Video Game Music, IDM, Atmospheric Drum and Bass	psychedelic, surreal, technical, manic, playful, quirky, complex, instrumental, chaotic, sampling	3.68	491	3
4682	Street Corner Talking	Blues Rock		3.72	344	14
4683	People...Hold On	Soul, Funk	male vocals, rhythmic, psychedelic, passionate, energetic	3.71	326	6
4684	Stronger Than Heaven	Heavy Metal	melodic, male vocals, heavy, fantasy, epic	3.7	335	2
4685	Anti-Kahraman: 90 Nesli	Boom Bap	male vocals, rhythmic, sampling, angry, conscious, nocturnal, urban, aggressive, crime	3.7	404	6
4686	Ambient 4: Isolationism	Dark Ambient, Ambient	atmospheric, dark, cold, scary, eclectic, instrumental, ominous, noisy, mysterious, avant-garde	3.71	318	8
4687	2001: Instrumentals Only	Instrumental Hip Hop, West Coast Hip Hop	instrumental, urban, rhythmic, sampling	3.67	320	7
4688	Some Great Reward	Synthpop	mechanical, cold, male vocals, love, melodic, dark, rhythmic, anxious, sarcastic, sexual	3.65	5444	91
4689	Album: Generic Flipper	Noise Rock, Punk Rock	nihilistic, misanthropic, noisy, raw, male vocals, dissonant, sarcastic, repetitive, apathetic, depressive	3.64	4484	112
4690	Half Machine Lip Moves	Experimental Rock, Post-Punk, Noise Rock	lo-fi, science fiction, chaotic, psychedelic, manic, cryptic, noisy, male vocals, surreal, raw	3.65	3602	62
4691	The Nightfly	Sophisti-Pop, Jazz Pop, Pop Rock	lush, concept album, melodic, mellow, male vocals, romantic, sarcastic, urban, nocturnal, bittersweet	3.64	3571	97
4692	Colony	Melodic Death Metal	energetic, melodic, heavy, male vocals, pessimistic, angry, ominous, passionate, philosophical, epic	3.64	3343	65
4693	Pelagial	Progressive Metal, Atmospheric Sludge Metal, Post-Metal	heavy, male vocals, concept album, aquatic, progressive, complex, atmospheric, epic, nature, aggressive	3.65	1971	29
4694	Traveling Wilburys, Vol. 1	Pop Rock	ensemble, playful, male vocals, bittersweet, uplifting	3.66	2726	108
4695	Against the Grain	Melodic Hardcore, Skate Punk, Punk Rock	energetic, melodic, political, conscious, male vocals, anthemic, angry, pessimistic, nihilistic, death	3.64	2697	50
4696	Julie Is Her Name	Vocal Jazz, Standards	female vocals, sparse, sensual, melancholic, soft, nocturnal, minimalistic, love, lonely, mellow	3.68	1295	25
4697	Wake/Lift	Atmospheric Sludge Metal, Post-Metal	atmospheric, heavy, space, dense, male vocals, complex, noisy, melancholic, progressive, epic	3.68	1355	25
4698	Visions of the Emerald Beyond	Jazz Fusion, Jazz-Rock	technical, warm, spiritual, instrumental, uncommon time signatures, rhythmic, epic, energetic, complex	3.69	1334	27
4699	Amarok	Progressive Rock, New Age	eclectic, progressive, melodic, complex, instrumental, chaotic, warm, uplifting, rhythmic, pastoral	3.66	1310	49
4700	Sound	Free Jazz, Modern Creative	instrumental, uncommon time signatures, technical, atonal, dissonant, complex, improvisation, noisy, playful, avant-garde	3.67	795	9
4701	Gremlins Have Pictures	Psychedelic Rock, Singer/Songwriter	psychedelic, drugs, lo-fi	3.69	433	7
4702	Soldiers of Misfortune	Thrash Metal	raw, male vocals, energetic, atmospheric	3.7	431	9
4703	P.O.L.O.V.I.R.U.S.	Musical Parody	satirical, eclectic, parody, humorous, sarcastic, male vocals, quirky, energetic, surreal, complex	3.68	403	3
4704	Igra staklenih perli	Progressive Rock, Psychedelic Rock	psychedelic, hypnotic, ominous, dark, rhythmic	3.7	378	19
4705	Ciudad de Brahman	Stoner Rock	psychedelic, male vocals, desert, summer	3.71	386	9
4706	Porozumienie ponad podziałami	Rap Rock, Rap Metal	angry, energetic, raw, aggressive, male vocals, conscious, political	3.67	415	5
4707	Tear Gas	Hard Rock, Blues Rock	heavy, raw, male vocals, energetic	3.7	357	15
4708	Yasmina, a Black Woman	Avant-Garde Jazz	improvisation, avant-garde, rhythmic, passionate, instrumental	3.72	331	7
4709	Balladyna	Avant-Garde Jazz, ECM Style Jazz	atmospheric, mysterious, instrumental	3.7	351	5
4710	Hearts of Stone	Heartland Rock	male vocals	3.71	308	12
4711	The Ballad of the Fallen	Avant-Garde Jazz, Experimental Big Band	instrumental, composition, sombre	3.71	312	4
4713	m b v	Shoegaze, Dream Pop	noisy, dense, hypnotic, male vocals, psychedelic, atmospheric, ethereal, female vocals, love, melancholic	3.58	15503	229
4714	No Control	Melodic Hardcore, Skate Punk	energetic, melodic, conscious, political, male vocals, angry, anxious, rebellious, anthemic, raw	3.64	3861	77
4715	In Praise of Learning	Rock in Opposition	political, complex, improvisation, anxious, epic, passionate, ideology, female vocals, avant-garde, progressive	3.66	2930	54
4716	Another Perfect Day	Heavy Metal, Hard Rock	energetic, rhythmic, heavy, melodic, male vocals, rebellious, aggressive, dense	3.67	2194	52
4717	Uroboros	Alternative Metal, Progressive Metal, Avant-Garde Metal	male vocals, aggressive, complex, eclectic, mysterious, manic, disturbing, progressive, avant-garde, passionate	3.64	1336	13
4718	Gretchen Goes to Nebraska	Hard Rock	spiritual, uplifting, Christian, male vocals, heavy, melodic, energetic	3.67	1093	41
4719	Bílé inferno	Avant-Folk, Progressive Folk	female vocals, passionate, progressive, complex, uncommon time signatures, manic, quirky, acoustic, playful, repetitive	3.67	954	18
4720	East Side Story	Pop Rock, New Wave	male vocals, melodic, eclectic, bittersweet	3.69	954	41
4721	Extrapolation	Post-Bop	improvisation, rhythmic, passionate, warm, technical, energetic, instrumental, playful, avant-garde	3.69	921	22
4722	May Blitz	Hard Rock, Heavy Psych, Blues Rock	mellow, psychedelic, drugs, male vocals	3.68	869	40
4723	Program Music I	Electronic, Modern Classical	instrumental, passionate, romantic, melancholic, atmospheric, progressive, bittersweet, lush, epic, sampling	3.65	2844	46
4724	The View From This Tower	Math Rock, Post-Hardcore	technical, uncommon time signatures, melodic, cryptic, energetic, complex, progressive, male vocals, anxious	3.67	1920	27
4725	Kensington Blues	American Primitivism	acoustic, instrumental, hypnotic, melancholic	3.7	908	6
4726	Sleep	Post-Minimalism, Ambient	instrumental, melancholic, repetitive, nocturnal, meditative, minimalistic, soft, lush, atmospheric, ethereal	3.67	906	21
4727	The Unreal Never Lived	Doom Metal, Sludge Metal	heavy, male vocals, dark, psychedelic, dense, sombre, hypnotic, introspective, philosophical, spiritual	3.69	788	15
4728	On a Storyteller's Night	AOR, Hard Rock	love, fantasy, melodic, male vocals, energetic, passionate, nocturnal, anthemic, lush	3.65	759	28
4729	Green Street	Hard Bop, Soul Jazz	nocturnal, instrumental, soothing, mellow, melodic, technical, improvisation, uplifting, playful	3.69	726	14
4730	Offramp	Jazz Fusion, ECM Style Jazz	instrumental, calm, nocturnal, melodic, soothing	3.69	738	16
4731	Patto	Progressive Rock		3.69	616	36
4732	Specialist in All Styles	Wolof Music, Afro-Cuban Jazz	uplifting, melodic, atmospheric, male vocals, mellow	3.7	625	5
4733	Javanese Court Gamelan From the Pura Paku Alaman, Jogyakarta	Javanese Gamelan	atmospheric, spiritual, calm, mellow, natural, lush, meditative, peaceful, warm, soothing	3.7	629	7
4734	Even Serpents Shine	New Wave, Power Pop, Pop Rock		3.69	606	14
4735	Fröm the Fjörds	Heavy Metal, Progressive Rock	epic, mellow, nocturnal, melodic, progressive, passionate, folklore, mythology, male vocals, mysterious	3.69	530	20
4736	My Song	ECM Style Jazz	improvisation, instrumental, bittersweet, passionate, ethereal, mellow, technical, soothing, melancholic, playful	3.7	492	8
4737	El por qué de mis peinados	Indie Pop	atmospheric, apathetic, melodic, poetic, nocturnal, cryptic	3.7	388	11
4738	Rythmes contemporains	Jazz Fusion, Library Music, Jazz-Funk, Big Band	orchestral, energetic, progressive, rhythmic, instrumental, warm, lush, technical, surreal, psychedelic	3.7	465	13
4739	기생충 (Parasite)	Film Score, Modern Classical, Cinematic Classical	suspenseful, acoustic, instrumental, calm, melancholic, natural, mellow, pessimistic	3.69	466	1
4740	Heat Treatment	Pub Rock, Singer/Songwriter		3.7	442	12
4741	Muddy Waters Sings "Big Bill"	Delta Blues, Chicago Blues	passionate, male vocals, energetic, warm, uplifting, melodic, playful, poetic, soothing, rhythmic	3.71	379	8
4742	If There Was a Way	Bakersfield Sound, Neo-Traditionalist Country	alcohol, lonely, breakup, bittersweet	3.69	317	9
4743	La tarantella: Antidotum tarantulae	Baroque Music, Tarantella, Italian Folk Music	acoustic	3.71	302	2
4744	Penis Envy	Anarcho-Punk	political, protest, angry, female vocals, anarchism, sarcastic, satirical, aggressive, passionate, noisy	3.66	2290	33
4745	The Tenth Sub Level of Suicide	Depressive Black Metal, Black Metal	dark, misanthropic, self-hatred, male vocals, suicide, raw, cold, depressive, infernal, atmospheric	3.66	1956	24
4746	The Midnight Organ Fight	Indie Rock, Indie Pop	passionate, melancholic, male vocals, breakup, sad, melodic, depressive, anxious, introspective, suicide	3.66	1918	46
4747	330,003 Crossdressers From Beyond the Rig Veda	Avant-Folk, Experimental Rock	eclectic, playful, psychedelic, ritualistic, raw, humorous, tribal, improvisation, hypnotic, quirky	3.65	1809	22
4748	Chicago [II]	Jazz-Rock, Pop Rock	male vocals, progressive, conscious, suite, eclectic, lush, romantic, triumphant	3.67	1543	42
4749	The Nephilim	Gothic Rock	dark, male vocals, sombre, atmospheric, nocturnal, melancholic, mythology, occult, ethereal	3.67	1469	18
4750	Schmaltz	Emo, Pop Punk	depressive, melodic, anthemic, self-hatred, pessimistic, male vocals, passionate, anxious, energetic, sad	3.67	717	5
4751	The Visitor	Neo-Prog	concept album, male vocals, melodic, melancholic, cryptic, progressive, atmospheric, technical	3.66	669	23
4752	Golden Earring	Hard Rock, Progressive Rock	heavy, melancholic, psychedelic, male vocals, ominous, progressive	3.69	529	15
4753	Pérola negra	MPB, Samba Soul	eclectic, uplifting, male vocals, romantic, sarcastic, poetic, love, lush, mysterious, rhythmic	3.69	524	7
4754	Hardworlder	Heavy Metal	science fiction, male vocals, heavy, melodic, rhythmic, energetic	3.69	496	13
4755	Ready and... Willing	Cloud Rap, Experimental Hip Hop, Southern Hip Hop	ethereal, lo-fi, hypnotic, sampling, male vocals, psychedelic, violence, crime, boastful, death	3.67	549	8
4757	Долгая счастливая жизнь	Psychedelic Rock, Post-Punk	psychedelic, existential, cryptic, poetic, sombre, Wall of Sound, philosophical	3.68	538	4
4758	Where Are You?	Standards, Traditional Pop	lonely, male vocals, melancholic, nocturnal, longing, concept album, romantic, love, passionate, calm	3.68	511	19
4759	Tak! Tak!	New Wave	male vocals, manic, chaotic	3.7	464	5
4760	Стыд и срам	Singer/Songwriter, Folk Rock	poetic, depressive, melancholic, anxious, noisy, passionate, sad, lonely, pessimistic, playful	3.69	448	5
4761	Brothers in Arms	Pop Rock	male vocals, melodic, playful, melancholic, bittersweet, war, eclectic, pastoral, lush	3.62	7809	184
4762	The Parable of Arable Land	Experimental Rock, Psychedelic Rock, Free Improvisation	chaotic, psychedelic, avant-garde, noisy, improvisation, drugs, surreal, playful, raw, dense	3.64	3848	73
4763	"Born Into Trouble as the Sparks Fly Upward."	Post-Rock	melancholic, apocalyptic, suspenseful, atmospheric, longing, mysterious, male vocals, anarchism, political, epic	3.65	3982	51
4764	Niemen Aerolit	Progressive Rock		3.7	408	13
4765	SoniCRIME TheRapy	Japanese Hardcore, Crust Punk, Thrash Metal	raw, aggressive, noisy, manic, male vocals, heavy, chaotic, energetic, violence, nihilistic	3.67	440	2
4766	Pappo's Blues	Blues Rock, Hard Rock	heavy, raw, psychedelic, male vocals	3.71	363	15
4767	International Thief Thief	Afrobeat	political, male vocals	3.71	315	3
4768	Breaking Point	Hard Bop, Modal Jazz, Post-Bop	complex, improvisation, rhythmic, instrumental, passionate, energetic, acoustic, technical, melodic	3.72	297	4
4769	Blinking Lights and Other Revelations	Singer/Songwriter, Indie Pop	melancholic, introspective, mellow, male vocals, bittersweet, sad, lonely, sarcastic, melodic, eclectic	3.67	2334	77
4770	Precambrian	Sludge Metal, Atmospheric Sludge Metal	male vocals, heavy, progressive, aggressive, atmospheric, nature, conscious, existential, concept album, complex	3.65	2099	43
4771	Holy Land	Power Metal, Symphonic Metal	male vocals, epic, melodic, concept album, energetic, passionate, history, progressive, tribal, triumphant	3.63	1570	53
4772	Cold River Songs	Noise Rock	misanthropic, noisy, violence, chaotic, dark, repetitive, rhythmic, atmospheric, apathetic, male vocals	3.68	1248	18
4773	Vivisect VI	Electro-Industrial	mechanical, political, sampling, apocalyptic, noisy, aggressive, misanthropic, rhythmic, cold, dense	3.67	1373	28
4774	These Are Not Fall Colors	Post-Hardcore, Emo	anxious, raw, male vocals, noisy, energetic, lonely, sad, lo-fi, cryptic, autumn	3.68	893	10
4775	Long Live	Metalcore	noisy, chaotic, aggressive, uncommon time signatures, angry, religious, male vocals, energetic, passionate, rebellious	3.67	902	7
4776	大人 (Adult)	Jazz-Rock, Pop Rock, Art Pop, J-Rock	urban, melodic, female vocals, triumphant, anthemic, energetic, playful, passionate, lush, longing	3.67	945	7
4777	As Falls Wichita, So Falls Wichita Falls	ECM Style Jazz	soothing, pastoral, atmospheric, passionate, ethereal, male vocals, instrumental, uplifting, soft, improvisation	3.69	821	28
4778	Tenor Madness	Hard Bop	improvisation, acoustic, instrumental	3.69	788	17
4779	Street Ready	Heavy Metal, US Power Metal	melodic, male vocals, energetic, triumphant, uplifting, heavy, anthemic	3.7	294	10
4780	The Mind Is a Terrible Thing to Taste	Industrial Metal, Industrial Rock	mechanical, male vocals, sampling, energetic, repetitive, aggressive, political, heavy, angry, dark	3.65	3130	70
4781	Metamodern Sounds in Country Music	Outlaw Country	psychedelic, drugs, introspective, male vocals, spiritual, existential, melodic, bittersweet, warm, passionate	3.68	1933	16
4782	Music in a Doll's House	Psychedelic Rock, Progressive Rock	eclectic, psychedelic, melodic, male vocals, quirky, surreal, progressive, passionate, playful	3.67	1611	69
4783	Ssssh	Blues Rock, Acid Rock, Hard Rock	energetic, male vocals, melodic, raw, rhythmic, playful, passionate, technical, psychedelic	3.68	1238	40
4784	Dwight Spitz	Jazz Rap, Southern Hip Hop	mellow, male vocals, sampling	3.68	865	18
4785	Rainbow Bridge	Blues Rock, Psychedelic Rock	male vocals, psychedelic, raw, warm, technical, epic, eclectic, rhythmic, hypnotic, mellow	3.69	799	31
4786	Living the Blues	Boogie Rock, Blues Rock	improvisation, psychedelic, male vocals, mellow, raw	3.69	734	24
4787	Progression Through Unlearning	Metalcore	aggressive, heavy, energetic, angry, male vocals, raw, uplifting, uncommon time signatures, rhythmic	3.68	711	13
4788	The Beat	Power Pop	anthemic, quirky, anxious, raw, melodic, love, bittersweet, passionate, male vocals, energetic	3.69	633	25
4789	Birthday Blues	Chamber Folk, Folk Baroque, Contemporary Folk	melancholic, acoustic, autumn, male vocals, mellow, calm, rhythmic	3.69	582	12
4790	Hittin' the Note	Southern Rock	male vocals, warm, melodic, energetic	3.69	563	22
4791	187 He Wrote	Mobb Music, West Coast Hip Hop, Gangsta Rap	death, crime, drugs, violence, urban, vulgar, nihilistic, male vocals, conscious, political	3.67	679	21
4792	Stardust We Are	Symphonic Prog, Progressive Rock		3.69	661	19
4793	Nekropsalms	Death Metal	aggressive, heavy, death, occult, dark, energetic, atmospheric	3.69	514	4
4794	Henry the Human Fly	Singer/Songwriter, British Folk Rock, Folk Rock	folklore, pastoral, male vocals, depressive	3.7	476	17
4795	Clepsydra; Astray	Spectralism	atmospheric, dissonant, disturbing, avant-garde, instrumental, atonal, suspenseful, complex, dark	3.7	462	3
4796	The Boys	Punk Rock	male vocals, melodic, energetic, rebellious	3.7	421	8
4797	An Ancient Muse	Celtic New Age, Celtic Folk Music	female vocals, melancholic, melodic, spiritual, peaceful, ethereal, mythology, soothing, soft	3.69	439	13
4798	The Voice of the Eagle	American Primitivism	pastoral, nature, passionate, melodic, male vocals, acoustic	3.69	420	4
4799	O espírito da paz	Chamber Folk	female vocals, spiritual, ethereal	3.7	399	8
4800	El Hombre	Soul Jazz, Post-Bop	instrumental, tropical, summer, happy, technical	3.7	390	9
4801	As the Weird Travel On	Thrash Metal, Death Metal	aggressive, melodic, angry, death, male vocals, energetic, paranormal, heavy, dark	3.68	377	3
4802	Bitter Funeral Beer	Avant-Garde Jazz, Afro-Jazz, Spiritual Jazz	rhythmic, tribal, avant-garde, playful, improvisation	3.71	326	0
4803	Currents	Psychedelic Pop, Synthpop, Neo-Psychedelia	psychedelic, love, melodic, anxious, bittersweet, breakup, male vocals, lush, dense, warm	3.55	20043	157
4804	Jubilee	Indie Pop, Chamber Pop	lush, warm, melodic, optimistic, love, female vocals, bittersweet, sentimental, playful, introspective	3.64	6934	64
4805	Brotherhood	Synthpop, New Wave, Alternative Dance	melancholic, energetic, male vocals, melodic, rhythmic, bittersweet, noisy, summer	3.65	5329	66
4806	Hard Normal Daddy	Drill and Bass	rhythmic, playful, energetic, technical, dense, futuristic, manic, complex, atmospheric, mechanical	3.65	4785	47
4807	Street Survivors	Southern Rock	alcohol, male vocals, drugs	3.66	1562	48
4808	Seventh Sojourn	Progressive Rock, Progressive Pop	lush, atmospheric, warm, male vocals, autumn, progressive, ethereal	3.68	1416	60
4809	Still Got the Blues	Blues Rock, Electric Blues	male vocals, melodic, playful, sombre, sad	3.67	1238	29
4810	janet.	Contemporary R&B, Dance-Pop	sexual, sensual, urban, romantic, warm, love, eclectic, soothing, rhythmic, melodic	3.65	1345	28
4811	Dead Winter Dead	Heavy Metal, Rock Opera	winter, rock opera, history, epic, war, melancholic, complex, male vocals, passionate, melodic	3.66	1126	28
4812	The Greatest Generation	Pop Punk	passionate, introspective, male vocals, depressive, melodic, melancholic, existential, anthemic, urban, death	3.63	1193	16
4813	Hymn of the Seventh Galaxy	Jazz Fusion, Jazz-Rock	complex, technical, energetic, instrumental	3.68	994	25
4814	Hallow's Victim	Doom Metal, Traditional Doom Metal	male vocals, heavy, raw, dark, occult, dense, sombre, lo-fi	3.67	1006	20
4815	Dawn	Progressive Rock	epic, male vocals, progressive, concept album, spiritual, psychedelic, triumphant	3.68	993	37
4816	Playing It Cool & Playing It Right	Dub, Reggae	psychedelic, mellow, warm, love, male vocals, longing, rhythmic, tropical, soothing, lonely	3.69	976	12
4817	Welcome to the Infant Freebase	Psychedelic Rock, Indie Rock		3.7	389	15
4818	Doing It to Death	Funk		3.71	304	13
4820	Pang	Art Pop	atmospheric, female vocals, longing, ethereal, breakup, bittersweet, introspective, love, passionate, melodic	3.64	6399	50
4821	Wind's Poem	Singer/Songwriter, Avant-Folk	cold, lonely, melancholic, atmospheric, introspective, sombre, poetic, dark, noisy, forest	3.65	3573	42
4822	Weather Systems	Progressive Rock	passionate, spiritual, love, melancholic, uplifting, atmospheric, male vocals, ethereal, progressive, melodic	3.63	3159	101
4823	They Spent Their Wild Youthful Days in the Glittering World of the Salons	Noise Pop, Indie Rock, Shoegaze	noisy, male vocals, female vocals, melodic, psychedelic, dissonant, cryptic, energetic, technical, mellow	3.66	3170	30
4824	Somewhere at the Bottom of the River Between Vega and Altair	Post-Hardcore	passionate, poetic, breakup, love, anxious, melancholic, male vocals, sad, aggressive, lonely	3.63	3329	54
4825	Behind the Realms of Madness	Thrash Metal, Crust Punk	raw, female vocals, heavy, death, apocalyptic, lo-fi, pessimistic, aggressive, energetic, rhythmic	3.67	1107	20
4826	KRS One	East Coast Hip Hop, Conscious Hip Hop, Boom Bap, Hardcore Hip Hop	serious, urban, boastful, male vocals, political, conscious, raw, sampling, philosophical	3.66	1068	26
4827	Antithesis of Light	Funeral Doom Metal, Death Doom Metal	depressive, heavy, ominous, funereal, male vocals, apocalyptic, dense, cold, atmospheric, sombre	3.67	922	20
4828	Symbol of Salvation	Heavy Metal	heavy, energetic, male vocals, melodic, passionate, rhythmic, anthemic	3.67	851	33
4829	From Silence to Somewhere	Symphonic Prog, Progressive Rock	epic, male vocals, progressive, energetic, complex, uncommon time signatures, existential, technical, melodic, passionate	3.68	861	18
4830	Photos of Ghosts	Symphonic Prog, Progressive Rock	uncommon time signatures, ..., philosophical, fantasy, complex, male vocals, progressive	3.69	821	24
4831	Who Is Jill Scott? Words and Sounds Vol. 1	Neo-Soul, Contemporary R&B	female vocals, passionate, lush, conscious, soft, sexual, melodic, sensual, love, bittersweet	3.67	855	22
4832	Slapp Happy	Art Pop	surreal, melodic, quirky, poetic, lush, female vocals, playful, orchestral, complex	3.69	754	23
4833	Where Blood and Fire Bring Rest	Metalcore	aggressive, Christian, passionate, serious, male vocals, sombre, heavy, introspective, spiritual, conscious	3.65	769	21
4834	Hell	Funk, Soul	rhythmic, male vocals, passionate	3.68	729	20
4835	Kew. Rhone.	Avant-Prog, Rock in Opposition, Avant-Garde Jazz	political, concept album, male vocals, female vocals, progressive, avant-garde, rhythmic, uncommon time signatures, quirky, complex	3.67	680	26
4836	Music to Driveby	Gangsta Rap, West Coast Hip Hop	urban, sampling, male vocals, crime, lethargic, boastful, suspenseful, rhythmic, violence, poetic	3.68	753	20
4837	Love Ire & Song	Acoustic Rock, Singer/Songwriter	melodic, uplifting, anthemic, rebellious, introspective, male vocals, passionate, acoustic, optimistic	3.66	719	16
4838	Cumbia & Jazz Fusion	Latin Jazz, Avant-Garde Jazz	improvisation, instrumental, acoustic, uplifting, summer, lush	3.69	608	11
4839	א (Alef)	Avant-Garde Jazz, Klezmer	playful, complex, avant-garde, instrumental	3.68	581	9
4840	An Invisible World Revealed	Progressive Rock	calm, psychedelic, progressive, atmospheric	3.7	514	19
4841	Campo di Marte	Progressive Rock	complex, technical, war, poetic, male vocals	3.7	537	30
4842	The Havoc	Memphis Rap, Horrorcore, Southern Hip Hop	dark, lo-fi, atmospheric, occult, Halloween, suicide, male vocals, crime, vulgar, melancholic	3.67	580	5
4843	Al Green Explores Your Mind	Smooth Soul	male vocals, love, melodic, soft, happy	3.7	552	8
4844	Odyssey	Jazz Fusion, ECM Style Jazz	nocturnal, atmospheric, instrumental, psychedelic, meditative, passionate	3.69	527	13
4845	The Living Road	Contemporary Folk, Singer/Songwriter	female vocals, melancholic, pastoral, warm, melodic, sad	3.69	555	15
4846	Heavyweight Dub Champion	Dub	rhythmic, repetitive, sampling, nocturnal, warm, psychedelic, melodic, male vocals, hypnotic	3.7	518	9
4847	Ragnarök	Progressive Rock, Progressive Folk	instrumental, mellow, lonely, calm	3.7	501	17
4848	We'll Never Turn Back	Country Soul, Deep Soul, Southern Soul	happy, spiritual, conscious, rhythmic, female vocals, uplifting, warm, passionate, political	3.71	418	14
4849	Past, Present and Future	Singer/Songwriter	mellow, longing, warm, melodic, sentimental, male vocals	3.7	422	17
4850	The Only Truth	Heavy Psych, Psychedelic Rock, Hard Rock	Christian	3.7	348	20
4851	This Is... Gracious!!	Progressive Rock, Symphonic Prog		3.7	333	19
4852	The Greatest Story Ever Told	Punk Rock		3.69	413	12
4853	Plants and Birds and Rocks and Things	Power Pop, Jangle Pop	male vocals, eclectic	3.69	329	13
4854	Doin' Allright	Hard Bop	improvisation, acoustic, instrumental	3.71	320	7
4855	Rites of Spring	Emocore	passionate, male vocals, raw, introspective, angry, energetic, anxious, melancholic, existential, sad	3.66	4504	47
4856	Neon Golden	Indietronica, Indie Pop	melancholic, introspective, love, mellow, melodic, warm, soft, rhythmic, sensual, autumn	3.64	4078	68
4857	Suicidal Tendencies	Hardcore Punk, Skate Punk	male vocals, energetic, humorous, angry, rebellious, sarcastic, playful, manic, alienation, aggressive	3.65	3436	59
4858	Zuckerzeit	Krautrock, Electronic, Progressive Electronic	instrumental, mechanical, hypnotic, futuristic, minimalistic, repetitive, warm, atmospheric, playful, rhythmic	3.65	3003	60
4859	Horse Stories	Post-Rock	instrumental, passionate, melancholic, raw, sombre, warm, pastoral, lonely, bittersweet	3.66	2399	28
4860	None of This Is Real	Instrumental Hip Hop, Plunderphonics, Experimental Hip Hop	aleatory, concept album, mysterious, sampling, lo-fi, atmospheric, eclectic, surreal, psychedelic, quirky	3.66	1955	25
4861	Soft Black Stars	Singer/Songwriter	poetic, longing, male vocals, acoustic, soft, minimalistic, lonely, melancholic, bittersweet, repetitive	3.67	1671	21
4862	Pakistani Pomade	European Free Jazz	avant-garde, anxious, technical, chaotic, suspenseful, instrumental, improvisation, acoustic, atmospheric, manic	3.66	1184	20
4863	White Light White Heat White Trash	Punk Rock	melodic, male vocals, bittersweet, melancholic, introspective, energetic	3.67	1202	32
4864	The Michael Schenker Group	Hard Rock	playful, male vocals, melodic, uplifting, anthemic, energetic	3.68	847	33
4865	The North Star Grassman and the Ravens	British Folk Rock, Folk Rock	female vocals, mysterious	3.69	784	29
4866	The Always Open Mouth	Post-Hardcore	male vocals, anxious, dark, angry, heavy, dissonant, noisy, dense, political, depressive	3.67	875	18
4867	Popular Favorites	Garage Punk, Punk Blues	raw, male vocals, sexual, humorous, party, lo-fi	3.68	780	15
4868	Tim Hardin 2	Contemporary Folk, Singer/Songwriter	mellow, introspective, male vocals, passionate, longing	3.68	720	18
4869	Vicious Circle	Hardcore Punk, Punk Rock	aggressive, raw, noisy, male vocals, energetic, passionate, rebellious, apocalyptic, angry, heavy	3.68	738	19
4870	Promenade	Chamber Pop, Baroque Pop	humorous, concept album, poetic, melancholic, uplifting, lush, summer, orchestral, warm, romantic	3.67	733	18
4871	Art Blakey's Jazz Messengers With Thelonious Monk	Hard Bop	instrumental, improvisation, rhythmic, playful, melodic	3.7	695	14
4872	!!Destroy-Oh-Boy!!	Garage Punk, Punk Rock	energetic, humorous, sarcastic, male vocals, passionate, aggressive	3.69	676	14
4873	Transistor	Video Game Music, Downtempo, Trip Hop	melancholic, futuristic, rhythmic, soothing, mellow, female vocals, atmospheric, lush, instrumental	3.67	688	8
4874	In the Pines	Indie Rock, Alt-Country	male vocals, lonely, introspective, mellow, raw, longing, melancholic, happy, warm, romantic	3.68	626	25
4875	Once Upon a Time	Disco	concept album, female vocals, passionate, melodic, rhythmic, energetic, party, love, longing, hypnotic	3.67	657	28
4876	Play 9 Songs With Mr. Quintron	Garage Punk, Punk Blues	male vocals	3.68	573	16
4877	Japanese Koto Orchestra	Sōkyoku	ethereal, instrumental, mellow, melancholic, epic, peaceful, folklore, soothing, acoustic, lush	3.7	549	3
4878	Ian Hunter	Glam Rock	ballad, passionate, boastful, male vocals, energetic	3.69	485	19
4879	Body Meta	Avant-Garde Jazz	improvisation, avant-garde, instrumental	3.7	495	12
4880	Spiral	Post-Bop	instrumental, improvisation, rhythmic, complex, warm, technical, melodic, passionate	3.7	393	10
4881	Synchronicity	New Wave, Pop Rock	male vocals, melodic, serious, conscious, dense, melancholic, political, warm, lush, mysterious	3.63	6777	186
4882	Red Dead Redemption	Video Game Music, Spaghetti Western	desert, warm, pastoral, epic, male vocals, sombre, atmospheric, melancholic, suspenseful, lush	3.69	369	7
4883	Bass on Top	Hard Bop	instrumental, rhythmic, acoustic	3.71	347	8
4884	Hvarf / Heim	Post-Rock	peaceful, mellow, hypnotic, atmospheric, playful, passionate, melodic, calm, melancholic, androgynous vocals	3.66	3520	62
4885	I Robot	Art Rock, Progressive Rock	science fiction, concept album, futuristic, suspenseful, technical, mechanical, male vocals, progressive, mellow, philosophical	3.66	2932	80
4886	Pampered Menial	Progressive Rock	melodic, androgynous vocals, passionate, male vocals, epic	3.66	1322	76
4887	Aégis	Gothic Metal, Gothic Rock	female vocals, male vocals, romantic, sensual, love, lush, atmospheric, ethereal, melancholic, mellow	3.65	1190	37
4888	The Will to Death	Indie Rock, Singer/Songwriter	sad, cryptic, warm, bittersweet, male vocals, death, melancholic, melodic, introspective, lush	3.67	1507	28
4889	The Remote Viewer	Tribal Ambient, Experimental, Electronic	atmospheric, instrumental, mysterious, hypnotic, ritualistic, surreal, nocturnal, suspenseful, psychedelic, tribal	3.66	1142	13
4890	Gala Mill	Punk Blues, Garage Rock	poetic, dark, depressive, anxious, raw, male vocals, history, passionate, violence, death	3.68	832	15
4891	Deathrace King	Thrash Metal, Death Metal	satanic, energetic, heavy, male vocals, dense, death, melodic, violence, dark, infernal	3.65	840	17
4892	Одбрана и последњи дани	New Wave, Post-Punk	energetic, melancholic, melodic, cryptic, male vocals, religious, love, raw, concept album	3.67	800	18
4893	All	Stoner Rock, Heavy Psych	psychedelic, male vocals, warm, rhythmic, heavy	3.68	758	21
4894	Tűnő idő tárlat	Avant-Garde Metal, Progressive Metal	avant-garde, progressive, male vocals, atmospheric, poetic, cold, eclectic, sombre, space, female vocals	3.67	744	13
4895	Howlin' Wind	Pub Rock	male vocals, energetic, passionate	3.68	554	23
4896	The Sullen Sulcus	Death Doom Metal	male vocals, melancholic, melodic, depressive, repetitive, sombre, dense, funereal, death, heavy	3.68	490	5
4897	The Soul of a Bell	Southern Soul, Deep Soul		3.7	380	13
4898	Fifteen Covnts of Arson	Crust Punk	heavy, dark, ominous, angry, energetic, manic, aggressive, anarchism, male vocals	3.68	756	5
4899	Caifanes	Post-Punk	dark, romantic, nocturnal, melancholic, atmospheric, male vocals, suicide	3.69	714	9
4900	Oracle Moon	Melodic Death Metal	sombre, melancholic, melodic, atmospheric, dark, progressive, complex, heavy, male vocals, epic	3.66	645	18
4901	Cry Tuff Dub Encounter Chapter III	Dub	psychedelic, futuristic, mellow, tropical, sampling, warm, rhythmic, instrumental, heavy, quirky	3.69	542	10
4902	Inside Llewyn Davis	Film Soundtrack, Contemporary Folk	acoustic, pastoral, passionate, poetic, introspective, male vocals, melodic	3.7	549	8
4903	You're Never Alone With a Schizophrenic	Rock	male vocals, energetic, uplifting, sarcastic	3.69	475	21
4904	Bleu pétrole	Folk Rock, Chanson	melancholic	3.67	471	18
4905	Adelie Land	Plunderphonics, Nu-Disco	happy, sampling, party, playful, dense, summer, energetic, urban, uplifting, warm	3.69	439	10
4906	Occasional Rain	Soul		3.7	415	11
4907	The Psychedelic Sounds of The 13th Floor Elevators	Psychedelic Rock, Garage Rock, Acid Rock	psychedelic, drugs, manic, male vocals, surreal, energetic, raw, rhythmic, passionate, hypnotic	3.62	7281	196
4908	Stranger in the Alps	Indie Folk, Singer/Songwriter	death, sombre, introspective, sentimental, poetic, melancholic, bittersweet, serious, lonely, female vocals	3.64	6097	44
4909	Trust	Slowcore	sad, lethargic, sombre, melancholic, atmospheric, male vocals, female vocals, dark, drugs, death	3.67	2255	37
4910	Dol Guldur	Atmospheric Black Metal, Symphonic Black Metal	fantasy, epic, triumphant, medieval, male vocals, melodic, atmospheric, repetitive, dense, melancholic	3.65	1902	20
4911	Nothing's Shocking	Alternative Rock, Hard Rock	energetic, male vocals, psychedelic, drugs, philosophical, summer, bittersweet, playful, eclectic, rhythmic	3.63	5129	117
4912	So It Goes	Technical Thrash Metal, Thrash Metal	aggressive, technical, death, progressive, energetic, eclectic, male vocals, rhythmic	3.69	367	10
4913	Giant Step / De Ole Folks at Home	Country Blues, Blues Rock, Blues, Acoustic Blues		3.69	360	13
4914	Falso brilhante	MPB	female vocals, bittersweet, fantasy, melancholic, poetic, sentimental, sad, dense, melodic, atmospheric	3.68	364	6
4915	Fabrication Defect: Com defeito de fabricação	Avant-Folk	playful, rhythmic, political, happy, sarcastic	3.71	338	8
4916	Versus God	Punk Rock	energetic, male vocals	3.69	350	5
4917	Intención	Progressive Rock		3.71	265	12
4918	Miles	Conscious Hip Hop, West Coast Hip Hop, Jazz Rap	introspective, conscious, male vocals, lush, sampling, religious, optimistic, sentimental, poetic, playful	3.66	2997	23
4919	I'll Sleep When You're Dead	Abstract Hip Hop, Experimental Hip Hop, East Coast Hip Hop	raw, complex, urban, dark, sampling, aggressive, male vocals, progressive, political, chaotic	3.65	3063	68
4920	Dragnet	Post-Punk	lo-fi, dark, satirical, mysterious, cryptic, anxious, repetitive, paranormal, noisy, surreal	3.66	2813	52
4921	Indiscreet	Art Pop, Progressive Pop	eclectic, energetic, playful, humorous, melodic, complex, sarcastic, surreal, lush, androgynous vocals	3.67	1455	39
4922	Running on Empty	Singer/Songwriter, Folk Rock	concept album, male vocals, introspective, drugs, raw	3.68	1458	47
4923	The Preface	Boom Bap	male vocals	3.69	642	20
4924	A Sombre Dance	Doom Metal, Symphonic Metal	sombre, bittersweet, melancholic, melodic, male vocals, female vocals, suite, pastoral, lonely, longing	3.63	671	15
4925	Banquet in the Darkness	Melodic Death Metal	melodic, heavy, rhythmic, technical, dark, triumphant, dense, complex, melancholic, occult	3.66	651	14
4926	Игра с огнем	Heavy Metal	male vocals, heavy, melodic, passionate, energetic	3.67	500	11
4927	Abbey Is Blue	Vocal Jazz	calm, female vocals, melancholic, passionate, mellow, spring	3.69	466	13
4928	Odyssey of Iska	Avant-Garde Jazz, Spiritual Jazz	improvisation, calm, warm, melodic, passionate, soothing, instrumental	3.7	393	4
4929	Imperivm	Crust Punk, Melodic Metalcore	aggressive, heavy, progressive, energetic, male vocals, melodic, epic, political, rebellious, rhythmic	3.66	467	4
4930	Earth & Fire	Psychedelic Rock	female vocals, raw, psychedelic, melodic, eclectic, energetic	3.7	412	19
4933	Everywhere at the End of Time: Stage 3	Turntable Music, Ambient	lonely, atmospheric, concept album, sampling, depressive, surreal, sombre, longing, dark, lo-fi	3.64	2710	20
4934	Slowly We Rot	Death Metal	death, aggressive, heavy, male vocals, violence, ominous, apocalyptic, energetic	3.65	2810	55
4935	Whitesnake	Hard Rock	male vocals, energetic, love, heavy, passionate, romantic, playful, melodic	3.62	2660	93
4936	The Black Light	Americana, Alt-Country	summer, desert, mellow, atmospheric, warm, male vocals	3.66	2088	29
4937	Musas Vol. 1	Mexican Folk Music, Nueva canción latinoamericana	female vocals, acoustic, calm, warm, soft, romantic, mellow, soothing, love, melodic	3.68	1876	15
4938	⊿ (Triangle)	J-Pop, Electropop	futuristic, energetic, female vocals, party, melodic, rhythmic, happy, uplifting, love, dense	3.65	2035	28
4939	Twilight of the Gods	Viking Metal	epic, pagan, mythology, folklore, male vocals, melodic, history, passionate, triumphant, heavy	3.65	2653	34
4940	Character	Melodic Death Metal	heavy, philosophical, melodic, aggressive, male vocals, conscious, introspective, melancholic, sombre	3.64	2185	49
4941	Shine On Brightly	Progressive Rock, Art Rock	male vocals, progressive, epic, psychedelic, poetic	3.67	1482	58
4942	Fried	Neo-Psychedelia	playful, psychedelic, male vocals, uplifting, melodic, quirky, mysterious, surreal, humorous	3.66	1446	35
4944	Isla	ECM Style Jazz	instrumental, ethereal, minimalistic, bittersweet, lush, soft, calm, atmospheric, triumphant	3.68	1220	14
4945	À l'âme enflammée, l'âme constellée...	Atmospheric Black Metal, Depressive Black Metal, Progressive Metal	progressive, uncommon time signatures, atmospheric, depressive, melancholic, sombre, mysterious, poetic, apocalyptic, complex	3.64	1170	20
4946	X-Aspirations	Punk Rock	angry, aggressive, raw, alienation, rebellious	3.69	350	16
4947	Magnetic South	Country Rock, Singer/Songwriter	male vocals	3.69	351	9
4948	Teatro	Outlaw Country, Country	longing, melancholic, ballad, love, bittersweet, pastoral	3.7	322	12
4949	Voice of the Blood	Gregorian Chant, Medieval Classical Music	female vocals, meditative, spiritual, medieval, hymn, peaceful, Christian, religious, ritualistic, ethereal	3.7	292	2
4950	Saturation	Pop Rap, West Coast Hip Hop	eclectic, boastful, male vocals, LGBT, vulgar, drugs, playful, introspective, summer, urban	3.55	17629	70
4951	On Avery Island	Lo-Fi / Slacker Rock, Psychedelic Folk, Indie Folk	lo-fi, noisy, psychedelic, surreal, passionate, bittersweet, male vocals, lonely, melancholic, raw	3.6	12800	148
4952	Around the World in a Day	Psychedelic Soul, Pop Rock, Neo-Psychedelia	psychedelic, warm, sexual, romantic, male vocals, summer, female vocals, melodic, dense, spiritual	3.65	4187	125
4954	Blood Lust	Heavy Psych, Traditional Doom Metal	occult, psychedelic, raw, hypnotic, heavy, Halloween, ominous, nocturnal, atmospheric, male vocals	3.66	3227	44
4955	End Hits	Post-Hardcore	anxious, political, noisy, passionate, male vocals, energetic, atmospheric, raw, rhythmic, sarcastic	3.66	3295	41
4956	From Sleep	Post-Minimalism, Modern Classical	instrumental, minimalistic, meditative, nocturnal, repetitive, peaceful, atmospheric, lush, hypnotic, soft	3.68	728	8
4957	Veronika Decides to Die	Doom Metal, Death Doom Metal	depressive, male vocals, melodic, melancholic, suicide, passionate, longing, lonely, atmospheric, sombre	3.66	672	14
4958	Sunrise on the Sufferbus	Hard Rock, Blues Rock	male vocals	3.69	479	19
4959	올드보이 (Old Boy)	Film Score, Modern Classical	atmospheric, instrumental, melancholic, epic, suspenseful	3.68	477	3
4960	My Life	Country, Americana, Singer/Songwriter	female vocals	3.68	407	11
4961	Travel at Your Own Pace	Conscious Hip Hop, East Coast Hip Hop, Boom Bap	male vocals, urban, rhythmic, conscious, sampling	3.69	420	16
4962	Embryonic	Neo-Psychedelia, Experimental Rock	apocalyptic, ominous, psychedelic, atmospheric, hypnotic, energetic, existential, dense, noisy, chaotic	3.62	7115	171
4963	Gentle Giant	Progressive Rock	uncommon time signatures, melodic, energetic, progressive, playful, medieval, complex, eclectic, male vocals, epic	3.66	3982	76
4964	The End...	Avant-Folk	dark, ominous, sombre, funereal, poetic, death, medieval, depressive, female vocals, nocturnal	3.66	2483	34
4965	Dowsing Anemone With Copper Tongue	Experimental Rock, Avant-Garde Metal, Post-Metal	complex, ominous, eclectic, apocalyptic, cryptic, epic, surreal, atmospheric, dark, melancholic	3.64	2040	62
4966	Secondhand Daylight	Post-Punk, Art Punk	cold, ominous, energetic, atmospheric, male vocals, passionate, dark, sarcastic, alienation, urban	3.67	1812	45
4967	Pure	Industrial Metal	mechanical, heavy, misanthropic, noisy, dark, male vocals, dense, nihilistic, atmospheric, rhythmic	3.66	1836	24
4968	From Gardens Where We Feel Secure	Ambient, Neoclassical New Age	peaceful, soothing, soft, pastoral, happy, calm, spring, mellow, instrumental, natural	3.66	1666	47
4969	Soviet Kitsch	Singer/Songwriter, Anti-Folk, Chamber Pop	satirical, manic, quirky, female vocals, romantic, playful, bittersweet, melodic, optimistic, soft	3.64	3892	53
4970	Speak English or Die	Crossover Thrash	humorous, aggressive, satirical, sarcastic, rhythmic, male vocals, energetic, heavy, violence, vulgar	3.64	2654	67
4971	Vheissu	Post-Hardcore, Alternative Rock	passionate, atmospheric, spiritual, religious, male vocals, sombre, melancholic, melodic, poetic, progressive	3.65	2534	46
4972	Ancient Dreams	Traditional Doom Metal, Epic Doom Metal, Doom Metal	male vocals, fantasy, melodic, sombre, heavy, dark, epic, occult	3.66	1920	36
4973	Lights Camera Revolution	Crossover Thrash, Thrash Metal	energetic, rebellious, angry, male vocals, melodic, urban, humorous, manic	3.65	1677	36
4974	Like Gods of the Sun	Doom Metal, Gothic Metal	romantic, sombre, male vocals, heavy, dark, poetic, melancholic, fantasy, love, longing	3.66	1561	26
4976	A Deeper Kind of Slumber	Gothic Rock, Psychedelic Rock	melancholic, psychedelic, atmospheric, poetic, male vocals, sombre, ethereal, hypnotic, melodic, progressive	3.66	1380	30
4977	Into the Grave	Death Metal	aggressive, heavy, death, anti-religious, male vocals, hateful, energetic, dark, pessimistic	3.66	1338	21
4978	Song for America	Progressive Rock	melodic, progressive, male vocals	3.67	1282	39
4979	Sagas	Folk Metal, Viking Metal	melodic, epic, energetic, dense, folklore, male vocals, medieval, forest, triumphant, nature	3.62	1049	33
4980	Chameleon in the Shadow of the Night	Singer/Songwriter, Progressive Rock, Art Rock, Contemporary Folk	philosophical, poetic, progressive, passionate, male vocals	3.68	868	32
4982	Novella	Symphonic Prog, Progressive Rock	female vocals, progressive, melancholic, melodic, epic, bittersweet, lush, medieval, spring, dense	3.68	762	29
4983	Demons Dance Alone	Art Pop, Experimental Rock	male vocals, female vocals, introspective, melancholic, ominous, surreal, concept album, dark, death, sombre	3.67	651	15
4984	Racional vol. 2	Funk, Samba Soul	repetitive, spiritual, male vocals, religious, rhythmic	3.69	542	5
4985	The True Meaning	East Coast Hip Hop, Hardcore Hip Hop	introspective, rhythmic, sampling, urban, boastful, male vocals, conscious	3.7	388	9
4986	Visions of Dennis Brown	Roots Reggae	male vocals, rhythmic, soothing, calm, conscious, melodic, political, tropical	3.71	312	12
4987	ごはんができたよ (Gohan ga Dekita yo)	Progressive Pop, Art Pop	progressive, passionate, female vocals, happy, eclectic, uplifting, love, energetic, surreal, warm	3.7	345	5
4988	Transmissions From the Satellite Heart	Noise Pop, Alternative Rock	noisy, psychedelic, surreal, bittersweet, melodic, cryptic, male vocals, fantasy, happy, drugs	3.64	5501	84
4989	Abandon All Life	Grindcore, Powerviolence	aggressive, heavy, chaotic, angry, misanthropic, rebellious, violence, infernal, passionate, male vocals	3.64	3864	36
4990	Little Dominiques Nosebleed	West Coast Hip Hop, Conscious Hip Hop, Jazz Rap	introspective, concept album, male vocals, sampling, playful, humorous, sentimental, bittersweet, surreal, lo-fi	3.66	1965	12
4991	The Time of the Oath	Power Metal	energetic, melodic, male vocals, ..., heavy	3.65	1542	43
4992	I Am	Disco, Funk	happy, summer, party, energetic, uplifting, lush, male vocals, rhythmic, love, technical	3.68	1108	22
4993	現実を超えて (Genjitsu o koete)	Vaporwave	meditative, nocturnal, sampling, atmospheric, soothing, ethereal, mysterious, rain, lo-fi, futuristic	3.67	814	13
4994	Bring the Family	Singer/Songwriter, Roots Rock, Americana	love, lethargic, lonely, existential, melodic, pastoral, sombre, poetic, mellow, calm	3.68	727	37
4995	Passion	Crust Punk, Metalcore	male vocals, anarchism, aggressive, angry, heavy, political, sampling	3.65	616	6
4996	Gracious!	Progressive Rock, Symphonic Prog		3.69	565	32
4997	Knights of the Cross	Power Metal, Heavy Metal	history, male vocals, heavy, concept album, anthemic, triumphant, energetic, medieval, melodic, ...	3.67	562	11
4998	(Listen For) The Rag and Bone Man	Art Rock	atmospheric, poetic, dark, male vocals, ominous, suspenseful, mysterious, cryptic, sombre, pastoral	3.68	524	15
4999	Hymnen für elektronische und konkrete Klänge	Musique concrète, Modern Classical, Electronic	avant-garde, sampling, dense, complex, scary, dissonant, ominous, surreal, mysterious	3.65	536	11
5000	Adventures in Paradise	Smooth Soul, Pop Soul	lush, female vocals, romantic, uplifting, summer, love, bittersweet, passionate, sensual, warm	3.69	490	14
\.


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.artists (id, name) FROM stdin;
1	Radiohead
2	Pink Floyd
3	King Crimson
5	Kendrick Lamar
6	My Bloody Valentine
8	The Beatles
9	The Velvet Underground & Nico
10	David Bowie
12	Madvillain
13	Talking Heads
14	Mingus
16	John Coltrane
18	Black Sabbath
19	Miles Davis
20	The Beach Boys
21	Nas
22	Godspeed You Black Emperor!
23	Neutral Milk Hotel
25	Wu-Tang Clan
27	Kanye West
28	Nick Drake
29	Slint
30	The Cure
32	Joy Division
34	The Smiths
35	Bob Dylan
36	Pixies
37	Led Zeppelin
40	Fishmans
41	Television
42	Portishead
43	Kate Bush
46	The Doors
47	DJ Shadow
50	Yes
51	Slowdive
53	Björk
55	A Tribe Called Quest
56	The Microphones
57	The Jimi Hendrix Experience
59	Stevie Wonder
60	Danny Brown
61	Leonard Cohen
62	Death Grips
63	Sufjan Stevens
65	Swans
66	Elliott Smith
67	Talk Talk
69	Sonic Youth
70	Genius/GZA
71	Frank Ocean
72	The Velvet Underground
74	Marvin Gaye
76	Metallica
80	Can
82	Cocteau Twins
83	Neil Young
84	OutKast
86	Sigur Rós
87	The Stooges
89	Tom Waits
90	The Clash
91	Aphex Twin
93	Arcade Fire
96	Prince and The Revolution
100	J Dilla
102	Frank Zappa
104	The Zombies
105	Massive Attack
106	MF DOOM
107	Nirvana
110	Death
111	Angelo Badalamenti
113	Nine Inch Nails
114	Pharoah Sanders
115	Have a Nice Life
116	Modest Mouse
117	Charles Mingus
119	Sweet Trip
121	Neil Young with Crazy Horse
122	Mobb Deep
123	Milton Nascimento & Lô Borges
125	Eno
126	The Kinks
127	Ennio Morricone
129	Fleetwood Mac
130	The Avalanches
131	The Rolling Stones
133	Love
135	Megadeth
136	George Harrison
137	Curtis Mayfield
138	Iggy and The Stooges
140	Steve Reich and Musicians
141	山岡晃 [Akira Yamaoka]
143	Joni Mitchell
144	The Notorious B.I.G.
148	The Strokes
149	Alice Coltrane featuring Pharoah Sanders
150	Interpol
151	Depeche Mode
152	Joanna Newsom
156	Genesis
157	Boards of Canada
158	Jeff Buckley
160	Prince
161	Creedence Clearwater Revival
162	Daft Punk
163	Built to Spill
164	Smashing Pumpkins
165	Rage Against the Machine
166	Tyler, the Creator
167	Belle and Sebastian
168	Iron Maiden
170	Tool
171	Freddie Gibbs & Madlib
172	Judas Priest
173	Slayer
174	The Stone Roses
175	The Who
178	Pavement
179	Novos Baianos
182	Weezer
184	Art Blakey and The Jazz Messengers
185	Van Morrison
186	Jethro Tull
188	Queens of the Stone Age
189	Unwound
190	Burial
191	Dead Kennedys
192	Comus
193	Shiro Sagisu
194	Kraftwerk
196	Vince Guaraldi
198	Fela Ransome Kuti & Africa 70
201	Charlie Mingus
202	Berliner Philharmoniker / Herbert von Karajan
208	Electric Wizard
213	C418
214	Alice in Chains
215	Little Simz
217	Magdalena Bay
218	Converge
220	Townes Van Zandt
221	Wilco
222	Daughters
225	Michael Jackson
226	Gang of Four
227	Opeth
231	Jorge Ben
232	Fela Anikulapo Kuti and Afrika 70
233	Bruce Springsteen
236	Funkadelic
237	Wire
240	Yasunori Mitsuda
241	Herbie Hancock
245	Yoko Kanno / Seatbelts
246	Kyuss
247	Mos Def
248	Nick Cave and The Bad Seeds
249	This Heat
251	Chico Buarque
254	Ornette Coleman
255	Eric Dolphy
256	David Wise
257	Simon and Garfunkel
259	Lou Reed
260	Boris
261	Magnolia Electric Co.
262	近藤浩治 [Koji Kondo]
263	Otis Redding
265	Beastie Boys
266	増田順一 [Junichi Masuda], 一之瀬剛 [Go Ichinose] & 佐藤仁美 [Hitomi Sato]
269	Staatsorchester Stuttgart / Lithuanian Chamber Orchestra / The 12 Cellists of the Berlin Philharmonic Orchestra / Dennis Russell Davies / Saulius Sondeckis / Gidon Kremer / Keith Jarrett / Tatjana Grindenko / Alfred Schnittke
272	LCD Soundsystem
274	Deep Purple
276	Gang Starr
277	Wiener Philharmoniker / Carlos Kleiber
279	Rush
280	Steely Dan
285	田中宏和 [Hirokazu Tanaka] & 鈴木慶一 [Keiichi Suzuki]
286	岡部啓一 [Keiichi Okabe] & 帆足圭吾 [Keigo Hoashi]
288	Seatbelts
291	目黒将司 [Shoji Meguro]
292	Artur Rubinstein
293	Kids See Ghosts
294	Burzum
295	Public Enemy
297	The John Coltrane Quartet
298	New York Philharmonic / Leonard Bernstein
299	Camel
301	D'Angelo
302	Nina Simone
303	Howard Shore
304	At the Drive-In
306	植松伸夫 [Nobuo Uematsu]
308	Stan Getz & João Gilberto featuring Antônio Carlos Jobim
309	Viktor Vaughn
311	Duster
312	Coil
315	John Williams / London Symphony Orchestra
316	Car Seat Headrest
318	Mario Galaxy Orchestra
320	三宅優 [Yuu Miyake]
321	The Flaming Lips
322	Organized Konfusion
323	John Williams
324	Invisible
325	John Lennon / Plastic Ono Band
326	R.E.M.
327	Patti Smith
328	Ween
329	Sun Ra
330	Deftones
331	Weyes Blood
334	Paul & Linda McCartney
335	椎名林檎 [Sheena Ringo]
336	Raekwon
337	The Dave Brubeck Quartet
340	Minutemen
342	Glenn Branca
343	Rainbow
346	Stereolab
347	Injury Reserve
349	Brian Eno
350	The Smashing Pumpkins
351	Cryptopsy
352	Yo La Tengo
353	Pulp
355	Gorguts
356	Sonny Rollins
357	Mount Eerie
359	The Roots
360	Sly & The Family Stone
363	久石譲 [Joe Hisaishi]
364	Dinosaur
365	The Replacements
368	Bob Marley & The Wailers
369	Robert Wyatt
370	Fiona Apple
372	Isaac Hayes
376	Wipers
379	T. Rex
380	Geinoh Yamashirogumi
381	Dissection
383	D'Angelo and The Vanguard
385	Sun Kil Moon
386	Captain Beefheart and His Magic Band
388	Cannonball Adderley
389	Hüsker Dü
390	Emperor
391	Van der Graaf Generator
392	Agalloch
393	Neurosis
394	Komeda Quintet
395	The Horace Silver Quintet
396	NoMeansNo
398	Scott Engel
400	Collegium Vocale Gent / Philippe Herreweghe / Ian Bostridge / Franz-Josef Selig / Sibylla Rubens / Andreas Scholl / Werner Güra / Dietrich Henschel
401	The Chameleons
403	Pescado Rabioso
404	The Mahavishnu Orchestra With John McLaughlin
406	Fela & The Africa 70
407	Robbie Basho
408	Glenn Gould
409	Art Blakey & The Jazz Messengers
410	Mastodon
413	青葉市子 [Ichiko Aoba]
414	Mercyful Fate
415	David Wise / Eveline Fischer
416	The Dismemberment Plan
417	岡部啓一 [Keiichi Okabe], 石濱翔 [Kakeru Ishihama], 帆足圭吾 [Keigo Hoashi] & 隆文西村 [Takafumi Nishimura]
418	System of a Down
419	Immolation
420	Isis
421	Soft Machine
422	Earl Sweatshirt
423	Columbia Symphony Orchestra / Igor Stravinsky
424	Deltron 3030
425	Parliament
426	Big L
428	大谷幸 [Ko Otani]
430	Crosby, Stills, Nash & Young
431	Darkthrone
432	Gil Scott-Heron
434	Lauryn Hill
435	Red House Painters
437	Santana
438	Black Star
439	Gene Clark
441	Sade
442	Ulver
443	Morbid Angel
445	Aretha Franklin
446	Racionais MC's
447	John Eliot Gardiner
449	Jay-Z
450	Natural Snow Buildings
453	Three-6 Mafia
454	Janet
456	Soundgarden
457	Toby "Radiation" Fox
459	Mr. Bungle
461	John Fahey
462	Berlin Philharmonic Orchestra / Herbert von Karajan / Vienna Singverein / Anna Tomowa-Sintow / Agnes Baltsa / Peter Schreier / José Van Dam
463	Gorillaz
465	Bolt Thrower
469	Fugazi
472	Lil Ugly Mane
473	Basil Poledouris
475	Faith No More
477	Caravan
479	Takács Quartet
482	Dismember
483	Academy of St Martin-in-the-Fields / Neville Marriner
484	PJ Harvey
486	UGK
487	Wiener Philharmoniker / Konzertvereinigung Wiener Staatsopernchor / Karl Böhm / Edith Mathis / Júlia Hamari / Wiesław Ochman / Karl Ridderbusch
489	Philip Glass
493	Duke Ellington
495	Boredoms
497	Concentus Musicus Wien / Wiener Sängerknaben / Arnold Schoenberg Chor / Nikolaus Harnoncourt / Christoph Prégardien / Matthias Goerne / Christine Schäfer / Dorothea Röschmann / Bernarda Fink / Elisabeth von Magnus / Michael Schade / Markus Schäfer / Dietrich Henschel / Oliver Widmer
499	Broken Social Scene
502	Motörhead
503	The Pharcyde
504	Queen
505	The Modern Lovers
506	Caetano Veloso
507	Wiener Philharmoniker / Herbert von Karajan
509	Faust
510	Dead Can Dance
511	NEU!
512	Ramones
514	Weakling
517	The Band
518	Peter Gabriel
519	Clipse
520	Frank Zappa and The Mothers of Invention
523	Jackson C. Frank
525	Elvis Costello
527	Chicago Symphony Orchestra / Georg Solti
528	Thelonious Monk Septet
533	Nujabes
534	The Brave Little Abacus
535	Flying Lotus
537	Drive Like Jehu
539	Sagopa Kajmer
545	Gojira
546	Bob Marley and The Wailers
547	The Congos
548	Dio
550	Exuma
551	Sun Ra and His Arkestra
554	Atheist
556	Astor Piazzolla and The New Tango Quintet
557	New Order
558	片岡真央 [Manaka Kataoka] / 岩田恭明 [Yasuaki Iwata] / 若井淑 [Hajime Wakai]
559	BBC Symphony Orchestra / Colin Davis / John Alldis Choir / Helen Donath / Yvonne Minton / Ryland Davies / Gerd Nienstedt
561	Autopsy
563	Baden Powell & Vinicius de Moraes
565	FLUX Quartet
566	Tatiana Nikolayeva
567	Low
568	XTC
569	Ghostface Killah
570	Immortal
571	Mach-Hommy
572	Spiritualized®
574	Siouxsie and The Banshees
575	Sepultura
578	Nico
581	Animal Collective
582	The Mars Volta
586	Various Artists
589	Nick Cave & The Bad Seeds
590	Common
591	Stars of the Lid
592	Edge of Sanity
593	Fẹla and Afrika 70
594	Wayne Shorter
595	Refused
596	Digable Planets
597	Angelo Badalamenti & David Lynch
598	Wiener Philharmoniker / Wiener Singverein / Herbert von Karajan / Anna Tomowa-Sintow / Helga Müller-Molinari / Vinson Cole / Paata Burchuladze
600	London Sinfonietta / David Zinman / Dawn Upshaw
601	平沢進 [Susumu Hirasawa]
603	Pearl Jam
605	Tears for Fears
606	Cannibal Ox
608	Bathory
609	Don Cherry
611	The Cannonball Adderley Quintet
612	Johnny Cash
614	Farazi v Kayra
616	Violent Femmes
617	The Ornette Coleman Double Quartet
618	The Thelonious Monk Quartet
620	Thin Lizzy
621	Evgeni Koroliov
623	Iggy Pop
624	Snoop Doggy Dogg
625	Gustavo Cerati
626	Sonny Sharrock
629	Lee Morgan
633	Pierre Fournier
634	Ryan Amon
637	山根ミチル [Michiru Yamane]
638	Fleet Foxes
640	Roxy Music
642	Pete Rock & C.L. Smooth
643	光田康典 [Yasunori Mitsuda]
645	Royal Concertgebouw Orchestra / Asko Ensemble / Riccardo Chailly
648	Guided by Voices
652	Gravediggaz
653	Valve Studio Orchestra
655	下村陽子 [Yoko Shimomura]
657	American Football
658	Big Black
659	Paul McCartney & Wings
661	Brand New
662	The Magnetic Fields
663	Candlemass
664	Bernard Herrmann
665	*Namco Consumer Software Sound Team
668	Demilich
672	Polish National Radio Symphony Orchestra / Antoni Wit / Zofia Kilanowicz
673	Grand Valley State University New Music Ensemble
675	Tim Hecker
679	Clint Mansell
680	目黒将司 [Shoji Meguro] / 田崎寿子 [Toshiko Tasaki] / 土屋憲一 [Kenichi Tsuchiya]
682	Silvio Rodríguez
683	Columbia Symphony Orchestra / New York Philharmonic / Leonard Bernstein
684	Tom Zé
685	João Gilberto
688	Erykah Badu
690	LaSalle Quartett
691	Russian State Symphonic Cappella / Valery Polyansky
696	Blind Guardian
697	Nino Rota
698	長沼英樹 [Hideki Naganuma]
699	Walter Carlos
700	Widdly 2 Diddly
701	下村陽子 [Yoko Shimomura] / Manami Kiyota / ACE+
702	King Gizzard and the Lizard Wizard
704	Jeff Rosenstock
705	Duke Ellington / Charlie Mingus / Max Roach
706	McCoy Tyner
707	Steve Reich
708	Misfits
713	Claudio Arrau
716	Grant Green
718	British Sea Power
719	The National
720	Bad Brains
721	Julee Cruise
722	Entombed
723	Sleater-Kinney
724	Reinbert de Leeuw
729	Anthony Braxton
731	Grouper
732	Arditti String Quartet / Dawn Upshaw
737	Helloween
738	Max Roach
739	Pascal Rogé
740	Cartola
741	Mayhem
744	Prefab Sprout
746	Chico Science & Nação Zumbi
747	牛尾憲輔 [Kensuke Ushio]
748	Krystian Zimerman
750	Diamond Head
751	Run the Jewels
754	Serge Gainsbourg
755	Oliver Nelson
756	the pillows
757	Al Green
758	Berlin Philharmonic Orchestra / Herbert von Karajan
760	공중도둑 [Mid-Air Thief]
761	Amon Düül II
765	Buena Vista Social Club
766	Andrew Lloyd Webber & Tim Rice
767	Kirov Orchestra / Valery Gergiev
768	Cleveland Orchestra / Pierre Boulez
770	Deathspell Omega
771	Thelonious Monk
772	Suffocation
773	Maurizio Pollini
774	Sinfonieorchester des Hessischen Rundfunks / Chor des Bayerischen Rundfunks / Sinfonieorchester des Südwestfunks / Michael Gielen / Wolfgang Schubert / Ernest Bour / Liliana Poli / Barbra Ericson / Antoinette Vischer
776	Wishbone Ash
777	King Diamond
779	Renaissance
780	The Mothers of Invention
781	尾形雅史 [Masafumi Ogata] / 幡谷尚史 [Naofumi Hataya]
783	Artillery
784	Jacques Brel
785	渋さ知らズ [Shibusashirazu]
788	Mike Oldfield
790	The Fall
791	Dr. Dre
793	Pestilence
796	Christopher Larkin
799	Carcass
802	仲野順也 [Junya Nakano] / 浜渦正志 [Masashi Hamauzu] / 植松伸夫 [Nobuo Uematsu]
803	Paul Simon
805	Moonsorrow
806	Wiener Philharmoniker / Karl Böhm
807	Pere Ubu
808	PiL
809	Danny Elfman
810	La Petite Bande / Sigiswald Kuijken
812	Elton John
813	Академический симфонический оркестр Московской государственной филармонии / Кирилл Кондрашин [Kirill Kondrashin]
816	Travis Scott
817	Goodie Mob
818	FKA twigs
820	The Mothers
821	Sixteen Horsepower
822	이달의 소녀 오드아이써클 [LOONA ODD EYE CIRCLE]
823	鷺巣詩郎 [Shiro Sagisu]
827	Simon & Garfunkel
828	Queensrÿche
829	Paysage d'Hiver
830	Dusty Springfield
831	Dadawah
832	Nujabes / Fat Jon
835	Beach House
836	Porcupine Tree
837	The Sound
838	Fairport Convention
839	The Allman Brothers Band
840	Alice Coltrane
841	Clifford Brown and Max Roach
844	W.A.S.P.
845	Wilhelm Furtwängler / Ludwig Suthaus / Kirsten Flagstad
846	black midi
849	Emerson String Quartet
851	The Jazz Composer's Orchestra
852	The Blasting Company
853	Pierre Hantaï
854	Jeremy Soule
856	Quatuor Arditti / Aldo Brizzi / Michiko Hirayama / Maurizio Ben Omar / Frank Lloyd
858	Brian Eno with Daniel Lanois & Roger Eno
861	Songs: Ohia
863	Le Mystère des voix bulgares
865	Akira Yamaoka
866	Academy of St Martin in the Fields / Neville Marriner / Alan Loveday
867	Panda Bear
868	Carly Rae Jepsen
869	Sleep
870	The Mountain Goats
871	John Martyn
872	Berliner Philharmoniker / Claudio Abbado / Martha Argerich
874	Pusha T
875	Supertramp
876	Fela Ransome Kuti & The Afrika 70
877	Dexter Gordon
878	Strapping Young Lad
882	Kevin Penkin
883	Miles Davis Quintet
887	Pierre Boulez
890	Andrew Prahlow
892	Steve Roach
894	Mutantes
900	Big Star
901	John Coltrane Quartet
902	The California EAR Unit
903	Ennio Morricone e la sua orchestra
906	Gal Costa
907	Bruno Pernadas
912	Ocean Machine
914	Popol Vuh
915	Carissa's Wierd
916	Scott Walker
919	Pete La Roca
920	奥河英樹 [Hideki Okugawa]
921	New Stockholm Chamber Orchestra / Lev Markiz
922	Avey Tare and Panda Bear
924	Jessie Ware
925	The Pretty Things
928	Nicholas Britell
929	Godspeed You! Black Emperor
930	clipping.
934	De La Soul
935	Candy Claws
936	Incantation
939	Bon Iver
942	Janelle Monáe
943	Blue Öyster Cult
945	Andrew Hill
946	Café Tacvba
947	Os Mutantes
948	Henry Rollins
950	Andrew Lloyd Webber and Tim Rice
951	Brockhampton
955	The Sonny Criss Orchestra
961	New Philharmonia Orchestra / Philharmonia Orchestra / Otto Klemperer / Christa Ludwig / Fritz Wunderlich
963	Belchior
964	Fabrizio De André
968	Steven Osborne
971	Max Roach and His Chorus and Orchestra
973	Acid Bath
975	CunninLynguists
976	Coroner
977	Scarface
978	Demolition Hammer
981	Suede
983	maudlin of the Well
984	Richard & Linda Thompson
986	Klaus Schulze
988	永田権太 [Kenta Nagata], 若井淑 [Hajime Wakai], 峰岸透 [Toru Minegishi] & 近藤浩治 [Koji Kondo]
989	Suicide
991	Blondie
993	Roland Kirk
994	Ella Fitzgerald
995	Milton Nascimento
996	The Tale Quartet
998	The Feelies
999	Tim Buckley
1000	David Kauffman & Eric Caboor
1001	Manic Street Preachers
1007	Jefferson Airplane
1008	GAS
1010	Manuel Göttsching
1011	Djeli Moussa Diawara
1012	Bruce Dickinson
1014	Roy Harper
1015	Denzel Curry
1018	Bark Psychosis
1019	The Residents
1021	The Byrds
1022	T2
1023	Tashi
1026	Crosby, Stills & Nash
1028	Celtic Frost
1029	Vektor
1031	Fela Ransome-Kuti & The Africa 70
1033	Little Brother
1038	Mort Garson
1041	Silver Jews
1042	Lynyrd Skynyrd
1045	Type O Negative
1046	Triana
1047	Kool G. Rap & D.J. Polo
1050	Morbid Saint
1051	Riot
1052	Grachan Moncur III
1053	The Roland Kirk Quartet
1055	Devo
1056	Sparks
1057	The Pogues
1058	Ice Cube
1059	Dark Angel
1060	Art Ensemble of Chicago
1061	Terry Callier
1062	Jerry Goldsmith
1063	Carole King
1064	Cat Stevens
1066	The Charlie Mingus Jazz Workshop
1067	Sufjan Stevens & Angelo De Augustine
1068	X-Ray Spex
1070	The Moody Blues With The London Festival Orchestra
1071	John Cale
1072	Lingua Ignota
1074	Captain Beefheart and The Magic Band
1076	Luben Yordanoff / Albert Tétard / Claude Desurmont / Daniel Barenboim
1078	Running Wild
1080	ミドリ [Midori]
1082	Kreator
1089	Orchid
1091	Rodriguez
1092	Harmonium
1093	diSEMBOWELMENT
1094	Primordial
1095	川井憲次 [Kenji Kawai]
1098	Berliner Philharmoniker / Wiener Singverein / Herbert von Karajan / Wilma Lipp / Hilde Rössl-Majdan / Anton Dermota / Walter Berry
1099	Autechre
1101	Arthur Verocai
1102	高木正勝 [Masakatsu Takagi]
1105	Pig Destroyer
1107	Joe Henderson
1108	菅野由弘 [Yoshihiro Kanno]
1109	Yusef Lateef
1110	Manilla Road
1111	Alexis Weissenberg
1113	Ground-Zero
1115	Astor Piazzolla y su Quinteto
1117	RCA Victor Symphony Orchestra / Kirill Kondrashin / Van Cliburn
1118	O.C.
1119	JPEGMAFIA
1120	Jackie McLean
1121	Nick Cave and Warren Ellis
1126	Dizzy Gillespie, Sonny Stitt & Sonny Rollins
1127	Orchestre et Chœur de la Radio-Télévision Polonaise de Cracovie / Jürg Wyttenbach / Carmen Fournier / Tristan Murail
1129	The White Stripes
1130	Oneohtrix Point Never
1133	Necrophobic
1136	Todd Rundgren
1137	Pierre-Laurent Aimard
1138	Billy Joel
1141	The Jesus and Mary Chain
1142	Nokturnal Mortum
1143	Godflesh
1146	Sonny Clark
1147	Rory Gallagher
1148	Ewa Demarczyk
1149	Charly García
1153	Aldo Ciccolini / Gabriel Tacchino
1154	King Geedorah
1155	The United States of America
1156	Albert Ayler Trio
1158	Xiu Xiu
1161	Lucio Battisti
1162	James Carr
1168	Satan
1169	Arditti String Quartet / Claude Helffer
1173	Roland Kayn
1177	Botch
1178	The Waterboys
1181	Little Richard
1183	Gamma Ray
1185	Mahavishnu Orchestra
1187	John Prine
1192	Cap'n Jazz
1195	Cult of Luna
1196	Uriah Heep
1200	Martha Argerich
1201	Dietmar Wiesner / Markus Hinterhäuser / Robyn Schulkowsky
1204	Savatage
1206	Floating Points, Pharoah Sanders & The London Symphony Orchestra
1208	The John Coltrane Quartette
1209	Münchener Kammerorchester / Christoph Poppen / Frances-Marie Uitti
1210	David Holland Quartet
1215	Mark Morgan
1216	Mgła
1219	The Peter Brötzmann Octet
1220	Voivod
1223	Chicago Symphony / Fritz Reiner
1226	Goblin
1227	Hank Mobley
1231	Derek and The Dominos
1233	Robin Trower
1234	Junior Wells' Chicago Blues Band
1236	UC Berkeley Chamber Chorus / The California EAR Unit / Philip Brett / David Abel / Karen Rosenak / William Winant / Dorothy Stone / Arthur Jarvinen / Gaylord Mowrey
1240	Gospel
1242	Quasimoto
1243	Meat Puppets
1245	Tindersticks
1246	Budgie
1247	Ry Cooder
1248	La Máquina de Hacer Pájaros
1250	Julia Holter
1252	Etta James
1253	Cátia de França
1254	Mark Hollis
1256	Richard Jacques
1259	Big K.R.I.T.
1260	Katatonia
1261	Tiamat
1262	Blu & Exile
1268	Kronos Quartet / Pat Metheny
1269	Ryuichi Sakamoto
1275	Against All Logic
1276	Bonnie 'Prince' Billy
1277	Gentle Giant
1279	Tori Amos
1280	Standing on the Corner
1282	Marcos Valle
1287	Alexander Brandon / Michiel van den Bos
1288	Amy Winehouse
1290	Biosphere
1291	The Millennium
1292	放課後ティータイム [Hokago Tea Time]
1294	Bill Withers
1295	Secos & Molhados
1297	Chicago Symphony Orchestra / Fritz Reiner
1299	Anna von Hausswolff
1301	Magazine
1302	Siekiera
1303	Eric B. & Rakim
1304	Captain Beyond
1305	Pain of Salvation
1306	James Brown
1309	Museo Rosenbach
1310	Arthur Russell
1311	Tim Maia
1312	Joe Henderson & Alice Coltrane
1313	Serú Girán
1316	Bauhaus
1318	Jeru the Damaja
1319	Orchestre symphonique de la Radio de Berlin / George Szell / Elisabeth Schwarzkopf
1323	Brian Wilson
1325	Premiata Forneria Marconi
1326	Marillion
1327	Rosetta
1328	Rowland S. Howard
1329	Baby Huey
1330	Freddie Hubbard
1332	Víctor Jara
1334	U2
1337	Steve Hiett
1338	Berliner Philharmoniker / Jonathan Nott
1340	Wojciech Kilar
1343	Testament
1345	Sodom
1346	My Dying Bride
1348	Alban Berg Quartett / Heinrich Schiff
1349	Erasmo Carlos
1350	Martin O'Donnell & Michael Salvatori
1352	The Miles Davis Quintet
1353	Redman
1354	Deerhunter
1359	Warren Zevon
1360	Crimson Glory
1362	Roky Erickson and The Aliens
1363	SOPHIE
1365	Cream
1370	Metal Church
1372	Tomasz Stanko Quintet
1373	King Gizzard & the Lizard Wizard
1374	Marek Grechuta / Anawa
1376	Estonian Philharmonic Chamber Choir / Tallinn Chamber Orchestra / Tõnu Kaljuste
1377	Moondog
1382	Wes Montgomery
1383	Banco del Mutuo Soccorso
1384	Magma
1385	The Wailers
1386	Pete Rock & InI
1389	Devin Townsend
1390	Edu Lôbo
1392	タニウチ ヒデキ [Hideki Taniuchi] / 平野義久 [Yoshihisa Hirano]
1394	Koopsta Knicca
1395	Lula Côrtes e Zé Ramalho
1398	Electric Light Orchestra
1403	The Arrogant Sons of Bitches
1404	The Philip Glass Ensemble
1405	Gil e Jorge
1406	Captain Beefheart & His Magic Band
1409	Dälek
1411	Exodus
1412	Alice Cooper
1418	Duke Ellington and His Orchestra
1423	АукцЫон [Auktyon]
1427	Rahsaan Roland Kirk
1428	増田順一 [Junichi Masuda], 一之瀬剛 [Go Ichinose] & 青木森一 [Morikazu Aoki]
1429	La Capella Reial / Jordi Savall / Montserrat Figueras / Guy de Mey / Maria Cristina Kiehr
1431	Heartbreakers
1432	Smif-n-Wessun
1434	Ella Fitzgerald & Louis Armstrong
1435	Arturo Benedetti Michelangeli
1436	Tame Impala
1438	Common Sense
1439	The Gathering
1440	山下達郎 [Tatsuro Yamashita]
1441	Violeta Parra
1442	Beck
1443	A Silver Mt. Zion
1445	John Zorn
1449	Reflection Eternal
1451	Nara Leão
1452	Frank Sinatra
1454	Booker Ervin
1462	Khan
1464	Gilberto Gil
1465	Astor Piazzolla
1466	Current 93
1467	Bohren & der Club of Gore
1468	Discordance Axis
1474	Fela and The Africa 70
1476	Billie Holiday
1477	Willie Colón
1478	Nino Rota / Carmine Coppola
1479	Kero Kero Bonito
1481	Souls of Mischief
1482	Ulcerate
1485	Randy Newman
1486	Son House
1487	Егор и Опизденевшие [Yegor i Opizdenevshie]
1491	Extremoduro
1492	Fugees
1495	ELO
1497	AIR
1499	Giles Corey
1502	Bill Evans
1503	Muddy Waters
1504	UGK (Underground Kingz)
1505	Munly & The Lee Lewis Harlots
1506	Kool G Rap
1507	Van Halen
1510	The Go-Betweens
1513	Monty Python
1516	The Damned
1519	Stevie Ray Vaughan and Double Trouble
1520	John Lee Hooker
1522	The The
1523	Marty Robbins
1524	Daniel Lopatin
1525	Big Brother & The Holding Company
1529	Gris
1531	Peter Hammill
1532	Kingston Wall
1533	Brutality
1534	Eskaton
1535	Arditti String Quartet
1536	Zbigniew Preisner
1543	Philharmonia Orchestra / Philharmonia Chorus / Otto Klemperer / Elisabeth Schwarzkopf / Dietrich Fischer-Dieskau
1554	Overkill
1556	Demigod
1557	Lena Raine
1559	Jeff Wayne
1562	田中宏和 / 濱野美奈子と山本健誌
1563	The Knife
1564	Jon Hopkins
1565	Kayo Dot
1566	Terrorizer
1568	Da Koopsta Knicca
1570	Tortoise
1571	Morphine
1573	Gil Scott-Heron & Brian Jackson
1576	David Sylvian
1577	Big Pun
1578	Franco Battiato
1579	Aaliyah
1580	Änglagård
1582	Toots & The Maytals
1583	Los Jaivas
1584	Lost Horizon
1585	Virgin Steele
1586	Clifford Brown & Max Roach
1587	Jean Michel Jarre
1588	Primus
1590	Scorpions
1593	Mickey Newbury
1595	Nick Cave
1596	Zé Ramalho
1597	Razor
1599	Matt Uelmen
1602	Ritchie Blackmore's Rainbow
1605	Danzig
1606	UFO
1607	Slum Village
1609	Purple Mountains
1611	Possessed
1612	DJ Sprinkles
1616	Ol' Dirty Bastard
1620	Maurice Jarre
1621	The Ronettes
1623	Fela Ransome-Kuti & The Africa '70
1624	Nature and Organisation
1625	The Lord Weird Slough Feg
1628	Paulinho da Viola
1631	The Jesus Lizard
1632	The Blue Nile
1633	The Gladiators
1635	Duke Ellington & John Coltrane
1637	Elvis Costello & The Attractions
1640	Kamelot
1642	Chris Squire
1643	Myslovitz
1644	Groupe de Recherches Musicales de la RTF
1645	Quella Vecchia Locanda
1647	Ella Fitzgerald with Duke Ellington and His Orchestra
1648	Hans Zimmer
1652	The Horace Silver Quintet Plus J. J. Johnson
1654	Nacho Vegas
1655	Patricio Rey y sus Redonditos de Ricota
1656	Sabotage
1661	Prince Paul
1662	椎名林檎 × 斎藤ネコ
1664	Millie Jackson
1665	Blur
1668	Tangerine Dream
1670	Jay Reatard
1671	Paradise Lost
1673	Spirit
1674	Radio Birdman
1676	The Blues Brothers
1679	Oasis
1683	Jim O'Rourke
1687	Eliane Radigue
1688	Gillian Welch
1689	Madrugada
1691	Deafheaven
1692	Black Country, New Road
1694	Cardiacs
1695	Ozzy Osbourne
1696	Mitski
1697	CCCP Fedeli alla Linea
1698	Nevermore
1699	T.P. Orchestre Poly-Rythmo de Cotonou - Bénin
1700	Fabio Frizzi
1702	The Cars
1703	Sparklehorse
1704	Patti Smith Group
1705	Shuggie Otis
1706	Picchio dal Pozzo
1707	Eightball & MJG
1709	Paco de Lucía
1711	Ultramagnetic MC's
1712	Main Source
1713	Emmylou Harris
1714	Max Romeo & The Upsetters
1715	The Bill Dixon Orchestra
1717	Yellow Magic Orchestra
1718	Vashti Bunyan
1719	Kenny Burrell
1723	Bill Evans Trio
1724	Black Moon
1728	Chet Baker
1729	Drudkh
1730	Steve Hackett
1731	Paddy McAloon
1732	Esoteric
1733	Green Carnation
1734	The Butterfield Blues Band
1735	The Gil Evans Orchestra
1737	Orchestre National de l'O.R.T.F / Ensemble instrumental de musique contemporaine de Paris / Maurice Le Roux / Konstantin Simonovich / Yuji Takahashi
1738	Pastor T.L. Barrett and the Youth for Christ Choir
1739	The Saints
1740	Tommy Wright III
1741	Camarón
1743	Bar Kokhba
1744	Juggaknots
1746	Gustavo Santaolalla
1747	Toquinho e Vinícius
1748	Estonian Philharmonic Chamber Choir / Paul Hillier
1749	Philip Glass / Robert Wilson
1751	Dream Theater
1752	The Gun Club
1755	Wolves in the Throne Room
1756	Anathema
1757	Lift to Experience
1761	The Newfound Interest in Connecticut
1763	Bobby Hutcherson
1764	Sam Rivers
1766	Magic Sam Blues Band
1767	Charli XCX
1768	Parquet Courts
1769	Sunny Day Real Estate
1772	Willie Nelson
1773	Black Uhuru
1774	Gil Evans
1776	Jon Brion
1777	Orchestre de la Bastille / Myung-whun Chung / Yvonne Loriod / Jeanne Loriod
1778	Cynic
1780	Linda Perhacs
1781	Tom Petty
1782	Stiff Little Fingers
1785	Breakout
1787	Juicy (Juice Manne) Jay
1790	フィッシュマンズ
1792	Lucinda Williams
1794	Culture
1795	The Nitty Gritty Dirt Band
1798	The Chasm
1799	Steve Reich & Musicians
1800	Venetian Snares
1802	Gong
1803	Repulsion
1804	Elis Regina & Antônio Carlos Jobim
1807	石川忠 [Chu Ishikawa]
1808	Klangforum Wien / Sylvain Cambreling
1811	Bobby Bland
1812	Chico Hamilton introducing Larry Coryell
1813	Orchestre et Chœur de la Radio-Télévision Polonaise de Cracovie / Jürg Wyttenbach
1814	of Montreal
1815	Pretty Things
1816	Lenny Valentino
1817	Lucifer's Friend
1818	Keith Jarrett
1819	Robert Rich
1820	Stray
1821	Jim Hall
1822	Lorde
1823	Einstürzende Neubauten
1828	Los Tres
1829	Carla Bley & Paul Haines
1830	Morente & Lagartija Nick
1831	Mississippi John Hurt
1832	Zakir Hussain & Shivkumar Sharma
1837	Lamp
1838	吉村弘 [Hiroshi Yoshimura]
1839	Dragged Into Sunlight
1841	Elza
1842	植松伸夫 [Nobuo Uematsu] / 浜渦正志 [Masashi Hamauzu] / 鈴木光人 [Mitsuto Suzuki]
1844	Yayayi
1848	Idles
1849	Alban Berg Quartett
1851	My Chemical Romance
1855	The Jam
1858	The Ahmad Jamal Trio
1859	Molested
1861	Fotheringay
1865	Janis Joplin
1867	Killing Joke
1868	The Caretaker
1869	Nile
1870	Windir
1877	Reverend Bizarre
1878	Philip Cohran and the Artistic Heritage Ensemble
1879	Jaki Byard
1880	Beverly Glenn-Copeland
1881	The B-52's
1884	Keller Quartett
1885	Peter McConnell
1887	Albert King
1888	Asphyx
1890	Cecil Taylor
1891	National Health
1894	Trevor Jones / Randy Edelman
1896	MGMT
1899	Dr. John, The Night Tripper
1901	Lana Del Rey
1902	Echo & The Bunnymen
1903	Neil Young + Crazy Horse
1905	Galaxie 500
1913	Pet Shop Boys
1915	Chicago Transit Authority
1916	Gram Parsons
1917	Area
1919	Judee Sill
1924	Clifford Jordan Quartet
1928	Current Ninety Three
1929	Dead Congregation
1932	The Zbigniew Namysłowski Quintet
1933	Black Alien
1934	Joshua Gordon / Randall Hodgkinson
1935	Cat Power
1936	The Sisters of Mercy
1940	Heltah Skeltah
1941	Jim Croce
1943	Jimmy Smith
1944	Tina Brooks
1945	Stan Getz, Dizzy Gillespie & Sonny Stitt
1946	Buddy Guy
1947	The Postal Service
1949	Global Communication
1951	The Upsetters
1953	Enslaved
1954	Riverside
1956	神聖かまってちゃん [Shinsei Kamattechan]
1957	Camp Lo
1959	Vladimir Spivakov / Sergej Bezrodny / Dietmar Schwalke / Alexander Malter
1961	Joan Manuel Serrat
1962	Mogwai
1965	Mississippi Fred McDowell
1966	Grant Kirkhope
1968	Pentagram
1969	Antônio Carlos Jobim
1971	J.J. Cale
1973	Masta Ace
1974	ConcernedApe
1975	Mstislav Rostropovich
1976	Present
1978	X
1980	Hound Dog Taylor & The Houserockers
1982	Phoenix
1984	Company Flow
1988	At the Gates
1993	The Jayhawks
1994	Disillusion
1995	Jimmie Dale & The Flatlanders
1996	Prodigy
2002	The Flying Burrito Bros
2004	Eberhard Weber Colours
2006	Al Di Meola
2007	Pharoahe Monch
2008	Eberhard Weber
2009	Sarah Vaughan
2011	Lô Borges
2012	Number Girl
2014	Polish National Radio Symphony Orchestra (Katowice) / Antoni Wit
2016	瀬上純 [Jun Senoue] / 熊谷文恵 [Fumie Kumatani] / 床井健一 [Kenichi Tokoi]
2018	Robin Guthrie & Harold Budd
2022	Tricky
2025	Siouxsie & the Banshees
2027	Кино [Kino]
2029	Obituary
2031	Lykathea Aflame
2032	Bomb the Music Industry!
2036	Madlib
2038	Christopher Komeda
2040	瀬上純 [Jun Senoue]
2041	Nelson Cavaquinho
2043	Michael Nyman
2045	Alias Conrad Coldwood
2049	Ride
2052	2Pac
2054	In Flames
2056	Ramleh
2057	Warning
2060	Alain Goraguer
2061	EPMD
2062	Hawkwind
2063	Soda Stereo
2064	Getatchew Mekuria & The Ex & Guests
2065	The Pyramids
2067	古代祐三 [Yuzo Koshiro]
2068	Asko Ensemble / WDR Sinfonieorchester Köln / Stefan Asbury / Garth Knox
2069	Fenton Robinson
2072	Flower Travellin' Band
2073	The Soft Machine
2074	Grateful Dead
2078	Sacramentum
2079	Jan Johansson
2080	Kult
2081	Larry Young
2083	IAM
2084	Niños del Cerro
2086	Wowaka
2087	Fela Anikulapo Kuti & His Africa '70
2088	Junior Kimbrough
2089	北村友香 [Yuka Kitamura]
2091	Tiro de Gracia
2092	Howard Shore, Ornette Coleman & The London Philharmonic Orchestra
2093	El-P
2095	Sam Cooke
2096	Sequentia
2097	Fela Anikulapo Kuti and the Afrika 70
2098	Spacemen 3
2099	Murmuüre
2102	Peter Tosh
2103	Nektar
2105	竹間淳 [Jun Chikuma]
2107	Freddie King
2108	Max Richter
2109	The Stuttgart State Opera Orchestra & Chorus / Dennis Russel Davies
2110	John Lennon
2114	Between the Buried and Me
2117	Fear Factory
2120	Focus
2121	Gil Scott-Heron/Brian Jackson
2122	Wuthering Heights
2124	Buddy Guy & Junior Wells
2125	Alan Menken / Howard Ashman
2128	Melvins
2129	Contortions / Teenage Jesus and The Jerks / Mars / D.N.A.
2130	Traffic
2131	Tom Petty and The Heartbreakers
2133	Ras Kass
2135	Harold Budd / Brian Eno
2137	Chick Corea
2138	Makaveli
2139	Elizabeth Cotten
2140	Moacir Santos
2145	Françoise Hardy
2147	Ijahman
2149	16 Horsepower
2150	Jonny Greenwood
2151	Ravi Shankar
2152	The Ornette Coleman Quartet
2158	Kamasi Washington
2159	Anthrax
2160	The Field
2161	Bob Dylan & The Band
2165	Kent
2166	Willie Colón & Rubén Blades
2167	Lee Moses
2168	Mal Waldron with Eric Dolphy and Booker Ervin
2169	Sonny Clark Trio
2174	Morrissey
2178	Colosseum
2180	Mulatu Astatke featuring Fekade Amde Maskal
2181	Dinal
2182	John Barry
2184	Clarence Clarity
2185	The Sonics
2187	mewithoutYou
2188	Ved Buens Ende.....
2189	Deicide
2190	Trent Reznor and Atticus Ross
2191	The Left Banke
2195	Chuck Berry
2196	Jay Munly
2198	Baden Powell
2199	Marcin Przybyłowicz & Mikolai Stroinski
2200	Эдуард Артемьев [Eduard Artemyev]
2201	戸張大輔 [Daisuke Tobari]
2204	Mad Season
2205	Orbital
2207	Arcturus
2209	Orphaned Land
2211	Steeleye Span
2212	Willie Dixon
2217	Cornelius
2218	The Dillinger Escape Plan
2219	Toumani Diabaté With Ballaké Sissoko
2221	Corea
2222	Аспид [Aspid]
2223	The Abyssinians
2224	Showbiz & A.G.
2225	Annihilator
2226	Angel Witch
2227	Accept
2230	Manfred Mann's Earth Band
2233	Pappo's Blues
2234	Orquesta Sinfónica de Galicia / José Ramón Encinar
2235	Aloys Kontarsky / Harald Bojé / Johannes Fritsch / Alfred Alings / Rolf Gehlhaar / J.-F. Jenny-Clark / Jean-Pierre Drouet / Carlos Roqué Alsina / Michel Portal / Péter Eötvös / Herbert Henck / Michael Vetter / Karlheinz Stockhausen
2237	Buffalo
2239	Fausto
2241	Eddie Palmieri
2244	The Isley Brothers
2245	Underworld
2247	Devon Hendryx
2248	Hatfield and the North
2249	Free
2251	Dawn
2254	Bill Callahan
2255	Daniel Johnston
2256	Life Without Buildings
2257	Dark Tranquillity
2259	Metá Metá
2261	José Afonso
2263	Labÿrinth
2264	Adoniran Barbosa
2266	The Can
2267	George Clanton
2268	Roy Buchanan
2270	The Angelic Process
2272	Captain Beefheart & The Magic Band
2273	Mass of the Fermenting Dregs
2274	David Crosby
2275	Rod Stewart
2276	The Pentangle
2278	Portraits of Past
2279	The Necks
2281	芸能山城組 [Geinoh Yamashirogumi]
2282	Drive-By Truckers
2283	Grammatik
2284	Steve Hillage
2285	Czesław Niemen
2286	SpongeBob SquarePants
2292	Mission of Burma
2295	The Devin Townsend Band
2297	Minnie Riperton
2299	Luther Allison
2300	Playboi Carti
2303	Eminem
2304	파란노을 [Parannoul]
2305	Nails
2310	Ne Obliviscaris
2315	Ten Years After
2316	The Coup
2317	Guy Clark
2321	Armia
2322	The Geto Boys
2326	Aki Takahashi
2328	Alceu Valença
2329	Avishai Cohen Trio
2330	Quilapayún
2331	John Carpenter & Alan Howarth
2334	cLOUDDEAD
2338	Bill Evans & Jim Hall
2339	Billy Cobham
2340	Saxon
2342	The Ruins of Beverast
2343	Disasterpeace
2344	Eddie Henderson
2347	The Radio Dept.
2351	Keef Hartley Band
2355	Lurker of Chalice
2356	Pagan Altar
2357	Angra
2359	Steel Mill
2360	Bill Hicks
2361	Flamengo
2362	Jards Macalé
2364	Shellac
2365	Billy Woods & Kenny Segal
2366	Yellow Swans
2367	Pretenders
2371	Simple Minds
2372	Insomnium
2373	Jonathan Richman
2375	Catherine Ribeiro + Alpes
2377	Jericho
2378	Vince Guaraldi Trio
2381	Buffalo Springfield
2383	Lloyd Cole and The Commotions
2384	Billie Holiday & Ray Ellis and His Orchestra
2388	Oingo Boingo
2392	Leo Kottke
2395	Holy Terror
2396	Shakti With John McLaughlin
2399	Discharge
2401	Jimmy Eat World
2402	Tubeway Army
2404	Symphony X
2407	The Tallis Scholars / Peter Phillips
2408	Curtis Fuller's Quintet
2409	Ry Cooder & V.M. Bhatt
2410	Ali Farka Touré
2411	KCE Japan Sound Team
2412	Seat Belts
2414	Terry Riley
2415	Moor Mother & Billy Woods
2416	Emitt Rhodes
2418	Thomas Newman
2419	Rubén González
2424	Henry Flynt
2427	Luciano Cilio
2428	Death Angel
2429	Today Is the Day
2432	Todd Edwards
2433	Hugh Mundell
2434	Steve Reid featuring The Legendary Master Brotherhood
2435	The Lester Young - Teddy Wilson Quartet
2436	Vig Mihály
2437	American Symphony Orchestra / Leopold Stokowski
2439	Destroyer
2440	Four Tet
2446	Laura Nyro
2447	Terry S. Taylor
2448	Garoad
2449	The Soft Boys
2452	Negură Bunget
2454	Iced Earth
2458	Dillard & Clark
2459	Aimee Mann
2462	Solomon Burke
2464	Joel
2465	Heavy Load
2469	Elder
2470	Darkspace
2471	Dog Faced Hermans
2473	James Horner
2476	The Tuss
2478	Kingpin Skinny Pimp
2481	The God Machine
2482	Ensemble of Unique Instruments / Danlee Mitchell
2487	N.W.A
2490	福居良 [Ryo Fukui]
2493	The KLF
2494	Agent Orange
2495	Golden Earring
2496	Omen
2499	Yabby You
2501	Modrý Efekt & Radim Hladík
2502	Crack
2506	Neko Case
2508	N.O.D.
2512	Blood Incantation
2513	Einstuerzende Neubauten
2514	Trouble
2517	The Supremes
2521	The Mighty Diamonds
2522	Laugh & Peace
2526	London Symphony Orchestra / John Barbirolli / Jacqueline du Pré / Janet Baker
2527	Matt Stone, Robert Lopez & Trey Parker
2531	The Specials
2534	Nasum
2535	Charlie Haden
2537	Young Marble Giants
2538	Grandaddy
2539	Harold Budd
2540	KMD
2541	Blackalicious
2543	Infester
2547	Elvis Presley
2552	Willie Hutch
2553	Madredeus
2555	Genesis Owusu
2556	Oranssi Pazuzu
2557	The Sundays
2568	13th Floor Elevators
2570	Joe Jackson
2571	Leprous
2572	The Moody Blues
2573	Frumpy
2574	Sui Generis
2575	Supersister
2576	Ścianka
2577	Fates Warning
2578	DJ Quik
2579	Tee Lopes
2580	Skip James
2582	Brian Eno-David Byrne
2583	Dinosaur Jr
2585	PRMLSCRM
2586	DJ Sabrina the Teenage DJ
2587	The Wrens
2588	Summoning
2592	Syd Barrett
2594	Teenage Fanclub
2595	William Basinski
2598	Eyehategod
2599	Rudimentary Peni
2600	Nazareth
2603	Avantasia
2604	Klaus Mitffoch
2606	Heldon
2609	Culpeper's Orchard
2610	Cargo
2612	Raul Seixas
2613	Charley Musselwhite
2615	Kenny Dorham
2617	Quarteto Nôvo
2618	Vampire Weekend
2623	Insect Warfare
2624	Ryan Adams & The Cardinals
2625	Mick Gordon
2626	Mike Bloomfield / Al Kooper / Steve Stills
2628	Mansun
2629	Triple Six Mafia
2634	Madonna
2635	Mercury Rev
2636	Laurie Anderson
2638	death's dynamic shroud.wmv
2641	The Angels of Light
2646	Los Planetas
2647	Al Stewart
2652	Therion
2655	Ensemble intercontemporain / Pierre Boulez / Jean-Guihen Queyras / Saschko Gawriloff / Pierre-Laurent Aimard
2656	Sidney Gish
2659	Solitude Aeturnus
2660	Taste
2661	Nucleus
2662	Carlos Paredes
2663	Psychotic Waltz
2668	Aesop Rock
2669	Aphrodite's Child
2671	Mclusky
2672	Harold Budd / Brian Eno with Daniel Lanois
2673	They Might Be Giants
2676	Thelonious Monk With John Coltrane
2678	SPK
2680	Donald Byrd
2681	Rippikoulu
2682	Gorement
2683	Carol of Harvest
2684	SBB
2685	Ashbury
2687	Caifanes
2688	Drawn and Quartered
2689	Andy Irvine & Paul Brady
2690	Big Mama Thornton
2692	Rammstein
2694	Orchestral Manœuvres in the Dark
2695	Леонид Фёдоров [Leonid Fedorov]
2696	Taj Mahal
2697	Africa Express
2698	Warlord
2700	Les McCann
2702	The Devin Townsend Project
2704	Maanam
2705	Gaelle
2706	Батюшка [Batushka]
2709	Down
2712	Nusrat Fateh Ali Khan
2714	Nocturnus
2715	Blut aus Nord
2717	Burning Spear
2721	Tats Yamashita
2722	Dystopia
2723	Waylon Jennings
2724	Phoebe Bridgers
2726	The Go! Team
2727	Vio-Lence
2728	Little Feat
2729	Kristofer Maddigan
2731	The Jazz Messengers
2733	Julius Hemphill
2734	José Cid
2737	Lightning Bolt
2738	Natalia Lafourcade
2739	Tuxedomoon
2748	Steve Earle
2749	John Mayall
2750	Cockney Rebel
2752	Deathspell Omega / S.V.E.S.T.
2753	Louis Armstrong and His All-Stars
2756	Dire Straits
2757	Jaco Pastorius
2759	KRS-One
2761	J-Live
2762	Lech Janerka
2764	Maneige
2765	The Toms
2767	Edan
2768	Amorphis
2769	Buzzcocks
2770	ROME
2772	Księżyc
2773	Justin Hurwitz
2774	Groundhogs
2778	B.B. King
2779	Luis Alberto Spinetta
2780	Pezet-Noon
2781	Arctic Monkeys
2783	Loreena McKennitt
2785	Harry Gregson-Williams & 日比野則彦 [Norihiko Hibino]
2788	Colin Stetson
2791	Solaris
2792	Richard Thompson
2793	Show & A.G.
2794	Ton Steine Scherben
2795	Peste Noire
2799	Bubu
2801	Catch Twenty-Two
2803	The Andrzej Trzaskowski Quintet
2804	Lole y Manuel
2805	Billy Harper
2813	Janet Jackson
2815	Colin Newman
2817	The Meters
2820	The Sweet
2823	God
2825	Bekëth Nexëhmü
2827	Coleman Hawkins & Ben Webster
2828	Cliff Jordan and John Gilmore
2829	Keith Rowe
2830	SWR Sinfonieorchester Baden-Baden und Freiburg / ORF Radio-Symphonieorchester Wien / Sylvain Cambreling / Dennis Russell Davies / Friedrich Cerha
2831	Booker Little
2834	Lisa Germano
2836	Bunny Wailer
2837	Alain Bashung
2838	Montrose
2844	His Hero Is Gone
2846	Grant Lee Buffalo
2847	Hailu Mergia & Dahlak Band
2850	Bert Jansch
2852	Spinetta
2853	Chico Buarque de Hollanda
2855	Tomasz Stanko Septet
2856	Jack DeJohnette
2857	Freddie Gibbs & The Alchemist
2859	Clint Mansell Featuring Kronos Quartet
2860	Smog
2861	Art Blakey's Jazz Messengers
2862	Studio Pixel
2863	Alvvays
2874	Moonspell
2876	Dan Swanö
2878	Masterplan
2879	The Rutles
2880	Ed Harrison
2881	Jag Panzer
2884	Consorzio Suonatori Indipendenti
2886	Johnny Hobo and the Freight Trains / ManTits
2887	Łona
2888	Matthew Halsall & The Gondwana Orchestra
2889	Os Paralamas do Sucesso
2890	Horace Silver Quintet
2891	Duke Ellington & Johnny Hodges
2892	Monks
2893	Liz Phair
2896	The Black Crowes
2898	Bacamarte
2900	The Don Ellis Orchestra
2901	Catherine Ribeiro + 2 Bis
2902	Michael Andrews
2903	Master's Apprentices
2905	Los Prisioneros
2906	Morte Macabre
2911	Trettioåriga kriget
2913	Black Flag
2914	Adramelech
2915	Battiato
2919	Doris Duke
2920	Otis Spann
2922	Ministry
2924	The D.O.C.
2929	Almendra
2930	Kris Kristofferson
2931	Louis Armstrong
2932	Return to Forever featuring Chick Corea
2933	Furia
2935	Spring
2938	Johnny Winter
2939	CMX
2942	The Olivia Tremor Control
2945	Atomic Rooster
2947	Noah Howard
2948	Lhasa
2949	Hell
2950	The Horace Silver Quintet & Trio
2951	Fela
2953	Elis Regina
2954	Stan Getz
2958	Lords of the Underground
2959	Linton Kwesi Johnson
2960	Masta Ace Incorporated
2963	Amon Tobin
2964	Nick Lowe
2965	Skepticism
2966	Grand Funk
2970	Whiskeytown
2973	Keith Rowe & John Tilbury
2975	Canned Heat & John Lee Hooker
2976	Dorival Caymmi
2978	Chicken Shack
2979	Kronos Quartet
2982	Matt Elliott
2983	Thinking Fellers Union Local 282
2984	City of Caterpillar
2986	Wilson Pickett
2992	Gavin Bryars
2995	Jan Garbarek - Bobo Stenson Quartet
2997	Sabbat
2998	Assück
3000	Shape of Despair
3004	Carmine Coppola & Francis Ford Coppola
3007	La Dispute
3013	Le Orme
3014	George Russell Sextet
3015	Univers Zéro
3016	"Blue" Gene Tyranny
3018	Biglietto per l'Inferno
3019	Pat Metheny Group
3020	Ali Farka Touré & Toumani Diabaté
3021	Milton
3022	El Niño Gusano
3023	Jody Grind
3024	Michael McCann
3026	The Oscar Peterson Trio
3030	Gary Numan
3033	Ashra
3039	Tomasz Stańko Quintet
3042	Virus
3043	Gov't Mule
3044	These Immortal Souls
3047	Terry Allen
3048	The Innocence Mission
3049	AC/DC
3050	Shabazz Palaces
3052	Il Balletto di Bronzo
3054	Mount Eerie with Julie Doiron & Fred Squire
3057	High Tide
3060	Brutal Truth
3064	Demon Fuzz
3065	Transatlantic
3067	Ann Peebles
3071	Vox Dei
3072	АукцЫон
3073	Johnny Burnette & The Rock 'n Roll Trio
3074	Julian Priester Pepo Mtoto
3077	Blind Faith
3080	M.I.A.
3082	Satyricon
3083	(The) Melvins
3084	Septicflesh
3087	Stratovarius
3088	Bill Fay
3089	Manfred Schoof
3091	Strawbs
3092	Nic Jones
3093	Oliver Nelson with Eric Dolphy
3095	Gösta Berlings Saga
3096	Mew
3097	공중도덕
3099	Nancy Sinatra & Lee Hazlewood
3100	Billy Woods
3101	Blackout
3102	Operation Ivy
3103	Ayreon
3105	Samla Mammas Manna
3106	Helstar
3108	Mista D.J. Paul
3110	Betty Davis
3111	Mountain
3113	John Abercrombie
3114	きくお [Kikuo]
3116	増田順一 [Junichi Masuda]
3117	Paris
3118	Henry Mancini
3121	Ezhel
3123	Art Blakey and the Jazz Messengers
3125	Mac Miller
3126	Squid
3127	The Pop Group
3128	Kylie
3131	Jeff Beck
3133	Art Pepper
3135	Christian Vander
3136	Ark
3137	T-Bone Walker
3139	pageninetynine
3140	Ben Folds Five
3141	森田童子 [Douji Morita]
3142	Spooky Tooth
3144	Świetliki
3145	Neal Morse
3148	Lalo Schifrin
3149	Zbigniew Seifert
3151	Scraping Foetus Off the Wheel
3155	Walrus
3156	Stan Getz & Luiz Bonfá
3157	Death Toll 80k
3158	Prince Lasha & Sonny Simmons
3161	John Mayall With Eric Clapton
3162	Charles Mingus and His Jazz Groups
3164	The Stranglers
3166	Scientist
3167	Embryo
3168	12 Rods
3169	Envy
3171	Jason Isbell
3172	Graham Parker
3174	Onyx
3176	Poet and the Roots
3177	Bud Powell
3178	DJ Paul & Lord Infamous
3179	The Art Tatum-Ben Webster Quartet
3180	John Hiatt
3181	Robert Pollard With Doug Gillard
3185	Ornatos Violeta
3186	Hermann Nitsch
3187	Bernard Parmegiani
3188	Mica Levi
3192	Kenny Drew
3193	Willis Alan Ramsey
3198	Supergrass
3199	Origami Angel
3200	Robert Ashley
3201	Force of Nature / Nujabes / Fat Jon
3202	Phil Ochs
3204	АукцЫон [Auktyon], Marc Ribot, John Medeski, Ned Rothenberg, Frank London & Владимир Волков [Vladimir Volkov]
3206	Estas Tonne
3207	Savoy Brown
3210	Donny Hathaway
3211	Caymmi
3212	Hammers of Misfortune
3213	Coin locker kid
3214	Jumbo
3215	Os Tincoãs
3219	Flotation Toy Warning
3223	Broadcast
3224	The Unicorns
3225	Ash Ra Tempel
3226	Chick Corea and Return to Forever
3227	Lee Hazlewood
3228	Stephen Stills / Manassas
3229	New Model Army
3231	Mournful Congregation
3232	Donald Byrd Band & Voices
3234	Crucis
3237	Edu Lobo
3240	Maria del Mar Bonet
3242	Anderson .Paak
3243	Death Cab for Cutie
3245	The Prodigy
3249	Valium Aggelein
3250	Trees
3251	Crowbar
3253	언니네이발관 [Sister's Barbershop]
3254	Stanley Clarke, Al Di Meola & Jean-Luc Ponty
3255	Paul Kelly and the Coloured Girls
3261	Lou Reed & John Cale
3263	Uncle Tupelo
3264	Toumani Diabaté
3265	Titãs
3268	Avishai Cohen
3270	Roy Haynes Quartet
3272	Ecco2K
3273	Killer Mike
3275	Women
3277	David Thomas Broughton
3279	Henry Cow
3281	Nilsson
3282	Clutch
3283	Cirith Ungol
3285	Westside Gunn
3287	Eloy
3288	Hoedh
3289	Lady Pank
3291	Elio e le Storie Tese
3292	Manfred Mann Chapter Three
3293	Julian Jay Savarin
3294	Duke Ellington & Coleman Hawkins
3296	Ian Matthews
3297	Gato Barbieri
3298	Ben Webster & Oscar Peterson
3300	Hole
3302	tricot
3305	Beth Gibbons & Rustin Man
3308	Buddy Holly
3309	Dün
3310	Fields of the Nephilim
3311	John Coltrane and Johnny Hartman
3312	Sadus
3313	Kvist
3314	Rodrigo y Gabriela
3315	Roberta Flack
3317	Mary Margaret O'Hara
3320	Leevi and the Leavings
3322	The Shins
3324	Lianne La Havas
3325	The Durutti Column
3327	Kool G Rap & DJ Polo
3328	Motorpsycho
3329	The Impressions
3331	Ibrahim Ferrer
3332	Satin Whale
3333	One Be Lo
3334	Los Fabulosos Cadillacs
3336	Rancid
3337	Harmonia
3340	Boldy James & Sterling Toles
3341	KOTO
3342	Rotting Christ
3346	Howlin' Wolf
3348	Solstice
3349	Keiichi Suzuki, Hirokazu Tanaka
3351	Adrianne Lenker
3353	toe
3356	Donna Summer
3357	WAR
3358	Forbidden
3361	Augustus Pablo
3362	Archie Shepp
3363	Richard Hawley
3366	Kleenex Girl Wonder
3367	Marek Grechuta & Anawa
3368	Threshold
3370	Okkervil River
3371	Paul McCartney
3374	Count Basie and His Orchestra
3375	Juçara Marçal
3376	Doc Watson
3377	Time Machines
3381	Dolly Mixture
3382	The Faith / Void
3384	John Carpenter
3386	Maxwell
3387	Alice Coltrane With Strings
3388	Osanna
3390	Junior Delahaye
3391	Hermann Szobel
3392	Raw Material
3393	Bk'
3395	Irma Thomas
3397	Alice Coltrane-Turiyasangitananda
3398	e.s.t.
3405	John Carpenter in Association With Alan Howarth
3409	Oceansize
3410	Earth & Fire
3411	Eels
3415	Thy Catafalque
3416	The Weakerthans
3420	Diamond and The Psychotic Neurotics
3421	Novembre
3423	Pekka Pohjola
3425	Circus
3426	Thelonious Monk Quintet
3427	Bruce Cockburn
3430	Cristobal Tapia de Veer
3432	Behemoth
3433	Melt-Banana
3434	Japan
3436	Eddie Vedder
3439	Kaleidoscope
3440	Jellyfish
3441	Woven Hand
3442	The Church
3443	Republika
3444	Four Tops
3447	Jerry Garcia
3448	The Tea Party
3451	Benny Carter and His Orchestra
3452	Claudio Lolli
3454	The Streets
3455	Alex G
3458	Helen Merrill
3459	Гражданская оборона [Grazhdanskaya Oborona]
3464	Brötzmann / Van Hove / Bennink
3465	Michael Pisaro / Greg Stuart / Patrick Farmer / Joe Panzner / Toshiya Tsunoda
3468	Sugar
3469	Failure
3471	Streetlight Manifesto
3472	YMO
3473	Meshuggah
3476	Vader
3478	Ini Kamoze
3481	Truth and Janey
3482	Art Blakey Jazz Messengers
3483	Jason Falkner
3485	Keith Hudson
3486	Lavender Country
3487	Harem Scarem
3488	Alphonse Mouzon
3489	Darren Korb
3490	Masada
3493	Monster Magnet
3498	C'est la Key
3500	Scald
3501	The Keith Tippett Group
3503	Champion Jack Dupree
3504	Order From Chaos
3505	Arthur Blythe
3506	Kapela ze Wsi Warszawa
3508	Orchester der Beethovenhalle Bonn / The Hilliard Ensemble / Paul Hillier / Dennis Russell Davies
3511	Sloche
3512	The Max Roach Trio featuring the Legendary Hassan
3513	Kenny Wheeler, Lee Konitz, Dave Holland & Bill Frisell
3515	Alcest
3516	Sons of Kemet
3518	Hum
3521	Taake
3522	Magrudergrind
3523	Hoodoo Gurus
3525	Fẹla Ransome-Kuti and The Africa 70
3526	Locanda delle Fate
3528	Deathrow
3529	Wayne Jarrett
3531	Mezquita
3532	Andrew Lloyd Webber
3533	Янка [Yanka]
3534	Tohru Aizawa Quartet
3536	Tomasz Stańko
3537	Metro
3539	Sebastian Hardie
3541	After the Burial
3542	advantage Lucy
3543	Bill Conti
3546	Lupe Fiasco
3547	The Cramps
3550	Sigh
3551	Sebadoh
3552	Swell Maps
3555	２８１４
3556	The Decemberists
3560	Spinetta Jade
3561	Nat Adderley
3562	Fred Wesley and the J.B.'s
3565	St. Vincent
3566	Sir Lord Baltimore
3567	Master's Hammer
3568	Sanctuary
3569	Eric Dolphy Quintet
3571	Ramshackle Glory
3574	Echo and The Bunnymen
3575	Richard Hell & The Voidoids
3576	Christoph de Babalon
3577	Cult of Luna and Julie Christmas
3583	The Paul Butterfield Blues Band
3584	Armageddon
3585	Triumvirat
3586	Team Dresch
3587	Robbie Băsho
3590	Coleman Hawkins
3591	The Cracow Klezmer Band
3592	Fantasy
3593	Som Imaginário
3595	The Alan Parsons Project
3596	Wintersun
3598	Louis Moholo Octet
3599	Cluster
3603	Carnage
3607	Choking Victim
3608	McDonald and Giles
3609	Elton John / Tim Rice / Hans Zimmer
3610	Mark Lanegan
3612	Saint Vitus
3614	Irish Coffee
3616	Wussy
3617	Steven Wilson
3618	Bright Eyes
3624	Los Hermanos
3626	La Maldita Vecindad y los Hijos del Quinto Patio
3627	M.I.A. (Músicos Independientes Asociados)
3629	Jens Lekman
3630	Ryan Adams
3634	Skycamefalling
3635	Sumo
3639	Crowded House
3641	Evoken
3644	Sortilège
3646	Galneryus
3648	Brass Ensemble Staatsorchester Stuttgart / The Hilliard Ensemble / Dennis Russell Davies / Gidon Kremer / Vladimir Mendelssohn / Thomas Demenga
3649	Heavens Gate
3652	Anthony Davis
3653	Eero Koivistoinen Music Society
3655	bloodthirsty butchers
3656	Horace Tapscott Quintet
3660	PMMP
3661	Puressence
3662	Heavenly
3663	M Efekt
3665	John Larkin
3666	Spellling
3669	New York Dolls
3670	The Tragically Hip
3672	Spiritualized
3673	Tenhi
3679	Michael Hurley
3680	Non Phixion
3681	The Protomen
3682	Tonton Macoute
3684	Lucio Dalla
3687	Konzerthaus Kammerorchester Berlin / André de Ridder / Daniel Hope
3689	Pinback
3691	Dolly Parton
3693	Polaris
3694	Vinterland
3696	Pentangle
3698	KAT
3699	Secret Chiefs 3
3700	Indian Summer
3702	Alquin
3703	Georges Brassens
3705	Muse
3709	Michael Chapman
3710	Lunatic
3711	Tomasz Stanko Quartet
3713	John Frusciante
3716	The Gerogerigegege
3717	Beat Konducta
3718	Spock's Beard
3719	Lily Chou-Chou
3720	October Tide
3721	John Mayall and The Bluesbreakers
3723	Devil Doll
3728	菅野よう子 [Yoko Kanno]
3729	Joe Farrell
3731	Primal Scream
3732	Pantera
3734	春ねむり [Haru Nemuri]
3736	Doopees
3738	Dark
3739	Slaughter
3740	Vlad Tepes / Belkètre
3741	Ange
3742	Unida
3743	Maxophone
3744	Di Melo
3746	Sacred Blade
3747	Pete Brown & Piblokto!
3749	Albert Collins, Robert Cray & Johnny Copeland
3750	Abel Korzeniowski
3751	Mazzy Star
3752	Boston
3758	AZ
3759	The Drones
3761	David Lynch & Alan R. Splet
3762	The Dukes of Stratosphear
3764	Jun Konagaya
3765	Funebrarum
3766	Falconer
3768	Micah P. Hinson
3770	Red Dog
3771	IQ
3772	Big Big Train
3773	Dusk
3776	Cannonball Adderley With Bill Evans
3778	Héroes del Silencio
3781	Sandy Denny
3782	David S. Ware Quartet
3786	Jonathan Richman & The Modern Lovers
3791	Machine Head
3797	...And You Will Know Us by the Trail of Dead
3798	My Morning Jacket
3801	Francis Albert Sinatra & Antônio Carlos Jobim
3802	The Dear Hunter
3806	Benny the Butcher
3807	Pure Reason Revolution
3810	East of Eden
3811	Tristania
3814	Eddie and the Hot Rods
3815	Leño
3817	Roine Stolt
3819	Belle & Sebastian
3820	Cure
3821	ZZ Top
3824	The Gaslight Anthem
3825	Sinéad O'Connor
3826	dEUS
3827	Mark Lanegan Band
3828	Squeeze
3829	pg.99
3830	Vangelis Papathanassiou
3831	The Divine Comedy
3833	Erkin Koray
3834	Jan Dukes de Grey
3835	Anacrusis
3836	Frontierer
3838	Cressida
3840	Jason Lescalleet
3841	Syl Johnson
3842	Brown and Roach
3843	Axe
3844	Duke Ellington & Count Basie
3845	Power of Zeus
3846	東京事変 [Tokyo Jihen]
3847	Old 97's
3848	The Wildhearts
3849	MC Solaar
3850	David Murray Octet
3851	Cheer-Accident
3852	The Neal Morse Band
3853	Lisabö
3854	Weatherday
3857	England
3859	Nat 'King' Cole and His Trio
3861	Marek Grechuta
3864	Tracy Chapman
3868	Bryan Ferry
3869	Ali Farka Touré With Ry Cooder
3870	The Wedding Present
3877	!T.O.O.H.!
3878	Reigning Sound
3879	Phideaux
3880	Culprate
3886	Antony and the Johnsons
3887	Fennesz
3888	Julie Driscoll, Brian Auger & The Trinity
3891	Chuck Person
3892	Contortions
3896	Deepchord Presents Echospace
3899	Sam & Dave
3900	Léo Ferré
3901	Sun Ra & His Solar Arkestra
3902	James Gang
3904	On the Might of Princes
3906	Hans Zimmer / Lisa Gerrard
3908	Cock Sparrer
3909	Áine O'Dwyer
3911	Theatre of Voices / Paul Hillier
3913	Chelsea Wolfe
3915	The Dillards
3918	OMD
3919	MIKE
3920	Weather Report
3921	Ihsahn
3925	Windy & Carl
3930	Night Sun
3931	Arti & Mestieri
3933	Vicious Rumors
3934	Prolapse
3936	Thinking Plague
3937	Fela Anikulapo Kuti & Egypt 80
3938	Sandy Bull
3940	Halford
3941	Fela Aníkúlápó Kuti and Afrika 70
3943	Radwimps
3944	Hunger
3945	Frank Sinatra, Count Basie and His Orchestra
3947	Timeless Miracle
3950	Bloc Party
3951	Protomartyr
3952	Dean Blunt
3957	dredg
3959	Everything Everything
3960	Jesu
3962	Richard Dawson
3967	凛として時雨 [Ling Tosite Sigure]
3968	Josh Rouse
3970	Dewan Motihar Trio / Irène Schweizer Trio / Manfred Schoof / Barney Wilen
3974	Spirogyra
3975	Royal Hunt
3977	Dick Gaughan
3978	Kiko Veneno
3979	Sex Pistols
3980	Wolf Parade
3982	Haken
3984	Ensiferum
3987	Leviathan
3988	Noir désir
3991	Infernäl Mäjesty
4260	Michelle Shocked
4262	Pino Daniele
3992	Michael Hurley, The Unholy Modal Rounders, Jeffrey Fredericks & The Clamtones
3993	Celeste
3994	Lowrider
3995	Red Hot Chili Peppers
4001	Malevolent Creation
4002	Mellow Candle
4004	Candi Staton
4005	Discipline
4006	Huun-Huur-Tu
4007	Steven Jesse Bernstein
4009	R.A.P. Ferreira
4010	Yndi Halda
4012	Be'lakor
4013	Kylie Minogue
4017	Go-Betweens
4018	Evergrey
4019	Anthony Phillips
4023	Shadow Gallery
4024	Pete Rock
4025	Hopesfall
4026	Sacrifice
4027	Guthrie Govan
4028	Iris DeMent
4029	Zamla Mammaz Manna
4030	Fifth Angel
4031	The Ex
4032	D-Clone
4033	Larry Coryell
4035	Shivkumar Sharma, Brij Bhushan Kabra & Hariprasad Chaurasia
4038	Thelonious Monk Trio
4039	Chris Isaak
4040	Acrimony
4041	Yann Tiersen
4043	Bob Theil
4046	Lemon Demon
4047	Nuno Canavarro
4048	Dungen
4050	Stan Getz & Charlie Byrd
4051	Ben Folds
4053	Novalis
4055	Dolorian
4057	Barón Rojo
4059	Bob Becker / Russ Hartenberger / Garry Kvistad / Glen Velez / Edmund Niemann / Nurit Tilles / Kory Grossman / James Preiss / Bill Ruyle / William Trigg
4062	The Stylistics
4063	The Incredible String Band
4067	Residents
4069	Kansas
4070	Anthony Williams
4071	Dr. Octagon
4072	ማሕሙድ ኣሕመድ [Mahmoud Ahmed]
4074	Flamin' Groovies
4075	Laddio Bolocko
4076	Carlos Santana & Mahavishnu John McLaughlin
4077	Kaliber 44
4081	Draconian
4083	Lal and Mike Waterson
4084	El Último de la Fila
4085	Kvartetten Som Sprängde
4087	Emerson, Lake & Palmer
4090	Kevin Ayers
4092	Skid Row
4094	Vàli
4096	Sharon Jones and The Dap-Kings
4100	Slapp Happy
4105	Gnidrolog
4106	Kultivator
4109	Hibria
4111	Tom Jobim
4112	Something Like Elvis
4116	Nitty Gritty Dirt Band
4117	Roy Haynes, Phineas Newborn, Paul Chambers
4118	Junipher Greene
4120	Tallinn Chamber Orchestra / Estonian Philharmonic Chamber Choir / The Hilliard Ensemble / Lithuanian Chamber Orchestra / Tõnu Kaljuste / Saulius Sondeckis
4123	Open Mike Eagle
4126	The Blue Öyster Cult
4129	Quicksilver Messenger Service
4130	Freestyle Fellowship
4134	Veneno
4135	The O'Jays
4136	Mink DeVille
4137	Θανάσης Παπακωνσταντίνου [Thanasis Papakonstantinou]
4138	Alaska y Dinarama
4140	t e l e p a t h テレパシー能力者
4141	Buckethead
4142	Blue Mitchell
4144	Marijata
4146	Camberwell Now
4147	Ike Quebec
4149	George Lewis
4152	The Hotelier
4153	Aerosmith
4156	Jimi Hendrix
4157	The Pretenders
4158	Badfinger
4160	Funeral Diner
4161	Earth Wind & Fire
4163	Son Volt
4164	Gun
4166	O'Jays
4167	Julian Cope
4169	Roc Marciano
4170	Kashiwa Daisuke
4171	Virgin Black
4174	Jan Jelinek
4175	Altar of Plagues
4176	Christian Death
4177	The Crazy World of Arthur Brown
4179	Magnetic Fields
4185	不失者 [Fushitsusha]
4186	Prince of Denmark
4189	Falkenbach
4191	Ralph Towner
4192	Світлана Няньо [Svitlana Nianio]
4193	Moving Gelatine Plates
4197	Group 1850
4198	Truly
4199	Atka
4200	Samurai
4203	Changó
4205	Placebo
4209	Naked City
4211	Aqsak Maboul
4213	Cymande
4214	The New Tony Williams Lifetime
4215	Meredith Monk
4218	Fusion Orchestra
4219	Sonic Sum
4220	Donovan
4221	Trapeze
4222	Master Ace
4223	Lee Dorsey
4224	Rose Tattoo
4226	Ali Akbar Khan
4227	The Afghan Whigs
4229	Moss Icon
4231	Akercocke
4232	Mulatu Astatke
4233	Deströyer 666
4234	Vangelis
4235	Los Lobos
4236	Grand Funk Railroad
4237	Alphataurus
4238	Weidorje
4239	Ilkae
4240	Demian
4243	Sister Rosetta Tharpe
4244	Gordon Lightfoot
4248	Green Day
4250	Sean Price
4251	Jane's Addiction
4252	Cortex
4254	The Ben Webster Quintet
4255	Scanner
4257	Sieges Even
4263	Ron Sexsmith
4264	Groupe de recherches musicales de l'O.R.T.F.
4265	The Raincoats
4271	Pendragon
4273	Lester Young With The Oscar Peterson Trio
4274	Tia Blake and Her Folk-Group
4275	A Sei Voci
4279	Fever Ray
4281	The Doobie Brothers
4282	Dead Prez
4283	No Trend
4284	Off Minor
4286	Suzanne Vega
4287	Isengrind / TwinSisterMoon / Natural Snow Buildings
4288	Oxbow
4289	Jean-Luc Ponty
4292	The Beatnuts
4293	Canned Heat
4294	Austin Wintory
4296	Devastation
4299	Sunn O)))
4301	ABC
4302	The Chemical Brothers
4305	Andrew Bird
4310	Coheed and Cambria
4311	Screaming Trees
4313	Kevin Rowland & Dexys Midnight Runners
4315	Pauline Oliveros, Stuart Dempster & Panaiotis
4324	Saetia
4326	Marshall Crenshaw
4327	StarGazer
4330	БГ
4331	Dark Quarterer
4334	Münchener Kammerorchester / Christoph Poppen / Elsbeth Moser / Boris Pergamenschikow
4335	Malo
4340	Panopticon
4341	The Lounge Lizards
4342	Thorns
4345	万能青年旅店 [Omnipotent Youth Society]
4346	Poison Idea
4352	The Bill Evans Trio
4353	Lake of Tears
4354	Toad
4355	Dust
4359	Arnaldo Baptista
4362	Rita Lee & Tutti Frutti
4364	Atoll
4368	Toby Fox
4369	Yves Tumor
4370	Silver Apples
4375	Fantômas
4376	Inquisition
4378	Techno Animal
4380	Technical Space Composer's Crew
4383	Lord Finesse
4386	Brocas Helm
4391	Gonzales
4392	Caetano Veloso & A Outra Banda da Terra
4394	Dwight Yoakam
4395	Tomáš Dvořák
4396	Glenn Jones
4397	Mac Mall
4398	Paramæcium
4399	Black Bonzo
4404	Midlake
4411	Seventh Wonder
4412	Cloven Hoof
4413	Secret Oyster
4414	November
4415	Afro-Cuban All Stars
4417	Orchester der Deutschen Oper Berlin / Chor der Deutschen Oper Berlin / Eugen Jochum / Gundula Janowitz / Gerhard Stolze / Dietrich Fischer-Dieskau
4418	Jerzy Milian
4419	Gotthard
4423	Mineral
4425	Pan Sonic
4426	Lee Perry
4427	Guns n' Roses
4429	The Undertones
4431	Spınal Tap
4433	U.K.
4435	Kate & Anna McGarrigle
4437	Viper
4438	Horace Andy
4441	Breach
4442	The Tony Williams Lifetime
4443	Poison
4444	Esbjörn Svensson Trio
4446	Rx Bandits
4447	Pulsar
4449	Nat King Cole
4450	Alton Ellis
4456	Super Furry Animals
4458	pilotredsun
4459	The Exploding Hearts
4460	Soul Coughing
4467	Sinister
4470	Davy Graham
4472	R.L. Burnside
4479	Arachnoïd
4480	Itzhak Perlman
4481	Sixpence None the Richer
4483	Descendents
4487	Nightwish
4494	In the Woods...
4497	Dir en Grey
4498	Deep Turtle
4499	Felt
4502	Grobschnitt
4503	Ratos de Porão
4506	Dan Johnston
4509	Rilo Kiley
4511	Agitation Free
4513	Convulse
4515	Liege Lord
4517	Jesse Sykes & The Sweet Hereafter
4524	Arcadium
4525	Tommy Bolin
4526	Shirley Collins & Davy Graham
4527	Fruupp
4529	Winterhawk
4530	Runemagick
4531	Extol
4532	Swamp Dogg
4533	Three Man Army
4534	Temple of the Dog
4535	The New Pornographers
4536	Propaganda
4537	Sweet Smoke
4539	Sarcófago
4540	Patife Band
4543	Hermeto Pascoal
4544	きのこ帝国 [Kinoko Teikoku]
4545	Cheap Trick
4548	Billy Bragg
4549	Joe Cocker
4550	Y.M.O.
4551	Flotsam and Jetsam
4553	Paul Weller
4555	Small Faces
4556	King's X
4557	The Hellacopters
4559	Arto Lindsay
4560	Savage Grace
4562	Laurent Thibault
4564	SZA
4565	Touché Amoré
4568	Peter Green
4569	cv313
4572	Dorothy Carter
4573	The Incredible Jimmy Smith
4576	The Verve
4579	Mark Kozelek & Jimmy LaValle
4580	Elvis Costello and The Attractions
4581	Count Basie and His Orchestra + Neal Hefti Arrangements
4584	The Beat
4585	The Costello Show
4586	Matching Mole
4587	The Posies
4590	Toshiki Kadomatsu
4591	Tesla
4592	Karlheinz Stockhausen / Elektronischen Studio des WDR Köln
4594	Grimes
4596	Spoon
4598	Soft Cell
4599	Polvo
4602	Junko
4604	四人囃子 [Yonin-Bayashi]
4605	Wobbler
4609	Theocracy
4610	The Lawrence Arms
4611	Duncan Browne
4613	Venom
4615	Amon Amarth
4616	Johnny Jenkins
4617	Joe Henry
4621	Arcade Fire & Owen Pallett
4623	Brand X
4624	The Move
4628	Gene Clark with The Gosdin Brothers
4629	Message
4630	Jan Garbarek, Keith Jarrett, Palle Danielsson & Jon Christensen
4632	Pete Townshend & Ronnie Lane
4633	Itoh Masyitoh & Rineka Swara
4634	Tim Berne
4635	João Donato
4638	Goldfrapp
4640	Michael Kiwanuka
4644	Jawbreaker
4645	Destruction
4648	Iron & Wine
4649	Dexys Midnight Runners
4651	James
4654	Clann Zú
4659	Selda
4660	Family
4662	Bluetile Lounge
4663	Stan Getz & Eddie Sauter
4665	Rage
4666	After Crying
4667	Дельфин [Dolphin]
4668	Lou Donaldson
4669	Paco de Lucia, Al Di Meola & John McLaughlin
4670	Robert Pollard
4671	Arena
4672	Metamorfosi
4673	Catapilla
4674	Steamhammer
4677	Granicus
4678	The Delfonics
4679	Ryuichi Sakamoto, David Byrne and Cong Su
4680	Ария [Aria]
4681	佐藤理 [Osamu Sato]
4683	Eddie Kendricks
4684	Stormwitch
4685	Anti-Kahraman
4689	Flipper
4690	Chrome
4691	Donald Fagen
4693	The Ocean
4694	Traveling Wilburys
4695	Bad Religion
4696	Julie London
4700	Roscoe Mitchell Sextet
4701	Roky Erickson
4703	Kury
4704	Igra Staklenih Perli
4705	Natas
4706	Kazik na Żywo
4707	Tear Gas
4709	Tomasz Stanko
4710	Southside Johnny & The Asbury Jukes
4712	Luna Sea
4719	Bittová & Václavek
4721	John McLaughlin
4722	May Blitz
4724	Faraquet
4725	Jack Rose
4727	YOB
4728	Magnum
4731	Patto
4732	Orchestra Baobab
4733	K.R.T. Wasitodiningrat
4734	The Only Ones
4735	Legend
4737	Sr. Chinarro
4738	Janko Nilovic
4739	Jung Jaeil
4743	L' Arpeggiata / Christina Pluhar / Lucilla Galeazzi / Marco Beasley
4744	Crass
4746	Frightened Rabbit
4747	Sun City Girls
4748	Chicago
4750	Spanish Love Songs
4753	Luiz Melodia
4754	Slough Feg
4756	Steve Earle & The Del McCoury Band
4758	Frank Sinatra with Gordon Jenkins and His Orchestra
4759	Obywatel G.C.
4762	The Red Crayola with The Familiar Ugly
4763	The Silver Mt. Zion Memorial Orchestra & Tra-La-La Band
4764	Niemen Aerolit
4765	G.I.S.M.
4772	Bodychoke
4773	Skinny Puppy
4774	Lync
4775	The Chariot
4777	Pat Metheny & Lyle Mays
4778	Sonny Rollins Quartet
4779	Leatherwolf
4781	Sturgill Simpson
4784	Count Bass D
4787	Snapcase
4791	Spice 1
4792	The Flower Kings
4793	Obliteration
4795	European Lucero Ensemble / Horațiu Rădulescu / Daniel Kientzy
4796	The Boys
4800	Pat Martino
4801	Deceased...
4802	Bengt Berger & Bitter Funeral Beer Band
4804	Japanese Breakfast
4806	Squarepusher
4809	Gary Moore
4812	The Wonder Years
4817	The Soundtrack of Our Lives
4818	The J.B.'s
4820	Caroline Polachek
4823	Swirlies
4825	Sacrilege
4828	Armored Saint
4831	Jill Scott
4833	Zao
4835	John Greaves, Peter Blegvad and Lisa Herman
4836	Comptons Most Wanted
4837	Frank Turner
4840	Krokodil
4841	Campo Di Marte
4842	Graveyard Productions
4844	Terje Rypdal
4847	Ragnarök
4848	Mavis Staples
4850	Morly Grey
4851	Gracious
4853	The Loud Family
4855	Rites of Spring
4856	The Notwist
4857	Suicidal Tendencies
4859	Dirty Three
4860	DJ Rozwell
4861	CurrentNinetyThree
4862	Alexander von Schlippenbach Trio
4863	Social Distortion
4864	The Michael Schenker Group
4866	Fear Before the March of Flames
4867	Oblivians
4868	Tim Hardin
4869	Zero Boys
4871	Art Blakey's Jazz Messengers With Thelonious Monk
4872	New Bomb Turks
4874	The Triffids
4877	Koto Ensemble of the Ikuta School
4878	Ian Hunter
4880	Hiromi
4881	The Police
4882	Bill Elm & Woody Jackson
4883	Paul Chambers Quartet
4886	Pavlov's Dog
4887	Theatre of Tragedy
4891	The Crown
4892	Идоли
4893	Colour Haze
4896	Mourning Beloveth
4897	William Bell
4900	Garden of Shadows
4901	Prince Far-I and The Arabs
4905	Handsomeboy Technique
4907	The 13th Floor Elevators
4912	Demoniac
4916	Dillinger Four
4917	Atila
4922	Jackson Browne
4923	Elzhi
4924	Estatic Fear
4925	Intestine Baalism
4927	Abbey Lincoln
4929	Ictus
4932	Marlena Shaw
4935	Whitesnake
4936	Calexico
4938	Perfume
4941	Procol Harum
4944	Portico Quartet
4947	Michael Nesmith & The First National Band
4954	Uncle Acid & The Deadbeats
4957	Saturnus
4958	Masters of Reality
4959	조영욱 [Jo Yeong-wook]
4961	Y Society
4968	Virginia Astley
4969	Regina Spektor
4970	S.O.D.
4971	Thrice
4977	Grave
4979	Equilibrium
4981	Robyn Hitchcock and The Egyptians
4985	Cormega
4986	Dennis Brown
4987	矢野顕子 [Akiko Yano]
4990	The Koreatown Oddity
4992	Earth, Wind & Fire
4995	Catharsis
4997	Grave Digger
4998	And Also the Trees
4999	Studio für elektronische Musik des Westdeutschen Rundfunks, Köln & Karlheinz Stockhausen
\.


--
-- Data for Name: connector; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.connector (album_id, artist_id, reldate_id) FROM stdin;
1	1	1
2	2	2
3	3	3
4	1	4
5	5	5
6	6	6
7	2	7
8	8	8
9	9	9
10	10	10
11	8	11
12	12	12
13	13	13
14	14	14
15	1	15
16	16	16
17	5	17
18	18	18
19	19	19
20	20	20
21	21	21
22	22	22
23	23	23
24	8	24
25	25	25
26	3	26
27	27	27
28	28	28
29	29	29
30	30	30
31	8	31
32	32	32
33	2	33
34	34	34
35	35	35
36	36	36
37	37	37
38	19	38
39	10	39
40	40	40
41	41	41
42	42	42
43	43	43
44	35	44
45	22	45
46	46	46
47	47	47
48	19	48
49	35	49
50	50	50
51	51	51
52	18	52
53	53	53
54	32	54
55	55	55
56	56	56
57	57	57
58	57	58
59	59	59
60	60	60
61	61	61
62	62	62
63	63	63
64	53	64
65	65	65
66	66	66
67	67	67
68	27	68
69	69	69
70	70	70
71	71	71
72	72	72
73	8	73
74	74	74
75	10	75
76	76	76
77	10	77
78	18	78
79	8	79
80	80	80
81	35	81
82	82	82
83	83	83
84	84	84
85	80	85
86	86	86
87	87	87
88	10	88
89	89	89
90	90	90
91	91	91
92	55	25
93	93	93
94	76	94
95	63	95
96	96	96
97	72	97
98	59	98
99	16	99
100	100	100
101	67	101
102	102	3
103	83	103
104	104	104
105	105	105
106	106	106
107	107	55
108	34	108
109	107	109
110	110	110
111	111	111
112	16	112
113	113	113
114	114	114
115	115	115
116	116	116
117	117	117
118	27	118
119	119	119
120	28	120
121	121	121
122	122	122
123	123	123
124	30	124
125	125	125
126	126	31
127	127	127
128	37	128
129	129	129
130	130	130
131	131	131
132	84	132
133	133	133
134	80	134
135	135	135
136	136	136
137	137	137
138	138	138
139	2	139
140	140	140
141	141	141
142	65	142
143	143	143
144	144	144
145	61	145
146	13	146
147	3	7
148	148	148
149	149	149
150	150	150
151	151	151
152	152	152
153	43	153
154	37	154
155	10	155
156	156	156
157	157	105
158	158	158
159	83	28
160	160	160
161	161	161
162	162	162
163	163	163
164	164	164
165	165	165
166	166	166
167	167	167
168	168	168
169	36	169
170	170	170
171	171	171
172	172	172
173	173	173
174	174	174
175	175	175
176	131	176
177	16	177
178	178	178
179	179	179
180	131	180
181	18	181
182	182	182
183	119	183
184	184	184
185	185	185
186	186	186
187	1	187
188	188	188
189	189	189
190	190	190
191	191	191
192	192	192
193	193	193
194	194	194
195	35	195
196	196	196
197	166	197
198	198	198
199	89	199
200	126	3
201	201	201
202	202	202
203	137	87
204	19	204
205	157	205
206	57	206
207	1	207
208	208	22
209	55	209
210	37	210
211	82	211
212	3	212
213	213	213
214	214	214
215	215	215
216	19	216
217	217	217
218	218	218
219	56	219
220	220	220
221	221	221
222	222	222
223	170	223
224	116	224
225	225	225
226	226	226
227	227	227
228	168	228
229	194	229
230	53	230
231	231	231
232	232	232
233	233	233
234	110	234
235	65	235
236	236	236
237	237	237
238	168	238
239	28	239
240	240	240
241	241	241
242	156	242
243	89	243
244	50	244
245	245	245
246	246	246
247	247	247
248	248	21
249	249	249
250	127	250
251	251	251
252	46	252
253	131	253
254	254	254
255	255	255
256	256	256
257	257	257
258	227	258
259	259	259
260	260	260
261	261	261
262	262	262
263	263	263
264	16	264
265	265	265
266	266	266
267	37	267
268	125	268
269	269	269
270	262	270
271	2	271
272	272	272
273	18	273
274	274	274
275	83	275
276	276	276
277	277	198
278	185	278
279	279	279
280	280	280
281	156	281
282	40	282
283	117	283
284	111	284
285	285	285
286	286	286
287	66	287
288	288	288
289	2	289
290	16	290
291	291	291
292	292	292
293	293	293
294	294	294
295	295	295
296	86	296
297	297	297
298	298	298
299	299	299
300	42	300
301	301	301
302	302	302
303	303	303
304	304	304
305	231	305
306	306	306
307	69	307
308	308	308
309	309	309
310	306	310
311	311	311
312	312	312
313	127	313
314	152	314
315	315	315
316	316	316
317	260	317
318	318	318
319	237	319
320	320	320
321	321	321
322	322	322
323	323	323
324	324	324
325	325	325
326	326	326
327	327	327
328	328	328
329	329	329
330	330	330
331	331	331
332	110	332
333	326	333
334	334	334
335	335	335
336	336	336
337	337	337
338	328	338
339	237	339
340	340	340
341	182	341
342	342	342
343	343	343
344	1	344
345	274	345
346	346	346
347	347	347
348	46	348
349	349	237
350	350	350
351	351	351
352	352	352
353	353	353
354	62	354
355	355	355
356	356	356
357	357	357
358	186	358
359	359	359
360	360	360
140	140	276
362	240	362
363	363	363
364	364	364
365	365	269
366	117	366
367	175	367
368	368	368
369	369	369
370	370	370
371	19	371
372	372	114
373	113	373
374	194	374
375	233	375
376	376	376
377	202	377
378	37	378
379	379	379
380	380	380
381	381	381
382	110	382
383	383	383
384	227	118
385	385	385
386	386	386
387	191	387
388	388	388
389	389	340
390	390	390
391	391	379
392	392	392
393	393	393
394	394	394
395	395	395
396	396	396
397	143	397
398	398	398
399	390	399
400	400	400
401	401	401
402	279	402
403	403	403
404	404	404
405	360	405
406	406	406
407	407	329
408	408	408
409	409	409
410	410	410
411	163	411
412	126	412
413	413	413
414	414	414
415	415	415
416	416	416
417	417	417
418	418	218
419	419	419
420	420	420
300	421	421
422	422	422
423	423	423
424	424	424
425	425	425
426	426	426
427	363	427
428	428	428
429	66	429
430	430	430
431	431	431
432	432	432
433	173	433
434	434	287
435	435	435
436	91	436
437	437	437
438	438	84
439	439	439
440	62	440
441	441	441
442	442	442
443	443	443
444	121	444
445	445	445
446	446	446
447	447	447
448	27	448
449	449	449
450	450	450
451	50	451
452	172	452
453	453	453
454	454	454
455	231	455
456	456	113
457	457	457
458	114	283
459	459	459
460	35	460
461	461	461
462	462	462
463	463	463
464	13	464
465	465	465
466	291	466
467	84	467
468	59	468
469	469	469
470	391	470
471	71	471
472	472	472
473	473	473
474	321	474
475	475	475
476	435	476
477	477	477
478	241	478
479	479	479
480	168	480
481	172	481
482	482	482
483	483	313
484	484	484
485	469	485
486	486	486
487	487	251
488	414	488
489	489	489
490	34	490
491	220	491
492	89	492
493	493	493
494	410	494
495	495	495
496	233	496
400	497	497
498	76	498
499	499	499
500	160	500
501	161	501
502	502	502
503	503	503
504	504	504
505	505	505
506	506	506
507	507	447
508	178	508
509	509	509
510	510	364
511	511	198
512	512	512
513	445	513
514	514	514
515	302	515
516	13	516
517	517	517
518	518	518
519	519	519
520	520	520
521	16	521
522	111	522
523	523	196
524	277	455
525	525	525
526	365	526
527	527	313
528	528	528
529	65	529
530	392	530
531	18	531
532	56	532
533	533	533
534	534	534
535	535	535
536	294	536
537	537	537
538	391	538
539	539	539
540	19	540
541	306	541
542	534	542
543	312	543
544	291	544
545	545	545
546	546	546
547	547	232
548	548	548
549	172	549
550	550	550
551	551	551
552	303	552
553	277	553
554	554	554
555	241	555
556	556	556
557	557	557
558	558	558
487	559	292
560	125	560
561	561	561
562	16	80
563	563	264
564	303	564
565	565	565
566	566	566
567	567	567
568	568	568
569	569	569
570	570	570
571	571	571
572	572	1
573	65	573
574	574	574
575	575	575
576	172	576
577	91	577
578	578	538
579	575	579
580	409	580
581	581	581
582	582	119
583	106	583
584	569	584
585	425	585
586	586	586
587	502	587
489	489	588
589	589	589
590	590	463
591	591	591
592	592	393
593	593	232
594	594	594
595	595	595
596	596	596
597	597	597
487	598	598
599	489	599
600	600	600
601	601	601
602	248	602
603	603	603
604	90	604
605	605	605
606	606	170
607	279	607
608	608	608
609	609	232
610	213	610
611	611	611
612	612	564
613	60	613
614	614	614
615	346	615
616	616	616
617	617	617
618	618	618
619	168	619
620	620	620
566	621	621
622	69	622
623	623	623
624	624	624
625	625	625
626	626	626
627	10	627
628	393	628
629	629	629
630	272	630
631	110	631
632	189	632
633	633	633
634	634	634
635	279	635
636	450	636
637	637	637
638	638	638
639	370	639
640	640	7
408	408	641
642	642	642
643	643	643
644	71	644
645	645	332
646	601	646
647	316	647
648	648	246
649	173	649
650	143	650
651	74	651
652	652	652
653	653	653
654	446	654
655	655	655
656	16	656
657	657	657
658	658	462
659	659	659
660	295	660
661	661	661
662	662	662
663	663	663
664	664	664
665	665	665
666	352	666
667	102	667
668	668	668
669	280	669
670	629	670
671	306	671
672	672	672
140	673	673
674	87	674
675	675	675
676	161	676
677	449	56
678	420	678
679	679	661
680	680	680
681	42	681
682	682	329
683	683	683
684	684	455
685	685	685
686	675	686
687	352	687
688	688	688
689	393	689
690	690	251
691	691	691
692	89	692
693	168	693
694	67	694
695	241	264
696	696	696
697	697	697
698	698	698
699	699	406
700	700	700
701	701	701
702	702	702
703	246	703
704	704	704
705	705	705
706	706	706
707	707	707
708	708	708
709	586	198
710	135	710
711	156	711
712	612	712
713	713	329
714	13	714
715	63	715
716	716	716
717	335	717
718	718	718
719	719	719
720	720	720
721	721	721
722	722	722
723	723	463
724	724	256
574	594	725
726	581	726
727	484	727
728	227	728
729	729	729
730	76	730
731	731	731
732	732	691
733	288	543
734	152	734
735	663	735
736	359	736
737	737	737
738	738	738
739	739	739
740	740	740
741	741	741
742	227	742
743	608	743
744	744	744
745	586	198
746	746	746
747	747	747
748	748	748
749	225	749
750	750	750
751	751	751
752	69	752
753	10	753
754	754	754
755	755	297
756	756	756
757	757	134
758	758	758
759	260	759
760	760	760
761	761	761
762	431	762
763	591	763
764	518	764
765	765	765
766	766	685
767	767	767
768	768	768
769	280	134
770	770	770
771	771	356
772	772	772
773	773	773
774	774	774
775	27	775
776	776	776
777	777	777
258	391	740
779	779	779
780	780	780
781	781	781
782	413	782
783	783	783
784	784	784
785	785	785
786	428	786
787	259	403
788	788	788
789	771	789
790	790	790
791	791	791
792	346	792
793	793	793
794	188	794
795	65	795
796	796	796
797	589	797
798	50	798
799	799	799
800	185	800
801	757	801
802	802	802
803	803	803
804	249	804
805	805	805
806	806	251
807	807	807
808	808	808
809	809	809
400	810	810
811	43	811
812	812	812
813	813	813
814	299	814
815	379	815
816	816	816
817	817	70
818	818	818
819	43	819
820	820	820
821	821	821
822	822	822
823	823	823
824	30	824
825	65	825
826	675	826
827	827	827
828	828	828
829	829	829
830	830	830
831	831	231
832	832	832
833	126	833
834	642	834
835	835	835
836	836	836
837	837	837
838	838	838
839	839	839
840	840	840
841	841	841
842	586	842
843	343	843
844	844	844
845	845	845
846	846	846
847	248	847
848	443	848
849	849	849
850	437	432
851	851	774
852	852	852
853	853	539
854	854	854
855	127	379
856	856	621
857	623	857
858	858	858
859	189	859
860	790	860
861	861	861
862	465	862
863	863	198
864	188	864
865	865	865
866	866	305
867	867	867
868	868	868
869	869	728
870	870	870
871	871	138
872	872	292
873	697	231
874	874	874
875	875	560
876	876	685
877	877	877
878	878	878
879	254	283
880	777	880
881	664	198
882	882	882
883	883	883
884	770	884
885	612	424
886	185	137
887	887	887
888	363	888
889	445	889
890	890	890
891	248	891
892	892	892
893	518	893
894	894	894
895	318	895
896	512	896
897	178	897
898	19	898
899	589	899
900	900	900
901	901	670
902	902	116
903	903	903
904	376	904
905	236	905
906	906	72
907	907	907
908	835	908
909	581	909
910	151	910
911	151	911
912	912	912
913	202	377
914	914	406
915	915	915
916	916	491
917	302	917
918	419	918
919	919	302
920	920	756
921	921	921
922	922	922
923	299	923
924	924	924
925	925	925
926	127	656
927	489	447
928	928	928
929	929	929
930	930	930
931	89	931
932	517	932
933	359	341
934	934	109
935	935	935
936	936	936
937	854	937
938	773	406
939	939	939
940	780	940
941	664	740
942	942	630
943	943	943
944	561	944
945	945	945
946	946	946
947	947	947
948	948	691
949	381	949
766	950	950
951	951	951
952	18	952
953	936	953
954	698	954
955	955	774
956	34	956
957	836	957
958	312	462
959	393	959
960	437	134
961	961	292
962	419	296
963	963	455
964	964	964
965	171	965
966	511	406
967	346	967
968	968	968
969	91	969
970	143	970
971	971	971
972	55	972
973	973	973
974	218	899
975	975	975
976	976	976
977	977	977
978	978	978
979	557	979
980	608	589
981	981	596
982	19	298
983	983	959
984	984	943
985	722	985
986	986	986
987	706	137
988	988	988
989	989	989
990	30	990
991	991	986
992	976	992
993	993	993
994	994	994
995	995	470
996	996	996
997	582	997
998	998	998
999	999	999
1000	1000	313
1001	1001	1001
1002	916	1002
1003	772	985
1004	465	1004
1005	201	1005
1006	114	950
1007	1007	611
1008	1008	1008
1009	648	1009
1010	1010	313
1011	1011	489
1012	1012	332
1013	59	1013
1014	1014	1014
1015	1015	1015
1016	63	1016
1017	719	1017
1018	1018	1018
1019	1019	1019
1020	208	1020
1021	1021	1021
1022	1022	1022
1023	1023	455
1024	638	1024
1025	279	1025
1026	1026	1026
1027	301	1027
1028	1028	1028
1029	1029	1029
1030	231	202
1031	1031	231
1032	964	379
1033	1033	1033
1034	302	789
1035	12	1035
1036	53	1036
1037	951	1037
1038	1038	455
1039	326	1039
1040	160	13
1041	1041	1041
1042	1042	1042
1043	820	1043
1044	280	1044
1045	1045	1045
1046	1046	1046
1047	1047	503
1048	841	1048
1049	349	1049
1050	1050	1050
1051	1051	1051
1052	1052	308
1053	1053	196
740	740	231
1055	1055	1055
1056	1056	1056
1057	1057	1057
1058	1058	1058
1059	1059	1059
1060	1060	305
1061	1061	1061
1062	1062	231
1063	1063	1063
1064	1064	1064
1065	472	1065
1066	1066	1066
1067	1067	1067
1068	1068	1068
1069	298	685
1070	1070	1070
1071	1071	1071
1072	1072	1072
1073	326	1073
1074	1074	1019
1075	900	268
1076	1076	1076
1077	477	1077
1078	1078	1078
1079	484	826
1080	1080	1080
1081	900	123
1082	1082	1082
1083	568	753
1084	1028	1084
1085	854	1085
1086	30	1086
1087	66	420
1088	431	1088
1089	1089	1089
1090	19	1090
1091	1091	894
1092	1092	923
1093	1093	1093
1094	1094	1094
1095	1095	1095
1096	370	1096
1097	589	1097
1098	1098	377
1099	1099	1099
1100	675	1100
1101	1101	406
1102	1102	1102
1103	19	1103
1104	696	1104
1105	1105	1105
1106	594	133
1107	1107	1107
1108	1108	1108
1109	1109	1109
1110	1110	1110
1111	1111	447
1112	589	1112
1113	1113	1113
1114	437	1114
1115	1115	250
1116	773	198
1117	1117	298
1118	1118	977
1119	1119	1119
1120	1120	1120
1121	1121	190
1122	469	1122
1123	696	1123
1124	799	1124
1125	1057	1125
1126	1126	184
1127	1127	1127
1128	697	202
1129	1129	1129
1130	1130	1130
1131	167	1131
1132	620	1132
1133	1133	1133
1134	409	1107
1135	389	1135
1136	1136	1136
1137	1137	163
1138	1138	1138
1139	870	1139
1140	323	489
1141	1141	1141
1142	1142	1142
1143	1143	1143
1144	999	491
1145	934	1145
1146	1146	664
1147	1147	1147
1148	1148	1148
1149	1149	1149
1150	262	1150
1151	995	1151
1152	127	849
1153	1153	462
1154	1154	119
1155	1155	1155
1156	1156	903
1157	86	1033
1158	1158	1158
1159	409	738
1160	525	1160
1161	1161	1161
1162	1162	1162
1163	1099	1163
1164	838	1164
1165	805	1165
1166	805	1166
1167	1021	1167
1168	1168	489
1169	1169	691
1170	1029	440
1171	983	959
1172	737	1172
1173	1173	313
1174	218	1174
1175	257	1175
1176	355	1176
1177	1177	1177
1178	1178	43
1179	255	633
1180	1110	1180
1181	1181	664
1182	179	685
1183	1183	1183
1184	836	1184
1185	1185	1185
1186	376	489
1187	1187	379
1188	312	1188
1189	861	1189
1190	116	1190
1191	875	1191
1192	1192	1192
1193	837	342
1194	861	1194
1195	1195	1195
1196	1196	379
1197	445	1197
1198	1099	1198
1199	780	1199
1200	1200	232
1201	1201	691
1202	1	1202
1203	105	1203
1204	1204	910
1205	844	1205
1206	1206	1206
1207	934	1207
1208	1208	971
1209	1209	1209
1210	1210	461
1211	771	1211
1212	995	685
1213	484	1213
1214	265	1214
1215	1215	1215
1216	1216	816
1217	89	1217
1218	35	681
1219	1219	774
1220	1220	1220
1221	839	1221
1222	263	1222
1223	1223	1223
1224	72	87
1225	456	1225
1226	1226	232
1227	1227	1227
1228	1062	455
1229	221	1229
1230	260	1230
1231	1231	1231
1232	61	1232
1233	1233	1233
1234	1234	1234
1235	1183	1235
1236	1236	1236
1237	1147	1237
1238	323	1238
1239	51	1239
1240	1240	463
1241	35	1241
1242	1242	224
1243	1243	1243
1244	475	187
1245	1245	1245
1246	1246	461
1247	1247	1247
1248	1248	232
1249	1119	1249
1250	1250	1250
1251	870	712
1252	1252	1252
1253	1253	551
1254	1254	1254
1255	236	1255
1256	1256	1256
1257	463	1257
1258	175	1258
1259	1259	1259
1260	1260	1260
1261	1261	1261
1262	1262	1262
1263	571	1263
1264	809	1264
1265	215	1265
1266	312	1266
1267	137	1267
1268	1268	1268
1269	1269	1269
1270	1204	1270
1271	865	1271
1272	609	220
1273	297	1273
1274	747	1274
1275	1275	1275
1276	1276	1276
1277	1277	1277
1278	328	1278
1279	1279	1279
1280	1280	1280
1281	945	1162
1282	1282	685
1283	263	993
1284	218	1284
1285	443	1285
1286	493	1286
1287	1287	1287
1288	1288	1288
1289	578	1289
1290	1290	1290
1291	1291	842
1292	1292	1292
1293	484	1293
1294	1294	1294
1295	1295	1295
1296	1120	1296
1297	1297	1297
1298	1200	1298
1299	1299	1299
1300	156	1300
1301	1301	1301
1302	1302	462
1303	1303	1303
1304	1304	137
1305	1305	1305
1306	1306	964
1307	276	113
1308	461	1308
1309	1309	685
1310	1310	1310
1311	1311	198
1312	1312	1056
1313	1313	1313
1314	323	1314
1315	34	1315
1316	1316	1316
1317	227	1317
1318	1318	741
1319	1319	656
1320	66	1320
1321	152	12
1322	227	929
1323	1323	1323
1324	1277	1324
1325	1325	179
1326	1326	1326
1327	1327	909
1328	1328	1328
1329	1329	149
1330	1330	1330
1331	964	761
1332	1332	251
1333	6	1333
1334	1334	1334
1335	89	1335
1336	1028	1336
1337	1337	489
1338	1338	1338
1339	586	231
1340	1340	503
1341	449	1341
1342	568	1342
1343	1343	1343
1344	1325	586
1345	1345	1345
1346	1346	1346
1347	936	691
1348	1348	489
1349	1349	406
1350	1350	1350
1351	353	1351
1352	1352	1352
1353	1353	1353
1354	1354	1354
1355	35	61
1356	222	1257
1357	186	1357
1358	1105	1358
1359	1359	1359
1360	1360	1360
1361	1110	1361
1362	1362	1362
1363	1363	1363
1364	1064	432
1365	1365	1365
1366	509	251
1367	84	1367
1368	1220	1368
1369	685	1369
1370	1370	340
1371	586	1371
1372	1372	685
1373	1373	1373
1374	1374	251
1375	114	800
1376	1376	25
1377	1377	220
1378	510	1378
1379	143	1379
1380	569	1380
1381	1277	1381
1382	1382	1382
1383	1383	1383
1384	1384	1384
1385	1385	1385
1386	1386	539
1387	869	1387
1388	186	1388
1389	1389	53
1390	1390	685
1391	127	462
1392	1392	1392
1393	1346	1393
1394	1394	416
1395	1395	198
1396	19	1396
1397	512	1397
1398	1398	1398
1399	790	1399
1400	19	1400
1401	1305	1401
1402	1294	1014
1403	1403	1403
1404	1404	551
1405	1405	1405
1406	1406	1406
316	316	1407
1408	173	1408
1409	1409	1409
1410	280	1410
1411	1411	1411
1412	1412	1412
1413	122	47
1414	503	1414
1415	777	1415
1416	117	1416
1417	945	1417
1418	1418	1418
1419	330	1419
1420	836	1420
1421	590	1008
1422	1277	1422
1423	1423	691
1424	1360	1424
1425	1147	406
1426	445	1426
1427	1427	801
1428	1428	1428
1429	1429	1429
1430	596	1430
1431	1431	1431
1432	1432	1432
1433	74	1433
1434	1434	1434
1435	1435	329
1436	1436	1436
1437	1345	1437
1438	1438	1438
1439	1439	1439
1440	1440	1440
1441	1441	1441
1442	1442	1442
1443	1443	1443
1444	178	1444
1445	1445	1445
1446	89	1446
1447	1245	1447
1448	1196	1448
1449	1449	424
1450	1252	1450
1451	1451	251
1452	1452	1452
1453	1362	1453
1454	1454	1417
1455	1215	888
1456	846	1456
1457	475	1457
1458	151	1458
1459	126	1459
1460	1412	1460
1461	829	1461
1462	1462	1462
1463	1120	1107
1464	1464	137
1465	1465	231
1466	1466	1466
1467	1467	1467
1468	1468	1468
1469	461	379
1470	779	403
1471	129	1471
1472	943	1314
1473	16	439
1474	1474	406
1475	629	1475
1476	1476	298
1477	1477	1295
1478	1478	1161
1479	1479	1479
1480	62	1480
1481	1481	1481
1482	1482	1482
1483	1113	1483
1484	1178	1484
1485	1485	1485
1486	1486	1486
1487	1487	1487
1488	1110	447
1489	586	703
1490	114	685
1491	1491	1491
1492	1492	918
1493	189	1493
1494	1094	1494
1495	1495	1495
1496	356	1496
1497	1497	1497
1498	719	1498
1499	1499	1499
1500	469	382
1501	568	1501
1502	1502	1502
1503	1503	1397
1504	1504	1504
1505	1505	1105
1506	1506	1506
1507	1507	1507
1508	66	1508
1509	688	1444
1510	1510	1510
1511	757	1511
1512	262	1512
1513	1513	1513
1514	640	10
1515	236	1515
1516	1516	1516
1517	626	250
1518	976	1518
1519	1519	1519
1520	1520	656
1521	945	1521
1522	1522	1522
1523	1523	1523
1524	1524	1524
1525	1525	1525
1526	1136	1526
1527	393	1527
1528	368	1528
1529	1529	1529
1530	1383	1462
1531	1531	1531
1532	1532	1532
1533	1533	1533
1534	1534	1453
1535	1535	1236
1536	1536	1236
1537	82	602
1538	1041	223
1539	964	1539
1540	1107	594
1541	629	947
1542	363	1542
1543	1543	377
1544	1334	67
1545	96	1545
1546	548	1546
1547	330	1547
1548	465	1548
1549	328	1549
1550	836	1550
1551	89	1446
1552	1412	1071
1553	840	432
1554	1554	1554
1555	1012	1555
1556	1556	1556
1557	1557	1557
1558	1476	1558
1559	1559	1559
1560	809	1560
1561	994	298
1562	1562	1562
1563	1563	1563
1564	1564	794
1565	1565	1565
1566	1566	1143
1567	840	473
1568	1568	691
1569	166	1569
1570	1570	1570
1571	1571	1571
1572	401	1572
1573	1573	237
1574	1183	1574
1575	601	1575
1576	1576	1576
1577	1577	936
1578	1578	1578
1579	1579	1579
1580	1580	476
1581	779	1056
1582	1582	685
1583	1583	1453
1584	1584	1584
1585	1585	1192
1586	1586	1586
1587	1587	1151
1588	1588	1588
1589	1082	1589
1590	1590	140
1591	877	1591
299	986	1592
1593	1593	220
1594	182	729
1595	1595	1595
1596	1596	551
1597	1597	849
1598	877	1598
1599	1599	1599
1600	586	1600
1601	731	1601
1602	1602	1602
1603	916	1603
1604	1220	1604
1605	1605	752
1606	1606	1056
1607	1607	224
1608	1439	1608
1609	1609	1609
1610	723	1610
1611	1611	1611
1612	1612	1612
1613	1056	560
518	518	1614
1615	1204	1615
1616	1616	426
1617	1519	1617
1618	441	1618
1619	1227	1109
1620	1620	377
1621	1621	1621
1622	1485	1462
1623	1623	685
1624	1624	691
1625	1625	1625
1626	93	1626
1627	935	1627
1628	1628	406
1629	20	1629
1630	442	1630
1631	1631	1631
1632	1632	1632
1633	1633	455
1634	1303	1343
1635	1635	705
1636	277	551
1637	1637	1637
1638	1343	1638
1639	276	953
1640	1640	1640
1641	461	813
1642	1642	1642
1643	1643	1643
1644	1644	251
1645	1645	1645
1646	251	329
1647	1647	1647
1648	1648	1648
1649	393	1649
1650	771	1650
1651	1120	1651
1652	1652	1652
1653	401	1653
1654	1654	1584
1655	1655	1655
1656	1656	1461
1657	51	1657
1658	827	1658
1659	934	1659
1660	1353	1660
1661	1661	359
1662	1662	1662
1663	356	1416
1664	1664	800
1665	1665	1665
1666	1089	1666
1667	557	1667
1668	1668	1410
1669	1072	1669
1670	1670	1670
1671	1671	1671
1672	973	1672
1673	1673	833
1674	1674	1674
1675	322	1675
1676	1676	1676
1677	231	398
1678	1078	1678
1679	1679	1679
1680	1129	1680
1681	999	87
1682	401	1682
1683	1683	1683
1684	302	716
1685	586	1685
1686	1503	1686
1687	1687	888
1688	1688	802
1689	1689	1689
1690	1654	1690
1691	1691	1691
1692	1692	1692
1693	612	1367
1694	1694	1694
1695	1695	707
1696	1696	1696
1697	1697	462
1698	1698	1698
1699	1699	232
1700	1700	1453
1701	127	250
1702	1702	1702
1703	1703	1703
1704	1704	1704
1705	1705	800
1706	1706	455
1707	1707	1707
1708	1149	313
1709	1709	455
1710	1058	1710
1711	1711	1711
1712	1712	1712
1713	1713	1713
1714	1714	455
1715	1715	292
1716	493	1014
1717	1717	1717
1718	1718	538
1719	1719	1651
1720	127	1720
1721	323	1721
1722	93	1722
1723	1723	1723
1724	1724	1724
1725	46	1725
1726	1683	1726
1727	554	621
1728	1728	1728
1729	1729	1729
1730	1730	470
1731	1731	1731
1732	1732	1732
1733	1733	1733
1734	1734	521
1735	1735	1735
1736	784	1736
1737	1737	903
1738	1738	251
1739	1739	1739
1740	1740	691
1741	1741	1741
1742	594	1120
1743	1743	1743
1744	1744	1113
1745	682	198
1746	1746	1691
1747	1747	198
1748	1748	1748
1404	1749	1749
1750	1465	1127
1751	1751	416
1752	1752	1752
1753	163	144
1754	1363	1754
1755	1755	1755
1756	1756	1666
1757	1757	1757
1758	261	1758
1759	233	1759
1760	74	1760
1761	1761	1761
1762	1723	1762
1763	1763	877
1764	1764	611
1765	684	685
1766	1766	1539
1767	1767	1767
1768	1768	1768
1769	1769	182
1770	533	1770
1771	1082	1771
1772	1772	1772
1773	1773	551
1774	1774	1521
1775	1596	329
1776	1776	712
1777	1777	1777
1778	1778	1778
1779	20	1779
1780	1780	761
1781	1781	944
1782	1782	1782
1783	723	150
1784	1709	685
1785	1785	1785
1786	141	1786
1787	1787	691
1788	751	1788
1789	568	1789
1790	1790	1790
1791	605	1791
1792	1792	1792
1793	1326	1793
1794	1794	232
1795	1795	179
1796	1147	1796
1797	1445	1797
1798	1798	1320
1799	1799	231
1800	1800	1640
1801	788	1801
1802	1802	800
1803	1803	1803
1804	1804	1804
1805	114	1014
1806	1418	1806
1807	1807	1807
1808	1808	539
1809	655	1809
1810	1583	504
1811	1811	231
1812	1812	1812
1813	1813	849
1814	1814	1814
1815	1815	1815
1816	1816	1816
1817	1817	305
1818	1818	1818
1819	1819	1680
1820	1820	1815
1821	1821	1513
1822	1822	1822
1823	1823	1823
1824	790	1824
1825	117	1825
1826	1383	964
1827	729	406
1828	1828	1828
1829	1829	1267
1830	1830	1830
1831	1831	1831
1832	1832	598
1833	61	1833
1834	233	1834
1835	1326	1835
1836	280	1836
1837	1837	1837
1838	1838	473
1839	1839	1839
1840	1384	1485
1841	1841	1841
1842	1842	1842
1843	385	1843
1844	1844	1844
1845	1584	1287
1846	231	406
1847	1227	1847
1848	1848	1848
1849	1849	1849
1850	489	552
1851	1851	1851
1852	981	1852
1853	431	1853
1854	365	1854
1855	1855	1855
1856	1018	1856
1857	113	1857
1858	1858	840
1859	1859	1859
1860	1147	1860
1861	1861	305
1862	586	1862
1863	422	1863
1864	410	1748
1865	1865	1865
1866	353	1866
1867	1867	1408
1868	1868	1868
1869	1869	463
1870	1870	1870
1871	1855	1871
1872	620	1872
1873	16	1109
1874	1606	1874
1875	805	1875
1876	964	1876
1877	1877	1877
103	1878	292
1879	1879	250
1880	1880	305
1881	1881	1881
1882	1772	923
1883	1687	1761
566	1884	1884
1885	1885	1885
1886	1412	1886
1887	1887	1887
1888	1888	862
1889	1330	1815
1890	1890	1890
1891	1891	1891
1892	111	247
1893	706	800
1894	1894	326
1895	8	1895
1896	1896	1896
1897	567	1897
1898	441	1898
1899	1899	445
1900	1554	1900
1901	1901	1901
1902	1902	1902
1903	1903	1903
1904	1353	1904
1905	1905	1905
1906	1628	305
1907	1776	1907
1908	69	1713
1909	1384	1909
1910	392	1910
1911	280	1911
1912	999	1912
1913	1913	1913
1914	1637	1914
1915	1915	1915
1916	1916	1645
1917	1917	685
1918	1384	455
1919	1919	1919
1920	506	1114
1921	1409	915
1922	995	329
1923	906	1056
1924	1924	1924
1925	1196	149
1926	1698	1926
1927	254	1927
1928	1928	514
1929	1929	1929
1930	586	1930
1931	1434	528
1932	1932	685
1933	1933	1933
1934	1934	1934
1935	1935	1935
1936	1936	1936
1937	1071	439
1938	1343	625
1939	1732	1939
1940	1940	1442
1941	1941	1462
1942	255	774
1943	1943	1352
1944	1944	1944
1945	1945	298
1946	1946	1946
1947	1947	1947
1948	82	1948
1949	1949	1949
1950	570	1950
1951	1951	505
1952	1936	1952
1953	1953	1953
1954	1954	1954
1955	346	1955
1956	1956	1956
1957	1957	163
1958	8	1958
1959	1959	1959
1960	251	455
1961	1961	251
1962	1962	1962
1963	220	406
1964	1503	1964
1965	1965	250
1966	1966	888
1967	186	1967
1968	1968	447
1969	1969	1969
1970	1464	1806
1971	1971	1971
1972	1723	112
1973	1973	1973
1974	1974	1974
1975	1975	1975
1976	1976	1976
1977	3	1977
1978	1978	1978
1979	16	840
1980	1980	251
1981	1349	251
1982	1982	198
1983	265	1983
1984	1984	1984
1985	839	437
1986	1466	691
1987	363	1987
1988	1988	1414
1989	640	1989
1990	1346	1447
1991	19	1991
1992	241	1063
1993	1993	1993
1994	1994	1994
1995	1995	406
1996	1996	1996
1997	1398	1431
1998	168	1998
1999	510	1999
2000	63	2000
2001	1717	226
2002	2002	72
2003	21	836
2004	2004	1049
2005	1802	659
2006	2006	1592
2007	2007	2007
2008	2008	943
2009	2009	2009
2010	946	2010
2011	2011	2011
2012	2012	2012
2013	784	254
2014	2014	514
2015	963	551
2016	2016	2016
2017	403	138
2018	2018	463
2019	1146	1416
2020	202	198
2021	1535	2021
2022	2022	2022
2023	1158	2023
2024	1467	296
2025	2025	2025
2026	1279	2026
2027	2027	2027
2028	413	2028
2029	2029	2029
2030	1855	2030
2031	2031	467
2032	2032	2032
2033	1531	1592
2034	1204	2034
2035	324	943
2036	2036	2036
2037	771	2037
2038	2038	842
2039	262	781
2040	2040	2040
2041	2041	685
2042	408	618
2043	2043	473
2044	1435	1333
2045	2045	935
2046	62	2046
2047	323	2047
2048	1476	1647
2049	2049	2049
2050	929	2050
2051	194	2051
2052	2052	2052
2053	161	2053
2054	2054	2054
2055	1802	801
2056	2056	598
2057	2057	2057
2058	1694	169
2059	355	2059
2060	2060	685
2061	2061	2061
2062	2062	2062
2063	2063	2063
2064	2064	2057
2065	2065	231
2066	1445	1045
2067	2067	2067
2068	2068	2068
2069	2069	560
2070	3	2070
2071	326	2071
2072	2072	2072
2073	2073	491
2074	2074	239
2075	570	2075
2076	1195	2076
2077	1781	2077
2078	2078	2078
2079	2079	813
2080	2080	2080
2081	2081	521
2082	324	2082
2083	2083	2083
2084	2084	1848
2085	586	2085
2086	2086	2086
2087	2087	551
2088	2088	346
2089	2089	2089
2090	1890	329
2091	2091	2091
2092	2092	2092
2093	2093	2093
2094	1277	2082
2095	2095	2095
2096	2096	2096
2097	2097	329
2098	2098	2098
2099	2099	2099
2100	1953	2100
2101	450	1976
2102	2102	1874
2103	2103	2103
2104	706	2104
2105	2105	2105
2106	994	1586
2107	2107	2107
2108	2108	2108
2109	2109	598
2110	2110	2110
2111	129	2111
2112	1045	373
2113	984	2113
2114	2114	2114
2115	601	2115
2116	1466	1113
2117	2117	2117
2118	1181	2118
2119	1439	2119
2120	2120	179
2121	2121	1056
2122	2122	2122
2123	586	2123
2124	2124	406
2125	2125	2125
2126	168	2126
2127	914	251
2128	2128	729
2129	2129	1891
2130	2130	840
2131	2131	1471
2132	1074	2132
2133	2133	2133
2134	784	2134
2135	2135	1978
2136	43	1632
2137	2137	2011
2138	2138	2138
2139	2139	298
2140	2140	903
2141	1310	462
2142	1056	2142
2143	299	138
2144	2062	2144
2145	2145	2145
2146	878	2146
2147	2147	329
2148	1352	2148
2149	2149	2149
2150	2150	2150
2151	2151	1586
2152	2152	1735
2153	16	1812
2154	1973	2154
2155	1520	1831
2156	8	2156
2157	131	2157
2158	2158	2158
2159	2159	2159
2160	2160	2160
2161	2161	2161
2162	1729	2162
2163	1913	2163
2164	255	377
2165	2165	2165
2166	2166	329
2167	2167	251
2168	2168	2168
2169	2169	2169
2170	1709	1236
2171	298	813
2172	704	2172
2173	359	2173
2174	2174	2174
2175	126	244
2176	839	85
2177	2130	1267
2178	2178	398
2179	1919	2179
2180	2180	439
2181	2181	2181
2182	2182	813
2183	170	2183
2184	2184	2184
2185	2185	716
2186	89	2186
2187	2187	2187
2188	2188	2188
2189	2189	834
2190	2190	1354
2191	2191	611
2192	439	80
2193	1411	2193
2194	461	774
2195	2195	2195
2196	2196	2196
2197	1585	691
2198	2198	656
2199	2199	2199
2200	2200	829
2201	2201	2201
2202	173	2202
2203	1668	2203
2204	2204	2052
2205	2205	435
2206	770	2206
2207	2207	2207
2208	1277	2208
2209	2209	2209
2210	2120	1056
2211	2211	1815
2212	2212	1515
2213	1593	379
2214	36	2214
2215	175	2215
2216	708	599
2217	2217	2217
2218	2218	2218
2219	2219	321
2220	1519	893
2221	2221	2221
2222	2222	2222
2223	2223	455
2224	2224	1904
2225	2225	579
2226	2226	2226
2227	2227	2227
2228	1010	198
2229	1384	1284
2230	2230	2230
2231	1418	1647
2232	1585	2232
2233	2233	406
2234	2234	539
2235	2235	685
2236	1752	496
2237	2237	1295
2238	1487	621
2239	2239	2239
2240	571	2240
2241	2241	198
2242	69	2242
2243	2128	109
2244	2244	2244
2245	2245	1004
2246	2062	2246
2247	2247	2247
2248	2248	2248
2249	2249	2249
2250	1078	2250
2251	2251	2251
2252	1798	2252
2253	409	2253
2254	2254	2254
2255	2255	621
2256	2256	2256
2257	2257	2257
2258	1683	1574
2259	2259	2259
2260	1554	2260
2261	2261	251
2262	113	2262
2263	2263	2263
2264	2264	231
2265	1130	1844
2266	2266	1114
2267	2267	2267
2268	2268	140
2269	504	2269
2270	2270	2270
2271	640	2271
2272	2272	538
2273	2273	2273
2274	2274	2274
2275	2275	2275
2276	2276	2276
2277	1245	338
2278	2278	1113
2279	2279	829
2280	1107	2280
2281	2281	462
2282	2282	119
2283	2283	2283
2284	2284	2284
2285	2285	2285
2286	2286	2286
2287	1502	231
2288	1654	2288
2289	1107	1725
2290	231	198
2291	1751	2291
2292	2292	2292
2293	790	2293
2294	986	1513
2295	2295	1129
2296	663	2296
2297	2297	761
2298	2151	298
2299	2299	1383
2300	2300	2300
2301	545	2301
2302	1571	243
2303	2303	2303
2304	2304	2304
2305	2305	2305
2306	484	703
2307	1365	2307
2308	1001	2308
2309	1637	2309
2310	2310	2310
2311	355	2311
2312	360	2312
2313	2095	2313
2314	744	2314
2315	2315	2315
2316	2316	2316
2317	2317	970
2318	809	2318
2319	1831	406
2320	658	2320
2321	2321	2321
2322	2322	621
2323	756	2323
2324	1033	2324
2325	964	2325
2326	2326	1127
2327	2043	1724
2328	2328	232
2329	2329	2329
2330	2330	305
2331	2331	489
2332	930	2332
2333	233	2333
2334	2334	1287
2335	172	604
2336	807	2336
2337	1631	2337
2338	2338	971
2339	2339	2339
2340	2340	2340
2341	776	2341
2342	2342	2342
2343	2343	2343
2344	2344	2344
2345	221	2345
2346	640	2346
2347	2347	2347
2348	185	379
2349	419	2349
2350	493	2350
2351	2351	2351
2352	601	2352
2353	1072	2353
2354	1870	1683
2355	2355	2355
2356	2356	2356
2357	2357	2357
2358	1798	2358
2359	2359	406
2360	2360	66
2361	2361	406
2362	2362	406
2292	603	1724
2364	2364	2364
2365	2365	2365
2366	2366	2366
2367	2367	2367
2368	803	283
2369	1019	2369
2370	186	2082
2371	2371	153
2372	2372	2372
2373	2373	1556
2374	993	716
2375	2375	251
2376	1732	2376
2377	2377	406
2378	2378	406
2379	363	2379
2380	581	1793
2381	2381	2381
2382	537	1236
2383	2383	2383
2384	2384	2384
2385	1954	2385
2386	368	2386
2387	241	1462
2388	2388	2388
2389	1359	2389
2390	1246	2390
2391	1346	2209
2392	2392	838
2393	1740	1113
2394	609	1912
2395	2395	849
2396	2396	2396
2397	586	2397
2398	1665	2398
2399	2399	2346
2400	259	2400
2401	2401	359
2402	2402	2402
2403	1590	2403
2404	2404	2404
2405	1798	1384
2406	1798	2406
2407	2407	447
2408	2408	1723
2409	2409	1487
2410	2410	2410
2411	2411	2411
2412	2412	2412
2413	35	2413
2414	2414	2414
2415	2415	2415
2416	2416	87
2417	1764	945
2074	2418	2418
2419	2419	2419
2420	1332	250
2421	495	2421
2422	1042	943
2423	357	2423
2424	2424	462
2425	2249	2425
2426	844	2426
2427	2427	232
2428	2428	2428
2429	2429	2429
2430	838	2430
2431	2404	2431
2432	2432	2432
2433	2433	329
2434	2434	455
2435	2435	2435
2436	2436	1461
2437	2437	302
2438	746	2438
2439	2439	2439
2440	2440	2440
2441	227	1024
2442	575	2442
2443	311	2443
2444	2205	2444
2445	1260	2445
2446	2446	2446
2447	2447	1113
2448	2448	2448
2449	2449	2449
2450	185	1313
2451	1021	2451
2452	2452	2122
2453	1869	150
2454	2454	2454
2455	2375	406
2456	901	705
2457	477	812
2458	2458	2458
2459	2459	2459
114	1640	1862
2461	2137	925
2462	2462	2462
2463	1570	2463
2464	2464	2464
2465	2465	2465
2466	771	2466
2467	1588	2467
2468	349	599
2469	2469	2469
2470	2470	2470
2471	2471	1036
2472	648	2472
2473	2473	772
2474	586	473
2475	351	2475
2476	2476	2476
2477	1056	2477
2478	2478	2478
2479	1772	801
2480	2032	2480
2481	2481	668
2482	2482	251
2483	771	2483
2484	2481	691
2485	439	2104
2486	1311	251
2487	2487	2487
2488	157	2488
2489	1250	222
2490	2490	455
2491	589	2491
2492	274	2492
2493	2493	2493
2494	2494	342
2495	2495	85
2496	2496	1028
2497	892	2497
2498	2356	2498
2499	2499	198
2500	1107	1381
2501	2501	198
2502	2502	551
2503	395	2435
2504	1326	2504
2505	981	2505
2506	2506	2506
2507	1916	2104
2508	2508	1113
2509	363	2509
2510	260	2510
2511	129	2511
2512	2512	2512
2513	2513	2513
2514	2514	2514
2515	502	2345
2516	592	2516
2517	2517	2517
2518	1220	2518
2519	2356	2519
2520	1118	2520
2521	2521	455
2522	2522	2522
2523	706	1815
2524	126	2524
2525	323	2525
2526	2526	903
2527	2527	2527
2528	1867	2528
2529	274	2179
2530	442	2530
2531	2531	1471
2532	312	2532
2533	1953	2533
2534	2534	2534
2535	2535	2535
2536	757	1063
2537	2537	2309
2538	2538	2538
2539	2539	329
2540	2540	514
2541	2541	2541
2542	1051	279
2543	2543	691
2544	1739	2544
2545	263	2545
2546	465	2546
2547	2547	114
2548	906	838
2549	356	1762
2550	586	2550
2551	1107	1109
2552	2552	546
2553	2553	2553
2554	1868	2554
2555	2555	2555
2556	2556	1096
2557	2557	2557
2558	1769	2558
2559	1867	2559
2560	870	2560
2561	2514	2561
2562	263	716
2563	984	970
2564	2080	2564
2565	2027	1236
2566	1535	691
2567	221	584
2568	2568	2568
2569	1269	2569
2570	2570	2570
2571	2571	2571
2572	2572	398
2573	2573	80
2574	2574	2574
2575	2575	80
2576	2576	2576
2577	2577	352
2578	2578	2578
2579	2579	2579
2580	2580	1234
2581	1354	2581
2582	2582	1502
2583	2583	2583
2584	218	2584
2585	2585	2585
2586	2586	2586
2587	2587	2587
2588	2588	2588
2589	102	2589
2590	1969	386
2591	1107	16
2592	2592	2592
2593	1250	2593
2594	2594	1235
2595	2595	2595
2596	1406	149
2597	2187	2597
2598	2598	393
2599	2599	489
2600	2600	2600
2601	1704	1049
2602	1440	2602
2603	2603	2603
2604	2604	447
2605	914	329
2606	2606	551
2607	1147	2607
2608	2081	461
2609	2609	1063
2610	2610	406
2611	697	1223
2612	2612	231
2613	2613	611
2614	2139	292
2615	2615	2615
2616	5	2616
2617	2617	292
2618	2618	2218
2619	589	2619
2620	1021	2620
2621	1384	950
2622	894	2622
2623	2623	581
2624	2624	1721
2625	2625	2625
2626	2626	2307
2627	2063	2627
2628	2628	2628
2629	2629	2475
2630	1764	439
2631	1503	2631
2632	2396	229
2633	472	2633
2634	2634	2634
2635	2635	2635
2636	2636	2636
2637	1045	1649
2638	2638	2638
2639	512	2639
2640	416	969
2641	2641	497
2642	780	2642
2643	612	2138
2644	2225	2644
2645	2506	150
2646	2646	2646
2647	2647	2647
2648	1326	2648
2649	612	2649
2650	1370	2650
2651	1328	2651
2652	2652	2652
2653	36	2653
2654	356	1586
2655	2655	2655
2656	2656	2656
2657	977	915
2658	1330	1416
2659	2659	2242
2660	2660	2535
2661	2661	1063
2662	2662	2662
2663	2663	2663
2664	1464	1513
2665	702	2665
2666	131	1559
2667	1905	849
2668	2668	2668
2669	2669	2669
2670	2074	2670
2671	2671	2671
2672	2672	2672
2673	2673	2673
2674	1576	2674
2675	2244	2675
2676	2676	2550
2677	2577	2677
2678	2678	473
2679	609	250
2680	2680	123
2681	2681	2222
2682	2682	2682
2683	2683	329
2684	2684	2684
2685	2685	489
2686	2200	2544
2687	2687	2687
2688	2688	2688
2689	2689	1151
2690	2690	656
2691	323	237
2692	2692	2692
2693	83	2693
2694	2694	2694
2695	2695	2695
2696	2696	1252
2697	2697	2697
2698	2698	2698
2699	1655	2699
2700	2700	283
2701	780	2701
2702	2702	1029
2703	1576	2703
2704	2704	1453
2705	2705	2705
2706	2706	2706
2707	1516	2707
2708	812	1448
2709	2709	2709
2710	723	359
2711	2372	907
2712	2712	1803
2713	1590	2713
2714	2714	2714
2715	2715	2715
2528	1867	2716
2717	2717	2717
2718	2063	2718
2719	1183	2719
2720	2388	199
2721	2721	2721
2722	2722	2722
2723	2723	2723
2724	2724	2724
2725	1141	2071
2726	2726	2726
2727	2727	2727
2728	2728	2524
2729	2729	2729
2730	2080	2730
2731	2731	2731
2732	388	683
2733	2733	283
2734	2734	329
2735	1503	2735
2736	148	2736
2737	2737	909
2738	2738	2738
460	2739	1453
2740	461	292
2741	1318	2741
2742	2230	231
2743	871	2743
2744	2282	2744
2745	1640	2745
2746	1962	2746
2747	546	251
2748	2748	454
2749	2749	1289
2750	2750	2390
2751	1092	2751
2752	2752	2752
2753	2753	1048
2754	144	2754
2755	567	2755
2756	2756	2756
2757	2757	505
2758	1671	1749
2759	2759	1749
2760	1510	2760
2761	2761	1461
2762	2762	462
2763	1434	2435
2764	2764	232
2765	2765	551
317	2673	2766
2767	2767	2767
2768	2768	2768
2769	2769	2769
2770	2770	2770
2771	2446	2771
2772	2772	1113
2773	2773	2773
2774	2774	2107
2775	2388	2775
2776	1673	925
2777	685	1592
2778	2778	838
2779	2779	2113
2780	2780	2780
2781	2781	2781
2782	1679	1001
2783	2783	691
2784	2418	2784
2785	2785	2785
2786	370	2786
2787	2073	2787
2788	2788	2788
2789	812	2789
2790	369	2790
2791	2791	313
2792	2792	2792
2793	2793	2793
2794	2794	2794
2795	2795	2795
2796	2245	2796
2797	2103	134
2798	220	950
2799	2799	329
2800	1694	30
2801	2801	2801
2802	1582	231
2803	2803	903
2804	2804	198
2805	2805	198
2806	1756	2806
2807	2062	2807
2808	729	305
2809	1698	2809
2810	276	2810
2811	1590	2811
2812	2027	849
2813	2813	2813
2814	812	2814
2815	2815	2815
2816	1993	2816
2817	2817	1924
2818	1531	2818
2819	586	719
2820	2820	2820
2821	2783	1236
2822	2780	2822
2823	2823	2823
2824	1625	514
2825	2825	2825
2826	2366	2826
2827	2827	254
2828	2828	2148
2829	2829	2829
2830	2830	2830
2831	2831	2550
2832	870	1761
2833	1334	2833
2834	2834	2834
2835	489	1127
2836	2836	2836
2837	2837	2837
2838	2838	2838
2839	1216	2839
2840	241	2062
2841	1363	2841
2842	2454	2842
2843	1673	445
2844	2844	116
2845	685	2350
2846	2846	2784
2847	2847	795
2848	2244	2848
2849	1520	683
2850	2850	439
2851	2067	2851
2852	2852	232
2853	2853	774
2854	1227	2854
2855	2855	2855
2856	2856	2856
2857	2857	2857
2858	2227	1399
2859	2859	2859
2860	2860	2860
1159	2861	1475
2862	2862	2862
2863	2863	522
2864	459	2864
2865	1606	779
2866	1792	849
2867	594	1831
2868	2704	1243
2869	2778	950
2870	1015	2870
2871	21	1145
2872	574	2872
2873	662	2873
2874	2874	2874
2875	2588	2875
2876	2876	2876
2877	1519	2877
2878	2878	1625
2879	2879	2879
2880	2880	2880
2881	2881	2672
2882	2783	681
2883	1187	685
2884	2884	2884
2885	738	617
2886	2886	2886
2887	2887	2887
2888	2888	2888
2889	2889	2672
2890	2890	2890
2891	2891	683
2892	2892	2892
2893	2893	2893
2894	208	2894
2895	510	2895
2896	2896	2896
2897	592	2897
2898	2898	489
2899	2774	550
2900	2900	292
2901	2901	250
2902	2902	2902
2903	2903	1014
2904	2576	2904
2905	2905	2029
2906	2906	888
2907	1162	1539
2908	1313	2856
2909	1831	292
2910	1350	1338
2911	2911	198
2912	1828	1192
2913	2913	2913
2914	2914	2914
2915	2915	685
2916	915	514
2917	1971	455
2918	2012	2510
2919	2919	838
2920	2920	250
2921	2049	2921
2922	2922	2922
2923	883	2923
2924	2924	2924
2925	2598	2925
2926	1452	2926
2927	1326	2927
2928	2257	2928
2929	2929	180
2930	2930	305
2931	2931	2931
2932	2932	439
2933	2933	2933
2934	1890	633
2935	2935	74
2936	302	292
2937	1740	1192
2938	2938	72
2939	2939	2939
2940	706	2940
2941	1887	406
2942	2942	2942
2943	502	2943
1920	506	1890
2945	2945	538
2946	368	2946
2947	2947	685
2948	2948	1215
2949	2949	2949
2950	2950	254
2951	2951	1453
2952	2696	2952
2953	2953	406
2954	2954	2954
2955	1865	220
2956	1867	2956
2957	1694	313
2958	2958	2958
2959	2959	2959
2960	2960	1213
2961	2635	84
2962	2128	2962
2963	2963	2105
2964	2964	2879
2965	2965	1192
2966	2966	2966
2967	2248	299
2968	777	2968
1920	506	2969
2970	2970	2970
2971	1370	2971
2972	2471	691
2973	2973	2973
2974	1452	2974
2975	2975	1063
2976	2976	2976
2977	1477	250
2978	2978	2978
2979	2979	2979
2980	2762	2980
2981	246	2981
2982	2982	2982
2983	2983	2983
2984	2984	854
2985	2414	1289
2986	2986	1812
2987	323	2987
2988	1082	1315
2989	793	2989
2990	1648	2990
2991	2586	2991
2992	2992	198
2993	2728	439
2994	1330	2994
2995	2995	943
2996	1993	2996
2997	2997	1113
2998	2998	1020
2999	2534	2999
3000	3000	3000
3001	2316	977
2146	1062	551
3003	2717	329
3004	3004	551
3005	2	3005
1978	535	3006
3007	3007	3007
3008	1913	3008
3009	1913	3009
3010	329	3010
3011	2439	3011
3012	620	1398
3013	3013	685
3014	3014	633
3015	3015	3015
1997	3016	329
3017	790	3017
3018	3018	231
3019	3019	3019
3020	3020	1033
3021	3021	305
3022	3022	3022
3023	3023	3023
3024	3024	3024
3025	586	406
3026	3026	903
3027	27	3027
3028	69	3028
3029	18	3029
3030	3030	3030
3031	1695	3031
3032	2595	3032
3033	3033	232
3034	1953	1603
3035	2404	929
3036	2860	3036
3037	2652	2026
3038	2748	3038
3039	3039	305
3040	1078	3040
3041	450	1933
3042	3042	447
3043	3043	221
3044	3044	3044
3045	1703	3045
3046	994	683
3047	3047	551
3048	3048	3048
3049	3049	3049
3050	3050	3050
3051	2942	3051
152	3052	406
3053	3042	598
3054	3054	3054
3055	1890	1831
3056	143	134
3057	3057	2414
3058	368	3058
3059	986	3059
3060	3060	326
3061	1968	307
3062	620	3062
3063	914	455
3064	3064	761
3065	3065	597
3066	2938	3066
3067	3067	231
3068	2837	553
3069	2063	3069
3070	2662	3070
3071	3071	3071
3072	3072	1127
3073	3073	1586
3074	3074	231
3075	1818	258
3076	418	1792
3077	3077	1114
3078	19	1762
3079	2891	683
3080	3080	3080
3081	1279	3081
3082	3082	3082
3083	3083	2181
3084	3084	3084
3085	1877	565
3086	2715	1113
3087	3087	3087
3088	3088	149
3089	3089	250
3090	2578	3090
3091	3091	1886
3092	3092	3092
3093	3093	633
3094	2043	849
3095	3095	3095
3096	3096	3096
3097	3097	3097
3098	295	3098
3099	3099	1890
3100	3100	3100
3101	3101	1192
3102	3102	3102
3103	3103	3103
3104	1554	3104
3105	3105	685
3106	3106	3106
3107	372	2743
3108	3108	3108
3109	2315	80
3110	3110	231
3111	3111	3111
3112	2514	1408
3113	3113	2954
3114	3114	3114
3115	2122	3115
3116	3116	3116
3117	3117	433
3118	3118	1417
3119	323	3119
3120	1536	2222
3121	3121	3121
3122	2281	1913
3123	3123	1252
3124	62	3124
3125	3125	3125
3126	3126	3126
3127	3127	3127
3128	3128	3128
3129	329	685
3130	1587	3130
3131	3131	3131
3132	2750	685
3133	3133	1647
3134	1645	2669
3135	3135	231
3136	3136	3136
3137	3137	2195
3138	799	396
3139	3139	3139
3140	3140	3140
3141	3141	3141
3142	3142	72
3143	977	3143
3144	3144	3144
3145	3145	3145
3146	2723	1919
3147	1451	903
3148	3148	491
3149	3149	232
3150	1158	870
3151	3151	1611
3152	2439	3152
3153	1953	2305
3154	2628	3154
3155	3155	3155
3156	3156	3156
3157	3157	3157
3158	3158	72
3159	2285	406
3160	1445	836
3161	3161	3161
3162	3162	3162
3163	975	3163
3164	3164	3164
3165	1729	3165
3166	3166	1453
3167	3167	406
3168	3168	3168
3169	3169	3169
3170	1439	2347
3171	3171	1691
3172	3172	2142
1970	1464	1114
3174	3174	2873
3175	629	1812
3176	3176	329
3177	3177	2976
3178	3178	1192
3179	3179	298
3180	3180	3180
3181	3181	3181
3182	1269	3182
3183	684	406
3184	629	3184
3185	3185	3185
3186	3186	2856
3187	3187	329
3188	3188	3188
3189	2663	3189
3190	2986	3190
3191	1792	3191
2338	3192	1847
3193	3193	1462
3194	43	3194
3195	1008	3195
3196	1195	3196
3197	737	1611
3198	3198	3198
3199	3199	3199
3200	3200	329
3201	3201	3201
3202	3202	1273
3203	1418	3203
3204	3204	3204
3205	2211	3205
3206	3206	3206
3207	3207	1379
3208	1282	251
1831	2580	1831
3210	3210	3210
3211	3211	683
3212	3212	3212
3213	3213	3213
3214	3214	685
3215	3215	685
3216	738	774
3217	165	3217
3218	82	3218
3219	3219	2357
3220	1605	2922
3221	1954	3221
3222	1464	1874
3223	3223	3223
3224	3224	3224
3225	3225	2969
3226	3226	2104
3227	3227	305
3228	3228	3228
3229	3229	3229
3230	3229	556
3231	3231	2146
3232	3232	3232
3233	2933	3233
3234	3234	455
3235	2615	1296
3236	706	1804
3237	3237	305
3238	1655	3238
3239	756	3239
3240	3240	232
3241	3	325
3242	3242	3242
3243	3243	3243
3244	1099	3244
3245	3245	1508
3246	2512	3246
3247	761	250
3248	3026	3248
3249	3249	888
3250	3250	1330
3251	3251	3251
3252	1330	2280
3253	3253	3253
3254	3254	1192
3255	3255	556
3256	1008	595
3257	352	3257
3258	236	950
3259	1398	800
3260	391	1725
3261	3261	3261
3262	2541	3262
3263	3263	768
3264	3264	3264
3265	3265	3265
3266	231	2743
3267	2574	1295
3268	3268	3268
3269	3145	3269
3270	3270	377
3271	306	3271
3272	3272	3272
3273	3273	835
3274	80	87
3275	3275	1354
3276	1260	1287
3277	3277	3277
3278	1668	3278
3279	3279	1295
3280	1823	3280
3281	3281	947
3282	3282	3282
3283	3283	1546
3284	2150	3284
3285	3285	3285
3286	2027	1127
3287	3287	551
3288	3288	2222
3289	3289	489
3290	2279	3290
3291	3291	3291
3292	3292	3292
3293	3293	1919
3294	3294	705
3295	601	3295
3296	3296	1014
3297	3297	403
3298	3298	1223
3299	2668	702
3300	3300	3300
3301	484	3301
3302	3302	3302
3303	812	139
3304	3198	3304
3305	3305	296
3306	1988	3306
3307	2114	3307
3308	3308	3308
3309	3309	1453
3310	3310	3310
3311	3311	14
3312	3312	849
3313	3313	1113
3314	3314	3314
3315	3315	3315
3316	3091	2978
3317	3317	849
3318	1046	232
989	1820	1063
3320	3320	849
3321	46	3321
3322	3322	1565
3323	2913	1876
3324	3324	3324
3325	3325	3325
3326	1243	1408
3327	3327	2214
3328	3328	3328
3329	3329	2458
3330	2198	813
3331	3331	3331
3332	3332	231
3333	3333	1409
3334	3334	2970
3335	768	1432
3336	3336	1439
3337	3337	3337
3338	2571	3338
3339	518	2576
3340	3340	3340
3341	3341	3341
3342	3342	3342
3343	1346	1643
3344	241	813
3345	2770	937
3346	3346	3346
3347	2748	3347
3348	3348	888
3349	3349	3349
3350	392	3350
3351	3351	930
3352	2963	2538
3353	3353	3353
3354	3151	269
3355	2652	3355
3356	3356	3356
3357	3357	179
3358	3358	3358
3359	2945	80
3360	1531	439
3361	3361	232
3362	3362	1806
3363	3363	3363
3364	2279	691
3365	3212	309
3366	3366	359
3367	3367	1725
3368	3368	3368
3369	1668	283
3370	3370	3370
3371	3371	3371
3372	1452	3372
3373	1306	80
3374	3374	3374
3375	3375	3375
3376	3376	629
3377	3377	1254
3378	2673	3378
3379	2454	3379
3380	3110	685
3381	3381	489
3382	3382	2756
3383	2997	3102
3384	3384	489
3385	1978	3385
3386	3386	393
3387	3387	283
3388	3388	685
3389	1452	3389
1773	3390	473
3391	3391	455
3392	3392	251
3393	3393	3393
3394	3362	925
3395	3395	1109
3396	2687	3396
3397	3397	598
3398	3398	3398
3399	835	2300
3400	1442	836
3401	2255	489
3402	3049	3402
3403	2659	3403
3404	1689	3404
3405	3405	1453
3406	2595	565
3407	1029	3407
3408	2459	3408
3409	3409	3223
3410	3410	379
3411	3411	3411
3412	59	3412
3413	720	3413
3414	883	3184
3415	3415	3415
3416	3416	3416
3417	771	3417
3418	3019	598
3419	1178	340
3420	3420	1904
3421	3421	3421
3422	2043	1127
3423	3423	551
3424	356	1812
3425	3425	232
3426	3426	1523
3427	3427	551
3428	3118	683
3429	1227	521
3430	3430	3430
3431	321	2709
3432	3432	3432
3433	3433	3433
3434	3434	3434
3435	328	3408
3436	3436	2114
3437	1279	3437
3438	2570	1720
3439	3439	3439
3440	3440	1430
3441	3441	3441
3442	3442	3442
3443	3443	3443
3444	3444	1308
3445	1968	536
3446	2577	3446
3447	3447	3447
3448	3448	3448
3449	2764	3449
3450	706	943
3451	3451	2854
3452	3452	740
3453	148	3453
3454	3454	3441
3455	3455	3455
3456	1503	3456
3457	1891	2735
3458	3458	1048
3459	3459	1127
3460	1532	691
3461	1792	3461
3462	2712	1285
3463	3361	2856
3464	3464	685
3465	3465	3465
3466	1423	565
3467	279	3467
3468	3468	243
3469	3469	3469
3470	1802	379
3471	3471	2897
3472	3472	3472
3473	3473	3473
3474	2571	3474
3475	3415	937
3476	3476	3476
3477	1917	198
3478	3478	313
3479	2342	1973
3480	1597	1611
3481	3481	455
3482	3482	1591
3483	3483	3469
3484	3145	3484
3485	3485	198
3486	3486	685
3487	3487	3487
3488	3488	1911
3489	3489	3489
3490	3490	3490
3491	110	3491
3492	3442	3492
3493	3493	110
3494	346	1703
3495	3015	551
3496	2098	621
3497	1204	3497
3498	3498	3498
3499	2343	3499
3500	3500	1113
3501	3501	1330
3502	329	2856
3503	3503	2435
3504	3504	729
3505	3505	551
3506	3506	3506
3507	716	3507
3508	3508	3508
3509	395	947
3510	784	423
3511	3511	455
3512	3512	716
3513	3513	3513
3514	5	3514
3515	3515	3515
3516	3516	3516
3517	1632	3517
3518	3518	1497
3519	892	849
3520	2673	3520
3521	3521	3521
3522	3522	3522
3523	3523	1876
3524	1606	669
3525	3525	198
3526	3526	315
3527	1226	198
3528	3528	3528
3529	3529	473
3530	1294	3530
3531	3531	551
3532	3532	3532
3533	3533	1127
3534	3534	198
3535	3202	114
3536	3536	231
3537	3537	3537
3538	919	292
3539	3539	2723
3540	2684	3540
3541	3541	2252
3542	3542	3542
3543	3543	3543
3544	172	619
3545	2036	3545
3546	3546	3546
3547	3547	3547
3548	836	442
3549	943	3549
3550	3550	3550
3551	3551	158
3552	3552	3552
3553	3363	3553
3554	3019	1049
3555	3555	3555
3556	3556	3556
3557	999	3557
3558	2120	379
3559	3443	3559
3560	3560	2856
3561	3561	1223
3562	3562	1056
3563	1503	1453
3564	638	1822
3565	3565	3565
3566	3566	538
3567	3567	1236
3568	3568	3568
3569	3569	1223
3570	1113	1483
3571	3571	3571
3572	2756	1559
3573	151	3573
3574	3574	3574
3575	3575	3575
3576	3576	1020
3577	3577	3577
3578	3279	1056
3579	316	3579
3580	788	3580
3581	1953	1174
3582	1246	2275
3583	3583	302
3584	3584	198
3585	3585	1772
3586	3586	3586
3587	3587	292
3588	1161	85
3589	2850	251
3590	3590	2148
3476	3591	3591
3592	3592	964
3593	3593	685
3594	2737	2347
3595	3595	3595
3596	3596	2726
3597	395	3597
3598	3598	329
3599	3599	455
3600	761	179
3601	2769	3601
3602	790	480
3603	3603	3603
3604	3441	3604
3605	2846	3605
3606	2769	804
3607	3607	2942
3608	3608	3608
3609	3609	1214
3610	3610	3610
3611	3281	1330
3612	3612	3612
3613	2612	685
3614	3614	406
3615	3459	1761
3616	3616	3616
3617	3617	3617
3618	3618	530
3619	575	3619
3620	3434	3620
3621	2577	1675
3622	254	232
3623	1269	3623
3624	3624	3624
3625	2905	462
3626	3626	1236
3627	3627	329
3628	61	3628
3629	3629	3629
3630	3630	3630
3631	3281	2743
3632	3595	2815
3633	3329	491
3634	3634	3634
3635	3635	3635
3636	1703	3636
3637	3328	3637
3638	2615	3638
3639	3639	1124
3640	2748	864
3641	3641	1350
3642	2659	3642
3643	1763	1107
3644	3644	462
3645	3368	3645
3646	3646	3646
3647	1763	3647
3648	3648	3648
3649	3649	3649
3650	1961	3650
3651	409	3232
3652	3652	489
3653	3653	685
3654	3043	3654
3655	3655	3655
3656	3656	250
3657	2	3657
3658	1823	3658
3659	612	3659
3660	3660	3660
3661	3661	3661
3662	3662	3662
3663	3663	232
3664	2723	439
3665	3665	462
3666	3666	1569
3667	1751	1438
3668	410	3668
3669	3669	3669
3670	3670	326
3671	2218	3671
3672	3672	1097
3673	3673	3673
3674	413	3674
3675	821	3675
3676	114	305
3677	3282	3677
3678	185	3678
3679	3679	251
3680	3680	3680
3681	3681	3681
3682	3682	251
3683	1149	598
3684	3684	551
3685	3103	3685
3686	3111	3686
3687	3687	3687
3688	914	455
3689	3689	969
3690	2446	3690
3691	3691	268
3692	3279	551
3693	3693	3693
3694	3694	2796
3695	3065	3695
3696	3696	761
3697	2964	3697
3698	3698	3698
3699	3699	3699
3700	3700	1063
3701	3511	198
3702	3702	685
3703	3703	179
3704	1828	1236
3705	3705	3705
3706	2571	3706
3707	1590	455
3708	396	2864
3709	3709	2940
3710	3710	1266
3711	3711	2193
3712	875	1592
2277	3713	3713
3714	2933	3714
3715	368	3715
3716	3716	691
3717	3717	3717
3718	3718	1468
3719	3719	3719
3720	3720	1215
3721	3721	3721
3722	1705	432
3723	3723	3723
3724	757	3724
3725	1697	3725
3726	2211	546
3727	3384	3727
3728	3728	3728
3729	3729	1919
3730	535	3730
3731	3731	1225
3732	3732	3732
3733	1851	3733
3734	3734	3734
3735	89	3735
3736	3736	3736
3737	1246	2082
3738	3738	406
3739	3739	598
3740	3740	3740
3741	3741	3741
3742	3742	3742
3743	3743	198
3744	3744	198
3745	1674	3745
3746	3746	462
3747	3747	950
3748	682	329
3749	3749	447
3750	3750	3750
3751	3751	2958
3752	3752	3752
1857	32	3753
3754	2218	3754
3755	836	3755
3756	777	3756
3757	2823	3757
3758	3758	2864
3759	3759	3759
3760	1929	3760
3761	3761	3761
3762	3762	3762
3763	3718	188
3764	3764	3764
3765	3765	3765
3766	3766	1287
3767	329	551
3768	3768	2357
3769	3386	1792
3770	3770	1192
3771	3771	3771
3772	3772	3772
3773	3773	1192
3774	2011	551
3775	729	470
3776	3776	3597
3777	3771	3777
3778	3778	3778
3779	2887	3779
3780	323	198
3781	3781	403
3782	3782	1215
3783	1476	3783
1385	1520	377
3785	1372	3785
3786	3786	447
3787	27	3787
3788	56	3591
3789	1935	1158
3790	986	1061
3791	3791	3791
3792	708	3792
3793	2572	2307
3794	2108	2209
1717	1717	3795
3796	1130	3796
3797	3797	3797
3798	3798	2587
3799	3610	3799
3800	233	3800
3801	3801	1162
3802	3802	816
3803	586	3803
3804	279	3804
3805	2556	1974
3806	3806	3806
3807	3807	3807
3808	978	3808
3809	1423	1236
3810	3810	2622
3811	3811	3811
3812	2661	1815
3813	3145	3813
3814	3814	232
3815	3815	551
3816	928	3816
3817	3817	691
3818	225	3818
3819	3819	2558
3820	3820	1983
3821	3821	3821
3822	1248	3822
3823	1482	3823
3824	3824	3824
3825	3825	3825
3826	3826	1665
3827	3827	3827
3828	3828	3828
3829	3829	3829
3830	3830	685
3831	3831	3831
3832	220	329
3833	3833	231
3834	3834	251
3835	3835	3835
3836	3836	3836
3837	372	761
3838	3838	149
3839	1971	3839
3840	3840	636
3841	3841	305
3842	3842	1048
3843	3843	305
3844	3844	2854
3845	3845	1815
3846	3846	3846
3847	3847	3847
3848	3848	3848
3849	3849	3849
3850	3850	2856
3851	3851	539
3852	3852	209
3853	3853	514
3854	3854	3854
3855	105	3855
3856	1976	447
3857	3857	232
3858	2684	3858
3859	3859	2890
3860	2285	1063
3861	3861	406
3862	504	3862
3863	61	3863
3864	3864	1076
3865	1756	3865
3866	3521	3866
3867	2768	3867
3868	3868	3868
3869	3869	3869
3870	3870	1905
3871	2342	3871
3872	2152	3872
3873	1877	3873
3874	3281	2535
3875	2659	1236
3876	3167	685
3877	3877	565
3878	3878	3878
3879	3879	3879
1322	3880	3880
3881	1452	3881
3882	1688	3882
3883	3778	2222
3884	53	3884
3885	214	70
3886	3886	3886
3887	3887	1757
3888	3888	114
1069	202	3889
3890	459	3890
3891	3891	3891
3892	3892	2142
3893	133	1441
3894	186	3894
3895	2054	1962
3896	3896	3896
3897	2189	3897
3898	567	3469
3899	3899	3899
3900	3900	138
3901	3901	656
3902	3902	840
3903	3778	3903
3904	3904	1461
3905	356	1647
3906	3906	3906
3907	609	3907
3908	3908	489
3909	3909	3909
3910	870	3910
3911	3911	3911
3912	51	3912
3913	3913	3913
3914	89	2597
3915	3915	1651
3916	102	3916
3917	2860	3917
3918	3918	3062
3919	3919	3919
3920	3920	620
3921	3921	908
3922	335	3922
3923	2817	3650
3924	1888	3924
3925	3925	3925
3926	869	2876
3927	2594	912
3928	3088	1725
3630	2249	2104
3930	3930	406
3931	3931	3931
3932	3328	3154
3933	3933	3933
3934	3934	3934
3935	1585	1955
3936	3936	888
3937	3937	1127
3938	3938	1651
3939	299	3939
1438	3940	3940
3941	3941	232
3942	3110	198
3943	3943	3943
3944	3944	2622
3945	3945	3945
3946	3747	1379
3947	3947	2355
3948	254	292
3949	65	3949
3950	3950	3950
3951	3951	2729
3952	3952	3952
3953	1260	3953
3954	519	150
3955	2738	1896
3956	1389	3956
3957	3957	3957
3958	3409	3958
3959	3959	3959
3960	3960	3960
3961	3223	3961
3962	3962	3962
3963	790	3963
3964	328	3964
3965	482	1238
3966	111	462
3967	3967	3967
3968	3968	3968
3969	3328	3969
3970	3970	292
3971	329	656
3972	3644	3972
3973	2959	3973
3974	3974	546
3975	3975	346
3976	2338	1107
3977	3977	1453
3978	3978	729
3979	3979	3979
3980	3980	545
3981	989	3981
3982	3982	3982
3983	696	3983
3984	3984	3984
3985	2273	3985
3986	3612	3986
3987	3987	3987
3988	3988	56
3989	2006	3989
3990	2792	3990
3991	3991	598
3992	3992	455
1557	3993	3993
3994	3994	3994
3995	3995	55
3996	135	3996
3997	791	400
3998	702	3998
3999	3565	3474
4000	1571	4000
4001	4001	4001
4002	4002	123
4003	337	290
4004	4004	1379
4005	4005	2855
4006	4006	4006
4007	4007	4007
4008	823	4008
4009	4009	4009
4010	4010	4010
4011	975	4011
4012	4012	4012
4013	4013	4013
4014	419	4014
4015	3471	4015
4016	2723	1044
4017	4017	307
4018	4018	2668
4019	4019	229
4020	16	386
4021	3771	1527
4022	3641	4022
4023	4023	1935
4024	4024	2316
4025	4025	499
4026	4026	4026
4027	4027	4027
4028	4028	729
4029	4029	2856
4030	4030	4030
4031	4031	93
4032	4032	4032
4033	4033	2969
4034	2939	1018
4035	4035	774
4036	1099	4036
4037	2276	925
4038	4038	4038
4039	4039	772
4040	4040	4040
4041	4041	4041
4042	3670	4042
4043	4043	473
4044	330	4044
4045	3473	4045
4046	4046	4046
4047	4047	849
4048	4048	4048
4049	2340	1978
4050	4050	1416
4051	4051	56
4052	2663	1387
4053	4053	455
4054	2930	2275
4055	4055	4055
4056	114	232
4057	4057	4057
4058	2761	2902
4059	4059	462
4060	3723	4060
4061	363	4061
4062	4062	139
4063	4063	1289
4064	1359	301
4065	3117	4065
4066	162	3706
4067	4067	4067
4068	2756	4068
4069	4069	4069
2935	4070	264
4071	4071	4071
4072	4072	198
4073	1772	140
4074	4074	3993
4075	4075	1215
4076	4076	4076
4077	4077	4077
4078	2275	4078
4079	1580	691
4080	3251	3379
4081	4081	3019
4082	396	1088
4083	4083	2011
4084	4084	462
4085	4085	685
4086	3043	4086
4087	4087	4087
4088	3556	4088
4089	1074	134
4090	4090	838
4091	574	4091
4092	4092	4092
4093	1196	179
4094	4094	4094
4095	117	1735
1971	4096	3713
4097	1177	4097
4098	2249	2414
4099	396	985
4100	4100	2856
4101	3423	1161
4102	3091	2275
4103	3013	406
4104	506	2723
4105	4105	406
4106	4106	1453
4107	1233	1919
4108	4070	395
4109	4109	4109
4110	3439	4110
4111	4111	685
4112	4112	4112
4113	3043	311
4114	3363	4114
4115	993	250
4116	4116	305
4117	4117	3010
4118	4118	251
4119	3610	373
4120	4120	1113
4121	418	4121
4122	3515	4122
4123	4123	4123
4124	1755	4124
4125	616	4125
4126	4126	4126
4127	19	4127
4128	2768	4128
4129	4129	1806
4130	4130	4130
4131	3287	231
4132	1792	2996
4133	3106	4133
4134	4134	232
4135	4135	4135
4136	4136	232
4137	4137	4137
4138	4138	313
4139	263	3315
4140	4140	4140
4141	4141	4141
4142	4142	725
4143	591	3911
4144	4144	455
4145	1078	4145
4146	4146	622
4147	4147	4147
4148	993	3597
4149	4149	551
4150	326	4150
4151	2174	4151
4152	4152	4152
4153	4153	4153
4154	1605	3180
4155	1007	398
4156	4156	1063
4157	4157	4157
4158	4158	4158
4159	3263	687
4160	4160	2767
4161	4161	4161
4162	3673	4162
4163	4163	2709
4164	4164	114
4165	1838	2222
4166	4166	2011
4167	4167	3044
4168	3409	4168
4169	4169	1419
4170	4170	4170
4171	4171	4171
4172	114	685
4173	751	4173
4174	4174	4174
4175	4175	4175
4176	4176	4176
4177	4177	947
4178	2715	4178
4179	4179	1278
4180	554	4180
4181	1978	4181
4182	829	4182
4183	2227	4183
4184	1482	2439
4185	4185	4185
4186	4186	2773
4187	2998	4187
4188	1325	1772
4189	4189	4189
4190	1168	4190
4191	4191	2082
4192	4192	829
4193	4193	406
4194	756	4194
1295	1295	4195
4196	2850	138
4197	4197	250
4198	4198	4198
4199	4199	4199
4200	4200	251
4201	945	521
4202	3384	313
4203	4203	198
4204	449	4204
4205	4205	4205
4206	20	2123
4207	260	4207
4208	435	426
4209	4209	4209
1575	640	4210
4211	4211	904
4212	372	2275
4213	4213	134
4214	4214	470
4215	4215	1314
4216	1485	4216
4217	586	447
4218	4218	1381
4219	4219	4219
4220	4220	1070
4221	4221	761
4222	4222	4222
4223	4223	305
4224	4224	1891
3642	1502	894
4226	4226	250
4227	4227	4227
4228	1057	2698
4229	4229	2222
4230	3826	4230
4231	4231	4231
4232	4232	406
4233	4233	2207
4234	4234	4234
4235	4235	4235
4236	4236	4236
4237	4237	685
4238	4238	329
4239	4239	4239
4240	4240	1063
4241	2279	539
4242	396	3698
4243	4243	1586
4244	4244	2892
4245	1763	2743
4246	1709	598
4247	586	250
4248	4248	4248
4249	731	1373
4250	4250	2860
4251	4251	4251
4252	4252	198
4253	2728	1462
4254	4254	298
4255	4255	849
4256	2496	1611
4257	4257	545
4258	1946	1890
4259	4193	251
4260	4260	4260
4261	1316	4261
4262	4262	2856
4263	4263	4263
4264	4264	87
4265	4265	1314
4266	3459	1127
4267	1732	4267
4268	2539	4268
4269	3835	1285
4270	506	1874
4271	4271	2222
4272	3207	950
4273	4273	4273
4274	4274	251
4275	4275	691
4276	2268	2104
4277	3049	4277
4278	578	706
4279	4279	4279
4280	35	56
4281	4281	801
4282	4282	4282
4283	4283	313
4284	4284	4284
4285	3250	4285
4286	4286	243
4287	4287	4287
4288	4288	4288
4289	4289	3575
4290	2150	4290
4291	2454	3198
4292	4292	246
4293	4293	4293
4294	4294	3100
4295	1941	964
4296	4296	4296
4297	1149	2872
4298	1129	330
4299	4299	4299
4300	3080	4088
4301	4301	4301
4302	4302	4302
4303	675	303
4304	1021	4304
4305	4305	1409
4306	3353	4306
4307	346	973
4308	3759	4308
4309	828	4309
4310	4310	3243
4311	4311	449
4312	2257	4312
4313	4313	3385
4314	2342	3912
4315	4315	1127
4316	241	4316
4317	2429	4042
4318	754	4318
4319	1439	4319
4320	1730	4320
4321	3327	4321
4322	870	424
4323	1183	4323
4324	4324	888
4325	2195	1621
4326	4326	4326
4327	4327	4327
4328	2938	1833
2	4158	560
4330	4330	729
4331	4331	598
4332	3723	4332
4333	740	232
4334	4334	565
4335	4335	283
4336	2190	4336
4337	3661	2444
4338	442	3958
4339	3455	4339
4340	4340	4340
4341	4341	1453
4342	4342	2256
4343	115	4343
4344	3811	4344
4345	4345	4345
4346	4346	621
4347	1576	2719
4348	137	923
4349	1485	280
4350	3469	113
4351	1510	269
4352	4352	1591
4353	4353	946
4354	4354	2107
4311	4355	432
4356	2490	4356
4357	4341	4357
1078	2465	2872
4359	4359	231
4360	729	1911
4361	586	292
4362	4362	2723
4363	1061	774
4364	4364	198
4365	1582	250
4366	3227	656
4367	1946	603
4368	4368	4368
4369	4369	4369
4370	4370	947
4371	3433	1016
4372	1778	4372
4373	359	4373
4374	3096	4374
4375	4375	4375
4376	4376	4376
4377	754	947
4378	4378	56
4379	1276	4284
4380	4380	250
4381	1259	4044
4382	737	4382
1858	4383	2054
4384	1971	551
4385	993	377
4386	4386	4386
4387	1345	969
4388	461	903
4389	3586	3090
4390	1870	4390
2835	4391	1933
4392	4392	4392
4393	3771	4393
4394	4394	1458
4395	4395	2651
4396	4396	4396
4397	4397	4397
4398	4398	2222
4399	4399	1933
4400	119	4400
4401	3223	4401
4402	1668	4069
4403	389	4403
4404	4404	4404
4405	2340	4405
4406	2874	4406
4407	2145	925
4408	2652	3685
4409	1532	4187
4410	3781	2011
4411	4411	4411
4412	4412	1127
4413	4413	231
4414	4414	305
4415	4415	765
4416	3459	1127
4417	4417	774
4418	4418	250
4419	4419	4419
4420	2680	2483
4421	1113	4198
4422	5	4422
4423	4423	163
4424	648	729
4425	4425	4263
4426	4426	232
4427	4427	4427
4428	3618	3713
4429	4429	4429
4430	2372	4430
4431	4431	4431
4432	2534	4432
4433	4433	2142
4434	1776	2000
4435	4435	1286
4436	486	1758
4437	4437	4437
4438	4438	473
4439	586	4439
4440	1951	685
4441	4441	3087
4442	4442	250
4443	4443	598
4444	4444	3019
4445	936	4445
4446	4446	4446
3384	4447	237
4448	1976	2856
4449	4449	2313
4450	4450	305
4451	356	2118
4452	2684	329
4453	409	14
4454	30	3491
4455	1902	4455
4456	4456	3550
4457	19	4457
4458	4458	4458
4459	4459	1129
4460	4460	1278
4461	3848	3654
4462	389	708
4463	316	4463
4464	3131	2647
4465	2577	1611
4466	2915	4466
4467	4467	25
4468	1510	4468
4469	3967	4469
4470	4470	903
4471	3376	1521
4472	4472	691
4473	413	4473
4474	821	4474
4475	2850	1107
4476	2165	4476
4477	3091	943
4478	3831	4478
4479	4479	551
4480	4480	406
4481	4481	4481
4482	929	4482
4483	4483	4483
4484	1452	4484
4485	2594	67
2939	510	4486
4487	4487	4487
4488	1260	4488
4489	1260	1104
4490	688	4490
4491	1259	4491
4492	2813	4492
4493	1838	462
4494	4494	1215
4495	414	4495
4496	2652	3685
4497	4497	4497
4498	4498	691
4499	4499	251
4500	2230	2879
4501	1052	16
4502	4502	406
4503	4503	1127
4504	2547	538
4505	3019	454
4506	4506	1453
4507	472	4507
4508	3713	4508
4509	4509	4112
4510	2588	4510
4511	4511	685
4512	2103	586
4513	4513	1236
4514	3416	3446
4515	4515	4515
4516	3533	1127
4517	4517	4517
4518	3732	4518
4519	1848	4519
4520	247	4520
4521	2739	4521
4522	1913	2958
4523	2310	4523
4524	4524	398
4525	4525	470
4526	4526	1417
4527	4527	403
4528	716	1912
4529	4529	473
4530	4530	4530
4531	4531	4531
4532	4532	305
4533	4533	251
4534	4534	4534
4535	4535	727
4536	4536	4536
4537	4537	305
4538	4233	4538
4539	4539	1236
4540	4540	598
4541	2378	4541
4542	1730	1202
4543	4543	551
1726	4544	4544
4545	4545	2544
4546	502	4546
4547	620	1513
4548	4548	556
4549	4549	114
4550	4550	4550
4551	4551	4551
4552	777	1565
4553	4553	3304
4554	4189	3865
4555	4555	4555
4556	4556	3799
4557	4557	4557
4558	3968	2897
4559	4559	3675
4560	4560	708
4561	1187	4561
4562	4562	551
4563	1573	2954
4564	4564	4564
4565	4565	4565
4566	2575	305
4567	1688	4567
4568	4568	4320
4569	4569	4569
4570	1502	4147
4571	1585	4557
4572	4572	329
4573	4573	813
4574	784	377
4575	2792	4575
4576	4576	681
4577	3518	897
4578	2245	671
4579	4579	4175
4580	4580	4030
4581	4581	177
4582	3084	4582
4583	828	4583
4584	4584	4584
4585	4585	4585
4586	4586	4586
4587	4587	4587
4588	3440	2627
4529	1688	632
4590	4590	4590
4591	4591	4591
4592	4592	4592
4593	2600	1295
4594	4594	4594
4595	2052	918
4596	4596	4596
4597	161	4597
4598	4598	4598
4599	4599	4599
4600	2410	4600
4601	323	628
4602	4602	4602
4603	4271	1113
4604	4604	4604
4605	4605	4605
4606	984	1886
4607	262	4607
4608	3635	598
4609	4609	4609
4610	4610	2506
4611	4611	685
4612	1814	4612
4613	4613	4598
4614	3473	4614
4615	4615	3398
4616	4616	305
4617	4617	170
4618	359	4618
4619	4548	4619
145	1143	1045
4621	4621	4621
4622	2282	4622
4623	4623	4623
4624	4624	1725
4625	4376	565
4626	1094	3906
4627	3718	4627
4628	4628	611
4629	4629	685
4630	4630	800
4631	4244	943
4632	4632	4632
4633	4633	4633
4634	4634	1127
4635	4635	685
4636	3786	3628
4637	2178	4637
4638	4638	4638
4639	3819	4639
4640	4640	4640
4641	1007	4641
4642	1058	4642
4643	4545	4643
4644	4644	1506
4645	4645	3678
4646	4535	4646
4647	3473	2316
4648	4648	836
4649	4649	4649
4650	4069	4650
4651	4651	687
4652	744	4151
4653	793	4653
4654	4654	565
4655	137	85
4656	3802	719
4657	4376	4657
4658	1468	3513
4659	4659	455
4660	4660	72
4661	3489	4661
4662	4662	4662
1778	4663	580
1759	2410	621
4665	4665	4665
4666	4666	729
4667	4667	1933
4668	4668	184
4669	4669	4669
4670	4670	4670
4671	4671	4671
2515	4672	685
4673	4673	2669
4674	4674	398
4675	2237	2390
4676	4041	632
4677	4677	403
4678	4678	305
4679	4679	4679
4680	4680	1236
4681	4681	4681
4682	3207	4682
4683	4683	4683
4684	4684	462
4685	4685	4685
4686	586	4686
4687	791	4687
4688	151	4688
4689	4689	4689
4690	4690	4690
4691	4691	4691
4692	2054	4692
4693	4693	4693
4694	4694	69
4695	4695	4695
4696	4696	4696
4697	1327	4697
4698	1185	1886
4699	788	4699
4700	4700	656
4701	4701	462
4702	4026	4702
4703	4703	4703
4704	4704	551
4705	4705	4705
4706	4706	4706
4707	4707	251
4708	3362	250
4709	4709	740
4710	4710	4710
4711	2535	2465
3349	4712	4712
4713	6	4713
4714	4695	4714
4715	3279	2246
4716	502	4716
4717	4497	4717
4718	4556	4718
4719	4719	446
4720	3828	4720
4721	4721	250
4722	4722	840
4723	4170	4723
4724	4724	4724
4725	4725	118
4726	2108	816
4727	4727	4646
4728	4728	979
4729	716	2550
4730	3019	473
4731	4731	538
4732	4732	499
4733	4733	251
4734	4734	4734
4735	4735	551
4736	1818	4736
4737	4737	1215
4738	4738	231
4739	4739	4739
4740	3172	1704
4741	1503	1927
4742	4394	1589
4743	4743	565
4744	4744	1453
4745	3987	4168
4746	4746	4746
4747	4747	1113
4748	4748	257
4749	3310	4653
4750	4750	3516
4751	4671	105
4752	2495	1022
4753	4753	461
4754	4754	4754
4755	4437	4755
3982	4756	359
4757	3459	4757
4758	4758	4758
4759	4759	849
4760	3533	4760
4761	2756	4761
4762	4762	493
4763	4763	4763
4764	4764	198
4765	4765	1461
4766	2233	251
4767	2097	551
4768	1330	1521
4769	3411	4769
4770	4693	4770
4771	2357	3925
4772	4772	888
4773	4773	4773
4774	4774	4774
4775	4775	3350
4776	3846	655
4777	4777	4777
4778	4778	2731
4779	4779	1127
4780	2922	4780
4781	4781	142
4782	4660	4782
4783	2315	1114
4784	4784	552
4785	4156	2743
4786	4293	4786
4787	4787	4787
4788	4584	4788
4789	2850	2430
4790	839	4790
4791	4791	1749
4792	4792	4787
4793	4793	4793
4794	2792	2669
4795	4795	621
4796	4796	3575
4797	2783	492
4798	407	406
4799	2553	691
4800	4800	292
4801	4801	4801
4802	4802	473
4803	1436	4803
4804	4804	4804
4805	557	480
4806	4806	3087
4807	1042	4807
4808	2572	134
4809	4809	4809
4810	2813	4810
4811	1204	4811
4812	4812	2218
4813	2932	1381
4814	3612	4814
4815	3287	455
4816	3485	1453
4817	4817	40
4818	4818	1044
365	8	4819
4820	4820	2332
4821	357	4821
4822	1756	4822
4823	4823	4823
4824	3007	4717
4825	4825	4825
4826	2759	2864
4827	3641	3521
4828	4828	2635
4829	4605	3727
4830	1325	403
4831	4831	4831
4832	4100	1056
4833	4833	4833
4834	1306	4834
4835	4835	229
4836	4836	214
4837	4837	4837
4838	117	2544
4839	3490	4839
4840	4840	251
4841	4841	685
4842	4842	1192
4843	757	800
4844	4844	470
4845	2948	385
4846	3166	2856
4847	4847	1286
4848	4848	4312
4849	2647	685
4850	4850	406
4851	4851	1462
4852	4610	3269
4853	4853	2311
4854	877	4854
4855	4855	4855
4856	4856	4856
4857	4857	4857
4858	3599	231
4859	4859	4670
4860	4860	4860
4861	4861	888
4862	4862	685
4863	4863	2133
4864	4864	4864
4865	3781	2662
4866	4866	3546
4867	4867	4670
4868	4868	4868
4869	4869	473
4870	3831	4870
4871	4871	2169
4872	4872	2222
4873	3489	4873
4874	4874	2677
4875	3356	4875
4876	4867	4876
4877	4877	1127
4878	4878	1405
4879	254	329
4880	4880	1403
4881	4881	4881
4882	4882	630
4883	4883	1496
4884	86	4884
4885	3595	315
4886	4886	198
4887	4887	742
4888	3713	2345
4889	312	4889
4890	3759	4890
4891	4891	2303
4892	4892	599
4893	4893	4893
4894	3415	4894
4895	3172	740
4896	4896	4896
4897	4897	292
4898	2844	1215
4899	2687	4899
4900	4900	3940
4901	4901	4901
4902	586	2247
4903	4878	2402
4904	2837	4904
4905	4905	4905
4906	1061	406
4907	4907	4907
4908	2724	4908
4909	567	2837
4910	2588	4910
4911	4251	4911
4912	4912	4912
4913	2696	4913
4914	2953	1286
4915	684	1935
4916	4916	330
4917	4917	455
4918	1262	3324
4919	2093	867
4920	790	4920
4921	1056	470
4922	4922	3724
4923	4923	4923
4924	4924	829
4925	4925	4925
4926	4680	1127
4927	4927	683
4928	594	2275
4929	4929	4929
4930	3410	87
4931	3328	4931
4932	4932	398
4933	1868	571
4934	2029	4934
4935	4935	4935
4936	4936	4833
4937	2738	3912
4938	4938	4938
4939	608	4760
4940	2257	4940
4941	4941	925
4942	4167	4942
3087	3982	4943
4944	4944	4944
4945	1529	4945
4946	1978	904
4947	4947	840
4948	1772	4948
4949	2096	1192
4950	951	4564
4951	23	2472
4952	96	4952
4043	509	406
4954	4954	4954
4955	469	1104
4956	2108	816
4957	4957	4957
4958	4958	1430
4959	4959	4959
4960	4028	3300
4961	4961	4961
4962	321	4962
4963	1277	833
4964	578	4964
4965	1565	4965
4966	1301	4966
4967	1143	4007
4968	4968	4968
4969	4969	4969
4970	4970	4970
4971	4971	909
4972	663	4972
4973	4857	4973
4974	1346	4974
4120	3476	4975
4976	1261	352
4977	4977	4977
4978	4069	1886
4979	4979	4979
4980	1531	4980
4981	4981	1408
4982	779	4982
4983	1019	4889
4984	1311	198
4985	4985	4985
4986	4986	329
4987	4987	4987
4988	321	4495
4989	2305	4989
4990	4990	2724
4991	737	3038
4992	4992	4992
4993	4140	4993
4994	3180	3648
4995	4995	829
4996	4851	4996
4997	4997	4997
4998	4998	2894
4999	4999	250
5000	2297	5000
\.


--
-- Data for Name: reldates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.reldates (id, date) FROM stdin;
1	16 June 1997
2	12 September 1975
3	10 October 1969
4	3 October 2000
5	15 March 2015
6	4 November 1991
7	23 March 1973
8	26 September 1969
9	12 March 1967
10	16 June 1972
11	5 August 1966
12	23 March 2004
13	8 October 1980
14	July 1963
15	10 October 2007
16	February 1965
17	22 October 2012
18	18 September 1970
19	17 August 1959
20	16 May 1966
21	19 April 1994
22	9 October 2000
23	10 February 1998
24	1 June 1967
25	9 November 1993
26	6 October 1974
27	22 November 2010
28	25 February 1972
29	27 March 1991
30	2 May 1989
31	22 November 1968
32	15 June 1979
33	21 January 1977
34	16 June 1986
35	30 August 1965
36	17 April 1989
37	8 November 1971
38	30 July 1969
39	14 January 1977
40	25 October 1996
41	8 February 1977
42	22 August 1994
43	16 September 1985
44	20 June 1966
45	14 August 1997
46	4 January 1967
47	19 November 1996
48	30 March 1970
49	20 January 1975
50	8 September 1972
51	1 June 1993
52	21 July 1971
53	27 August 2001
54	18 July 1980
55	24 September 1991
56	11 September 2001
57	12 May 1967
58	25 October 1968
59	28 September 1976
60	30 September 2016
61	27 December 1967
62	24 April 2012
63	5 July 2005
64	22 September 1997
65	22 October 1996
66	25 February 1997
67	19 November 1991
68	10 February 2004
69	18 October 1988
70	7 November 1995
71	20 August 2016
72	March 1969
73	3 December 1965
74	21 May 1971
75	8 January 2016
76	30 July 1984
77	23 January 1976
78	13 February 1970
79	27 November 1967
80	August 1971
81	22 March 1965
82	17 September 1990
83	19 September 1970
84	29 September 1998
85	September 1973
86	12 June 1999
87	September 1970
88	17 December 1971
89	30 September 1985
90	14 December 1979
91	9 November 1992
93	14 September 2004
94	3 March 1986
95	31 March 2015
96	25 June 1984
97	30 January 1968
98	3 August 1973
99	27 January 1960
100	7 February 2006
101	16 September 1988
103	19 July 1974
104	19 April 1968
105	20 April 1998
106	16 November 2004
108	12 November 1984
109	21 September 1993
110	21 March 1995
111	31 August 1990
112	March 1961
113	8 March 1994
114	May 1969
115	25 January 2008
116	18 November 1997
117	14 September 1959
118	30 August 2005
119	17 June 2003
120	1 September 1969
121	14 May 1969
122	25 April 1995
123	April 1972
124	3 May 1982
125	14 November 1975
127	23 December 1966
128	12 January 1969
129	4 February 1977
130	27 November 2000
131	23 April 1971
132	27 August 1996
133	November 1967
134	October 1972
135	21 September 1990
136	30 November 1970
137	July 1972
138	February 1973
139	5 November 1971
140	April 1978
141	3 October 2001
142	13 May 2014
143	22 June 1971
144	13 September 1994
145	17 March 1971
146	3 August 1979
148	20 August 2001
149	February 1971
150	20 August 2002
151	19 March 1990
152	14 November 2006
153	1 September 1982
154	22 October 1969
155	14 October 1977
156	12 October 1973
158	23 August 1994
160	30 March 1987
161	25 July 1970
162	13 March 2001
163	28 January 1997
164	26 July 1993
165	10 November 1992
166	17 May 2019
167	18 November 1996
168	3 September 1984
169	21 March 1988
170	15 May 2001
171	18 March 2014
172	3 September 1990
173	7 October 1986
174	13 March 1989
175	25 August 1971
176	26 May 1972
177	January 1958
178	14 February 1994
179	November 1972
180	29 November 1969
181	28 December 1973
182	10 May 1994
183	28 September 2009
184	January 1959
185	29 November 1968
186	10 March 1972
187	13 March 1995
188	27 August 2002
189	17 April 2001
190	5 November 2007
191	2 September 1980
192	19 February 1971
193	26 September 1997
194	19 May 1978
195	27 May 1963
196	December 1965
197	21 July 2017
198	1975
199	September 1983
201	March 1960
202	1963
204	22 November 1974
205	18 February 2002
206	1 December 1967
207	8 May 2016
209	11 November 2016
210	24 February 1975
211	1 November 1984
212	22 September 1981
213	4 March 2011
214	29 September 1992
215	3 September 2021
216	24 February 1971
217	8 October 2021
218	4 September 2001
219	21 January 2003
220	September 1969
221	23 April 2002
222	26 October 2018
223	1 October 1996
224	13 June 2000
225	30 November 1982
226	25 September 1979
227	12 March 2001
228	11 April 1988
229	March 1977
230	15 June 1995
231	1974
232	1977
233	25 August 1975
234	22 October 1991
235	28 August 2012
236	12 July 1971
237	December 1977
238	22 March 1982
239	1 November 1970
240	25 March 1995
241	13 October 1973
242	6 October 1972
243	8 September 1992
244	26 November 1971
245	21 June 2002
246	21 June 1994
247	12 October 1999
249	September 1981
250	1969
251	1971
252	25 September 1967
253	6 December 1968
254	November 1959
255	August 1964
256	1 October 1995
257	26 January 1970
258	18 October 1999
259	8 November 1972
260	25 December 2003
261	4 March 2003
262	23 June 2000
263	15 September 1965
264	February 1966
265	25 July 1989
266	22 December 2006
267	28 March 1973
268	February 1974
269	September 1984
270	18 December 1998
271	4 August 1967
272	12 March 2007
273	25 September 1972
274	25 March 1972
275	20 June 1975
276	31 March 1998
278	28 February 1970
279	9 February 1981
280	23 September 1977
281	18 November 1974
282	24 July 1997
283	February 1972
284	11 August 1992
285	2 November 1994
286	29 March 2017
287	25 August 1998
288	21 May 1998
289	30 November 1979
290	November 1961
291	17 January 2017
292	1967
293	8 June 2018
294	31 January 1996
295	14 April 1988
296	28 October 2002
297	1 September 1961
298	1958
299	1 March 1974
300	28 April 2008
301	25 January 2000
302	October 1965
303	20 November 2001
304	12 September 2000
305	1970
306	25 March 1994
307	June 1987
308	April 1964
309	16 September 2003
310	10 February 1997
311	24 February 1998
312	2 December 2005
313	1984
314	23 February 2010
315	June 1977
316	16 February 2018
317	15 December 2000
318	24 January 2008
319	August 1978
320	19 May 2004
321	22 June 1999
322	16 August 1994
323	21 April 1980
324	29 September 1976
325	11 December 1970
326	6 October 1992
327	13 December 1975
328	5 August 2003
329	1978
330	20 June 2000
331	5 April 2019
332	15 September 1998
333	12 April 1983
334	17 May 1971
335	23 February 2003
336	1 August 1995
337	14 December 1959
338	24 June 1997
339	23 September 1979
340	July 1984
341	24 September 1996
342	November 1981
343	17 May 1976
344	4 June 2001
345	3 June 1970
346	23 September 1997
347	15 September 2021
348	29 April 1971
350	23 October 1995
351	3 July 1996
352	22 April 1997
353	30 October 1995
354	19 March 2015
355	23 June 1998
356	April 1957
357	24 March 2017
358	19 March 1971
359	23 February 1999
360	20 November 1971
362	18 December 1999
363	2 July 1997
364	July 1987
366	May 1964
367	26 October 1973
368	3 June 1977
369	26 July 1974
370	9 November 1999
371	11 October 1972
373	21 September 1999
374	10 May 1981
375	2 June 1978
376	11 November 1981
377	1962
378	5 October 1970
379	October 1971
380	27 July 1988
381	17 November 1995
382	30 June 1993
383	15 December 2014
385	4 November 2003
386	September 1967
387	November 1982
388	August 1958
390	21 February 1994
392	8 August 2006
393	2 April 1996
394	December 1966
395	January 1965
396	November 1989
397	22 November 1976
398	November 1969
399	8 July 1997
400	16 November 1999
401	1 August 1983
402	29 October 1978
403	October 1973
404	3 November 1971
405	3 May 1969
406	1972
408	2 September 1982
409	July 1965
410	23 March 2009
411	2 February 1999
412	15 September 1967
413	23 October 2013
414	7 September 1984
415	1 March 1995
416	26 October 1999
417	21 April 2010
419	7 November 2000
420	19 October 2004
421	6 June 1970
422	30 November 2018
423	April 1961
424	17 October 2000
425	15 December 1975
426	28 March 1995
427	18 July 2001
428	7 December 2005
429	21 July 1995
430	11 March 1970
431	26 February 1992
432	September 1971
433	9 October 1990
435	24 May 1993
436	7 March 1994
437	23 September 1970
439	September 1974
440	6 May 2016
441	11 November 1992
442	February 1995
443	12 May 1989
444	10 November 1975
445	22 January 1968
446	October 1997
447	1985
448	18 June 2013
449	25 June 1996
450	27 January 2009
451	29 January 1971
452	23 March 1976
453	25 May 1995
454	7 October 1997
455	1976
457	13 August 2015
459	13 July 1999
460	5 January 1976
461	June 1973
462	1986
463	24 May 2005
464	1 June 1983
465	14 November 2005
466	23 July 2008
467	31 October 2000
468	28 October 1972
469	20 March 1990
470	October 1975
471	10 July 2012
472	11 February 2012
473	1982
474	16 July 2002
475	8 June 1992
476	14 September 1992
477	8 April 1971
478	30 March 1973
479	1 December 1997
480	29 September 1986
481	14 July 1982
482	29 May 1991
484	28 February 1995
485	11 October 2001
486	31 July 1996
488	30 October 1983
489	1983
490	20 February 1984
491	April 1969
492	20 November 2006
493	June 1967
494	31 August 2004
495	10 December 1999
496	20 September 1982
497	20 March 2001
498	25 August 1988
499	15 October 2002
500	27 October 1982
501	2 November 1969
502	24 March 1979
503	24 November 1992
504	2 December 1975
505	August 1976
506	16 February 1972
508	20 April 1992
509	21 September 1973
512	4 November 1977
513	10 March 1967
514	2000
515	June 1966
516	7 July 1978
517	22 September 1969
518	30 May 1980
519	28 November 2006
520	25 June 1975
521	August 1966
522	8 September 2017
525	17 March 1978
526	16 October 1985
528	November 1957
529	5 June 1991
530	13 August 2002
531	25 April 1980
532	7 August 2020
533	11 November 2005
534	1 August 2009
535	3 May 2010
536	April 1994
537	9 June 1994
538	December 1970
539	2003
540	18 July 1960
541	30 August 2000
542	29 May 2010
543	1 May 1999
544	19 July 2006
545	27 September 2005
546	April 1973
548	25 May 1983
549	24 January 1984
550	May 1970
551	1979
552	10 December 2002
553	6 January 1998
554	21 October 1991
555	December 1964
556	September 1986
557	2 May 1983
558	25 April 2018
560	November 1974
561	22 April 1991
564	25 November 2003
565	2002
566	August 1992
567	18 February 1994
568	27 October 1986
569	8 February 2000
570	28 February 1999
571	28 September 2017
573	23 January 1995
574	6 June 1981
575	20 March 1991
576	10 February 1978
577	4 November 1996
579	5 September 1989
580	January 1962
581	10 September 2007
583	October 1999
584	29 October 1996
585	28 November 1977
586	January 1972
587	8 November 1980
588	27 October 1998
589	16 April 1990
591	2 April 2007
594	April 1966
595	February 1998
596	10 October 1994
597	9 October 2001
598	1987
599	March 1982
600	24 April 1992
601	21 August 1998
602	19 September 1988
603	27 August 1991
604	8 April 1977
605	1 February 1985
607	1 September 1977
608	8 October 1988
610	9 November 2013
611	February 1967
613	15 August 2011
614	13 September 2013
615	14 October 2002
616	13 April 1983
617	September 1961
618	14 January 1963
619	14 April 1980
620	March 1976
621	1990
622	May 1986
623	18 March 1977
624	23 November 1993
625	28 June 1999
626	6 August 1991
627	12 April 1973
628	4 May 1999
629	July 1966
630	18 May 2010
631	16 November 1988
632	9 April 1996
633	1961
634	24 March 2015
635	14 January 1980
636	2006
637	9 April 1997
638	3 May 2011
639	19 June 2012
641	1 March 1956
642	8 November 1994
643	1 March 1998
644	9 April 2018
646	6 November 1997
647	20 May 2016
649	5 July 1988
650	17 January 1974
651	28 August 1973
652	9 August 1994
653	21 April 2017
654	27 October 2002
655	25 January 2006
656	1966
657	14 September 1999
659	7 December 1973
660	10 April 1990
661	21 November 2006
662	7 September 1999
663	10 June 1986
664	July 1958
665	27 January 1999
666	22 February 2000
667	22 March 1974
668	8 February 1993
669	May 1976
670	July 1964
671	1 March 1999
672	28 June 1994
673	16 October 2007
674	5 August 1969
675	16 October 2006
676	3 August 1969
678	16 September 2002
680	5 March 2003
681	30 September 1997
683	1959
685	1973
686	14 October 2013
687	5 October 1993
688	21 November 2000
689	19 May 1992
691	1994
692	27 April 1999
693	16 May 1983
694	March 1986
696	5 April 1995
697	March 1972
698	20 March 2002
700	29 October 2014
701	23 June 2010
702	29 April 2016
703	30 June 1992
704	14 October 2016
705	February 1963
706	October 1967
707	September 1980
708	September 1985
710	19 September 1986
711	12 November 1971
712	5 November 2002
714	16 September 1977
715	12 October 2010
716	March 1965
717	31 March 2000
718	23 December 2019
719	22 May 2007
720	5 February 1982
721	12 September 1989
722	4 June 1990
725	June 1965
726	20 January 2009
727	24 October 2000
728	22 April 2003
729	1992
730	25 July 1983
731	11 April 2011
734	23 October 2015
735	9 November 1987
736	29 August 2006
737	29 August 1988
738	January 1961
739	2 May 1984
740	April 1976
741	24 May 1994
742	11 May 1998
743	11 May 1987
744	22 June 1985
746	9 April 1994
747	27 August 2014
748	8 July 1988
749	10 August 1979
750	3 October 1980
751	27 October 2014
752	26 June 1990
753	12 September 1980
754	24 March 1971
756	4 October 2000
758	August 1959
759	18 November 2005
760	31 July 2018
761	November 1970
762	17 February 1994
763	29 October 2001
764	19 May 1986
765	16 September 1997
767	5 October 1998
768	3 August 1992
770	8 November 2010
772	23 May 1995
773	October 2005
774	1968
775	14 February 2016
776	28 April 1972
777	15 June 1987
779	July 1975
780	27 June 1966
781	23 November 2011
782	2 December 2020
783	29 May 1990
784	23 June 1966
785	18 January 2004
786	19 August 2003
788	21 October 1975
789	20 March 1967
790	23 September 1985
791	15 December 1992
792	11 March 1996
793	25 December 1989
794	3 June 2013
795	17 June 2016
796	10 February 2017
797	9 September 2016
798	28 November 1974
799	30 October 1991
800	October 1974
801	May 1973
802	1 August 2001
803	25 August 1986
804	September 1979
805	23 February 2005
807	January 1978
808	23 November 1979
809	12 October 1993
810	13 April 2010
811	8 September 1980
812	5 October 1973
813	1964
814	26 March 1976
815	23 July 1972
816	4 September 2015
818	8 November 2019
819	17 February 1978
820	27 November 1972
821	6 February 1996
822	31 October 2017
823	6 December 1995
824	13 August 1985
825	19 October 1987
826	14 February 2011
827	3 April 1968
828	3 May 1988
829	1999
830	17 January 1969
832	23 June 2004
833	27 November 1970
834	9 June 1992
835	15 May 2012
836	24 September 2002
837	November 1980
838	December 1969
839	12 February 1972
840	July 1970
841	December 1954
842	July 1968
843	7 May 1978
844	1 August 1992
845	10 November 1952
846	26 May 2021
847	10 April 2001
848	July 1993
849	1988
852	21 July 2016
854	1 May 2002
857	9 September 1977
858	July 1983
859	18 March 1994
860	8 March 1982
861	5 March 2002
862	October 1992
864	6 June 2000
865	16 July 2003
867	20 March 2007
868	24 June 2015
870	19 February 2002
874	25 May 2018
877	September 1965
878	27 January 1997
880	21 August 1989
882	27 September 2017
883	16 February 1967
884	16 July 2007
887	26 February 1991
888	1998
889	14 June 1968
890	1 June 2019
891	5 February 1996
892	14 July 1984
893	6 June 1989
894	March 1970
895	10 July 2010
896	23 April 1976
897	11 April 1995
898	4 March 1957
899	20 September 2004
900	18 March 1978
903	1965
904	January 1980
905	11 September 1978
907	23 September 2016
908	26 January 2010
909	18 October 2005
910	28 September 1987
911	17 March 1986
912	21 July 1997
915	6 August 2002
917	February 1959
918	13 February 1996
921	January 1987
922	31 July 2000
923	May 1975
924	26 June 2020
925	December 1968
928	9 November 2018
929	4 November 2002
930	23 October 2020
931	6 March 1973
932	1 July 1968
935	2008
936	28 April 1998
937	11 November 2011
939	8 July 2007
940	4 March 1968
943	April 1974
944	24 April 1989
945	April 1965
946	20 July 1999
947	June 1968
949	December 1993
950	October 1970
951	25 August 2017
952	28 July 1975
953	5 May 1992
954	27 February 2001
956	11 February 1985
957	28 March 2005
959	7 August 2001
964	December 1973
965	28 June 2019
967	10 August 1993
968	September 2002
969	22 October 2001
970	November 1975
971	August 1962
972	17 April 1990
973	8 August 1994
975	22 November 2005
976	18 September 1989
977	18 October 1994
978	March 1992
979	13 May 1985
985	October 1991
986	September 1978
988	19 March 2003
989	28 December 1977
990	14 April 1981
992	12 August 1991
993	15 June 1968
994	15 May 1956
996	February 1990
997	1 March 2005
998	28 April 1980
999	2 November 1970
1001	29 August 1994
1002	8 May 1995
1004	24 January 1994
1005	May 1962
1008	28 March 2000
1009	4 April 1995
1013	22 July 1974
1014	May 1971
1015	27 July 2018
1016	1 July 2003
1017	12 April 2005
1018	February 1994
1019	October 1978
1020	January 1997
1021	3 January 1968
1022	August 1970
1024	3 June 2008
1025	1 April 1976
1026	29 May 1969
1027	3 July 1995
1028	November 1984
1029	17 November 2009
1033	13 September 2005
1035	21 August 2004
1036	13 July 1993
1037	15 December 2017
1039	16 April 1984
1041	20 October 1998
1042	13 August 1973
1043	7 September 1973
1044	July 1973
1045	20 August 1996
1046	14 April 1975
1048	1955
1049	March 1978
1050	2 September 1990
1051	24 March 1988
1055	28 August 1978
1056	May 1974
1057	5 August 1985
1058	31 October 1991
1059	17 November 1986
1061	August 1972
1063	March 1971
1064	23 November 1970
1065	29 April 2015
1066	July 1956
1067	24 September 2021
1068	10 November 1978
1070	December 1967
1071	25 February 1973
1072	6 August 2021
1073	28 July 1986
1076	5 April 1988
1077	4 September 1970
1078	8 November 1989
1080	14 May 2008
1082	1 November 1986
1084	30 May 2006
1085	11 March 2006
1086	22 April 1980
1088	June 1993
1089	4 December 2000
1090	15 January 1968
1093	1 September 1993
1094	16 November 2007
1095	22 November 1995
1096	17 April 2020
1097	27 April 1992
1099	6 November 1995
1100	25 March 2003
1102	15 October 2014
1103	2 September 1958
1104	27 April 1998
1105	12 October 2004
1107	September 1966
1108	21 December 1985
1109	June 1964
1110	17 June 1987
1112	4 March 1997
1113	1996
1114	August 1969
1119	13 September 2019
1120	October 1964
1122	14 August 1995
1123	29 June 1992
1124	18 October 1993
1125	18 January 1988
1127	1989
1129	1 April 2003
1130	5 November 2011
1131	6 June 1996
1132	13 April 1979
1133	2 August 1993
1135	January 1985
1136	29 March 1973
1138	29 September 1977
1139	26 April 2005
1141	18 November 1985
1142	26 December 2009
1143	13 November 1989
1145	2 July 1996
1147	11 November 1973
1148	24 February 1967
1149	5 November 1983
1150	6 November 1996
1151	December 1976
1155	6 March 1968
1158	18 February 2003
1160	22 July 1977
1161	December 1974
1162	March 1967
1163	13 July 1998
1164	3 July 1969
1165	10 March 2003
1166	10 January 2007
1167	6 February 1967
1172	23 May 1987
1174	9 October 2012
1175	10 October 1966
1176	30 August 2013
1177	30 November 1999
1180	December 1983
1183	26 June 2000
1184	16 April 2007
1185	3 January 1973
1188	June 2004
1189	13 November 2000
1190	16 April 1996
1191	29 March 1979
1192	1995
1194	17 January 2000
1195	24 April 2006
1197	24 August 1970
1198	30 April 2001
1199	21 April 1969
1202	9 June 2003
1203	8 April 1991
1205	15 April 1989
1206	26 March 2021
1207	23 January 1989
1209	9 May 2006
1211	15 April 1968
1213	4 May 1993
1214	31 May 1994
1215	1997
1217	17 August 1987
1220	13 October 1989
1221	4 November 1969
1222	15 October 1966
1223	1960
1225	8 October 1991
1227	October 1960
1229	9 March 1999
1230	6 June 2003
1231	9 November 1970
1232	11 August 1974
1233	20 April 1974
1234	November 1965
1235	29 May 1995
1236	1991
1237	23 May 1971
1238	7 December 1993
1239	2 September 1991
1241	13 January 1964
1243	April 1984
1245	3 April 1995
1247	February 1985
1249	19 January 2018
1250	25 September 2015
1252	January 1968
1254	26 January 1998
1255	10 July 1974
1256	21 January 1998
1257	9 March 2010
1258	23 May 1969
1259	27 October 2017
1260	November 1996
1261	1 September 1994
1262	14 August 2007
1263	17 August 2016
1264	13 December 1990
1265	1 March 2019
1266	September 2000
1267	December 1971
1268	3 March 1989
1269	17 May 1996
1270	1 December 1989
1271	26 July 1999
1273	August 1965
1274	14 September 2016
1275	17 February 2018
1276	19 January 1999
1277	16 November 1972
1278	27 September 1994
1279	6 January 1992
1280	11 September 2017
1284	20 October 2009
1285	May 1991
1286	February 1976
1287	8 May 2001
1288	30 October 2006
1289	November 1968
1290	June 1997
1292	27 October 2010
1293	28 September 1998
1294	20 May 1972
1295	August 1973
1296	January 1964
1297	April 1956
1298	December 1961
1299	2 March 2018
1300	2 February 1976
1301	June 1978
1303	25 July 1988
1305	15 January 2002
1308	July 1967
1310	26 July 1994
1313	August 1979
1314	June 1981
1315	22 September 1987
1316	3 November 1980
1317	24 June 1996
1320	18 April 2000
1323	28 September 2004
1324	16 July 1971
1326	12 June 1987
1328	17 May 1999
1330	January 1971
1333	21 November 1988
1334	9 March 1987
1335	21 September 1976
1336	27 October 1985
1338	11 June 2002
1341	14 November 2003
1342	12 February 1982
1343	7 July 1987
1345	1 December 1987
1346	13 November 2001
1350	20 November 2007
1351	18 April 1994
1352	December 1959
1353	10 December 1996
1354	28 September 2010
1357	11 February 1977
1358	24 July 2001
1359	24 January 1978
1360	1 November 1988
1361	25 February 1986
1362	22 August 1980
1363	15 June 2018
1365	10 November 1967
1367	26 April 1994
1368	29 June 1988
1369	8 March 1959
1371	5 December 2000
1373	31 October 2014
1378	25 November 1985
1379	April 1970
1380	28 March 2006
1381	November 1973
1382	April 1960
1383	December 1972
1384	8 November 2004
1385	19 October 1973
1387	November 1992
1388	1 August 1969
1392	21 December 2006
1393	22 May 1995
1396	19 April 1974
1397	10 January 1977
1398	October 1976
1399	5 December 1983
1400	5 February 1969
1401	14 November 2000
1403	17 January 2006
1405	April 1975
1406	16 June 1969
1407	2 November 2011
1408	March 1985
1409	8 February 2005
1410	20 February 1974
1411	25 April 1985
1412	27 November 1971
1414	14 November 1995
1415	18 July 1988
1416	April 1962
1417	March 1964
1418	February 1953
1419	13 November 2012
1420	22 May 2000
1422	22 September 1974
1424	20 October 1986
1426	24 January 1972
1428	26 April 2003
1429	1 January 1989
1430	9 February 1993
1431	3 October 1977
1432	10 January 1995
1433	16 March 1976
1434	October 1956
1436	5 October 2012
1437	1 June 1989
1438	4 October 1994
1439	22 August 1995
1440	19 September 1980
1441	November 1966
1442	18 June 1996
1443	13 March 2000
1444	11 February 1997
1445	16 February 1990
1446	6 May 2002
1447	11 October 1993
1448	19 May 1972
1450	15 November 1960
1452	8 September 1958
1453	1981
1456	21 June 2019
1457	3 July 1989
1458	23 March 1993
1459	28 October 1966
1460	8 March 1971
1461	2001
1462	May 1972
1466	28 July 1992
1467	28 April 2000
1468	August 2000
1471	19 October 1979
1475	February 1958
1479	1 October 2018
1480	8 June 2014
1481	23 September 1993
1482	7 April 2009
1483	15 April 1997
1484	November 1988
1485	10 September 1974
1486	18 October 1965
1487	April 1993
1491	9 September 2008
1493	7 July 1993
1494	7 February 2005
1495	2 July 1981
1496	October 1957
1497	27 January 1998
1498	11 May 2010
1499	30 April 2011
1501	22 February 1999
1502	February 1981
1504	30 August 1994
1506	12 September 1995
1507	6 February 1978
1508	14 July 1994
1510	August 1988
1511	31 January 1972
1512	25 November 1995
1513	August 1975
1515	24 February 1970
1516	7 November 1979
1518	1 August 1988
1519	15 May 1984
1521	September 1964
1522	21 October 1983
1523	September 1959
1524	13 December 2019
1525	12 August 1968
1526	12 March 1972
1527	29 June 2004
1528	25 October 1974
1529	20 December 2007
1531	8 February 1974
1532	February 1993
1533	21 June 1993
1539	September 1968
1542	19 November 2004
1545	31 March 1986
1546	2 July 1984
1547	28 October 1997
1548	28 October 1989
1549	11 August 2011
1550	22 March 1999
1554	3 September 1991
1555	3 June 1997
1556	December 1992
1557	25 January 2018
1558	December 1956
1559	9 June 1978
1560	2 August 1989
1562	22 June 1994
1563	20 March 2006
1565	21 October 2003
1569	25 June 2021
1570	10 March 1998
1571	14 September 1993
1572	1 October 1985
1574	25 August 1997
1575	1 August 1996
1576	7 November 1987
1578	21 September 1981
1579	21 July 2001
1584	10 February 2003
1586	1956
1588	May 1990
1589	19 October 1990
1591	December 1962
1592	April 1977
1595	20 November 2020
1598	December 1963
1599	29 June 2000
1600	18 May 1999
1601	10 June 2008
1602	4 August 1975
1603	8 May 2006
1604	3 April 1987
1608	15 May 1997
1609	12 July 2019
1610	8 April 1997
1611	October 1985
1612	9 August 2008
1614	10 September 1982
1615	2 April 1993
1617	13 June 1983
1618	4 November 1985
1621	November 1964
1625	20 January 2003
1626	3 August 2010
1627	25 June 2013
1629	30 August 1971
1630	26 March 2000
1631	15 March 1991
1632	16 October 1989
1637	5 January 1979
1638	10 May 1988
1640	14 March 2005
1642	7 November 1975
1643	25 October 1999
1645	January 1974
1647	1957
1648	12 January 1999
1649	17 August 1993
1650	12 August 1963
1651	May 1963
1652	January 1966
1653	November 1990
1655	9 May 1988
1657	6 February 1995
1658	17 January 1966
1659	13 May 1991
1660	22 November 1994
1662	21 February 2007
1665	15 March 1999
1666	21 June 1999
1667	30 January 1989
1669	7 June 2017
1670	11 September 2006
1671	12 June 1995
1672	12 November 1996
1674	July 1977
1675	29 October 1991
1676	20 June 1980
1678	24 March 1994
1679	2 October 1995
1680	3 July 2001
1682	1 September 1986
1683	19 November 2001
1685	22 November 1963
1686	30 January 1964
1689	30 August 1999
1690	11 April 2005
1691	11 June 2013
1692	5 February 2021
1694	10 June 1996
1696	11 November 2014
1698	18 September 2000
1702	6 June 1978
1703	28 August 2001
1704	22 October 1976
1707	1 November 1995
1710	16 May 1990
1711	4 October 1988
1712	3 January 1991
1713	26 September 1995
1717	25 July 1979
1720	June 1982
1721	3 May 2005
1722	6 March 2007
1723	February 1960
1724	19 October 1993
1725	February 1970
1726	25 February 1999
1728	April 1954
1729	23 March 2006
1731	2 June 2003
1732	16 June 2008
1733	November 2001
1735	February 1961
1736	17 November 1977
1739	21 February 1977
1741	16 June 1979
1743	18 March 2008
1748	12 September 2006
1749	28 September 1993
1752	31 August 1981
1754	26 November 2015
1755	25 September 2007
1757	26 June 2001
1758	7 August 2007
1759	10 October 1980
1760	15 December 1978
1761	2005
1762	March 1959
1767	15 May 2020
1768	18 May 2018
1770	21 August 2003
1771	19 June 1989
1772	March 1974
1777	30 September 1991
1778	13 June 1993
1779	31 August 1970
1782	2 February 1979
1785	9 February 1971
1786	17 June 2004
1788	3 June 2020
1789	17 August 1979
1790	1 February 1996
1791	1 March 1983
1792	30 June 1998
1793	3 May 2004
1796	24 October 1976
1797	17 March 1998
1801	25 May 1973
1803	June 1989
1804	August 1974
1806	May 1968
1807	8 October 1992
1809	27 March 2002
1812	January 1967
1814	23 January 2007
1815	June 1970
1816	12 November 2001
1818	January 1977
1822	16 June 2017
1823	2 September 1985
1824	17 November 1980
1825	August 1957
1828	27 June 1997
1830	December 1996
1831	October 1966
1833	7 April 1969
1834	5 November 1973
1835	17 June 1985
1836	21 November 1980
1837	11 February 2004
1839	25 September 2009
1841	1 October 2015
1842	27 May 2020
1843	11 February 2014
1844	30 September 2013
1847	July 1961
1848	31 August 2018
1849	18 April 1986
1851	24 October 2006
1852	29 March 1993
1853	6 June 1995
1854	27 April 1987
1855	3 November 1978
1856	26 July 2004
1857	22 January 2002
1859	13 May 1995
1860	1 August 1979
1862	10 July 2001
1863	23 March 2015
1865	11 January 1971
1866	30 March 1998
1868	14 March 2019
1870	11 October 1999
1871	16 November 1979
1872	2 September 1977
1874	May 1977
1875	26 November 2001
1876	March 1984
1877	8 August 2007
1881	6 July 1979
1884	3 June 1998
1885	30 September 1998
1886	February 1975
1887	10 July 1967
1890	March 1968
1891	November 1978
1895	6 August 1965
1896	9 February 2018
1897	21 January 2001
1898	16 July 1984
1900	24 October 1989
1901	30 August 2019
1902	4 May 1984
1903	9 September 1990
1904	22 September 1992
1905	October 1989
1907	25 November 2008
1909	6 May 1973
1910	6 July 1999
1911	March 1975
1912	August 1967
1913	10 October 1988
1914	2 July 1982
1915	28 April 1969
1919	March 1973
1924	July 1974
1926	26 July 2005
1927	June 1960
1929	30 January 2008
1930	18 February 1997
1933	2004
1934	January 2007
1935	22 September 1998
1936	13 November 1987
1939	1 August 1999
1944	December 1960
1946	16 May 2001
1947	19 February 2003
1948	31 October 1983
1949	1 June 1994
1950	1 November 1993
1952	11 March 1985
1953	28 April 2003
1954	31 October 2005
1955	27 September 1999
1956	22 December 2010
1958	26 November 2006
1959	15 October 1999
1962	27 October 1997
1964	18 August 1969
1967	21 April 1978
1969	6 July 1970
1971	25 October 1971
1973	3 August 2004
1974	26 February 2016
1975	13 June 1995
1976	September 2009
1977	29 March 1974
1978	April 1980
1983	21 April 1992
1984	28 July 1997
1987	10 April 1989
1989	15 November 1974
1991	16 August 1965
1993	14 February 1995
1994	5 April 2004
1996	30 June 1997
1998	2 February 1981
1999	24 October 1988
2000	16 March 2004
2007	19 October 1999
2009	April 1955
2010	22 July 1994
2011	September 1972
2012	19 July 2000
2016	20 January 1999
2021	21 January 1997
2022	20 February 1995
2023	16 April 2016
2025	21 April 1986
2026	4 May 1998
2027	December 1990
2028	24 October 2018
2029	19 September 1990
2030	28 November 1980
2032	26 July 2011
2034	4 October 1991
2036	3 June 2014
2037	25 January 1965
2040	5 September 2001
2046	1 October 2012
2047	25 May 1993
2049	15 October 1990
2050	15 October 2012
2051	1 November 1974
2052	14 March 1995
2053	5 January 1969
2054	20 February 1996
2057	December 2006
2059	6 March 2001
2061	7 June 1988
2062	6 September 1974
2063	26 October 1992
2067	21 January 1993
2068	January 2005
2070	3 December 1971
2071	31 August 1987
2072	25 April 1971
2075	5 February 2002
2076	4 October 2004
2077	1 November 1994
2078	30 October 1996
2080	December 1988
2082	September 1975
2083	18 March 1997
2085	3 November 1998
2086	18 May 2011
2089	24 March 2016
2091	August 1997
2092	11 February 1992
2093	14 May 2002
2095	1 March 1964
2096	13 December 1994
2098	September 1987
2099	March 2010
2100	22 February 1994
2103	23 November 1973
2104	January 1973
2105	1 June 1998
2107	April 1971
2108	2 December 2014
2110	9 September 1971
2111	11 July 1975
2113	April 1982
2114	18 September 2007
2115	2 February 2006
2117	16 June 1995
2118	March 1957
2119	9 November 1998
2122	27 October 2006
2123	1 March 1965
2125	22 November 1991
2126	29 May 2000
2132	29 September 1980
2133	17 September 1996
2134	30 September 1968
2138	5 November 1996
2142	March 1979
2144	24 November 1972
2145	16 October 1971
2146	March 2005
2148	July 1957
2149	27 March 2000
2150	12 January 2018
2154	18 October 2001
2156	10 July 1964
2157	15 April 1966
2158	5 May 2015
2159	22 March 1987
2160	26 March 2007
2161	26 June 1975
2162	1 February 2004
2163	22 October 1990
2165	15 March 2005
2168	July 1962
2169	May 1958
2172	3 March 2015
2173	6 December 2011
2174	14 March 1994
2179	15 September 1971
2181	10 October 2006
2183	2 May 2006
2184	2 March 2015
2186	5 September 1978
2187	26 September 2006
2188	October 1995
2193	2 February 2004
2195	July 1959
2196	January 2002
2199	11 May 2015
2201	14 October 2009
2202	3 December 1983
2203	21 March 1975
2206	February 2004
2207	22 April 2002
2208	14 April 1972
2209	23 February 2004
2214	13 August 1990
2215	16 December 1967
2217	6 August 1997
2218	14 May 2013
2221	December 2004
2222	1993
2226	December 1980
2227	4 October 1982
2230	22 August 1975
2232	April 1998
2239	19 November 1982
2240	2 September 2017
2242	21 July 1992
2244	24 March 1977
2246	9 May 1975
2247	11 November 2013
2248	7 March 1975
2249	14 March 1969
2250	27 September 1988
2251	7 May 1998
2252	15 September 2009
2253	September 1960
2254	14 April 2009
2256	26 February 2001
2257	27 November 1995
2259	7 November 2012
2260	March 1987
2262	20 October 1989
2263	24 June 1998
2267	17 August 2018
2269	8 November 1974
2270	15 May 2007
2271	1 November 1973
2273	21 January 2009
2274	22 February 1971
2275	July 1971
2276	26 October 1969
2280	November 1963
2283	30 November 2000
2284	11 April 1975
2285	19 January 1970
2286	15 November 2005
2288	21 May 2001
2291	7 July 1992
2292	11 October 1982
2293	8 October 1984
2296	25 September 1989
2300	11 May 2018
2301	13 October 2008
2303	23 May 2000
2304	23 February 2021
2305	27 September 2010
2307	August 1968
2308	20 May 1996
2309	15 February 1980
2310	7 May 2012
2311	19 January 1993
2312	30 June 1973
2313	September 1963
2314	7 September 1990
2315	17 April 1970
2316	10 November 1998
2318	23 June 1992
2320	10 September 1987
2321	6 May 1991
2323	2 December 1999
2324	25 February 2003
2325	9 September 1996
2329	10 April 2008
2332	18 October 2019
2333	4 June 1984
2336	11 November 1978
2337	5 October 1992
2339	1 October 1973
2340	14 November 1980
2341	4 December 1970
2342	24 December 2006
2343	10 April 2016
2344	7 July 1973
2345	22 June 2004
2346	May 1982
2347	24 February 2003
2349	19 July 1991
2350	May 1960
2351	28 February 1969
2352	25 February 1994
2353	19 July 2019
2355	27 June 2005
2356	December 1982
2357	6 September 2004
2358	30 April 1998
2364	24 October 1994
2365	29 March 2019
2366	22 February 2010
2367	19 January 1980
2369	30 November 1978
2372	18 September 2006
2376	1 April 1997
2379	1 May 1988
2381	30 October 1967
2383	12 October 1984
2384	June 1958
2385	17 December 2003
2386	23 March 1978
2388	28 October 1985
2389	18 May 1976
2390	June 1974
2396	November 1977
2397	14 September 2018
2398	25 April 1994
2400	6 January 1989
2402	April 1979
2403	25 February 1979
2404	24 March 1997
2406	17 February 2003
2410	15 June 1993
2411	23 September 1998
2412	29 August 2001
2413	8 August 1964
2414	October 1969
2415	11 December 2020
2418	11 January 2000
2419	12 May 1997
2421	25 May 1998
2423	1 November 2008
2425	26 June 1970
2426	17 August 1984
2428	23 April 1987
2429	3 September 2002
2430	January 1969
2431	6 October 2000
2432	1 October 1999
2435	April 1959
2438	15 May 1996
2439	25 January 2011
2440	5 May 2003
2442	2 September 1993
2443	22 August 2000
2444	29 April 1996
2445	13 March 2006
2446	25 November 1970
2448	19 January 2016
2449	28 June 1980
2451	18 July 1966
2454	18 April 1995
2458	October 1968
2459	7 December 1999
2462	23 July 2002
2463	30 January 1996
2464	20 November 2018
2465	October 1983
2466	13 July 1964
2467	24 May 1991
2469	10 October 2011
2470	30 May 2008
2472	26 March 1996
2475	25 November 1994
2476	25 June 2007
2477	26 November 2002
2478	19 March 1996
2480	15 February 2009
2483	January 1960
2487	8 August 1988
2488	17 October 2005
2491	3 November 1986
2492	15 February 1974
2493	5 February 1990
2497	30 April 2003
2498	8 October 2004
2504	14 March 1983
2505	2 September 1996
2506	7 March 2006
2509	25 September 1986
2510	26 April 2002
2511	19 September 1969
2512	19 August 2016
2513	4 September 1989
2514	10 March 1984
2516	1 October 1994
2517	31 August 1964
2518	3 August 1993
2519	18 December 2006
2520	19 August 1997
2522	12 December 1999
2524	25 January 1973
2525	11 June 1982
2527	17 May 2011
2528	5 October 1980
2530	March 1997
2532	July 1991
2533	18 October 2004
2534	13 May 2003
2535	January 1970
2538	16 May 2000
2541	30 April 2002
2544	May 1978
2545	1 April 1966
2546	February 1991
2550	October 1961
2553	March 1995
2554	6 June 2011
2555	5 March 2021
2557	15 January 1990
2558	8 September 1998
2559	3 April 2006
2560	4 February 2004
2561	13 February 1990
2564	29 April 1993
2568	25 October 1967
2569	25 October 1978
2570	29 January 1979
2571	22 August 2011
2574	16 December 1974
2576	23 September 2002
2578	24 November 1998
2579	September 2017
2581	27 October 2008
2583	31 October 1988
2584	3 November 2017
2585	31 January 2000
2586	25 November 2020
2587	9 September 2003
2588	11 May 1999
2589	5 July 1972
2592	3 January 1970
2593	20 August 2013
2595	April 2003
2597	5 October 2004
2600	3 April 1975
2602	21 January 1982
2603	22 January 2001
2607	1 October 1978
2615	June 1961
2616	4 March 2016
2619	18 February 2013
2620	21 June 1965
2622	February 1969
2625	28 September 2016
2627	7 August 1990
2628	7 September 1998
2631	12 May 1969
2633	18 December 2015
2634	26 February 1998
2635	14 May 1991
2636	19 April 1982
2638	15 May 2015
2639	21 September 1978
2642	9 February 1970
2644	12 September 1990
2646	13 April 1998
2647	July 1976
2648	7 February 1994
2649	4 July 2006
2650	7 July 1986
2651	16 October 2009
2652	8 October 2001
2653	6 July 1998
2655	14 October 1994
2656	31 December 2017
2662	3 September 1971
2663	1 July 1996
2665	24 February 2017
2668	18 September 2001
2669	June 1972
2670	14 June 1970
2671	25 February 2002
2672	August 1984
2673	25 September 1988
2674	13 September 1986
2675	8 September 1973
2677	November 1986
2682	15 May 1994
2684	16 February 1981
2687	July 1992
2688	3 January 2006
2692	2 April 2001
2693	2 November 1992
2694	8 November 1981
2695	3 September 2003
2697	24 November 2014
2698	October 1984
2699	4 October 1986
2701	26 May 1967
2703	7 July 1984
2705	26 October 2004
2706	4 December 2015
2707	18 February 1977
2709	19 September 1995
2713	29 March 1982
2714	August 1990
2715	23 February 2009
2716	28 July 2003
2717	12 December 1975
2718	10 November 1986
2719	29 March 1999
2721	20 June 1984
2722	11 February 2008
2723	June 1975
2724	19 June 2020
2726	13 September 2004
2727	27 June 1988
2729	29 September 2017
2730	October 1987
2731	November 1956
2735	February 1978
2736	28 October 2003
2738	8 May 2020
2741	9 October 1996
2743	November 1971
2744	24 August 2004
2745	13 January 2003
2746	21 February 2005
2751	15 November 1976
2752	8 December 2008
2754	25 March 1997
2755	10 September 2021
2756	September 1982
2760	10 March 1986
2766	5 January 1990
2767	29 March 2005
2768	12 July 1994
2769	10 March 1978
2770	26 June 2009
2771	13 March 1968
2773	9 December 2016
2775	22 June 1982
2780	5 April 2002
2781	23 January 2006
2784	20 September 1994
2785	15 December 2004
2786	23 July 1996
2787	1 December 1968
2788	22 February 2011
2789	30 October 1970
2790	29 September 1997
2792	24 August 1999
2793	30 May 1995
2794	17 November 1972
2795	2 August 2006
2796	4 March 1996
2801	24 March 1998
2806	22 June 1998
2807	8 October 1971
2809	6 January 1999
2810	15 January 1991
2811	27 March 1984
2813	24 August 1989
2814	23 May 1975
2815	October 1980
2816	15 September 1992
2818	7 February 1975
2820	2 April 1974
2822	19 April 2004
2823	5 May 1994
2825	18 August 2014
2826	October 2007
2829	7 December 2016
2830	14 September 2010
2833	28 February 1983
2834	31 October 1994
2836	8 September 1976
2837	21 October 2002
2838	17 October 1973
2839	28 February 2012
2841	29 July 2019
2842	1 November 1991
2848	7 June 1975
2851	21 September 1991
2854	March 1962
2855	1 September 1997
2856	1980
2857	29 May 2020
2859	10 October 2000
2860	31 May 2005
2862	20 December 2004
2864	10 October 1995
2870	9 March 2016
2872	October 1982
2873	24 October 1995
2874	1 April 1995
2875	31 October 2001
2876	26 January 1999
2877	5 November 1991
2879	24 February 1978
2880	2009
2884	15 January 1996
2886	28 August 2005
2887	20 May 2004
2888	16 June 2014
2890	January 1957
2892	March 1966
2893	24 June 1993
2894	12 November 2007
2895	13 September 1993
2896	12 May 1992
2897	26 August 2003
2902	2 April 2002
2904	June 1998
2913	16 November 1981
2914	22 June 1996
2921	9 March 1992
2922	14 July 1992
2923	March 1958
2924	16 June 1989
2925	9 September 1993
2926	5 March 1956
2927	12 March 1984
2928	22 July 2002
2931	November 1954
2933	April 2007
2939	10 November 2003
2940	July 1969
2942	23 March 1999
2943	27 October 1979
2946	10 July 1980
2949	2012
2952	23 December 1968
2954	January 1975
2956	June 1994
2958	27 September 1993
2959	6 April 1979
2962	3 May 1991
2966	29 December 1969
2968	30 October 1990
2969	June 1971
2970	29 July 1997
2971	22 February 1989
2973	29 April 2003
2974	20 July 1959
2976	1954
2978	4 February 1972
2979	3 February 1995
2980	7 February 2002
2981	11 July 1995
2982	February 2005
2983	12 September 1994
2987	23 May 1989
2989	6 September 1991
2990	17 November 2014
2991	10 December 2017
2994	November 1960
2996	8 April 2003
2999	11 October 2004
3000	25 August 2001
3005	29 June 1968
3006	9 June 2008
3007	4 October 2011
3008	7 September 1987
3009	24 March 1986
3010	May 1959
3011	23 April 2001
3015	30 January 1982
3017	27 October 2003
3019	24 January 2005
3022	1 July 1998
3023	1 September 1970
3024	15 November 2011
3027	11 September 2007
3028	10 June 2002
3029	4 November 1981
3030	7 September 1979
3031	3 November 1981
3032	February 2003
3036	1 February 1999
3038	5 March 1996
3040	5 November 1992
3044	19 October 1992
3045	20 July 1998
3048	2 September 2003
3049	27 July 1979
3050	28 June 2011
3051	6 August 1996
3054	7 October 2008
3058	30 April 1976
3059	16 April 1976
3062	4 March 1983
3066	27 October 1969
3069	15 August 1995
3070	14 October 1967
3071	15 March 1971
3080	21 August 2007
3081	31 January 1994
3082	22 April 1996
3084	17 March 2008
3087	28 April 1997
3090	21 February 1995
3092	June 1980
3095	20 July 2009
3096	16 June 2003
3097	9 February 2015
3098	1 October 1991
3100	10 April 2012
3102	May 1989
3103	30 August 1998
3104	April 1985
3106	September 1989
3108	July 1994
3111	6 February 1971
3114	6 November 2019
3115	19 January 2004
3116	1 November 1997
3119	25 May 2004
3121	25 May 2017
3124	22 June 2018
3125	17 January 2020
3126	7 May 2021
3127	20 April 1979
3128	1 October 2001
3130	17 November 1978
3131	29 March 1975
3136	23 March 2001
3139	13 June 2001
3140	24 February 1997
3141	10 December 1977
3143	3 October 1991
3144	1 June 1995
3145	1 November 2005
3152	21 February 2006
3154	17 February 1997
3155	22 November 2000
3156	April 1963
3157	8 July 2011
3161	22 July 1966
3162	11 April 1960
3163	27 November 2007
3164	1 April 1977
3165	18 August 2003
3168	28 May 1998
3169	1 September 2001
3180	30 August 1988
3181	5 November 1999
3182	2 October 2009
3184	May 1961
3185	22 November 1999
3188	8 March 2014
3189	26 November 1990
3190	1 August 1966
3191	5 June 2001
3194	4 November 2005
3195	December 1998
3196	20 September 2019
3198	21 April 1997
3199	15 November 2019
3201	22 September 2004
3203	1951
3204	21 April 2007
3205	15 September 1972
3206	1 June 2013
3210	18 June 1973
3212	26 June 2006
3213	22 June 2016
3217	2 November 1999
3218	10 February 1986
3221	15 June 2009
3223	19 September 2005
3224	24 October 2003
3228	12 April 1972
3229	February 1989
3232	February 1964
3233	16 October 2014
3238	27 October 1991
3239	5 September 2018
3242	15 January 2016
3243	7 October 2003
3244	7 November 1994
3246	22 November 2019
3248	August 1963
3251	21 August 2001
3253	8 August 2008
3257	2 May 1995
3261	24 April 1990
3262	29 November 1999
3264	February 2008
3265	June 1986
3268	23 May 2006
3269	23 September 2003
3271	14 June 1991
3272	27 November 2019
3277	13 December 2005
3278	February 1979
3280	3 April 2000
3282	30 March 2004
3284	18 December 2007
3285	11 March 2016
3290	May 2006
3291	12 June 1992
3292	7 November 1969
3295	2 August 1995
3300	12 April 1994
3301	24 September 2007
3302	2 October 2013
3304	15 May 1995
3306	27 July 1992
3307	27 October 2009
3308	20 February 1958
3310	24 September 1990
3314	17 February 2006
3315	20 June 1969
3321	3 July 1968
3324	17 July 2020
3325	1 November 1981
3328	4 March 1998
3331	8 June 1999
3337	20 August 1975
3338	25 May 2015
3340	22 July 2020
3341	15 July 2015
3342	19 August 1996
3346	26 July 1971
3347	July 1995
3349	18 February 1989
3350	23 November 2010
3353	9 December 2009
3355	9 August 1996
3356	25 April 1979
3358	30 March 1990
3363	21 September 2009
3368	21 March 2001
3370	5 April 2005
3371	12 September 2005
3372	11 April 1970
3374	February 1957
3375	30 September 2021
3378	4 November 1986
3379	7 July 1998
3385	July 1982
3389	27 May 1965
3393	21 March 2016
3396	19 June 1990
3398	22 September 2006
3402	21 March 1977
3403	17 November 1994
3404	5 March 2001
3407	22 November 2011
3408	2 May 2000
3411	21 September 1998
3412	3 March 1972
3413	15 April 1983
3415	12 May 2009
3416	26 September 2003
3417	May 1965
3421	25 November 2002
3430	7 October 2013
3432	7 February 2014
3433	1 October 2013
3434	13 November 1981
3437	22 January 1996
3439	24 November 1967
3441	25 March 2002
3442	27 January 1986
3443	17 September 1984
3446	25 July 2000
3447	20 January 1972
3448	23 March 1995
3449	December 1975
3453	10 April 2020
3455	1 January 2010
3456	5 October 1968
3461	25 August 1992
3465	2 October 2014
3467	25 September 1982
3469	13 August 1996
3472	21 November 1981
3473	3 November 2006
3474	5 May 2009
3476	5 September 1995
3484	2 November 2004
3487	11 June 1993
3489	17 September 2020
3490	18 March 1995
3491	25 May 1987
3492	16 February 1988
3497	15 September 1997
3498	5 April 2017
3499	20 April 2012
3506	25 October 2001
3507	October 1963
3508	September 1991
3513	February 1997
3514	2 July 2011
3515	6 August 2007
3516	30 March 2018
3517	30 April 1984
3520	24 March 1992
3521	28 February 2005
3522	16 June 2009
3528	12 June 1989
3530	6 April 1974
3532	20 March 1987
3537	25 February 1977
3540	18 April 1977
3542	12 May 1999
3543	3 December 1976
3545	24 June 2003
3546	19 September 2006
3547	1 April 1980
3549	16 January 1972
3550	23 July 2001
3552	16 August 1980
3553	5 September 2005
3555	21 January 2015
3556	3 October 2006
3557	24 November 1969
3559	April 1983
3565	13 September 2011
3568	27 February 1990
3571	3 June 2011
3573	14 April 1997
3574	30 May 1981
3575	September 1977
3577	8 April 2016
3579	23 August 2013
3580	28 August 1974
3586	11 June 1996
3591	26 September 2000
3595	1 May 1976
3597	November 1962
3601	22 September 1978
3603	12 March 1990
3604	3 February 2003
3605	23 February 1993
3608	3 January 1971
3610	11 June 2001
3612	9 May 1995
3616	6 December 2005
3617	25 February 2013
3619	30 October 1987
3620	7 November 1980
3623	1 May 1983
3624	19 May 2003
3628	February 1988
3629	5 September 2007
3630	5 September 2000
3634	December 2000
3635	22 May 1986
3636	25 August 1995
3637	30 September 1994
3638	October 1955
3642	10 November 2006
3645	1 July 2004
3646	10 October 2012
3647	February 1968
3648	May 1987
3649	1 March 1991
3650	June 1969
3654	June 1995
3655	23 October 1996
3657	2 October 1970
3658	21 November 1983
3659	14 October 1957
3660	9 March 2005
3661	17 August 1998
3662	13 November 2006
3668	3 June 2002
3669	27 July 1973
3671	28 September 1999
3673	10 February 2006
3674	20 January 2010
3675	September 1997
3677	21 June 2005
3678	July 1986
3680	26 March 2002
3681	8 September 2009
3685	24 May 2004
3686	7 March 1970
3687	31 August 2012
3690	24 September 1969
3693	6 April 1999
3695	21 March 2000
3697	July 1979
3698	May 1988
3699	11 April 2008
3705	18 June 2001
3706	20 May 2013
3713	25 January 2005
3714	14 November 2016
3715	2 October 1979
3717	25 August 2008
3719	17 October 2001
3721	17 February 1967
3723	9 February 1996
3724	6 December 1977
3725	13 September 1990
3727	20 October 2017
3728	22 January 2003
3730	6 October 2014
3732	21 February 1992
3733	8 June 2004
3734	11 April 2018
3735	15 October 1974
3736	20 October 1995
3740	November 1995
3741	17 July 1974
3742	16 August 1999
3745	March 1981
3750	5 January 2010
3752	25 August 1976
3753	8 October 1981
3754	20 July 2004
3755	September 1996
3756	17 February 1986
3757	17 April 1992
3759	18 April 2005
3760	5 May 2014
3761	8 June 1982
3762	3 August 1987
3764	November 2014
3765	17 April 2009
3771	5 September 1997
3772	15 December 2009
3777	12 June 1993
3778	September 1995
3779	3 March 2001
3783	June 1947
3785	9 October 2009
3787	24 November 2008
3791	27 March 2007
3792	12 December 1983
3795	25 November 1978
3796	13 November 2015
3797	26 February 2002
3799	18 January 1994
3800	25 April 2006
3803	28 April 2012
3804	12 April 1984
3806	23 November 2018
3807	10 April 2006
3808	September 1990
3811	13 September 1999
3813	26 February 2007
3816	25 November 2016
3818	25 August 1987
3821	26 July 1973
3822	17 November 1976
3823	24 April 2020
3824	18 August 2008
3825	4 November 1987
3827	2 August 2004
3828	8 February 1980
3829	26 April 2000
3831	29 March 2004
3835	11 May 1993
3836	1 October 2021
3839	30 April 1974
3846	25 November 2004
3847	17 June 1997
3848	15 August 1993
3849	9 February 1994
3854	29 April 2019
3855	26 September 1994
3858	27 September 1976
3862	4 February 1991
3863	21 October 2016
3865	3 November 2003
3866	1 January 1999
3867	29 May 2009
3868	3 June 1985
3869	11 March 1994
3871	11 September 2009
3872	February 1962
3873	15 June 2005
3878	4 May 2004
3879	17 June 2007
3880	8 December 2014
3881	6 May 1957
3882	3 June 2003
3884	20 January 2015
3886	1 February 2005
3889	June 1983
3890	13 August 1991
3891	8 August 2010
3894	20 April 1970
3896	21 June 2010
3897	25 June 1990
3899	26 October 1967
3903	4 May 1990
3906	25 April 2000
3907	May 1966
3909	19 January 2015
3910	10 June 1997
3911	10 March 1997
3912	5 May 2017
3913	7 August 2015
3916	17 September 1979
3917	20 May 1997
3919	21 June 2017
3922	24 February 1999
3924	13 April 1991
3925	April 1996
3931	10 April 1974
3933	9 February 1988
3934	6 October 1997
3939	7 October 1999
3940	28 August 2000
3943	24 August 2016
3945	22 August 1964
3949	27 May 1983
3950	14 February 2005
3952	3 November 2014
3953	24 March 2003
3956	21 May 2007
3957	8 October 2002
3958	1 October 2007
3959	22 June 2015
3960	8 December 2004
3961	20 March 2000
3962	2 June 2017
3963	16 March 1979
3964	20 September 1991
3967	22 August 2007
3968	22 February 2005
3969	19 February 1996
3972	May 1984
3973	9 May 1980
3979	28 October 1977
3981	May 1980
3982	2 September 2013
3983	3 October 1990
3984	1 July 2001
3985	16 January 2008
3986	February 1984
3987	25 March 2008
3989	25 February 1978
3990	21 May 1991
3993	January 1976
3994	19 September 2000
3996	6 July 1992
3998	17 November 2017
4000	1 February 2000
4001	2 April 1992
4006	October 2010
4007	April 1992
4008	16 February 1996
4009	6 March 2020
4010	December 2005
4011	22 March 2011
4012	5 February 2009
4013	22 October 1997
4014	1 June 1999
4015	13 November 2007
4022	4 February 2001
4026	12 October 1987
4027	August 2006
4030	15 September 1986
4032	September 2012
4036	19 May 2016
4038	1953
4040	26 May 1997
4041	7 February 2003
4042	September 1994
4044	4 May 2010
4045	23 May 2005
4046	29 February 2016
4048	21 June 2004
4055	30 April 2006
4057	22 February 1982
4060	January 1993
4061	25 March 1984
4065	23 November 1992
4067	1 April 1974
4068	17 October 1980
4069	November 1976
4071	2 May 1996
4076	22 June 1973
4077	10 November 1996
4078	21 July 1972
4086	15 February 2000
4087	20 November 1970
4088	22 March 2005
4091	August 1980
4092	11 June 1991
4094	16 August 2004
4097	20 May 1998
4109	28 November 2004
4110	11 April 1969
4112	1 October 2002
4114	15 October 2001
4121	17 May 2005
4122	29 March 2010
4123	15 September 2017
4124	5 February 2006
4125	14 May 1984
4126	11 February 1973
4127	23 October 1967
4128	14 May 1996
4130	28 April 1993
4133	29 November 1988
4135	10 November 1973
4137	July 2000
4140	21 December 2015
4141	25 June 2014
4145	February 1987
4147	June 1963
4150	10 June 1985
4151	14 March 1988
4152	18 February 2014
4153	3 May 1976
4157	11 January 1984
4158	13 December 1971
4161	21 November 1977
4162	11 November 2002
4168	29 September 2003
4170	19 December 2020
4171	3 April 2007
4173	24 December 2016
4174	2 February 2001
4175	30 April 2013
4176	24 March 1982
4178	17 March 2003
4180	30 August 1993
4181	4 May 1981
4182	22 February 2013
4183	4 March 1985
4185	25 September 1994
4187	January 1992
4189	25 November 2005
4190	29 April 2013
4194	21 February 1998
4195	10 August 1974
4198	20 June 1995
4199	17 July 2018
4204	30 June 2017
4205	12 October 1998
4207	26 November 1998
4209	1 November 1990
4210	24 October 1975
4216	June 1999
4219	24 April 2000
4222	17 July 1990
4227	12 March 1996
4230	14 September 1996
4231	10 October 2005
4234	9 October 1992
4235	May 1992
4236	25 August 1969
4239	25 December 2001
4248	1 February 1994
4251	21 August 1990
4260	15 August 1988
4261	18 July 1989
4263	17 May 2004
4267	28 June 2004
4268	1 November 2004
4273	June 1954
4277	18 August 1980
4279	18 March 2009
4282	6 March 2000
4284	28 January 2003
4285	24 April 1970
4287	April 2008
4288	19 March 2002
4290	11 September 2012
4293	3 August 1970
4296	23 April 1991
4299	18 May 2009
4301	1 June 1982
4302	7 April 1997
4304	30 August 1968
4306	31 August 2005
4308	1 March 2013
4309	4 September 1990
4312	24 April 2007
4316	October 1962
4318	18 November 1976
4319	3 July 2000
4320	May 1979
4321	14 March 1989
4323	10 September 2001
4326	28 April 1982
4327	10 January 2005
4332	3 May 1992
4336	18 December 2020
4339	6 November 2012
4340	16 October 2015
4343	5 September 2009
4344	9 March 1998
4345	22 December 2020
4356	21 December 1977
4357	January 1989
4368	17 September 2021
4369	3 April 2020
4372	17 November 2008
4373	22 June 2010
4374	26 September 2005
4375	9 June 2001
4376	19 November 2010
4382	30 October 2000
4386	4 July 2004
4390	27 March 2003
4392	November 1979
4393	November 2000
4396	6 July 2004
4397	12 July 1993
4400	28 May 2021
4401	11 August 2003
4403	19 January 1987
4404	5 June 2006
4405	5 October 1981
4406	29 June 1996
4411	12 September 2008
4419	6 June 2005
4422	14 April 2017
4427	21 July 1987
4429	13 May 1979
4430	7 September 2009
4431	2 March 1984
4432	26 May 1998
4437	19 June 2009
4439	29 October 2010
4445	August 1995
4446	14 June 2006
4455	4 February 1983
4457	22 July 1968
4458	29 March 2016
4463	1 August 2012
4466	10 September 1979
4468	15 September 2000
4469	13 May 2009
4473	19 October 2016
4474	1 July 2002
4476	6 December 1999
4478	31 August 1998
4481	29 October 2002
4482	2 April 2021
4483	4 September 1982
4484	25 April 1955
4486	11 June 1990
4487	7 December 1998
4488	14 December 1993
4490	26 February 2008
4491	28 March 2011
4492	4 February 1986
4495	22 June 1993
4497	9 August 2011
4507	7 August 2013
4508	24 February 2004
4510	21 March 2006
4515	19 August 1988
4517	28 May 2002
4518	24 July 1990
4519	10 March 2017
4520	9 June 2009
4521	15 March 1980
4523	7 November 2014
4530	25 August 1999
4531	6 January 2000
4534	16 April 1991
4536	1 July 1985
4538	1 December 2000
4541	18 April 1962
4544	6 February 2013
4546	29 November 1993
4550	24 May 1983
4551	31 May 1988
4555	23 June 1967
4557	16 October 2000
4561	17 September 1991
4564	9 June 2017
4565	16 September 2016
4567	28 July 1998
4569	3 January 2014
4575	6 May 2003
4582	18 April 2011
4583	12 December 1986
4584	23 May 1980
4585	21 February 1986
4586	8 April 1972
4587	27 April 1993
4590	21 April 1984
4591	1 February 1989
4592	September 1962
4594	6 November 2015
4596	10 July 2007
4597	5 July 1968
4598	December 1981
4599	19 April 1993
4600	29 June 1999
4602	10 February 1985
4604	25 June 1974
4605	6 September 2005
4607	25 February 1991
4609	21 November 2008
4612	6 April 2004
4614	12 May 1995
4618	17 January 1995
4619	May 1983
4621	2014
4622	21 September 2001
4623	18 June 1976
4627	January 1995
4632	18 September 1977
4633	19 February 1980
4637	19 November 2007
4638	11 September 2000
4639	6 October 2003
4640	1 November 2019
4641	29 November 1967
4642	17 November 1992
4643	February 1977
4646	23 August 2005
4649	17 July 1980
4650	11 October 1977
4653	September 1988
4657	May 1998
4661	5 August 2011
4662	18 September 1998
4665	May 1995
4669	15 October 1996
4670	10 September 1996
4671	27 January 2003
4679	21 January 1987
4681	21 October 1998
4682	18 September 1971
4683	21 May 1972
4685	12 November 2020
4686	August 1994
4687	28 December 1999
4688	24 September 1984
4689	30 March 1982
4690	1 January 1979
4691	29 October 1982
4692	31 May 1999
4693	26 April 2013
4695	23 November 1990
4696	December 1955
4697	2 October 2007
4699	14 June 1990
4702	March 1991
4703	23 February 1998
4705	24 September 1999
4706	24 September 1995
4710	13 October 1978
4712	26 October 1994
4713	3 February 2013
4714	2 November 1989
4716	4 June 1983
4717	11 November 2008
4718	27 June 1989
4720	15 May 1981
4723	24 August 2007
4724	24 November 2000
4734	9 March 1979
4736	31 May 1978
4739	30 May 2019
4746	14 April 2008
4754	4 July 2007
4755	16 March 2006
4757	10 September 2004
4758	2 September 1957
4760	June 1991
4761	May 1985
4763	23 October 2001
4769	25 April 2005
4770	2 November 2007
4773	28 April 1988
4774	25 July 1994
4777	27 April 1981
4780	14 November 1989
4782	15 July 1968
4786	1 November 1968
4787	April 1997
4788	October 1979
4790	18 March 2003
4793	23 November 2009
4801	May 2005
4803	17 July 2015
4804	4 June 2021
4807	17 October 1977
4809	26 March 1990
4810	18 May 1993
4811	22 September 1995
4814	August 1985
4819	18 May 1970
4821	14 July 2009
4822	16 April 2012
4823	4 January 1996
4825	19 July 1985
4831	18 July 2000
4833	19 May 1998
4834	28 June 1974
4837	31 March 2008
4839	17 December 1994
4854	August 1961
4855	June 1985
4856	6 February 2002
4857	5 July 1983
4860	14 January 2014
4864	29 August 1980
4868	May 1967
4870	28 March 1994
4873	20 May 2014
4875	31 October 1977
4876	9 September 1997
4881	17 June 1983
4884	6 November 2007
4889	May 2002
4890	2 September 2006
4893	June 2008
4894	3 March 2004
4896	15 December 2002
4899	28 August 1988
4901	8 August 1980
4904	24 March 2008
4905	7 July 2005
4907	17 October 1966
4908	22 September 2017
4910	19 January 1997
4911	23 August 1988
4912	10 November 2020
4913	20 July 1969
4920	26 October 1979
4923	12 August 2008
4925	March 2003
4929	2007
4931	17 March 2006
4934	14 June 1989
4935	7 April 1987
4938	8 July 2009
4940	19 January 2005
4942	9 November 1984
4943	25 October 2011
4944	19 October 2009
4945	9 July 2013
4948	1 September 1998
4952	22 April 1985
4954	27 May 2011
4957	3 May 2006
4959	9 December 2003
4961	9 October 2007
4962	13 October 2009
4964	11 November 1974
4965	10 January 2006
4966	30 March 1979
4968	29 July 1983
4969	17 August 2004
4970	30 August 1985
4972	23 November 1988
4973	3 July 1990
4974	7 October 1996
4975	9 May 2000
4977	August 1991
4979	27 June 2008
4980	4 May 1973
4982	August 1977
4985	25 June 2002
4987	1 October 1980
4989	19 March 2013
4992	9 June 1979
4993	26 June 2014
4996	17 July 1970
4997	18 May 1998
5000	22 May 1975
\.


--
-- PostgreSQL database dump complete
--

