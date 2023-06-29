--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-11-29 19:09:42

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
-- TOC entry 222 (class 1259 OID 17286)
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    b_id character varying(10) NOT NULL,
    cus_id character varying(10),
    s_id character varying(10),
    b_name character varying(30),
    book_type character varying(30),
    price numeric,
    description character varying(30),
    author_first_name character varying(20),
    author_sur_name character varying(20),
    isbn_number character varying(25)
);


ALTER TABLE public.book OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17216)
-- Name: cashier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cashier (
    c_id character varying(10) NOT NULL,
    e_id character varying(10),
    "position" character varying(20)
);


ALTER TABLE public.cashier OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17221)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    cus_id character varying(10) NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    home_number character varying(10),
    street character varying(20),
    city character varying(10)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17204)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    e_id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    sur_name character varying(20) NOT NULL,
    address character varying(30) DEFAULT 'HAMBANTOTA'::character varying,
    salary real NOT NULL,
    date_of_work integer DEFAULT 1
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17211)
-- Name: manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manager (
    m_id character varying(10) NOT NULL,
    e_id character varying(10),
    grade character varying(10) NOT NULL
);


ALTER TABLE public.manager OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17241)
-- Name: phone_number; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phone_number (
    e_id integer,
    cus_id character varying(10) DEFAULT NULL::character varying,
    p_id character varying(10) DEFAULT NULL::character varying,
    phone_nu character varying(12) NOT NULL
);


ALTER TABLE public.phone_number OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17226)
-- Name: publisher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publisher (
    p_id character varying(10) NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    sur_name character varying(20) NOT NULL,
    home_number character varying(10),
    street character varying(20),
    city character varying(10),
    year_of_publication integer
);


ALTER TABLE public.publisher OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17231)
-- Name: receipt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.receipt (
    r_id character varying(10) NOT NULL,
    cus_id character varying(10),
    r_date date
);


ALTER TABLE public.receipt OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17275)
-- Name: stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock (
    s_id character varying(10) NOT NULL,
    m_id character varying(10),
    s_name character varying(30),
    s_description character varying(40) DEFAULT 'EDUCATIONAL_BOOK'::character varying
);


ALTER TABLE public.stock OWNER TO postgres;

--
-- TOC entry 3384 (class 0 OID 17286)
-- Dependencies: 222
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book (b_id, cus_id, s_id, b_name, book_type, price, description, author_first_name, author_sur_name, isbn_number) FROM stdin;
B61	Cus31	S51	HOLMAN_MANDIRAYA	HORROR	250.00	SINHALA	GAYANI	GUNAWARDANE	ISBN 978-98-987-235-98
B62	Cus32	S52	SNOW_WHITE	FAIRYTAIL	450.00	ENGLISH	STEVE	JOHN	ISBN 178-34-987-265-98
B63	Cus33	S53	ART	WORKBOOK	750.00	SINHALA	PREMASIRI	ALVIS	ISBN 973-878-987-25-988
B64	Cus34	S54	WILLIAM_SHAKESPEARE	BIOGRAPHY	1550.00	ENGLISH	SIDNY	LEE	ISBN 3462-788-987-20-98
B65	Cus35	S55	SHERLOCK_HOLMES	DITECTIVE_FICTION	1350.00	ENGLISH	AURTHUR	CONANDOYLE	ISBN 78-987-987-2655-98
\.


--
-- TOC entry 3378 (class 0 OID 17216)
-- Dependencies: 216
-- Data for Name: cashier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cashier (c_id, e_id, "position") FROM stdin;
C11	006	MAIN_CASHIER
C12	007	MAIN_CASHIER
C13	008	MAIN_CASHIER
C14	009	TRAINING
C15	010	TRAINING
C16	011	TRAINING
C17	012	TRAINING
\.


--
-- TOC entry 3379 (class 0 OID 17221)
-- Dependencies: 217
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (cus_id, first_name, last_name, home_number, street, city) FROM stdin;
Cus31	PAMUDI	MAHINDAGODA	NO.21	MAHARA	RAGAMA
Cus32	MADURA	SMARASINGHE	NO.345	GALLE_ROAD	COLOMBO
Cus33	KAMALA	MATHASINGHE	NO.198	GALLE_ROAD	COLOMBO
Cus34	NADIN	KAVINDA	NO.91	MATARA_ROAD	GALLE
Cus35	TANASHA	DIVONI	NO.41	SEBASTIAN_HILL	COLOMBO
\.


--
-- TOC entry 3376 (class 0 OID 17204)
-- Dependencies: 214
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (e_id, first_name, last_name, sur_name, address, salary, date_of_work) FROM stdin;
1	DEWMINA	LAKMAL	GAMAGE	GALLE	85000	15
2	DEWINDA	SHAMAL	PERERA	MATARA	80000	17
3	ANURA	PERERA	WIJESINGHE	MATARA	75000	20
4	KAMAL	MAHESH	RAMANAYAKE	HAMBANTOTA	75000	20
5	KAMANI	LASANTHIKA	PERERA	AMBALANTOTA	60000	22
6	NIMMI	THAKSHILA	WEERAKOON	AMBALANTOTA	50000	22
7	RASIKA	NADIMAL	WITHANAGE	GALLE	50000	15
8	DEWNI	SHAMALIKA	PERERA	MATARA	45000	17
9	ANURASIRI	PERERA	RANASINGHE	GALLE	25000	20
10	KAMALA	MAHESHI	SUDUSINGHE	HAMBANTOTA	25000	20
11	NIPUNI	KAWINDI	PERERA	AMBALANGODA	25000	22
12	ISUNI	MADHUWANTHIKA	SILVA	HAMBALANTOTA	20000	22
\.


