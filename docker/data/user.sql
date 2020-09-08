--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: group_type; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE group_type (
    code character varying(50) NOT NULL,
    last_updated timestamp without time zone
);


ALTER TABLE group_type OWNER TO diva;
--
-- Name: group; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE "group" (
    group_id integer NOT NULL,
    last_updated timestamp without time zone,
    name character varying(255),
    domain character varying(255) NOT NULL,
    description character varying(255),
    all_organisations boolean NOT NULL,
    all_publication_types boolean NOT NULL,
    all_series boolean NOT NULL,
    full_text_access boolean NOT NULL,
    permanent boolean NOT NULL,
    group_type character varying(50) NOT NULL,
    trail_access integer,
    direct_import boolean DEFAULT false,
    issn character varying(255)
);


ALTER TABLE "group" OWNER TO diva;

--
-- Name: group_educational_program; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE group_educational_program (
    group_id integer NOT NULL,
    subject_id integer NOT NULL
);


ALTER TABLE group_educational_program OWNER TO diva;

--
-- Name: group_organisation; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE group_organisation (
    group_group_id integer NOT NULL,
    organisationaccess_organisation_id integer NOT NULL
);


ALTER TABLE group_organisation OWNER TO diva;

--
-- Name: group_publication_type; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE group_publication_type (
    group_group_id integer NOT NULL,
    publicationtypeaccess_publication_type_id integer NOT NULL
);


ALTER TABLE group_publication_type OWNER TO diva;

--
-- Name: group_sequence; Type: SEQUENCE; Schema: public; Owner: diva
--

CREATE SEQUENCE group_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE group_sequence OWNER TO diva;

--
-- Name: group_series; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE group_series (
    group_group_id integer NOT NULL,
    seriesaccess_series_id integer NOT NULL
);


ALTER TABLE group_series OWNER TO diva;

--
-- Name: user; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE "user" (
    db_id integer NOT NULL,
    last_updated timestamp without time zone,
    domain character varying(255) NOT NULL,
    email character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    user_id character varying(255) NOT NULL,
    isbn_series_admin boolean DEFAULT false NOT NULL,
    series_number_admin boolean DEFAULT false NOT NULL,
    authority_person_admin boolean DEFAULT false NOT NULL,
    project_admin boolean DEFAULT false NOT NULL
);


ALTER TABLE "user" OWNER TO diva;

--
-- Name: user_group; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE user_group (
    users_db_id integer NOT NULL,
    groups_group_id integer NOT NULL
);


ALTER TABLE user_group OWNER TO diva;

--
-- Name: user_sequence; Type: SEQUENCE; Schema: public; Owner: diva
--

CREATE SEQUENCE user_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_sequence OWNER TO diva;

--
-- Name: trail_access; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE trail_access (
    trail_access_id integer NOT NULL,
    last_updated timestamp without time zone,
    access_add boolean NOT NULL,
    access_edit boolean NOT NULL,
    access_import boolean NOT NULL,
    access_publish boolean NOT NULL,
    access_review boolean NOT NULL,
    access_orderprofile boolean DEFAULT false NOT NULL,
    use_orderprofile boolean DEFAULT false NOT NULL
);


ALTER TABLE trail_access OWNER TO diva;

--
-- Name: trail_sequence; Type: SEQUENCE; Schema: public; Owner: diva
--

CREATE SEQUENCE trail_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE trail_sequence OWNER TO diva;


-- Copy data

--
-- Data for Name: group_type; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY group_type (code, last_updated) FROM stdin;
systemAdmin	2009-03-18 16:02:27.022
domainAdmin	2009-03-18 16:02:27.098
spika	2009-03-18 16:02:27.11
other	2009-03-18 16:02:27.116
student	2010-03-08 11:18:12.706515
\.

