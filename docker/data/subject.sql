--
-- Name: subject; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE subject (
    subject_id integer NOT NULL,
    last_updated timestamp without time zone,
    domain character varying(255) NOT NULL,
    closed_date date,
    old_diva_db character varying(10),
    old_diva_id integer,
    subject_code character varying(50),
    subject_type_id integer NOT NULL,
    not_eligible boolean DEFAULT false NOT NULL
);


ALTER TABLE subject OWNER TO diva;

--
-- Name: subject_name; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE subject_name (
    subject_name_id integer NOT NULL,
    last_updated timestamp without time zone,
    locale character varying(255),
    subject_name character varying(255) NOT NULL,
    subject_id integer,
    lastupdated timestamp without time zone
);


ALTER TABLE subject_name OWNER TO diva;

--
-- Name: subject_organisation; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE subject_organisation (
    subject_id integer NOT NULL,
    organisation_id integer NOT NULL
);


ALTER TABLE subject_organisation OWNER TO diva;

--
-- Name: subject_parent; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE subject_parent (
    parent_subject_id integer NOT NULL,
    subject_id integer NOT NULL
);


ALTER TABLE subject_parent OWNER TO diva;

--
-- Name: subject_predecessor; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE subject_predecessor (
    predecessor_subject_id integer NOT NULL,
    subject_id integer NOT NULL
);


ALTER TABLE subject_predecessor OWNER TO diva;

--
-- Name: subject_sequence; Type: SEQUENCE; Schema: public; Owner: diva
--

CREATE SEQUENCE subject_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE subject_sequence OWNER TO diva;

--
-- Name: subject_type; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE subject_type (
    subject_type_id integer NOT NULL,
    last_updated timestamp without time zone,
    subject_type_code character varying(50)
);


ALTER TABLE subject_type OWNER TO diva;

--
-- Name: subject_type_name; Type: TABLE; Schema: public; Owner: diva
--

CREATE TABLE subject_type_name (
    subject_type_name_id integer NOT NULL,
    last_updated timestamp without time zone,
    locale character varying(255) NOT NULL,
    subject_type_name character varying(255) NOT NULL,
    subject_type_id integer
);


ALTER TABLE subject_type_name OWNER TO diva;

--
-- Name: subtype_sequence; Type: SEQUENCE; Schema: public; Owner: diva
--

CREATE SEQUENCE subtype_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE subtype_sequence OWNER TO diva;

--
-- Name: subtypename_sequence; Type: SEQUENCE; Schema: public; Owner: diva
--

CREATE SEQUENCE subtypename_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE subtypename_sequence OWNER TO diva;

