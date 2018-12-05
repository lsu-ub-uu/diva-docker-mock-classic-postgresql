--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: organisation; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE public.organisation (
    organisation_id integer NOT NULL,
    last_updated timestamp without time zone,
    domain character varying(255) NOT NULL,
    closed_date date,
    old_diva_db character varying(10),
    old_diva_id integer,
    organisation_name character varying(255) NOT NULL,
    organisation_name_locale character varying(255) NOT NULL,
    libris_code character varying(20),
    old_parent_id integer,
    organisation_code character varying(20),
    organisation_homepage character varying(255),
    address_id integer,
    organisation_type_id integer NOT NULL,
    not_eligible boolean DEFAULT false NOT NULL,
    show_in_portal boolean DEFAULT false NOT NULL,
    show_in_defence boolean DEFAULT false NOT NULL,
    top_level boolean DEFAULT false NOT NULL,
    orgnumber character varying(50)
);


ALTER TABLE public.organisation OWNER TO diva;

--
-- Name: organisation_address; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE public.organisation_address (
    address_id integer NOT NULL,
    last_updated timestamp without time zone,
    city character varying(100),
    street character varying(200),
    postbox character varying(50),
    postnumber character varying(20),
    country_code character varying(2)
);


ALTER TABLE public.organisation_address OWNER TO diva;

--
-- Name: organisation_contact; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE public.organisation_contact (
    organisation_contact_id integer NOT NULL,
    last_updated timestamp without time zone,
    organisation_contact_text character varying(255) NOT NULL,
    organisation_contact_type character varying(255) NOT NULL,
    organisation_id integer NOT NULL
);


ALTER TABLE public.organisation_contact OWNER TO diva;

--
-- Name: organisation_name; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE public.organisation_name (
    organisation_name_id integer NOT NULL,
    last_updated timestamp without time zone,
    locale character varying(255) NOT NULL,
    organisation_name character varying(255) NOT NULL,
    organisation_id integer
);


ALTER TABLE public.organisation_name OWNER TO diva;

--
-- Name: organisation_parent; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE public.organisation_parent (
    organisation_id integer NOT NULL,
    organisation_parent_id integer NOT NULL
);


ALTER TABLE public.organisation_parent OWNER TO diva;

--
-- Name: organisation_predecessor; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE public.organisation_predecessor (
    organisation_id integer NOT NULL,
    organisation_predecessor_id integer NOT NULL
);


ALTER TABLE public.organisation_predecessor OWNER TO diva;

--
-- Name: organisation_predecessor_description; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE public.organisation_predecessor_description (
    organisation_predecessor_id integer NOT NULL,
    last_updated timestamp without time zone,
    description character varying(255) NOT NULL,
    predecessor_id integer NOT NULL,
    organisation_id integer
);


ALTER TABLE public.organisation_predecessor_description OWNER TO diva;

--
-- Name: organisation_type; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE public.organisation_type (
    organisation_type_id integer NOT NULL,
    last_updated timestamp without time zone,
    organisation_type_code character varying(50)
);


ALTER TABLE public.organisation_type OWNER TO diva;

--
-- Name: organisation_type_name; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE public.organisation_type_name (
    organisation_type_name_id integer NOT NULL,
    last_updated timestamp without time zone,
    locale character varying(255) NOT NULL,
    organisation_type_name character varying(255) NOT NULL,
    organisation_type_id integer
);


ALTER TABLE public.organisation_type_name OWNER TO diva;