--
-- Data for Name: group; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY "group" (group_id, last_updated, name, domain, description, all_organisations, all_publication_types, all_series, full_text_access, permanent, group_type, trail_access, direct_import, issn) FROM stdin;
60	2009-03-18 16:02:30.969	domainadmin	miun	Domänadministratör MIUN	f	t	f	f	t	domainAdmin	11	f	\N
61	2009-03-18 16:02:31.205	domainadmin	ntnu	Domänadministratör NTNU	f	t	f	f	t	domainAdmin	12	f	\N
62	2009-03-18 16:02:31.314	domainadmin	oru	Domänadministratör ORU	f	t	f	f	t	domainAdmin	13	f	\N
63	2009-03-18 16:02:31.412	domainadmin	sh	Domänadministratör SH	f	t	f	f	t	domainAdmin	14	f	\N
64	2009-03-18 16:02:31.627	domainadmin	su	Domänadministratör SU	f	t	f	f	t	domainAdmin	15	f	\N
65	2009-03-18 16:02:31.824	domainadmin	umu	Domänadministratör UMU	f	t	f	f	t	domainAdmin	16	f	\N
67	2009-03-18 16:02:32.029	domainadmin	vxu	Domänadministratör VXU	f	t	f	f	t	domainAdmin	18	f	\N
56	2009-03-18 16:02:30.565	domainadmin	kau	Domänadministratör KAU	f	t	f	f	t	domainAdmin	7	f	\N
57	2009-03-18 16:02:30.667	domainadmin	kth	Domänadministratör KTH	f	t	f	f	t	domainAdmin	8	f	\N
58	2009-03-18 16:02:30.765	domainadmin	liu	Domänadministratör LIU	f	t	f	f	t	domainAdmin	9	f	\N
59	2009-03-18 16:02:30.868	domainadmin	mdh	Domänadministratör MDH	f	t	f	f	t	domainAdmin	10	f	\N
52	2009-03-18 16:02:29.859	domainadmin	hig	Domänadministratör HIG	f	t	f	f	t	domainAdmin	3	t	\N
53	2009-03-18 16:02:29.962	domainadmin	hik	Domänadministratör HIK	f	t	f	f	t	domainAdmin	4	t	\N
54	2009-03-18 16:02:30.068	domainadmin	his	Domänadministratör HIS	f	t	f	f	t	domainAdmin	5	t	\N
55	2009-03-18 16:02:30.339	domainadmin	hj	Domänadministratör HJ	f	t	f	f	t	domainAdmin	6	t	\N
95	2010-03-08 11:22:00.41265	student	diva	All students grou	f	f	f	f	t	student	337	f	\N
51	2010-05-06 16:34:55.103	domainadmin	gih	Domänadministratör GIH	f	t	f	f	t	domainAdmin	2	t	\N
101	2012-04-13 16:39:22.564	test2	test	\N	f	f	f	f	f	other	20	f	\N
700	2013-03-06 11:34:19.795	domainadmin	nrm	Domänadministratör NRM	f	t	f	f	t	domainAdmin	500	t	\N
452	2011-01-19 11:25:56.05	Vivekas testgrupp 3	test	\N	f	f	f	f	f	other	252	f	\N
250	2013-05-02 16:35:48.079	Testgrupp med spår	test	test	f	f	f	f	f	other	50	f	\N
500	2011-01-20 09:28:00.68	Vivekas testgrupp 4	test	\N	f	f	f	f	f	other	300	f	\N
100	2012-04-04 16:29:05.559	test	test	\N	f	f	f	f	f	other	19	f	\N
150	2012-04-04 18:15:32.469	Hannas testgrupp	test		f	f	f	f	f	other	21	f	\N
451	2011-03-24 10:58:08.588	Vivekas testgrupp 2	test	\N	f	f	f	f	f	other	251	f	\N
450	2011-03-24 11:35:30.655	Vivekas testgrupp 1	test	\N	f	f	f	f	f	other	250	f	\N
800	2013-09-16 16:13:46.645	domainadmin	norden	Domänadministratör NORDEN	f	t	f	f	t	domainAdmin	600	t	\N
801	2013-09-16 16:15:27.434	domainadmin	nationalmuseum	Domänadministratör NATIONALMUSEUM	f	t	f	f	t	domainAdmin	601	t	\N
251	2014-01-15 13:32:12.882	domainadmin	test	Domänadministratör TEST	f	t	f	f	t	domainAdmin	51	f	\N
1000	2017-03-21 09:38:34.024	domainadmin	fmv	Domänadministratör FMV	f	t	f	f	t	domainAdmin	800	t	\N
66	2015-03-23 14:44:22.387	domainadmin	uu	Domänadministratör UU	f	t	f	f	t	domainAdmin	17	t	\N
200	2015-03-23 14:44:33.485	diVA group	test	\N	f	f	f	f	f	other	22	t	\N
750	2017-04-04 16:50:35.357	Uwes testgrupp	test	Testgrupp	f	f	f	f	f	other	550	f	\N
1050	2017-05-10 13:47:40.706	Samlaren	test	Samlaren	f	f	f	f	f	other	850	f	0348-6133
50	2017-05-10 13:47:40.922	systemadmin	diva	Systemadministratörer	f	t	f	f	t	systemAdmin	1	t	\N
950	2017-05-10 13:47:41.495	Publish Test Group	test	\N	f	f	f	f	f	other	750	f	\N
600	2015-04-28 11:32:55.42	Administrera beställningsprofiler	test	Användare kan lägga upp nya profiler för webbshop eller print on demand	f	f	f	f	f	other	400	f	\N
850	2015-06-12 16:45:10.468	Mimmis grupp	test	Endast doktorsavhandlingar för Mimmis kurs	f	f	f	f	f	other	650	f	\N
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY "user" (db_id, last_updated, domain, email, first_name, last_name, user_id, isbn_series_admin, series_number_admin, authority_person_admin, project_admin) FROM stdin;
100	2009-06-09 09:46:44.774	test	\N	Test	Öberg	test123	f	f	f	f
103	2009-06-09 09:48:53.093	test	\N	Stefan	Åsberg	test789	f	f	f	f
104	2009-06-09 09:49:38.827	test	\N	Stefan	Äsplund	test0000	f	f	f	f
150	2009-06-10 09:29:31.558	test	\N	Carl	Åberg	test987654	f	f	f	f
350	2010-10-11 14:50:17.976	test	\N	Test	Öberg	test123456	f	f	f	f
500	2012-04-12 13:19:10.501	test	\N	Maddes	Testanvändare	maken1	f	f	f	f
400	2011-03-24 10:58:09.003	test	\N	Esp	Ikuu	espikuu	f	f	f	f
55	2012-03-06 09:16:25.623	test	olov.mckie@ub.uu.se	Olov	McKie	olfel499	f	f	f	f
450	2012-02-07 16:15:28.225	test	\N	Test	Testing	TestT	f	f	f	f
102	2012-02-22 16:59:09.601	test	\N	Stefan	Öberg	test345	f	f	f	f
59	2013-03-05 00:00:00	test	\N	Christopher	Saarinen	chrsa173	f	f	f	f
60	2014-10-29 00:00:00	uu	\N	Uwe	Klosa	uwklo516	f	f	f	f
57	2015-03-23 16:05:55.926	test	marcus.lindstrom@ub.uu.se	Marcus	Lindström	malin121	t	t	t	t
56	2015-08-24 16:35:43.766	test	mimmi.sundin@ub.uu.se	Mimmi	Sundin	mimsu695	f	f	f	f
52	2015-08-24 16:35:44.055	test	madeleine.kennback@ub.uu.se	Madeleine	Kennbäck	maken168	t	t	t	t
58	2016-08-22 14:24:29.634	test	daniel.eriksson@ub.uu.se	Daniel	Eriksson	daner275	f	f	f	f
51	2017-05-10 13:47:41.694	test	uwe.klosa@ub.uu.se	Uwe	Klosa	uwklo516	t	t	t	t
61	2018-11-05 15:00:00	test	johan.andersson@ub.uu.se	Johan	Andersson	johan549	t	t	t	t
62	2018-11-05 15:00:00	test	johan.oelrich@ub.uu.se	Johan	Oelrich	johoe299	t	t	t	t
\.