--
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY subject (subject_id, last_updated, domain, closed_date, old_diva_db, old_diva_id, subject_code, subject_type_id, not_eligible) FROM stdin;
50	2009-03-18 16:02:26.388	diva	\N	\N	\N	HumanitiesTheology	52	f
51	2009-03-18 16:02:26.411	diva	\N	\N	\N	SocialBehaviourLaw	52	f
52	2009-03-18 16:02:26.427	diva	\N	\N	\N	LifeEarthScience	52	f
53	2009-03-18 16:02:26.445	diva	\N	\N	\N	PhysicsChemistryMaths	52	f
54	2009-03-18 16:02:26.468	diva	\N	\N	\N	FineArt	52	f
55	2009-03-18 16:02:26.493	diva	\N	\N	\N	Technology	52	f
56	2009-03-18 16:02:26.51	diva	\N	\N	\N	Medicine	52	f
57	2009-03-18 16:02:26.528	diva	\N	\N	\N	AgricultureVeterinaryMedForestry	52	f
58	2009-03-18 00:00:00	diva	\N	\N	\N	10	50	f
200	2009-04-21 11:33:56.096	test	\N	\N	\N	\N	56	f
250	2009-05-11 09:01:04.249	test	\N	\N	\N	\N	53	f
251	2009-05-11 09:01:28.948	test	\N	\N	\N	\N	53	f
300	2009-07-30 13:38:05.709	test	\N	\N	\N	\N	56	f
59	2010-03-22 00:00:00	diva	\N	\N	\N	\N	50	f
60	2010-03-23 00:00:00	diva	\N	\N	\N	\N	50	f
61	2010-03-23 00:00:00	diva	\N	\N	\N	\N	50	f
62	2010-03-23 00:00:00	diva	\N	\N	\N	\N	50	f
350	2010-03-31 16:57:01.46	test	2010-03-11	\N	\N	\N	53	f
450	2010-03-31 17:27:19.278	test	2010-03-01	\N	\N	\N	53	f
500	2010-06-03 17:27:19.278	diva	\N	\N	\N	\N	50	f
501	2010-09-03 14:14:03.704	test	\N	\N	\N	\N	53	f
502	2010-09-03 14:14:40.853	test	\N	\N	\N	\N	53	f
503	2010-09-03 14:15:21.738	test	\N	\N	\N	\N	53	f
600	2011-05-05 14:41:23.117	test	\N	\N	\N	\N	54	f
601	2011-05-05 14:41:55.995	test	\N	\N	\N	\N	54	f
1000	2011-08-15 12:56:56.836	diva	\N	\N	\N	1	57	f
1001	2011-08-15 12:56:57.019	diva	\N	\N	\N	101	57	f
1002	2011-08-15 12:56:57.294	diva	\N	\N	\N	10101	57	f
1003	2011-08-15 12:56:57.958	diva	\N	\N	\N	10102	57	f
1004	2011-08-15 12:56:58.436	diva	\N	\N	\N	10103	57	f
1005	2011-08-15 12:56:58.675	diva	\N	\N	\N	10104	57	f
1006	2011-08-15 12:56:58.952	diva	\N	\N	\N	10105	57	f
1007	2011-08-15 12:56:59.103	diva	\N	\N	\N	10106	57	f
1008	2011-08-15 12:56:59.235	diva	\N	\N	\N	10199	57	f
1009	2011-08-15 12:56:59.297	diva	\N	\N	\N	102	57	f
1010	2011-08-15 12:56:59.4	diva	\N	\N	\N	10201	57	f
1011	2011-08-15 12:56:59.488	diva	\N	\N	\N	10202	57	f
1012	2011-08-15 12:56:59.57	diva	\N	\N	\N	10203	57	f
1013	2011-08-15 12:56:59.647	diva	\N	\N	\N	10204	57	f
1014	2011-08-15 12:56:59.728	diva	\N	\N	\N	10205	57	f
1015	2011-08-15 12:56:59.808	diva	\N	\N	\N	10206	57	f
1016	2011-08-15 12:56:59.891	diva	\N	\N	\N	10207	57	f
1017	2011-08-15 12:56:59.971	diva	\N	\N	\N	10208	57	f
1018	2011-08-15 12:57:00.055	diva	\N	\N	\N	10209	57	f
1019	2011-08-15 12:57:00.136	diva	\N	\N	\N	10299	57	f
1020	2011-08-15 12:57:00.213	diva	\N	\N	\N	103	57	f
1021	2011-08-15 12:57:00.291	diva	\N	\N	\N	10301	57	f
1022	2011-08-15 12:57:00.37	diva	\N	\N	\N	10302	57	f
1023	2011-08-15 12:57:00.448	diva	\N	\N	\N	10303	57	f
1024	2011-08-15 12:57:00.554	diva	\N	\N	\N	10304	57	f
1025	2011-08-15 12:57:00.65	diva	\N	\N	\N	10305	57	f
1026	2011-08-15 12:57:00.736	diva	\N	\N	\N	10306	57	f
1027	2011-08-15 12:57:00.816	diva	\N	\N	\N	10399	57	f
1028	2011-08-15 12:57:00.881	diva	\N	\N	\N	104	57	f
1029	2011-08-15 12:57:00.958	diva	\N	\N	\N	10401	57	f
1030	2011-08-15 12:57:01.038	diva	\N	\N	\N	10402	57	f
1031	2011-08-15 12:57:01.117	diva	\N	\N	\N	10403	57	f
1032	2011-08-15 12:57:01.206	diva	\N	\N	\N	10404	57	f
1033	2011-08-15 12:57:01.284	diva	\N	\N	\N	10405	57	f
1034	2011-08-15 12:57:01.366	diva	\N	\N	\N	10406	57	f
1035	2011-08-15 12:57:01.445	diva	\N	\N	\N	10407	57	f
1036	2011-08-15 12:57:01.527	diva	\N	\N	\N	10499	57	f
1037	2011-08-15 12:57:01.588	diva	\N	\N	\N	105	57	f
1038	2011-08-15 12:57:01.668	diva	\N	\N	\N	10501	57	f
1039	2011-08-15 12:57:01.762	diva	\N	\N	\N	10502	57	f
1040	2011-08-15 12:57:01.852	diva	\N	\N	\N	10503	57	f
1041	2011-08-15 12:57:01.93	diva	\N	\N	\N	10504	57	f
1042	2011-08-15 12:57:02.011	diva	\N	\N	\N	10505	57	f
1043	2011-08-15 12:57:02.087	diva	\N	\N	\N	10506	57	f
1044	2011-08-15 12:57:02.167	diva	\N	\N	\N	10507	57	f
1045	2011-08-15 12:57:02.249	diva	\N	\N	\N	10508	57	f
1046	2011-08-15 12:57:02.333	diva	\N	\N	\N	10509	57	f
1047	2011-08-15 12:57:02.414	diva	\N	\N	\N	10599	57	f
1048	2011-08-15 12:57:02.479	diva	\N	\N	\N	106	57	f
1049	2011-08-15 12:57:02.556	diva	\N	\N	\N	10601	57	f
1050	2011-08-15 12:57:02.638	diva	\N	\N	\N	10602	57	f
1051	2011-08-15 12:57:02.72	diva	\N	\N	\N	10603	57	f
1052	2011-08-15 12:57:02.802	diva	\N	\N	\N	10604	57	f
1053	2011-08-15 12:57:02.881	diva	\N	\N	\N	10605	57	f
1054	2011-08-15 12:57:02.979	diva	\N	\N	\N	10606	57	f
1055	2011-08-15 12:57:03.059	diva	\N	\N	\N	10607	57	f
1056	2011-08-15 12:57:03.14	diva	\N	\N	\N	10608	57	f
1057	2011-08-15 12:57:03.219	diva	\N	\N	\N	10609	57	f
1058	2011-08-15 12:57:03.299	diva	\N	\N	\N	10610	57	f
1059	2011-08-15 12:57:03.382	diva	\N	\N	\N	10611	57	f
1060	2011-08-15 12:57:03.461	diva	\N	\N	\N	10612	57	f
1061	2011-08-15 12:57:03.54	diva	\N	\N	\N	10613	57	f
1062	2011-08-15 12:57:03.621	diva	\N	\N	\N	10614	57	f
1063	2011-08-15 12:57:03.7	diva	\N	\N	\N	10615	57	f
1064	2011-08-15 12:57:03.783	diva	\N	\N	\N	10699	57	f
1065	2011-08-15 12:57:03.846	diva	\N	\N	\N	107	57	f
1066	2011-08-15 12:57:03.859	diva	\N	\N	\N	2	57	f
1067	2011-08-15 12:57:03.922	diva	\N	\N	\N	201	57	f
1068	2011-08-15 12:57:04.009	diva	\N	\N	\N	20101	57	f
1069	2011-08-15 12:57:04.105	diva	\N	\N	\N	20102	57	f
1070	2011-08-15 12:57:04.19	diva	\N	\N	\N	20103	57	f
1071	2011-08-15 12:57:04.276	diva	\N	\N	\N	20104	57	f
1072	2011-08-15 12:57:04.362	diva	\N	\N	\N	20105	57	f
1073	2011-08-15 12:57:04.439	diva	\N	\N	\N	20106	57	f
1074	2011-08-15 12:57:04.522	diva	\N	\N	\N	20107	57	f
1075	2011-08-15 12:57:04.601	diva	\N	\N	\N	20108	57	f
1076	2011-08-15 12:57:04.689	diva	\N	\N	\N	20199	57	f
1077	2011-08-15 12:57:04.755	diva	\N	\N	\N	202	57	f
1078	2011-08-15 12:57:04.839	diva	\N	\N	\N	20201	57	f
1079	2011-08-15 12:57:04.923	diva	\N	\N	\N	20202	57	f
1080	2011-08-15 12:57:05.006	diva	\N	\N	\N	20203	57	f
1081	2011-08-15 12:57:05.09	diva	\N	\N	\N	20204	57	f
1082	2011-08-15 12:57:05.19	diva	\N	\N	\N	20205	57	f
1083	2011-08-15 12:57:05.293	diva	\N	\N	\N	20206	57	f
1084	2011-08-15 12:57:05.385	diva	\N	\N	\N	20207	57	f
1085	2011-08-15 12:57:05.464	diva	\N	\N	\N	20299	57	f
1086	2011-08-15 12:57:05.527	diva	\N	\N	\N	203	57	f
1087	2011-08-15 12:57:05.615	diva	\N	\N	\N	20301	57	f
1088	2011-08-15 12:57:05.692	diva	\N	\N	\N	20302	57	f
1089	2011-08-15 12:57:05.772	diva	\N	\N	\N	20303	57	f
1090	2011-08-15 12:57:05.867	diva	\N	\N	\N	20304	57	f
1091	2011-08-15 12:57:05.951	diva	\N	\N	\N	20305	57	f
1092	2011-08-15 12:57:06.029	diva	\N	\N	\N	20306	57	f
1093	2011-08-15 12:57:06.105	diva	\N	\N	\N	20307	57	f
1094	2011-08-15 12:57:06.183	diva	\N	\N	\N	20308	57	f
1095	2011-08-15 12:57:06.266	diva	\N	\N	\N	20309	57	f
1096	2011-08-15 12:57:06.397	diva	\N	\N	\N	20399	57	f
1097	2011-08-15 12:57:06.501	diva	\N	\N	\N	204	57	f
1098	2011-08-15 12:57:06.584	diva	\N	\N	\N	20401	57	f
1099	2011-08-15 12:57:06.661	diva	\N	\N	\N	20402	57	f
1100	2011-08-15 12:57:06.741	diva	\N	\N	\N	20403	57	f
1101	2011-08-15 12:57:06.82	diva	\N	\N	\N	20404	57	f
1102	2011-08-15 12:57:06.898	diva	\N	\N	\N	20499	57	f
1103	2011-08-15 12:57:06.96	diva	\N	\N	\N	205	57	f
1104	2011-08-15 12:57:07.04	diva	\N	\N	\N	20501	57	f
1105	2011-08-15 12:57:07.119	diva	\N	\N	\N	20502	57	f
551	2013-02-22 11:39:07.588	test	\N	\N	\N	\N	56	f
1106	2011-08-15 12:57:07.199	diva	\N	\N	\N	20503	57	f
1110	2011-08-15 12:57:07.515	diva	\N	\N	\N	20599	57	f
1114	2011-08-15 12:57:07.854	diva	\N	\N	\N	20603	57	f
1118	2011-08-15 12:57:08.142	diva	\N	\N	\N	207	57	f
1122	2011-08-15 12:57:08.45	diva	\N	\N	\N	20704	57	f
1126	2011-08-15 12:57:08.795	diva	\N	\N	\N	20799	57	f
1130	2011-08-15 12:57:09.091	diva	\N	\N	\N	20803	57	f
1134	2011-08-15 12:57:09.389	diva	\N	\N	\N	20901	57	f
1138	2011-08-15 12:57:09.69	diva	\N	\N	\N	20905	57	f
1142	2011-08-15 12:57:10	diva	\N	\N	\N	20999	57	f
1146	2011-08-15 12:57:10.281	diva	\N	\N	\N	21102	57	f
1150	2011-08-15 12:57:10.516	diva	\N	\N	\N	301	57	f
1154	2011-08-15 12:57:10.827	diva	\N	\N	\N	30104	57	f
1158	2011-08-15 12:57:11.146	diva	\N	\N	\N	30108	57	f
1162	2011-08-15 12:57:11.443	diva	\N	\N	\N	302	57	f
1166	2011-08-15 12:57:11.754	diva	\N	\N	\N	30204	57	f
1170	2011-08-15 12:57:12.105	diva	\N	\N	\N	30208	57	f
1174	2011-08-15 12:57:12.417	diva	\N	\N	\N	30212	57	f
1178	2011-08-15 12:57:12.718	diva	\N	\N	\N	30216	57	f
1182	2011-08-15 12:57:13.034	diva	\N	\N	\N	30220	57	f
1186	2011-08-15 12:57:13.393	diva	\N	\N	\N	30224	57	f
1190	2011-08-15 12:57:13.678	diva	\N	\N	\N	30302	57	f
1194	2011-08-15 12:57:13.982	diva	\N	\N	\N	30306	57	f
1198	2011-08-15 12:57:14.274	diva	\N	\N	\N	30310	57	f
1202	2011-08-15 12:57:14.559	diva	\N	\N	\N	30402	57	f
1206	2011-08-15 12:57:14.843	diva	\N	\N	\N	30501	57	f
1210	2011-08-15 12:57:15.062	diva	\N	\N	\N	401	57	f
1214	2011-08-15 12:57:15.367	diva	\N	\N	\N	40104	57	f
1218	2011-08-15 12:57:15.667	diva	\N	\N	\N	40108	57	f
1222	2011-08-15 12:57:15.946	diva	\N	\N	\N	40302	57	f
1226	2011-08-15 12:57:16.239	diva	\N	\N	\N	40401	57	f
1230	2011-08-15 12:57:16.539	diva	\N	\N	\N	40502	57	f
1234	2011-08-15 12:57:16.79	diva	\N	\N	\N	5	57	f
1238	2011-08-15 12:57:17.063	diva	\N	\N	\N	502	57	f
1242	2011-08-15 12:57:17.352	diva	\N	\N	\N	503	57	f
1246	2011-08-15 12:57:17.657	diva	\N	\N	\N	50304	57	f
1250	2011-08-15 12:57:17.949	diva	\N	\N	\N	50403	57	f
1254	2011-08-15 12:57:18.232	diva	\N	\N	\N	50502	57	f
1258	2011-08-15 12:57:18.514	diva	\N	\N	\N	50603	57	f
1262	2011-08-15 12:57:18.792	diva	\N	\N	\N	508	57	f
1266	2011-08-15 12:57:19.078	diva	\N	\N	\N	509	57	f
1270	2011-08-15 12:57:19.395	diva	\N	\N	\N	50904	57	f
1274	2011-08-15 12:57:19.611	diva	\N	\N	\N	60101	57	f
1278	2011-08-15 12:57:19.902	diva	\N	\N	\N	60201	57	f
1282	2011-08-15 12:57:20.205	diva	\N	\N	\N	603	57	f
1286	2011-08-15 12:57:20.509	diva	\N	\N	\N	60304	57	f
1290	2011-08-15 12:57:20.812	diva	\N	\N	\N	60402	57	f
1294	2011-08-15 12:57:21.117	diva	\N	\N	\N	60406	57	f
1298	2011-08-15 12:57:21.42	diva	\N	\N	\N	60410	57	f
1302	2011-08-15 12:57:21.709	diva	\N	\N	\N	60503	57	f
1107	2011-08-15 12:57:07.278	diva	\N	\N	\N	20504	57	f
1111	2011-08-15 12:57:07.593	diva	\N	\N	\N	206	57	f
1115	2011-08-15 12:57:07.932	diva	\N	\N	\N	20604	57	f
1119	2011-08-15 12:57:08.22	diva	\N	\N	\N	20701	57	f
1123	2011-08-15 12:57:08.526	diva	\N	\N	\N	20705	57	f
1127	2011-08-15 12:57:08.865	diva	\N	\N	\N	208	57	f
1131	2011-08-15 12:57:09.173	diva	\N	\N	\N	20804	57	f
1135	2011-08-15 12:57:09.467	diva	\N	\N	\N	20902	57	f
1139	2011-08-15 12:57:09.766	diva	\N	\N	\N	20906	57	f
1143	2011-08-15 12:57:10.062	diva	\N	\N	\N	210	57	f
1147	2011-08-15 12:57:10.359	diva	\N	\N	\N	21103	57	f
1151	2011-08-15 12:57:10.597	diva	\N	\N	\N	30101	57	f
1155	2011-08-15 12:57:10.904	diva	\N	\N	\N	30105	57	f
1159	2011-08-15 12:57:11.223	diva	\N	\N	\N	30109	57	f
1163	2011-08-15 12:57:11.521	diva	\N	\N	\N	30201	57	f
1167	2011-08-15 12:57:11.842	diva	\N	\N	\N	30205	57	f
1171	2011-08-15 12:57:12.189	diva	\N	\N	\N	30209	57	f
1175	2011-08-15 12:57:12.492	diva	\N	\N	\N	30213	57	f
1179	2011-08-15 12:57:12.799	diva	\N	\N	\N	30217	57	f
1183	2011-08-15 12:57:13.15	diva	\N	\N	\N	30221	57	f
1187	2011-08-15 12:57:13.469	diva	\N	\N	\N	30299	57	f
1191	2011-08-15 12:57:13.759	diva	\N	\N	\N	30303	57	f
1195	2011-08-15 12:57:14.056	diva	\N	\N	\N	30307	57	f
1199	2011-08-15 12:57:14.348	diva	\N	\N	\N	30399	57	f
1203	2011-08-15 12:57:14.633	diva	\N	\N	\N	30403	57	f
1207	2011-08-15 12:57:14.918	diva	\N	\N	\N	30502	57	f
1211	2011-08-15 12:57:15.137	diva	\N	\N	\N	40101	57	f
1215	2011-08-15 12:57:15.441	diva	\N	\N	\N	40105	57	f
1219	2011-08-15 12:57:15.73	diva	\N	\N	\N	402	57	f
1223	2011-08-15 12:57:16.021	diva	\N	\N	\N	40303	57	f
1227	2011-08-15 12:57:16.321	diva	\N	\N	\N	40402	57	f
1231	2011-08-15 12:57:16.62	diva	\N	\N	\N	40503	57	f
1235	2011-08-15 12:57:16.851	diva	\N	\N	\N	501	57	f
1239	2011-08-15 12:57:17.139	diva	\N	\N	\N	50201	57	f
1243	2011-08-15 12:57:17.426	diva	\N	\N	\N	50301	57	f
1247	2011-08-15 12:57:17.717	diva	\N	\N	\N	504	57	f
1251	2011-08-15 12:57:18.025	diva	\N	\N	\N	50404	57	f
1255	2011-08-15 12:57:18.292	diva	\N	\N	\N	506	57	f
1259	2011-08-15 12:57:18.576	diva	\N	\N	\N	507	57	f
1263	2011-08-15 12:57:18.868	diva	\N	\N	\N	50801	57	f
1267	2011-08-15 12:57:19.165	diva	\N	\N	\N	50901	57	f
1271	2011-08-15 12:57:19.47	diva	\N	\N	\N	50999	57	f
1275	2011-08-15 12:57:19.684	diva	\N	\N	\N	60102	57	f
1279	2011-08-15 12:57:19.978	diva	\N	\N	\N	60202	57	f
1283	2011-08-15 12:57:20.283	diva	\N	\N	\N	60301	57	f
1287	2011-08-15 12:57:20.586	diva	\N	\N	\N	60305	57	f
1291	2011-08-15 12:57:20.885	diva	\N	\N	\N	60403	57	f
1295	2011-08-15 12:57:21.195	diva	\N	\N	\N	60407	57	f
1299	2011-08-15 12:57:21.478	diva	\N	\N	\N	605	57	f
1303	2011-08-15 12:57:21.783	diva	2010-09-24	\N	\N	60599	57	f
1108	2011-08-15 12:57:07.359	diva	\N	\N	\N	20505	57	f
1112	2011-08-15 12:57:07.673	diva	\N	\N	\N	20601	57	f
1116	2011-08-15 12:57:08.01	diva	\N	\N	\N	20605	57	f
1120	2011-08-15 12:57:08.297	diva	\N	\N	\N	20702	57	f
1124	2011-08-15 12:57:08.604	diva	\N	\N	\N	20706	57	f
1128	2011-08-15 12:57:08.941	diva	\N	\N	\N	20801	57	f
1132	2011-08-15 12:57:09.251	diva	\N	\N	\N	20899	57	f
1136	2011-08-15 12:57:09.543	diva	\N	\N	\N	20903	57	f
1140	2011-08-15 12:57:09.847	diva	\N	\N	\N	20907	57	f
1144	2011-08-15 12:57:10.123	diva	\N	\N	\N	211	57	f
1148	2011-08-15 12:57:10.435	diva	\N	\N	\N	21199	57	f
1152	2011-08-15 12:57:10.677	diva	\N	\N	\N	30102	57	f
1156	2011-08-15 12:57:10.982	diva	\N	\N	\N	30106	57	f
1160	2011-08-15 12:57:11.302	diva	\N	\N	\N	30110	57	f
1164	2011-08-15 12:57:11.601	diva	\N	\N	\N	30202	57	f
1168	2011-08-15 12:57:11.922	diva	\N	\N	\N	30206	57	f
1172	2011-08-15 12:57:12.267	diva	\N	\N	\N	30210	57	f
1176	2011-08-15 12:57:12.569	diva	\N	\N	\N	30214	57	f
1180	2011-08-15 12:57:12.882	diva	\N	\N	\N	30218	57	f
1184	2011-08-15 12:57:13.227	diva	\N	\N	\N	30222	57	f
1188	2011-08-15 12:57:13.532	diva	\N	\N	\N	303	57	f
1192	2011-08-15 12:57:13.835	diva	\N	\N	\N	30304	57	f
1196	2011-08-15 12:57:14.13	diva	\N	\N	\N	30308	57	f
1200	2011-08-15 12:57:14.409	diva	\N	\N	\N	304	57	f
1204	2011-08-15 12:57:14.709	diva	\N	\N	\N	30499	57	f
1208	2011-08-15 12:57:14.995	diva	\N	\N	\N	30599	57	f
1212	2011-08-15 12:57:15.214	diva	\N	\N	\N	40102	57	f
1216	2011-08-15 12:57:15.517	diva	\N	\N	\N	40106	57	f
1220	2011-08-15 12:57:15.795	diva	\N	\N	\N	403	57	f
1224	2011-08-15 12:57:16.098	diva	\N	\N	\N	40304	57	f
1228	2011-08-15 12:57:16.386	diva	\N	\N	\N	405	57	f
1232	2011-08-15 12:57:16.697	diva	\N	\N	\N	40504	57	f
1236	2011-08-15 12:57:16.927	diva	\N	\N	\N	50101	57	f
1240	2011-08-15 12:57:17.221	diva	\N	\N	\N	50202	57	f
1244	2011-08-15 12:57:17.505	diva	\N	\N	\N	50302	57	f
1248	2011-08-15 12:57:17.797	diva	\N	\N	\N	50401	57	f
1252	2011-08-15 12:57:18.085	diva	\N	\N	\N	505	57	f
1256	2011-08-15 12:57:18.367	diva	\N	\N	\N	50601	57	f
1260	2011-08-15 12:57:18.654	diva	\N	\N	\N	50701	57	f
1264	2011-08-15 12:57:18.943	diva	\N	\N	\N	50802	57	f
1268	2011-08-15 12:57:19.242	diva	\N	\N	\N	50902	57	f
1272	2011-08-15 12:57:19.482	diva	\N	\N	\N	6	57	f
1276	2011-08-15 12:57:19.761	diva	\N	\N	\N	60103	57	f
1280	2011-08-15 12:57:20.052	diva	\N	\N	\N	60203	57	f
1284	2011-08-15 12:57:20.362	diva	\N	\N	\N	60302	57	f
1288	2011-08-15 12:57:20.654	diva	\N	\N	\N	604	57	f
1292	2011-08-15 12:57:20.965	diva	\N	\N	\N	60404	57	f
1296	2011-08-15 12:57:21.27	diva	\N	\N	\N	60408	57	f
1300	2011-08-15 12:57:21.556	diva	\N	\N	\N	60501	57	f
1109	2011-08-15 12:57:07.434	diva	\N	\N	\N	20506	57	f
1113	2011-08-15 12:57:07.773	diva	\N	\N	\N	20602	57	f
1117	2011-08-15 12:57:08.082	diva	\N	\N	\N	20699	57	f
1121	2011-08-15 12:57:08.373	diva	\N	\N	\N	20703	57	f
1125	2011-08-15 12:57:08.681	diva	\N	\N	\N	20707	57	f
1129	2011-08-15 12:57:09.013	diva	\N	\N	\N	20802	57	f
1133	2011-08-15 12:57:09.311	diva	\N	\N	\N	209	57	f
1137	2011-08-15 12:57:09.615	diva	\N	\N	\N	20904	57	f
1141	2011-08-15 12:57:09.919	diva	\N	\N	\N	20908	57	f
1145	2011-08-15 12:57:10.199	diva	\N	\N	\N	21101	57	f
1149	2011-08-15 12:57:10.452	diva	\N	\N	\N	3	57	f
1153	2011-08-15 12:57:10.75	diva	\N	\N	\N	30103	57	f
1157	2011-08-15 12:57:11.069	diva	\N	\N	\N	30107	57	f
1161	2011-08-15 12:57:11.378	diva	\N	\N	\N	30199	57	f
1165	2011-08-15 12:57:11.675	diva	\N	\N	\N	30203	57	f
1169	2011-08-15 12:57:11.998	diva	\N	\N	\N	30207	57	f
1173	2011-08-15 12:57:12.342	diva	\N	\N	\N	30211	57	f
1177	2011-08-15 12:57:12.641	diva	\N	\N	\N	30215	57	f
1181	2011-08-15 12:57:12.956	diva	\N	\N	\N	30219	57	f
1185	2011-08-15 12:57:13.301	diva	\N	\N	\N	30223	57	f
1189	2011-08-15 12:57:13.602	diva	\N	\N	\N	30301	57	f
1193	2011-08-15 12:57:13.908	diva	\N	\N	\N	30305	57	f
1197	2011-08-15 12:57:14.201	diva	\N	\N	\N	30309	57	f
1201	2011-08-15 12:57:14.481	diva	\N	\N	\N	30401	57	f
1205	2011-08-15 12:57:14.765	diva	\N	\N	\N	305	57	f
1209	2011-08-15 12:57:15.007	diva	\N	\N	\N	4	57	f
1213	2011-08-15 12:57:15.291	diva	\N	\N	\N	40103	57	f
1217	2011-08-15 12:57:15.591	diva	\N	\N	\N	40107	57	f
1221	2011-08-15 12:57:15.871	diva	\N	\N	\N	40301	57	f
1225	2011-08-15 12:57:16.162	diva	\N	\N	\N	404	57	f
1229	2011-08-15 12:57:16.461	diva	\N	\N	\N	40501	57	f
1233	2011-08-15 12:57:16.777	diva	\N	\N	\N	40599	57	f
1237	2011-08-15 12:57:16.999	diva	\N	\N	\N	50102	57	f
1241	2011-08-15 12:57:17.294	diva	\N	\N	\N	50203	57	f
1245	2011-08-15 12:57:17.581	diva	\N	\N	\N	50303	57	f
1249	2011-08-15 12:57:17.871	diva	\N	\N	\N	50402	57	f
1253	2011-08-15 12:57:18.157	diva	\N	\N	\N	50501	57	f
1257	2011-08-15 12:57:18.439	diva	\N	\N	\N	50602	57	f
1261	2011-08-15 12:57:18.73	diva	\N	\N	\N	50702	57	f
1265	2011-08-15 12:57:19.018	diva	\N	\N	\N	50803	57	f
1269	2011-08-15 12:57:19.319	diva	\N	\N	\N	50903	57	f
1273	2011-08-15 12:57:19.538	diva	\N	\N	\N	601	57	f
1277	2011-08-15 12:57:19.821	diva	\N	\N	\N	602	57	f
1281	2011-08-15 12:57:20.137	diva	\N	\N	\N	60204	57	f
1285	2011-08-15 12:57:20.434	diva	\N	\N	\N	60303	57	f
1289	2011-08-15 12:57:20.732	diva	\N	\N	\N	60401	57	f
1293	2011-08-15 12:57:21.038	diva	\N	\N	\N	60405	57	f
1297	2011-08-15 12:57:21.344	diva	\N	\N	\N	60409	57	f
1301	2011-08-15 12:57:21.632	diva	\N	\N	\N	60502	57	f
1351	2012-04-05 08:26:43.219	test	\N	\N	\N	\N	53	f
1400	2012-04-05 09:31:47.912	test	\N	\N	\N	\N	56	f
1450	2012-04-10 12:47:01.342	test	\N	\N	\N	\N	56	f
1350	2012-04-10 14:39:16.759	test	\N	\N	\N	\N	56	f
1500	2012-04-11 10:38:00.516	test	\N	\N	\N	\N	56	f
1601	2012-04-11 17:06:42.205	test	\N	\N	\N	\N	53	f
1650	2012-04-16 14:07:05.357	test	\N	\N	\N	\N	54	f
1700	2012-04-18 08:38:07.399	test	\N	\N	\N	\N	54	f
550	2012-05-02 16:35:01.934	test	\N	\N	\N	\N	56	f
1600	2014-04-01 16:26:48.542	test	2013-04-01	\N	\N	\N	56	f
150	2014-04-01 16:27:08.642	test	2012-01-01	\N	\N	\N	54	f
\.