--
-- Data for Name: organisation; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY public.organisation (organisation_id, last_updated, domain, closed_date, old_diva_db, old_diva_id, organisation_name, organisation_name_locale, libris_code, old_parent_id, organisation_code, organisation_homepage, address_id, organisation_type_id, not_eligible, show_in_portal, show_in_defence, top_level, orgnumber) FROM stdin;
51	2009-03-25 08:14:46.903	test	\N	\N	\N	Stockholms organisation	sv	\N	\N	\N	\N	51	54	f	f	f	f	\N
250	2009-04-23 08:56:53.396	test	\N	\N	\N	UniversitetsförvaltningenUniversitetsförvaltningen	sv	\N	\N	\N	\N	\N	54	f	f	f	f	\N
301	2009-06-09 11:18:35.51	test	\N	\N	\N	Tjugoteckenmedspaces tjugoteckenmedspaces tjugoteckenmedspaceS	sv	\N	\N	T68	\N	\N	53	f	f	f	f	\N
350	2009-06-09 11:20:03.61	test	\N	\N	\N	En vanlig institution med kod	sv	\N	\N	WE34	\N	\N	55	f	f	f	f	\N
100	2009-04-01 09:23:40.273	test	\N	\N	\N	test på svenska	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
300	2010-04-27 14:33:17.256	test	2010-04-01	\N	\N	Denhärhartrettiofyrteckenutanspace	sv	\N	\N	H78	\N	\N	52	f	f	f	f	\N
302	2010-04-27 14:33:34.43	test	2010-09-23	\N	\N	Tjugoteckenmedspaces denhärhartrettiofyrteckenutanspace tjugoteckenmedspaceS	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
1000	2010-09-08 09:15:03.646	test	2010-01-01	\N	\N	Organisation med gammalt namn	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
1002	2010-09-08 15:02:37.311	test	\N	\N	\N	Under nytt namn	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
1101	2010-11-16 11:16:06.859	test	2010-11-02	\N	\N	Inst E	sv	\N	\N	\N	\N	\N	54	f	f	f	f	\N
1104	2010-11-16 11:16:30.949	test	2010-11-03	\N	\N	Grupp F	sv	\N	\N	\N	\N	\N	58	f	f	f	f	\N
1106	2010-11-16 11:17:45.677	test	2010-11-08	\N	\N	Grupp H	sv	\N	\N	\N	\N	\N	58	f	f	f	f	\N
1102	2010-11-16 11:18:32.925	test	2010-11-05	\N	\N	Inst A	sv	\N	\N	\N	\N	\N	54	f	f	f	f	\N
1105	2010-11-16 11:18:59.162	test	2010-11-06	\N	\N	Grupp B	sv	\N	\N	\N	\N	\N	58	f	f	f	f	\N
1107	2010-11-16 11:19:17.087	test	\N	\N	\N	Grupp G	sv	\N	\N	\N	\N	\N	58	f	f	f	f	\N
1108	2010-11-16 11:19:50.76	test	\N	\N	\N	Grupp D	sv	\N	\N	\N	\N	\N	58	f	f	f	f	\N
1103	2010-11-16 11:23:29.344	test	\N	\N	\N	Inst C	sv	\N	\N	\N	\N	\N	54	f	f	f	f	\N
1109	2010-11-16 11:27:00.185	test	2010-11-10	\N	\N	Centrum L	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
1110	2010-11-16 11:27:20.829	test	2010-11-11	\N	\N	Centrum M	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
1150	2010-12-09 13:50:56.545	test	\N	\N	\N	Centrum N	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
1111	2010-12-10 10:24:34.866	test	\N	\N	\N	Centrum K	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
400	2010-12-10 13:23:51.783	test	\N	\N	\N	Astronomiska institutionen	sv	\N	\N	\N	\N	\N	54	f	f	f	f	\N
1202	2011-02-08 11:54:11.522	test	\N	\N	\N	Institution U	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
1001	2011-03-08 16:14:49.143	test	\N	\N	\N	Organisation med nytt namn	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
1201	2011-03-24 11:16:51.536	test	\N	\N	\N	Institution T	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
1200	2011-03-24 11:17:27.435	test	\N	\N	\N	Institution S	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
1250	2011-04-18 14:11:45.565	test	\N	\N	\N	Organisation med två föräldrar	sv	\N	\N	\N	\N	\N	54	f	f	f	f	\N
150	2011-11-09 11:07:02.799	test	\N	\N	\N	Hannas test sv	sv	\N	\N	\N	\N	\N	55	f	f	f	f	\N
450	2011-11-09 11:07:09.754	test	\N	\N	\N	Hanna testar att lägga till	sv	\N	\N	\N	\N	\N	53	t	f	f	f	\N
1300	2012-02-28 16:02:59.414	test	\N	\N	\N	Forskningscentrum, FC	sv	\N	\N	\N	\N	\N	53	f	f	f	f	\N
500	2012-04-10 14:49:49.362	test	\N	\N	\N	testar	sv	\N	\N	\N	\N	150	53	f	f	f	f	\N
1501	2014-06-16 15:40:46.427	test	\N	\N	\N	Testinstitution	sv	\N	\N	\N	\N	\N	54	f	f	f	f	\N
1500	2014-06-16 15:40:58.443	test	\N	\N	\N	Skolan för Testning	sv	\N	\N	\N	\N	\N	52	f	f	f	f	\N
1100	2014-06-23 14:37:46.059	test	\N	\N	\N	Testfakultet	sv	\N	\N	\N	\N	\N	52	f	f	f	f	\N
1750	2015-03-12 10:48:53.898	uu	\N	\N	\N	Uppsala universitet	sv	\N	\N	\N	http://uu.se	\N	50	f	t	t	f	\N
50	2015-04-29 13:33:25.414	test	\N	\N	\N	Uppsala institution	sv	\N	\N	133	\N	50	54	f	f	f	f	\N
1900	2015-04-29 14:27:00.838	test	\N	\N	\N	Teknisk-naturvetenskapliga vetenskapsområdet	sv	\N	\N	133	\N	\N	57	f	f	f	f	\N
1901	2015-04-29 14:31:06.551	test	\N	\N	\N	Tekniska sektionen	sv	\N	\N	\N	\N	\N	56	f	f	f	f	\N
2000	2016-07-19 16:37:09.312	test	\N	\N	\N	Glafo Glasforskningsinstitutet	sv	\N	\N	\N	\N	\N	54	f	f	f	f	\N
2050	2016-09-22 14:46:27.627	test	\N	\N	\N	ltu	sv	\N	\N	\N	\N	\N	50	f	f	f	f	\N
2051	2016-09-22 14:47:56.211	test	\N	\N	\N	SBN	sv	\N	\N	SBN	\N	\N	53	f	f	f	f	\N
2052	2016-09-22 14:48:55.966	test	\N	\N	\N	SBN-DUA	sv	\N	\N	SBN-DUA	\N	\N	53	f	f	f	f	\N
2100	2017-03-03 10:54:55.19	test	\N	\N	\N	Linköping universitet	sv	\N	\N	\N	\N	\N	50	f	f	f	f	\N
2102	2017-03-03 10:57:07.55	test	\N	\N	\N	Division of Drug Research	sv	\N	\N	\N	\N	\N	54	f	f	f	f	\N
2101	2017-03-03 10:57:22.008	test	\N	\N	\N	Faculty of Health Sciences	sv	\N	\N	\N	\N	\N	52	f	f	f	f	\N
2150	2017-03-21 09:38:33.94	fmv	\N	\N	\N	FMV	sv	\N	\N	\N	http://	\N	66	f	t	t	t	\N
1	2009-03-18 00:00:00	test	\N	\N	\N	Uppsala universitet	sv	\N	\N	\N	\N	\N	50	t	t	t	f	202100-2932
1350	2013-03-04 14:41:43.811	vti	\N	\N	\N	VTI	sv	\N	\N	\N	http://vti.se	\N	50	f	t	t	f	111111111
1400	2013-03-06 11:34:19.71	nrm	\N	\N	\N	NRM	sv	\N	\N	\N	http://www.nrm.se	\N	50	f	t	t	f	2222222222222
1450	2013-09-16 16:13:46.552	norden	\N	\N	\N	Nordiska ministerrådet	sv	\N	\N	\N	http://www.norden.org	\N	50	f	t	t	f	3333333333
1451	2013-09-16 16:15:27.408	nationalmuseum	\N	\N	\N	Nationalmuseum	sv	\N	\N	\N	http://www.nationalmuseum.se/	\N	50	f	t	t	f	44444444
\.