--
-- Data for Name: user_group; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY user_group (users_db_id, groups_group_id) FROM stdin;
400	450
500	101
51	50
51	950
52	50
52	600
52	66
55	50
55	600
56	50
56	600
56	850
57	600
58	50
58	950
59	250
59	50
59	66
60	50
61	50
61	600
62	50
62	600
\.

--
-- Name: user_sequence; Type: SEQUENCE SET; Schema: public; Owner: diva
--

SELECT pg_catalog.setval('user_sequence', 10, true);

--
-- Data for Name: trail_access; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY trail_access (trail_access_id, last_updated, access_add, access_edit, access_import, access_publish, access_review, access_orderprofile, use_orderprofile) FROM stdin;
400	2012-02-27 08:21:06.013	t	t	t	f	f	t	t
20	2012-04-12 13:48:52.908	t	t	t	f	f	f	f
500	2013-03-06 11:34:19.795	t	t	t	t	t	t	f
1	2009-10-27 00:00:00	t	t	t	t	t	t	t
2	2009-10-27 00:00:00	t	t	t	t	t	f	f
3	2009-10-27 00:00:00	t	t	t	t	t	f	f
4	2009-10-27 00:00:00	t	t	t	t	t	f	f
5	2009-10-27 00:00:00	t	t	t	t	t	f	f
6	2009-10-27 00:00:00	t	t	t	t	t	f	f
7	2009-10-27 00:00:00	t	t	t	t	t	f	f
8	2009-10-27 00:00:00	t	t	t	t	t	f	f
9	2009-10-27 00:00:00	t	t	t	t	t	f	f
10	2009-10-27 00:00:00	t	t	t	t	t	f	f
11	2009-10-27 00:00:00	t	t	t	t	t	f	f
12	2009-10-27 00:00:00	t	t	t	t	t	f	f
13	2009-10-27 00:00:00	t	t	t	t	t	f	f
14	2009-10-27 00:00:00	t	t	t	t	t	f	f
15	2009-10-27 00:00:00	t	t	t	t	t	f	f
16	2009-10-27 00:00:00	t	t	t	t	t	f	f
17	2009-10-27 00:00:00	t	t	t	t	t	f	f
18	2009-10-27 00:00:00	t	t	t	t	t	f	f
21	2009-10-27 00:00:00	t	t	t	t	t	f	f
22	2009-10-27 00:00:00	t	t	t	t	t	f	f
19	2009-10-27 16:12:40.44	t	t	t	f	t	f	f
50	2009-10-27 16:27:08.076	t	t	t	f	t	f	f
337	2010-03-08 11:21:26.97136	t	f	f	f	f	f	f
51	2010-05-06 00:00:00	t	t	t	t	t	f	f
252	2011-01-19 11:09:11.127	t	t	t	t	f	f	f
300	2011-01-19 11:27:18.525	t	t	t	t	t	f	f
251	2011-02-08 13:23:41.962	t	t	t	t	f	f	f
250	2011-03-24 10:57:59.187	t	t	t	t	t	f	f
600	2013-09-16 16:13:46.645	t	t	t	t	t	t	f
601	2013-09-16 16:15:27.433	t	t	t	t	t	t	f
650	2014-01-15 13:34:21.724	t	t	t	t	t	f	f
750	2015-04-15 14:24:32.783	t	t	t	t	f	f	f
550	2015-08-24 16:38:25.652	t	t	t	t	f	f	f
800	2017-03-21 09:38:34.024	t	t	t	t	t	t	f
850	2017-04-04 16:49:58.742	t	t	t	f	f	f	f
\.