--
-- Data for Name: subject_name; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY subject_name (subject_name_id, last_updated, locale, subject_name, subject_id, lastupdated) FROM stdin;
2060	2009-03-18 16:02:26.493	sv	teknik	55	\N
4984	2011-08-15 12:57:02.011	sv	Geofysik	1042	\N
4986	2011-08-15 12:57:02.087	sv	Geokemi	1043	\N
5447	2011-08-15 12:57:19.538	en	History and Archaeology	1273	\N
5454	2011-08-15 12:57:19.821	sv	Språk och litteratur	1277	\N
5455	2011-08-15 12:57:19.821	en	Languages and Literature	1277	\N
5462	2011-08-15 12:57:20.137	sv	Litteraturstudier	1281	\N
5463	2011-08-15 12:57:20.137	en	Specific Literatures	1281	\N
5470	2011-08-15 12:57:20.434	sv	Religionsvetenskap	1285	\N
5471	2011-08-15 12:57:20.434	en	Religious Studies	1285	\N
5478	2011-08-15 12:57:20.732	sv	Bildkonst	1289	\N
5479	2011-08-15 12:57:20.732	en	Visual Arts	1289	\N
5486	2011-08-15 12:57:21.038	sv	Arkitektur	1293	\N
5487	2011-08-15 12:57:21.038	en	Architecture	1293	\N
5494	2011-08-15 12:57:21.344	sv	Teatervetenskap	1297	\N
5495	2011-08-15 12:57:21.344	en	Performing Art Studies	1297	\N
5502	2011-08-15 12:57:21.632	sv	Kulturstudier	1301	\N
5503	2011-08-15 12:57:21.632	en	Cultural Studies	1301	\N
5460	2011-08-15 12:57:20.052	sv	Litteraturvetenskap	1280	\N
5461	2011-08-15 12:57:20.052	en	General Literature Studies	1280	\N
5468	2011-08-15 12:57:20.362	sv	Etik	1284	\N
5469	2011-08-15 12:57:20.362	en	Ethics	1284	\N
5476	2011-08-15 12:57:20.654	sv	Konst	1288	\N
5477	2011-08-15 12:57:20.654	en	Arts	1288	\N
5484	2011-08-15 12:57:20.965	sv	Scenkonst	1292	\N
5485	2011-08-15 12:57:20.965	en	Performing Arts	1292	\N
5492	2011-08-15 12:57:21.27	sv	Musikvetenskap	1296	\N
5493	2011-08-15 12:57:21.27	en	Musicology	1296	\N
5500	2011-08-15 12:57:21.556	sv	Antikvetenskap	1300	\N
5501	2011-08-15 12:57:21.556	en	Classical Archaeology and Ancient History	1300	\N
5465	2011-08-15 12:57:20.205	en	Philosophy, Ethics and Religion	1282	\N
5472	2011-08-15 12:57:20.509	sv	Religionshistoria	1286	\N
5473	2011-08-15 12:57:20.509	en	History of Religions	1286	\N
5480	2011-08-15 12:57:20.812	sv	Musik	1290	\N
5481	2011-08-15 12:57:20.812	en	Music	1290	\N
5488	2011-08-15 12:57:21.117	sv	Design	1294	\N
5489	2011-08-15 12:57:21.117	en	Design	1294	\N
5496	2011-08-15 12:57:21.42	sv	Filmvetenskap	1298	\N
5497	2011-08-15 12:57:21.42	en	Studies on Film	1298	\N
5504	2011-08-15 12:57:21.709	sv	Etnologi	1302	\N
5505	2011-08-15 12:57:21.709	en	Ethnology	1302	\N
5482	2011-08-15 12:57:20.885	sv	Litterär gestaltning	1291	\N
2050	2009-03-18 16:02:26.388	sv	humaniora/teologi	50	\N
2051	2009-03-18 16:02:26.388	en	humaniora/teologi	50	\N
2052	2009-03-18 16:02:26.411	sv	samhälle/juridik	51	\N
2053	2009-03-18 16:02:26.411	en	samhälle/juridik	51	\N
2054	2009-03-18 16:02:26.427	sv	bio-/geovetenskap	52	\N
2055	2009-03-18 16:02:26.427	en	bio-/geovetenskap	52	\N
2056	2009-03-18 16:02:26.445	sv	fysik/kemi/matematik	53	\N
2057	2009-03-18 16:02:26.445	en	fysik/kemi/matematik	53	\N
2058	2009-03-18 16:02:26.468	sv	konstnärligt arbete	54	\N
2059	2009-03-18 16:02:26.468	en	konstnärligt arbete	54	\N
2061	2009-03-18 16:02:26.493	en	teknik	55	\N
2062	2009-03-18 16:02:26.51	sv	medicin	56	\N
2063	2009-03-18 16:02:26.51	en	medicin	56	\N
2064	2009-03-18 16:02:26.528	sv	lantbruk/veterinärmed./skogl. vetenskap	57	\N
2065	2009-03-18 16:02:26.528	en	lantbruk/veterinärmed./skogl. vetenskap	57	\N
2501	2009-04-20 13:29:49.053	sv	Hannas test på svenska	150	\N
2550	2009-04-21 11:33:56.096	en	Hannas test other	200	\N
2551	2009-04-21 11:33:56.096	sv	Hannas test sv	200	\N
2850	2009-05-11 09:01:04.249	en	Linas forskningsämne	250	\N
2851	2009-05-11 09:01:04.249	sv	Linas forskningsämne	250	\N
2852	2009-05-11 09:01:28.948	en	Linas spärrade forskningsämne	251	\N
2853	2009-05-11 09:01:28.948	sv	Linas spärrade forskningsämne	251	\N
3000	2009-07-30 13:38:05.709	en	Astronomy program	300	\N
3001	2009-07-30 13:38:05.709	sv	Astronomiprogram	300	\N
3102	2010-03-23 00:00:00	en	2:nd Category level 1	60	\N
3103	2010-03-23 00:00:00	sv	2:a kategorin nivå 1	60	\N
3101	2010-03-22 00:00:00	sv	1:a Ämneskategori nivå 1	59	\N
3100	2010-03-22 00:00:00	en	1:st Category level 1	59	\N
2048	2009-03-18 00:00:00	en	Test Category level 2	58	\N
2049	2009-03-18 00:00:00	sv	Testkategori nivå 2	58	\N
3104	2010-03-23 00:00:00	en	hanna level 2	61	\N
3105	2010-03-23 00:00:00	sv	hanna nivå 2	61	\N
3106	2010-03-23 00:00:00	en	level 3	62	\N
3107	2010-03-23 00:00:00	sv	nivå 3	62	\N
3050	2010-03-31 16:57:01.46	en	Astronomy	350	\N
3051	2010-03-31 16:57:01.46	sv	Astronomi	350	\N
3150	2010-03-31 17:27:19.278	en	Medical science	450	\N
3151	2010-03-31 17:27:19.278	sv	Medicinsk vetenskap	450	\N
3200	2010-06-03 17:27:19.278	en	Level 4	500	\N
3201	2010-06-03 17:27:19.278	sv	Nivå 4	500	\N
2500	2009-04-20 13:29:49.053	en	Hannas test på svenska	150	\N
3752	2010-09-03 14:14:03.704	en	Research subject 1	501	\N
3753	2010-09-03 14:14:03.704	sv	Forskningsämne 1	501	\N
3754	2010-09-03 14:14:40.853	en	Research subject 2	502	\N
3755	2010-09-03 14:14:40.853	sv	Forskningsämne 2	502	\N
3756	2010-09-03 14:15:21.738	en	Research subject 3	503	\N
3757	2010-09-03 14:15:21.738	sv	Forskningsämne 3	503	\N
4150	2012-05-02 16:35:01.934	en	Aprilprogram	550	\N
4151	2012-05-02 16:35:01.934	sv	Aprilprogram	550	\N
4200	2011-05-05 14:41:23.117	en	Statistics	600	\N
4201	2011-05-05 14:41:23.117	sv	Matematisk statistik	600	\N
4202	2011-05-05 14:41:55.995	en	Francais A	601	\N
4203	2011-05-05 14:41:55.995	sv	Franska A	601	\N
4900	2011-08-15 12:56:56.836	sv	Naturvetenskap	1000	\N
4901	2011-08-15 12:56:56.836	en	Natural Sciences	1000	\N
4902	2011-08-15 12:56:57.019	sv	Matematik	1001	\N
4903	2011-08-15 12:56:57.019	en	Mathematics	1001	\N
4904	2011-08-15 12:56:57.294	sv	Matematisk analys	1002	\N
4905	2011-08-15 12:56:57.294	en	Mathematical Analysis	1002	\N
4906	2011-08-15 12:56:57.958	sv	Geometri	1003	\N
4907	2011-08-15 12:56:57.958	en	Geometry	1003	\N
4908	2011-08-15 12:56:58.436	sv	Algebra och logik	1004	\N
4909	2011-08-15 12:56:58.436	en	Algebra and Logic	1004	\N
4910	2011-08-15 12:56:58.675	sv	Diskret matematik	1005	\N
4911	2011-08-15 12:56:58.675	en	Discrete Mathematics	1005	\N
4912	2011-08-15 12:56:58.952	sv	Beräkningsmatematik	1006	\N
4913	2011-08-15 12:56:58.952	en	Computational Mathematics	1006	\N
4914	2011-08-15 12:56:59.103	sv	Sannolikhetsteori och statistik	1007	\N
4915	2011-08-15 12:56:59.103	en	Probability Theory and Statistics	1007	\N
4916	2011-08-15 12:56:59.235	sv	Annan matematik	1008	\N
4917	2011-08-15 12:56:59.235	en	Other Mathematics	1008	\N
4918	2011-08-15 12:56:59.297	sv	Data- och informationsvetenskap	1009	\N
4919	2011-08-15 12:56:59.297	en	Computer and Information Science	1009	\N
4920	2011-08-15 12:56:59.4	sv	Datavetenskap (datalogi)	1010	\N
4921	2011-08-15 12:56:59.4	en	Computer Science	1010	\N
4922	2011-08-15 12:56:59.488	sv	Systemvetenskap	1011	\N
4923	2011-08-15 12:56:59.488	en	Information Science	1011	\N
4924	2011-08-15 12:56:59.57	sv	Bioinformatik (beräkningsbiologi)	1012	\N
4925	2011-08-15 12:56:59.57	en	Bioinformatics (Computational Biology)	1012	\N
4926	2011-08-15 12:56:59.647	sv	Människa-datorinteraktion (interaktionsdesign)	1013	\N
4927	2011-08-15 12:56:59.647	en	Human Computer Interaction	1013	\N
5483	2011-08-15 12:57:20.885	en	Literary Composition	1291	\N
5490	2011-08-15 12:57:21.195	sv	Konstvetenskap	1295	\N
5491	2011-08-15 12:57:21.195	en	Art History	1295	\N
5498	2011-08-15 12:57:21.478	sv	Annan humaniora	1299	\N
5499	2011-08-15 12:57:21.478	en	Other Humanities	1299	\N
5506	2011-08-15 12:57:21.783	sv	Övrig annan humaniora	1303	\N
4928	2011-08-15 12:56:59.728	sv	Programvaruteknik	1014	\N
4929	2011-08-15 12:56:59.728	en	Software Engineering	1014	\N
4930	2011-08-15 12:56:59.808	sv	Datorteknik	1015	\N
4931	2011-08-15 12:56:59.808	en	Computer Engineering	1015	\N
4932	2011-08-15 12:56:59.891	sv	Datorseende och robotik (autonoma system)	1016	\N
4933	2011-08-15 12:56:59.891	en	Computer Vision and Robotics (Autonomous Systems)	1016	\N
4934	2011-08-15 12:56:59.971	sv	Språkteknologi (språkvetenskaplig databehandling)	1017	\N
4935	2011-08-15 12:56:59.971	en	Language Technology (Computational Linguistics)	1017	\N
4936	2011-08-15 12:57:00.055	sv	Medieteknik	1018	\N
4937	2011-08-15 12:57:00.055	en	Media and Communication Technology	1018	\N
4938	2011-08-15 12:57:00.136	sv	Annan data- och informationsvetenskap	1019	\N
4939	2011-08-15 12:57:00.136	en	Other Computer and Information Science	1019	\N
4940	2011-08-15 12:57:00.213	sv	Fysik	1020	\N
4941	2011-08-15 12:57:00.213	en	Physical Sciences	1020	\N
4942	2011-08-15 12:57:00.291	sv	Subatomär fysik	1021	\N
4943	2011-08-15 12:57:00.291	en	Subatomic Physics	1021	\N
4944	2011-08-15 12:57:00.37	sv	Atom- och molekylfysik och optik	1022	\N
4945	2011-08-15 12:57:00.37	en	Atom and Molecular Physics and Optics	1022	\N
4946	2011-08-15 12:57:00.448	sv	Fusion, plasma och rymdfysik	1023	\N
4947	2011-08-15 12:57:00.448	en	Fusion, Plasma and Space Physics	1023	\N
4948	2011-08-15 12:57:00.554	sv	Den kondenserade materiens fysik	1024	\N
4949	2011-08-15 12:57:00.554	en	Condensed Matter Physics	1024	\N
4950	2011-08-15 12:57:00.65	sv	Astronomi, astrofysik och kosmologi	1025	\N
4951	2011-08-15 12:57:00.65	en	Astronomy, Astrophysics and Cosmology	1025	\N
4952	2011-08-15 12:57:00.736	sv	Acceleratorfysik och instrumentering	1026	\N
4953	2011-08-15 12:57:00.736	en	Accelerator Physics and Instrumentation	1026	\N
4954	2011-08-15 12:57:00.816	sv	Annan fysik	1027	\N
4955	2011-08-15 12:57:00.816	en	Other Physics Topics	1027	\N
4956	2011-08-15 12:57:00.881	sv	Kemi	1028	\N
4957	2011-08-15 12:57:00.881	en	Chemical Sciences	1028	\N
4958	2011-08-15 12:57:00.958	sv	Analytisk kemi	1029	\N
4959	2011-08-15 12:57:00.958	en	Analytical Chemistry	1029	\N
4960	2011-08-15 12:57:01.038	sv	Fysikalisk kemi	1030	\N
4961	2011-08-15 12:57:01.038	en	Physical Chemistry	1030	\N
4962	2011-08-15 12:57:01.117	sv	Materialkemi	1031	\N
4963	2011-08-15 12:57:01.117	en	Materials Chemistry	1031	\N
4964	2011-08-15 12:57:01.206	sv	Oorganisk kemi	1032	\N
4965	2011-08-15 12:57:01.206	en	Inorganic Chemistry	1032	\N
4966	2011-08-15 12:57:01.284	sv	Organisk kemi	1033	\N
4967	2011-08-15 12:57:01.284	en	Organic Chemistry	1033	\N
4968	2011-08-15 12:57:01.366	sv	Polymerkemi	1034	\N
4969	2011-08-15 12:57:01.366	en	Polymer Chemistry	1034	\N
4970	2011-08-15 12:57:01.445	sv	Teoretisk kemi	1035	\N
4971	2011-08-15 12:57:01.445	en	Theoretical Chemistry	1035	\N
4153	2013-02-22 11:39:07.588	sv	Valborgprogrammet	551	\N
4972	2011-08-15 12:57:01.527	sv	Annan kemi	1036	\N
4973	2011-08-15 12:57:01.527	en	Other Chemistry Topics	1036	\N
4980	2011-08-15 12:57:01.852	sv	Multidisciplinär geovetenskap	1040	\N
4981	2011-08-15 12:57:01.852	en	Geosciences, Multidisciplinary	1040	\N
4988	2011-08-15 12:57:02.167	sv	Fysisk geografi	1044	\N
4989	2011-08-15 12:57:02.167	en	Physical Geography	1044	\N
4996	2011-08-15 12:57:02.479	sv	Biologiska vetenskaper	1048	\N
4997	2011-08-15 12:57:02.479	en	Biological Sciences	1048	\N
5004	2011-08-15 12:57:02.802	sv	Cellbiologi	1052	\N
5005	2011-08-15 12:57:02.802	en	Cell Biology	1052	\N
5012	2011-08-15 12:57:03.14	sv	Zoologi	1056	\N
5013	2011-08-15 12:57:03.14	en	Zoology	1056	\N
5020	2011-08-15 12:57:03.461	sv	Biologisk systematik	1060	\N
5021	2011-08-15 12:57:03.461	en	Biological Systematics	1060	\N
5028	2011-08-15 12:57:03.783	sv	Annan biologi	1064	\N
5029	2011-08-15 12:57:03.783	en	Other Biological Topics	1064	\N
5036	2011-08-15 12:57:04.009	sv	Arkitekturteknik	1068	\N
5037	2011-08-15 12:57:04.009	en	Architectural Engineering	1068	\N
5044	2011-08-15 12:57:04.362	sv	Transportteknik och logistik	1072	\N
5045	2011-08-15 12:57:04.362	en	Transport Systems and Logistics	1072	\N
5052	2011-08-15 12:57:04.689	sv	Annan samhällsbyggnadsteknik	1076	\N
5053	2011-08-15 12:57:04.689	en	Other Civil Engineering	1076	\N
5060	2011-08-15 12:57:05.006	sv	Kommunikationssystem	1080	\N
5061	2011-08-15 12:57:05.006	en	Communication Systems	1080	\N
5068	2011-08-15 12:57:05.385	sv	Inbäddad systemteknik	1084	\N
5069	2011-08-15 12:57:05.385	en	Embedded Systems	1084	\N
5076	2011-08-15 12:57:05.692	sv	Rymd- och flygteknik	1088	\N
5077	2011-08-15 12:57:05.692	en	Aerospace Engineering	1088	\N
5084	2011-08-15 12:57:06.029	sv	Strömningsmekanik och akustik	1092	\N
5085	2011-08-15 12:57:06.029	en	Fluid Mechanics and Acoustics	1092	\N
5092	2011-08-15 12:57:06.397	sv	Annan maskinteknik	1096	\N
5093	2011-08-15 12:57:06.397	en	Other Mechanical Engineering	1096	\N
5100	2011-08-15 12:57:06.741	sv	Polymerteknologi	1100	\N
5101	2011-08-15 12:57:06.741	en	Polymer Technologies	1100	\N
5108	2011-08-15 12:57:07.04	sv	Keramteknik	1104	\N
5109	2011-08-15 12:57:07.04	en	Ceramics	1104	\N
5116	2011-08-15 12:57:07.359	sv	Bearbetnings-, yt- och fogningsteknik	1108	\N
5117	2011-08-15 12:57:07.359	en	Manufacturing, Surface and Joining Technology	1108	\N
5124	2011-08-15 12:57:07.673	sv	Medicinsk laboratorie- och mätteknik	1112	\N
5125	2011-08-15 12:57:07.673	en	Medical Laboratory and Measurements Technologies	1112	\N
5132	2011-08-15 12:57:08.01	sv	Medicinsk ergonomi	1116	\N
5133	2011-08-15 12:57:08.01	en	Medical Ergonomics	1116	\N
5140	2011-08-15 12:57:08.297	sv	Energisystem	1120	\N
5141	2011-08-15 12:57:08.297	en	Energy Systems	1120	\N
5148	2011-08-15 12:57:08.604	sv	Havs- och vattendragsteknik	1124	\N
5149	2011-08-15 12:57:08.604	en	Ocean and River Engineering	1124	\N
5156	2011-08-15 12:57:08.941	sv	Biosanering	1128	\N
5157	2011-08-15 12:57:08.941	en	Bioremediation	1128	\N
5164	2011-08-15 12:57:09.251	sv	Annan miljöbioteknik	1132	\N
5165	2011-08-15 12:57:09.251	en	Other Environmental Biotechnology	1132	\N
5172	2011-08-15 12:57:09.543	sv	Biomaterial	1136	\N
5173	2011-08-15 12:57:09.543	en	Bio Materials	1136	\N
5180	2011-08-15 12:57:09.847	sv	Bioteknisk apparatteknik	1140	\N
5181	2011-08-15 12:57:09.847	en	Bioengineering Equipment	1140	\N
5188	2011-08-15 12:57:10.123	sv	Annan teknik	1144	\N
5189	2011-08-15 12:57:10.123	en	Other Engineering and Technologies	1144	\N
5196	2011-08-15 12:57:10.435	sv	Övrig annan teknik	1148	\N
5197	2011-08-15 12:57:10.435	en	Other Engineering and Technologies not elsewhere specified	1148	\N
5204	2011-08-15 12:57:10.677	sv	Farmakologi och toxikologi	1152	\N
5205	2011-08-15 12:57:10.677	en	Pharmacology and Toxicology	1152	\N
5212	2011-08-15 12:57:10.982	sv	Fysiologi	1156	\N
5213	2011-08-15 12:57:10.982	en	Physiology	1156	\N
5220	2011-08-15 12:57:11.302	sv	Immunologi inom det medicinska området	1160	\N
5221	2011-08-15 12:57:11.302	en	Immunology in the medical area	1160	\N
5228	2011-08-15 12:57:11.601	sv	Hematologi	1164	\N
5229	2011-08-15 12:57:11.601	en	Hematology	1164	\N
5236	2011-08-15 12:57:11.922	sv	Kardiologi	1168	\N
5237	2011-08-15 12:57:11.922	en	Cardiac and Cardiovascular Systems	1168	\N
5244	2011-08-15 12:57:12.267	sv	Reumatologi och inflammation	1172	\N
5245	2011-08-15 12:57:12.267	en	Rheumatology and Autoimmunity	1172	\N
5252	2011-08-15 12:57:12.569	sv	Urologi och njurmedicin	1176	\N
5253	2011-08-15 12:57:12.569	en	Urology and Nephrology	1176	\N
5260	2011-08-15 12:57:12.882	sv	Oto-rino-laryngologi	1180	\N
5261	2011-08-15 12:57:12.882	en	Otorhinolaryngology	1180	\N
5268	2011-08-15 12:57:13.227	sv	Geriatrik	1184	\N
5269	2011-08-15 12:57:13.227	en	Geriatrics	1184	\N
5276	2011-08-15 12:57:13.532	sv	Hälsovetenskaper	1188	\N
5277	2011-08-15 12:57:13.532	en	Health Sciences	1188	\N
5284	2011-08-15 12:57:13.835	sv	Näringslära	1192	\N
5285	2011-08-15 12:57:13.835	en	Nutrition and Dietetics	1192	\N
5292	2011-08-15 12:57:14.13	sv	Idrottsvetenskap	1196	\N
5293	2011-08-15 12:57:14.13	en	Sport and Fitness Sciences	1196	\N
5300	2011-08-15 12:57:14.409	sv	Medicinsk bioteknologi	1200	\N
5301	2011-08-15 12:57:14.409	en	Medical Biotechnology	1200	\N
5308	2011-08-15 12:57:14.709	sv	Annan medicinsk bioteknologi	1204	\N
5309	2011-08-15 12:57:14.709	en	Other Medical Biotechnology	1204	\N
5316	2011-08-15 12:57:14.995	sv	Övrig annan medicin och hälsovetenskap	1208	\N
5317	2011-08-15 12:57:14.995	en	Other Medical Sciences not elsewhere specified	1208	\N
5324	2011-08-15 12:57:15.214	sv	Trädgårdsvetenskap/hortikultur	1212	\N
5325	2011-08-15 12:57:15.214	en	Horticulture	1212	\N
5332	2011-08-15 12:57:15.517	sv	Markvetenskap	1216	\N
5333	2011-08-15 12:57:15.517	en	Soil Science	1216	\N
5340	2011-08-15 12:57:15.795	sv	Veterinärmedicin	1220	\N
5341	2011-08-15 12:57:15.795	en	Veterinary Science	1220	\N
5348	2011-08-15 12:57:16.098	sv	Annan veterinärmedicin	1224	\N
5349	2011-08-15 12:57:16.098	en	Other Veterinary Science	1224	\N
5356	2011-08-15 12:57:16.386	sv	Andra lantbruksrelaterade vetenskaper	1228	\N
5357	2011-08-15 12:57:16.386	en	Other Agricultural Sciences	1228	\N
5364	2011-08-15 12:57:16.697	sv	Miljö- och naturvårdsvetenskap	1232	\N
5365	2011-08-15 12:57:16.697	en	Environmental Sciences related to Agriculture and Land-use	1232	\N
5372	2011-08-15 12:57:16.927	sv	Psykologi (exklusive tillämpad psykologi)	1236	\N
5373	2011-08-15 12:57:16.927	en	Psychology (excluding Applied Psychology)	1236	\N
5380	2011-08-15 12:57:17.221	sv	Företagsekonomi	1240	\N
5381	2011-08-15 12:57:17.221	en	Business Administration	1240	\N
5388	2011-08-15 12:57:17.505	sv	Didaktik	1244	\N
5389	2011-08-15 12:57:17.505	en	Didactics	1244	\N
5396	2011-08-15 12:57:17.797	sv	Sociologi (exklusive socialt arbete, socialpsykologi och socialantropologi)	1248	\N
5397	2011-08-15 12:57:17.797	en	Sociology (excluding Social work, Social Psychology and Social Anthropology)	1248	\N
5404	2011-08-15 12:57:18.085	sv	Juridik	1252	\N
5405	2011-08-15 12:57:18.085	en	Law	1252	\N
5412	2011-08-15 12:57:18.367	sv	Statsvetenskap (exklusive studier av offentlig förvaltning och globaliseringsstudier)	1256	\N
5413	2011-08-15 12:57:18.367	en	Political Science (excluding Public Administration Studies and Globalization Studies)	1256	\N
5420	2011-08-15 12:57:18.654	sv	Kulturgeografi	1260	\N
5421	2011-08-15 12:57:18.654	en	Human Geography	1260	\N
5428	2011-08-15 12:57:18.943	sv	Kommunikationsvetenskap	1264	\N
5429	2011-08-15 12:57:18.943	en	Communication Studies	1264	\N
5436	2011-08-15 12:57:19.242	sv	Genusstudier	1268	\N
5437	2011-08-15 12:57:19.242	en	Gender Studies	1268	\N
5444	2011-08-15 12:57:19.482	sv	Humaniora	1272	\N
5445	2011-08-15 12:57:19.482	en	Humanities	1272	\N
5452	2011-08-15 12:57:19.761	sv	Arkeologi	1276	\N
5453	2011-08-15 12:57:19.761	en	Archaeology	1276	\N
4974	2011-08-15 12:57:01.588	sv	Geovetenskap och miljövetenskap	1037	\N
4975	2011-08-15 12:57:01.588	en	Earth and Related Environmental Sciences	1037	\N
4982	2011-08-15 12:57:01.93	sv	Geologi	1041	\N
4983	2011-08-15 12:57:01.93	en	Geology	1041	\N
4990	2011-08-15 12:57:02.249	sv	Meteorologi och atmosfärforskning	1045	\N
4991	2011-08-15 12:57:02.249	en	Meteorology and Atmospheric Sciences	1045	\N
4998	2011-08-15 12:57:02.556	sv	Strukturbiologi	1049	\N
4999	2011-08-15 12:57:02.556	en	Structural Biology	1049	\N
5006	2011-08-15 12:57:02.881	sv	Immunologi	1053	\N
5007	2011-08-15 12:57:02.881	en	Immunology	1053	\N
5014	2011-08-15 12:57:03.219	sv	Genetik	1057	\N
5015	2011-08-15 12:57:03.219	en	Genetics	1057	\N
5022	2011-08-15 12:57:03.54	sv	Etologi	1061	\N
5023	2011-08-15 12:57:03.54	en	Behavioral Sciences Biology	1061	\N
5030	2011-08-15 12:57:03.846	sv	Annan naturvetenskap	1065	\N
5031	2011-08-15 12:57:03.846	en	Other Natural Sciences	1065	\N
5038	2011-08-15 12:57:04.105	sv	Byggproduktion	1069	\N
5039	2011-08-15 12:57:04.105	en	Construction Management	1069	\N
5046	2011-08-15 12:57:04.439	sv	Geoteknik	1073	\N
5047	2011-08-15 12:57:04.439	en	Geotechnical Engineering	1073	\N
5054	2011-08-15 12:57:04.755	sv	Elektroteknik och elektronik	1077	\N
5055	2011-08-15 12:57:04.755	en	Electrical Engineering, Electronic Engineering, Information Engineering	1077	\N
5062	2011-08-15 12:57:05.09	sv	Telekommunikation	1081	\N
5063	2011-08-15 12:57:05.09	en	Telecommunications	1081	\N
5070	2011-08-15 12:57:05.464	sv	Annan elektroteknik och elektronik	1085	\N
5071	2011-08-15 12:57:05.464	en	Other Electrical Engineering, Electronic Engineering, Information Engineering	1085	\N
5078	2011-08-15 12:57:05.772	sv	Farkostteknik	1089	\N
5079	2011-08-15 12:57:05.772	en	Vehicle Engineering	1089	\N
5086	2011-08-15 12:57:06.105	sv	Produktionsteknik, arbetsvetenskap och ergonomi	1093	\N
5087	2011-08-15 12:57:06.105	en	Production Engineering, Human Work Science and Ergonomics	1093	\N
5094	2011-08-15 12:57:06.501	sv	Kemiteknik	1097	\N
5095	2011-08-15 12:57:06.501	en	Chemical Engineering	1097	\N
5102	2011-08-15 12:57:06.82	sv	Farmaceutisk synteskemi	1101	\N
5103	2011-08-15 12:57:06.82	en	Pharmaceutical Chemistry	1101	\N
5110	2011-08-15 12:57:07.119	sv	Kompositmaterial och -teknik	1105	\N
5111	2011-08-15 12:57:07.119	en	Composite Science and Engineering	1105	\N
5118	2011-08-15 12:57:07.434	sv	Metallurgi och metalliska material	1109	\N
5119	2011-08-15 12:57:07.434	en	Metallurgy and Metallic Materials	1109	\N
5126	2011-08-15 12:57:07.773	sv	Medicinska material och protesteknik	1113	\N
5127	2011-08-15 12:57:07.773	en	Medical Materials	1113	\N
5134	2011-08-15 12:57:08.082	sv	Annan medicinteknik	1117	\N
5135	2011-08-15 12:57:08.082	en	Other Medical Engineering	1117	\N
5142	2011-08-15 12:57:08.373	sv	Fjärranalysteknik	1121	\N
5143	2011-08-15 12:57:08.373	en	Remote Sensing	1121	\N
5150	2011-08-15 12:57:08.681	sv	Miljöledning	1125	\N
5151	2011-08-15 12:57:08.681	en	Environmental Management	1125	\N
5158	2011-08-15 12:57:09.013	sv	Diagnostisk bioteknologi	1129	\N
5159	2011-08-15 12:57:09.013	en	Diagnostic Biotechnology	1129	\N
5166	2011-08-15 12:57:09.311	sv	Industriell bioteknik	1133	\N
5167	2011-08-15 12:57:09.311	en	Industrial Biotechnology	1133	\N
5174	2011-08-15 12:57:09.615	sv	Bioenergi	1137	\N
5175	2011-08-15 12:57:09.615	en	Bioenergy	1137	\N
5182	2011-08-15 12:57:09.919	sv	Medicinsk bioteknik	1141	\N
5183	2011-08-15 12:57:09.919	en	Medical Biotechnology	1141	\N
5190	2011-08-15 12:57:10.199	sv	Livsmedelsteknik	1145	\N
5191	2011-08-15 12:57:10.199	en	Food Engineering	1145	\N
5198	2011-08-15 12:57:10.452	sv	Medicin och hälsovetenskap	1149	\N
5199	2011-08-15 12:57:10.452	en	Medical and Health Sciences	1149	\N
5206	2011-08-15 12:57:10.75	sv	Läkemedelskemi	1153	\N
5207	2011-08-15 12:57:10.75	en	Medicinal Chemistry	1153	\N
5214	2011-08-15 12:57:11.069	sv	Medicinsk genetik	1157	\N
5215	2011-08-15 12:57:11.069	en	Medical Genetics	1157	\N
5222	2011-08-15 12:57:11.378	sv	Annan medicinsk grundvetenskap	1161	\N
5223	2011-08-15 12:57:11.378	en	Other Basic Medicine	1161	\N
5230	2011-08-15 12:57:11.675	sv	Cancer och onkologi	1165	\N
5231	2011-08-15 12:57:11.675	en	Cancer and Oncology	1165	\N
5238	2011-08-15 12:57:11.998	sv	Neurologi	1169	\N
5239	2011-08-15 12:57:11.998	en	Neurology	1169	\N
5246	2011-08-15 12:57:12.342	sv	Ortopedi	1173	\N
5247	2011-08-15 12:57:12.342	en	Orthopedics	1173	\N
5254	2011-08-15 12:57:12.641	sv	Psykiatri	1177	\N
5255	2011-08-15 12:57:12.641	en	Psychiatry	1177	\N
5262	2011-08-15 12:57:12.956	sv	Lungmedicin och allergi	1181	\N
5263	2011-08-15 12:57:12.956	en	Respiratory Medicine and Allergy	1181	\N
5270	2011-08-15 12:57:13.301	sv	Klinisk laboratoriemedicin	1185	\N
5271	2011-08-15 12:57:13.301	en	Clinical Laboratory Medicine	1185	\N
5278	2011-08-15 12:57:13.602	sv	Hälso- och sjukvårdsorganisation, hälsopolitik och hälsoekonomi	1189	\N
5279	2011-08-15 12:57:13.602	en	Health Care Service and Management, Health Policy and Services and Health Economy	1189	\N
5286	2011-08-15 12:57:13.908	sv	Omvårdnad	1193	\N
5287	2011-08-15 12:57:13.908	en	Nursing	1193	\N
5294	2011-08-15 12:57:14.201	sv	Beroendelära	1197	\N
5295	2011-08-15 12:57:14.201	en	Substance Abuse	1197	\N
5302	2011-08-15 12:57:14.481	sv	Medicinsk bioteknologi (med inriktning mot cellbiologi (inklusive stamcellsbiologi), molekylärbiologi, mikrobiologi, biokemi eller biofarmaci)	1201	\N
5303	2011-08-15 12:57:14.481	en	Medical Biotechnology (with a focus on Cell Biology (including Stem Cell Biology), Molecular Biology, Microbiology, Biochemistry or Biopharmacy)	1201	\N
5310	2011-08-15 12:57:14.765	sv	Annan medicin och hälsovetenskap	1205	\N
5311	2011-08-15 12:57:14.765	en	Other Medical Sciences	1205	\N
5318	2011-08-15 12:57:15.007	sv	Lantbruksvetenskaper	1209	\N
5319	2011-08-15 12:57:15.007	en	Agricultural Sciences	1209	\N
5326	2011-08-15 12:57:15.291	sv	Livsmedelsvetenskap	1213	\N
5327	2011-08-15 12:57:15.291	en	Food Science	1213	\N
5334	2011-08-15 12:57:15.591	sv	Fisk- och akvakulturforskning	1217	\N
5335	2011-08-15 12:57:15.591	en	Fish and Aquacultural Science	1217	\N
5342	2011-08-15 12:57:15.871	sv	Medicinsk biovetenskap	1221	\N
5343	2011-08-15 12:57:15.871	en	Medical Bioscience	1221	\N
5350	2011-08-15 12:57:16.162	sv	Bioteknologi med applikationer på växter och djur	1225	\N
5351	2011-08-15 12:57:16.162	en	Agricultural Biotechnology	1225	\N
5358	2011-08-15 12:57:16.461	sv	Förnyelsebar bioenergi	1229	\N
5359	2011-08-15 12:57:16.461	en	Renewable Bioenergy Research	1229	\N
5366	2011-08-15 12:57:16.777	sv	Övriga andra lantbruksrelaterade vetenskaper	1233	\N
5367	2011-08-15 12:57:16.777	en	Other Agricultural Sciences not elsewhere specified	1233	\N
5374	2011-08-15 12:57:16.999	sv	Tillämpad psykologi	1237	\N
5375	2011-08-15 12:57:16.999	en	Applied Psychology	1237	\N
5382	2011-08-15 12:57:17.294	sv	Ekonomisk historia	1241	\N
5383	2011-08-15 12:57:17.294	en	Economic History	1241	\N
5390	2011-08-15 12:57:17.581	sv	Lärande	1245	\N
5391	2011-08-15 12:57:17.581	en	Learning	1245	\N
5398	2011-08-15 12:57:17.871	sv	Socialt arbete	1249	\N
5399	2011-08-15 12:57:17.871	en	Social Work	1249	\N
5406	2011-08-15 12:57:18.157	sv	Juridik (exklusive juridik och samhälle)	1253	\N
5407	2011-08-15 12:57:18.157	en	Law (excluding Law and Society)	1253	\N
5414	2011-08-15 12:57:18.439	sv	Studier av offentlig förvaltning	1257	\N
5415	2011-08-15 12:57:18.439	en	Public Administration Studies	1257	\N
5422	2011-08-15 12:57:18.73	sv	Ekonomisk geografi	1261	\N
5423	2011-08-15 12:57:18.73	en	Economic Geography	1261	\N
5430	2011-08-15 12:57:19.018	sv	Mänsklig interaktion med IKT	1265	\N
5431	2011-08-15 12:57:19.018	en	Human Aspects of ICT	1265	\N
5438	2011-08-15 12:57:19.319	sv	Arbetslivsstudier	1269	\N
5439	2011-08-15 12:57:19.319	en	Work Sciences	1269	\N
5446	2011-08-15 12:57:19.538	sv	Historia och arkeologi	1273	\N
4976	2011-08-15 12:57:01.668	sv	Klimatforskning	1038	\N
4977	2011-08-15 12:57:01.668	en	Climate Research	1038	\N
4985	2011-08-15 12:57:02.011	en	Geophysics	1042	\N
4992	2011-08-15 12:57:02.333	sv	Oceanografi, hydrologi, vattenresurser	1046	\N
5347	2011-08-15 12:57:16.021	en	Clinical Science	1223	\N
4993	2011-08-15 12:57:02.333	en	Oceanography, Hydrology, Water Resources	1046	\N
5000	2011-08-15 12:57:02.638	sv	Biokemi och molekylärbiologi	1050	\N
5001	2011-08-15 12:57:02.638	en	Biochemistry and Molecular Biology	1050	\N
5008	2011-08-15 12:57:02.979	sv	Mikrobiologi	1054	\N
5009	2011-08-15 12:57:02.979	en	Microbiology	1054	\N
5016	2011-08-15 12:57:03.299	sv	Bioinformatik och systembiologi	1058	\N
5017	2011-08-15 12:57:03.299	en	Bioinformatics and Systems Biology	1058	\N
5024	2011-08-15 12:57:03.621	sv	Utvecklingsbiologi	1062	\N
5025	2011-08-15 12:57:03.621	en	Developmental Biology	1062	\N
5032	2011-08-15 12:57:03.859	sv	Teknik och teknologier	1066	\N
5033	2011-08-15 12:57:03.859	en	Engineering and Technology	1066	\N
5040	2011-08-15 12:57:04.19	sv	Husbyggnad	1070	\N
5041	2011-08-15 12:57:04.19	en	Building Technologies	1070	\N
5048	2011-08-15 12:57:04.522	sv	Vattenteknik	1074	\N
5049	2011-08-15 12:57:04.522	en	Water Engineering	1074	\N
5056	2011-08-15 12:57:04.839	sv	Robotteknik och automation	1078	\N
5057	2011-08-15 12:57:04.839	en	Robotics	1078	\N
5064	2011-08-15 12:57:05.19	sv	Signalbehandling	1082	\N
5065	2011-08-15 12:57:05.19	en	Signal Processing	1082	\N
5072	2011-08-15 12:57:05.527	sv	Maskinteknik	1086	\N
5073	2011-08-15 12:57:05.527	en	Mechanical Engineering	1086	\N
5080	2011-08-15 12:57:05.867	sv	Energiteknik	1090	\N
5081	2011-08-15 12:57:05.867	en	Energy Engineering	1090	\N
5088	2011-08-15 12:57:06.183	sv	Tribologi	1094	\N
5089	2011-08-15 12:57:06.183	en	Tribology	1094	\N
5096	2011-08-15 12:57:06.584	sv	Kemiska processer	1098	\N
5097	2011-08-15 12:57:06.584	en	Chemical Process Engineering	1098	\N
5104	2011-08-15 12:57:06.898	sv	Annan kemiteknik	1102	\N
5105	2011-08-15 12:57:06.898	en	Other Chemical Engineering	1102	\N
5112	2011-08-15 12:57:07.199	sv	Pappers-, massa- och fiberteknik	1106	\N
5113	2011-08-15 12:57:07.199	en	Paper, Pulp and Fiber Technology	1106	\N
5120	2011-08-15 12:57:07.515	sv	Annan materialteknik	1110	\N
5121	2011-08-15 12:57:07.515	en	Other Materials Engineering	1110	\N
5128	2011-08-15 12:57:07.854	sv	Medicinsk bildbehandling	1114	\N
5129	2011-08-15 12:57:07.854	en	Medical Image Processing	1114	\N
5136	2011-08-15 12:57:08.142	sv	Naturresursteknik	1118	\N
5137	2011-08-15 12:57:08.142	en	Environmental Engineering	1118	\N
5144	2011-08-15 12:57:08.45	sv	Mineral- och gruvteknik	1122	\N
5145	2011-08-15 12:57:08.45	en	Mineral and Mine Engineering	1122	\N
5152	2011-08-15 12:57:08.795	sv	Annan naturresursteknik	1126	\N
5153	2011-08-15 12:57:08.795	en	Other Environmental Engineering	1126	\N
5160	2011-08-15 12:57:09.091	sv	Vattenbehandling	1130	\N
5161	2011-08-15 12:57:09.091	en	Water Treatment	1130	\N
5168	2011-08-15 12:57:09.389	sv	Bioprocessteknik	1134	\N
5169	2011-08-15 12:57:09.389	en	Bioprocess Technology	1134	\N
5176	2011-08-15 12:57:09.69	sv	Läkemedelsbioteknik	1138	\N
5177	2011-08-15 12:57:09.69	en	Pharmaceutical Biotechnology	1138	\N
5184	2011-08-15 12:57:10	sv	Annan industriell bioteknik	1142	\N
5185	2011-08-15 12:57:10	en	Other Industrial Biotechnology	1142	\N
5192	2011-08-15 12:57:10.281	sv	Mediateknik	1146	\N
5193	2011-08-15 12:57:10.281	en	Media Engineering	1146	\N
5200	2011-08-15 12:57:10.516	sv	Medicinska grundvetenskaper	1150	\N
5201	2011-08-15 12:57:10.516	en	Basic Medicine	1150	\N
5208	2011-08-15 12:57:10.827	sv	Samhällsfarmaci och klinisk farmaci	1154	\N
5209	2011-08-15 12:57:10.827	en	Social and Clinical Pharmacy	1154	\N
5216	2011-08-15 12:57:11.146	sv	Cell- och molekylärbiologi	1158	\N
5217	2011-08-15 12:57:11.146	en	Cell and Molecular Biology	1158	\N
5224	2011-08-15 12:57:11.443	sv	Klinisk medicin	1162	\N
5225	2011-08-15 12:57:11.443	en	Clinical Medicine	1162	\N
5232	2011-08-15 12:57:11.754	sv	Dermatologi och venereologi	1166	\N
5233	2011-08-15 12:57:11.754	en	Dermatology and Venereal Diseases	1166	\N
5240	2011-08-15 12:57:12.105	sv	Radiologi och bildbehandling	1170	\N
5241	2011-08-15 12:57:12.105	en	Radiology, Nuclear Medicine and Medical Imaging	1170	\N
5248	2011-08-15 12:57:12.417	sv	Kirurgi	1174	\N
5249	2011-08-15 12:57:12.417	en	Surgery	1174	\N
5256	2011-08-15 12:57:12.718	sv	Odontologi	1178	\N
5257	2011-08-15 12:57:12.718	en	Dentistry	1178	\N
5264	2011-08-15 12:57:13.034	sv	Reproduktionsmedicin och gynekologi	1182	\N
5265	2011-08-15 12:57:13.034	en	Obstetrics, Gynecology and Reproductive Medicine	1182	\N
5272	2011-08-15 12:57:13.393	sv	Allmän medicin	1186	\N
5273	2011-08-15 12:57:13.393	en	Family Medicine	1186	\N
5280	2011-08-15 12:57:13.678	sv	Folkhälsovetenskap, global hälsa, socialmedicin och epidemiologi	1190	\N
5281	2011-08-15 12:57:13.678	en	Public Health, Global Health, Social Medicine and Epidemiology	1190	\N
5288	2011-08-15 12:57:13.982	sv	Arbetsterapi	1194	\N
5289	2011-08-15 12:57:13.982	en	Occupational Therapy	1194	\N
5296	2011-08-15 12:57:14.274	sv	Medicinsk etik	1198	\N
5297	2011-08-15 12:57:14.274	en	Medical Ethics	1198	\N
5304	2011-08-15 12:57:14.559	sv	Biomedicinsk laboratorievetenskap/teknologi	1202	\N
5305	2011-08-15 12:57:14.559	en	Biomedical Laboratory Science/Technology	1202	\N
5312	2011-08-15 12:57:14.843	sv	Rättsmedicin	1206	\N
5313	2011-08-15 12:57:14.843	en	Forensic Science	1206	\N
5320	2011-08-15 12:57:15.062	sv	Lantbruksvetenskap, skogsbruk och fiske	1210	\N
5321	2011-08-15 12:57:15.062	en	Agricultural Science, Forestry and Fisheries	1210	\N
5328	2011-08-15 12:57:15.367	sv	Skogsvetenskap	1214	\N
5329	2011-08-15 12:57:15.367	en	Forest Science	1214	\N
5336	2011-08-15 12:57:15.667	sv	Landskapsarkitetktur	1218	\N
5337	2011-08-15 12:57:15.667	en	Landscape Architecture	1218	\N
5344	2011-08-15 12:57:15.946	sv	Patobiologi	1222	\N
5345	2011-08-15 12:57:15.946	en	Pathobiology	1222	\N
5352	2011-08-15 12:57:16.239	sv	Växtbioteknologi	1226	\N
5353	2011-08-15 12:57:16.239	en	Plant Biotechnology	1226	\N
5360	2011-08-15 12:57:16.539	sv	Vilt- och fiskeförvaltning	1230	\N
5361	2011-08-15 12:57:16.539	en	Fish and Wildlife Management	1230	\N
5368	2011-08-15 12:57:16.79	sv	Samhällsvetenskap	1234	\N
5369	2011-08-15 12:57:16.79	en	Social Sciences	1234	\N
5376	2011-08-15 12:57:17.063	sv	Ekonomi och näringsliv	1238	\N
5377	2011-08-15 12:57:17.063	en	Economics and Business	1238	\N
5384	2011-08-15 12:57:17.352	sv	Utbildningsvetenskap	1242	\N
5385	2011-08-15 12:57:17.352	en	Educational Sciences	1242	\N
5392	2011-08-15 12:57:17.657	sv	Pedagogiskt arbete	1246	\N
5393	2011-08-15 12:57:17.657	en	Pedagogical Work	1246	\N
5400	2011-08-15 12:57:17.949	sv	Socialpsykologi	1250	\N
5401	2011-08-15 12:57:17.949	en	Social Psychology	1250	\N
5408	2011-08-15 12:57:18.232	sv	Juridik och samhälle	1254	\N
5409	2011-08-15 12:57:18.232	en	Law and Society	1254	\N
5416	2011-08-15 12:57:18.514	sv	Globaliseringsstudier	1258	\N
5417	2011-08-15 12:57:18.514	en	Globalization Studies	1258	\N
5424	2011-08-15 12:57:18.792	sv	Medie- och kommunikationsvetenskap	1262	\N
5425	2011-08-15 12:57:18.792	en	Media and Communications	1262	\N
5432	2011-08-15 12:57:19.078	sv	Annan samhällsvetenskap	1266	\N
5433	2011-08-15 12:57:19.078	en	Other Social Sciences	1266	\N
5440	2011-08-15 12:57:19.395	sv	Internationell Migration och Etniska Relationer (IMER)	1270	\N
5441	2011-08-15 12:57:19.395	en	International Migration and Ethnic Relations	1270	\N
5448	2011-08-15 12:57:19.611	sv	Historia	1274	\N
5449	2011-08-15 12:57:19.611	en	History	1274	\N
5456	2011-08-15 12:57:19.902	sv	Jämförande språkvetenskap och lingvistik	1278	\N
5457	2011-08-15 12:57:19.902	en	General Language Studies and Linguistics	1278	\N
5464	2011-08-15 12:57:20.205	sv	Filosofi, etik och religion	1282	\N
4978	2011-08-15 12:57:01.762	sv	Miljövetenskap	1039	\N
4979	2011-08-15 12:57:01.762	en	Environmental Sciences	1039	\N
4987	2011-08-15 12:57:02.087	en	Geochemistry	1043	\N
4994	2011-08-15 12:57:02.414	sv	Annan geovetenskap och miljövetenskap	1047	\N
4995	2011-08-15 12:57:02.414	en	Other Earth and Related Environmental Sciences	1047	\N
5002	2011-08-15 12:57:02.72	sv	Biofysik	1051	\N
5003	2011-08-15 12:57:02.72	en	Biophysics	1051	\N
5010	2011-08-15 12:57:03.059	sv	Botanik	1055	\N
5011	2011-08-15 12:57:03.059	en	Botany	1055	\N
5018	2011-08-15 12:57:03.382	sv	Ekologi	1059	\N
5019	2011-08-15 12:57:03.382	en	Ecology	1059	\N
5026	2011-08-15 12:57:03.7	sv	Evolutionsbiologi	1063	\N
5027	2011-08-15 12:57:03.7	en	Evolutionary Biology	1063	\N
5034	2011-08-15 12:57:03.922	sv	Samhällsbyggnadsteknik	1067	\N
5035	2011-08-15 12:57:03.922	en	Civil Engineering	1067	\N
5042	2011-08-15 12:57:04.276	sv	Infrastrukturteknik	1071	\N
5043	2011-08-15 12:57:04.276	en	Infrastructure Engineering	1071	\N
5050	2011-08-15 12:57:04.601	sv	Miljöanalys och bygginformationsteknik	1075	\N
5051	2011-08-15 12:57:04.601	en	Environmental Analysis and Construction Information Technology	1075	\N
5058	2011-08-15 12:57:04.923	sv	Reglerteknik	1079	\N
5059	2011-08-15 12:57:04.923	en	Control Engineering	1079	\N
5066	2011-08-15 12:57:05.293	sv	Datorsystem	1083	\N
5067	2011-08-15 12:57:05.293	en	Computer Systems	1083	\N
5074	2011-08-15 12:57:05.615	sv	Teknisk mekanik	1087	\N
5075	2011-08-15 12:57:05.615	en	Applied Mechanics	1087	\N
5082	2011-08-15 12:57:05.951	sv	Tillförlitlighets- och kvalitetsteknik	1091	\N
5083	2011-08-15 12:57:05.951	en	Reliability and Maintenance	1091	\N
5090	2011-08-15 12:57:06.266	sv	Arbetsmiljö	1095	\N
5091	2011-08-15 12:57:06.266	en	Human Working Science	1095	\N
5098	2011-08-15 12:57:06.661	sv	Korrosionsteknik	1099	\N
5099	2011-08-15 12:57:06.661	en	Corrosion Engineering	1099	\N
5106	2011-08-15 12:57:06.96	sv	Materialteknik	1103	\N
5107	2011-08-15 12:57:06.96	en	Materials Engineering	1103	\N
5114	2011-08-15 12:57:07.278	sv	Textil-, gummi- och polymermaterial	1107	\N
5115	2011-08-15 12:57:07.278	en	Textile, Rubber and Polymeric Materials	1107	\N
5122	2011-08-15 12:57:07.593	sv	Medicinteknik	1111	\N
5123	2011-08-15 12:57:07.593	en	Medical Engineering	1111	\N
5130	2011-08-15 12:57:07.932	sv	Medicinsk apparatteknik	1115	\N
5131	2011-08-15 12:57:07.932	en	Medical Equipment Engineering	1115	\N
5138	2011-08-15 12:57:08.22	sv	Geofysisk teknik	1119	\N
5139	2011-08-15 12:57:08.22	en	Geophysical Engineering	1119	\N
5146	2011-08-15 12:57:08.526	sv	Marin teknik	1123	\N
5147	2011-08-15 12:57:08.526	en	Marine Engineering	1123	\N
5154	2011-08-15 12:57:08.865	sv	Miljöbioteknik	1127	\N
5155	2011-08-15 12:57:08.865	en	Environmental Biotechnology	1127	\N
5162	2011-08-15 12:57:09.173	sv	Bioteknisk etik	1131	\N
5163	2011-08-15 12:57:09.173	en	Bioethics	1131	\N
5170	2011-08-15 12:57:09.467	sv	Biokemikalier	1135	\N
5171	2011-08-15 12:57:09.467	en	Biochemicals	1135	\N
5178	2011-08-15 12:57:09.766	sv	Biokatalys och enzymteknik	1139	\N
5179	2011-08-15 12:57:09.766	en	Biocatalysis and Enzyme Technology	1139	\N
5186	2011-08-15 12:57:10.062	sv	Nanoteknik	1143	\N
5187	2011-08-15 12:57:10.062	en	Nano Technology	1143	\N
5194	2011-08-15 12:57:10.359	sv	Interaktionsteknik	1147	\N
5195	2011-08-15 12:57:10.359	en	Interaction Technologies	1147	\N
5202	2011-08-15 12:57:10.597	sv	Farmaceutisk vetenskap	1151	\N
5203	2011-08-15 12:57:10.597	en	Pharmaceutical Sciences	1151	\N
5210	2011-08-15 12:57:10.904	sv	Neurovetenskaper	1155	\N
5211	2011-08-15 12:57:10.904	en	Neurosciences	1155	\N
5218	2011-08-15 12:57:11.223	sv	Mikrobiologi inom det medicinska området	1159	\N
5219	2011-08-15 12:57:11.223	en	Microbiology in the medical area	1159	\N
5226	2011-08-15 12:57:11.521	sv	Anestesi och intensivvård	1163	\N
5227	2011-08-15 12:57:11.521	en	Anesthesiology and Intensive Care	1163	\N
5234	2011-08-15 12:57:11.842	sv	Endokrinologi och diabetes	1167	\N
5235	2011-08-15 12:57:11.842	en	Endocrinology and Diabetes	1167	\N
5242	2011-08-15 12:57:12.189	sv	Infektionsmedicin	1171	\N
5243	2011-08-15 12:57:12.189	en	Infectious Medicine	1171	\N
5250	2011-08-15 12:57:12.492	sv	Gastroenterologi	1175	\N
5251	2011-08-15 12:57:12.492	en	Gastroenterology and Hepatology	1175	\N
5258	2011-08-15 12:57:12.799	sv	Oftalmologi	1179	\N
5259	2011-08-15 12:57:12.799	en	Ophthalmology	1179	\N
5266	2011-08-15 12:57:13.15	sv	Pediatrik	1183	\N
5267	2011-08-15 12:57:13.15	en	Pediatrics	1183	\N
5274	2011-08-15 12:57:13.469	sv	Annan klinisk medicin	1187	\N
5275	2011-08-15 12:57:13.469	en	Other Clinical Medicine	1187	\N
5282	2011-08-15 12:57:13.759	sv	Miljömedicin och yrkesmedicin	1191	\N
5283	2011-08-15 12:57:13.759	en	Environmental Health and Occupational Health	1191	\N
5290	2011-08-15 12:57:14.056	sv	Sjukgymnastik	1195	\N
5291	2011-08-15 12:57:14.056	en	Physiotherapy	1195	\N
5298	2011-08-15 12:57:14.348	sv	Annan hälsovetenskap	1199	\N
5299	2011-08-15 12:57:14.348	en	Other Health Sciences	1199	\N
5306	2011-08-15 12:57:14.633	sv	Biomaterialvetenskap	1203	\N
5307	2011-08-15 12:57:14.633	en	Biomaterials Science	1203	\N
5314	2011-08-15 12:57:14.918	sv	Gerontologi, medicinsk/hälsovetenskaplig inriktning	1207	\N
5315	2011-08-15 12:57:14.918	en	Gerontology, specialising in Medical and Health Sciences	1207	\N
5322	2011-08-15 12:57:15.137	sv	Jordbruksvetenskap	1211	\N
5323	2011-08-15 12:57:15.137	en	Agricultural Science	1211	\N
5330	2011-08-15 12:57:15.441	sv	Trävetenskap	1215	\N
5331	2011-08-15 12:57:15.441	en	Wood Science	1215	\N
5338	2011-08-15 12:57:15.73	sv	Husdjursvetenskap	1219	\N
5339	2011-08-15 12:57:15.73	en	Animal and Dairy Sience	1219	\N
5346	2011-08-15 12:57:16.021	sv	Klinisk vetenskap	1223	\N
5354	2011-08-15 12:57:16.321	sv	Genetik och förädling	1227	\N
5355	2011-08-15 12:57:16.321	en	Genetics and Breeding	1227	\N
5362	2011-08-15 12:57:16.62	sv	Lantbrukets arbetsmiljö och säkerhet	1231	\N
5363	2011-08-15 12:57:16.62	en	Agricultural Occupational Health and Safety	1231	\N
5370	2011-08-15 12:57:16.851	sv	Psykologi	1235	\N
5371	2011-08-15 12:57:16.851	en	Psychology	1235	\N
5378	2011-08-15 12:57:17.139	sv	Nationalekonomi	1239	\N
5379	2011-08-15 12:57:17.139	en	Economics	1239	\N
5386	2011-08-15 12:57:17.426	sv	Pedagogik	1243	\N
5387	2011-08-15 12:57:17.426	en	Pedagogy	1243	\N
5394	2011-08-15 12:57:17.717	sv	Sociologi	1247	\N
5395	2011-08-15 12:57:17.717	en	Sociology	1247	\N
5402	2011-08-15 12:57:18.025	sv	Socialantropologi	1251	\N
5403	2011-08-15 12:57:18.025	en	Social Anthropology	1251	\N
5410	2011-08-15 12:57:18.292	sv	Statsvetenskap	1255	\N
5411	2011-08-15 12:57:18.292	en	Political Science	1255	\N
5418	2011-08-15 12:57:18.576	sv	Social och ekonomisk geografi	1259	\N
5419	2011-08-15 12:57:18.576	en	Social and Economic Geography	1259	\N
5426	2011-08-15 12:57:18.868	sv	Medievetenskap	1263	\N
5427	2011-08-15 12:57:18.868	en	Media Studies	1263	\N
5434	2011-08-15 12:57:19.165	sv	Tvärvetenskapliga studier	1267	\N
5435	2011-08-15 12:57:19.165	en	Social Sciences Interdisciplinary	1267	\N
5442	2011-08-15 12:57:19.47	sv	Övrig annan samhällsvetenskap	1271	\N
5443	2011-08-15 12:57:19.47	en	Other Social Sciences not elsewhere specified	1271	\N
5450	2011-08-15 12:57:19.684	sv	Teknikhistoria	1275	\N
5451	2011-08-15 12:57:19.684	en	History of Technology	1275	\N
5458	2011-08-15 12:57:19.978	sv	Språkstudier	1279	\N
5459	2011-08-15 12:57:19.978	en	Specific Languages	1279	\N
5466	2011-08-15 12:57:20.283	sv	Filosofi	1283	\N
5467	2011-08-15 12:57:20.283	en	Philosophy	1283	\N
5474	2011-08-15 12:57:20.586	sv	Idé- och lärdomshistoria	1287	\N
5475	2011-08-15 12:57:20.586	en	History of Ideas	1287	\N
5507	2011-08-15 12:57:21.783	en	Other Humanities not elsewhere specified	1303	\N
5850	2012-04-10 14:39:16.759	en	Mimmi's program	1350	\N
5851	2012-04-10 14:39:16.759	sv	Mimmis program	1350	\N
5852	2012-04-05 08:26:43.219	en	Humor research	1351	\N
5853	2012-04-05 08:26:43.219	sv	Skämtforskning	1351	\N
5900	2012-04-05 09:31:47.912	en	Maddes test	1400	\N
5901	2012-04-05 09:31:47.912	sv	Maddes test	1400	\N
5950	2012-04-10 12:47:01.342	en	Maddes test 2	1450	\N
5951	2012-04-10 12:47:01.342	sv	Maddes test 2	1450	\N
6000	2012-04-11 10:38:00.516	en	New Program	1500	\N
6001	2012-04-11 10:38:00.516	sv	Nytt program	1500	\N
6100	2012-04-11 16:59:31.471	en	Easter Program	1600	\N
6101	2012-04-11 16:59:31.471	sv	Påskprogrammet	1600	\N
6102	2012-04-11 17:06:42.205	en	Coding	1601	\N
6103	2012-04-11 17:06:42.205	sv	Programmering	1601	\N
6150	2012-04-16 14:07:05.357	en	Sudoku course	1650	\N
6151	2012-04-16 14:07:05.357	sv	Maddes kurs i sudoku	1650	\N
6200	2012-04-18 08:38:07.399	en	Mimmis kurs	1700	\N
6201	2012-04-18 08:38:07.399	sv	Mimmis kurs	1700	\N
4152	2013-02-22 16:57:22.611	en	Walpurgis night	551	\N
\.