--
-- Data for Name: organisation_address; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY public.organisation_address (address_id, last_updated, city, street, postbox, postnumber, country_code) FROM stdin;
50	2009-03-25 08:13:57.651	Uppsala	ekvägen	5454	45444	se
51	2009-03-25 08:14:46.903	Stockholm	Strandvägen	6465454	46546	se
150	2012-04-10 14:49:49.352	Stockholm	Hammarbyängen 1	Boxadress 457	11285	se
\.


--
-- Data for Name: organisation_contact; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY public.organisation_contact (organisation_contact_id, last_updated, organisation_contact_text, organisation_contact_type, organisation_id) FROM stdin;
\.


--
-- Data for Name: organisation_name; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY public.organisation_name (organisation_name_id, last_updated, locale, organisation_name, organisation_id) FROM stdin;
2250	2009-03-25 08:13:57.658	en	U-a org	50
2251	2009-03-25 08:14:46.903	en	Sth org	51
2350	2009-04-17 13:19:49.875	en	Hannas test other	150
2750	2009-04-23 08:56:53.414	en	UniversitetsförvaltningenUniversitetsförvaltningen	250
2801	2009-05-05 08:36:46.268	en	Tjugoteckenmedspaces tjugoteckenmedspaces tjugoteckenmedspaceS	301
2802	2009-05-05 08:38:00.025	en	Tjugoteckenmedspaces denhärhartrettiofyrteckenutanspace tjugoteckenmedspaceS	302
2900	2009-06-09 11:20:03.615	en	En vanlig institution med kod	350
2950	2009-07-29 16:41:19.861	en	Department of Astronomy	400
2800	2009-05-05 08:35:15.301	en	DenhärhartrettiofyrteckenutanspaceEn	300
3250	2010-05-05 09:34:31.383	en	testar	500
2951	2010-04-15 00:00:00	en	Uppsala University	1
3200	2010-05-27 13:24:05.223	en	Hanna testar att lägga till	450
3800	2010-09-08 09:13:37.086	en	Organisation med gammalt namn	1000
3802	2010-09-08 15:02:37.311	en	Under nytt namn	1002
3950	2010-11-16 11:08:07.835	en	Test Faculty	1100
3951	2010-11-16 11:09:40.201	en	E	1101
3952	2010-11-16 11:10:11.348	en	A	1102
3953	2010-11-16 11:10:52.713	en	C	1103
3954	2010-11-16 11:12:12.819	en	F	1104
3955	2010-11-16 11:13:23.098	en	B	1105
3956	2010-11-16 11:14:02.107	en	H	1106
3957	2010-11-16 11:14:49.586	en	G	1107
3958	2010-11-16 11:15:52.605	en	D	1108
3959	2010-11-16 11:25:34.456	en	L	1109
3960	2010-11-16 11:26:05.792	en	M	1110
3961	2010-11-16 11:26:25.136	en	K	1111
4000	2010-12-09 11:12:04.266	en	N	1150
4050	2011-02-08 11:53:13.405	en	S	1200
4051	2011-02-08 11:53:42.312	en	T	1201
4052	2011-02-08 11:54:11.522	en	U	1202
3801	2011-03-08 16:14:49.137	en	Organisation med nytt namn	1001
4100	2011-04-18 14:11:45.573	en	Organisation with two parents	1250
5700	2012-02-28 16:02:59.422	en	Research Center, RC	1300
2300	2013-02-22 11:43:13.384	en	test in English	100
6400	2013-03-04 14:41:43.815	en	VTI	1350
6450	2013-03-06 11:34:19.714	en	NRM	1400
6500	2013-09-16 16:13:46.562	en	Nordiska ministerrådet	1450
6501	2013-09-16 16:15:27.408	en	Nationalmuseum	1451
6650	2014-06-16 15:40:06.181	en	School of Tests	1500
6651	2014-06-16 15:40:46.427	en	Department of Test	1501
6900	2015-03-12 10:48:53.9	en	Uppsala University	1750
7100	2015-04-29 14:27:00.845	en	Disciplinary Domain of Science and Technology	1900
7101	2015-04-29 14:31:06.551	en	Technology	1901
8000	2016-07-19 16:37:09.32	en	Glafo Glasforskningsinstitutet	2000
8050	2016-09-22 14:46:27.635	en	ltu	2050
8051	2016-09-22 14:47:56.211	en	SBN	2051
8052	2016-09-22 14:48:55.966	en	SBN-DUA	2052
8100	2017-03-03 10:54:55.202	en	Linköping University	2100
8101	2017-03-03 10:55:26.813	en	Faculty of Health Sciences	2101
8102	2017-03-03 10:57:07.55	en	Division of Drug Research	2102
8150	2017-03-21 09:38:33.943	en	FMV	2150
\.