--
-- Data for Name: group_organisation; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY group_organisation (group_group_id, organisationaccess_organisation_id) FROM stdin;
200	400
452	400
500	400
451	1200
450	1200
101	400
101	1100
750	400
600	1
950	50
\.


--
-- Data for Name: group_publication_type; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY group_publication_type (group_group_id, publicationtypeaccess_publication_type_id) FROM stdin;
150	65
150	66
150	56
150	55
150	50
150	52
150	51
150	62
150	61
150	64
150	63
150	58
150	57
150	60
150	59
450	50
451	57
600	65
600	66
600	54
600	53
600	56
600	55
600	50
600	52
600	51
600	62
600	61
600	64
600	63
600	58
600	57
600	60
600	59
101	65
101	57
101	54
750	65
750	66
750	50
750	52
750	51
750	62
750	61
750	64
750	63
750	58
750	57
750	60
750	59
451	54
450	57
452	57
500	57
950	54
850	54
850	53
750	67
750	54
750	53
750	56
750	55
\.


--
-- Name: group_sequence; Type: SEQUENCE SET; Schema: public; Owner: diva
--

SELECT pg_catalog.setval('group_sequence', 21, true);


--
-- Data for Name: group_series; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY group_series (group_group_id, seriesaccess_series_id) FROM stdin;
500	300
950	200
\.


--
-- Name: trail_sequence; Type: SEQUENCE SET; Schema: public; Owner: diva
--

SELECT pg_catalog.setval('trail_sequence', 17, true);

--
-- Name: user_domain_key; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_domain_key UNIQUE (domain, user_id);
    
    --
-- Name: user_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (db_id);
    
    --
-- Name: user_group_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY user_group
    ADD CONSTRAINT user_group_pkey PRIMARY KEY (users_db_id, groups_group_id);
    
   
    --
-- Name: fk72a9010b7e9f6321; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

        --
-- Name: trail_access_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY trail_access
    ADD CONSTRAINT trail_access_pkey PRIMARY KEY (trail_access_id);

    --
-- Name: group_organisation_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY group_organisation
    ADD CONSTRAINT group_organisation_pkey PRIMARY KEY (group_group_id, organisationaccess_organisation_id);


--
-- Name: group_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY "group"
    ADD CONSTRAINT group_pkey PRIMARY KEY (group_id);


--
-- Name: group_publication_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY group_publication_type
    ADD CONSTRAINT group_publication_type_pkey PRIMARY KEY (group_group_id, publicationtypeaccess_publication_type_id);


--
-- Name: group_series_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY group_series
    ADD CONSTRAINT group_series_pkey PRIMARY KEY (group_group_id, seriesaccess_series_id);


--
-- Name: group_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY group_type
    ADD CONSTRAINT group_type_pkey PRIMARY KEY (code);

ALTER TABLE ONLY user_group
    ADD CONSTRAINT fk72a9010b7e9f6321 FOREIGN KEY (users_db_id) REFERENCES "user"(db_id);
    
        --
-- Name: fk72a9010b3a058db4; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

 ALTER TABLE ONLY user_group
    ADD CONSTRAINT fk72a9010b3a058db4 FOREIGN KEY (groups_group_id) REFERENCES "group"(group_id);
 