--
-- Data for Name: subject_organisation; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY subject_organisation (subject_id, organisation_id) FROM stdin;
\.


--
-- Data for Name: subject_parent; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY subject_parent (parent_subject_id, subject_id) FROM stdin;
251	250
58	59
61	59
62	58
500	62
551	550
1001	1000
1002	1001
1003	1001
1004	1001
1005	1001
1006	1001
1007	1001
1008	1001
1009	1000
1010	1009
1011	1009
1012	1009
1013	1009
1014	1009
1015	1009
1016	1009
1017	1009
1018	1009
1019	1009
1020	1000
1021	1020
1022	1020
1023	1020
1024	1020
1025	1020
1026	1020
1027	1020
1028	1000
1029	1028
1030	1028
1031	1028
1032	1028
1033	1028
1034	1028
1035	1028
1036	1028
1037	1000
1038	1037
1039	1037
1040	1037
1041	1037
1042	1037
1043	1037
1044	1037
1045	1037
1046	1037
1047	1037
1048	1000
1049	1048
1050	1048
1051	1048
1052	1048
1053	1048
1054	1048
1055	1048
1056	1048
1057	1048
1058	1048
1059	1048
1060	1048
1061	1048
1062	1048
1063	1048
1064	1048
1065	1000
1067	1066
1068	1067
1069	1067
1070	1067
1071	1067
1072	1067
1073	1067
1074	1067
1075	1067
1076	1067
1077	1066
1078	1077
1079	1077
1080	1077
1081	1077
1082	1077
1083	1077
1084	1077
1085	1077
1086	1066
1087	1086
1088	1086
1089	1086
1090	1086
1091	1086
1092	1086
1093	1086
1094	1086
1095	1086
1096	1086
1097	1066
1098	1097
1099	1097
1100	1097
1101	1097
1102	1097
1103	1066
1104	1103
1105	1103
1106	1103
1107	1103
1108	1103
1109	1103
1110	1103
1111	1066
1112	1111
1113	1111
1114	1111
1115	1111
1116	1111
1117	1111
1118	1066
1119	1118
1120	1118
1121	1118
1122	1118
1123	1118
1124	1118
1125	1118
1126	1118
1127	1066
1128	1127
1129	1127
1130	1127
1131	1127
1132	1127
1133	1066
1134	1133
1135	1133
1136	1133
1137	1133
1138	1133
1139	1133
1140	1133
1141	1133
1142	1133
1143	1066
1144	1066
1145	1144
1146	1144
1147	1144
1148	1144
1150	1149
1151	1150
1152	1150
1153	1150
1154	1150
1155	1150
1156	1150
1157	1150
1158	1150
1159	1150
1160	1150
1161	1150
1162	1149
1163	1162
1164	1162
1165	1162
1166	1162
1167	1162
1168	1162
1169	1162
1170	1162
1171	1162
1172	1162
1173	1162
1174	1162
1175	1162
1176	1162
1177	1162
1178	1162
1179	1162
1180	1162
1181	1162
1182	1162
1183	1162
1184	1162
1185	1162
1186	1162
1187	1162
1188	1149
1189	1188
1190	1188
1191	1188
1192	1188
1193	1188
1194	1188
1195	1188
1196	1188
1197	1188
1198	1188
1199	1188
1200	1149
1201	1200
1202	1200
1203	1200
1204	1200
1205	1149
1206	1205
1207	1205
1208	1205
1210	1209
1211	1210
1212	1210
1213	1210
1214	1210
1215	1210
1216	1210
1217	1210
1218	1210
1219	1209
1220	1209
1221	1220
1222	1220
1223	1220
1224	1220
1225	1209
1226	1225
1227	1225
1228	1209
1229	1228
1230	1228
1231	1228
1232	1228
1233	1228
1235	1234
1236	1235
1237	1235
1238	1234
1239	1238
1240	1238
1241	1238
1242	1234
1243	1242
1244	1242
1245	1242
1246	1242
1247	1234
1248	1247
1249	1247
1250	1247
1251	1247
1252	1234
1253	1252
1254	1252
1255	1234
1256	1255
1257	1255
1258	1255
1259	1234
1260	1259
1261	1259
1262	1234
1263	1262
1264	1262
1265	1262
1266	1234
1267	1266
1268	1266
1269	1266
1270	1266
1271	1266
1273	1272
1274	1273
1275	1273
1276	1273
1277	1272
1278	1277
1279	1277
1280	1277
1281	1277
1282	1272
1283	1282
1284	1282
1285	1282
1286	1282
1287	1282
1288	1272
1289	1288
1290	1288
1291	1288
1292	1288
1293	1288
1294	1288
1295	1288
1296	1288
1297	1288
1298	1288
1299	1272
1300	1299
1301	1299
1302	1299
1303	1299
1351	350
1351	501
1400	550
1400	300
1450	1400
1500	1350
1601	501
1601	503
1650	600
\.