--
-- Data for Name: organisation_parent; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY public.organisation_parent (organisation_id, organisation_parent_id) FROM stdin;
50	1
51	1
100	51
150	100
250	51
300	1
301	1
302	1
350	300
400	1
450	1
500	1
1000	1
1001	1
1002	1001
1100	1
1101	1100
1102	1100
1103	1100
1104	1100
1105	1102
1106	1102
1107	1100
1108	1103
1109	1100
1110	1100
1111	1100
1150	1100
1200	1100
1201	1200
1202	1201
1250	1100
1250	400
1300	1001
1500	51
1501	1500
1900	1
1901	1900
2000	400
2050	1100
2051	2050
2052	2051
2100	500
2101	2100
2102	2100
\.


--
-- Data for Name: organisation_predecessor; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY public.organisation_predecessor (organisation_id, organisation_predecessor_id) FROM stdin;
1001	1000
1102	1101
1105	1104
1107	1105
1108	1106
1103	1102
1111	1109
1111	1110
1150	1110
1100	400
1200	1101
\.


--
-- Data for Name: organisation_predecessor_description; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY public.organisation_predecessor_description (organisation_predecessor_id, last_updated, description, predecessor_id, organisation_id) FROM stdin;
1350	2010-12-10 13:29:21.666	Den andra enheten har slutat att finnas men nu finns den här istället och det är ju bra.	400	1100
1401	2011-03-24 11:17:27.424	buggtest	1101	1200
1152	2010-12-09 13:50:15.666	M fortsatte som K.	1110	1111
1153	2010-12-09 13:50:56.544	N knoppades av från M.	1110	1150
1200	2010-12-10 10:24:34.859	L har lagts ner. Verksamheten finns nu hos K.	1109	1111
\.