--
-- TOC entry 3377 (class 0 OID 17211)
-- Dependencies: 215
-- Data for Name: manager; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manager (m_id, e_id, grade) FROM stdin;
M01	001	SUP_SENIOR
M02	002	SUP_SENIOR
M03	003	SENIOR
M04	004	SENIOR
M05	005	JUNIOR
\.


--
-- TOC entry 3382 (class 0 OID 17241)
-- Dependencies: 220
-- Data for Name: phone_number; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.phone_number (e_id, cus_id, p_id, phone_nu) FROM stdin;
1	\N	\N	077-9087543
2	\N	\N	076-9843329
3	\N	\N	070-4526754
4	\N	\N	071-9987654
5	\N	\N	072-2233445
\N	Cus31	\N	074-0987654
\N	Cus32	\N	077-3451278
\N	Cus33	\N	076-0981243
\N	Cus34	\N	070-9766529
\N	Cus35	\N	071-0765487
\N	\N	P21	077-9921345
\N	\N	P22	072-0988653
\N	\N	P23	078-7744236
\N	\N	P24	078-0943216
\N	\N	P25	071-9088733
\.


--
-- TOC entry 3380 (class 0 OID 17226)
-- Dependencies: 218
-- Data for Name: publisher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.publisher (p_id, first_name, last_name, sur_name, home_number, street, city, year_of_publication) FROM stdin;
P21	PREMASIRI	MAHINDAGODA	PERERA	NO.23	GALLE_ROAD	COLOMBO	\N
P22	RIDMA	MAHINI	ABEWARNA	NO.83	MATARA_ROAD	GALLE	\N
P23	CHANDI	PABODA	KODIKARARA	NO.56	GALLE_ROAD	COLOMBO	\N
P24	SHANTHA	KUMARA	VITHANA	NO.123	MATARA_ROAD	GALLE	\N
P25	ANURASIRI	KULATHUNGA	PERERA	NO.253	GALLE_ROAD	COLOMBO	\N
\.


--
-- TOC entry 3381 (class 0 OID 17231)
-- Dependencies: 219
-- Data for Name: receipt; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.receipt (r_id, cus_id, r_date) FROM stdin;
R41	Cus31	2022-11-19
R42	Cus32	2022-11-16
R43	Cus33	2022-11-23
R44	Cus34	2022-11-28
R45	Cus35	2022-11-21
\.


--
-- TOC entry 3383 (class 0 OID 17275)
-- Dependencies: 221
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stock (s_id, m_id, s_name, s_description) FROM stdin;
S51	M01	EEE_STOCK	EDUCATIONAL_BOOK
S52	M02	HHH_STOCK	HISTORICAL_BOOK
S53	M03	SSS_STOCK	STORY_BOOK
S54	M04	BBB_STOCK	BIOGRAPHY_BOOK
S55	M05	WWW_STOCK	WORK_BOOK
\.


--
-- TOC entry 3226 (class 2606 OID 17292)
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (b_id);


--
-- TOC entry 3214 (class 2606 OID 17220)
-- Name: cashier cashier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cashier
    ADD CONSTRAINT cashier_pkey PRIMARY KEY (c_id);


--
-- TOC entry 3216 (class 2606 OID 17225)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (cus_id);


--
-- TOC entry 3210 (class 2606 OID 17210)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (e_id);


--
-- TOC entry 3212 (class 2606 OID 17215)
-- Name: manager manager_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manager
    ADD CONSTRAINT manager_pkey PRIMARY KEY (m_id);


--
-- TOC entry 3222 (class 2606 OID 17247)
-- Name: phone_number phone_number_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_number
    ADD CONSTRAINT phone_number_pkey PRIMARY KEY (phone_nu);


--
-- TOC entry 3218 (class 2606 OID 17230)
-- Name: publisher publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (p_id);


--
-- TOC entry 3220 (class 2606 OID 17235)
-- Name: receipt receipt_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receipt
    ADD CONSTRAINT receipt_pkey PRIMARY KEY (r_id);


--
-- TOC entry 3224 (class 2606 OID 17280)
-- Name: stock stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (s_id);


--
-- TOC entry 3232 (class 2606 OID 17293)
-- Name: book fk_book1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT fk_book1 FOREIGN KEY (cus_id) REFERENCES public.customer(cus_id);


--
-- TOC entry 3233 (class 2606 OID 17298)
-- Name: book fk_book2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT fk_book2 FOREIGN KEY (s_id) REFERENCES public.stock(s_id);


--
-- TOC entry 3228 (class 2606 OID 17248)
-- Name: phone_number fk_phone1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_number
    ADD CONSTRAINT fk_phone1 FOREIGN KEY (e_id) REFERENCES public.employee(e_id);


--
-- TOC entry 3229 (class 2606 OID 17253)
-- Name: phone_number fk_phone2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_number
    ADD CONSTRAINT fk_phone2 FOREIGN KEY (cus_id) REFERENCES public.customer(cus_id);


--
-- TOC entry 3230 (class 2606 OID 17258)
-- Name: phone_number fk_phone3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_number
    ADD CONSTRAINT fk_phone3 FOREIGN KEY (p_id) REFERENCES public.publisher(p_id);


--
-- TOC entry 3227 (class 2606 OID 17236)
-- Name: receipt fk_receipt1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receipt
    ADD CONSTRAINT fk_receipt1 FOREIGN KEY (cus_id) REFERENCES public.customer(cus_id);


--
-- TOC entry 3231 (class 2606 OID 17281)
-- Name: stock fk_stock1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT fk_stock1 FOREIGN KEY (m_id) REFERENCES public.manager(m_id);


-- Completed on 2022-11-29 19:09:43

--
-- PostgreSQL database dump complete
--