--
-- Data for Name: subject_predecessor; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY subject_predecessor (predecessor_subject_id, subject_id) FROM stdin;
\.


--
-- Name: subject_sequence; Type: SEQUENCE SET; Schema: public; Owner: diva
--

SELECT pg_catalog.setval('subject_sequence', 35, true);


--
-- Data for Name: subject_type; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY subject_type (subject_type_id, last_updated, subject_type_code) FROM stdin;
50	2009-03-18 16:02:26.134	svep
51	2009-03-18 16:02:26.156	nora
52	2009-03-18 16:02:26.173	uppsok
53	2009-03-18 16:02:26.186	researchSubject
54	2009-03-18 16:02:26.203	undergraduate
55	2009-03-18 16:02:26.22	frida
56	2009-03-18 16:02:26.236	educationalProgram
57	2011-08-12 00:00:00	hsv
\.


--
-- Data for Name: subject_type_name; Type: TABLE DATA; Schema: public; Owner: diva
--

COPY subject_type_name (subject_type_name_id, last_updated, locale, subject_type_name, subject_type_id) FROM stdin;
2000	2009-03-18 16:02:26.135	sv	SVEP kategorier	50
2001	2009-03-18 16:02:26.135	en	SVEP Categories	50
2005	2009-03-18 16:02:26.157	en	Vitenskapsdisipliner	51
2006	2009-03-18 16:02:26.173	sv	Libris uppsök	52
2007	2009-03-18 16:02:26.173	en	Libris Uppsok	52
2009	2009-03-18 16:02:26.186	sv	Forskningsämne	53
2010	2009-03-18 16:02:26.186	en	Research subject	53
2012	2009-03-18 16:02:26.203	sv	Undergraduate	54
2013	2009-03-18 16:02:26.203	en	Undergraduate	54
2015	2009-03-18 16:02:26.221	sv	FRIDA ämneskategorier	55
2016	2009-03-18 16:02:26.221	en	FRIDA categories	55
2018	2009-03-18 16:02:26.237	sv	Utbildningsprogram	56
2019	2009-03-18 16:02:26.237	en	Educational program	56
2021	2011-08-12 00:00:00	sv	HSV kategorier	57
2022	2011-08-12 00:00:00	en	HSV categories	57
2023	2011-08-12 00:00:00	no	HSV categories	57
2020	2009-03-18 16:02:26.237	no	Educational program	56
2017	2009-03-18 16:02:26.221	no	FRIDA categories	55
2014	2009-03-18 16:02:26.204	no	Undergraduate	54
2011	2009-03-18 16:02:26.186	no	Research subject	53
2008	2009-03-18 16:02:26.173	no	Libris uppsök	52
2002	2009-03-18 16:02:26.135	no	SVEP Categories	50
2003	2009-03-18 16:02:26.156	no	Vitenskapsdisipliner	51
2004	2009-03-18 16:02:26.157	sv	Vitenskapsdisipliner	51
\.