--
-- Data for Name: organisation_type; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY public.organisation_type (organisation_type_id, last_updated, organisation_type_code) FROM stdin;
50	2009-03-18 15:59:50.629	university
51	2009-03-18 15:59:50.645	school
52	2009-03-18 15:59:50.666	faculty
53	2009-03-18 15:59:50.678	centre
54	2009-03-18 15:59:50.689	department
55	2009-03-18 15:59:50.702	unit
56	2009-03-18 15:59:50.714	section
57	2009-03-18 15:59:50.726	domain
58	2009-03-18 15:59:50.738	researchGroup
59	2009-03-18 15:59:50.75	researchProgram
60	2009-03-18 15:59:50.762	researchProject
65	2016-02-24 11:31:19.97021	company
66	2016-02-24 11:31:19.97021	other
\.


--
-- Data for Name: organisation_type_name; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY public.organisation_type_name (organisation_type_name_id, last_updated, locale, organisation_type_name, organisation_type_id) FROM stdin;
1900	2009-03-18 15:59:50.63	sv	Universitet	50
1901	2009-03-18 15:59:50.63	en	University	50
1902	2009-03-18 15:59:50.651	sv	Högskola	51
1903	2009-03-18 15:59:50.652	en	School	51
1904	2009-03-18 15:59:50.666	sv	Fakultet	52
1905	2009-03-18 15:59:50.667	en	Faculty	52
1906	2009-03-18 15:59:50.678	sv	Centrum	53
1907	2009-03-18 15:59:50.679	en	Centre	53
1908	2009-03-18 15:59:50.69	sv	Institution	54
1909	2009-03-18 15:59:50.69	en	Department	54
1910	2009-03-18 15:59:50.702	sv	Enhet	55
1911	2009-03-18 15:59:50.702	en	Unit	55
1912	2009-03-18 15:59:50.714	sv	Sektion	56
1913	2009-03-18 15:59:50.714	en	Section	56
1914	2009-03-18 15:59:50.726	sv	Vetenskapsområde	57
1915	2009-03-18 15:59:50.726	en	Disciplinary Domain	57
1916	2009-03-18 15:59:50.738	sv	Forskningsgrupp	58
1917	2009-03-18 15:59:50.738	en	Research Group	58
1918	2009-03-18 15:59:50.75	sv	Forskningsprogram	59
1919	2009-03-18 15:59:50.75	en	Research Program	59
1920	2009-03-18 15:59:50.762	sv	Forskningprojekt	60
1921	2009-03-18 15:59:50.762	en	Research Project	60
1932	2016-02-24 11:31:19.97021	sv	Företag	65
1933	2016-02-24 11:31:19.97021	en	Company	65
1934	2016-02-24 11:31:19.97021	sv	Övrigt	66
1935	2016-02-24 11:31:19.97021	en	Other	66
\.


--
-- Name: organisation_address organisation_address_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_address
    ADD CONSTRAINT organisation_address_pkey PRIMARY KEY (address_id);


--
-- Name: organisation_contact organisation_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_contact
    ADD CONSTRAINT organisation_contact_pkey PRIMARY KEY (organisation_contact_id);


--
-- Name: organisation organisation_libris_code_key; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation
    ADD CONSTRAINT organisation_libris_code_key UNIQUE (libris_code);


--
-- Name: organisation_name organisation_name_organisation_id_key; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_name
    ADD CONSTRAINT organisation_name_organisation_id_key UNIQUE (organisation_id, locale);


--
-- Name: organisation_name organisation_name_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_name
    ADD CONSTRAINT organisation_name_pkey PRIMARY KEY (organisation_name_id);


--
-- Name: organisation organisation_old_diva_db_key; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation
    ADD CONSTRAINT organisation_old_diva_db_key UNIQUE (old_diva_db, old_diva_id);


--
-- Name: organisation_parent organisation_parent_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_parent
    ADD CONSTRAINT organisation_parent_pkey PRIMARY KEY (organisation_id, organisation_parent_id);


--
-- Name: organisation organisation_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation
    ADD CONSTRAINT organisation_pkey PRIMARY KEY (organisation_id);


--
-- Name: organisation_predecessor_description organisation_predecessor_description_organisation_id_key; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_predecessor_description
    ADD CONSTRAINT organisation_predecessor_description_organisation_id_key UNIQUE (organisation_id, predecessor_id);


--
-- Name: organisation_predecessor_description organisation_predecessor_description_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_predecessor_description
    ADD CONSTRAINT organisation_predecessor_description_pkey PRIMARY KEY (organisation_predecessor_id);


--
-- Name: organisation_predecessor organisation_predecessor_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_predecessor
    ADD CONSTRAINT organisation_predecessor_pkey PRIMARY KEY (organisation_id, organisation_predecessor_id);


--
-- Name: organisation_type_name organisation_type_name_organisation_type_id_key; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_type_name
    ADD CONSTRAINT organisation_type_name_organisation_type_id_key UNIQUE (organisation_type_id, locale);


--
-- Name: organisation_type_name organisation_type_name_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_type_name
    ADD CONSTRAINT organisation_type_name_pkey PRIMARY KEY (organisation_type_name_id);


--
-- Name: organisation_type organisation_type_organisation_type_code_key; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_type
    ADD CONSTRAINT organisation_type_organisation_type_code_key UNIQUE (organisation_type_code);


--
-- Name: organisation_type organisation_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_type
    ADD CONSTRAINT organisation_type_pkey PRIMARY KEY (organisation_type_id);


--
-- Name: organisation fk3a5300daf32e9846; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation
    ADD CONSTRAINT fk3a5300daf32e9846 FOREIGN KEY (organisation_type_id) REFERENCES public.organisation_type(organisation_type_id);


--
-- Name: organisation fk3a5300dafc7691c3; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation
    ADD CONSTRAINT fk3a5300dafc7691c3 FOREIGN KEY (address_id) REFERENCES public.organisation_address(address_id);


--
-- Name: organisation_contact fk3ee051bbd2890a17; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_contact
    ADD CONSTRAINT fk3ee051bbd2890a17 FOREIGN KEY (organisation_id) REFERENCES public.organisation(organisation_id);


--
-- Name: organisation_type_name fk3f864b4bf32e9846; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_type_name
    ADD CONSTRAINT fk3f864b4bf32e9846 FOREIGN KEY (organisation_type_id) REFERENCES public.organisation_type(organisation_type_id);


--
-- Name: organisation_predecessor_description fk5f3d8b61d2890a17; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_predecessor_description
    ADD CONSTRAINT fk5f3d8b61d2890a17 FOREIGN KEY (organisation_id) REFERENCES public.organisation(organisation_id);


--
-- Name: organisation_name fkbafbaad0d2890a17; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_name
    ADD CONSTRAINT fkbafbaad0d2890a17 FOREIGN KEY (organisation_id) REFERENCES public.organisation(organisation_id);


--
-- Name: organisation_address fkc1c0c98fee9dab3d; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

-- ALTER TABLE ONLY public.organisation_address
--    ADD CONSTRAINT fkc1c0c98fee9dab3d FOREIGN KEY (country_code) REFERENCES public.country(country_code);


--
-- Name: organisation_predecessor fkd9953f24d2890a17; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_predecessor
    ADD CONSTRAINT fkd9953f24d2890a17 FOREIGN KEY (organisation_id) REFERENCES public.organisation(organisation_id);


--
-- Name: organisation_predecessor fkd9953f24f057af8d; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_predecessor
    ADD CONSTRAINT fkd9953f24f057af8d FOREIGN KEY (organisation_predecessor_id) REFERENCES public.organisation(organisation_id);


--
-- Name: organisation_parent fkee283baf2d526322; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_parent
    ADD CONSTRAINT fkee283baf2d526322 FOREIGN KEY (organisation_parent_id) REFERENCES public.organisation(organisation_id);


--
-- Name: organisation_parent fkee283bafd2890a17; Type: FK CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY public.organisation_parent
    ADD CONSTRAINT fkee283bafd2890a17 FOREIGN KEY (organisation_id) REFERENCES public.organisation(organisation_id);


--
-- PostgreSQL database dump complete
--