--
-- Name: subtype_sequence; Type: SEQUENCE SET; Schema: public; Owner: diva
--

SELECT pg_catalog.setval('subtype_sequence', 9, true);


--
-- Name: subtypename_sequence; Type: SEQUENCE SET; Schema: public; Owner: diva
--

SELECT pg_catalog.setval('subtypename_sequence', 30, true);

--
-- Name: subject_name_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY subject_name
    ADD CONSTRAINT subject_name_pkey PRIMARY KEY (subject_name_id);


--
-- Name: subject_name_subject_id_key; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY subject_name
    ADD CONSTRAINT subject_name_subject_id_key UNIQUE (subject_id, locale);


--
-- Name: subject_organisation_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY subject_organisation
    ADD CONSTRAINT subject_organisation_pkey PRIMARY KEY (subject_id, organisation_id);


--
-- Name: subject_parent_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY subject_parent
    ADD CONSTRAINT subject_parent_pkey PRIMARY KEY (parent_subject_id, subject_id);


--
-- Name: subject_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (subject_id);


--
-- Name: subject_predecessor_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY subject_predecessor
    ADD CONSTRAINT subject_predecessor_pkey PRIMARY KEY (predecessor_subject_id, subject_id);


--
-- Name: subject_subject_type_id_key; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY subject
    ADD CONSTRAINT subject_subject_type_id_key UNIQUE (subject_type_id, old_diva_db, old_diva_id);


--
-- Name: subject_type_name_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY subject_type_name
    ADD CONSTRAINT subject_type_name_pkey PRIMARY KEY (subject_type_name_id);


--
-- Name: subject_type_name_subject_type_id_key; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY subject_type_name
    ADD CONSTRAINT subject_type_name_subject_type_id_key UNIQUE (subject_type_id, locale);


--
-- Name: subject_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY subject_type
    ADD CONSTRAINT subject_type_pkey PRIMARY KEY (subject_type_id);


--
-- Name: subject_type_subject_type_code_key; Type: CONSTRAINT; Schema: public; Owner: diva
--

ALTER TABLE ONLY subject_type
    ADD CONSTRAINT subject_type_subject_type_code_key UNIQUE (subject_type_code);