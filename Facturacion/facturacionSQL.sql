--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

-- Started on 2022-01-05 10:45:43

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
-- TOC entry 211 (class 1259 OID 24612)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    nombrecliente character varying(500) NOT NULL,
    dni character varying(9) NOT NULL,
    calle character varying(500),
    provincia character varying(100),
    poblacion character varying(100),
    cp numeric(5,0)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 32768)
-- Name: factura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factura (
    id numeric NOT NULL,
    fecha character varying(100) NOT NULL,
    descripcion character varying NOT NULL,
    cantidad numeric NOT NULL,
    precio numeric NOT NULL,
    importe numeric NOT NULL,
    subtotal numeric NOT NULL,
    iva numeric NOT NULL,
    totaliva numeric NOT NULL,
    total numeric NOT NULL,
    dni character varying(9)
);


ALTER TABLE public.factura OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24576)
-- Name: localidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.localidad (
    poblacion character varying(100) NOT NULL,
    provincia character varying(100) NOT NULL,
    codpostal numeric(5,0) NOT NULL
);


ALTER TABLE public.localidad OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24605)
-- Name: propietario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propietario (
    nombre character varying(100) NOT NULL,
    nif character varying(9) NOT NULL,
    calle character varying(500),
    provincia character varying(100),
    poblacion character varying(100),
    cp numeric(5,0),
    telefono numeric(9,0),
    correo character varying(500)
);


ALTER TABLE public.propietario OWNER TO postgres;

--
-- TOC entry 3321 (class 0 OID 24612)
-- Dependencies: 211
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (nombrecliente, dni, calle, provincia, poblacion, cp) FROM stdin;
Pepa	87654321B	calle2	Alicante/Alacant	Campello, el	3560
					0
Pepe	12345678A	calle alguna	Alicante/Alacant	Alacant/Alicante	3003
Juana	87654321A	dsfdsfds	Alicante/Alacant	Campello, el	3560
\.


--
-- TOC entry 3322 (class 0 OID 32768)
-- Dependencies: 212
-- Data for Name: factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factura (id, fecha, descripcion, cantidad, precio, importe, subtotal, iva, totaliva, total, dni) FROM stdin;
0	07/12/2021	asd	1	2	2	8	21	1.68	9.68	12345678A
0	07/12/2021	dsa	2	3	6	8	21	1.68	9.68	12345678A
70	31/12/2021	fgt	3	334	1002	1094	21	229.74	1323.74	12345678A
70	31/12/2021	ert	4	23	92	1094	21	229.74	1323.74	12345678A
2	03/01/2022	dsfds	2	2.2	4.4	8.4	21	1.76	10.16	12345678A
2	03/01/2022	dsfds	2	2.2	4.4	8.4	21	1.76	10.16	12345678A
4	03/01/2022	asd	1	3	3	17	21	3.57	20.57	87654321A
4	03/01/2022	asd	1	3	3	17	21	3.57	20.57	87654321A
5	03/01/2022	gfd	3	3	9	20	21	4.2	24.2	87654321A
5	03/01/2022	gfd	3	3	9	20	21	4.2	24.2	87654321A
\.


--
-- TOC entry 3319 (class 0 OID 24576)
-- Dependencies: 209
-- Data for Name: localidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.localidad (poblacion, provincia, codpostal) FROM stdin;
Alegr??a-Dulantzi	Araba/??lava	0
Amurrio	Araba/??lava	0
Aramaio	Araba/??lava	0
Artziniega	Araba/??lava	0
Armi????n	Araba/??lava	0
Arrazua-Ubarrundia	Araba/??lava	0
Asparrena	Araba/??lava	0
Ayala/Aiara	Araba/??lava	0
Ba??os de Ebro/Ma??ueta	Araba/??lava	0
Barrundia	Araba/??lava	0
Berantevilla	Araba/??lava	0
Bernedo	Araba/??lava	0
Campezo/Kanpezu	Araba/??lava	0
Zigoitia	Araba/??lava	0
Kripan	Araba/??lava	0
Kuartango	Araba/??lava	0
Elburgo/Burgelu	Araba/??lava	0
Elciego	Araba/??lava	0
Elvillar/Bilar	Araba/??lava	0
Iruraiz-Gauna	Araba/??lava	0
Labastida/Bastida	Araba/??lava	0
Lagr??n	Araba/??lava	0
Laguardia	Araba/??lava	0
Lanciego/Lantziego	Araba/??lava	0
Lapuebla de Labarca	Araba/??lava	0
Leza	Araba/??lava	0
Laudio/Llodio	Araba/??lava	0
Arraia-Maeztu	Araba/??lava	0
Moreda de ??lava/Moreda Araba	Araba/??lava	0
Navaridas	Araba/??lava	0
Okondo	Araba/??lava	0
Oy??n-Oion	Araba/??lava	0
Pe??acerrada-Urizaharra	Araba/??lava	0
Erriberagoitia/Ribera Alta	Araba/??lava	0
Ribera Baja/Erribera Beitia	Araba/??lava	0
A??ana	Araba/??lava	0
Salvatierra/Agurain	Araba/??lava	0
Samaniego	Araba/??lava	0
San Mill??n/Donemiliaga	Araba/??lava	0
Urkabustaiz	Araba/??lava	0
Valdegov??a/Gaubea	Araba/??lava	0
Harana/Valle de Arana	Araba/??lava	0
Villabuena de ??lava/Eskuernaga	Araba/??lava	0
Legutio	Araba/??lava	0
Vitoria-Gasteiz	Araba/??lava	0
Y??cora/Iekora	Araba/??lava	0
Zalduondo	Araba/??lava	0
Zambrana	Araba/??lava	0
Zuia	Araba/??lava	0
Iru??a Oka/Iru??a de Oca	Araba/??lava	0
Lantar??n	Araba/??lava	0
Abengibre	Albacete	0
Alatoz	Albacete	0
Albacete	Albacete	0
Albatana	Albacete	0
Alborea	Albacete	0
Alcadozo	Albacete	0
Alcal?? del J??car	Albacete	0
Alcaraz	Albacete	0
Almansa	Albacete	0
Alpera	Albacete	0
Ayna	Albacete	0
Balazote	Albacete	0
Balsa de Ves	Albacete	0
Ballestero, El	Albacete	0
Barrax	Albacete	0
Bienservida	Albacete	0
Bogarra	Albacete	0
Bonete	Albacete	0
Bonillo, El	Albacete	0
Carcel??n	Albacete	0
Casas de Juan N????ez	Albacete	0
Casas de L??zaro	Albacete	0
Casas de Ves	Albacete	0
Casas-Ib????ez	Albacete	0
Caudete	Albacete	0
Cenizate	Albacete	0
Corral-Rubio	Albacete	0
Cotillas	Albacete	0
Chinchilla de Monte-Arag??n	Albacete	0
Elche de la Sierra	Albacete	0
F??rez	Albacete	0
Fuensanta	Albacete	0
Fuente-??lamo	Albacete	0
Fuentealbilla	Albacete	0
Gineta, La	Albacete	0
Golosalvo	Albacete	0
Hell??n	Albacete	0
Herrera, La	Albacete	0
Higueruela	Albacete	0
Hoya-Gonzalo	Albacete	0
Jorquera	Albacete	0
Letur	Albacete	0
Lezuza	Albacete	0
Li??tor	Albacete	0
Madrigueras	Albacete	0
Mahora	Albacete	0
Masegoso	Albacete	0
Minaya	Albacete	0
Molinicos	Albacete	0
Montalvos	Albacete	0
Montealegre del Castillo	Albacete	0
Motilleja	Albacete	0
Munera	Albacete	0
Navas de Jorquera	Albacete	0
Nerpio	Albacete	0
Ontur	Albacete	0
Ossa de Montiel	Albacete	0
Paterna del Madera	Albacete	0
Pe??ascosa	Albacete	0
Pe??as de San Pedro	Albacete	0
P??trola	Albacete	0
Povedilla	Albacete	0
Pozohondo	Albacete	0
Pozo-Lorente	Albacete	0
Pozuelo	Albacete	0
Recueja, La	Albacete	0
Ri??par	Albacete	0
Robledo	Albacete	0
Roda, La	Albacete	0
Salobre	Albacete	0
San Pedro	Albacete	0
Socovos	Albacete	0
Tarazona de la Mancha	Albacete	0
Tobarra	Albacete	0
Valdeganga	Albacete	0
Vianos	Albacete	0
Villa de Ves	Albacete	0
Villalgordo del J??car	Albacete	0
Villamalea	Albacete	0
Villapalacios	Albacete	0
Villarrobledo	Albacete	0
Villatoya	Albacete	0
Villavaliente	Albacete	0
Villaverde de Guadalimar	Albacete	0
Viveros	Albacete	0
Yeste	Albacete	0
Pozo Ca??ada	Albacete	0
Adsubia	Alicante/Alacant	0
Agost	Alicante/Alacant	0
Agres	Alicante/Alacant	0
Aig??es	Alicante/Alacant	0
Albatera	Alicante/Alacant	0
Alcalal??	Alicante/Alacant	0
Alcocer de Planes	Alicante/Alacant	0
Alcoleja	Alicante/Alacant	0
Alcoy/Alcoi	Alicante/Alacant	0
Alfafara	Alicante/Alacant	0
Alf??s del Pi, l	Alicante/Alacant	0
Algorfa	Alicante/Alacant	0
Algue??a	Alicante/Alacant	0
Almorad??	Alicante/Alacant	0
Almudaina	Alicante/Alacant	0
Alqueria dAsnar, l	Alicante/Alacant	0
Altea	Alicante/Alacant	0
Aspe	Alicante/Alacant	0
Balones	Alicante/Alacant	0
Banyeres de Mariola	Alicante/Alacant	0
Benasau	Alicante/Alacant	0
Beneixama	Alicante/Alacant	0
Benej??zar	Alicante/Alacant	0
Benferri	Alicante/Alacant	0
Beniarbeig	Alicante/Alacant	0
Beniard??	Alicante/Alacant	0
Beniarr??s	Alicante/Alacant	0
Benigembla	Alicante/Alacant	0
Benidoleig	Alicante/Alacant	0
Benidorm	Alicante/Alacant	0
Benifallim	Alicante/Alacant	0
Benifato	Alicante/Alacant	0
Benij??far	Alicante/Alacant	0
Benilloba	Alicante/Alacant	0
Benillup	Alicante/Alacant	0
Benimantell	Alicante/Alacant	0
Benimarfull	Alicante/Alacant	0
Benimassot	Alicante/Alacant	0
Benimeli	Alicante/Alacant	0
Benissa	Alicante/Alacant	0
Benitachell/Poble Nou de Benitatxell, el	Alicante/Alacant	0
Biar	Alicante/Alacant	0
Bigastro	Alicante/Alacant	0
Bolulla	Alicante/Alacant	0
Busot	Alicante/Alacant	0
Calp	Alicante/Alacant	0
Callosa dEn Sarri??	Alicante/Alacant	0
Callosa de Segura	Alicante/Alacant	0
Campo de Mirra/Camp de Mirra, el	Alicante/Alacant	0
Castalla	Alicante/Alacant	0
Castell de Castells	Alicante/Alacant	0
Catral	Alicante/Alacant	0
Cocentaina	Alicante/Alacant	0
Confrides	Alicante/Alacant	0
Cox	Alicante/Alacant	0
Crevillent	Alicante/Alacant	0
Quatretondeta	Alicante/Alacant	0
Daya Nueva	Alicante/Alacant	0
Daya Vieja	Alicante/Alacant	0
D??nia	Alicante/Alacant	0
Dolores	Alicante/Alacant	0
Elda	Alicante/Alacant	0
Facheca	Alicante/Alacant	0
Famorca	Alicante/Alacant	0
Finestrat	Alicante/Alacant	0
Formentera del Segura	Alicante/Alacant	0
Gata de Gorgos	Alicante/Alacant	0
Gaianes	Alicante/Alacant	0
Gorga	Alicante/Alacant	0
Granja de Rocamora	Alicante/Alacant	0
Castell de Guadalest, el	Alicante/Alacant	0
Guardamar del Segura	Alicante/Alacant	0
Fond?? de les Neus, el/Hond??n de las Nieves	Alicante/Alacant	0
Hond??n de los Frailes	Alicante/Alacant	0
Ibi	Alicante/Alacant	0
Jacarilla	Alicante/Alacant	0
Xal??	Alicante/Alacant	0
J??vea/X??bia	Alicante/Alacant	0
Jijona/Xixona	Alicante/Alacant	0
Lorcha/Orxa, l	Alicante/Alacant	0
Ll??ber	Alicante/Alacant	0
Millena	Alicante/Alacant	0
Monforte del Cid	Alicante/Alacant	0
Mon??var/Mon??ver	Alicante/Alacant	0
Mutxamel	Alicante/Alacant	0
Murla	Alicante/Alacant	0
Muro de Alcoy	Alicante/Alacant	0
Novelda	Alicante/Alacant	0
Nucia, la	Alicante/Alacant	0
Ondara	Alicante/Alacant	0
Onil	Alicante/Alacant	0
Orba	Alicante/Alacant	0
Orxeta	Alicante/Alacant	0
Orihuela	Alicante/Alacant	0
Parcent	Alicante/Alacant	0
Pedreguer	Alicante/Alacant	0
Pego	Alicante/Alacant	0
Pen??guila	Alicante/Alacant	0
Petrer	Alicante/Alacant	0
Pin??s, el/Pinoso	Alicante/Alacant	0
Planes	Alicante/Alacant	0
Polop	Alicante/Alacant	0
Rafal	Alicante/Alacant	0
R??fol dAlm??nia, el	Alicante/Alacant	0
Redov??n	Alicante/Alacant	0
Relleu	Alicante/Alacant	0
Rojales	Alicante/Alacant	0
Romana, la	Alicante/Alacant	0
Sagra	Alicante/Alacant	0
Salinas	Alicante/Alacant	0
Sanet y Negrals	Alicante/Alacant	0
San Fulgencio	Alicante/Alacant	0
Sant Joan dAlacant	Alicante/Alacant	0
San Miguel de Salinas	Alicante/Alacant	0
Santa Pola	Alicante/Alacant	0
San Vicente del Raspeig/Sant Vicent del Raspeig	Alicante/Alacant	0
Sax	Alicante/Alacant	0
Sella	Alicante/Alacant	0
Senija	Alicante/Alacant	0
T??rbena	Alicante/Alacant	0
Teulada	Alicante/Alacant	0
Tibi	Alicante/Alacant	0
Tollos	Alicante/Alacant	0
Tormos	Alicante/Alacant	0
Torremanzanas/Torre de les Ma??anes, la	Alicante/Alacant	0
Torrevieja	Alicante/Alacant	0
Vall dAlcal??, la	Alicante/Alacant	0
Vall dEbo, la	Alicante/Alacant	0
Ca??ada	Alicante/Alacant	0
Elche/Elx	Alicante/Alacant	0
Alacant/Alicante	Alicante/Alacant	3003
Vall de Gallinera	Alicante/Alacant	0
Vall de Laguar, la	Alicante/Alacant	0
Verger, el	Alicante/Alacant	0
Villajoyosa/Vila Joiosa, la	Alicante/Alacant	0
Villena	Alicante/Alacant	0
Poblets, els	Alicante/Alacant	0
Pilar de la Horadada	Alicante/Alacant	0
Montesinos, Los	Alicante/Alacant	0
San Isidro	Alicante/Alacant	0
Abla	Almer??a	0
Abrucena	Almer??a	0
Adra	Almer??a	0
Alb??nchez	Almer??a	0
Alboloduy	Almer??a	0
Albox	Almer??a	0
Alcolea	Almer??a	0
Alc??ntar	Almer??a	0
Alcudia de Monteagud	Almer??a	0
Alhabia	Almer??a	0
Alhama de Almer??a	Almer??a	0
Alic??n	Almer??a	0
Almer??a	Almer??a	0
Alm??cita	Almer??a	0
Alsodux	Almer??a	0
Antas	Almer??a	0
Arboleas	Almer??a	0
Armu??a de Almanzora	Almer??a	0
Bacares	Almer??a	0
Bay??rcal	Almer??a	0
Bayarque	Almer??a	0
B??dar	Almer??a	0
Beires	Almer??a	0
Benahadux	Almer??a	0
Benitagla	Almer??a	0
Benizal??n	Almer??a	0
Bentarique	Almer??a	0
Berja	Almer??a	0
Canj??yar	Almer??a	0
Cantoria	Almer??a	0
Carboneras	Almer??a	0
Castro de Filabres	Almer??a	0
C??bdar	Almer??a	0
Cuevas del Almanzora	Almer??a	0
Chercos	Almer??a	0
Chirivel	Almer??a	0
Dal??as	Almer??a	0
Enix	Almer??a	0
Felix	Almer??a	0
Fines	Almer??a	0
Fi??ana	Almer??a	0
Fond??n	Almer??a	0
G??dor	Almer??a	0
Gallardos, Los	Almer??a	0
Garrucha	Almer??a	0
G??rgal	Almer??a	0
Hu??cija	Almer??a	0
Hu??rcal de Almer??a	Almer??a	0
Hu??rcal-Overa	Almer??a	0
Illar	Almer??a	0
Instinci??n	Almer??a	0
Laroya	Almer??a	0
L??ujar de Andarax	Almer??a	0
L??jar	Almer??a	0
Lubr??n	Almer??a	0
Lucainena de las Torres	Almer??a	0
L??car	Almer??a	0
Macael	Almer??a	0
Mar??a	Almer??a	0
Moj??car	Almer??a	0
Nacimiento	Almer??a	0
N??jar	Almer??a	0
Ohanes	Almer??a	0
Olula de Castro	Almer??a	0
Olula del R??o	Almer??a	0
Oria	Almer??a	0
Padules	Almer??a	0
Partaloa	Almer??a	0
Paterna del R??o	Almer??a	0
Pechina	Almer??a	0
Pulp??	Almer??a	0
Purchena	Almer??a	0
R??gol	Almer??a	0
Rioja	Almer??a	0
Roquetas de Mar	Almer??a	0
Santa Cruz de Marchena	Almer??a	0
Santa Fe de Mond??jar	Almer??a	0
Sen??s	Almer??a	0
Ser??n	Almer??a	0
Sierro	Almer??a	0
Somont??n	Almer??a	0
Sorbas	Almer??a	0
Sufl??	Almer??a	0
Tabernas	Almer??a	0
Taberno	Almer??a	0
Tahal	Almer??a	0
Terque	Almer??a	0
T??jola	Almer??a	0
Turre	Almer??a	0
Turrillas	Almer??a	0
Uleila del Campo	Almer??a	0
Urr??cal	Almer??a	0
Velefique	Almer??a	0
V??lez-Blanco	Almer??a	0
V??lez-Rubio	Almer??a	0
Vera	Almer??a	0
Viator	Almer??a	0
V??car	Almer??a	0
Zurgena	Almer??a	0
Tres Villas, Las	Almer??a	0
Ejido, El	Almer??a	0
Mojonera, La	Almer??a	0
Adanero	??vila	0
Adrada, La	??vila	0
Albornos	??vila	0
Aldeanueva de Santa Cruz	??vila	0
Aldeaseca	??vila	0
Aldehuela, La	??vila	0
Amavida	??vila	0
Arenal, El	??vila	0
Arenas de San Pedro	??vila	0
Arevalillo	??vila	0
Ar??valo	??vila	0
Aveinte	??vila	0
Avellaneda	??vila	0
??vila	??vila	0
Barco de ??vila, El	??vila	0
Barraco, El	??vila	0
Barrom??n	??vila	0
Becedas	??vila	0
Becedillas	??vila	0
Bercial de Zapardiel	??vila	0
Berlanas, Las	??vila	0
Bernuy-Zapardiel	??vila	0
Berrocalejo de Aragona	??vila	0
Blascomill??n	??vila	0
Blasconu??o de Matacabras	??vila	0
Blascosancho	??vila	0
Bohod??n, El	??vila	0
Bohoyo	??vila	0
Bonilla de la Sierra	??vila	0
Brabos	??vila	0
Bularros	??vila	0
Burgohondo	??vila	0
Cabezas de Alambre	??vila	0
Cabezas del Pozo	??vila	0
Cabezas del Villar	??vila	0
Cabizuela	??vila	0
Canales	??vila	0
Candeleda	??vila	0
Cantiveros	??vila	0
Carde??osa	??vila	0
Carrera, La	??vila	0
Casas del Puerto	??vila	0
Casasola	??vila	0
Casavieja	??vila	0
Casillas	??vila	0
Castellanos de Zapardiel	??vila	0
Cebreros	??vila	0
Cepeda la Mora	??vila	0
Cill??n	??vila	0
Cisla	??vila	0
Colilla, La	??vila	0
Collado de Contreras	??vila	0
Collado del Mir??n	??vila	0
Constanzana	??vila	0
Crespos	??vila	0
Cuevas del Valle	??vila	0
Chamart??n	??vila	0
Donjimeno	??vila	0
Donvidas	??vila	0
Espinosa de los Caballeros	??vila	0
Flores de ??vila	??vila	0
Fontiveros	??vila	0
Fresnedilla	??vila	0
Fresno, El	??vila	0
Fuente el Sa??z	??vila	0
Fuentes de A??o	??vila	0
Gallegos de Altamiros	??vila	0
Gallegos de Sobrinos	??vila	0
Garganta del Villar	??vila	0
Gavilanes	??vila	0
Gemu??o	??vila	0
Gilbuena	??vila	0
Gil Garc??a	??vila	0
Gimialc??n	??vila	0
Gotarrendura	??vila	0
Grandes y San Mart??n	??vila	0
Guisando	??vila	0
Gutierre-Mu??oz	??vila	0
Hernansancho	??vila	0
Herrad??n de Pinares	??vila	0
Herreros de Suso	??vila	0
Higuera de las Due??as	??vila	0
Hija de Dios, La	??vila	0
Horcajada, La	??vila	0
Horcajo de las Torres	??vila	0
Hornillo, El	??vila	0
Hoyocasero	??vila	0
Hoyo de Pinares, El	??vila	0
Hoyorredondo	??vila	0
Hoyos del Collado	??vila	0
Hoyos del Espino	??vila	0
Hoyos de Miguel Mu??oz	??vila	0
Hurtumpascual	??vila	0
Junciana	??vila	0
Langa	??vila	0
Lanzah??ta	??vila	0
Losar del Barco, El	??vila	0
Llanos de Tormes, Los	??vila	0
Madrigal de las Altas Torres	??vila	0
Maello	??vila	0
Malpartida de Corneja	??vila	0
Mamblas	??vila	0
Mancera de Arriba	??vila	0
Manjab??lago	??vila	0
Marl??n	??vila	0
Martiherrero	??vila	0
Mart??nez	??vila	0
Mediana de Voltoya	??vila	0
Medinilla	??vila	0
Mengamu??oz	??vila	0
Mesegar de Corneja	??vila	0
Mijares	??vila	0
Mingorr??a	??vila	0
Mir??n, El	??vila	0
Mironcillo	??vila	0
Mirue??a de los Infanzones	??vila	0
Mombeltr??n	??vila	0
Monsalupe	??vila	0
Moraleja de Matacabras	??vila	0
Mu??ana	??vila	0
Mu??ico	??vila	0
Mu??ogalindo	??vila	0
Mu??ogrande	??vila	0
Mu??omer del Peco	??vila	0
Mu??opepe	??vila	0
Mu??osancho	??vila	0
Mu??otello	??vila	0
Narrillos del ??lamo	??vila	0
Narrillos del Rebollar	??vila	0
Narros del Castillo	??vila	0
Narros del Puerto	??vila	0
Narros de Saldue??a	??vila	0
Navacepedilla de Corneja	??vila	0
Nava de Ar??valo	??vila	0
Nava del Barco	??vila	0
Navadijos	??vila	0
Navaescurial	??vila	0
Navahondilla	??vila	0
Navalacruz	??vila	0
Navalmoral	??vila	0
Navalonguilla	??vila	0
Navalosa	??vila	0
Navalperal de Pinares	??vila	0
Navalperal de Tormes	??vila	0
Navaluenga	??vila	0
Navaquesera	??vila	0
Navarredonda de Gredos	??vila	0
Navarredondilla	??vila	0
Navarrevisca	??vila	0
Navas del Marqu??s, Las	??vila	0
Navatalgordo	??vila	0
Navatejares	??vila	0
Neila de San Miguel	??vila	0
Niharra	??vila	0
Ojos-Albos	??vila	0
Orbita	??vila	0
Oso, El	??vila	0
Padiernos	??vila	0
Pajares de Adaja	??vila	0
Palacios de Goda	??vila	0
Papatrigo	??vila	0
Parral, El	??vila	0
Pascualcobo	??vila	0
Pedro Bernardo	??vila	0
Pedro-Rodr??guez	??vila	0
Peguerinos	??vila	0
Pe??alba de ??vila	??vila	0
Piedrah??ta	??vila	0
Piedralaves	??vila	0
Poveda	??vila	0
Poyales del Hoyo	??vila	0
Pozanco	??vila	0
Pradosegar	??vila	0
Puerto Castilla	??vila	0
Rasueros	??vila	0
Riocabado	??vila	0
Riofr??o	??vila	0
Rivilla de Barajas	??vila	0
Salobral	??vila	0
Salvadi??s	??vila	0
San Bartolom?? de B??jar	??vila	0
San Bartolom?? de Corneja	??vila	0
San Bartolom?? de Pinares	??vila	0
Sanchidri??n	??vila	0
Sanchorreja	??vila	0
San Esteban de los Patos	??vila	0
San Esteban del Valle	??vila	0
San Esteban de Zapardiel	??vila	0
San Garc??a de Ingelmos	??vila	0
San Juan de la Encinilla	??vila	0
San Juan de la Nava	??vila	0
San Juan del Molinillo	??vila	0
San Juan del Olmo	??vila	0
San Lorenzo de Tormes	??vila	0
San Mart??n de la Vega del Alberche	??vila	0
San Mart??n del Pimpollar	??vila	0
San Miguel de Corneja	??vila	0
San Miguel de Serrezuela	??vila	0
San Pascual	??vila	0
San Pedro del Arroyo	??vila	0
Santa Cruz del Valle	??vila	0
Santa Cruz de Pinares	??vila	0
Santa Mar??a del Arroyo	??vila	0
Santa Mar??a del Berrocal	??vila	0
Santa Mar??a de los Caballeros	??vila	0
Santa Mar??a del Ti??tar	??vila	0
Santiago del Collado	??vila	0
Santo Domingo de las Posadas	??vila	0
Santo Tom?? de Zabarcos	??vila	0
San Vicente de Ar??valo	??vila	0
Serrada, La	??vila	0
Serranillos	??vila	0
Sigeres	??vila	0
Sinlabajos	??vila	0
Solana de ??vila	??vila	0
Solana de Rioalmar	??vila	0
Solosancho	??vila	0
Sotalbo	??vila	0
Sotillo de la Adrada	??vila	0
Tiemblo, El	??vila	0
Ti??osillos	??vila	0
Tolba??os	??vila	0
Tormellas	??vila	0
Tornadizos de ??vila	??vila	0
T??rtoles	??vila	0
Torre, La	??vila	0
Umbr??as	??vila	0
Vadillo de la Sierra	??vila	0
Valdecasa	??vila	0
Vega de Santa Mar??a	??vila	0
Velayos	??vila	0
Villaflor	??vila	0
Villafranca de la Sierra	??vila	0
Villanueva de G??mez	??vila	0
Villanueva del Aceral	??vila	0
Villanueva del Campillo	??vila	0
Villar de Corneja	??vila	0
Villarejo del Valle	??vila	0
Villatoro	??vila	0
Vi??egra de Mora??a	??vila	0
Vita	??vila	0
Zapardiel de la Ca??ada	??vila	0
Zapardiel de la Ribera	??vila	0
San Juan de Gredos	??vila	0
Santa Mar??a del Cubillo	??vila	0
Diego del Carpio	??vila	0
Santiago del Tormes	??vila	0
Villanueva de ??vila	??vila	0
Acedera	Badajoz	0
Aceuchal	Badajoz	0
Ahillones	Badajoz	0
Alange	Badajoz	0
Albuera, La	Badajoz	0
Alburquerque	Badajoz	0
Alconchel	Badajoz	0
Alconera	Badajoz	0
Aljuc??n	Badajoz	0
Almendral	Badajoz	0
Almendralejo	Badajoz	0
Arroyo de San Serv??n	Badajoz	0
Atalaya	Badajoz	0
Azuaga	Badajoz	0
Badajoz	Badajoz	0
Barcarrota	Badajoz	0
Baterno	Badajoz	0
Benquerencia de la Serena	Badajoz	0
Berlanga	Badajoz	0
Bienvenida	Badajoz	0
Bodonal de la Sierra	Badajoz	0
Burguillos del Cerro	Badajoz	0
Cabeza del Buey	Badajoz	0
Cabeza la Vaca	Badajoz	0
Calamonte	Badajoz	0
Calera de Le??n	Badajoz	0
Calzadilla de los Barros	Badajoz	0
Campanario	Badajoz	0
Campillo de Llerena	Badajoz	0
Capilla	Badajoz	0
Carmonita	Badajoz	0
Carrascalejo, El	Badajoz	0
Casas de Don Pedro	Badajoz	0
Casas de Reina	Badajoz	0
Castilblanco	Badajoz	0
Castuera	Badajoz	0
Codosera, La	Badajoz	0
Cordobilla de L??cara	Badajoz	0
Coronada, La	Badajoz	0
Corte de Peleas	Badajoz	0
Cristina	Badajoz	0
Cheles	Badajoz	0
Don ??lvaro	Badajoz	0
Don Benito	Badajoz	0
Entr??n Bajo	Badajoz	0
Esparragalejo	Badajoz	0
Esparragosa de la Serena	Badajoz	0
Esparragosa de Lares	Badajoz	0
Feria	Badajoz	0
Fregenal de la Sierra	Badajoz	0
Fuenlabrada de los Montes	Badajoz	0
Fuente de Cantos	Badajoz	0
Fuente del Arco	Badajoz	0
Fuente del Maestre	Badajoz	0
Fuentes de Le??n	Badajoz	0
Garbayuela	Badajoz	0
Garlitos	Badajoz	0
Garrovilla, La	Badajoz	0
Granja de Torrehermosa	Badajoz	0
Guare??a	Badajoz	0
Haba, La	Badajoz	0
Helechosa de los Montes	Badajoz	0
Herrera del Duque	Badajoz	0
Higuera de la Serena	Badajoz	0
Higuera de Llerena	Badajoz	0
Higuera de Vargas	Badajoz	0
Higuera la Real	Badajoz	0
Hinojosa del Valle	Badajoz	0
Hornachos	Badajoz	0
Jerez de los Caballeros	Badajoz	0
Lapa, La	Badajoz	0
Lob??n	Badajoz	0
Llera	Badajoz	0
Llerena	Badajoz	0
Magacela	Badajoz	0
Maguilla	Badajoz	0
Malcocinado	Badajoz	0
Malpartida de la Serena	Badajoz	0
Manchita	Badajoz	0
Medell??n	Badajoz	0
Medina de las Torres	Badajoz	0
Mengabril	Badajoz	0
M??rida	Badajoz	0
Mirandilla	Badajoz	0
Monesterio	Badajoz	0
Montemol??n	Badajoz	0
Monterrubio de la Serena	Badajoz	0
Montijo	Badajoz	0
Morera, La	Badajoz	0
Nava de Santiago, La	Badajoz	0
Navalvillar de Pela	Badajoz	0
Nogales	Badajoz	0
Oliva de la Frontera	Badajoz	0
Oliva de M??rida	Badajoz	0
Olivenza	Badajoz	0
Orellana de la Sierra	Badajoz	0
Orellana la Vieja	Badajoz	0
Palomas	Badajoz	0
Parra, La	Badajoz	0
Pe??alsordo	Badajoz	0
Peraleda del Zaucejo	Badajoz	0
Puebla de Alcocer	Badajoz	0
Puebla de la Calzada	Badajoz	0
Puebla de la Reina	Badajoz	0
Puebla del Maestre	Badajoz	0
Puebla del Prior	Badajoz	0
Puebla de Obando	Badajoz	0
Puebla de Sancho P??rez	Badajoz	0
Quintana de la Serena	Badajoz	0
Reina	Badajoz	0
Rena	Badajoz	0
Retamal de Llerena	Badajoz	0
Ribera del Fresno	Badajoz	0
Risco	Badajoz	0
Roca de la Sierra, La	Badajoz	0
Salvale??n	Badajoz	0
Salvatierra de los Barros	Badajoz	0
Sancti-Sp??ritus	Badajoz	0
San Pedro de M??rida	Badajoz	0
Santa Amalia	Badajoz	0
Santa Marta	Badajoz	0
Santos de Maimona, Los	Badajoz	0
San Vicente de Alc??ntara	Badajoz	0
Segura de Le??n	Badajoz	0
Siruela	Badajoz	0
Solana de los Barros	Badajoz	0
Talarrubias	Badajoz	0
Talavera la Real	Badajoz	0
T??liga	Badajoz	0
Tamurejo	Badajoz	0
Torre de Miguel Sesmero	Badajoz	0
Torremayor	Badajoz	0
Torremej??a	Badajoz	0
Trasierra	Badajoz	0
Trujillanos	Badajoz	0
Usagre	Badajoz	0
Valdecaballeros	Badajoz	0
Valdetorres	Badajoz	0
Valencia de las Torres	Badajoz	0
Valencia del Mombuey	Badajoz	0
Valencia del Ventoso	Badajoz	0
Valverde de Burguillos	Badajoz	0
Valverde de Legan??s	Badajoz	0
Valverde de Llerena	Badajoz	0
Valverde de M??rida	Badajoz	0
Valle de la Serena	Badajoz	0
Valle de Matamoros	Badajoz	0
Valle de Santa Ana	Badajoz	0
Villafranca de los Barros	Badajoz	0
Villagarc??a de la Torre	Badajoz	0
Villagonzalo	Badajoz	0
Villalba de los Barros	Badajoz	0
Villanueva de la Serena	Badajoz	0
Villanueva del Fresno	Badajoz	0
Villar del Rey	Badajoz	0
Villar de Rena	Badajoz	0
Villarta de los Montes	Badajoz	0
Zafra	Badajoz	0
Zah??nos	Badajoz	0
Zalamea de la Serena	Badajoz	0
Zarza-Capilla	Badajoz	0
Zarza, La	Badajoz	0
Valdelacalzada	Badajoz	0
Pueblonuevo del Guadiana	Badajoz	0
Alar??	Balears (Illes)	0
Alaior	Balears (Illes)	0
Alc??dia	Balears (Illes)	0
Algaida	Balears (Illes)	0
Andratx	Balears (Illes)	0
Art??	Balears (Illes)	0
Banyalbufar	Balears (Illes)	0
Binissalem	Balears (Illes)	0
B??ger	Balears (Illes)	0
Bunyola	Balears (Illes)	0
Calvi??	Balears (Illes)	0
Campanet	Balears (Illes)	0
Campos	Balears (Illes)	0
Capdepera	Balears (Illes)	0
Ciutadella de Menorca	Balears (Illes)	0
Consell	Balears (Illes)	0
Costitx	Balears (Illes)	0
Dey??	Balears (Illes)	0
Escorca	Balears (Illes)	0
Esporles	Balears (Illes)	0
Estellencs	Balears (Illes)	0
Felanitx	Balears (Illes)	0
Ferreries	Balears (Illes)	0
Formentera	Balears (Illes)	0
Fornalutx	Balears (Illes)	0
Eivissa	Balears (Illes)	0
Inca	Balears (Illes)	0
Lloret de Vistalegre	Balears (Illes)	0
Lloseta	Balears (Illes)	0
Llub??	Balears (Illes)	0
Llucmajor	Balears (Illes)	0
Ma??	Balears (Illes)	0
Manacor	Balears (Illes)	0
Mancor de la Vall	Balears (Illes)	0
Maria de la Salut	Balears (Illes)	0
Marratx??	Balears (Illes)	0
Mercadal, Es	Balears (Illes)	0
Montu??ri	Balears (Illes)	0
Muro	Balears (Illes)	0
Palma	Balears (Illes)	0
Petra	Balears (Illes)	0
Pollen??a	Balears (Illes)	0
Porreres	Balears (Illes)	0
Pobla, Sa	Balears (Illes)	0
Puigpunyent	Balears (Illes)	0
Sant Antoni de Portmany	Balears (Illes)	0
Sencelles	Balears (Illes)	0
Sant Josep de sa Talaia	Balears (Illes)	0
Sant Joan	Balears (Illes)	0
Sant Joan de Labritja	Balears (Illes)	0
Sant Lloren?? des Cardassar	Balears (Illes)	0
Sant Llu??s	Balears (Illes)	0
Santa Eug??nia	Balears (Illes)	0
Santa Eulalia del R??o	Balears (Illes)	0
Santa Margalida	Balears (Illes)	0
Santa Mar??a del Cam??	Balears (Illes)	0
Santany??	Balears (Illes)	0
Selva	Balears (Illes)	0
Salines, Ses	Balears (Illes)	0
Sineu	Balears (Illes)	0
S??ller	Balears (Illes)	0
Son Servera	Balears (Illes)	0
Valldemossa	Balears (Illes)	0
Castell, Es	Balears (Illes)	0
Vilafranca de Bonany	Balears (Illes)	0
Ariany	Balears (Illes)	0
Migjorn Gran, Es	Balears (Illes)	0
Abrera	Barcelona	0
Aguilar de Segarra	Barcelona	0
Alella	Barcelona	0
Alpens	Barcelona	0
Ametlla del Vall??s, L	Barcelona	0
Arenys de Mar	Barcelona	0
Arenys de Munt	Barcelona	0
Argen??ola	Barcelona	0
Argentona	Barcelona	0
Art??s	Barcelona	0
Avi??	Barcelona	0
Aviny??	Barcelona	0
Avinyonet del Pened??s	Barcelona	0
Aiguafreda	Barcelona	0
Badalona	Barcelona	0
Bag??	Barcelona	0
Baleny??	Barcelona	0
Balsareny	Barcelona	0
Barcelona	Barcelona	0
Begues	Barcelona	0
Bellprat	Barcelona	0
Berga	Barcelona	0
Bigues i Riells	Barcelona	0
Borred??	Barcelona	0
Bruc, El	Barcelona	0
Brull, El	Barcelona	0
Cabanyes, Les	Barcelona	0
Cabrera dAnoia	Barcelona	0
Cabrera de Mar	Barcelona	0
Cabrils	Barcelona	0
Calaf	Barcelona	0
Caldes dEstrac	Barcelona	0
Caldes de Montbui	Barcelona	0
Calders	Barcelona	0
Calella	Barcelona	0
Calonge de Segarra	Barcelona	0
Calldetenes	Barcelona	0
Call??s	Barcelona	0
Campins	Barcelona	0
Canet de Mar	Barcelona	0
Canovelles	Barcelona	0
C??noves i Samal??s	Barcelona	0
Canyelles	Barcelona	0
Capellades	Barcelona	0
Capolat	Barcelona	0
Cardedeu	Barcelona	0
Cardona	Barcelona	0
Carme	Barcelona	0
Casserres	Barcelona	0
Castellar del Riu	Barcelona	0
Castellar del Vall??s	Barcelona	0
Castellar de nHug	Barcelona	0
Castellbell i el Vilar	Barcelona	0
Castellbisbal	Barcelona	0
Castellcir	Barcelona	0
Castelldefels	Barcelona	0
Castell de lAreny	Barcelona	0
Castellet i la Gornal	Barcelona	0
Castellfollit del Boix	Barcelona	0
Castellfollit de Riubreg??s	Barcelona	0
Castellgal??	Barcelona	0
Castellnou de Bages	Barcelona	0
Castellol??	Barcelona	0
Castellter??ol	Barcelona	0
Castellv?? de la Marca	Barcelona	0
Castellv?? de Rosanes	Barcelona	0
Centelles	Barcelona	0
Cervell??	Barcelona	0
Collbat??	Barcelona	0
Collsuspina	Barcelona	0
Copons	Barcelona	0
Corbera de Llobregat	Barcelona	0
Cornell?? de Llobregat	Barcelona	0
Cubelles	Barcelona	0
Dosrius	Barcelona	0
Esparreguera	Barcelona	0
Esplugues de Llobregat	Barcelona	0
Espunyola, L	Barcelona	0
Estany, L	Barcelona	0
F??gols	Barcelona	0
Fogars de Montcl??s	Barcelona	0
Fogars de la Selva	Barcelona	0
Folgueroles	Barcelona	0
Fonollosa	Barcelona	0
Font-rub??	Barcelona	0
Franqueses del Vall??s, Les	Barcelona	0
Gallifa	Barcelona	0
Garriga, La	Barcelona	0
Gav??	Barcelona	0
Gai??	Barcelona	0
Gelida	Barcelona	0
Gironella	Barcelona	0
Gisclareny	Barcelona	0
Granada, La	Barcelona	0
Granera	Barcelona	0
Granollers	Barcelona	0
Gualba	Barcelona	0
Sant Salvador de Guardiola	Barcelona	0
Guardiola de Bergued??	Barcelona	0
Gurb	Barcelona	0
Hospitalet de Llobregat, L	Barcelona	0
Igualada	Barcelona	0
Jorba	Barcelona	0
Llacuna, La	Barcelona	0
Llagosta, La	Barcelona	0
Llinars del Vall??s	Barcelona	0
Lli???? dAmunt	Barcelona	0
Lli???? de Vall	Barcelona	0
Llu????	Barcelona	0
Malgrat de Mar	Barcelona	0
Malla	Barcelona	0
Manlleu	Barcelona	0
Manresa	Barcelona	0
Martorell	Barcelona	0
Martorelles	Barcelona	0
Masies de Roda, Les	Barcelona	0
Masies de Voltreg??, Les	Barcelona	0
Masnou, El	Barcelona	0
Masquefa	Barcelona	0
Matadepera	Barcelona	0
Matar??	Barcelona	0
Mediona	Barcelona	0
Molins de Rei	Barcelona	0
Mollet del Vall??s	Barcelona	0
Montcada i Reixac	Barcelona	0
Montgat	Barcelona	0
Monistrol de Montserrat	Barcelona	0
Monistrol de Calders	Barcelona	0
Muntanyola	Barcelona	0
Montclar	Barcelona	0
Montesquiu	Barcelona	0
Montmajor	Barcelona	0
Montmaneu	Barcelona	0
Figar??-Montmany	Barcelona	0
Montmel??	Barcelona	0
Montorn??s del Vall??s	Barcelona	0
Montseny	Barcelona	0
Moi??	Barcelona	0
Mura	Barcelona	0
Navarcles	Barcelona	0
Nav??s	Barcelona	0
Nou de Bergued??, La	Barcelona	0
??dena	Barcelona	0
Olvan	Barcelona	0
Ol??rdola	Barcelona	0
Olesa de Bonesvalls	Barcelona	0
Olesa de Montserrat	Barcelona	0
Olivella	Barcelona	0
Olost	Barcelona	0
Or??s	Barcelona	0
Orist??	Barcelona	0
Orp??	Barcelona	0
??rrius	Barcelona	0
Pacs del Pened??s	Barcelona	0
Palafolls	Barcelona	0
Palau-solit?? i Plegamans	Barcelona	0
Pallej??	Barcelona	0
Papiol, El	Barcelona	0
Parets del Vall??s	Barcelona	0
Perafita	Barcelona	0
Piera	Barcelona	0
Hostalets de Pierola, Els	Barcelona	0
Pineda de Mar	Barcelona	0
Pla del Pened??s, El	Barcelona	0
Pobla de Claramunt, La	Barcelona	0
Pobla de Lillet, La	Barcelona	0
Poliny??	Barcelona	0
Pontons	Barcelona	0
Prat de Llobregat, El	Barcelona	0
Prats de Rei, Els	Barcelona	0
Prats de Llu??an??s	Barcelona	0
Premi?? de Mar	Barcelona	0
Puigd??lber	Barcelona	0
Puig-reig	Barcelona	0
Pujalt	Barcelona	0
Quar, La	Barcelona	0
Rajadell	Barcelona	0
Rellinars	Barcelona	0
Ripollet	Barcelona	0
Roca del Vall??s, La	Barcelona	0
Pont de Vilomara i Rocafort, El	Barcelona	0
Roda de Ter	Barcelona	0
Rub??	Barcelona	0
Rubi??	Barcelona	0
Sabadell	Barcelona	0
Sag??s	Barcelona	0
Sant Pere Sallavinera	Barcelona	0
Saldes	Barcelona	0
Sallent	Barcelona	0
Santpedor	Barcelona	0
Sant Iscle de Vallalta	Barcelona	0
Sant Adri?? de Bes??s	Barcelona	0
Sant Agust?? de Llu??an??s	Barcelona	0
Sant Andreu de la Barca	Barcelona	0
Sant Andreu de Llavaneres	Barcelona	0
Sant Antoni de Vilamajor	Barcelona	0
Sant Bartomeu del Grau	Barcelona	0
Sant Boi de Llobregat	Barcelona	0
Sant Boi de Llu??an??s	Barcelona	0
Sant Celoni	Barcelona	0
Sant Cebri?? de Vallalta	Barcelona	0
Sant Climent de Llobregat	Barcelona	0
Sant Cugat del Vall??s	Barcelona	0
Sant Cugat Sesgarrigues	Barcelona	0
Sant Esteve de Palautordera	Barcelona	0
Sant Esteve Sesrovires	Barcelona	0
Sant Fost de Campsentelles	Barcelona	0
Sant Feliu de Codines	Barcelona	0
Sant Feliu de Llobregat	Barcelona	0
Sant Feliu Sasserra	Barcelona	0
Sant Fruit??s de Bages	Barcelona	0
Vilassar de Dalt	Barcelona	0
Sant Hip??lit de Voltreg??	Barcelona	0
Sant Jaume de Frontany??	Barcelona	0
Sant Joan Desp??	Barcelona	0
Sant Joan de Vilatorrada	Barcelona	0
Vilassar de Mar	Barcelona	0
Sant Juli?? de Vilatorta	Barcelona	0
Sant Just Desvern	Barcelona	0
Sant Lloren?? dHortons	Barcelona	0
Sant Lloren?? Savall	Barcelona	0
Sant Mart?? de Centelles	Barcelona	0
Sant Mart?? dAlbars	Barcelona	0
Sant Mart?? de Tous	Barcelona	0
Sant Mart?? Sarroca	Barcelona	0
Sant Mart?? Sesgueioles	Barcelona	0
Sant Mateu de Bages	Barcelona	0
Premi?? de Dalt	Barcelona	0
Sant Pere de Ribes	Barcelona	0
Sant Pere de Riudebitlles	Barcelona	0
Sant Pere de Torell??	Barcelona	0
Sant Pere de Vilamajor	Barcelona	0
Sant Pol de Mar	Barcelona	0
Sant Quint?? de Mediona	Barcelona	0
Sant Quirze de Besora	Barcelona	0
Sant Quirze del Vall??s	Barcelona	0
Sant Quirze Safaja	Barcelona	0
Sant Sadurn?? dAnoia	Barcelona	0
Sant Sadurn?? dOsormort	Barcelona	0
Marganell	Barcelona	0
Santa Cec??lia de Voltreg??	Barcelona	0
Santa Coloma de Cervell??	Barcelona	0
Santa Coloma de Gramenet	Barcelona	0
Santa Eug??nia de Berga	Barcelona	0
Santa Eul??lia de Riuprimer	Barcelona	0
Santa Eul??lia de Ron??ana	Barcelona	0
Santa Fe del Pened??s	Barcelona	0
Santa Margarida de Montbui	Barcelona	0
Santa Margarida i els Monjos	Barcelona	0
Barber?? del Vall??s	Barcelona	0
Santa Maria de Besora	Barcelona	0
Santa Maria de Corc??	Barcelona	0
Santa Maria de Merl??s	Barcelona	0
Santa Maria de Martorelles	Barcelona	0
Santa Maria de Miralles	Barcelona	0
Santa Maria dOl??	Barcelona	0
Santa Maria de Palautordera	Barcelona	0
Santa Perp??tua de Mogoda	Barcelona	0
Santa Susanna	Barcelona	0
Sant Vicen?? de Castellet	Barcelona	0
Sant Vicen?? dels Horts	Barcelona	0
Sant Vicen?? de Montalt	Barcelona	0
Sant Vicen?? de Torell??	Barcelona	0
Cerdanyola del Vall??s	Barcelona	0
Sentmenat	Barcelona	0
Cercs	Barcelona	0
Seva	Barcelona	0
Sitges	Barcelona	0
Sobremunt	Barcelona	0
Sora	Barcelona	0
Subirats	Barcelona	0
S??ria	Barcelona	0
Tav??rnoles	Barcelona	0
Tagamanent	Barcelona	0
Talamanca	Barcelona	0
Taradell	Barcelona	0
Terrassa	Barcelona	0
Tavertet	Barcelona	0
Tei??	Barcelona	0
Tiana	Barcelona	0
Tona	Barcelona	0
Tordera	Barcelona	0
Torell??	Barcelona	0
Torre de Claramunt, La	Barcelona	0
Torrelavit	Barcelona	0
Torrelles de Foix	Barcelona	0
Torrelles de Llobregat	Barcelona	0
Ullastrell	Barcelona	0
Vacarisses	Barcelona	0
Vallbona dAnoia	Barcelona	0
Vallcebre	Barcelona	0
Vallgorguina	Barcelona	0
Vallirana	Barcelona	0
Vallromanes	Barcelona	0
Veciana	Barcelona	0
Vic	Barcelona	0
Vilada	Barcelona	0
Viladecavalls	Barcelona	0
Viladecans	Barcelona	0
Vilanova del Cam??	Barcelona	0
Vilanova de Sau	Barcelona	0
Vilob?? del Pened??s	Barcelona	0
Vilafranca del Pened??s	Barcelona	0
Vilalba Sasserra	Barcelona	0
Vilanova i la Geltr??	Barcelona	0
Viver i Serrateix	Barcelona	0
Rupit i Pruit	Barcelona	0
Vilanova del Vall??s	Barcelona	0
Sant Juli?? de Cerdanyola	Barcelona	0
Badia del Vall??s	Barcelona	0
Palma de Cervell??, La	Barcelona	0
Abajas	Burgos	0
Adrada de Haza	Burgos	0
Aguas C??ndidas	Burgos	0
Aguilar de Bureba	Burgos	0
Albillos	Burgos	0
Alcocero de Mola	Burgos	0
Alfoz de Bricia	Burgos	0
Alfoz de Santa Gadea	Burgos	0
Altable	Burgos	0
Altos, Los	Burgos	0
Ameyugo	Burgos	0
Anguix	Burgos	0
Aranda de Duero	Burgos	0
Arandilla	Burgos	0
Arauzo de Miel	Burgos	0
Arauzo de Salce	Burgos	0
Arauzo de Torre	Burgos	0
Arcos	Burgos	0
Arenillas de Riopisuerga	Burgos	0
Arija	Burgos	0
Arlanz??n	Burgos	0
Arraya de Oca	Burgos	0
Atapuerca	Burgos	0
Ausines, Los	Burgos	0
Avellanosa de Mu????	Burgos	0
Bahab??n de Esgueva	Burgos	0
Balbases, Los	Burgos	0
Ba??os de Valdearados	Burgos	0
Ba??uelos de Bureba	Burgos	0
Barbadillo de Herreros	Burgos	0
Barbadillo del Mercado	Burgos	0
Barbadillo del Pez	Burgos	0
Barrio de Mu????	Burgos	0
Barrios de Bureba, Los	Burgos	0
Barrios de Colina	Burgos	0
Basconcillos del Tozo	Burgos	0
Bascu??ana	Burgos	0
Belbimbre	Burgos	0
Belorado	Burgos	0
Berberana	Burgos	0
Berlangas de Roa	Burgos	0
Berzosa de Bureba	Burgos	0
Bozo??	Burgos	0
Brazacorta	Burgos	0
Briviesca	Burgos	0
Bugedo	Burgos	0
Buniel	Burgos	0
Burgos	Burgos	0
Busto de Bureba	Burgos	0
Caba??es de Esgueva	Burgos	0
Cabez??n de la Sierra	Burgos	0
Cavia	Burgos	0
Caleruega	Burgos	0
Campillo de Aranda	Burgos	0
Campolara	Burgos	0
Canicosa de la Sierra	Burgos	0
Cantabrana	Burgos	0
Carazo	Burgos	0
Carcedo de Bureba	Burgos	0
Carcedo de Burgos	Burgos	0
Carde??adijo	Burgos	0
Carde??ajimeno	Burgos	0
Carde??uela Riopico	Burgos	0
Carrias	Burgos	0
Cascajares de Bureba	Burgos	0
Cascajares de la Sierra	Burgos	0
Castellanos de Castro	Burgos	0
Castildelgado	Burgos	0
Castil de Peones	Burgos	0
Castrillo de la Reina	Burgos	0
Castrillo de la Vega	Burgos	0
Castrillo del Val	Burgos	0
Castrillo de Riopisuerga	Burgos	0
Castrillo Matajud??os	Burgos	0
Castrojeriz	Burgos	0
Cayuela	Burgos	0
Cebrecos	Burgos	0
Celada del Camino	Burgos	0
Cerezo de R??o Tir??n	Burgos	0
Cerrat??n de Juarros	Burgos	0
Ciadoncha	Burgos	0
Cillaperlata	Burgos	0
Cilleruelo de Abajo	Burgos	0
Cilleruelo de Arriba	Burgos	0
Ciruelos de Cervera	Burgos	0
Cogollos	Burgos	0
Condado de Trevi??o	Burgos	0
Contreras	Burgos	0
Coru??a del Conde	Burgos	0
Covarrubias	Burgos	0
Cubillo del Campo	Burgos	0
Cubo de Bureba	Burgos	0
Cueva de Roa, La	Burgos	0
Cuevas de San Clemente	Burgos	0
Enc??o	Burgos	0
Espinosa de Cervera	Burgos	0
Espinosa del Camino	Burgos	0
Espinosa de los Monteros	Burgos	0
Est??par	Burgos	0
Fontioso	Burgos	0
Frandov??nez	Burgos	0
Fresneda de la Sierra Tir??n	Burgos	0
Fresne??a	Burgos	0
Fresnillo de las Due??as	Burgos	0
Fresno de R??o Tir??n	Burgos	0
Fresno de Rodilla	Burgos	0
Fr??as	Burgos	0
Fuentebureba	Burgos	0
Fuentec??n	Burgos	0
Fuentelc??sped	Burgos	0
Fuentelisendo	Burgos	0
Fuentemolinos	Burgos	0
Fuentenebro	Burgos	0
Fuentespina	Burgos	0
Galbarros	Burgos	0
Gallega, La	Burgos	0
Grijalba	Burgos	0
Grisale??a	Burgos	0
Gumiel de Iz??n	Burgos	0
Gumiel de Mercado	Burgos	0
Hacinas	Burgos	0
Haza	Burgos	0
Hontanas	Burgos	0
Hontangas	Burgos	0
Hontoria de la Cantera	Burgos	0
Hontoria del Pinar	Burgos	0
Hontoria de Valdearados	Burgos	0
Hormazas, Las	Burgos	0
Hornillos del Camino	Burgos	0
Horra, La	Burgos	0
Hortig??ela	Burgos	0
Hoyales de Roa	Burgos	0
Hu??rmeces	Burgos	0
Huerta de Arriba	Burgos	0
Huerta de Rey	Burgos	0
Humada	Burgos	0
Hurones	Burgos	0
Ibeas de Juarros	Burgos	0
Ibrillos	Burgos	0
Iglesiarrubia	Burgos	0
Iglesias	Burgos	0
Isar	Burgos	0
Itero del Castillo	Burgos	0
Jaramillo de la Fuente	Burgos	0
Jaramillo Quemado	Burgos	0
Junta de Traslaloma	Burgos	0
Junta de Villalba de Losa	Burgos	0
Jurisdicci??n de Lara	Burgos	0
Jurisdicci??n de San Zadornil	Burgos	0
Lerma	Burgos	0
Llano de Bureba	Burgos	0
Madrigal del Monte	Burgos	0
Madrigalejo del Monte	Burgos	0
Mahamud	Burgos	0
Mambrilla de Castrej??n	Burgos	0
Mambrillas de Lara	Burgos	0
Mamolar	Burgos	0
Manciles	Burgos	0
Mazuela	Burgos	0
Mecerreyes	Burgos	0
Medina de Pomar	Burgos	0
Melgar de Fernamental	Burgos	0
Merindad de Cuesta-Urria	Burgos	0
Merindad de Montija	Burgos	0
Merindad de Sotoscueva	Burgos	0
Merindad de Valdeporres	Burgos	0
Merindad de Valdivielso	Burgos	0
Milagros	Burgos	0
Miranda de Ebro	Burgos	0
Miraveche	Burgos	0
Mod??bar de la Emparedada	Burgos	0
Monasterio de la Sierra	Burgos	0
Monasterio de Rodilla	Burgos	0
Moncalvillo	Burgos	0
Monterrubio de la Demanda	Burgos	0
Montorio	Burgos	0
Moradillo de Roa	Burgos	0
Nava de Roa	Burgos	0
Navas de Bureba	Burgos	0
Nebreda	Burgos	0
Neila	Burgos	0
Olmedillo de Roa	Burgos	0
Olmillos de Mu????	Burgos	0
O??a	Burgos	0
Oquillas	Burgos	0
Orbaneja Riopico	Burgos	0
Padilla de Abajo	Burgos	0
Padilla de Arriba	Burgos	0
Padrones de Bureba	Burgos	0
Palacios de la Sierra	Burgos	0
Palacios de Riopisuerga	Burgos	0
Palazuelos de la Sierra	Burgos	0
Palazuelos de Mu????	Burgos	0
Pampliega	Burgos	0
Pancorbo	Burgos	0
Pardilla	Burgos	0
Partido de la Sierra en Tobalina	Burgos	0
Pedrosa de Duero	Burgos	0
Pedrosa del P??ramo	Burgos	0
Pedrosa del Pr??ncipe	Burgos	0
Pedrosa de R??o ??rbel	Burgos	0
Pe??aranda de Duero	Burgos	0
Peral de Arlanza	Burgos	0
Pi??rnigas	Burgos	0
Pineda de la Sierra	Burgos	0
Pineda Trasmonte	Burgos	0
Pinilla de los Barruecos	Burgos	0
Pinilla de los Moros	Burgos	0
Pinilla Trasmonte	Burgos	0
Poza de la Sal	Burgos	0
Pr??danos de Bureba	Burgos	0
Pradoluengo	Burgos	0
Presencio	Burgos	0
Puebla de Arganz??n, La	Burgos	0
Puentedura	Burgos	0
Quemada	Burgos	0
Quintanabureba	Burgos	0
Quintana del Pidio	Burgos	0
Quintana??lez	Burgos	0
Quintanaortu??o	Burgos	0
Quintanapalla	Burgos	0
Quintanar de la Sierra	Burgos	0
Quintanavides	Burgos	0
Quintanilla de la Mata	Burgos	0
Quintanilla del Coco	Burgos	0
Quintanillas, Las	Burgos	0
Quintanilla San Garc??a	Burgos	0
Quintanilla Vivar	Burgos	0
Rabanera del Pinar	Burgos	0
R??banos	Burgos	0
Rab?? de las Calzadas	Burgos	0
Rebolledo de la Torre	Burgos	0
Redecilla del Camino	Burgos	0
Redecilla del Campo	Burgos	0
Regumiel de la Sierra	Burgos	0
Reinoso	Burgos	0
Retuerta	Burgos	0
Revilla y Ahedo, La	Burgos	0
Revilla del Campo	Burgos	0
Revillarruz	Burgos	0
Revilla Vallejera	Burgos	0
Rezmondo	Burgos	0
Riocavado de la Sierra	Burgos	0
Roa	Burgos	0
Rojas	Burgos	0
Royuela de R??o Franco	Burgos	0
Rubena	Burgos	0
Rublacedo de Abajo	Burgos	0
Rucandio	Burgos	0
Salas de Bureba	Burgos	0
Salas de los Infantes	Burgos	0
Salda??a de Burgos	Burgos	0
Salinillas de Bureba	Burgos	0
San Adri??n de Juarros	Burgos	0
San Juan del Monte	Burgos	0
San Mam??s de Burgos	Burgos	0
San Mart??n de Rubiales	Burgos	0
San Mill??n de Lara	Burgos	0
Santa Cecilia	Burgos	0
Santa Cruz de la Salceda	Burgos	0
Santa Cruz del Valle Urbi??n	Burgos	0
Santa Gadea del Cid	Burgos	0
Santa In??s	Burgos	0
Santa Mar??a del Campo	Burgos	0
Santa Mar??a del Invierno	Burgos	0
Santa Mar??a del Mercadillo	Burgos	0
Santa Mar??a Rivarredonda	Burgos	0
Santa Olalla de Bureba	Burgos	0
Santib????ez de Esgueva	Burgos	0
Santib????ez del Val	Burgos	0
Santo Domingo de Silos	Burgos	0
San Vicente del Valle	Burgos	0
Sargentes de la Lora	Burgos	0
Sarrac??n	Burgos	0
Sasam??n	Burgos	0
Sequera de Haza, La	Burgos	0
Solarana	Burgos	0
Sordillos	Burgos	0
Sotillo de la Ribera	Burgos	0
Sotragero	Burgos	0
Sotresgudo	Burgos	0
Susinos del P??ramo	Burgos	0
Tamar??n	Burgos	0
Tardajos	Burgos	0
Tejada	Burgos	0
Terradillos de Esgueva	Burgos	0
Tinieblas de la Sierra	Burgos	0
Tobar	Burgos	0
Tord??mar	Burgos	0
Torrecilla del Monte	Burgos	0
Torregalindo	Burgos	0
Torrelara	Burgos	0
Torrepadre	Burgos	0
Torresandino	Burgos	0
T??rtoles de Esgueva	Burgos	0
Tosantos	Burgos	0
Trespaderne	Burgos	0
Tubilla del Agua	Burgos	0
Tubilla del Lago	Burgos	0
??rbel del Castillo	Burgos	0
Vadocondes	Burgos	0
Valdeande	Burgos	0
Valdezate	Burgos	0
Valdorros	Burgos	0
Valmala	Burgos	0
Vallarta de Bureba	Burgos	0
Valle de Manzanedo	Burgos	0
Valle de Mena	Burgos	0
Valle de Oca	Burgos	0
Valle de Tobalina	Burgos	0
Valle de Valdebezana	Burgos	0
Valle de Valdelaguna	Burgos	0
Valle de Valdelucio	Burgos	0
Valle de Zamanzas	Burgos	0
Vallejera	Burgos	0
Valles de Palenzuela	Burgos	0
Vallu??rcanes	Burgos	0
Vid y Barrios, La	Burgos	0
Vid de Bureba, La	Burgos	0
Vile??a	Burgos	0
Viloria de Rioja	Burgos	0
Vilviestre del Pinar	Burgos	0
Villadiego	Burgos	0
Villaescusa de Roa	Burgos	0
Villaescusa la Sombr??a	Burgos	0
Villaespasa	Burgos	0
Villafranca Montes de Oca	Burgos	0
Villafruela	Burgos	0
Villagalijo	Burgos	0
Villagonzalo Pedernales	Burgos	0
Villahoz	Burgos	0
Villalba de Duero	Burgos	0
Villalbilla de Burgos	Burgos	0
Villalbilla de Gumiel	Burgos	0
Villaldemiro	Burgos	0
Villalmanzo	Burgos	0
Villamayor de los Montes	Burgos	0
Villamayor de Trevi??o	Burgos	0
Villambistia	Burgos	0
Villamedianilla	Burgos	0
Villamiel de la Sierra	Burgos	0
Villang??mez	Burgos	0
Villanueva de Arga??o	Burgos	0
Villanueva de Carazo	Burgos	0
Villanueva de Gumiel	Burgos	0
Villanueva de Teba	Burgos	0
Villaquir??n de la Puebla	Burgos	0
Villaquir??n de los Infantes	Burgos	0
Villariezo	Burgos	0
Villasandino	Burgos	0
Villasur de Herreros	Burgos	0
Villatuelda	Burgos	0
Villaverde del Monte	Burgos	0
Villaverde-Mogina	Burgos	0
Villayerno Morquillas	Burgos	0
Villazopeque	Burgos	0
Villegas	Burgos	0
Villoruebo	Burgos	0
Vizca??nos	Burgos	0
Zael	Burgos	0
Zarzosa de R??o Pisuerga	Burgos	0
Zazuar	Burgos	0
Zu??eda	Burgos	0
Quintanilla del Agua y Tordueles	Burgos	0
Valle de Santib????ez	Burgos	0
Villarcayo de Merindad de Castilla la Vieja	Burgos	0
Valle de las Navas	Burgos	0
Valle de Sedano	Burgos	0
Merindad de R??o Ubierna	Burgos	0
Alfoz de Quintanadue??as	Burgos	0
Valle de Losa	Burgos	0
Abad??a	C??ceres	0
Abertura	C??ceres	0
Acebo	C??ceres	0
Aceh??che	C??ceres	0
Aceituna	C??ceres	0
Ahigal	C??ceres	0
Albal??	C??ceres	0
Alc??ntara	C??ceres	0
Alcollar??n	C??ceres	0
Alcu??scar	C??ceres	0
Aldeacentenera	C??ceres	0
Aldea del Cano	C??ceres	0
Aldea del Obispo, La	C??ceres	0
Aldeanueva de la Vera	C??ceres	0
Aldeanueva del Camino	C??ceres	0
Aldehuela de Jerte	C??ceres	0
Al??a	C??ceres	0
Aliseda	C??ceres	0
Almaraz	C??ceres	0
Almohar??n	C??ceres	0
Arroyo de la Luz	C??ceres	0
Arroyomolinos de la Vera	C??ceres	0
Arroyomolinos	C??ceres	0
Ba??os de Montemayor	C??ceres	0
Barrado	C??ceres	0
Belv??s de Monroy	C??ceres	0
Benquerencia	C??ceres	0
Berrocalejo	C??ceres	0
Berzocana	C??ceres	0
Bohonal de Ibor	C??ceres	0
Botija	C??ceres	0
Brozas	C??ceres	0
Caba??as del Castillo	C??ceres	0
Cabezabellosa	C??ceres	0
Cabezuela del Valle	C??ceres	0
Cabrero	C??ceres	0
C??ceres	C??ceres	0
Cachorrilla	C??ceres	0
Cadalso	C??ceres	0
Calzadilla	C??ceres	0
Caminomorisco	C??ceres	0
Campillo de Deleitosa	C??ceres	0
Campo Lugar	C??ceres	0
Ca??amero	C??ceres	0
Ca??averal	C??ceres	0
Carbajo	C??ceres	0
Carcaboso	C??ceres	0
Carrascalejo	C??ceres	0
Casar de C??ceres	C??ceres	0
Casar de Palomero	C??ceres	0
Casares de las Hurdes	C??ceres	0
Casas de Don Antonio	C??ceres	0
Casas de Don G??mez	C??ceres	0
Casas del Casta??ar	C??ceres	0
Casas del Monte	C??ceres	0
Casas de Mill??n	C??ceres	0
Casas de Miravete	C??ceres	0
Casatejada	C??ceres	0
Casillas de Coria	C??ceres	0
Casta??ar de Ibor	C??ceres	0
Ceclav??n	C??ceres	0
Cedillo	C??ceres	0
Cerezo	C??ceres	0
Cilleros	C??ceres	0
Collado	C??ceres	0
Conquista de la Sierra	C??ceres	0
Coria	C??ceres	0
Cuacos de Yuste	C??ceres	0
Cumbre, La	C??ceres	0
Deleitosa	C??ceres	0
Descargamar??a	C??ceres	0
Eljas	C??ceres	0
Escurial	C??ceres	0
Fresnedoso de Ibor	C??ceres	0
Galisteo	C??ceres	0
Garciaz	C??ceres	0
Garganta, La	C??ceres	0
Garganta la Olla	C??ceres	0
Gargantilla	C??ceres	0
Garg??era	C??ceres	0
Garrovillas de Alcon??tar	C??ceres	0
Garv??n	C??ceres	0
Gata	C??ceres	0
Gordo, El	C??ceres	0
Granja, La	C??ceres	0
Guadalupe	C??ceres	0
Guijo de Coria	C??ceres	0
Guijo de Galisteo	C??ceres	0
Guijo de Granadilla	C??ceres	0
Guijo de Santa B??rbara	C??ceres	0
Herguijuela	C??ceres	0
Hern??n-P??rez	C??ceres	0
Herrera de Alc??ntara	C??ceres	0
Herreruela	C??ceres	0
Herv??s	C??ceres	0
Higuera	C??ceres	0
Hinojal	C??ceres	0
Holguera	C??ceres	0
Hoyos	C??ceres	0
Hu??laga	C??ceres	0
Ibahernando	C??ceres	0
Jaraicejo	C??ceres	0
Jara??z de la Vera	C??ceres	0
Jarandilla de la Vera	C??ceres	0
Jarilla	C??ceres	0
Jerte	C??ceres	0
Ladrillar	C??ceres	0
Logros??n	C??ceres	0
Losar de la Vera	C??ceres	0
Madrigal de la Vera	C??ceres	0
Madrigalejo	C??ceres	0
Madro??era	C??ceres	0
Majadas	C??ceres	0
Malpartida de C??ceres	C??ceres	0
Malpartida de Plasencia	C??ceres	0
Marchagaz	C??ceres	0
Mata de Alc??ntara	C??ceres	0
Membr??o	C??ceres	0
Mesas de Ibor	C??ceres	0
Miajadas	C??ceres	0
Millanes	C??ceres	0
Mirabel	C??ceres	0
Mohedas de Granadilla	C??ceres	0
Monroy	C??ceres	0
Mont??nchez	C??ceres	0
Montehermoso	C??ceres	0
Moraleja	C??ceres	0
Morcillo	C??ceres	0
Navaconcejo	C??ceres	0
Navalmoral de la Mata	C??ceres	0
Navalvillar de Ibor	C??ceres	0
Navas del Madro??o	C??ceres	0
Navezuelas	C??ceres	0
Nu??omoral	C??ceres	0
Oliva de Plasencia	C??ceres	0
Palomero	C??ceres	0
Pasar??n de la Vera	C??ceres	0
Pedroso de Acim	C??ceres	0
Peraleda de la Mata	C??ceres	0
Peraleda de San Rom??n	C??ceres	0
Perales del Puerto	C??ceres	0
Pescueza	C??ceres	0
Pesga, La	C??ceres	0
Piedras Albas	C??ceres	0
Pinofranqueado	C??ceres	0
Piornal	C??ceres	0
Plasencia	C??ceres	0
Plasenzuela	C??ceres	0
Portaje	C??ceres	0
Portezuelo	C??ceres	0
Pozuelo de Zarz??n	C??ceres	0
Puerto de Santa Cruz	C??ceres	0
Rebollar	C??ceres	0
Riolobos	C??ceres	0
Robledillo de Gata	C??ceres	0
Robledillo de la Vera	C??ceres	0
Robledillo de Trujillo	C??ceres	0
Robledollano	C??ceres	0
Romangordo	C??ceres	0
Ruanes	C??ceres	0
Salorino	C??ceres	0
Salvatierra de Santiago	C??ceres	0
San Mart??n de Trevejo	C??ceres	0
Santa Ana	C??ceres	0
Santa Cruz de la Sierra	C??ceres	0
Santa Cruz de Paniagua	C??ceres	0
Santa Marta de Magasca	C??ceres	0
Santiago de Alc??ntara	C??ceres	0
Santiago del Campo	C??ceres	0
Santib????ez el Alto	C??ceres	0
Santib????ez el Bajo	C??ceres	0
Saucedilla	C??ceres	0
Segura de Toro	C??ceres	0
Serradilla	C??ceres	0
Serrej??n	C??ceres	0
Sierra de Fuentes	C??ceres	0
Talav??n	C??ceres	0
Talaveruela de la Vera	C??ceres	0
Talayuela	C??ceres	0
Tejeda de Ti??tar	C??ceres	0
Toril	C??ceres	0
Tornavacas	C??ceres	0
Torno, El	C??ceres	0
Torrecilla de los ??ngeles	C??ceres	0
Torrecillas de la Tiesa	C??ceres	0
Torre de Don Miguel	C??ceres	0
Torre de Santa Mar??a	C??ceres	0
Torrejoncillo	C??ceres	0
Torrej??n el Rubio	C??ceres	0
Torremenga	C??ceres	0
Torremocha	C??ceres	0
Torreorgaz	C??ceres	0
Torrequemada	C??ceres	0
Trujillo	C??ceres	0
Valdastillas	C??ceres	0
Valdeca??as de Tajo	C??ceres	0
Valdefuentes	C??ceres	0
Valdeh??ncar	C??ceres	0
Valdelacasa de Tajo	C??ceres	0
Valdemorales	C??ceres	0
Valdeobispo	C??ceres	0
Valencia de Alc??ntara	C??ceres	0
Valverde de la Vera	C??ceres	0
Valverde del Fresno	C??ceres	0
Viandar de la Vera	C??ceres	0
Villa del Campo	C??ceres	0
Villa del Rey	C??ceres	0
Villames??as	C??ceres	0
Villamiel	C??ceres	0
Villanueva de la Sierra	C??ceres	0
Villanueva de la Vera	C??ceres	0
Villar del Pedroso	C??ceres	0
Villar de Plasencia	C??ceres	0
Villasbuenas de Gata	C??ceres	0
Zarza de Granadilla	C??ceres	0
Zarza de Mont??nchez	C??ceres	0
Zarza la Mayor	C??ceres	0
Zorita	C??ceres	0
Rosalejo	C??ceres	0
Vegaviana	C??ceres	0
Alag??n del R??o	C??ceres	0
Alcal?? de los Gazules	C??diz	0
Alcal?? del Valle	C??diz	0
Algar	C??diz	0
Algeciras	C??diz	0
Algodonales	C??diz	0
Arcos de la Frontera	C??diz	0
Barbate	C??diz	0
Barrios, Los	C??diz	0
Benaocaz	C??diz	0
Bornos	C??diz	0
Bosque, El	C??diz	0
C??diz	C??diz	0
Castellar de la Frontera	C??diz	0
Conil de la Frontera	C??diz	0
Chiclana de la Frontera	C??diz	0
Chipiona	C??diz	0
Espera	C??diz	0
Gastor, El	C??diz	0
Grazalema	C??diz	0
Jerez de la Frontera	C??diz	0
Jimena de la Frontera	C??diz	0
L??nea de la Concepci??n, La	C??diz	0
Medina-Sidonia	C??diz	0
Olvera	C??diz	0
Paterna de Rivera	C??diz	0
Prado del Rey	C??diz	0
Puerto de Santa Mar??a, El	C??diz	0
Puerto Real	C??diz	0
Puerto Serrano	C??diz	0
Rota	C??diz	0
San Fernando	C??diz	0
Sanl??car de Barrameda	C??diz	0
San Roque	C??diz	0
Setenil de las Bodegas	C??diz	0
Tarifa	C??diz	0
Torre Alh??quime	C??diz	0
Trebujena	C??diz	0
Ubrique	C??diz	0
Vejer de la Frontera	C??diz	0
Villaluenga del Rosario	C??diz	0
Villamart??n	C??diz	0
Zahara	C??diz	0
Benalup-Casas Viejas	C??diz	0
San Jos?? del Valle	C??diz	0
Atzeneta del Maestrat	Castell??n/Castell??	0
A??n	Castell??n/Castell??	0
Alboc??sser	Castell??n/Castell??	0
Alcal?? de Xivert	Castell??n/Castell??	0
Alcora, l	Castell??n/Castell??	0
Alcudia de Veo	Castell??n/Castell??	0
Alfondeguilla	Castell??n/Castell??	0
Algimia de Almonacid	Castell??n/Castell??	0
Almazora/Almassora	Castell??n/Castell??	0
Almed??jar	Castell??n/Castell??	0
Almenara	Castell??n/Castell??	0
Altura	Castell??n/Castell??	0
Ara??uel	Castell??n/Castell??	0
Ares del Maestrat	Castell??n/Castell??	0
Argelita	Castell??n/Castell??	0
Artana	Castell??n/Castell??	0
Ay??dar	Castell??n/Castell??	0
Azu??bar	Castell??n/Castell??	0
Barracas	Castell??n/Castell??	0
Betx??	Castell??n/Castell??	0
Bej??s	Castell??n/Castell??	0
Benafer	Castell??n/Castell??	0
Benafigos	Castell??n/Castell??	0
Benasal	Castell??n/Castell??	0
Benicarl??	Castell??n/Castell??	0
Benicasim/Benic??ssim	Castell??n/Castell??	0
Benlloch	Castell??n/Castell??	0
Borriol	Castell??n/Castell??	0
Borriana/Burriana	Castell??n/Castell??	0
Cabanes	Castell??n/Castell??	0
C??lig	Castell??n/Castell??	0
Canet lo Roig	Castell??n/Castell??	0
Castell de Cabres	Castell??n/Castell??	0
Castellfort	Castell??n/Castell??	0
Castellnovo	Castell??n/Castell??	0
Castell??n de la Plana/Castell?? de la Plana	Castell??n/Castell??	0
Castillo de Villamalefa	Castell??n/Castell??	0
Cat??	Castell??n/Castell??	0
Caudiel	Castell??n/Castell??	0
Cervera del Maestre	Castell??n/Castell??	0
Cinctorres	Castell??n/Castell??	0
Cirat	Castell??n/Castell??	0
Cortes de Arenoso	Castell??n/Castell??	0
Costur	Castell??n/Castell??	0
Coves de Vinrom??, les	Castell??n/Castell??	0
Culla	Castell??n/Castell??	0
Chert/Xert	Castell??n/Castell??	0
Chilches/Xilxes	Castell??n/Castell??	0
Chodos/Xodos	Castell??n/Castell??	0
Ch??var	Castell??n/Castell??	0
Eslida	Castell??n/Castell??	0
Espadilla	Castell??n/Castell??	0
Fanzara	Castell??n/Castell??	0
Figueroles	Castell??n/Castell??	0
Forcall	Castell??n/Castell??	0
Fuente la Reina	Castell??n/Castell??	0
Fuentes de Ay??dar	Castell??n/Castell??	0
Gaibiel	Castell??n/Castell??	0
Geldo	Castell??n/Castell??	0
Herb??s	Castell??n/Castell??	0
Higueras	Castell??n/Castell??	0
Jana, la	Castell??n/Castell??	0
J??rica	Castell??n/Castell??	0
Lucena del Cid	Castell??n/Castell??	0
Ludiente	Castell??n/Castell??	0
Llosa, la	Castell??n/Castell??	0
Mata de Morella, la	Castell??n/Castell??	0
Matet	Castell??n/Castell??	0
Moncofa	Castell??n/Castell??	0
Mont??n	Castell??n/Castell??	0
Montanejos	Castell??n/Castell??	0
Morella	Castell??n/Castell??	0
Navajas	Castell??n/Castell??	0
Nules	Castell??n/Castell??	0
Olocau del Rey	Castell??n/Castell??	0
Onda	Castell??n/Castell??	0
Oropesa del Mar/Orpesa	Castell??n/Castell??	0
Palanques	Castell??n/Castell??	0
Pav??as	Castell??n/Castell??	0
Pen??scola/Pe????scola	Castell??n/Castell??	0
Pina de Montalgrao	Castell??n/Castell??	0
Portell de Morella	Castell??n/Castell??	0
Puebla de Arenoso	Castell??n/Castell??	0
Pobla de Benifass??, la	Castell??n/Castell??	0
Pobla Tornesa, la	Castell??n/Castell??	0
Ribesalbes	Castell??n/Castell??	0
Rossell	Castell??n/Castell??	0
Saca??et	Castell??n/Castell??	0
Salzadella, la	Castell??n/Castell??	0
Sant Jordi/San Jorge	Castell??n/Castell??	0
Sant Mateu	Castell??n/Castell??	0
San Rafael del R??o	Castell??n/Castell??	0
Santa Magdalena de Pulpis	Castell??n/Castell??	0
Sarratella	Castell??n/Castell??	0
Segorbe	Castell??n/Castell??	0
Sierra Engarcer??n	Castell??n/Castell??	0
Soneja	Castell??n/Castell??	0
Sot de Ferrer	Castell??n/Castell??	0
Sueras/Suera	Castell??n/Castell??	0
Tales	Castell??n/Castell??	0
Teresa	Castell??n/Castell??	0
T??rig	Castell??n/Castell??	0
Todolella	Castell??n/Castell??	0
Toga	Castell??n/Castell??	0
Tor??s	Castell??n/Castell??	0
Toro, El	Castell??n/Castell??	0
Torralba del Pinar	Castell??n/Castell??	0
Torreblanca	Castell??n/Castell??	0
Torrechiva	Castell??n/Castell??	0
Torre dEn Besora, la	Castell??n/Castell??	0
Torre den Dom??nec, la	Castell??n/Castell??	0
Traiguera	Castell??n/Castell??	0
Useras/Useres, les	Castell??n/Castell??	0
Vallat	Castell??n/Castell??	0
Vall dAlba	Castell??n/Castell??	0
Vall de Almonacid	Castell??n/Castell??	0
Vall dUix??, la	Castell??n/Castell??	0
Vallibona	Castell??n/Castell??	0
Vilafam??s	Castell??n/Castell??	0
Villafranca del Cid/Vilafranca	Castell??n/Castell??	0
Villahermosa del R??o	Castell??n/Castell??	0
Villamalur	Castell??n/Castell??	0
Vilanova dAlcolea	Castell??n/Castell??	0
Villanueva de Viver	Castell??n/Castell??	0
Vilar de Canes	Castell??n/Castell??	0
Vila-real	Castell??n/Castell??	0
Vilavella, la	Castell??n/Castell??	0
Villores	Castell??n/Castell??	0
Vinar??s	Castell??n/Castell??	0
Vistabella del Maestrazgo	Castell??n/Castell??	0
Viver	Castell??n/Castell??	0
Zorita del Maestrazgo	Castell??n/Castell??	0
Zucaina	Castell??n/Castell??	0
Alquer??as del Ni??o Perdido	Castell??n/Castell??	0
Sant Joan de Mor??	Castell??n/Castell??	0
Aben??jar	Ciudad Real	0
Agudo	Ciudad Real	0
Alamillo	Ciudad Real	0
Albaladejo	Ciudad Real	0
Alc??zar de San Juan	Ciudad Real	0
Alcoba	Ciudad Real	0
Alcolea de Calatrava	Ciudad Real	0
Alcubillas	Ciudad Real	0
Aldea del Rey	Ciudad Real	0
Alhambra	Ciudad Real	0
Almad??n	Ciudad Real	0
Almadenejos	Ciudad Real	0
Almagro	Ciudad Real	0
Almedina	Ciudad Real	0
Almod??var del Campo	Ciudad Real	0
Almuradiel	Ciudad Real	0
Anchuras	Ciudad Real	0
Arenas de San Juan	Ciudad Real	0
Argamasilla de Alba	Ciudad Real	0
Argamasilla de Calatrava	Ciudad Real	0
Arroba de los Montes	Ciudad Real	0
Ballesteros de Calatrava	Ciudad Real	0
Bola??os de Calatrava	Ciudad Real	0
Brazatortas	Ciudad Real	0
Cabezarados	Ciudad Real	0
Cabezarrubias del Puerto	Ciudad Real	0
Calzada de Calatrava	Ciudad Real	0
Campo de Criptana	Ciudad Real	0
Ca??ada de Calatrava	Ciudad Real	0
Caracuel de Calatrava	Ciudad Real	0
Carri??n de Calatrava	Ciudad Real	0
Carrizosa	Ciudad Real	0
Castellar de Santiago	Ciudad Real	0
Ciudad Real	Ciudad Real	0
Corral de Calatrava	Ciudad Real	0
Cortijos, Los	Ciudad Real	0
C??zar	Ciudad Real	0
Chill??n	Ciudad Real	0
Daimiel	Ciudad Real	0
Fern??n Caballero	Ciudad Real	0
Fontanarejo	Ciudad Real	0
Fuencaliente	Ciudad Real	0
Fuenllana	Ciudad Real	0
Fuente el Fresno	Ciudad Real	0
Gran??tula de Calatrava	Ciudad Real	0
Guadalmez	Ciudad Real	0
Herencia	Ciudad Real	0
Hinojosas de Calatrava	Ciudad Real	0
Horcajo de los Montes	Ciudad Real	0
Labores, Las	Ciudad Real	0
Luciana	Ciudad Real	0
Malag??n	Ciudad Real	0
Manzanares	Ciudad Real	0
Membrilla	Ciudad Real	0
Mestanza	Ciudad Real	0
Miguelturra	Ciudad Real	0
Montiel	Ciudad Real	0
Moral de Calatrava	Ciudad Real	0
Navalpino	Ciudad Real	0
Navas de Estena	Ciudad Real	0
Pedro Mu??oz	Ciudad Real	0
Pic??n	Ciudad Real	0
Piedrabuena	Ciudad Real	0
Poblete	Ciudad Real	0
Porzuna	Ciudad Real	0
Pozuelo de Calatrava	Ciudad Real	0
Pozuelos de Calatrava, Los	Ciudad Real	0
Puebla de Don Rodrigo	Ciudad Real	0
Puebla del Pr??ncipe	Ciudad Real	0
Puerto L??pice	Ciudad Real	0
Puertollano	Ciudad Real	0
Retuerta del Bullaque	Ciudad Real	0
Saceruela	Ciudad Real	0
San Carlos del Valle	Ciudad Real	0
San Lorenzo de Calatrava	Ciudad Real	0
Santa Cruz de los C????amos	Ciudad Real	0
Santa Cruz de Mudela	Ciudad Real	0
Socu??llamos	Ciudad Real	0
Solana, La	Ciudad Real	0
Solana del Pino	Ciudad Real	0
Terrinches	Ciudad Real	0
Tomelloso	Ciudad Real	0
Torralba de Calatrava	Ciudad Real	0
Torre de Juan Abad	Ciudad Real	0
Torrenueva	Ciudad Real	0
Valdemanco del Esteras	Ciudad Real	0
Valdepe??as	Ciudad Real	0
Valenzuela de Calatrava	Ciudad Real	0
Villahermosa	Ciudad Real	0
Villamanrique	Ciudad Real	0
Villamayor de Calatrava	Ciudad Real	0
Villanueva de la Fuente	Ciudad Real	0
Villanueva de los Infantes	Ciudad Real	0
Villanueva de San Carlos	Ciudad Real	0
Villar del Pozo	Ciudad Real	0
Villarrubia de los Ojos	Ciudad Real	0
Villarta de San Juan	Ciudad Real	0
Viso del Marqu??s	Ciudad Real	0
Robledo, El	Ciudad Real	0
Ruidera	Ciudad Real	0
Arenales de San Gregorio	Ciudad Real	0
Llanos del Caudillo	Ciudad Real	0
Adamuz	C??rdoba	0
Aguilar de la Frontera	C??rdoba	0
Alcaracejos	C??rdoba	0
Almedinilla	C??rdoba	0
Almod??var del R??o	C??rdoba	0
A??ora	C??rdoba	0
Baena	C??rdoba	0
Belalc??zar	C??rdoba	0
Belmez	C??rdoba	0
Benamej??	C??rdoba	0
Bl??zquez, Los	C??rdoba	0
Bujalance	C??rdoba	0
Cabra	C??rdoba	0
Ca??ete de las Torres	C??rdoba	0
Carcabuey	C??rdoba	0
Carde??a	C??rdoba	0
Carlota, La	C??rdoba	0
Carpio, El	C??rdoba	0
Castro del R??o	C??rdoba	0
Conquista	C??rdoba	0
C??rdoba	C??rdoba	0
Do??a Menc??a	C??rdoba	0
Dos Torres	C??rdoba	0
Encinas Reales	C??rdoba	0
Espejo	C??rdoba	0
Espiel	C??rdoba	0
Fern??n-N????ez	C??rdoba	0
Fuente la Lancha	C??rdoba	0
Fuente Obejuna	C??rdoba	0
Fuente Palmera	C??rdoba	0
Fuente-T??jar	C??rdoba	0
Granjuela, La	C??rdoba	0
Guadalc??zar	C??rdoba	0
Guijo, El	C??rdoba	0
Hinojosa del Duque	C??rdoba	0
Hornachuelos	C??rdoba	0
Izn??jar	C??rdoba	0
Lucena	C??rdoba	0
Luque	C??rdoba	0
Montalb??n de C??rdoba	C??rdoba	0
Montemayor	C??rdoba	0
Montilla	C??rdoba	0
Montoro	C??rdoba	0
Monturque	C??rdoba	0
Moriles	C??rdoba	0
Nueva Carteya	C??rdoba	0
Obejo	C??rdoba	0
Palenciana	C??rdoba	0
Palma del R??o	C??rdoba	0
Pedro Abad	C??rdoba	0
Pedroche	C??rdoba	0
Pe??arroya-Pueblonuevo	C??rdoba	0
Posadas	C??rdoba	0
Pozoblanco	C??rdoba	0
Priego de C??rdoba	C??rdoba	0
Puente Genil	C??rdoba	0
Rambla, La	C??rdoba	0
Rute	C??rdoba	0
San Sebasti??n de los Ballesteros	C??rdoba	0
Santaella	C??rdoba	0
Santa Eufemia	C??rdoba	0
Torrecampo	C??rdoba	0
Valenzuela	C??rdoba	0
Valsequillo	C??rdoba	0
Victoria, La	C??rdoba	0
Villa del R??o	C??rdoba	0
Villafranca de C??rdoba	C??rdoba	0
Villaharta	C??rdoba	0
Villanueva de C??rdoba	C??rdoba	0
Villanueva del Duque	C??rdoba	0
Villanueva del Rey	C??rdoba	0
Villaralto	C??rdoba	0
Villaviciosa de C??rdoba	C??rdoba	0
Viso, El	C??rdoba	0
Zuheros	C??rdoba	0
Abegondo	Coru??a (A)	0
Ames	Coru??a (A)	0
Aranga	Coru??a (A)	0
Ares	Coru??a (A)	0
Arteixo	Coru??a (A)	0
Arz??a	Coru??a (A)	0
Ba??a, A	Coru??a (A)	0
Bergondo	Coru??a (A)	0
Betanzos	Coru??a (A)	0
Boimorto	Coru??a (A)	0
Boiro	Coru??a (A)	0
Boqueix??n	Coru??a (A)	0
Bri??n	Coru??a (A)	0
Cabana de Berganti??os	Coru??a (A)	0
Cabanas	Coru??a (A)	0
Camari??as	Coru??a (A)	0
Cambre	Coru??a (A)	0
Capela, A	Coru??a (A)	0
Carballo	Coru??a (A)	0
Carnota	Coru??a (A)	0
Carral	Coru??a (A)	0
Cedeira	Coru??a (A)	0
Cee	Coru??a (A)	0
Cerceda	Coru??a (A)	0
Cerdido	Coru??a (A)	0
Cesuras	Coru??a (A)	0
Coir??s	Coru??a (A)	0
Corcubi??n	Coru??a (A)	0
Coristanco	Coru??a (A)	0
Coru??a, A	Coru??a (A)	0
Culleredo	Coru??a (A)	0
Curtis	Coru??a (A)	0
Dodro	Coru??a (A)	0
Dumbr??a	Coru??a (A)	0
Fene	Coru??a (A)	0
Ferrol	Coru??a (A)	0
Fisterra	Coru??a (A)	0
Frades	Coru??a (A)	0
Irixoa	Coru??a (A)	0
Laxe	Coru??a (A)	0
Laracha, A	Coru??a (A)	0
Lousame	Coru??a (A)	0
Malpica de Berganti??os	Coru??a (A)	0
Ma????n	Coru??a (A)	0
Mazaricos	Coru??a (A)	0
Melide	Coru??a (A)	0
Mes??a	Coru??a (A)	0
Mi??o	Coru??a (A)	0
Moeche	Coru??a (A)	0
Monfero	Coru??a (A)	0
Mugardos	Coru??a (A)	0
Mux??a	Coru??a (A)	0
Muros	Coru??a (A)	0
Nar??n	Coru??a (A)	0
Neda	Coru??a (A)	0
Negreira	Coru??a (A)	0
Noia	Coru??a (A)	0
Oleiros	Coru??a (A)	0
Ordes	Coru??a (A)	0
Oroso	Coru??a (A)	0
Ortigueira	Coru??a (A)	0
Outes	Coru??a (A)	0
Oza dos R??os	Coru??a (A)	0
Paderne	Coru??a (A)	0
Padr??n	Coru??a (A)	0
Pino, O	Coru??a (A)	0
Pobra do Carami??al, A	Coru??a (A)	0
Ponteceso	Coru??a (A)	0
Pontedeume	Coru??a (A)	0
Pontes de Garc??a Rodr??guez, As	Coru??a (A)	0
Porto do Son	Coru??a (A)	0
Rianxo	Coru??a (A)	0
Ribeira	Coru??a (A)	0
Rois	Coru??a (A)	0
Sada	Coru??a (A)	0
San Sadurni??o	Coru??a (A)	0
Santa Comba	Coru??a (A)	0
Santiago de Compostela	Coru??a (A)	0
Santiso	Coru??a (A)	0
Sobrado	Coru??a (A)	0
Somozas, As	Coru??a (A)	0
Teo	Coru??a (A)	0
Toques	Coru??a (A)	0
Tordoia	Coru??a (A)	0
Touro	Coru??a (A)	0
Trazo	Coru??a (A)	0
Valdovi??o	Coru??a (A)	0
Val do Dubra	Coru??a (A)	0
Vedra	Coru??a (A)	0
Vilasantar	Coru??a (A)	0
Vilarmaior	Coru??a (A)	0
Vimianzo	Coru??a (A)	0
Zas	Coru??a (A)	0
Cari??o	Coru??a (A)	0
Abia de la Obispal??a	Cuenca	0
Acebr??n, El	Cuenca	0
Alarc??n	Cuenca	0
Albaladejo del Cuende	Cuenca	0
Albalate de las Nogueras	Cuenca	0
Albendea	Cuenca	0
Alberca de Z??ncara, La	Cuenca	0
Alcal?? de la Vega	Cuenca	0
Alcantud	Cuenca	0
Alc??zar del Rey	Cuenca	0
Alcohujate	Cuenca	0
Alconchel de la Estrella	Cuenca	0
Algarra	Cuenca	0
Aliaguilla	Cuenca	0
Almarcha, La	Cuenca	0
Almendros	Cuenca	0
Almod??var del Pinar	Cuenca	0
Almonacid del Marquesado	Cuenca	0
Altarejos	Cuenca	0
Arandilla del Arroyo	Cuenca	0
Arcos de la Sierra	Cuenca	0
Chillar??n de Cuenca	Cuenca	0
Arguisuelas	Cuenca	0
Arrancacepas	Cuenca	0
Atalaya del Ca??avate	Cuenca	0
Barajas de Melo	Cuenca	0
Barch??n del Hoyo	Cuenca	0
Bascu??ana de San Pedro	Cuenca	0
Beamud	Cuenca	0
Belinch??n	Cuenca	0
Belmonte	Cuenca	0
Belmontejo	Cuenca	0
Beteta	Cuenca	0
Boniches	Cuenca	0
Buciegas	Cuenca	0
Buenache de Alarc??n	Cuenca	0
Buenache de la Sierra	Cuenca	0
Buend??a	Cuenca	0
Campillo de Altobuey	Cuenca	0
Campillos-Paravientos	Cuenca	0
Campillos-Sierra	Cuenca	0
Canalejas del Arroyo	Cuenca	0
Ca??ada del Hoyo	Cuenca	0
Ca??ada Juncosa	Cuenca	0
Ca??amares	Cuenca	0
Ca??avate, El	Cuenca	0
Ca??averas	Cuenca	0
Ca??averuelas	Cuenca	0
Ca??ete	Cuenca	0
Ca??izares	Cuenca	0
Carboneras de Guadaza??n	Cuenca	0
Cardenete	Cuenca	0
Carrascosa	Cuenca	0
Carrascosa de Haro	Cuenca	0
Casas de Ben??tez	Cuenca	0
Casas de Fernando Alonso	Cuenca	0
Casas de Garcimolina	Cuenca	0
Casas de Guijarro	Cuenca	0
Casas de Haro	Cuenca	0
Casas de los Pinos	Cuenca	0
Casasimarro	Cuenca	0
Castej??n	Cuenca	0
Castillejo de Iniesta	Cuenca	0
Castillejo-Sierra	Cuenca	0
Castillo-Albar????ez	Cuenca	0
Castillo de Garcimu??oz	Cuenca	0
Cervera del Llano	Cuenca	0
Cierva, La	Cuenca	0
Cuenca	Cuenca	0
Cueva del Hierro	Cuenca	0
Chumillas	Cuenca	0
Engu??danos	Cuenca	0
Fresneda de Altarejos	Cuenca	0
Fresneda de la Sierra	Cuenca	0
Frontera, La	Cuenca	0
Fuente de Pedro Naharro	Cuenca	0
Fuentelespino de Haro	Cuenca	0
Fuentelespino de Moya	Cuenca	0
Fuentes	Cuenca	0
Fuertescusa	Cuenca	0
Gabald??n	Cuenca	0
Garaballa	Cuenca	0
Gascue??a	Cuenca	0
Graja de Campalbo	Cuenca	0
Graja de Iniesta	Cuenca	0
Henarejos	Cuenca	0
Herrumblar, El	Cuenca	0
Hinojosa, La	Cuenca	0
Hinojosos, Los	Cuenca	0
Hito, El	Cuenca	0
Honrubia	Cuenca	0
Hontanaya	Cuenca	0
Hontecillas	Cuenca	0
Horcajo de Santiago	Cuenca	0
Hu??lamo	Cuenca	0
Huelves	Cuenca	0
Hu??rguina	Cuenca	0
Huerta de la Obispal??a	Cuenca	0
Huerta del Marquesado	Cuenca	0
Huete	Cuenca	0
Iniesta	Cuenca	0
Laguna del Marquesado	Cuenca	0
Lagunaseca	Cuenca	0
Landete	Cuenca	0
Leda??a	Cuenca	0
Leganiel	Cuenca	0
Majadas, Las	Cuenca	0
Mariana	Cuenca	0
Masegosa	Cuenca	0
Mesas, Las	Cuenca	0
Minglanilla	Cuenca	0
Mira	Cuenca	0
Monreal del Llano	Cuenca	0
Montalbanejo	Cuenca	0
Montalbo	Cuenca	0
Monteagudo de las Salinas	Cuenca	0
Mota de Altarejos	Cuenca	0
Mota del Cuervo	Cuenca	0
Motilla del Palancar	Cuenca	0
Moya	Cuenca	0
Narboneta	Cuenca	0
Olivares de J??car	Cuenca	0
Olmeda de la Cuesta	Cuenca	0
Olmeda del Rey	Cuenca	0
Olmedilla de Alarc??n	Cuenca	0
Olmedilla de Eliz	Cuenca	0
Osa de la Vega	Cuenca	0
Pajar??n	Cuenca	0
Pajaroncillo	Cuenca	0
Palomares del Campo	Cuenca	0
Palomera	Cuenca	0
Paracuellos	Cuenca	0
Paredes	Cuenca	0
Parra de las Vegas, La	Cuenca	0
Pedernoso, El	Cuenca	0
Pedro??eras, Las	Cuenca	0
Peral, El	Cuenca	0
Peraleja, La	Cuenca	0
Pesquera, La	Cuenca	0
Picazo, El	Cuenca	0
Pinarejo	Cuenca	0
Pineda de Gig??ela	Cuenca	0
Piqueras del Castillo	Cuenca	0
Portalrubio de Guadamejud	Cuenca	0
Portilla	Cuenca	0
Poyatos	Cuenca	0
Pozoamargo	Cuenca	0
Pozorrubio	Cuenca	0
Pozuelo, El	Cuenca	0
Priego	Cuenca	0
Provencio, El	Cuenca	0
Puebla de Almenara	Cuenca	0
Valle de Altomira, El	Cuenca	0
Puebla del Salvador	Cuenca	0
Quintanar del Rey	Cuenca	0
Rada de Haro	Cuenca	0
Re??llo	Cuenca	0
Rozal??n del Monte	Cuenca	0
Saceda-Trasierra	Cuenca	0
Saelices	Cuenca	0
Salinas del Manzano	Cuenca	0
Salmeroncillos	Cuenca	0
Salvaca??ete	Cuenca	0
San Clemente	Cuenca	0
San Lorenzo de la Parrilla	Cuenca	0
San Mart??n de Boniches	Cuenca	0
San Pedro Palmiches	Cuenca	0
Santa Cruz de Moya	Cuenca	0
Santa Mar??a del Campo Rus	Cuenca	0
Santa Mar??a de los Llanos	Cuenca	0
Santa Mar??a del Val	Cuenca	0
Sisante	Cuenca	0
Solera de Gabald??n	Cuenca	0
Talayuelas	Cuenca	0
Taranc??n	Cuenca	0
T??bar	Cuenca	0
Tejadillos	Cuenca	0
Tinajas	Cuenca	0
Torralba	Cuenca	0
Torrejoncillo del Rey	Cuenca	0
Torrubia del Campo	Cuenca	0
Torrubia del Castillo	Cuenca	0
Tragacete	Cuenca	0
Tresjuncos	Cuenca	0
Tribaldos	Cuenca	0
Ucl??s	Cuenca	0
U??a	Cuenca	0
Valdemeca	Cuenca	0
Valdemorillo de la Sierra	Cuenca	0
Valdemoro-Sierra	Cuenca	0
Valdeolivas	Cuenca	0
Valhermoso de la Fuente	Cuenca	0
Valsalobre	Cuenca	0
Valverde de J??car	Cuenca	0
Valverdejo	Cuenca	0
Vara de Rey	Cuenca	0
Vega del Codorno	Cuenca	0
Vellisca	Cuenca	0
Villaconejos de Trabaque	Cuenca	0
Villaescusa de Haro	Cuenca	0
Villagarc??a del Llano	Cuenca	0
Villalba de la Sierra	Cuenca	0
Villalba del Rey	Cuenca	0
Villalgordo del Marquesado	Cuenca	0
Villalpardo	Cuenca	0
Villamayor de Santiago	Cuenca	0
Villanueva de Guadamejud	Cuenca	0
Villanueva de la Jara	Cuenca	0
Villar de Ca??as	Cuenca	0
Villar de Domingo Garc??a	Cuenca	0
Villar de la Encina	Cuenca	0
Villar del Humo	Cuenca	0
Villar del Infantado	Cuenca	0
Villar de Olalla	Cuenca	0
Villarejo de Fuentes	Cuenca	0
Villarejo de la Pe??uela	Cuenca	0
Villarejo-Periesteban	Cuenca	0
Villares del Saz	Cuenca	0
Villarrubio	Cuenca	0
Villarta	Cuenca	0
Villas de la Ventosa	Cuenca	0
Villaverde y Pasaconsol	Cuenca	0
V??llora	Cuenca	0
Vindel	Cuenca	0
Y??meda	Cuenca	0
Zafra de Z??ncara	Cuenca	0
Zafrilla	Cuenca	0
Zarza de Tajo	Cuenca	0
Zarzuela	Cuenca	0
Campos del Para??so	Cuenca	0
Valdet??rtola	Cuenca	0
Valeras, Las	Cuenca	0
Fuentenava de J??baga	Cuenca	0
Arcas del Villar	Cuenca	0
Valdecolmenas, Los	Cuenca	0
Pozorrubielos de la Mancha	Cuenca	0
Sotorribas	Cuenca	0
Villar y Velasco	Cuenca	0
Agullana	Girona	0
Aiguaviva	Girona	0
Albany??	Girona	0
Albons	Girona	0
Far dEmpord??, El	Girona	0
Alp	Girona	0
Amer	Girona	0
Angl??s	Girona	0
Arb??cies	Girona	0
Argelaguer	Girona	0
Armentera, L	Girona	0
Avinyonet de Puigvent??s	Girona	0
Begur	Girona	0
Vajol, La	Girona	0
Banyoles	Girona	0
B??scara	Girona	0
Bellcaire dEmpord??	Girona	0
Besal??	Girona	0
Bescan??	Girona	0
Beuda	Girona	0
Bisbal dEmpord??, La	Girona	0
Blanes	Girona	0
Bolvir	Girona	0
Bordils	Girona	0
Borrass??	Girona	0
Breda	Girona	0
Brunyola	Girona	0
Boadella i les Escaules	Girona	0
Cabanes	Girona	0
Cabanelles	Girona	0
Cadaqu??s	Girona	0
Caldes de Malavella	Girona	0
Calonge	Girona	0
Cam??s	Girona	0
Campdev??nol	Girona	0
Campelles	Girona	0
Campllong	Girona	0
Camprodon	Girona	0
Canet dAdri	Girona	0
Cantallops	Girona	0
Capmany	Girona	0
Queralbs	Girona	0
Cass?? de la Selva	Girona	0
Castellfollit de la Roca	Girona	0
Castell?? dEmp??ries	Girona	0
Castell-Platja dAro	Girona	0
Celr??	Girona	0
Cervi?? de Ter	Girona	0
Cistella	Girona	0
Siurana	Girona	0
Colera	Girona	0
Colomers	Girona	0
Cornell?? del Terri	Girona	0
Cor????	Girona	0
Crespi??	Girona	0
Darnius	Girona	0
Das	Girona	0
Escala, L	Girona	0
Espinelves	Girona	0
Espolla	Girona	0
Esponell??	Girona	0
Figueres	Girona	0
Fla????	Girona	0
Foix??	Girona	0
Fontanals de Cerdanya	Girona	0
Fontanilles	Girona	0
Fontcoberta	Girona	0
Fornells de la Selva	Girona	0
Forti??	Girona	0
Garrig??s	Girona	0
Garrigoles	Girona	0
Garriguella	Girona	0
Ger	Girona	0
Girona	Girona	0
Gombr??n	Girona	0
Gualta	Girona	0
Guils de Cerdanya	Girona	0
Hostalric	Girona	0
Is??vol	Girona	0
Jafre	Girona	0
Jonquera, La	Girona	0
Jui??	Girona	0
Llad??	Girona	0
Llagostera	Girona	0
Llambilles	Girona	0
Llanars	Girona	0
Llan????	Girona	0
Llers	Girona	0
Ll??via	Girona	0
Lloret de Mar	Girona	0
Llosses, Les	Girona	0
Madremanya	Girona	0
Mai?? de Montcal	Girona	0
Meranges	Girona	0
Masarac	Girona	0
Massanes	Girona	0
Ma??anet de Cabrenys	Girona	0
Ma??anet de la Selva	Girona	0
Mieres	Girona	0
Mollet de Peralada	Girona	0
Moll??	Girona	0
Montagut i Oix	Girona	0
Mont-ras	Girona	0
Navata	Girona	0
Ogassa	Girona	0
Olot	Girona	0
Ordis	Girona	0
Osor	Girona	0
Palafrugell	Girona	0
Palam??s	Girona	0
Palau de Santa Eul??lia	Girona	0
Palau-saverdera	Girona	0
Palau-sator	Girona	0
Palol de Revardit	Girona	0
Pals	Girona	0
Pardines	Girona	0
Parlav??	Girona	0
Pau	Girona	0
Pedret i Marz??	Girona	0
Pera, La	Girona	0
Peralada	Girona	0
Planes dHostoles, Les	Girona	0
Planoles	Girona	0
Pont de Molins	Girona	0
Pont??s	Girona	0
Porqueres	Girona	0
Portbou	Girona	0
Preses, Les	Girona	0
Port de la Selva, El	Girona	0
Puigcerd??	Girona	0
Quart	Girona	0
Rab??s	Girona	0
Regenc??s	Girona	0
Ribes de Freser	Girona	0
Riells i Viabrea	Girona	0
Ripoll	Girona	0
Riudarenes	Girona	0
Riudaura	Girona	0
Riudellots de la Selva	Girona	0
Riumors	Girona	0
Roses	Girona	0
Rupi??	Girona	0
Sales de Llierca	Girona	0
Salt	Girona	0
Sant Andreu Salou	Girona	0
Sant Climent Sescebes	Girona	0
Sant Feliu de Buixalleu	Girona	0
Sant Feliu de Gu??xols	Girona	0
Sant Feliu de Pallerols	Girona	0
Sant Ferriol	Girona	0
Sant Gregori	Girona	0
Sant Hilari Sacalm	Girona	0
Sant Jaume de Llierca	Girona	0
Sant Jordi Desvalls	Girona	0
Sant Joan de les Abadesses	Girona	0
Sant Joan de Mollet	Girona	0
Sant Juli?? de Ramis	Girona	0
Vallfogona de Ripoll??s	Girona	0
Sant Lloren?? de la Muga	Girona	0
Sant Mart?? de Ll??mena	Girona	0
Sant Mart?? Vell	Girona	0
Sant Miquel de Campmajor	Girona	0
Sant Miquel de Fluvi??	Girona	0
Sant Mori	Girona	0
Sant Pau de Seg??ries	Girona	0
Sant Pere Pescador	Girona	0
Santa Coloma de Farners	Girona	0
Santa Cristina dAro	Girona	0
Santa Llogaia d??lguema	Girona	0
Sant Aniol de Finestres	Girona	0
Santa Pau	Girona	0
Sant Joan les Fonts	Girona	0
Sarri?? de Ter	Girona	0
Saus, Camallera i Llampaies	Girona	0
Selva de Mar, La	Girona	0
Cellera de Ter, La	Girona	0
Seriny??	Girona	0
Serra de Dar??	Girona	0
Setcases	Girona	0
Sils	Girona	0
Susqueda	Girona	0
Tallada dEmpord??, La	Girona	0
Terrades	Girona	0
Torrent	Girona	0
Torroella de Fluvi??	Girona	0
Torroella de Montgr??	Girona	0
Tortell??	Girona	0
Toses	Girona	0
Tossa de Mar	Girona	0
Ultramort	Girona	0
Ull??	Girona	0
Ullastret	Girona	0
Ur??s	Girona	0
Vall den Bas, La	Girona	0
Vall de Bianya, La	Girona	0
Vall-llobrega	Girona	0
Ventall??	Girona	0
Verges	Girona	0
Vidr??	Girona	0
Vidreres	Girona	0
Vilabertran	Girona	0
Vilablareix	Girona	0
Viladasens	Girona	0
Viladamat	Girona	0
Vilademuls	Girona	0
Viladrau	Girona	0
Vilafant	Girona	0
Vila??r	Girona	0
Vilaju??ga	Girona	0
Vilallonga de Ter	Girona	0
Vilamacolum	Girona	0
Vilamalla	Girona	0
Vilamaniscle	Girona	0
Vilanant	Girona	0
Vila-sacra	Girona	0
Vilopriu	Girona	0
Vilob?? dOnyar	Girona	0
Biure	Girona	0
Cru??lles, Monells i Sant Sadurn?? de lHeura	Girona	0
Forallac	Girona	0
Sant Juli?? del Llor i Bonmat??	Girona	0
Agr??n	Granada	0
Alamedilla	Granada	0
Albolote	Granada	0
Albond??n	Granada	0
Albu????n	Granada	0
Albu??ol	Granada	0
Albu??uelas	Granada	0
Aldeire	Granada	0
Alfacar	Granada	0
Algarinejo	Granada	0
Alhama de Granada	Granada	0
Alhend??n	Granada	0
Alic??n de Ortega	Granada	0
Almeg??jar	Granada	0
Almu????car	Granada	0
Alquife	Granada	0
Arenas del Rey	Granada	0
Armilla	Granada	0
Atarfe	Granada	0
Baza	Granada	0
Beas de Granada	Granada	0
Beas de Guadix	Granada	0
Benal??a	Granada	0
Benal??a de las Villas	Granada	0
Benamaurel	Granada	0
B??rchules	Granada	0
Bubi??n	Granada	0
Busqu??star	Granada	0
Cac??n	Granada	0
C??diar	Granada	0
C??jar	Granada	0
Calicasas	Granada	0
Campot??jar	Granada	0
Caniles	Granada	0
C????ar	Granada	0
Capileira	Granada	0
Carataunas	Granada	0
C??staras	Granada	0
Castill??jar	Granada	0
Castril	Granada	0
Cenes de la Vega	Granada	0
Cijuela	Granada	0
Cogollos de Guadix	Granada	0
Cogollos de la Vega	Granada	0
Colomera	Granada	0
Cortes de Baza	Granada	0
Cortes y Graena	Granada	0
C??llar	Granada	0
C??llar Vega	Granada	0
Chauchina	Granada	0
Chimeneas	Granada	0
Churriana de la Vega	Granada	0
Darro	Granada	0
Dehesas de Guadix	Granada	0
Deifontes	Granada	0
Diezma	Granada	0
D??lar	Granada	0
D??lar	Granada	0
D??dar	Granada	0
D??rcal	Granada	0
Esc??zar	Granada	0
Ferreira	Granada	0
Fonelas	Granada	0
Freila	Granada	0
Fuente Vaqueros	Granada	0
Galera	Granada	0
Gobernador	Granada	0
G??jar	Granada	0
Gor	Granada	0
Gorafe	Granada	0
Granada	Granada	0
Guadahortuna	Granada	0
Guadix	Granada	0
Gualchos	Granada	0
G??ejar Sierra	Granada	0
G??ev??jar	Granada	0
Hu??lago	Granada	0
Hu??neja	Granada	0
Hu??scar	Granada	0
Hu??tor de Santill??n	Granada	0
Hu??tor T??jar	Granada	0
Hu??tor Vega	Granada	0
Illora	Granada	0
Itrabo	Granada	0
Iznalloz	Granada	0
Jayena	Granada	0
Jerez del Marquesado	Granada	0
Jete	Granada	0
Jun	Granada	0
Juviles	Granada	0
Calahorra, La	Granada	0
L??char	Granada	0
Lanjar??n	Granada	0
Lanteira	Granada	0
Lecr??n	Granada	0
Lenteg??	Granada	0
Lobras	Granada	0
Loja	Granada	0
Lugros	Granada	0
L??jar	Granada	0
Malah??, La	Granada	0
Maracena	Granada	0
Marchal	Granada	0
Mocl??n	Granada	0
Molv??zar	Granada	0
Monachil	Granada	0
Montefr??o	Granada	0
Montej??car	Granada	0
Montillana	Granada	0
Moraleda de Zafayona	Granada	0
Motril	Granada	0
Murtas	Granada	0
Nig??elas	Granada	0
N??var	Granada	0
Og??jares	Granada	0
Orce	Granada	0
??rgiva	Granada	0
Ot??var	Granada	0
Otura	Granada	0
Padul	Granada	0
Pampaneira	Granada	0
Pedro Mart??nez	Granada	0
Peligros	Granada	0
Peza, La	Granada	0
Pinos Genil	Granada	0
Pinos Puente	Granada	0
P????ar	Granada	0
Pol??car	Granada	0
Polopos	Granada	0
P??rtugos	Granada	0
Puebla de Don Fadrique	Granada	0
Pulianas	Granada	0
Purullena	Granada	0
Qu??ntar	Granada	0
Rubite	Granada	0
Salar	Granada	0
Salobre??a	Granada	0
Santa Cruz del Comercio	Granada	0
Santa Fe	Granada	0
Soport??jar	Granada	0
Sorvil??n	Granada	0
Torre-Cardela	Granada	0
Torvizc??n	Granada	0
Trev??lez	Granada	0
Tur??n	Granada	0
Ug??jar	Granada	0
V??lor	Granada	0
V??lez de Benaudalla	Granada	0
Ventas de Huelma	Granada	0
Villanueva de las Torres	Granada	0
Villanueva Mes??a	Granada	0
V??znar	Granada	0
Zafarraya	Granada	0
Zubia, La	Granada	0
Z??jar	Granada	0
Taha, La	Granada	0
Valle, El	Granada	0
Nevada	Granada	0
Alpujarra de la Sierra	Granada	0
Gabias, Las	Granada	0
Guajares, Los	Granada	0
Valle del Zalab??	Granada	0
Villamena	Granada	0
Morel??bor	Granada	0
Pinar, El	Granada	0
Vegas del Genil	Granada	0
Cuevas del Campo	Granada	0
Zagra	Granada	0
Ab??nades	Guadalajara	0
Ablanque	Guadalajara	0
Adobes	Guadalajara	0
Alaminos	Guadalajara	0
Alarilla	Guadalajara	0
Albalate de Zorita	Guadalajara	0
Albares	Guadalajara	0
Albendiego	Guadalajara	0
Alcocer	Guadalajara	0
Alcolea de las Pe??as	Guadalajara	0
Alcolea del Pinar	Guadalajara	0
Alcoroches	Guadalajara	0
Aldeanueva de Guadalajara	Guadalajara	0
Algar de Mesa	Guadalajara	0
Algora	Guadalajara	0
Alh??ndiga	Guadalajara	0
Alique	Guadalajara	0
Almadrones	Guadalajara	0
Almoguera	Guadalajara	0
Almonacid de Zorita	Guadalajara	0
Aloc??n	Guadalajara	0
Alovera	Guadalajara	0
Alustante	Guadalajara	0
Ang??n	Guadalajara	0
Anguita	Guadalajara	0
Anquela del Ducado	Guadalajara	0
Anquela del Pedregal	Guadalajara	0
Aranzueque	Guadalajara	0
Arbanc??n	Guadalajara	0
Arbeteta	Guadalajara	0
Argecilla	Guadalajara	0
Armallones	Guadalajara	0
Armu??a de Taju??a	Guadalajara	0
Arroyo de las Fraguas	Guadalajara	0
Atanz??n	Guadalajara	0
Atienza	Guadalajara	0
Au????n	Guadalajara	0
Azuqueca de Henares	Guadalajara	0
Baides	Guadalajara	0
Ba??os de Tajo	Guadalajara	0
Ba??uelos	Guadalajara	0
Barriopedro	Guadalajara	0
Berninches	Guadalajara	0
Bodera, La	Guadalajara	0
Brihuega	Guadalajara	0
Budia	Guadalajara	0
Bujalaro	Guadalajara	0
Bustares	Guadalajara	0
Cabanillas del Campo	Guadalajara	0
Campillo de Due??as	Guadalajara	0
Campillo de Ranas	Guadalajara	0
Campis??balos	Guadalajara	0
Canredondo	Guadalajara	0
Cantalojas	Guadalajara	0
Ca??izar	Guadalajara	0
Cardoso de la Sierra, El	Guadalajara	0
Casa de Uceda	Guadalajara	0
Casar, El	Guadalajara	0
Casas de San Galindo	Guadalajara	0
Caspue??as	Guadalajara	0
Castej??n de Henares	Guadalajara	0
Castellar de la Muela	Guadalajara	0
Castilforte	Guadalajara	0
Castilnuevo	Guadalajara	0
Cendejas de Enmedio	Guadalajara	0
Cendejas de la Torre	Guadalajara	0
Centenera	Guadalajara	0
Cifuentes	Guadalajara	0
Cincovillas	Guadalajara	0
Ciruelas	Guadalajara	0
Ciruelos del Pinar	Guadalajara	0
Cobeta	Guadalajara	0
Cogollor	Guadalajara	0
Cogolludo	Guadalajara	0
Condemios de Abajo	Guadalajara	0
Condemios de Arriba	Guadalajara	0
Congostrina	Guadalajara	0
Copernal	Guadalajara	0
Corduente	Guadalajara	0
Cubillo de Uceda, El	Guadalajara	0
Checa	Guadalajara	0
Chequilla	Guadalajara	0
Chiloeches	Guadalajara	0
Chillar??n del Rey	Guadalajara	0
Driebes	Guadalajara	0
Dur??n	Guadalajara	0
Embid	Guadalajara	0
Escamilla	Guadalajara	0
Escariche	Guadalajara	0
Escopete	Guadalajara	0
Espinosa de Henares	Guadalajara	0
Esplegares	Guadalajara	0
Establ??s	Guadalajara	0
Estri??gana	Guadalajara	0
Fontanar	Guadalajara	0
Fuembellida	Guadalajara	0
Fuencemill??n	Guadalajara	0
Fuentelahiguera de Albatages	Guadalajara	0
Fuentelencina	Guadalajara	0
Fuentelsaz	Guadalajara	0
Fuentelviejo	Guadalajara	0
Fuentenovilla	Guadalajara	0
Gajanejos	Guadalajara	0
Gal??pagos	Guadalajara	0
Galve de Sorbe	Guadalajara	0
Gascue??a de Bornova	Guadalajara	0
Guadalajara	Guadalajara	0
Henche	Guadalajara	0
Heras de Ayuso	Guadalajara	0
Herrer??a	Guadalajara	0
Hiendelaencina	Guadalajara	0
Hijes	Guadalajara	0
Hita	Guadalajara	0
Hombrados	Guadalajara	0
Hontoba	Guadalajara	0
Horche	Guadalajara	0
Hortezuela de Oc??n	Guadalajara	0
Huerce, La	Guadalajara	0
Hu??rmeces del Cerro	Guadalajara	0
Huertahernando	Guadalajara	0
Hueva	Guadalajara	0
Humanes	Guadalajara	0
Illana	Guadalajara	0
Ini??stola	Guadalajara	0
Inviernas, Las	Guadalajara	0
Irueste	Guadalajara	0
Jadraque	Guadalajara	0
Jirueque	Guadalajara	0
Ledanca	Guadalajara	0
Loranca de Taju??a	Guadalajara	0
Lupiana	Guadalajara	0
Luzaga	Guadalajara	0
Luz??n	Guadalajara	0
Majaelrayo	Guadalajara	0
M??laga del Fresno	Guadalajara	0
Malaguilla	Guadalajara	0
Mandayona	Guadalajara	0
Mantiel	Guadalajara	0
Maranch??n	Guadalajara	0
Marchamalo	Guadalajara	0
Masegoso de Taju??a	Guadalajara	0
Matarrubia	Guadalajara	0
Matillas	Guadalajara	0
Mazarete	Guadalajara	0
Mazuecos	Guadalajara	0
Medranda	Guadalajara	0
Megina	Guadalajara	0
Membrillera	Guadalajara	0
Miedes de Atienza	Guadalajara	0
Mierla, La	Guadalajara	0
Milmarcos	Guadalajara	0
Millana	Guadalajara	0
Mi??osa, La	Guadalajara	0
Mirabueno	Guadalajara	0
Miralr??o	Guadalajara	0
Mochales	Guadalajara	0
Mohernando	Guadalajara	0
Molina de Arag??n	Guadalajara	0
Monasterio	Guadalajara	0
Mond??jar	Guadalajara	0
Montarr??n	Guadalajara	0
Moratilla de los Meleros	Guadalajara	0
Morenilla	Guadalajara	0
Muduex	Guadalajara	0
Navas de Jadraque, Las	Guadalajara	0
Negredo	Guadalajara	0
Ocentejo	Guadalajara	0
Olivar, El	Guadalajara	0
Olmeda de Cobeta	Guadalajara	0
Olmeda de Jadraque, La	Guadalajara	0
Ordial, El	Guadalajara	0
Orea	Guadalajara	0
P??lmaces de Jadraque	Guadalajara	0
Pardos	Guadalajara	0
Paredes de Sig??enza	Guadalajara	0
Pareja	Guadalajara	0
Pastrana	Guadalajara	0
Pedregal, El	Guadalajara	0
Pe??al??n	Guadalajara	0
Pe??alver	Guadalajara	0
Peralejos de las Truchas	Guadalajara	0
Peralveche	Guadalajara	0
Pinilla de Jadraque	Guadalajara	0
Pinilla de Molina	Guadalajara	0
Pioz	Guadalajara	0
Piqueras	Guadalajara	0
Pobo de Due??as, El	Guadalajara	0
Poveda de la Sierra	Guadalajara	0
Pozo de Almoguera	Guadalajara	0
Pozo de Guadalajara	Guadalajara	0
Pr??dena de Atienza	Guadalajara	0
Prados Redondos	Guadalajara	0
Puebla de Bele??a	Guadalajara	0
Puebla de Valles	Guadalajara	0
Quer	Guadalajara	0
Rebollosa de Jadraque	Guadalajara	0
Recuenco, El	Guadalajara	0
Renera	Guadalajara	0
Retiendas	Guadalajara	0
Riba de Saelices	Guadalajara	0
Rillo de Gallo	Guadalajara	0
Riofr??o del Llano	Guadalajara	0
Robledillo de Mohernando	Guadalajara	0
Robledo de Corpes	Guadalajara	0
Romanillos de Atienza	Guadalajara	0
Romanones	Guadalajara	0
Rueda de la Sierra	Guadalajara	0
Sacecorbo	Guadalajara	0
Saced??n	Guadalajara	0
Saelices de la Sal	Guadalajara	0
Salmer??n	Guadalajara	0
San Andr??s del Congosto	Guadalajara	0
San Andr??s del Rey	Guadalajara	0
Santiuste	Guadalajara	0
Sa??ca	Guadalajara	0
Sayat??n	Guadalajara	0
Selas	Guadalajara	0
Setiles	Guadalajara	0
Sienes	Guadalajara	0
Sig??enza	Guadalajara	0
Solanillos del Extremo	Guadalajara	0
Somolinos	Guadalajara	0
Sotillo, El	Guadalajara	0
Sotodosos	Guadalajara	0
Tamaj??n	Guadalajara	0
Taragudo	Guadalajara	0
Taravilla	Guadalajara	0
Tartanedo	Guadalajara	0
Tendilla	Guadalajara	0
Terzaga	Guadalajara	0
Tierzo	Guadalajara	0
Toba, La	Guadalajara	0
Tordelr??bano	Guadalajara	0
Tordellego	Guadalajara	0
Tordesilos	Guadalajara	0
Torija	Guadalajara	0
Torrecuadrada de Molina	Guadalajara	0
Torrecuadradilla	Guadalajara	0
Torre del Burgo	Guadalajara	0
Torrej??n del Rey	Guadalajara	0
Torremocha de Jadraque	Guadalajara	0
Torremocha del Campo	Guadalajara	0
Torremocha del Pinar	Guadalajara	0
Torremochuela	Guadalajara	0
Torrubia	Guadalajara	0
T??rtola de Henares	Guadalajara	0
Tortuera	Guadalajara	0
Tortuero	Guadalajara	0
Tra??d	Guadalajara	0
Trijueque	Guadalajara	0
Trillo	Guadalajara	0
Uceda	Guadalajara	0
Ujados	Guadalajara	0
Utande	Guadalajara	0
Valdarachas	Guadalajara	0
Valdearenas	Guadalajara	0
Valdeavellano	Guadalajara	0
Valdeaveruelo	Guadalajara	0
Valdeconcha	Guadalajara	0
Valdegrudas	Guadalajara	0
Valdelcubo	Guadalajara	0
Valdenu??o Fern??ndez	Guadalajara	0
Valdepe??as de la Sierra	Guadalajara	0
Valderrebollo	Guadalajara	0
Valdesotos	Guadalajara	0
Valfermoso de Taju??a	Guadalajara	0
Valhermoso	Guadalajara	0
Valtablado del R??o	Guadalajara	0
Valverde de los Arroyos	Guadalajara	0
Viana de Jadraque	Guadalajara	0
Villanueva de Alcor??n	Guadalajara	0
Villanueva de Argecilla	Guadalajara	0
Villanueva de la Torre	Guadalajara	0
Villares de Jadraque	Guadalajara	0
Villaseca de Henares	Guadalajara	0
Villaseca de Uceda	Guadalajara	0
Villel de Mesa	Guadalajara	0
Vi??uelas	Guadalajara	0
Yebes	Guadalajara	0
Yebra	Guadalajara	0
Y??lamos de Abajo	Guadalajara	0
Y??lamos de Arriba	Guadalajara	0
Yunquera de Henares	Guadalajara	0
Yunta, La	Guadalajara	0
Zaorejas	Guadalajara	0
Zarzuela de Jadraque	Guadalajara	0
Zorita de los Canes	Guadalajara	0
Semillas	Guadalajara	0
Abaltzisketa	Gipuzkoa	0
Aduna	Gipuzkoa	0
Aizarnazabal	Gipuzkoa	0
Albiztur	Gipuzkoa	0
Alegia	Gipuzkoa	0
Alkiza	Gipuzkoa	0
Altzo	Gipuzkoa	0
Amezketa	Gipuzkoa	0
Andoain	Gipuzkoa	0
Anoeta	Gipuzkoa	0
Antzuola	Gipuzkoa	0
Arama	Gipuzkoa	0
Aretxabaleta	Gipuzkoa	0
Asteasu	Gipuzkoa	0
Ataun	Gipuzkoa	0
Aia	Gipuzkoa	0
Azkoitia	Gipuzkoa	0
Azpeitia	Gipuzkoa	0
Beasain	Gipuzkoa	0
Beizama	Gipuzkoa	0
Belauntza	Gipuzkoa	0
Berastegi	Gipuzkoa	0
Berrobi	Gipuzkoa	0
Bidegoian	Gipuzkoa	0
Zegama	Gipuzkoa	0
Zerain	Gipuzkoa	0
Zestoa	Gipuzkoa	0
Zizurkil	Gipuzkoa	0
Deba	Gipuzkoa	0
Eibar	Gipuzkoa	0
Elduain	Gipuzkoa	0
Elgoibar	Gipuzkoa	0
Elgeta	Gipuzkoa	0
Eskoriatza	Gipuzkoa	0
Ezkio-Itsaso	Gipuzkoa	0
Hondarribia	Gipuzkoa	0
Gaintza	Gipuzkoa	0
Gabiria	Gipuzkoa	0
Getaria	Gipuzkoa	0
Hernani	Gipuzkoa	0
Hernialde	Gipuzkoa	0
Ibarra	Gipuzkoa	0
Idiazabal	Gipuzkoa	0
Ikaztegieta	Gipuzkoa	0
Irun	Gipuzkoa	0
Irura	Gipuzkoa	0
Itsasondo	Gipuzkoa	0
Larraul	Gipuzkoa	0
Lazkao	Gipuzkoa	0
Leaburu	Gipuzkoa	0
Legazpi	Gipuzkoa	0
Legorreta	Gipuzkoa	0
Lezo	Gipuzkoa	0
Lizartza	Gipuzkoa	0
Arrasate/Mondrag??n	Gipuzkoa	0
Mutriku	Gipuzkoa	0
Mutiloa	Gipuzkoa	0
Olaberria	Gipuzkoa	0
O??ati	Gipuzkoa	0
Orexa	Gipuzkoa	0
Orio	Gipuzkoa	0
Ormaiztegi	Gipuzkoa	0
Oiartzun	Gipuzkoa	0
Pasaia	Gipuzkoa	0
Soraluze-Placencia de las Armas	Gipuzkoa	0
Errezil	Gipuzkoa	0
Errenteria	Gipuzkoa	0
Leintz-Gatzaga	Gipuzkoa	0
Donostia-San Sebasti??n	Gipuzkoa	0
Segura	Gipuzkoa	0
Tolosa	Gipuzkoa	0
Urnieta	Gipuzkoa	0
Usurbil	Gipuzkoa	0
Bergara	Gipuzkoa	0
Villabona	Gipuzkoa	0
Ordizia	Gipuzkoa	0
Urretxu	Gipuzkoa	0
Zaldibia	Gipuzkoa	0
Zarautz	Gipuzkoa	0
Zumarraga	Gipuzkoa	0
Zumaia	Gipuzkoa	0
Mendaro	Gipuzkoa	0
Lasarte-Oria	Gipuzkoa	0
Astigarraga	Gipuzkoa	0
Baliarrain	Gipuzkoa	0
Orendain	Gipuzkoa	0
Altzaga	Gipuzkoa	0
Gaztelu	Gipuzkoa	0
Al??jar	Huelva	0
Aljaraque	Huelva	0
Almendro, El	Huelva	0
Almonaster la Real	Huelva	0
Almonte	Huelva	0
Alosno	Huelva	0
Aracena	Huelva	0
Aroche	Huelva	0
Arroyomolinos de Le??n	Huelva	0
Ayamonte	Huelva	0
Beas	Huelva	0
Berrocal	Huelva	0
Bollullos Par del Condado	Huelva	0
Bonares	Huelva	0
Cabezas Rubias	Huelva	0
Cala	Huelva	0
Cala??as	Huelva	0
Campillo, El	Huelva	0
Campofr??o	Huelva	0
Ca??averal de Le??n	Huelva	0
Cartaya	Huelva	0
Casta??o del Robledo	Huelva	0
Cerro de And??valo, El	Huelva	0
Corteconcepci??n	Huelva	0
Cortegana	Huelva	0
Cortelazor	Huelva	0
Cumbres de Enmedio	Huelva	0
Cumbres de San Bartolom??	Huelva	0
Cumbres Mayores	Huelva	0
Chucena	Huelva	0
Encinasola	Huelva	0
Escacena del Campo	Huelva	0
Fuenteheridos	Huelva	0
Galaroza	Huelva	0
Gibrale??n	Huelva	0
Granada de R??o-Tinto, La	Huelva	0
Granado, El	Huelva	0
Higuera de la Sierra	Huelva	0
Hinojales	Huelva	0
Hinojos	Huelva	0
Huelva	Huelva	0
Isla Cristina	Huelva	0
Jabugo	Huelva	0
Lepe	Huelva	0
Linares de la Sierra	Huelva	0
Lucena del Puerto	Huelva	0
Manzanilla	Huelva	0
Marines, Los	Huelva	0
Minas de Riotinto	Huelva	0
Moguer	Huelva	0
Nava, La	Huelva	0
Nerva	Huelva	0
Niebla	Huelva	0
Palma del Condado, La	Huelva	0
Palos de la Frontera	Huelva	0
Paterna del Campo	Huelva	0
Paymogo	Huelva	0
Puebla de Guzm??n	Huelva	0
Puerto Moral	Huelva	0
Punta Umbr??a	Huelva	0
Rociana del Condado	Huelva	0
Rosal de la Frontera	Huelva	0
San Bartolom?? de la Torre	Huelva	0
San Juan del Puerto	Huelva	0
Sanl??car de Guadiana	Huelva	0
San Silvestre de Guzm??n	Huelva	0
Santa Ana la Real	Huelva	0
Santa B??rbara de Casa	Huelva	0
Santa Olalla del Cala	Huelva	0
Trigueros	Huelva	0
Valdelarco	Huelva	0
Valverde del Camino	Huelva	0
Villablanca	Huelva	0
Villalba del Alcor	Huelva	0
Villanueva de las Cruces	Huelva	0
Villanueva de los Castillejos	Huelva	0
Villarrasa	Huelva	0
Zalamea la Real	Huelva	0
Zufre	Huelva	0
Abiego	Huesca	0
Abizanda	Huesca	0
Adahuesca	Huesca	0
Ag??ero	Huesca	0
Aisa	Huesca	0
Albalate de Cinca	Huesca	0
Albalatillo	Huesca	0
Albelda	Huesca	0
Albero Alto	Huesca	0
Albero Bajo	Huesca	0
Alberuela de Tubo	Huesca	0
Alcal?? de Gurrea	Huesca	0
Alcal?? del Obispo	Huesca	0
Alcampell	Huesca	0
Alcolea de Cinca	Huesca	0
Alcubierre	Huesca	0
Alerre	Huesca	0
Alf??ntega	Huesca	0
Almud??var	Huesca	0
Almunia de San Juan	Huesca	0
Almuniente	Huesca	0
Alqu??zar	Huesca	0
Altorric??n	Huesca	0
Ang????s	Huesca	0
Ans??	Huesca	0
Antill??n	Huesca	0
Arag????s del Puerto	Huesca	0
Ar??n	Huesca	0
Argavieso	Huesca	0
Arguis	Huesca	0
Ayerbe	Huesca	0
Azanuy-Alins	Huesca	0
Azara	Huesca	0
Azlor	Huesca	0
Ba??lls	Huesca	0
Bailo	Huesca	0
Baldellou	Huesca	0
Ballobar	Huesca	0
Banast??s	Huesca	0
Barbastro	Huesca	0
Barbu??s	Huesca	0
Barbu??ales	Huesca	0
B??rcabo	Huesca	0
Belver de Cinca	Huesca	0
Benabarre	Huesca	0
Benasque	Huesca	0
Berbegal	Huesca	0
Bielsa	Huesca	0
Bierge	Huesca	0
Biescas	Huesca	0
Binaced	Huesca	0
Bin??far	Huesca	0
Bisaurri	Huesca	0
Biscarru??s	Huesca	0
Blecua y Torres	Huesca	0
Bolta??a	Huesca	0
Bonansa	Huesca	0
Borau	Huesca	0
Broto	Huesca	0
Caldearenas	Huesca	0
Campo	Huesca	0
Camporr??lls	Huesca	0
Canal de Berd??n	Huesca	0
Candasnos	Huesca	0
Canfranc	Huesca	0
Capdesaso	Huesca	0
Capella	Huesca	0
Casbas de Huesca	Huesca	0
Castej??n del Puente	Huesca	0
Castej??n de Monegros	Huesca	0
Castej??n de Sos	Huesca	0
Castelflorite	Huesca	0
Castiello de Jaca	Huesca	0
Castigaleu	Huesca	0
Castillazuelo	Huesca	0
Castillonroy	Huesca	0
Colungo	Huesca	0
Chalamera	Huesca	0
Ch??a	Huesca	0
Chimillas	Huesca	0
Espl??s	Huesca	0
Estada	Huesca	0
Estadilla	Huesca	0
Estopi????n del Castillo	Huesca	0
Fago	Huesca	0
Fanlo	Huesca	0
Fiscal	Huesca	0
Fonz	Huesca	0
Foradada del Toscar	Huesca	0
Fraga	Huesca	0
Fueva, La	Huesca	0
Gista??n	Huesca	0
Grado, El	Huesca	0
Gra????n	Huesca	0
Graus	Huesca	0
Gurrea de G??llego	Huesca	0
Hoz de Jaca	Huesca	0
Huerto	Huesca	0
Huesca	Huesca	0
Ibieca	Huesca	0
Igri??s	Huesca	0
Ilche	Huesca	0
Is??bena	Huesca	0
Jaca	Huesca	0
Jasa	Huesca	0
Labuerda	Huesca	0
Laluenga	Huesca	0
Lalueza	Huesca	0
Lanaja	Huesca	0
Laperdiguera	Huesca	0
Lascellas-Ponzano	Huesca	0
Lascuarre	Huesca	0
Laspa??les	Huesca	0
Laspu??a	Huesca	0
Loarre	Huesca	0
Loporzano	Huesca	0
Loscorrales	Huesca	0
Monesma y Cajigar	Huesca	0
Monflorite-Lascasas	Huesca	0
Montanuy	Huesca	0
Monz??n	Huesca	0
Naval	Huesca	0
Novales	Huesca	0
Nueno	Huesca	0
Olvena	Huesca	0
Onti??ena	Huesca	0
Osso de Cinca	Huesca	0
Palo	Huesca	0
Panticosa	Huesca	0
Pe??alba	Huesca	0
Pe??as de Riglos, Las	Huesca	0
Peralta de Alcofea	Huesca	0
Peralta de Calasanz	Huesca	0
Peraltilla	Huesca	0
Perarr??a	Huesca	0
Pertusa	Huesca	0
Pirac??s	Huesca	0
Plan	Huesca	0
Pole??ino	Huesca	0
Poz??n de Vero	Huesca	0
Puebla de Castro, La	Huesca	0
Puente de Monta??ana	Huesca	0
Pu??rtolas	Huesca	0
Pueyo de Aragu??s, El	Huesca	0
Pueyo de Santa Cruz	Huesca	0
Quicena	Huesca	0
Robres	Huesca	0
Sabi????nigo	Huesca	0
Sah??n	Huesca	0
Salas Altas	Huesca	0
Salas Bajas	Huesca	0
Salillas	Huesca	0
Sallent de G??llego	Huesca	0
San Esteban de Litera	Huesca	0
Sangarr??n	Huesca	0
San Juan de Plan	Huesca	0
Santa Cilia	Huesca	0
Santa Cruz de la Ser??s	Huesca	0
Santaliestra y San Qu??lez	Huesca	0
Sari??ena	Huesca	0
Secastilla	Huesca	0
Seira	Huesca	0
Sena	Huesca	0
Sen??s de Alcubierre	Huesca	0
Sesa	Huesca	0
Sesu??	Huesca	0
Si??tamo	Huesca	0
Sopeira	Huesca	0
Tamarite de Litera	Huesca	0
Tardienta	Huesca	0
Tella-Sin	Huesca	0
Tierz	Huesca	0
Tolva	Huesca	0
Torla	Huesca	0
Torralba de Arag??n	Huesca	0
Torre la Ribera	Huesca	0
Torrente de Cinca	Huesca	0
Torres de Alcanadre	Huesca	0
Torres de Barbu??s	Huesca	0
Tramaced	Huesca	0
Valfarta	Huesca	0
Valle de Bardaj??	Huesca	0
Valle de Lierp	Huesca	0
Velilla de Cinca	Huesca	0
Beranuy	Huesca	0
Viacamp y Litera	Huesca	0
Vici??n	Huesca	0
Villanova	Huesca	0
Villan??a	Huesca	0
Villanueva de Sigena	Huesca	0
Yebra de Basa	Huesca	0
Y??sero	Huesca	0
Zaid??n	Huesca	0
Valle de Hecho	Huesca	0
Puente la Reina de Jaca	Huesca	0
San Miguel del Cinca	Huesca	0
Sotonera, La	Huesca	0
Lupi????n-Ortilla	Huesca	0
Santa Mar??a de Dulcis	Huesca	0
A??nsa-Sobrarbe	Huesca	0
Hoz y Costean	Huesca	0
Vencill??n	Huesca	0
Albanchez de M??gina	Ja??n	0
Alcal?? la Real	Ja??n	0
Alcaudete	Ja??n	0
Aldeaquemada	Ja??n	0
And??jar	Ja??n	0
Arjona	Ja??n	0
Arjonilla	Ja??n	0
Arquillos	Ja??n	0
Baeza	Ja??n	0
Bail??n	Ja??n	0
Ba??os de la Encina	Ja??n	0
Beas de Segura	Ja??n	0
Beg??jar	Ja??n	0
B??lmez de la Moraleda	Ja??n	0
Benatae	Ja??n	0
Cabra del Santo Cristo	Ja??n	0
Cambil	Ja??n	0
Campillo de Arenas	Ja??n	0
Canena	Ja??n	0
Carboneros	Ja??n	0
Carolina, La	Ja??n	0
Castellar	Ja??n	0
Castillo de Locub??n	Ja??n	0
Cazalilla	Ja??n	0
Cazorla	Ja??n	0
Chiclana de Segura	Ja??n	0
Chillu??var	Ja??n	0
Esca??uela	Ja??n	0
Espel??y	Ja??n	0
Frailes	Ja??n	0
Fuensanta de Martos	Ja??n	0
Fuerte del Rey	Ja??n	0
G??nave	Ja??n	0
Guardia de Ja??n, La	Ja??n	0
Guarrom??n	Ja??n	0
Lahiguera	Ja??n	0
Higuera de Calatrava	Ja??n	0
Hinojares	Ja??n	0
Hornos	Ja??n	0
Huelma	Ja??n	0
Huesa	Ja??n	0
Ibros	Ja??n	0
Iruela, La	Ja??n	0
Iznatoraf	Ja??n	0
Jabalquinto	Ja??n	0
Ja??n	Ja??n	0
Jamilena	Ja??n	0
Jimena	Ja??n	0
J??dar	Ja??n	0
Larva	Ja??n	0
Linares	Ja??n	0
Lopera	Ja??n	0
Lupi??n	Ja??n	0
Mancha Real	Ja??n	0
Marmolejo	Ja??n	0
Martos	Ja??n	0
Meng??bar	Ja??n	0
Montiz??n	Ja??n	0
Navas de San Juan	Ja??n	0
Noalejo	Ja??n	0
Orcera	Ja??n	0
Peal de Becerro	Ja??n	0
Pegalajar	Ja??n	0
Porcuna	Ja??n	0
Pozo Alc??n	Ja??n	0
Puente de G??nave	Ja??n	0
Puerta de Segura, La	Ja??n	0
Quesada	Ja??n	0
Rus	Ja??n	0
Sabiote	Ja??n	0
Santa Elena	Ja??n	0
Santiago de Calatrava	Ja??n	0
Santisteban del Puerto	Ja??n	0
Santo Tom??	Ja??n	0
Segura de la Sierra	Ja??n	0
Siles	Ja??n	0
Sorihuela del Guadalimar	Ja??n	0
Torreblascopedro	Ja??n	0
Torre del Campo	Ja??n	0
Torredonjimeno	Ja??n	0
Torreperogil	Ja??n	0
Torres	Ja??n	0
Torres de Alb??nchez	Ja??n	0
??beda	Ja??n	0
Valdepe??as de Ja??n	Ja??n	0
Vilches	Ja??n	0
Villacarrillo	Ja??n	0
Villanueva de la Reina	Ja??n	0
Villanueva del Arzobispo	Ja??n	0
Villardompardo	Ja??n	0
Villares, Los	Ja??n	0
Villarrodrigo	Ja??n	0
C??rcheles	Ja??n	0
Bedmar y Garc??ez	Ja??n	0
Villatorres	Ja??n	0
Santiago-Pontones	Ja??n	0
Arroyo del Ojanco	Ja??n	0
Acebedo	Le??n	0
Algadefe	Le??n	0
Alija del Infantado	Le??n	0
Almanza	Le??n	0
Antigua, La	Le??n	0
Ard??n	Le??n	0
Arganza	Le??n	0
Astorga	Le??n	0
Balboa	Le??n	0
Ba??eza, La	Le??n	0
Barjas	Le??n	0
Barrios de Luna, Los	Le??n	0
Bembibre	Le??n	0
Benavides	Le??n	0
Benuza	Le??n	0
Bercianos del P??ramo	Le??n	0
Bercianos del Real Camino	Le??n	0
Berlanga del Bierzo	Le??n	0
Boca de Hu??rgano	Le??n	0
Bo??ar	Le??n	0
Borrenes	Le??n	0
Brazuelo	Le??n	0
Burgo Ranero, El	Le??n	0
Bur??n	Le??n	0
Bustillo del P??ramo	Le??n	0
Caba??as Raras	Le??n	0
Cabreros del R??o	Le??n	0
Cabrillanes	Le??n	0
Cacabelos	Le??n	0
Calzada del Coto	Le??n	0
Campazas	Le??n	0
Campo de Villavidel	Le??n	0
Camponaraya	Le??n	0
Cand??n	Le??n	0
C??rmenes	Le??n	0
Carracedelo	Le??n	0
Carrizo	Le??n	0
Carrocera	Le??n	0
Carucedo	Le??n	0
Castilfal??	Le??n	0
Castrillo de Cabrera	Le??n	0
Castrillo de la Valduerna	Le??n	0
Castrocalb??n	Le??n	0
Castrocontrigo	Le??n	0
Castropodame	Le??n	0
Castrotierra de Valmadrigal	Le??n	0
Cea	Le??n	0
Cebanico	Le??n	0
Cebrones del R??o	Le??n	0
Cimanes de la Vega	Le??n	0
Cimanes del Tejar	Le??n	0
Cistierna	Le??n	0
Congosto	Le??n	0
Corbillos de los Oteros	Le??n	0
Corull??n	Le??n	0
Cr??menes	Le??n	0
Cuadros	Le??n	0
Cubillas de los Oteros	Le??n	0
Cubillas de Rueda	Le??n	0
Cubillos del Sil	Le??n	0
Chozas de Abajo	Le??n	0
Destriana	Le??n	0
Encinedo	Le??n	0
Ercina, La	Le??n	0
Escobar de Campos	Le??n	0
Fabero	Le??n	0
Folgoso de la Ribera	Le??n	0
Fresno de la Vega	Le??n	0
Fuentes de Carbajal	Le??n	0
Garrafe de Tor??o	Le??n	0
Gordaliza del Pino	Le??n	0
Gordoncillo	Le??n	0
Gradefes	Le??n	0
Grajal de Campos	Le??n	0
Gusendos de los Oteros	Le??n	0
Hospital de ??rbigo	Le??n	0
Ig??e??a	Le??n	0
Izagre	Le??n	0
Joarilla de las Matas	Le??n	0
Laguna Dalga	Le??n	0
Laguna de Negrillos	Le??n	0
Le??n	Le??n	0
Lucillo	Le??n	0
Luyego	Le??n	0
Llamas de la Ribera	Le??n	0
Magaz de Cepeda	Le??n	0
Mansilla de las Mulas	Le??n	0
Mansilla Mayor	Le??n	0
Mara??a	Le??n	0
Matade??n de los Oteros	Le??n	0
Matallana de Tor??o	Le??n	0
Matanza	Le??n	0
Molinaseca	Le??n	0
Murias de Paredes	Le??n	0
Noceda del Bierzo	Le??n	0
Oencia	Le??n	0
Oma??as, Las	Le??n	0
Onzonilla	Le??n	0
Oseja de Sajambre	Le??n	0
Pajares de los Oteros	Le??n	0
Palacios de la Valduerna	Le??n	0
Palacios del Sil	Le??n	0
P??ramo del Sil	Le??n	0
Peranzanes	Le??n	0
Pobladura de Pelayo Garc??a	Le??n	0
Pola de Gord??n, La	Le??n	0
Ponferrada	Le??n	0
Posada de Valde??n	Le??n	0
Pozuelo del P??ramo	Le??n	0
Prado de la Guzpe??a	Le??n	0
Priaranza del Bierzo	Le??n	0
Prioro	Le??n	0
Puebla de Lillo	Le??n	0
Puente de Domingo Fl??rez	Le??n	0
Quintana del Castillo	Le??n	0
Quintana del Marco	Le??n	0
Quintana y Congosto	Le??n	0
Regueras de Arriba	Le??n	0
Reyero	Le??n	0
Ria??o	Le??n	0
Riego de la Vega	Le??n	0
Riello	Le??n	0
Rioseco de Tapia	Le??n	0
Robla, La	Le??n	0
Roperuelos del P??ramo	Le??n	0
Sabero	Le??n	0
Sahag??n	Le??n	0
San Adri??n del Valle	Le??n	0
San Andr??s del Rabanedo	Le??n	0
Sancedo	Le??n	0
San Crist??bal de la Polantera	Le??n	0
San Emiliano	Le??n	0
San Esteban de Nogales	Le??n	0
San Justo de la Vega	Le??n	0
San Mill??n de los Caballeros	Le??n	0
San Pedro Bercianos	Le??n	0
Santa Colomba de Curue??o	Le??n	0
Santa Colomba de Somoza	Le??n	0
Santa Cristina de Valmadrigal	Le??n	0
Santa Elena de Jamuz	Le??n	0
Santa Mar??a de la Isla	Le??n	0
Santa Mar??a del Monte de Cea	Le??n	0
Santa Mar??a del P??ramo	Le??n	0
Santa Mar??a de Ord??s	Le??n	0
Santa Marina del Rey	Le??n	0
Santas Martas	Le??n	0
Santiago Millas	Le??n	0
Santovenia de la Valdoncina	Le??n	0
Sariegos	Le??n	0
Sena de Luna	Le??n	0
Sobrado	Le??n	0
Soto de la Vega	Le??n	0
Soto y Am??o	Le??n	0
Toral de los Guzmanes	Le??n	0
Toreno	Le??n	0
Torre del Bierzo	Le??n	0
Trabadelo	Le??n	0
Truchas	Le??n	0
Turcia	Le??n	0
Urdiales del P??ramo	Le??n	0
Valdefresno	Le??n	0
Valdefuentes del P??ramo	Le??n	0
Valdelugueros	Le??n	0
Valdemora	Le??n	0
Valdepi??lago	Le??n	0
Valdepolo	Le??n	0
Valderas	Le??n	0
Valderrey	Le??n	0
Valderrueda	Le??n	0
Valdesamario	Le??n	0
Val de San Lorenzo	Le??n	0
Valdevimbre	Le??n	0
Valencia de Don Juan	Le??n	0
Valverde de la Virgen	Le??n	0
Valverde-Enrique	Le??n	0
Vallecillo	Le??n	0
Vecilla, La	Le??n	0
Vegacervera	Le??n	0
Vega de Espinareda	Le??n	0
Vega de Infanzones	Le??n	0
Vega de Valcarce	Le??n	0
Vegaquemada	Le??n	0
Vegas del Condado	Le??n	0
Villablino	Le??n	0
Villabraz	Le??n	0
Villadangos del P??ramo	Le??n	0
Toral de los Vados	Le??n	0
Villademor de la Vega	Le??n	0
Villafranca del Bierzo	Le??n	0
Villagat??n	Le??n	0
Villamandos	Le??n	0
Villama????n	Le??n	0
Villamart??n de Don Sancho	Le??n	0
Villamejil	Le??n	0
Villamol	Le??n	0
Villamont??n de la Valduerna	Le??n	0
Villamoratiel de las Matas	Le??n	0
Villanueva de las Manzanas	Le??n	0
Villaobispo de Otero	Le??n	0
Villaquejida	Le??n	0
Villaquilambre	Le??n	0
Villarejo de ??rbigo	Le??n	0
Villares de ??rbigo	Le??n	0
Villasabariego	Le??n	0
Villasel??n	Le??n	0
Villaturiel	Le??n	0
Villazala	Le??n	0
Villazanzo de Valderaduey	Le??n	0
Zotes del P??ramo	Le??n	0
Villaman??n	Le??n	0
Villaornate y Castro	Le??n	0
Abella de la Conca	Lleida	0
??ger	Lleida	0
Agramunt	Lleida	0
Alam??s, Els	Lleida	0
Al??s i Cerc	Lleida	0
Albag??s, L	Lleida	0
Albat??rrec	Lleida	0
Albesa	Lleida	0
Albi, L	Lleida	0
Alcan??	Lleida	0
Alcarr??s	Lleida	0
Alcoletge	Lleida	0
Alfarr??s	Lleida	0
Alf??s	Lleida	0
Algerri	Lleida	0
Alguaire	Lleida	0
Alins	Lleida	0
Almacelles	Lleida	0
Almatret	Lleida	0
Almenar	Lleida	0
Al??s de Balaguer	Lleida	0
Alpicat	Lleida	0
Alt ??neu	Lleida	0
Naut Aran	Lleida	0
Anglesola	Lleida	0
Arbeca	Lleida	0
Pont de Bar, El	Lleida	0
Arres	Lleida	0
Ars??guel	Lleida	0
Artesa de Lleida	Lleida	0
Artesa de Segre	Lleida	0
Sentiu de Si??, La	Lleida	0
Aspa	Lleida	0
Avellanes i Santa Linya, Les	Lleida	0
Aitona	Lleida	0
Baix Pallars	Lleida	0
Balaguer	Lleida	0
Barbens	Lleida	0
Baronia de Rialb, La	Lleida	0
Vall de Bo??, La	Lleida	0
Bassella	Lleida	0
Bausen	Lleida	0
Belianes	Lleida	0
Bellcaire dUrgell	Lleida	0
Bell-lloc dUrgell	Lleida	0
Bellmunt dUrgell	Lleida	0
Bellpuig	Lleida	0
Bellver de Cerdanya	Lleida	0
Bellv??s	Lleida	0
Benavent de Segri??	Lleida	0
Biosca	Lleida	0
Bovera	Lleida	0
B??rdes, Es	Lleida	0
Borges Blanques, Les	Lleida	0
Boss??st	Lleida	0
Cabanabona	Lleida	0
Cab??	Lleida	0
Camarasa	Lleida	0
Canejan	Lleida	0
Castellar de la Ribera	Lleida	0
Castelldans	Lleida	0
Castellnou de Seana	Lleida	0
Castell?? de Farfanya	Lleida	0
Castellser??	Lleida	0
Cava	Lleida	0
Cervera	Lleida	0
Cervi?? de les Garrigues	Lleida	0
Ciutadilla	Lleida	0
Clariana de Cardener	Lleida	0
Cogul, El	Lleida	0
Coll de Narg??	Lleida	0
Corbins	Lleida	0
Cubells	Lleida	0
Espluga Calba, L	Lleida	0
Espot	Lleida	0
Estar??s	Lleida	0
Esterri d??neu	Lleida	0
Esterri de Card??s	Lleida	0
Estamariu	Lleida	0
Farrera	Lleida	0
Floresta, La	Lleida	0
Fondarella	Lleida	0
Foradada	Lleida	0
Fuliola, La	Lleida	0
Fulleda	Lleida	0
Gavet de la Conca	Lleida	0
Golm??s	Lleida	0
G??sol	Lleida	0
Granadella, La	Lleida	0
Granja dEscarp, La	Lleida	0
Granyanella	Lleida	0
Granyena de Segarra	Lleida	0
Granyena de les Garrigues	Lleida	0
Guimer??	Lleida	0
Guissona	Lleida	0
Guixers	Lleida	0
Ivars de Noguera	Lleida	0
Ivars dUrgell	Lleida	0
Ivorra	Lleida	0
Isona i Conca Dell??	Lleida	0
Juncosa	Lleida	0
Juneda	Lleida	0
Lleida	Lleida	0
Les	Lleida	0
Linyola	Lleida	0
Lladorre	Lleida	0
Lladurs	Lleida	0
Llardecans	Lleida	0
Llavors??	Lleida	0
Lles de Cerdanya	Lleida	0
Llimiana	Lleida	0
Llobera	Lleida	0
Mald??	Lleida	0
Massalcoreig	Lleida	0
Massoteres	Lleida	0
Maials	Lleida	0
Men??rguens	Lleida	0
Miralcamp	Lleida	0
Molsosa, La	Lleida	0
Mollerussa	Lleida	0
Montgai	Lleida	0
Montell?? i Martinet	Lleida	0
Montferrer i Castellb??	Lleida	0
Montoliu de Segarra	Lleida	0
Montoliu de Lleida	Lleida	0
Montorn??s de Segarra	Lleida	0
Nalec	Lleida	0
Nav??s	Lleida	0
Od??n	Lleida	0
Oliana	Lleida	0
Oliola	Lleida	0
Olius	Lleida	0
Oluges, Les	Lleida	0
Omellons, Els	Lleida	0
Omells de na Gaia, Els	Lleida	0
Organy??	Lleida	0
Os de Balaguer	Lleida	0
Oss?? de Si??	Lleida	0
Palau dAnglesola, El	Lleida	0
Conca de Dalt	Lleida	0
Coma i la Pedra, La	Lleida	0
Penelles	Lleida	0
Peramola	Lleida	0
Pinell de Solson??s	Lleida	0
Pin??s	Lleida	0
Poal, El	Lleida	0
Pobla de C??rvoles, La	Lleida	0
Bellaguarda	Lleida	0
Pobla de Segur, La	Lleida	0
Ponts	Lleida	0
Pont de Suert, El	Lleida	0
Portella, La	Lleida	0
Prats i Sansor	Lleida	0
Preixana	Lleida	0
Preixens	Lleida	0
Prullans	Lleida	0
Puiggr??s	Lleida	0
Puigverd dAgramunt	Lleida	0
Puigverd de Lleida	Lleida	0
Rialp	Lleida	0
Ribera dUrgellet	Lleida	0
Riner	Lleida	0
Rossell??	Lleida	0
Sal??s de Pallars	Lleida	0
Sana??ja	Lleida	0
Sant Guim de Freixenet	Lleida	0
Sant Lloren?? de Morunys	Lleida	0
Sant Ramon	Lleida	0
Sant Esteve de la Sarga	Lleida	0
Sant Guim de la Plana	Lleida	0
Sarroca de Lleida	Lleida	0
Sarroca de Bellera	Lleida	0
Senterada	Lleida	0
Seu dUrgell, La	Lleida	0
Ser??s	Lleida	0
Sidamon	Lleida	0
Soler??s, El	Lleida	0
Solsona	Lleida	0
Soriguera	Lleida	0
Sort	Lleida	0
Soses	Lleida	0
Sudanell	Lleida	0
Sunyer	Lleida	0
Talarn	Lleida	0
Talavera	Lleida	0
T??rrega	Lleida	0
Tarr??s	Lleida	0
Tarroja de Segarra	Lleida	0
T??rmens	Lleida	0
T??rvia	Lleida	0
Tiurana	Lleida	0
Tor??	Lleida	0
Torms, Els	Lleida	0
Tornabous	Lleida	0
Torrebesses	Lleida	0
Torre de Cabdella, La	Lleida	0
Torrefarrera	Lleida	0
Torregrossa	Lleida	0
Torrelameu	Lleida	0
Torres de Segre	Lleida	0
Torre-serona	Lleida	0
Tremp	Lleida	0
Vallbona de les Monges	Lleida	0
Valls de Valira, Les	Lleida	0
Vallfogona de Balaguer	Lleida	0
Verd??	Lleida	0
Vielha e Mijaran	Lleida	0
Vilagrassa	Lleida	0
Vilaller	Lleida	0
Vilam??s	Lleida	0
Vilanova de Bellpuig	Lleida	0
Vilanova de lAguda	Lleida	0
Vilanova de Mei??	Lleida	0
Vilanova de Segri??	Lleida	0
Vila-sana	Lleida	0
Vilosell, El	Lleida	0
Vilanova de la Barca	Lleida	0
Vinaixa	Lleida	0
Vall de Card??s	Lleida	0
Sant Mart?? de Riucorb	Lleida	0
Guingueta d??neu, La	Lleida	0
Castell de Mur	Lleida	0
Ribera dOndara	Lleida	0
Valls dAguilar, Les	Lleida	0
Torrefeta i Florejacs	Lleida	0
F??gols i Aliny??	Lleida	0
Vansa i F??rnols, La	Lleida	0
Josa i Tuix??n	Lleida	0
Plans de Si??, Els	Lleida	0
Gimenells i el Pla de la Font	Lleida	0
Riu de Cerdanya	Lleida	0
??balos	Rioja (La)	0
Agoncillo	Rioja (La)	0
Aguilar del R??o Alhama	Rioja (La)	0
Ajamil de Cameros	Rioja (La)	0
Albelda de Iregua	Rioja (La)	0
Alberite	Rioja (La)	0
Alcanadre	Rioja (La)	0
Aldeanueva de Ebro	Rioja (La)	0
Alesanco	Rioja (La)	0
Ales??n	Rioja (La)	0
Alfaro	Rioja (La)	0
Almarza de Cameros	Rioja (La)	0
Anguciana	Rioja (La)	0
Anguiano	Rioja (La)	0
Arenzana de Abajo	Rioja (La)	0
Arenzana de Arriba	Rioja (La)	0
Arnedillo	Rioja (La)	0
Arnedo	Rioja (La)	0
Arr??bal	Rioja (La)	0
Ausejo	Rioja (La)	0
Autol	Rioja (La)	0
Azofra	Rioja (La)	0
Badar??n	Rioja (La)	0
Ba??ares	Rioja (La)	0
Ba??os de Rioja	Rioja (La)	0
Ba??os de R??o Tob??a	Rioja (La)	0
Berceo	Rioja (La)	0
Bergasa	Rioja (La)	0
Bergasillas Bajera	Rioja (La)	0
Bezares	Rioja (La)	0
Bobadilla	Rioja (La)	0
Brieva de Cameros	Rioja (La)	0
Bri??as	Rioja (La)	0
Briones	Rioja (La)	0
Cabez??n de Cameros	Rioja (La)	0
Calahorra	Rioja (La)	0
Camprov??n	Rioja (La)	0
Canales de la Sierra	Rioja (La)	0
Canillas de R??o Tuerto	Rioja (La)	0
Ca??as	Rioja (La)	0
C??rdenas	Rioja (La)	0
Casalarreina	Rioja (La)	0
Casta??ares de Rioja	Rioja (La)	0
Castroviejo	Rioja (La)	0
Cellorigo	Rioja (La)	0
Cenicero	Rioja (La)	0
Cervera del R??o Alhama	Rioja (La)	0
Cidam??n	Rioja (La)	0
Cihuri	Rioja (La)	0
Cirue??a	Rioja (La)	0
Clavijo	Rioja (La)	0
Cordov??n	Rioja (La)	0
Corera	Rioja (La)	0
Cornago	Rioja (La)	0
Corporales	Rioja (La)	0
Cuzcurrita de R??o Tir??n	Rioja (La)	0
Daroca de Rioja	Rioja (La)	0
Enciso	Rioja (La)	0
Entrena	Rioja (La)	0
Estollo	Rioja (La)	0
Ezcaray	Rioja (La)	0
Foncea	Rioja (La)	0
Fonzaleche	Rioja (La)	0
Fuenmayor	Rioja (La)	0
Galb??rruli	Rioja (La)	0
Galilea	Rioja (La)	0
Gallinero de Cameros	Rioja (La)	0
Gimileo	Rioja (La)	0
Gra????n	Rioja (La)	0
Gr??valos	Rioja (La)	0
Haro	Rioja (La)	0
Herce	Rioja (La)	0
Herram??lluri	Rioja (La)	0
Herv??as	Rioja (La)	0
Hormilla	Rioja (La)	0
Hormilleja	Rioja (La)	0
Hornillos de Cameros	Rioja (La)	0
Hornos de Moncalvillo	Rioja (La)	0
Hu??rcanos	Rioja (La)	0
Igea	Rioja (La)	0
Jal??n de Cameros	Rioja (La)	0
Laguna de Cameros	Rioja (La)	0
Lagunilla del Jubera	Rioja (La)	0
Lardero	Rioja (La)	0
Ledesma de la Cogolla	Rioja (La)	0
Leiva	Rioja (La)	0
Leza de R??o Leza	Rioja (La)	0
Logro??o	Rioja (La)	0
Lumbreras	Rioja (La)	0
Manjarr??s	Rioja (La)	0
Mansilla de la Sierra	Rioja (La)	0
Manzanares de Rioja	Rioja (La)	0
Matute	Rioja (La)	0
Medrano	Rioja (La)	0
Munilla	Rioja (La)	0
Murillo de R??o Leza	Rioja (La)	0
Muro de Aguas	Rioja (La)	0
Muro en Cameros	Rioja (La)	0
N??jera	Rioja (La)	0
Nalda	Rioja (La)	0
Navaj??n	Rioja (La)	0
Navarrete	Rioja (La)	0
Nestares	Rioja (La)	0
Nieva de Cameros	Rioja (La)	0
Oc??n	Rioja (La)	0
Och??nduri	Rioja (La)	0
Ojacastro	Rioja (La)	0
Ollauri	Rioja (La)	0
Ortigosa de Cameros	Rioja (La)	0
Pazuengos	Rioja (La)	0
Pedroso	Rioja (La)	0
Pinillos	Rioja (La)	0
Pradej??n	Rioja (La)	0
Pradillo	Rioja (La)	0
Pr??jano	Rioja (La)	0
Quel	Rioja (La)	0
Rabanera	Rioja (La)	0
Rasillo de Cameros, El	Rioja (La)	0
Redal, El	Rioja (La)	0
Ribafrecha	Rioja (La)	0
Rinc??n de Soto	Rioja (La)	0
Robres del Castillo	Rioja (La)	0
Rodezno	Rioja (La)	0
Sajazarra	Rioja (La)	0
San Asensio	Rioja (La)	0
San Mill??n de la Cogolla	Rioja (La)	0
San Mill??n de Y??cora	Rioja (La)	0
San Rom??n de Cameros	Rioja (La)	0
Santa Coloma	Rioja (La)	0
Santa Engracia del Jubera	Rioja (La)	0
Santa Eulalia Bajera	Rioja (La)	0
Santo Domingo de la Calzada	Rioja (La)	0
San Torcuato	Rioja (La)	0
Santurde de Rioja	Rioja (La)	0
Santurdejo	Rioja (La)	0
San Vicente de la Sonsierra	Rioja (La)	0
Sojuela	Rioja (La)	0
Sorzano	Rioja (La)	0
Sot??s	Rioja (La)	0
Soto en Cameros	Rioja (La)	0
Terroba	Rioja (La)	0
Tirgo	Rioja (La)	0
Tob??a	Rioja (La)	0
Tormantos	Rioja (La)	0
Torrecilla en Cameros	Rioja (La)	0
Torrecilla sobre Alesanco	Rioja (La)	0
Torre en Cameros	Rioja (La)	0
Torremontalbo	Rioja (La)	0
Treviana	Rioja (La)	0
Tricio	Rioja (La)	0
Tudelilla	Rioja (La)	0
Uru??uela	Rioja (La)	0
Valdemadera	Rioja (La)	0
Valga????n	Rioja (La)	0
Ventosa	Rioja (La)	0
Ventrosa	Rioja (La)	0
Viguera	Rioja (La)	0
Villalba de Rioja	Rioja (La)	0
Villalobar de Rioja	Rioja (La)	0
Villamediana de Iregua	Rioja (La)	0
Villanueva de Cameros	Rioja (La)	0
Villar de Arnedo, El	Rioja (La)	0
Villar de Torre	Rioja (La)	0
Villarejo	Rioja (La)	0
Villarroya	Rioja (La)	0
Villarta-Quintana	Rioja (La)	0
Villavelayo	Rioja (La)	0
Villaverde de Rioja	Rioja (La)	0
Villoslada de Cameros	Rioja (La)	0
Viniegra de Abajo	Rioja (La)	0
Viniegra de Arriba	Rioja (La)	0
Zarrat??n	Rioja (La)	0
Zarzosa	Rioja (La)	0
Zorraqu??n	Rioja (La)	0
Abad??n	Lugo	0
Alfoz	Lugo	0
Antas de Ulla	Lugo	0
Baleira	Lugo	0
Barreiros	Lugo	0
Becerre??	Lugo	0
Begonte	Lugo	0
B??veda	Lugo	0
Carballedo	Lugo	0
Castro de Rei	Lugo	0
Castroverde	Lugo	0
Cervantes	Lugo	0
Cervo	Lugo	0
Corgo, O	Lugo	0
Cospeito	Lugo	0
Chantada	Lugo	0
Folgoso do Courel	Lugo	0
Fonsagrada, A	Lugo	0
Foz	Lugo	0
Friol	Lugo	0
Xermade	Lugo	0
Guitiriz	Lugo	0
Gunt??n	Lugo	0
Incio, O	Lugo	0
Xove	Lugo	0
L??ncara	Lugo	0
Lourenz??	Lugo	0
Lugo	Lugo	0
Meira	Lugo	0
Mondo??edo	Lugo	0
Monforte de Lemos	Lugo	0
Monterroso	Lugo	0
Muras	Lugo	0
Navia de Suarna	Lugo	0
Negueira de Mu??iz	Lugo	0
Nogais, As	Lugo	0
Ourol	Lugo	0
Outeiro de Rei	Lugo	0
Palas de Rei	Lugo	0
Pant??n	Lugo	0
Paradela	Lugo	0
P??ramo, O	Lugo	0
Pastoriza, A	Lugo	0
Pedrafita do Cebreiro	Lugo	0
Pol	Lugo	0
Pobra do Broll??n, A	Lugo	0
Pontenova, A	Lugo	0
Portomar??n	Lugo	0
Quiroga	Lugo	0
Ribadeo	Lugo	0
Ribas de Sil	Lugo	0
Ribeira de Piqu??n	Lugo	0
Riotorto	Lugo	0
Samos	Lugo	0
R??bade	Lugo	0
Sarria	Lugo	0
Savi??ao, O	Lugo	0
Sober	Lugo	0
Taboada	Lugo	0
Trabada	Lugo	0
Triacastela	Lugo	0
Valadouro, O	Lugo	0
Vicedo, O	Lugo	0
Vilalba	Lugo	0
Viveiro	Lugo	0
Baralla	Lugo	0
Burela	Lugo	0
Acebeda, La	Madrid	0
Ajalvir	Madrid	0
Alameda del Valle	Madrid	0
??lamo, El	Madrid	0
Alcal?? de Henares	Madrid	0
Alcobendas	Madrid	0
Alcorc??n	Madrid	0
Aldea del Fresno	Madrid	0
Algete	Madrid	0
Alpedrete	Madrid	0
Ambite	Madrid	0
Anchuelo	Madrid	0
Aranjuez	Madrid	0
Arganda del Rey	Madrid	0
Arroyomolinos	Madrid	0
Atazar, El	Madrid	0
Batres	Madrid	0
Becerril de la Sierra	Madrid	0
Belmonte de Tajo	Madrid	0
Berzosa del Lozoya	Madrid	0
Berrueco, El	Madrid	0
Boadilla del Monte	Madrid	0
Boalo, El	Madrid	0
Braojos	Madrid	0
Brea de Tajo	Madrid	0
Brunete	Madrid	0
Buitrago del Lozoya	Madrid	0
Bustarviejo	Madrid	0
Cabanillas de la Sierra	Madrid	0
Cabrera, La	Madrid	0
Cadalso de los Vidrios	Madrid	0
Camarma de Esteruelas	Madrid	0
Campo Real	Madrid	0
Canencia	Madrid	0
Caraba??a	Madrid	0
Casarrubuelos	Madrid	0
Cenicientos	Madrid	0
Cercedilla	Madrid	0
Cervera de Buitrago	Madrid	0
Ciempozuelos	Madrid	0
Cobe??a	Madrid	0
Colmenar del Arroyo	Madrid	0
Colmenar de Oreja	Madrid	0
Colmenarejo	Madrid	0
Colmenar Viejo	Madrid	0
Collado Mediano	Madrid	0
Collado Villalba	Madrid	0
Corpa	Madrid	0
Coslada	Madrid	0
Cubas de la Sagra	Madrid	0
Chapiner??a	Madrid	0
Chinch??n	Madrid	0
Daganzo de Arriba	Madrid	0
Escorial, El	Madrid	0
Estremera	Madrid	0
Fresnedillas de la Oliva	Madrid	0
Fresno de Torote	Madrid	0
Fuenlabrada	Madrid	0
Fuente el Saz de Jarama	Madrid	0
Fuentidue??a de Tajo	Madrid	0
Galapagar	Madrid	0
Garganta de los Montes	Madrid	0
Gargantilla del Lozoya y Pinilla de Buitrago	Madrid	0
Gascones	Madrid	0
Getafe	Madrid	0
Gri????n	Madrid	0
Guadalix de la Sierra	Madrid	0
Guadarrama	Madrid	0
Hiruela, La	Madrid	0
Horcajo de la Sierra-Aoslos	Madrid	0
Horcajuelo de la Sierra	Madrid	0
Hoyo de Manzanares	Madrid	0
Humanes de Madrid	Madrid	0
Legan??s	Madrid	0
Loeches	Madrid	0
Lozoya	Madrid	0
Madarcos	Madrid	0
Madrid	Madrid	0
Majadahonda	Madrid	0
Manzanares el Real	Madrid	0
Meco	Madrid	0
Mejorada del Campo	Madrid	0
Miraflores de la Sierra	Madrid	0
Molar, El	Madrid	0
Molinos, Los	Madrid	0
Montejo de la Sierra	Madrid	0
Moraleja de Enmedio	Madrid	0
Moralzarzal	Madrid	0
Morata de Taju??a	Madrid	0
M??stoles	Madrid	0
Navacerrada	Madrid	0
Navalafuente	Madrid	0
Navalagamella	Madrid	0
Navalcarnero	Madrid	0
Navarredonda y San Mam??s	Madrid	0
Navas del Rey	Madrid	0
Nuevo Bazt??n	Madrid	0
Olmeda de las Fuentes	Madrid	0
Orusco de Taju??a	Madrid	0
Paracuellos de Jarama	Madrid	0
Parla	Madrid	0
Patones	Madrid	0
Pedrezuela	Madrid	0
Pelayos de la Presa	Madrid	0
Perales de Taju??a	Madrid	0
Pezuela de las Torres	Madrid	0
Pinilla del Valle	Madrid	0
Pinto	Madrid	0
Pi??u??car-Gandullas	Madrid	0
Pozuelo de Alarc??n	Madrid	0
Pozuelo del Rey	Madrid	0
Pr??dena del Rinc??n	Madrid	0
Puebla de la Sierra	Madrid	0
Quijorna	Madrid	0
Rascafr??a	Madrid	0
Redue??a	Madrid	0
Ribatejada	Madrid	0
Rivas-Vaciamadrid	Madrid	0
Robledillo de la Jara	Madrid	0
Robledo de Chavela	Madrid	0
Robregordo	Madrid	0
Rozas de Madrid, Las	Madrid	0
Rozas de Puerto Real	Madrid	0
San Agust??n del Guadalix	Madrid	0
San Fernando de Henares	Madrid	0
San Lorenzo de El Escorial	Madrid	0
San Mart??n de la Vega	Madrid	0
San Mart??n de Valdeiglesias	Madrid	0
San Sebasti??n de los Reyes	Madrid	0
Santa Mar??a de la Alameda	Madrid	0
Santorcaz	Madrid	0
Santos de la Humosa, Los	Madrid	0
Serna del Monte, La	Madrid	0
Serranillos del Valle	Madrid	0
Sevilla la Nueva	Madrid	0
Somosierra	Madrid	0
Soto del Real	Madrid	0
Talamanca de Jarama	Madrid	0
Tielmes	Madrid	0
Titulcia	Madrid	0
Torrej??n de Ardoz	Madrid	0
Torrej??n de la Calzada	Madrid	0
Torrej??n de Velasco	Madrid	0
Torrelaguna	Madrid	0
Torrelodones	Madrid	0
Torremocha de Jarama	Madrid	0
Torres de la Alameda	Madrid	0
Valdaracete	Madrid	0
Valdeavero	Madrid	0
Valdelaguna	Madrid	0
Valdemanco	Madrid	0
Valdemaqueda	Madrid	0
Valdemorillo	Madrid	0
Valdemoro	Madrid	0
Valdeolmos-Alalpardo	Madrid	0
Valdepi??lagos	Madrid	0
Valdetorres de Jarama	Madrid	0
Valdilecha	Madrid	0
Valverde de Alcal??	Madrid	0
Velilla de San Antonio	Madrid	0
Vell??n, El	Madrid	0
Venturada	Madrid	0
Villaconejos	Madrid	0
Villa del Prado	Madrid	0
Villalbilla	Madrid	0
Villamanrique de Tajo	Madrid	0
Villamanta	Madrid	0
Villamantilla	Madrid	0
Villanueva de la Ca??ada	Madrid	0
Villanueva del Pardillo	Madrid	0
Villanueva de Perales	Madrid	0
Villar del Olmo	Madrid	0
Villarejo de Salvan??s	Madrid	0
Villaviciosa de Od??n	Madrid	0
Villavieja del Lozoya	Madrid	0
Zarzalejo	Madrid	0
Lozoyuela-Navas-Sieteiglesias	Madrid	0
Puentes Viejas	Madrid	0
Tres Cantos	Madrid	0
Alameda	M??laga	0
Alcauc??n	M??laga	0
Alfarnate	M??laga	0
Alfarnatejo	M??laga	0
Algarrobo	M??laga	0
Algatoc??n	M??laga	0
Alhaur??n de la Torre	M??laga	0
Alhaur??n el Grande	M??laga	0
Alm??char	M??laga	0
Almargen	M??laga	0
Almog??a	M??laga	0
??lora	M??laga	0
Alozaina	M??laga	0
Alpandeire	M??laga	0
Antequera	M??laga	0
??rchez	M??laga	0
Archidona	M??laga	0
Ardales	M??laga	0
Arenas	M??laga	0
Arriate	M??laga	0
Atajate	M??laga	0
Benadalid	M??laga	0
Benahav??s	M??laga	0
Benalaur??a	M??laga	0
Benalm??dena	M??laga	0
Benamargosa	M??laga	0
Benamocarra	M??laga	0
Benaoj??n	M??laga	0
Benarrab??	M??laga	0
Borge, El	M??laga	0
Burgo, El	M??laga	0
Campillos	M??laga	0
Canillas de Aceituno	M??laga	0
Canillas de Albaida	M??laga	0
Ca??ete la Real	M??laga	0
Carratraca	M??laga	0
Cartajima	M??laga	0
C??rtama	M??laga	0
Casabermeja	M??laga	0
Casarabonela	M??laga	0
Casares	M??laga	0
Co??n	M??laga	0
Colmenar	M??laga	0
Comares	M??laga	0
C??mpeta	M??laga	0
Cortes de la Frontera	M??laga	0
Cuevas Bajas	M??laga	0
Cuevas del Becerro	M??laga	0
Cuevas de San Marcos	M??laga	0
C??tar	M??laga	0
Estepona	M??laga	0
Faraj??n	M??laga	0
Frigiliana	M??laga	0
Fuengirola	M??laga	0
Fuente de Piedra	M??laga	0
Gauc??n	M??laga	0
Genalguacil	M??laga	0
Guaro	M??laga	0
Humilladero	M??laga	0
Igualeja	M??laga	0
Ist??n	M??laga	0
Iznate	M??laga	0
Jimera de L??bar	M??laga	0
Jubrique	M??laga	0
J??zcar	M??laga	0
Macharaviaya	M??laga	0
M??laga	M??laga	0
Manilva	M??laga	0
Marbella	M??laga	0
Mijas	M??laga	0
Moclinejo	M??laga	0
Mollina	M??laga	0
Monda	M??laga	0
Montejaque	M??laga	0
Nerja	M??laga	0
Oj??n	M??laga	0
Parauta	M??laga	0
Periana	M??laga	0
Pizarra	M??laga	0
Pujerra	M??laga	0
Rinc??n de la Victoria	M??laga	0
Riogordo	M??laga	0
Ronda	M??laga	0
Salares	M??laga	0
Sayalonga	M??laga	0
Sedella	M??laga	0
Sierra de Yeguas	M??laga	0
Teba	M??laga	0
Tolox	M??laga	0
Torrox	M??laga	0
Total??n	M??laga	0
Valle de Abdalaj??s	M??laga	0
V??lez-M??laga	M??laga	0
Villanueva de Algaidas	M??laga	0
Villanueva del Rosario	M??laga	0
Villanueva del Trabuco	M??laga	0
Villanueva de Tapia	M??laga	0
Vi??uela	M??laga	0
Yunquera	M??laga	0
Torremolinos	M??laga	0
Villanueva de la Concepci??n	M??laga	0
Abanilla	Murcia	0
Abar??n	Murcia	0
??guilas	Murcia	0
Albudeite	Murcia	0
Alcantarilla	Murcia	0
Aledo	Murcia	0
Alguazas	Murcia	0
Alhama de Murcia	Murcia	0
Archena	Murcia	0
Beniel	Murcia	0
Blanca	Murcia	0
Bullas	Murcia	0
Calasparra	Murcia	0
Campos del R??o	Murcia	0
Caravaca de la Cruz	Murcia	0
Cartagena	Murcia	0
Ceheg??n	Murcia	0
Ceut??	Murcia	0
Cieza	Murcia	0
Fortuna	Murcia	0
Fuente ??lamo de Murcia	Murcia	0
Jumilla	Murcia	0
Librilla	Murcia	0
Lorca	Murcia	0
Lorqu??	Murcia	0
Mazarr??n	Murcia	0
Molina de Segura	Murcia	0
Moratalla	Murcia	0
Mula	Murcia	0
Murcia	Murcia	0
Oj??s	Murcia	0
Pliego	Murcia	0
Puerto Lumbreras	Murcia	0
Ricote	Murcia	0
San Javier	Murcia	0
San Pedro del Pinatar	Murcia	0
Torre-Pacheco	Murcia	0
Torres de Cotillas, Las	Murcia	0
Totana	Murcia	0
Ulea	Murcia	0
Uni??n, La	Murcia	0
Villanueva del R??o Segura	Murcia	0
Yecla	Murcia	0
Santomera	Murcia	0
Alc??zares, Los	Murcia	0
Ab??igar	Navarra	0
Ab??rzuza/Abartzuza	Navarra	0
Abaurregaina/Abaurrea Alta	Navarra	0
Abaurrepea/Abaurrea Baja	Navarra	0
Aberin	Navarra	0
Ablitas	Navarra	0
Adi??s	Navarra	0
Aguilar de Cod??s	Navarra	0
Aibar/Oibar	Navarra	0
Altsasu/Alsasua	Navarra	0
All??n/Allin	Navarra	0
Allo	Navarra	0
Am??scoa Baja	Navarra	0
Anc??n/Antzin	Navarra	0
Andosilla	Navarra	0
Anso??in/Antsoain	Navarra	0
Anue	Navarra	0
A??orbe	Navarra	0
Aoiz/Agoitz	Navarra	0
Araitz	Navarra	0
Aranarache/Aranaratxe	Navarra	0
Arantza	Navarra	0
Aranguren	Navarra	0
Arano	Navarra	0
Arakil	Navarra	0
Aras	Navarra	0
Arbizu	Navarra	0
Arce/Artzi	Navarra	0
Arcos, Los	Navarra	0
Arellano	Navarra	0
Areso	Navarra	0
Arguedas	Navarra	0
Aria	Navarra	0
Aribe	Navarra	0
Arma??anzas	Navarra	0
Arr??niz	Navarra	0
Arruazu	Navarra	0
Artajona	Navarra	0
Artazu	Navarra	0
Atez	Navarra	0
Ayegui/Aiegi	Navarra	0
Azagra	Navarra	0
Azuelo	Navarra	0
Bakaiku	Navarra	0
Bar??soain	Navarra	0
Barbarin	Navarra	0
Bargota	Navarra	0
Barillas	Navarra	0
Basaburua	Navarra	0
Baztan	Navarra	0
Beire	Navarra	0
Belasco??in	Navarra	0
Berbinzana	Navarra	0
Bertizarana	Navarra	0
Betelu	Navarra	0
Biurrun-Olcoz	Navarra	0
Bu??uel	Navarra	0
Auritz/Burguete	Navarra	0
Burgui/Burgi	Navarra	0
Burlada/Burlata	Navarra	0
Busto, El	Navarra	0
Cabanillas	Navarra	0
Cabredo	Navarra	0
Cadreita	Navarra	0
Caparroso	Navarra	0
C??rcar	Navarra	0
Carcastillo	Navarra	0
Cascante	Navarra	0
C??seda	Navarra	0
Castej??n	Navarra	0
Castillonuevo	Navarra	0
Cintru??nigo	Navarra	0
Ziordia	Navarra	0
Cirauqui/Zirauki	Navarra	0
Ciriza/Ziritza	Navarra	0
Cizur	Navarra	0
Corella	Navarra	0
Cortes	Navarra	0
Desojo	Navarra	0
Dicastillo	Navarra	0
Donamaria	Navarra	0
Etxalar	Navarra	0
Echarri	Navarra	0
Etxarri-Aranatz	Navarra	0
Etxauri	Navarra	0
Eg????s	Navarra	0
Elgorriaga	Navarra	0
No??in (Valle de Elorz)/Noain (Elortzibar)	Navarra	0
En??riz/Eneritz	Navarra	0
Eratsun	Navarra	0
Ergoiena	Navarra	0
Erro	Navarra	0
Ezc??roz/Ezkaroze	Navarra	0
Eslava	Navarra	0
Esparza de Salazar/Espartza Zaraitzu	Navarra	0
Espronceda	Navarra	0
Estella-Lizarra	Navarra	0
Esteribar	Navarra	0
Etayo	Navarra	0
Eulate	Navarra	0
Ezcabarte	Navarra	0
Ezkurra	Navarra	0
Ezprogui	Navarra	0
Falces	Navarra	0
Fitero	Navarra	0
Fontellas	Navarra	0
Funes	Navarra	0
Fusti??ana	Navarra	0
Galar	Navarra	0
Gallipienzo/Galipentzu	Navarra	0
Gallu??s/Galoze	Navarra	0
Garaioa	Navarra	0
Garde	Navarra	0
Gar??noain	Navarra	0
Garralda	Navarra	0
Genevilla	Navarra	0
Goizueta	Navarra	0
Go??i	Navarra	0
G??esa/Gorza	Navarra	0
Gues??laz/Gesalatz	Navarra	0
Guirguillano	Navarra	0
Huarte/Uharte	Navarra	0
Uharte-Arakil	Navarra	0
Ibargoiti	Navarra	0
Ig??zquiza	Navarra	0
Imotz	Navarra	0
Ira??eta	Navarra	0
Isaba/Izaba	Navarra	0
Ituren	Navarra	0
Iturmendi	Navarra	0
Iza/Itza	Navarra	0
Izagaondoa	Navarra	0
Izalzu/Itzaltzu	Navarra	0
Jaurrieta	Navarra	0
Javier	Navarra	0
Juslape??a	Navarra	0
Beintza-Labaien	Navarra	0
Lakuntza	Navarra	0
Lana	Navarra	0
Lantz	Navarra	0
Lapoblaci??n	Navarra	0
Larraga	Navarra	0
Larraona	Navarra	0
Larraun	Navarra	0
Lazagurr??a	Navarra	0
Leache	Navarra	0
Legarda	Navarra	0
Legaria	Navarra	0
Leitza	Navarra	0
Leoz/Leotz	Navarra	0
Lerga	Navarra	0
Ler??n	Navarra	0
Lesaka	Navarra	0
Lez??un	Navarra	0
Li??dena	Navarra	0
Lizo??in-Arriasgoiti	Navarra	0
Lodosa	Navarra	0
L??nguida/Longida	Navarra	0
Lumbier	Navarra	0
Luquin	Navarra	0
Ma??eru	Navarra	0
Mara????n	Navarra	0
Marcilla	Navarra	0
M??lida	Navarra	0
Mendavia	Navarra	0
Mendaza	Navarra	0
Mendigorr??a	Navarra	0
Metauten	Navarra	0
Milagro	Navarra	0
Mirafuentes	Navarra	0
Miranda de Arga	Navarra	0
Monreal/Elo	Navarra	0
Monteagudo	Navarra	0
Morentin	Navarra	0
Mues	Navarra	0
Murchante	Navarra	0
Murieta	Navarra	0
Murillo el Cuende	Navarra	0
Murillo el Fruto	Navarra	0
Muruz??bal	Navarra	0
Navascu??s/Nabaskoze	Navarra	0
Nazar	Navarra	0
Obanos	Navarra	0
Oco	Navarra	0
Ochagav??a/Otsagabia	Navarra	0
Odieta	Navarra	0
Oitz	Navarra	0
Olaibar	Navarra	0
Olazti/Olazagut??a	Navarra	0
Olejua	Navarra	0
Olite/Erriberri	Navarra	0
Ol??riz/Oloritz	Navarra	0
Cendea de Olza/Oltza Zendea	Navarra	0
Ollo	Navarra	0
Orbaizeta	Navarra	0
Orbara	Navarra	0
Or??soain	Navarra	0
Oronz/Orontze	Navarra	0
Oroz-Betelu/Orotz-Betelu	Navarra	0
Oteiza	Navarra	0
Pamplona/Iru??a	Navarra	0
Peralta/Azkoien	Navarra	0
Petilla de Arag??n	Navarra	0
Piedramillera	Navarra	0
Pitillas	Navarra	0
Puente la Reina/Gares	Navarra	0
Pueyo	Navarra	0
Ribaforada	Navarra	0
Romanzado	Navarra	0
Roncal/Erronkari	Navarra	0
Orreaga/Roncesvalles	Navarra	0
Sada	Navarra	0
Sald??as	Navarra	0
Salinas de Oro/Jaitz	Navarra	0
San Adri??n	Navarra	0
Sang??esa/Zangoza	Navarra	0
San Mart??n de Unx	Navarra	0
Sansol	Navarra	0
Santacara	Navarra	0
Doneztebe/Santesteban	Navarra	0
Sarri??s/Sartze	Navarra	0
Sartaguda	Navarra	0
Sesma	Navarra	0
Sorlada	Navarra	0
Sunbilla	Navarra	0
Tafalla	Navarra	0
Tiebas-Muruarte de Reta	Navarra	0
Tirapu	Navarra	0
Torralba del R??o	Navarra	0
Torres del R??o	Navarra	0
Tudela	Navarra	0
Tulebras	Navarra	0
Ucar	Navarra	0
Uju??	Navarra	0
Ultzama	Navarra	0
Unciti	Navarra	0
Unzu??/Untzue	Navarra	0
Urdazubi/Urdax	Navarra	0
Urdiain	Navarra	0
Urraul Alto	Navarra	0
Urraul Bajo	Navarra	0
Urroz-Villa	Navarra	0
Urrotz	Navarra	0
Urzainqui/Urzainki	Navarra	0
Uterga	Navarra	0
Uzt??rroz/Uztarroze	Navarra	0
Luzaide/Valcarlos	Navarra	0
Valtierra	Navarra	0
Bera	Navarra	0
Viana	Navarra	0
Vid??ngoz/Bidankoze	Navarra	0
Bidaurreta	Navarra	0
Villafranca	Navarra	0
Villamayor de Monjard??n	Navarra	0
Hiriberri/Villanueva de Aezkoa	Navarra	0
Villatuerta	Navarra	0
Villava/Atarrabia	Navarra	0
Igantzi	Navarra	0
Valle de Yerri/Deierri	Navarra	0
Yesa	Navarra	0
Zabalza/Zabaltza	Navarra	0
Zubieta	Navarra	0
Zugarramurdi	Navarra	0
Z????iga	Navarra	0
Bara??ain	Navarra	0
Berrioplano/Berriobeiti	Navarra	0
Berriozar	Navarra	0
Irurtzun	Navarra	0
Beri??in	Navarra	0
Orkoien	Navarra	0
Zizur Mayor/Zizur Nagusia	Navarra	0
Lekunberri	Navarra	0
Allariz	Ourense	0
Amoeiro	Ourense	0
Arnoia, A	Ourense	0
Avi??n	Ourense	0
Baltar	Ourense	0
Bande	Ourense	0
Ba??os de Molgas	Ourense	0
Barbad??s	Ourense	0
Barco de Valdeorras, O	Ourense	0
Beade	Ourense	0
Beariz	Ourense	0
Blancos, Os	Ourense	0
Bobor??s	Ourense	0
Bola, A	Ourense	0
Bolo, O	Ourense	0
Calvos de Rand??n	Ourense	0
Carballeda de Valdeorras	Ourense	0
Carballeda de Avia	Ourense	0
Carballi??o, O	Ourense	0
Cartelle	Ourense	0
Castrelo do Val	Ourense	0
Castrelo de Mi??o	Ourense	0
Castro Caldelas	Ourense	0
Celanova	Ourense	0
Cenlle	Ourense	0
Coles	Ourense	0
Cortegada	Ourense	0
Cualedro	Ourense	0
Chandrexa de Queixa	Ourense	0
Entrimo	Ourense	0
Esgos	Ourense	0
Xinzo de Limia	Ourense	0
Gomesende	Ourense	0
Gudi??a, A	Ourense	0
Irixo, O	Ourense	0
Xunqueira de Amb??a	Ourense	0
Xunqueira de Espadanedo	Ourense	0
Larouco	Ourense	0
Laza	Ourense	0
Leiro	Ourense	0
Lobeira	Ourense	0
Lobios	Ourense	0
Maceda	Ourense	0
Manzaneda	Ourense	0
Maside	Ourense	0
Mel??n	Ourense	0
Merca, A	Ourense	0
Mezquita, A	Ourense	0
Montederramo	Ourense	0
Monterrei	Ourense	0
Mu????os	Ourense	0
Nogueira de Ramu??n	Ourense	0
O??mbra	Ourense	0
Ourense	Ourense	0
Paderne de Allariz	Ourense	0
Padrenda	Ourense	0
Parada de Sil	Ourense	0
Pereiro de Aguiar, O	Ourense	0
Peroxa, A	Ourense	0
Pet??n	Ourense	0
Pi??or	Ourense	0
Porqueira	Ourense	0
Pobra de Trives, A	Ourense	0
Pontedeva	Ourense	0
Punx??n	Ourense	0
Quintela de Leirado	Ourense	0
Rairiz de Veiga	Ourense	0
Ramir??s	Ourense	0
Ribadavia	Ourense	0
San Xo??n de R??o	Ourense	0
Ri??s	Ourense	0
R??a, A	Ourense	0
Rubi??	Ourense	0
San Amaro	Ourense	0
San Cibrao das Vi??as	Ourense	0
San Cristovo de Cea	Ourense	0
Sandi??s	Ourense	0
Sarreaus	Ourense	0
Taboadela	Ourense	0
Teixeira, A	Ourense	0
To??n	Ourense	0
Trasmiras	Ourense	0
Veiga, A	Ourense	0
Verea	Ourense	0
Ver??n	Ourense	0
Viana do Bolo	Ourense	0
Vilamar??n	Ourense	0
Vilamart??n de Valdeorras	Ourense	0
Vilar de Barrio	Ourense	0
Vilar de Santos	Ourense	0
Vilardev??s	Ourense	0
Vilari??o de Conso	Ourense	0
Allande	Asturias	0
Aller	Asturias	0
Amieva	Asturias	0
Avil??s	Asturias	0
Belmonte de Miranda	Asturias	0
Bimenes	Asturias	0
Boal	Asturias	0
Cabrales	Asturias	0
Cabranes	Asturias	0
Candamo	Asturias	0
Cangas del Narcea	Asturias	0
Cangas de On??s	Asturias	0
Caravia	Asturias	0
Carre??o	Asturias	0
Caso	Asturias	0
Castrill??n	Asturias	0
Castropol	Asturias	0
Coa??a	Asturias	0
Colunga	Asturias	0
Corvera de Asturias	Asturias	0
Cudillero	Asturias	0
Dega??a	Asturias	0
Franco, El	Asturias	0
Gij??n	Asturias	0
Goz??n	Asturias	0
Grado	Asturias	0
Grandas de Salime	Asturias	0
Ibias	Asturias	0
Illano	Asturias	0
Illas	Asturias	0
Langreo	Asturias	0
Laviana	Asturias	0
Lena	Asturias	0
Vald??s	Asturias	0
Llanera	Asturias	0
Llanes	Asturias	0
Mieres	Asturias	0
Morc??n	Asturias	0
Muros de Nal??n	Asturias	0
Nava	Asturias	0
Navia	Asturias	0
Nore??a	Asturias	0
On??s	Asturias	0
Oviedo	Asturias	0
Parres	Asturias	0
Pe??amellera Alta	Asturias	0
Pe??amellera Baja	Asturias	0
Pesoz	Asturias	0
Pilo??a	Asturias	0
Ponga	Asturias	0
Pravia	Asturias	0
Proaza	Asturias	0
Quir??s	Asturias	0
Regueras, Las	Asturias	0
Ribadedeva	Asturias	0
Ribadesella	Asturias	0
Ribera de Arriba	Asturias	0
Riosa	Asturias	0
Salas	Asturias	0
San Mart??n del Rey Aurelio	Asturias	0
San Mart??n de Oscos	Asturias	0
Santa Eulalia de Oscos	Asturias	0
San Tirso de Abres	Asturias	0
Santo Adriano	Asturias	0
Sariego	Asturias	0
Siero	Asturias	0
Sobrescobio	Asturias	0
Somiedo	Asturias	0
Soto del Barco	Asturias	0
Tapia de Casariego	Asturias	0
Taramundi	Asturias	0
Teverga	Asturias	0
Tineo	Asturias	0
Vegadeo	Asturias	0
Villanueva de Oscos	Asturias	0
Villaviciosa	Asturias	0
Villay??n	Asturias	0
Yernes y Tameza	Asturias	0
Abarca de Campos	Palencia	0
Abia de las Torres	Palencia	0
Aguilar de Campoo	Palencia	0
Alar del Rey	Palencia	0
Alba de Cerrato	Palencia	0
Amayuelas de Arriba	Palencia	0
Ampudia	Palencia	0
Amusco	Palencia	0
Antig??edad	Palencia	0
Arconada	Palencia	0
Astudillo	Palencia	0
Autilla del Pino	Palencia	0
Autillo de Campos	Palencia	0
Ayuela	Palencia	0
Baltan??s	Palencia	0
Venta de Ba??os	Palencia	0
Baquer??n de Campos	Palencia	0
B??rcena de Campos	Palencia	0
Barruelo de Santull??n	Palencia	0
B??scones de Ojeda	Palencia	0
Becerril de Campos	Palencia	0
Belmonte de Campos	Palencia	0
Berzosilla	Palencia	0
Boada de Campos	Palencia	0
Boadilla del Camino	Palencia	0
Boadilla de Rioseco	Palencia	0
Bra??osera	Palencia	0
Buenavista de Valdavia	Palencia	0
Bustillo de la Vega	Palencia	0
Bustillo del P??ramo de Carri??n	Palencia	0
Calahorra de Boedo	Palencia	0
Calzada de los Molinos	Palencia	0
Capillas	Palencia	0
Carde??osa de Volpejera	Palencia	0
Carri??n de los Condes	Palencia	0
Castil de Vela	Palencia	0
Castrej??n de la Pe??a	Palencia	0
Castrillo de Don Juan	Palencia	0
Castrillo de Onielo	Palencia	0
Castrillo de Villavega	Palencia	0
Castromocho	Palencia	0
Cervatos de la Cueza	Palencia	0
Cervera de Pisuerga	Palencia	0
Cevico de la Torre	Palencia	0
Cevico Navero	Palencia	0
Cisneros	Palencia	0
Cobos de Cerrato	Palencia	0
Collazos de Boedo	Palencia	0
Congosto de Valdavia	Palencia	0
Cordovilla la Real	Palencia	0
Cubillas de Cerrato	Palencia	0
Dehesa de Montejo	Palencia	0
Dehesa de Romanos	Palencia	0
Due??as	Palencia	0
Espinosa de Cerrato	Palencia	0
Espinosa de Villagonzalo	Palencia	0
Frechilla	Palencia	0
Fresno del R??o	Palencia	0
Fr??mista	Palencia	0
Fuentes de Nava	Palencia	0
Fuentes de Valdepero	Palencia	0
Grijota	Palencia	0
Guardo	Palencia	0
Guaza de Campos	Palencia	0
H??rmedes de Cerrato	Palencia	0
Herrera de Pisuerga	Palencia	0
Herrera de Valdeca??as	Palencia	0
Hontoria de Cerrato	Palencia	0
Hornillos de Cerrato	Palencia	0
Husillos	Palencia	0
Itero de la Vega	Palencia	0
Lagartos	Palencia	0
Lantadilla	Palencia	0
Vid de Ojeda, La	Palencia	0
Ledigos	Palencia	0
Lomas	Palencia	0
Magaz de Pisuerga	Palencia	0
Manquillos	Palencia	0
Mantinos	Palencia	0
Marcilla de Campos	Palencia	0
Mazariegos	Palencia	0
Mazuecos de Valdeginate	Palencia	0
Melgar de Yuso	Palencia	0
Meneses de Campos	Palencia	0
Micieces de Ojeda	Palencia	0
Monz??n de Campos	Palencia	0
Moratinos	Palencia	0
Mud??	Palencia	0
Nogal de las Huertas	Palencia	0
Olea de Boedo	Palencia	0
Olmos de Ojeda	Palencia	0
Osornillo	Palencia	0
Palencia	Palencia	0
Palenzuela	Palencia	0
P??ramo de Boedo	Palencia	0
Paredes de Nava	Palencia	0
Payo de Ojeda	Palencia	0
Pedraza de Campos	Palencia	0
Pedrosa de la Vega	Palencia	0
Perales	Palencia	0
Pino del R??o	Palencia	0
Pi??a de Campos	Palencia	0
Poblaci??n de Arroyo	Palencia	0
Poblaci??n de Campos	Palencia	0
Poblaci??n de Cerrato	Palencia	0
Polentinos	Palencia	0
Pomar de Valdivia	Palencia	0
Poza de la Vega	Palencia	0
Pozo de Urama	Palencia	0
Pr??danos de Ojeda	Palencia	0
Puebla de Valdavia, La	Palencia	0
Quintana del Puente	Palencia	0
Quintanilla de Onso??a	Palencia	0
Reinoso de Cerrato	Palencia	0
Renedo de la Vega	Palencia	0
Requena de Campos	Palencia	0
Respenda de la Pe??a	Palencia	0
Revenga de Campos	Palencia	0
Revilla de Collazos	Palencia	0
Ribas de Campos	Palencia	0
Riberos de la Cueza	Palencia	0
Salda??a	Palencia	0
Salinas de Pisuerga	Palencia	0
San Cebri??n de Campos	Palencia	0
San Cebri??n de Mud??	Palencia	0
San Crist??bal de Boedo	Palencia	0
San Mam??s de Campos	Palencia	0
San Rom??n de la Cuba	Palencia	0
Santa Cecilia del Alcor	Palencia	0
Santa Cruz de Boedo	Palencia	0
Santerv??s de la Vega	Palencia	0
Santib????ez de Ecla	Palencia	0
Santib????ez de la Pe??a	Palencia	0
Santoyo	Palencia	0
Serna, La	Palencia	0
Sotoba??ado y Priorato	Palencia	0
Soto de Cerrato	Palencia	0
Tabanera de Cerrato	Palencia	0
Tabanera de Valdavia	Palencia	0
T??mara de Campos	Palencia	0
Tariego de Cerrato	Palencia	0
Torquemada	Palencia	0
Torremormoj??n	Palencia	0
Triollo	Palencia	0
Valbuena de Pisuerga	Palencia	0
Valdeolmillos	Palencia	0
Valderr??bano	Palencia	0
Valde-Ucieza	Palencia	0
Valle de Cerrato	Palencia	0
Velilla del R??o Carri??n	Palencia	0
Vertavillo	Palencia	0
Villabasta de Valdavia	Palencia	0
Villacidaler	Palencia	0
Villaconancio	Palencia	0
Villada	Palencia	0
Villaeles de Valdavia	Palencia	0
Villah??n	Palencia	0
Villaherreros	Palencia	0
Villalaco	Palencia	0
Villalba de Guardo	Palencia	0
Villalc??zar de Sirga	Palencia	0
Villalc??n	Palencia	0
Villalob??n	Palencia	0
Villaluenga de la Vega	Palencia	0
Villamart??n de Campos	Palencia	0
Villamediana	Palencia	0
Villameriel	Palencia	0
Villamoronta	Palencia	0
Villamuera de la Cueza	Palencia	0
Villamuriel de Cerrato	Palencia	0
Villanueva del Rebollar	Palencia	0
Villanu??o de Valdavia	Palencia	0
Villaprovedo	Palencia	0
Villarmentero de Campos	Palencia	0
Villarrab??	Palencia	0
Villarramiel	Palencia	0
Villasarracino	Palencia	0
Villasila de Valdavia	Palencia	0
Villaturde	Palencia	0
Villaumbrales	Palencia	0
Villaviudas	Palencia	0
Viller??as de Campos	Palencia	0
Villodre	Palencia	0
Villodrigo	Palencia	0
Villoldo	Palencia	0
Villota del P??ramo	Palencia	0
Villovieco	Palencia	0
Osorno la Mayor	Palencia	0
Valle del Retortillo	Palencia	0
Loma de Ucieza	Palencia	0
Pern??a, La	Palencia	0
Agaete	Palmas (Las)	0
Ag??imes	Palmas (Las)	0
Antigua	Palmas (Las)	0
Arrecife	Palmas (Las)	0
Artenara	Palmas (Las)	0
Arucas	Palmas (Las)	0
Betancuria	Palmas (Las)	0
Firgas	Palmas (Las)	0
G??ldar	Palmas (Las)	0
Har??a	Palmas (Las)	0
Ingenio	Palmas (Las)	0
Mog??n	Palmas (Las)	0
Moya	Palmas (Las)	0
Oliva, La	Palmas (Las)	0
P??jara	Palmas (Las)	0
Palmas de Gran Canaria, Las	Palmas (Las)	0
Puerto del Rosario	Palmas (Las)	0
San Bartolom??	Palmas (Las)	0
San Bartolom?? de Tirajana	Palmas (Las)	0
Aldea de San Nicol??s, La	Palmas (Las)	0
Santa Br??gida	Palmas (Las)	0
Santa Luc??a de Tirajana	Palmas (Las)	0
Santa Mar??a de Gu??a de Gran Canaria	Palmas (Las)	0
Teguise	Palmas (Las)	0
Tejeda	Palmas (Las)	0
Telde	Palmas (Las)	0
Teror	Palmas (Las)	0
T??as	Palmas (Las)	0
Tinajo	Palmas (Las)	0
Tuineje	Palmas (Las)	0
Valsequillo de Gran Canaria	Palmas (Las)	0
Valleseco	Palmas (Las)	0
Vega de San Mateo	Palmas (Las)	0
Yaiza	Palmas (Las)	0
Arbo	Pontevedra	0
Barro	Pontevedra	0
Baiona	Pontevedra	0
Bueu	Pontevedra	0
Caldas de Reis	Pontevedra	0
Cambados	Pontevedra	0
Campo Lameiro	Pontevedra	0
Cangas	Pontevedra	0
Ca??iza, A	Pontevedra	0
Catoira	Pontevedra	0
Cerdedo	Pontevedra	0
Cotobade	Pontevedra	0
Covelo	Pontevedra	0
Crecente	Pontevedra	0
Cuntis	Pontevedra	0
Doz??n	Pontevedra	0
Estrada, A	Pontevedra	0
Forcarei	Pontevedra	0
Fornelos de Montes	Pontevedra	0
Agolada	Pontevedra	0
Gondomar	Pontevedra	0
Grove, O	Pontevedra	0
Guarda, A	Pontevedra	0
Lal??n	Pontevedra	0
Lama, A	Pontevedra	0
Mar??n	Pontevedra	0
Mea??o	Pontevedra	0
Meis	Pontevedra	0
Moa??a	Pontevedra	0
Mondariz	Pontevedra	0
Mondariz-Balneario	Pontevedra	0
Mora??a	Pontevedra	0
Mos	Pontevedra	0
Neves, As	Pontevedra	0
Nigr??n	Pontevedra	0
Oia	Pontevedra	0
Pazos de Borb??n	Pontevedra	0
Pontevedra	Pontevedra	0
Porri??o, O	Pontevedra	0
Portas	Pontevedra	0
Poio	Pontevedra	0
Ponteareas	Pontevedra	0
Ponte Caldelas	Pontevedra	0
Pontecesures	Pontevedra	0
Redondela	Pontevedra	0
Ribadumia	Pontevedra	0
Rodeiro	Pontevedra	0
Rosal, O	Pontevedra	0
Salceda de Caselas	Pontevedra	0
Salvaterra de Mi??o	Pontevedra	0
Sanxenxo	Pontevedra	0
Silleda	Pontevedra	0
Soutomaior	Pontevedra	0
Tomi??o	Pontevedra	0
Tui	Pontevedra	0
Valga	Pontevedra	0
Vigo	Pontevedra	0
Vilaboa	Pontevedra	0
Vila de Cruces	Pontevedra	0
Vilagarc??a de Arousa	Pontevedra	0
Vilanova de Arousa	Pontevedra	0
Illa de Arousa, A	Pontevedra	0
Abusejo	Salamanca	0
Agallas	Salamanca	0
Ahigal de los Aceiteros	Salamanca	0
Ahigal de Villarino	Salamanca	0
Alameda de Gard??n, La	Salamanca	0
Alamedilla, La	Salamanca	0
Alaraz	Salamanca	0
Alba de Tormes	Salamanca	0
Alba de Yeltes	Salamanca	0
Alberca, La	Salamanca	0
Alberguer??a de Arga????n, La	Salamanca	0
Alconada	Salamanca	0
Aldeacipreste	Salamanca	0
Aldead??vila de la Ribera	Salamanca	0
Aldea del Obispo	Salamanca	0
Aldealengua	Salamanca	0
Aldeanueva de Figueroa	Salamanca	0
Aldeanueva de la Sierra	Salamanca	0
Aldearrodrigo	Salamanca	0
Aldearrubia	Salamanca	0
Aldeaseca de Alba	Salamanca	0
Aldeaseca de la Frontera	Salamanca	0
Aldeatejada	Salamanca	0
Aldeavieja de Tormes	Salamanca	0
Aldehuela de la B??veda	Salamanca	0
Aldehuela de Yeltes	Salamanca	0
Almenara de Tormes	Salamanca	0
Almendra	Salamanca	0
Anaya de Alba	Salamanca	0
A??over de Tormes	Salamanca	0
Arabayona de M??gica	Salamanca	0
Arapiles	Salamanca	0
Arcediano	Salamanca	0
Arco, El	Salamanca	0
Armenteros	Salamanca	0
San Miguel del Robledo	Salamanca	0
Atalaya, La	Salamanca	0
Babilafuente	Salamanca	0
Ba??ob??rez	Salamanca	0
Barbadillo	Salamanca	0
Barbalos	Salamanca	0
Barceo	Salamanca	0
Barruecopardo	Salamanca	0
Bastida, La	Salamanca	0
B??jar	Salamanca	0
Bele??a	Salamanca	0
Bermellar	Salamanca	0
Berrocal de Huebra	Salamanca	0
Berrocal de Salvatierra	Salamanca	0
Boada	Salamanca	0
Bod??n, El	Salamanca	0
Bogajo	Salamanca	0
Bouza, La	Salamanca	0
B??veda del R??o Almar	Salamanca	0
Brincones	Salamanca	0
Buenamadre	Salamanca	0
Buenavista	Salamanca	0
Cabaco, El	Salamanca	0
Cabezabellosa de la Calzada	Salamanca	0
Cabeza de B??jar, La	Salamanca	0
Cabeza del Caballo	Salamanca	0
Cabrerizos	Salamanca	0
Cabrillas	Salamanca	0
Calvarrasa de Abajo	Salamanca	0
Calvarrasa de Arriba	Salamanca	0
Calzada de B??jar, La	Salamanca	0
Calzada de Don Diego	Salamanca	0
Calzada de Valdunciel	Salamanca	0
Campillo de Azaba	Salamanca	0
Campo de Pe??aranda, El	Salamanca	0
Candelario	Salamanca	0
Canillas de Abajo	Salamanca	0
Cantagallo	Salamanca	0
Cantalapiedra	Salamanca	0
Cantalpino	Salamanca	0
Cantaracillo	Salamanca	0
Carbajosa de la Sagrada	Salamanca	0
Carpio de Azaba	Salamanca	0
Carrascal de Barregas	Salamanca	0
Carrascal del Obispo	Salamanca	0
Casafranca	Salamanca	0
Casas del Conde, Las	Salamanca	0
Casillas de Flores	Salamanca	0
Castellanos de Moriscos	Salamanca	0
Castillejo de Mart??n Viejo	Salamanca	0
Castraz	Salamanca	0
Cepeda	Salamanca	0
Cereceda de la Sierra	Salamanca	0
Cerezal de Pe??ahorcada	Salamanca	0
Cerralbo	Salamanca	0
Cerro, El	Salamanca	0
Cespedosa de Tormes	Salamanca	0
Cilleros de la Bastida	Salamanca	0
Cip??rez	Salamanca	0
Ciudad Rodrigo	Salamanca	0
Coca de Alba	Salamanca	0
Colmenar de Montemayor	Salamanca	0
Cordovilla	Salamanca	0
Crist??bal	Salamanca	0
Cubo de Don Sancho, El	Salamanca	0
Chagarc??a Medianero	Salamanca	0
Dios le Guarde	Salamanca	0
Do??inos de Ledesma	Salamanca	0
Do??inos de Salamanca	Salamanca	0
Ejeme	Salamanca	0
Encina, La	Salamanca	0
Encina de San Silvestre	Salamanca	0
Encinas de Abajo	Salamanca	0
Encinas de Arriba	Salamanca	0
Encinasola de los Comendadores	Salamanca	0
Endrinal	Salamanca	0
Escurial de la Sierra	Salamanca	0
Espada??a	Salamanca	0
Espeja	Salamanca	0
Espino de la Orbada	Salamanca	0
Florida de Li??bana	Salamanca	0
Forfoleda	Salamanca	0
Frades de la Sierra	Salamanca	0
Fregeneda, La	Salamanca	0
Fresnedoso	Salamanca	0
Fresno Alh??ndiga	Salamanca	0
Fuente de San Esteban, La	Salamanca	0
Fuenteguinaldo	Salamanca	0
Fuenteliante	Salamanca	0
Fuenterroble de Salvatierra	Salamanca	0
Fuentes de B??jar	Salamanca	0
Fuentes de O??oro	Salamanca	0
Gajates	Salamanca	0
Galindo y Perahuy	Salamanca	0
Galinduste	Salamanca	0
Galisancho	Salamanca	0
Gallegos de Arga????n	Salamanca	0
Gallegos de Solmir??n	Salamanca	0
Garcibuey	Salamanca	0
Garcihern??ndez	Salamanca	0
Garcirrey	Salamanca	0
Gejuelo del Barro	Salamanca	0
Golpejas	Salamanca	0
Gomecello	Salamanca	0
Guadramiro	Salamanca	0
Guijo de ??vila	Salamanca	0
Guijuelo	Salamanca	0
Herguijuela de Ciudad Rodrigo	Salamanca	0
Herguijuela de la Sierra	Salamanca	0
Herguijuela del Campo	Salamanca	0
Hinojosa de Duero	Salamanca	0
Horcajo de Montemayor	Salamanca	0
Horcajo Medianero	Salamanca	0
Hoya, La	Salamanca	0
Huerta	Salamanca	0
Iruelos	Salamanca	0
Ituero de Azaba	Salamanca	0
Juzbado	Salamanca	0
Lagunilla	Salamanca	0
Larrodrigo	Salamanca	0
Ledesma	Salamanca	0
Ledrada	Salamanca	0
Linares de Riofr??o	Salamanca	0
Lumbrales	Salamanca	0
Macotera	Salamanca	0
Machac??n	Salamanca	0
Madro??al	Salamanca	0
Ma??llo, El	Salamanca	0
Malpartida	Salamanca	0
Mancera de Abajo	Salamanca	0
Manzano, El	Salamanca	0
Martiago	Salamanca	0
Martinamor	Salamanca	0
Mart??n de Yeltes	Salamanca	0
Masueco	Salamanca	0
Castellanos de Villiquera	Salamanca	0
Mata de Ledesma, La	Salamanca	0
Matilla de los Ca??os del R??o	Salamanca	0
Maya, La	Salamanca	0
Membribe de la Sierra	Salamanca	0
Mieza	Salamanca	0
Milano, El	Salamanca	0
Miranda de Az??n	Salamanca	0
Miranda del Casta??ar	Salamanca	0
Mogarraz	Salamanca	0
Molinillo	Salamanca	0
Monforte de la Sierra	Salamanca	0
Monle??n	Salamanca	0
Monleras	Salamanca	0
Monsagro	Salamanca	0
Montejo	Salamanca	0
Montemayor del R??o	Salamanca	0
Monterrubio de Armu??a	Salamanca	0
Monterrubio de la Sierra	Salamanca	0
Morasverdes	Salamanca	0
Morille	Salamanca	0
Mor????igo	Salamanca	0
Moriscos	Salamanca	0
Moronta	Salamanca	0
Moz??rbez	Salamanca	0
Narros de Matalayegua	Salamanca	0
Navacarros	Salamanca	0
Nava de B??jar	Salamanca	0
Nava de Francia	Salamanca	0
Nava de Sotrobal	Salamanca	0
Navales	Salamanca	0
Navalmoral de B??jar	Salamanca	0
Navamorales	Salamanca	0
Navarredonda de la Rinconada	Salamanca	0
Navasfr??as	Salamanca	0
Negrilla de Palencia	Salamanca	0
Olmedo de Camaces	Salamanca	0
Orbada, La	Salamanca	0
Pajares de la Laguna	Salamanca	0
Palacios del Arzobispo	Salamanca	0
Palaciosrubios	Salamanca	0
Palencia de Negrilla	Salamanca	0
Parada de Arriba	Salamanca	0
Parada de Rubiales	Salamanca	0
Paradinas de San Juan	Salamanca	0
Pastores	Salamanca	0
Payo, El	Salamanca	0
Pedraza de Alba	Salamanca	0
Pedrosillo de Alba	Salamanca	0
Pedrosillo de los Aires	Salamanca	0
Pedrosillo el Ralo	Salamanca	0
Pedroso de la Armu??a, El	Salamanca	0
Pelabravo	Salamanca	0
Pelarrodr??guez	Salamanca	0
Pelayos	Salamanca	0
Pe??a, La	Salamanca	0
Pe??acaballera	Salamanca	0
Pe??aparda	Salamanca	0
Pe??aranda de Bracamonte	Salamanca	0
Pe??arandilla	Salamanca	0
Peralejos de Abajo	Salamanca	0
Peralejos de Arriba	Salamanca	0
Pere??a de la Ribera	Salamanca	0
Peromingo	Salamanca	0
Pinedas	Salamanca	0
Pino de Tormes, El	Salamanca	0
Pitiegua	Salamanca	0
Pizarral	Salamanca	0
Poveda de las Cintas	Salamanca	0
Pozos de Hinojo	Salamanca	0
Puebla de Azaba	Salamanca	0
Puebla de San Medel	Salamanca	0
Puebla de Yeltes	Salamanca	0
Puente del Congosto	Salamanca	0
Puertas	Salamanca	0
Puerto de B??jar	Salamanca	0
Puerto Seguro	Salamanca	0
R??gama	Salamanca	0
Redonda, La	Salamanca	0
Retortillo	Salamanca	0
Rinconada de la Sierra, La	Salamanca	0
Robleda	Salamanca	0
Robliza de Cojos	Salamanca	0
Roll??n	Salamanca	0
Saelices el Chico	Salamanca	0
Sagrada, La	Salamanca	0
Salamanca	Salamanca	0
Saldeana	Salamanca	0
Salmoral	Salamanca	0
Salvatierra de Tormes	Salamanca	0
San Crist??bal de la Cuesta	Salamanca	0
Sancti-Sp??ritus	Salamanca	0
Sanch??n de la Ribera	Salamanca	0
Sanch??n de la Sagrada	Salamanca	0
Sanchotello	Salamanca	0
Sando	Salamanca	0
San Esteban de la Sierra	Salamanca	0
San Felices de los Gallegos	Salamanca	0
San Mart??n del Casta??ar	Salamanca	0
San Miguel de Valero	Salamanca	0
San Morales	Salamanca	0
San Mu??oz	Salamanca	0
San Pedro del Valle	Salamanca	0
San Pedro de Rozados	Salamanca	0
San Pelayo de Guare??a	Salamanca	0
Santa Mar??a de Sando	Salamanca	0
Santa Marta de Tormes	Salamanca	0
Santiago de la Puebla	Salamanca	0
Santib????ez de B??jar	Salamanca	0
Santib????ez de la Sierra	Salamanca	0
Santiz	Salamanca	0
Santos, Los	Salamanca	0
Sard??n de los Frailes	Salamanca	0
Saucelle	Salamanca	0
Sahugo, El	Salamanca	0
Sepulcro-Hilario	Salamanca	0
Sequeros	Salamanca	0
Serradilla del Arroyo	Salamanca	0
Serradilla del Llano	Salamanca	0
Sierpe, La	Salamanca	0
Sieteiglesias de Tormes	Salamanca	0
Sobradillo	Salamanca	0
Sorihuela	Salamanca	0
Sotoserrano	Salamanca	0
Tabera de Abajo	Salamanca	0
Tala, La	Salamanca	0
Tamames	Salamanca	0
Tarazona de Guare??a	Salamanca	0
Tard??guila	Salamanca	0
Tejado, El	Salamanca	0
Tejeda y Segoyuela	Salamanca	0
Tenebr??n	Salamanca	0
Terradillos	Salamanca	0
Topas	Salamanca	0
Tordillos	Salamanca	0
Tornadizo, El	Salamanca	0
Torresmenudas	Salamanca	0
Trabanca	Salamanca	0
Tremedal de Tormes	Salamanca	0
Valdecarros	Salamanca	0
Valdefuentes de Sangus??n	Salamanca	0
Valdehijaderos	Salamanca	0
Valdelacasa	Salamanca	0
Valdelageve	Salamanca	0
Valdelosa	Salamanca	0
Valdemierque	Salamanca	0
Valderrodrigo	Salamanca	0
Valdunciel	Salamanca	0
Valero	Salamanca	0
Valsalabroso	Salamanca	0
Valverde de Valdelacasa	Salamanca	0
Valverd??n	Salamanca	0
Vallejera de Riofr??o	Salamanca	0
Vecinos	Salamanca	0
Vega de Tirados	Salamanca	0
Veguillas, Las	Salamanca	0
Vell??s, La	Salamanca	0
Ventosa del R??o Almar	Salamanca	0
V??dola, La	Salamanca	0
Vilvestre	Salamanca	0
Villaflores	Salamanca	0
Villagonzalo de Tormes	Salamanca	0
Villalba de los Llanos	Salamanca	0
Villamayor	Salamanca	0
Villanueva del Conde	Salamanca	0
Villar de Arga????n	Salamanca	0
Villar de Ciervo	Salamanca	0
Villar de Gallimazo	Salamanca	0
Villar de la Yegua	Salamanca	0
Villar de Peralonso	Salamanca	0
Villar de Samaniego	Salamanca	0
Villares de la Reina	Salamanca	0
Villares de Yeltes	Salamanca	0
Villarino de los Aires	Salamanca	0
Villarmayor	Salamanca	0
Villarmuerto	Salamanca	0
Villasbuenas	Salamanca	0
Villasdardo	Salamanca	0
Villaseco de los Gamitos	Salamanca	0
Villaseco de los Reyes	Salamanca	0
Villasrubias	Salamanca	0
Villaverde de Guare??a	Salamanca	0
Villavieja de Yeltes	Salamanca	0
Villoria	Salamanca	0
Villoruela	Salamanca	0
Vitigudino	Salamanca	0
Yecla de Yeltes	Salamanca	0
Zamarra	Salamanca	0
Zamay??n	Salamanca	0
Zarapicos	Salamanca	0
Zarza de Pumareda, La	Salamanca	0
Zorita de la Frontera	Salamanca	0
Adeje	Santa Cruz de Tenerife	0
Agulo	Santa Cruz de Tenerife	0
Alajer??	Santa Cruz de Tenerife	0
Arafo	Santa Cruz de Tenerife	0
Arico	Santa Cruz de Tenerife	0
Arona	Santa Cruz de Tenerife	0
Barlovento	Santa Cruz de Tenerife	0
Bre??a Alta	Santa Cruz de Tenerife	0
Bre??a Baja	Santa Cruz de Tenerife	0
Buenavista del Norte	Santa Cruz de Tenerife	0
Candelaria	Santa Cruz de Tenerife	0
Fasnia	Santa Cruz de Tenerife	0
Frontera	Santa Cruz de Tenerife	0
Fuencaliente de la Palma	Santa Cruz de Tenerife	0
Garachico	Santa Cruz de Tenerife	0
Garaf??a	Santa Cruz de Tenerife	0
Granadilla de Abona	Santa Cruz de Tenerife	0
Guancha, La	Santa Cruz de Tenerife	0
Gu??a de Isora	Santa Cruz de Tenerife	0
G????mar	Santa Cruz de Tenerife	0
Hermigua	Santa Cruz de Tenerife	0
Icod de los Vinos	Santa Cruz de Tenerife	0
San Crist??bal de La Laguna	Santa Cruz de Tenerife	0
Llanos de Aridane, Los	Santa Cruz de Tenerife	0
Matanza de Acentejo, La	Santa Cruz de Tenerife	0
Orotava, La	Santa Cruz de Tenerife	0
Paso, El	Santa Cruz de Tenerife	0
Puerto de la Cruz	Santa Cruz de Tenerife	0
Puntagorda	Santa Cruz de Tenerife	0
Puntallana	Santa Cruz de Tenerife	0
Realejos, Los	Santa Cruz de Tenerife	0
Rosario, El	Santa Cruz de Tenerife	0
San Andr??s y Sauces	Santa Cruz de Tenerife	0
San Juan de la Rambla	Santa Cruz de Tenerife	0
San Miguel de Abona	Santa Cruz de Tenerife	0
San Sebasti??n de la Gomera	Santa Cruz de Tenerife	0
Santa Cruz de la Palma	Santa Cruz de Tenerife	0
Santa Cruz de Tenerife	Santa Cruz de Tenerife	0
Santa ??rsula	Santa Cruz de Tenerife	0
Santiago del Teide	Santa Cruz de Tenerife	0
Sauzal, El	Santa Cruz de Tenerife	0
Silos, Los	Santa Cruz de Tenerife	0
Tacoronte	Santa Cruz de Tenerife	0
Tanque, El	Santa Cruz de Tenerife	0
Tazacorte	Santa Cruz de Tenerife	0
Tegueste	Santa Cruz de Tenerife	0
Tijarafe	Santa Cruz de Tenerife	0
Valverde	Santa Cruz de Tenerife	0
Valle Gran Rey	Santa Cruz de Tenerife	0
Vallehermoso	Santa Cruz de Tenerife	0
Victoria de Acentejo, La	Santa Cruz de Tenerife	0
Vilaflor	Santa Cruz de Tenerife	0
Villa de Mazo	Santa Cruz de Tenerife	0
Pinar de El Hierro, El	Santa Cruz de Tenerife	0
Alfoz de Lloredo	Cantabria	0
Ampuero	Cantabria	0
Anievas	Cantabria	0
Arenas de Igu??a	Cantabria	0
Argo??os	Cantabria	0
Arnuero	Cantabria	0
Arredondo	Cantabria	0
Astillero, El	Cantabria	0
B??rcena de Cicero	Cantabria	0
B??rcena de Pie de Concha	Cantabria	0
Bareyo	Cantabria	0
Cabez??n de la Sal	Cantabria	0
Cabez??n de Li??bana	Cantabria	0
Cabu??rniga	Cantabria	0
Camale??o	Cantabria	0
Camargo	Cantabria	0
Campoo de Yuso	Cantabria	0
Cartes	Cantabria	0
Casta??eda	Cantabria	0
Castro-Urdiales	Cantabria	0
Cieza	Cantabria	0
Cillorigo de Li??bana	Cantabria	0
Colindres	Cantabria	0
Comillas	Cantabria	0
Corrales de Buelna, Los	Cantabria	0
Corvera de Toranzo	Cantabria	0
Campoo de Enmedio	Cantabria	0
Entrambasaguas	Cantabria	0
Escalante	Cantabria	0
Guriezo	Cantabria	0
Hazas de Cesto	Cantabria	0
Hermandad de Campoo de Suso	Cantabria	0
Herrer??as	Cantabria	0
Lamas??n	Cantabria	0
Laredo	Cantabria	0
Liendo	Cantabria	0
Li??rganes	Cantabria	0
Limpias	Cantabria	0
Luena	Cantabria	0
Marina de Cudeyo	Cantabria	0
Mazcuerras	Cantabria	0
Medio Cudeyo	Cantabria	0
Meruelo	Cantabria	0
Miengo	Cantabria	0
Miera	Cantabria	0
Molledo	Cantabria	0
Noja	Cantabria	0
Penagos	Cantabria	0
Pe??arrubia	Cantabria	0
Pesaguero	Cantabria	0
Pesquera	Cantabria	0
Pi??lagos	Cantabria	0
Polaciones	Cantabria	0
Polanco	Cantabria	0
Potes	Cantabria	0
Puente Viesgo	Cantabria	0
Ramales de la Victoria	Cantabria	0
Rasines	Cantabria	0
Reinosa	Cantabria	0
Reoc??n	Cantabria	0
Ribamont??n al Mar	Cantabria	0
Ribamont??n al Monte	Cantabria	0
Rionansa	Cantabria	0
Riotuerto	Cantabria	0
Rozas de Valdearroyo, Las	Cantabria	0
Ruente	Cantabria	0
Ruesga	Cantabria	0
Ruiloba	Cantabria	0
San Felices de Buelna	Cantabria	0
San Miguel de Aguayo	Cantabria	0
San Pedro del Romeral	Cantabria	0
San Roque de Riomiera	Cantabria	0
Santa Cruz de Bezana	Cantabria	0
Santa Mar??a de Cay??n	Cantabria	0
Santander	Cantabria	0
Santillana del Mar	Cantabria	0
Santiurde de Reinosa	Cantabria	0
Santiurde de Toranzo	Cantabria	0
Santo??a	Cantabria	0
San Vicente de la Barquera	Cantabria	0
Saro	Cantabria	0
Selaya	Cantabria	0
Soba	Cantabria	0
Sol??rzano	Cantabria	0
Suances	Cantabria	0
Tojos, Los	Cantabria	0
Torrelavega	Cantabria	0
Tresviso	Cantabria	0
Tudanca	Cantabria	0
Ud??as	Cantabria	0
Vald??liga	Cantabria	0
Valdeolea	Cantabria	0
Valdeprado del R??o	Cantabria	0
Valderredible	Cantabria	0
Val de San Vicente	Cantabria	0
Vega de Li??bana	Cantabria	0
Vega de Pas	Cantabria	0
Villacarriedo	Cantabria	0
Villaescusa	Cantabria	0
Villafufre	Cantabria	0
Valle de Villaverde	Cantabria	0
Voto	Cantabria	0
Abades	Segovia	0
Adrada de Pir??n	Segovia	0
Adrados	Segovia	0
Aguilafuente	Segovia	0
Alconada de Maderuelo	Segovia	0
Aldealcorvo	Segovia	0
Aldealengua de Pedraza	Segovia	0
Aldealengua de Santa Mar??a	Segovia	0
Aldeanueva de la Serrezuela	Segovia	0
Aldeanueva del Codonal	Segovia	0
Aldea Real	Segovia	0
Aldeaso??a	Segovia	0
Aldehorno	Segovia	0
Aldehuela del Codonal	Segovia	0
Aldeonte	Segovia	0
Anaya	Segovia	0
A??e	Segovia	0
Arahuetes	Segovia	0
Arcones	Segovia	0
Arevalillo de Cega	Segovia	0
Armu??a	Segovia	0
Ayll??n	Segovia	0
Barbolla	Segovia	0
Basardilla	Segovia	0
Bercial	Segovia	0
Bercimuel	Segovia	0
Bernardos	Segovia	0
Bernuy de Porreros	Segovia	0
Boceguillas	Segovia	0
Brieva	Segovia	0
Caballar	Segovia	0
Caba??as de Polendos	Segovia	0
Cabezuela	Segovia	0
Calabazas de Fuentidue??a	Segovia	0
Campo de San Pedro	Segovia	0
Cantalejo	Segovia	0
Cantimpalos	Segovia	0
Carbonero el Mayor	Segovia	0
Carrascal del R??o	Segovia	0
Casla	Segovia	0
Castillejo de Mesle??n	Segovia	0
Castro de Fuentidue??a	Segovia	0
Castrojimeno	Segovia	0
Castroserna de Abajo	Segovia	0
Castroserrac??n	Segovia	0
Cedillo de la Torre	Segovia	0
Cerezo de Abajo	Segovia	0
Cerezo de Arriba	Segovia	0
Cilleruelo de San Mam??s	Segovia	0
Cobos de Fuentidue??a	Segovia	0
Coca	Segovia	0
Codorniz	Segovia	0
Collado Hermoso	Segovia	0
Condado de Castilnovo	Segovia	0
Corral de Ayll??n	Segovia	0
Cubillo	Segovia	0
Cu??llar	Segovia	0
Cha??e	Segovia	0
Domingo Garc??a	Segovia	0
Donhierro	Segovia	0
Duruelo	Segovia	0
Encinas	Segovia	0
Encinillas	Segovia	0
Escalona del Prado	Segovia	0
Escarabajosa de Cabezas	Segovia	0
Escobar de Polendos	Segovia	0
Espinar, El	Segovia	0
Espirdo	Segovia	0
Fresneda de Cu??llar	Segovia	0
Fresno de Cantespino	Segovia	0
Fresno de la Fuente	Segovia	0
Frumales	Segovia	0
Fuente de Santa Cruz	Segovia	0
Fuente el Olmo de Fuentidue??a	Segovia	0
Fuente el Olmo de ??scar	Segovia	0
Fuentepelayo	Segovia	0
Fuentepi??el	Segovia	0
Fuenterrebollo	Segovia	0
Fuentesa??co de Fuentidue??a	Segovia	0
Fuentesoto	Segovia	0
Fuentidue??a	Segovia	0
Gallegos	Segovia	0
Garcill??n	Segovia	0
Gomezserrac??n	Segovia	0
Grajera	Segovia	0
Honrubia de la Cuesta	Segovia	0
Hontalbilla	Segovia	0
Hontanares de Eresma	Segovia	0
Huertos, Los	Segovia	0
Ituero y Lama	Segovia	0
Juarros de Riomoros	Segovia	0
Juarros de Voltoya	Segovia	0
Labajos	Segovia	0
Laguna de Contreras	Segovia	0
Languilla	Segovia	0
Lastras de Cu??llar	Segovia	0
Lastras del Pozo	Segovia	0
Lastrilla, La	Segovia	0
Losa, La	Segovia	0
Maderuelo	Segovia	0
Marazuela	Segovia	0
Mart??n Miguel	Segovia	0
Mart??n Mu??oz de la Dehesa	Segovia	0
Mart??n Mu??oz de las Posadas	Segovia	0
Marug??n	Segovia	0
Matabuena	Segovia	0
Mata de Cu??llar	Segovia	0
Matilla, La	Segovia	0
Melque de Cercos	Segovia	0
Membibre de la Hoz	Segovia	0
Miguel????ez	Segovia	0
Montejo de Ar??valo	Segovia	0
Montejo de la Vega de la Serrezuela	Segovia	0
Monterrubio	Segovia	0
Moral de Hornuez	Segovia	0
Mozoncillo	Segovia	0
Mu??opedro	Segovia	0
Mu??overos	Segovia	0
Nava de la Asunci??n	Segovia	0
Navafr??a	Segovia	0
Navalilla	Segovia	0
Navalmanzano	Segovia	0
Navares de Ayuso	Segovia	0
Navares de Enmedio	Segovia	0
Navares de las Cuevas	Segovia	0
Navas de Oro	Segovia	0
Navas de San Antonio	Segovia	0
Nieva	Segovia	0
Olombrada	Segovia	0
Orejana	Segovia	0
Ortigosa de Pesta??o	Segovia	0
Otero de Herreros	Segovia	0
Pajarejos	Segovia	0
Palazuelos de Eresma	Segovia	0
Pedraza	Segovia	0
Pelayos del Arroyo	Segovia	0
Perosillo	Segovia	0
Pinarejos	Segovia	0
Pinarnegrillo	Segovia	0
Pradales	Segovia	0
Pr??dena	Segovia	0
Puebla de Pedraza	Segovia	0
Rapariegos	Segovia	0
Rebollo	Segovia	0
Remondo	Segovia	0
Riaguas de San Bartolom??	Segovia	0
Riaza	Segovia	0
Ribota	Segovia	0
Riofr??o de Riaza	Segovia	0
Roda de Eresma	Segovia	0
Sacramenia	Segovia	0
Samboal	Segovia	0
San Crist??bal de Cu??llar	Segovia	0
San Crist??bal de la Vega	Segovia	0
Sanchonu??o	Segovia	0
Sangarc??a	Segovia	0
Real Sitio de San Ildefonso	Segovia	0
San Mart??n y Mudri??n	Segovia	0
San Miguel de Bernuy	Segovia	0
San Pedro de Ga??llos	Segovia	0
Santa Mar??a la Real de Nieva	Segovia	0
Santa Marta del Cerro	Segovia	0
Santiuste de Pedraza	Segovia	0
Santiuste de San Juan Bautista	Segovia	0
Santo Domingo de Pir??n	Segovia	0
Santo Tom?? del Puerto	Segovia	0
Sauquillo de Cabezas	Segovia	0
Seb??lcor	Segovia	0
Segovia	Segovia	0
Sep??lveda	Segovia	0
Sequera de Fresno	Segovia	0
Sotillo	Segovia	0
Sotosalbos	Segovia	0
Tabanera la Luenga	Segovia	0
Tolocirio	Segovia	0
Torreadrada	Segovia	0
Torrecaballeros	Segovia	0
Torrecilla del Pinar	Segovia	0
Torreiglesias	Segovia	0
Torre Val de San Pedro	Segovia	0
Trescasas	Segovia	0
Tur??gano	Segovia	0
Urue??as	Segovia	0
Valdeprados	Segovia	0
Valdevacas de Montejo	Segovia	0
Valdevacas y Guijar	Segovia	0
Valseca	Segovia	0
Valtiendas	Segovia	0
Valverde del Majano	Segovia	0
Valle de Tabladillo	Segovia	0
Vallelado	Segovia	0
Valleruela de Pedraza	Segovia	0
Valleruela de Sep??lveda	Segovia	0
Veganzones	Segovia	0
Vegas de Matute	Segovia	0
Ventosilla y Tejadilla	Segovia	0
Villacast??n	Segovia	0
Villaverde de ??scar	Segovia	0
Villaverde de Montejo	Segovia	0
Villeguillo	Segovia	0
Yanguas de Eresma	Segovia	0
Zarzuela del Monte	Segovia	0
Zarzuela del Pinar	Segovia	0
Ortigosa del Monte	Segovia	0
Cozuelos de Fuentidue??a	Segovia	0
Marazoleja	Segovia	0
Navas de Riofr??o	Segovia	0
Cuevas de Provanco	Segovia	0
San Crist??bal de Segovia	Segovia	0
Aguadulce	Sevilla	0
Alan??s	Sevilla	0
Albaida del Aljarafe	Sevilla	0
Alcal?? de Guada??ra	Sevilla	0
Alcal?? del R??o	Sevilla	0
Alcolea del R??o	Sevilla	0
Algaba, La	Sevilla	0
Alg??mitas	Sevilla	0
Almad??n de la Plata	Sevilla	0
Almensilla	Sevilla	0
Arahal	Sevilla	0
Aznalc??zar	Sevilla	0
Aznalc??llar	Sevilla	0
Badolatosa	Sevilla	0
Benacaz??n	Sevilla	0
Bollullos de la Mitaci??n	Sevilla	0
Bormujos	Sevilla	0
Brenes	Sevilla	0
Burguillos	Sevilla	0
Cabezas de San Juan, Las	Sevilla	0
Camas	Sevilla	0
Campana, La	Sevilla	0
Cantillana	Sevilla	0
Carmona	Sevilla	0
Carri??n de los C??spedes	Sevilla	0
Casariche	Sevilla	0
Castilblanco de los Arroyos	Sevilla	0
Castilleja de Guzm??n	Sevilla	0
Castilleja de la Cuesta	Sevilla	0
Castilleja del Campo	Sevilla	0
Castillo de las Guardas, El	Sevilla	0
Cazalla de la Sierra	Sevilla	0
Constantina	Sevilla	0
Coria del R??o	Sevilla	0
Coripe	Sevilla	0
Coronil, El	Sevilla	0
Corrales, Los	Sevilla	0
Dos Hermanas	Sevilla	0
??cija	Sevilla	0
Espartinas	Sevilla	0
Estepa	Sevilla	0
Fuentes de Andaluc??a	Sevilla	0
Garrobo, El	Sevilla	0
Gelves	Sevilla	0
Gerena	Sevilla	0
Gilena	Sevilla	0
Gines	Sevilla	0
Guadalcanal	Sevilla	0
Guillena	Sevilla	0
Herrera	Sevilla	0
Hu??var del Aljarafe	Sevilla	0
Lantejuela, La	Sevilla	0
Lebrija	Sevilla	0
Lora de Estepa	Sevilla	0
Lora del R??o	Sevilla	0
Luisiana, La	Sevilla	0
Madro??o, El	Sevilla	0
Mairena del Alcor	Sevilla	0
Mairena del Aljarafe	Sevilla	0
Marchena	Sevilla	0
Marinaleda	Sevilla	0
Mart??n de la Jara	Sevilla	0
Molares, Los	Sevilla	0
Montellano	Sevilla	0
Mor??n de la Frontera	Sevilla	0
Navas de la Concepci??n, Las	Sevilla	0
Olivares	Sevilla	0
Osuna	Sevilla	0
Palacios y Villafranca, Los	Sevilla	0
Palomares del R??o	Sevilla	0
Paradas	Sevilla	0
Pedrera	Sevilla	0
Pedroso, El	Sevilla	0
Pe??aflor	Sevilla	0
Pilas	Sevilla	0
Pruna	Sevilla	0
Puebla de Cazalla, La	Sevilla	0
Puebla de los Infantes, La	Sevilla	0
Puebla del R??o, La	Sevilla	0
Real de la Jara, El	Sevilla	0
Rinconada, La	Sevilla	0
Roda de Andaluc??a, La	Sevilla	0
Ronquillo, El	Sevilla	0
Rubio, El	Sevilla	0
Salteras	Sevilla	0
San Juan de Aznalfarache	Sevilla	0
Sanl??car la Mayor	Sevilla	0
San Nicol??s del Puerto	Sevilla	0
Santiponce	Sevilla	0
Saucejo, El	Sevilla	0
Sevilla	Sevilla	0
Tocina	Sevilla	0
Tomares	Sevilla	0
Umbrete	Sevilla	0
Utrera	Sevilla	0
Valencina de la Concepci??n	Sevilla	0
Villamanrique de la Condesa	Sevilla	0
Villanueva del Ariscal	Sevilla	0
Villanueva del R??o y Minas	Sevilla	0
Villanueva de San Juan	Sevilla	0
Villaverde del R??o	Sevilla	0
Viso del Alcor, El	Sevilla	0
Ca??ada Rosal	Sevilla	0
Isla Mayor	Sevilla	0
Cuervo de Sevilla, El	Sevilla	0
Abejar	Soria	0
Adradas	Soria	0
??greda	Soria	0
Alconaba	Soria	0
Alcubilla de Avellaneda	Soria	0
Alcubilla de las Pe??as	Soria	0
Aldealafuente	Soria	0
Aldealices	Soria	0
Aldealpozo	Soria	0
Aldealse??or	Soria	0
Aldehuela de Peri????ez	Soria	0
Aldehuelas, Las	Soria	0
Alentisque	Soria	0
Aliud	Soria	0
Almajano	Soria	0
Almaluez	Soria	0
Almarza	Soria	0
Almaz??n	Soria	0
Almazul	Soria	0
Almenar de Soria	Soria	0
Alpanseque	Soria	0
Aranc??n	Soria	0
Arcos de Jal??n	Soria	0
Arenillas	Soria	0
Ar??valo de la Sierra	Soria	0
Ausejo de la Sierra	Soria	0
Baraona	Soria	0
Barca	Soria	0
Barcones	Soria	0
Bayubas de Abajo	Soria	0
Bayubas de Arriba	Soria	0
Berat??n	Soria	0
Berlanga de Duero	Soria	0
Blacos	Soria	0
Bliecos	Soria	0
Borjabad	Soria	0
Borobia	Soria	0
Buberos	Soria	0
Buitrago	Soria	0
Burgo de Osma-Ciudad de Osma	Soria	0
Cabrejas del Campo	Soria	0
Cabrejas del Pinar	Soria	0
Calata??azor	Soria	0
Caltojar	Soria	0
Candilichera	Soria	0
Ca??amaque	Soria	0
Carabantes	Soria	0
Caracena	Soria	0
Carrascosa de Abajo	Soria	0
Carrascosa de la Sierra	Soria	0
Casarejos	Soria	0
Castilfr??o de la Sierra	Soria	0
Castilruiz	Soria	0
Castillejo de Robledo	Soria	0
Centenera de Andaluz	Soria	0
Cerb??n	Soria	0
Cidones	Soria	0
Cigudosa	Soria	0
Cihuela	Soria	0
Ciria	Soria	0
Cirujales del R??o	Soria	0
Coscurita	Soria	0
Covaleda	Soria	0
Cubilla	Soria	0
Cubo de la Solana	Soria	0
Cueva de ??greda	Soria	0
D??vanos	Soria	0
Deza	Soria	0
Duruelo de la Sierra	Soria	0
Escobosa de Almaz??n	Soria	0
Espeja de San Marcelino	Soria	0
Espej??n	Soria	0
Estepa de San Juan	Soria	0
Frechilla de Almaz??n	Soria	0
Fresno de Caracena	Soria	0
Fuentearmegil	Soria	0
Fuentecambr??n	Soria	0
Fuentecantos	Soria	0
Fuentelmonge	Soria	0
Fuentelsaz de Soria	Soria	0
Fuentepinilla	Soria	0
Fuentes de Maga??a	Soria	0
Fuentestr??n	Soria	0
Garray	Soria	0
Golmayo	Soria	0
G??mara	Soria	0
Gormaz	Soria	0
Herrera de Soria	Soria	0
Hinojosa del Campo	Soria	0
Langa de Duero	Soria	0
Liceras	Soria	0
Losilla, La	Soria	0
Maga??a	Soria	0
Maj??n	Soria	0
Matalebreras	Soria	0
Matamala de Almaz??n	Soria	0
Medinaceli	Soria	0
Mi??o de Medinaceli	Soria	0
Mi??o de San Esteban	Soria	0
Molinos de Duero	Soria	0
Momblona	Soria	0
Monteagudo de las Vicar??as	Soria	0
Montejo de Tiermes	Soria	0
Montenegro de Cameros	Soria	0
Mor??n de Almaz??n	Soria	0
Muriel de la Fuente	Soria	0
Muriel Viejo	Soria	0
Nafr??a de Ucero	Soria	0
Narros	Soria	0
Navaleno	Soria	0
Nepas	Soria	0
Nolay	Soria	0
Noviercas	Soria	0
??lvega	Soria	0
Oncala	Soria	0
Pinilla del Campo	Soria	0
Portillo de Soria	Soria	0
P??veda de Soria, La	Soria	0
Pozalmuro	Soria	0
Quintana Redonda	Soria	0
Quintanas de Gormaz	Soria	0
Qui??oner??a	Soria	0
R??banos, Los	Soria	0
Rebollar	Soria	0
Recuerda	Soria	0
Rello	Soria	0
Renieblas	Soria	0
Retortillo de Soria	Soria	0
Reznos	Soria	0
Riba de Escalote, La	Soria	0
Rioseco de Soria	Soria	0
Rollamienta	Soria	0
Royo, El	Soria	0
Salduero	Soria	0
San Esteban de Gormaz	Soria	0
San Felices	Soria	0
San Leonardo de Yag??e	Soria	0
San Pedro Manrique	Soria	0
Santa Cruz de Yanguas	Soria	0
Santa Mar??a de Huerta	Soria	0
Santa Mar??a de las Hoyas	Soria	0
Ser??n de N??gima	Soria	0
Soliedra	Soria	0
Soria	Soria	0
Sotillo del Rinc??n	Soria	0
Suellacabras	Soria	0
Tajahuerce	Soria	0
Tajueco	Soria	0
Talveila	Soria	0
Tardelcuende	Soria	0
Taroda	Soria	0
Tejado	Soria	0
Torlengua	Soria	0
Torreblacos	Soria	0
Torrubia de Soria	Soria	0
Tr??vago	Soria	0
Ucero	Soria	0
Vadillo	Soria	0
Valdeavellano de Tera	Soria	0
Valdege??a	Soria	0
Valdelagua del Cerro	Soria	0
Valdemaluque	Soria	0
Valdenebro	Soria	0
Valdeprado	Soria	0
Valderrodilla	Soria	0
Valtajeros	Soria	0
Velamaz??n	Soria	0
Velilla de la Sierra	Soria	0
Velilla de los Ajos	Soria	0
Viana de Duero	Soria	0
Villaciervos	Soria	0
Villanueva de Gormaz	Soria	0
Villar del Ala	Soria	0
Villar del Campo	Soria	0
Villar del R??o	Soria	0
Villares de Soria, Los	Soria	0
Villasayas	Soria	0
Villaseca de Arciel	Soria	0
Vinuesa	Soria	0
Vizmanos	Soria	0
Vozmediano	Soria	0
Yanguas	Soria	0
Yelo	Soria	0
Aiguam??rcia	Tarragona	0
Albinyana	Tarragona	0
Albiol, L	Tarragona	0
Alcanar	Tarragona	0
Alcover	Tarragona	0
Aldover	Tarragona	0
Aleixar, L	Tarragona	0
Alfara de Carles	Tarragona	0
Alforja	Tarragona	0
Ali??	Tarragona	0
Almoster	Tarragona	0
Altafulla	Tarragona	0
Ametlla de Mar, L	Tarragona	0
Amposta	Tarragona	0
Arbol??	Tarragona	0
Arbo??, L	Tarragona	0
Argentera, L	Tarragona	0
Arnes	Tarragona	0
Asc??	Tarragona	0
Banyeres del Pened??s	Tarragona	0
Barber?? de la Conca	Tarragona	0
Batea	Tarragona	0
Bellmunt del Priorat	Tarragona	0
Bellvei	Tarragona	0
Benifallet	Tarragona	0
Benissanet	Tarragona	0
Bisbal de Falset, La	Tarragona	0
Bisbal del Pened??s, La	Tarragona	0
Blancafort	Tarragona	0
Bonastre	Tarragona	0
Borges del Camp, Les	Tarragona	0
Bot	Tarragona	0
Botarell	Tarragona	0
Br??fim	Tarragona	0
Cabac??s	Tarragona	0
Cabra del Camp	Tarragona	0
Calafell	Tarragona	0
Cambrils	Tarragona	0
Capafonts	Tarragona	0
Cap??anes	Tarragona	0
Caseres	Tarragona	0
Castellvell del Camp	Tarragona	0
Catllar, El	Tarragona	0
S??nia, La	Tarragona	0
Colldejou	Tarragona	0
Conesa	Tarragona	0
Constant??	Tarragona	0
Corbera dEbre	Tarragona	0
Cornudella de Montsant	Tarragona	0
Creixell	Tarragona	0
Cunit	Tarragona	0
Xerta	Tarragona	0
Duesaig??es	Tarragona	0
Espluga de Francol??, L	Tarragona	0
Falset	Tarragona	0
Fatarella, La	Tarragona	0
Febr??, La	Tarragona	0
Figuera, La	Tarragona	0
Figuerola del Camp	Tarragona	0
Flix	Tarragona	0
For??s	Tarragona	0
Freginals	Tarragona	0
Galera, La	Tarragona	0
Gandesa	Tarragona	0
Garcia	Tarragona	0
Garidells, Els	Tarragona	0
Ginestar	Tarragona	0
Godall	Tarragona	0
Gratallops	Tarragona	0
Guiamets, Els	Tarragona	0
Horta de Sant Joan	Tarragona	0
Lloar, El	Tarragona	0
Llorac	Tarragona	0
Lloren?? del Pened??s	Tarragona	0
Margalef	Tarragona	0
Mar????	Tarragona	0
Mas de Barberans	Tarragona	0
Masdenverge	Tarragona	0
Maslloren??	Tarragona	0
Mas??, La	Tarragona	0
Maspujols	Tarragona	0
Masroig, El	Tarragona	0
Mil??, El	Tarragona	0
Miravet	Tarragona	0
Molar, El	Tarragona	0
Montblanc	Tarragona	0
Montbri?? del Camp	Tarragona	0
Montferri	Tarragona	0
Montmell, El	Tarragona	0
Mont-ral	Tarragona	0
Mont-roig del Camp	Tarragona	0
M??ra dEbre	Tarragona	0
M??ra la Nova	Tarragona	0
Morell, El	Tarragona	0
Morera de Montsant, La	Tarragona	0
Nou de Gai??, La	Tarragona	0
Nulles	Tarragona	0
Palma dEbre, La	Tarragona	0
Pallaresos, Els	Tarragona	0
Passanant i Belltall	Tarragona	0
Pa??ls	Tarragona	0
Perafort	Tarragona	0
Perell??, El	Tarragona	0
Piles, Les	Tarragona	0
Pinell de Brai, El	Tarragona	0
Pira	Tarragona	0
Pla de Santa Maria, El	Tarragona	0
Pobla de Mafumet, La	Tarragona	0
Pobla de Massaluca, La	Tarragona	0
Pobla de Montorn??s, La	Tarragona	0
Poboleda	Tarragona	0
Pont dArmentera, El	Tarragona	0
Porrera	Tarragona	0
Pradell de la Teixeta	Tarragona	0
Prades	Tarragona	0
Prat de Comte	Tarragona	0
Pratdip	Tarragona	0
Puigpelat	Tarragona	0
Querol	Tarragona	0
Rasquera	Tarragona	0
Renau	Tarragona	0
Reus	Tarragona	0
Riba, La	Tarragona	0
Riba-roja dEbre	Tarragona	0
Riera de Gai??, La	Tarragona	0
Riudecanyes	Tarragona	0
Riudecols	Tarragona	0
Riudoms	Tarragona	0
Rocafort de Queralt	Tarragona	0
Roda de Bar??	Tarragona	0
Rodony??	Tarragona	0
Roquetes	Tarragona	0
Rourell, El	Tarragona	0
Salom??	Tarragona	0
Sant Carles de la R??pita	Tarragona	0
Sant Jaume dels Domenys	Tarragona	0
Santa B??rbara	Tarragona	0
Santa Coloma de Queralt	Tarragona	0
Santa Oliva	Tarragona	0
Pontils	Tarragona	0
Sarral	Tarragona	0
Savall?? del Comtat	Tarragona	0
Secuita, La	Tarragona	0
Selva del Camp, La	Tarragona	0
Senan	Tarragona	0
Solivella	Tarragona	0
Tarragona	Tarragona	0
Tivenys	Tarragona	0
Tivissa	Tarragona	0
Torre de Fontaubella, La	Tarragona	0
Torre de lEspanyol, La	Tarragona	0
Torredembarra	Tarragona	0
Torroja del Priorat	Tarragona	0
Tortosa	Tarragona	0
Ulldecona	Tarragona	0
Ulldemolins	Tarragona	0
Vallclara	Tarragona	0
Vallfogona de Riucorb	Tarragona	0
Vallmoll	Tarragona	0
Valls	Tarragona	0
Vandell??s i lHospitalet de lInfant	Tarragona	0
Vendrell, El	Tarragona	0
Vespella de Gai??	Tarragona	0
Vilabella	Tarragona	0
Vilallonga del Camp	Tarragona	0
Vilanova dEscornalbou	Tarragona	0
Vilanova de Prades	Tarragona	0
Vilaplana	Tarragona	0
Vila-rodona	Tarragona	0
Vila-seca	Tarragona	0
Vilaverd	Tarragona	0
Vilella Alta, La	Tarragona	0
Vilella Baixa, La	Tarragona	0
Vilalba dels Arcs	Tarragona	0
Vimbod?? i Poblet	Tarragona	0
Vinebre	Tarragona	0
Vinyols i els Arcs	Tarragona	0
Deltebre	Tarragona	0
Sant Jaume dEnveja	Tarragona	0
Camarles	Tarragona	0
Aldea, L	Tarragona	0
Salou	Tarragona	0
Ampolla, L	Tarragona	0
Canonja, La	Tarragona	0
Ababuj	Teruel	0
Abejuela	Teruel	0
Aguat??n	Teruel	0
Aguaviva	Teruel	0
Aguilar del Alfambra	Teruel	0
Alac??n	Teruel	0
Alba	Teruel	0
Albalate del Arzobispo	Teruel	0
Albarrac??n	Teruel	0
Albentosa	Teruel	0
Alcaine	Teruel	0
Alcal?? de la Selva	Teruel	0
Alca??iz	Teruel	0
Alcorisa	Teruel	0
Alfambra	Teruel	0
Aliaga	Teruel	0
Almohaja	Teruel	0
Alobras	Teruel	0
Alpe????s	Teruel	0
Allepuz	Teruel	0
Alloza	Teruel	0
Allueva	Teruel	0
Anad??n	Teruel	0
Andorra	Teruel	0
Arcos de las Salinas	Teruel	0
Arens de Lled??	Teruel	0
Argente	Teruel	0
Ari??o	Teruel	0
Azaila	Teruel	0
B??denas	Teruel	0
B??guena	Teruel	0
Ba????n	Teruel	0
Barrachina	Teruel	0
Bea	Teruel	0
Beceite	Teruel	0
Belmonte de San Jos??	Teruel	0
Bello	Teruel	0
Berge	Teruel	0
Bezas	Teruel	0
Blancas	Teruel	0
Blesa	Teruel	0
Bord??n	Teruel	0
Bronchales	Teruel	0
Bue??a	Teruel	0
Burb??guena	Teruel	0
Cabra de Mora	Teruel	0
Calaceite	Teruel	0
Calamocha	Teruel	0
Calanda	Teruel	0
Calomarde	Teruel	0
Cama??as	Teruel	0
Camarena de la Sierra	Teruel	0
Camarillas	Teruel	0
Caminreal	Teruel	0
Cantavieja	Teruel	0
Ca??ada de Benatanduz	Teruel	0
Ca??ada de Verich, La	Teruel	0
Ca??ada Vellida	Teruel	0
Ca??izar del Olivar	Teruel	0
Cascante del R??o	Teruel	0
Castej??n de Tornos	Teruel	0
Castel de Cabra	Teruel	0
Castelnou	Teruel	0
Castelser??s	Teruel	0
Castellar, El	Teruel	0
Castellote	Teruel	0
Cedrillas	Teruel	0
Celadas	Teruel	0
Cella	Teruel	0
Cerollera, La	Teruel	0
Codo??era, La	Teruel	0
Corbal??n	Teruel	0
Cortes de Arag??n	Teruel	0
Cosa	Teruel	0
Cretas	Teruel	0
Crivill??n	Teruel	0
Cuba, La	Teruel	0
Cubla	Teruel	0
Cucal??n	Teruel	0
Cuervo, El	Teruel	0
Cuevas de Almud??n	Teruel	0
Cuevas Labradas	Teruel	0
Ejulve	Teruel	0
Escorihuela	Teruel	0
Escucha	Teruel	0
Estercuel	Teruel	0
Ferreruela de Huerva	Teruel	0
Fonfr??a	Teruel	0
Formiche Alto	Teruel	0
F??rnoles	Teruel	0
Fortanete	Teruel	0
Foz-Calanda	Teruel	0
Fresneda, La	Teruel	0
Fr??as de Albarrac??n	Teruel	0
Fuenferrada	Teruel	0
Fuentes Calientes	Teruel	0
Fuentes Claras	Teruel	0
Fuentes de Rubielos	Teruel	0
Fuentespalda	Teruel	0
Galve	Teruel	0
Gargallo	Teruel	0
Gea de Albarrac??n	Teruel	0
Ginebrosa, La	Teruel	0
Griegos	Teruel	0
Guadalaviar	Teruel	0
G??dar	Teruel	0
H??jar	Teruel	0
Hinojosa de Jarque	Teruel	0
Hoz de la Vieja, La	Teruel	0
Huesa del Com??n	Teruel	0
Iglesuela del Cid, La	Teruel	0
Jabaloyas	Teruel	0
Jarque de la Val	Teruel	0
Jatiel	Teruel	0
Jorcas	Teruel	0
Josa	Teruel	0
Lagueruela	Teruel	0
Lanzuela	Teruel	0
Libros	Teruel	0
Lid??n	Teruel	0
Linares de Mora	Teruel	0
Loscos	Teruel	0
Lled??	Teruel	0
Maicas	Teruel	0
Manzanera	Teruel	0
Mart??n del R??o	Teruel	0
Mas de las Matas	Teruel	0
Mata de los Olmos, La	Teruel	0
Mazale??n	Teruel	0
Mezquita de Jarque	Teruel	0
Mirambel	Teruel	0
Miravete de la Sierra	Teruel	0
Molinos	Teruel	0
Monforte de Moyuela	Teruel	0
Monreal del Campo	Teruel	0
Monroyo	Teruel	0
Montalb??n	Teruel	0
Monteagudo del Castillo	Teruel	0
Monterde de Albarrac??n	Teruel	0
Mora de Rubielos	Teruel	0
Moscard??n	Teruel	0
Mosqueruela	Teruel	0
Muniesa	Teruel	0
Noguera de Albarrac??n	Teruel	0
Nogueras	Teruel	0
Nogueruelas	Teruel	0
Ob??n	Teruel	0
Od??n	Teruel	0
Ojos Negros	Teruel	0
Olba	Teruel	0
Oliete	Teruel	0
Olmos, Los	Teruel	0
Orihuela del Tremedal	Teruel	0
Orrios	Teruel	0
Palomar de Arroyos	Teruel	0
Pancrudo	Teruel	0
Parras de Castellote, Las	Teruel	0
Pe??arroya de Tastavins	Teruel	0
Peracense	Teruel	0
Peralejos	Teruel	0
Perales del Alfambra	Teruel	0
Pitarque	Teruel	0
Plou	Teruel	0
Pobo, El	Teruel	0
Portellada, La	Teruel	0
Pozond??n	Teruel	0
Pozuel del Campo	Teruel	0
Puebla de H??jar, La	Teruel	0
Puebla de Valverde, La	Teruel	0
Puertomingalvo	Teruel	0
R??fales	Teruel	0
Rillo	Teruel	0
Riodeva	Teruel	0
R??denas	Teruel	0
Royuela	Teruel	0
Rubiales	Teruel	0
Rubielos de la C??rida	Teruel	0
Rubielos de Mora	Teruel	0
Salcedillo	Teruel	0
Sald??n	Teruel	0
Samper de Calanda	Teruel	0
San Agust??n	Teruel	0
San Mart??n del R??o	Teruel	0
Santa Cruz de Nogueras	Teruel	0
Santa Eulalia	Teruel	0
Sarri??n	Teruel	0
Segura de los Ba??os	Teruel	0
Seno	Teruel	0
Singra	Teruel	0
Terriente	Teruel	0
Teruel	Teruel	0
Toril y Masegoso	Teruel	0
Torm??n	Teruel	0
Tornos	Teruel	0
Torralba de los Sisones	Teruel	0
Torrecilla de Alca??iz	Teruel	0
Torrecilla del Rebollar	Teruel	0
Torre de Arcas	Teruel	0
Torre de las Arcas	Teruel	0
Torre del Compte	Teruel	0
Torrelac??rcel	Teruel	0
Torre los Negros	Teruel	0
Torremocha de Jiloca	Teruel	0
Torres de Albarrac??n	Teruel	0
Torrevelilla	Teruel	0
Torrijas	Teruel	0
Torrijo del Campo	Teruel	0
Tramacastiel	Teruel	0
Tramacastilla	Teruel	0
Tronch??n	Teruel	0
Urrea de Ga??n	Teruel	0
Utrillas	Teruel	0
Valacloche	Teruel	0
Valbona	Teruel	0
Valdealgorfa	Teruel	0
Valdecuenca	Teruel	0
Valdelinares	Teruel	0
Valdeltormo	Teruel	0
Valderrobres	Teruel	0
Valjunquera	Teruel	0
Vallecillo, El	Teruel	0
Veguillas de la Sierra	Teruel	0
Villafranca del Campo	Teruel	0
Villahermosa del Campo	Teruel	0
Villanueva del Rebollar de la Sierra	Teruel	0
Villar del Cobo	Teruel	0
Villar del Salz	Teruel	0
Villarluengo	Teruel	0
Villarquemado	Teruel	0
Villarroya de los Pinares	Teruel	0
Villastar	Teruel	0
Villel	Teruel	0
Vinaceite	Teruel	0
Visiedo	Teruel	0
Vivel del R??o Mart??n	Teruel	0
Zoma, La	Teruel	0
Ajofr??n	Toledo	0
Alameda de la Sagra	Toledo	0
Albarreal de Tajo	Toledo	0
Alcab??n	Toledo	0
Alca??izo	Toledo	0
Alcaudete de la Jara	Toledo	0
Alcolea de Tajo	Toledo	0
Aldea en Cabo	Toledo	0
Aldeanueva de Barbarroya	Toledo	0
Aldeanueva de San Bartolom??	Toledo	0
Almendral de la Ca??ada	Toledo	0
Almonacid de Toledo	Toledo	0
Almorox	Toledo	0
A??over de Tajo	Toledo	0
Arcic??llar	Toledo	0
Arg??s	Toledo	0
Azut??n	Toledo	0
Barcience	Toledo	0
Bargas	Toledo	0
Belv??s de la Jara	Toledo	0
Borox	Toledo	0
Buenaventura	Toledo	0
Burguillos de Toledo	Toledo	0
Buruj??n	Toledo	0
Caba??as de la Sagra	Toledo	0
Caba??as de Yepes	Toledo	0
Cabezamesada	Toledo	0
Calera y Chozas	Toledo	0
Caleruela	Toledo	0
Calzada de Oropesa	Toledo	0
Camarena	Toledo	0
Camarenilla	Toledo	0
Campillo de la Jara, El	Toledo	0
Camu??as	Toledo	0
Cardiel de los Montes	Toledo	0
Carmena	Toledo	0
Carpio de Tajo, El	Toledo	0
Carranque	Toledo	0
Carriches	Toledo	0
Casar de Escalona, El	Toledo	0
Casarrubios del Monte	Toledo	0
Casasbuenas	Toledo	0
Castillo de Bayuela	Toledo	0
Cazalegas	Toledo	0
Cebolla	Toledo	0
Cedillo del Condado	Toledo	0
Cerralbos, Los	Toledo	0
Cervera de los Montes	Toledo	0
Ciruelos	Toledo	0
Cobeja	Toledo	0
Cobisa	Toledo	0
Consuegra	Toledo	0
Corral de Almaguer	Toledo	0
Cuerva	Toledo	0
Chozas de Canales	Toledo	0
Chueca	Toledo	0
Domingo P??rez	Toledo	0
Dosbarrios	Toledo	0
Erustes	Toledo	0
Escalona	Toledo	0
Escalonilla	Toledo	0
Espinoso del Rey	Toledo	0
Esquivias	Toledo	0
Estrella, La	Toledo	0
Fuensalida	Toledo	0
G??lvez	Toledo	0
Garciotum	Toledo	0
Gerindote	Toledo	0
Guadamur	Toledo	0
Guardia, La	Toledo	0
Herencias, Las	Toledo	0
Herreruela de Oropesa	Toledo	0
Hinojosa de San Vicente	Toledo	0
Hontanar	Toledo	0
Hormigos	Toledo	0
Huecas	Toledo	0
Huerta de Valdecar??banos	Toledo	0
Iglesuela, La	Toledo	0
Ill??n de Vacas	Toledo	0
Illescas	Toledo	0
Lagartera	Toledo	0
Layos	Toledo	0
Lillo	Toledo	0
Lominchar	Toledo	0
Lucillos	Toledo	0
Madridejos	Toledo	0
Mag??n	Toledo	0
Malpica de Tajo	Toledo	0
Manzaneque	Toledo	0
Maqueda	Toledo	0
Marjaliza	Toledo	0
Marrupe	Toledo	0
Mascaraque	Toledo	0
Mata, La	Toledo	0
Mazarambroz	Toledo	0
Mejorada	Toledo	0
Menasalbas	Toledo	0
M??ntrida	Toledo	0
Mesegar de Tajo	Toledo	0
Miguel Esteban	Toledo	0
Mocej??n	Toledo	0
Mohedas de la Jara	Toledo	0
Montearag??n	Toledo	0
Montesclaros	Toledo	0
Mora	Toledo	0
Nambroca	Toledo	0
Nava de Ricomalillo, La	Toledo	0
Navahermosa	Toledo	0
Navalc??n	Toledo	0
Navalmoralejo	Toledo	0
Navalmorales, Los	Toledo	0
Navalucillos, Los	Toledo	0
Navamorcuende	Toledo	0
Noblejas	Toledo	0
Noez	Toledo	0
Nombela	Toledo	0
Nov??s	Toledo	0
Numancia de la Sagra	Toledo	0
Nu??o G??mez	Toledo	0
Oca??a	Toledo	0
Ol??as del Rey	Toledo	0
Ont??gola	Toledo	0
Orgaz	Toledo	0
Oropesa	Toledo	0
Otero	Toledo	0
Palomeque	Toledo	0
Pantoja	Toledo	0
Paredes de Escalona	Toledo	0
Parrillas	Toledo	0
Pelahust??n	Toledo	0
Pepino	Toledo	0
Pol??n	Toledo	0
Portillo de Toledo	Toledo	0
Puebla de Almoradiel, La	Toledo	0
Puebla de Montalb??n, La	Toledo	0
Pueblanueva, La	Toledo	0
Puente del Arzobispo, El	Toledo	0
Puerto de San Vicente	Toledo	0
Pulgar	Toledo	0
Quero	Toledo	0
Quintanar de la Orden	Toledo	0
Quismondo	Toledo	0
Real de San Vicente, El	Toledo	0
Recas	Toledo	0
Retamoso de la Jara	Toledo	0
Rielves	Toledo	0
Robledo del Mazo	Toledo	0
Romeral, El	Toledo	0
San Bartolom?? de las Abiertas	Toledo	0
San Mart??n de Montalb??n	Toledo	0
San Mart??n de Pusa	Toledo	0
San Pablo de los Montes	Toledo	0
San Rom??n de los Montes	Toledo	0
Santa Ana de Pusa	Toledo	0
Santa Cruz de la Zarza	Toledo	0
Santa Cruz del Retamar	Toledo	0
Santa Olalla	Toledo	0
Sartajada	Toledo	0
Segurilla	Toledo	0
Sese??a	Toledo	0
Sevilleja de la Jara	Toledo	0
Sonseca	Toledo	0
Sotillo de las Palomas	Toledo	0
Talavera de la Reina	Toledo	0
Tembleque	Toledo	0
Toboso, El	Toledo	0
Toledo	Toledo	0
Torralba de Oropesa	Toledo	0
Torrecilla de la Jara	Toledo	0
Torre de Esteban Hambr??n, La	Toledo	0
Torrico	Toledo	0
Torrijos	Toledo	0
Totan??s	Toledo	0
Turleque	Toledo	0
Ugena	Toledo	0
Urda	Toledo	0
Valdeverdeja	Toledo	0
Valmojado	Toledo	0
Velada	Toledo	0
Ventas con Pe??a Aguilera, Las	Toledo	0
Ventas de Retamosa, Las	Toledo	0
Ventas de San Juli??n, Las	Toledo	0
Villaca??as	Toledo	0
Villa de Don Fadrique, La	Toledo	0
Villafranca de los Caballeros	Toledo	0
Villaluenga de la Sagra	Toledo	0
Villamiel de Toledo	Toledo	0
Villaminaya	Toledo	0
Villamuelas	Toledo	0
Villanueva de Alcardete	Toledo	0
Villanueva de Bogas	Toledo	0
Villarejo de Montalb??n	Toledo	0
Villarrubia de Santiago	Toledo	0
Villaseca de la Sagra	Toledo	0
Villasequilla	Toledo	0
Villatobas	Toledo	0
Viso de San Juan, El	Toledo	0
Y??benes, Los	Toledo	0
Yeles	Toledo	0
Yepes	Toledo	0
Yuncler	Toledo	0
Yunclillos	Toledo	0
Yuncos	Toledo	0
Santo Domingo-Caudilla	Toledo	0
Ademuz	Valencia/Val??ncia	0
Ador	Valencia/Val??ncia	0
Atzeneta dAlbaida	Valencia/Val??ncia	0
Agullent	Valencia/Val??ncia	0
Alaqu??s	Valencia/Val??ncia	0
Albaida	Valencia/Val??ncia	0
Albal	Valencia/Val??ncia	0
Albalat de la Ribera	Valencia/Val??ncia	0
Albalat dels Sorells	Valencia/Val??ncia	0
Albalat dels Tarongers	Valencia/Val??ncia	0
Alberic	Valencia/Val??ncia	0
Alborache	Valencia/Val??ncia	0
Alboraya	Valencia/Val??ncia	0
Albuixech	Valencia/Val??ncia	0
Alc??sser	Valencia/Val??ncia	0
Alc??ntera de X??quer	Valencia/Val??ncia	0
Alzira	Valencia/Val??ncia	0
Alcublas	Valencia/Val??ncia	0
Alc??dia, l	Valencia/Val??ncia	0
Alc??dia de Crespins, l	Valencia/Val??ncia	0
Aldaia	Valencia/Val??ncia	0
Alfafar	Valencia/Val??ncia	0
Alfauir	Valencia/Val??ncia	0
Alfara de la Baronia	Valencia/Val??ncia	0
Alfara del Patriarca	Valencia/Val??ncia	0
Alfarp	Valencia/Val??ncia	0
Alfarras??	Valencia/Val??ncia	0
Algar de Palancia	Valencia/Val??ncia	0
Algemes??	Valencia/Val??ncia	0
Algimia de Alfara	Valencia/Val??ncia	0
Alginet	Valencia/Val??ncia	0
Alm??ssera	Valencia/Val??ncia	0
Almiser??	Valencia/Val??ncia	0
Almoines	Valencia/Val??ncia	0
Almussafes	Valencia/Val??ncia	0
Alpuente	Valencia/Val??ncia	0
Alqueria de la Comtessa, l	Valencia/Val??ncia	0
Andilla	Valencia/Val??ncia	0
Anna	Valencia/Val??ncia	0
Antella	Valencia/Val??ncia	0
Aras de los Olmos	Valencia/Val??ncia	0
Aielo de Malferit	Valencia/Val??ncia	0
Aielo de Rugat	Valencia/Val??ncia	0
Ayora	Valencia/Val??ncia	0
Barxeta	Valencia/Val??ncia	0
Barx	Valencia/Val??ncia	0
B??lgida	Valencia/Val??ncia	0
Bellreguard	Valencia/Val??ncia	0
Bell??s	Valencia/Val??ncia	0
Benag??ber	Valencia/Val??ncia	0
Benaguasil	Valencia/Val??ncia	0
Benavites	Valencia/Val??ncia	0
Beneixida	Valencia/Val??ncia	0
Benet??sser	Valencia/Val??ncia	0
Beniarj??	Valencia/Val??ncia	0
Beniatjar	Valencia/Val??ncia	0
Benicolet	Valencia/Val??ncia	0
Benifair?? de les Valls	Valencia/Val??ncia	0
Benifair?? de la Valldigna	Valencia/Val??ncia	0
Benifai??	Valencia/Val??ncia	0
Benifl??	Valencia/Val??ncia	0
Benig??nim	Valencia/Val??ncia	0
Benimodo	Valencia/Val??ncia	0
Benimuslem	Valencia/Val??ncia	0
Beniparrell	Valencia/Val??ncia	0
Benirredr??	Valencia/Val??ncia	0
Benisan??	Valencia/Val??ncia	0
Benissoda	Valencia/Val??ncia	0
Benisuera	Valencia/Val??ncia	0
B??tera	Valencia/Val??ncia	0
Bicorp	Valencia/Val??ncia	0
Bocairent	Valencia/Val??ncia	0
Bolbaite	Valencia/Val??ncia	0
Bonrep??s i Mirambell	Valencia/Val??ncia	0
Bufali	Valencia/Val??ncia	0
Bugarra	Valencia/Val??ncia	0
Bu??ol	Valencia/Val??ncia	0
Burjassot	Valencia/Val??ncia	0
Calles	Valencia/Val??ncia	0
Camporrobles	Valencia/Val??ncia	0
Canals	Valencia/Val??ncia	0
Canet dEn Berenguer	Valencia/Val??ncia	0
Carcaixent	Valencia/Val??ncia	0
C??rcer	Valencia/Val??ncia	0
Carlet	Valencia/Val??ncia	0
Carr??cola	Valencia/Val??ncia	0
Casas Altas	Valencia/Val??ncia	0
Casas Bajas	Valencia/Val??ncia	0
Casinos	Valencia/Val??ncia	0
Castell?? de Rugat	Valencia/Val??ncia	0
Castellonet de la Conquesta	Valencia/Val??ncia	0
Castielfabib	Valencia/Val??ncia	0
Catadau	Valencia/Val??ncia	0
Catarroja	Valencia/Val??ncia	0
Caudete de las Fuentes	Valencia/Val??ncia	0
Cerd??	Valencia/Val??ncia	0
Cofrentes	Valencia/Val??ncia	0
Corbera	Valencia/Val??ncia	0
Cortes de Pall??s	Valencia/Val??ncia	0
Cotes	Valencia/Val??ncia	0
Quart de les Valls	Valencia/Val??ncia	0
Quart de Poblet	Valencia/Val??ncia	0
Quartell	Valencia/Val??ncia	0
Quatretonda	Valencia/Val??ncia	0
Cullera	Valencia/Val??ncia	0
Chelva	Valencia/Val??ncia	0
Chella	Valencia/Val??ncia	0
Chera	Valencia/Val??ncia	0
Cheste	Valencia/Val??ncia	0
Xirivella	Valencia/Val??ncia	0
Chiva	Valencia/Val??ncia	0
Chulilla	Valencia/Val??ncia	0
Daim??s	Valencia/Val??ncia	0
Dome??o	Valencia/Val??ncia	0
Dos Aguas	Valencia/Val??ncia	0
Eliana, l	Valencia/Val??ncia	0
Emperador	Valencia/Val??ncia	0
Enguera	Valencia/Val??ncia	0
??nova, l	Valencia/Val??ncia	0
Estivella	Valencia/Val??ncia	0
Estubeny	Valencia/Val??ncia	0
Faura	Valencia/Val??ncia	0
Favara	Valencia/Val??ncia	0
Fontanars dels Alforins	Valencia/Val??ncia	0
Fortaleny	Valencia/Val??ncia	0
Foios	Valencia/Val??ncia	0
Font dEn Carr??s, la	Valencia/Val??ncia	0
Font de la Figuera, la	Valencia/Val??ncia	0
Fuenterrobles	Valencia/Val??ncia	0
Gavarda	Valencia/Val??ncia	0
Gandia	Valencia/Val??ncia	0
Genov??s	Valencia/Val??ncia	0
Gestalgar	Valencia/Val??ncia	0
Gilet	Valencia/Val??ncia	0
Godella	Valencia/Val??ncia	0
Godelleta	Valencia/Val??ncia	0
Granja de la Costera, la	Valencia/Val??ncia	0
Guadass??quies	Valencia/Val??ncia	0
Guadassuar	Valencia/Val??ncia	0
Guardamar de la Safor	Valencia/Val??ncia	0
Higueruelas	Valencia/Val??ncia	0
Jalance	Valencia/Val??ncia	0
Xeraco	Valencia/Val??ncia	0
Jarafuel	Valencia/Val??ncia	0
X??tiva	Valencia/Val??ncia	0
Xeresa	Valencia/Val??ncia	0
Ll??ria	Valencia/Val??ncia	0
Loriguilla	Valencia/Val??ncia	0
Losa del Obispo	Valencia/Val??ncia	0
Llutxent	Valencia/Val??ncia	0
Llocnou dEn Fenollet	Valencia/Val??ncia	0
Llocnou de la Corona	Valencia/Val??ncia	0
Llocnou de Sant Jeroni	Valencia/Val??ncia	0
Llanera de Ranes	Valencia/Val??ncia	0
Llaur??	Valencia/Val??ncia	0
Llombai	Valencia/Val??ncia	0
Llosa de Ranes, la	Valencia/Val??ncia	0
Macastre	Valencia/Val??ncia	0
Manises	Valencia/Val??ncia	0
Manuel	Valencia/Val??ncia	0
Marines	Valencia/Val??ncia	0
Massalav??s	Valencia/Val??ncia	0
Massalfassar	Valencia/Val??ncia	0
Massamagrell	Valencia/Val??ncia	0
Massanassa	Valencia/Val??ncia	0
Meliana	Valencia/Val??ncia	0
Millares	Valencia/Val??ncia	0
Miramar	Valencia/Val??ncia	0
Mislata	Valencia/Val??ncia	0
Mogente/Moixent	Valencia/Val??ncia	0
Moncada	Valencia/Val??ncia	0
Montserrat	Valencia/Val??ncia	0
Montaverner	Valencia/Val??ncia	0
Montesa	Valencia/Val??ncia	0
Montitxelvo/Montichelvo	Valencia/Val??ncia	0
Montroy	Valencia/Val??ncia	0
Museros	Valencia/Val??ncia	0
N??quera	Valencia/Val??ncia	0
Navarr??s	Valencia/Val??ncia	0
Novel??/Novetl??	Valencia/Val??ncia	0
Oliva	Valencia/Val??ncia	0
Olocau	Valencia/Val??ncia	0
Olleria, l	Valencia/Val??ncia	0
Ontinyent	Valencia/Val??ncia	0
Otos	Valencia/Val??ncia	0
Paiporta	Valencia/Val??ncia	0
Palma de Gand??a	Valencia/Val??ncia	0
Palmera	Valencia/Val??ncia	0
Palomar, el	Valencia/Val??ncia	0
Paterna	Valencia/Val??ncia	0
Pedralba	Valencia/Val??ncia	0
Petr??s	Valencia/Val??ncia	0
Picanya	Valencia/Val??ncia	0
Picassent	Valencia/Val??ncia	0
Piles	Valencia/Val??ncia	0
Pinet	Valencia/Val??ncia	0
Poliny?? de X??quer	Valencia/Val??ncia	0
Potr??es	Valencia/Val??ncia	0
Pobla de Farnals, la	Valencia/Val??ncia	0
Pobla del Duc, la	Valencia/Val??ncia	0
Puebla de San Miguel	Valencia/Val??ncia	0
Pobla de Vallbona, la	Valencia/Val??ncia	0
Pobla Llarga, la	Valencia/Val??ncia	0
Puig	Valencia/Val??ncia	0
Pu??ol	Valencia/Val??ncia	0
Quesa	Valencia/Val??ncia	0
Rafelbu??ol/Rafelbunyol	Valencia/Val??ncia	0
Rafelcofer	Valencia/Val??ncia	0
Rafelguaraf	Valencia/Val??ncia	0
R??fol de Salem	Valencia/Val??ncia	0
Real de Gand??a	Valencia/Val??ncia	0
Real	Valencia/Val??ncia	0
Requena	Valencia/Val??ncia	0
Riba-roja de T??ria	Valencia/Val??ncia	0
Riola	Valencia/Val??ncia	0
Rocafort	Valencia/Val??ncia	0
Rotgl?? i Corber??	Valencia/Val??ncia	0
R??tova	Valencia/Val??ncia	0
Rugat	Valencia/Val??ncia	0
Sagunto/Sagunt	Valencia/Val??ncia	0
Salem	Valencia/Val??ncia	0
Sant Joanet	Valencia/Val??ncia	0
Sedav??	Valencia/Val??ncia	0
Segart	Valencia/Val??ncia	0
Sellent	Valencia/Val??ncia	0
Sempere	Valencia/Val??ncia	0
Senyera	Valencia/Val??ncia	0
Serra	Valencia/Val??ncia	0
Siete Aguas	Valencia/Val??ncia	0
Silla	Valencia/Val??ncia	0
Simat de la Valldigna	Valencia/Val??ncia	0
Sinarcas	Valencia/Val??ncia	0
Sollana	Valencia/Val??ncia	0
Sot de Chera	Valencia/Val??ncia	0
Sueca	Valencia/Val??ncia	0
Sumac??rcer	Valencia/Val??ncia	0
Tavernes Blanques	Valencia/Val??ncia	0
Tavernes de la Valldigna	Valencia/Val??ncia	0
Teresa de Cofrentes	Valencia/Val??ncia	0
Terrateig	Valencia/Val??ncia	0
Titaguas	Valencia/Val??ncia	0
Torrebaja	Valencia/Val??ncia	0
Torrella	Valencia/Val??ncia	0
Torrent	Valencia/Val??ncia	0
Torres Torres	Valencia/Val??ncia	0
Tous	Valencia/Val??ncia	0
Tu??jar	Valencia/Val??ncia	0
Tur??s	Valencia/Val??ncia	0
Utiel	Valencia/Val??ncia	0
Valencia	Valencia/Val??ncia	0
Vallada	Valencia/Val??ncia	0
Vallanca	Valencia/Val??ncia	0
Vall??s	Valencia/Val??ncia	0
Venta del Moro	Valencia/Val??ncia	0
Villalonga	Valencia/Val??ncia	0
Vilamarxant	Valencia/Val??ncia	0
Villanueva de Castell??n	Valencia/Val??ncia	0
Villar del Arzobispo	Valencia/Val??ncia	0
Villargordo del Cabriel	Valencia/Val??ncia	0
Vinalesa	Valencia/Val??ncia	0
Y??tova	Valencia/Val??ncia	0
Yesa, La	Valencia/Val??ncia	0
Zarra	Valencia/Val??ncia	0
G??tova	Valencia/Val??ncia	0
San Antonio de Benag??ber	Valencia/Val??ncia	0
Benicull de X??quer	Valencia/Val??ncia	0
Adalia	Valladolid	0
Aguasal	Valladolid	0
Aguilar de Campos	Valladolid	0
Alaejos	Valladolid	0
Alcazar??n	Valladolid	0
Aldea de San Miguel	Valladolid	0
Aldeamayor de San Mart??n	Valladolid	0
Almenara de Adaja	Valladolid	0
Amusquillo	Valladolid	0
Arroyo de la Encomienda	Valladolid	0
Ataquines	Valladolid	0
Bahab??n	Valladolid	0
Barcial de la Loma	Valladolid	0
Barruelo del Valle	Valladolid	0
Becilla de Valderaduey	Valladolid	0
Benafarces	Valladolid	0
Bercero	Valladolid	0
Berceruelo	Valladolid	0
Berrueces	Valladolid	0
Bobadilla del Campo	Valladolid	0
Bocigas	Valladolid	0
Bocos de Duero	Valladolid	0
Boecillo	Valladolid	0
Bola??os de Campos	Valladolid	0
Brahojos de Medina	Valladolid	0
Bustillo de Chaves	Valladolid	0
Cabez??n de Pisuerga	Valladolid	0
Cabez??n de Valderaduey	Valladolid	0
Cabreros del Monte	Valladolid	0
Campaspero	Valladolid	0
Campillo, El	Valladolid	0
Camporredondo	Valladolid	0
Canalejas de Pe??afiel	Valladolid	0
Canillas de Esgueva	Valladolid	0
Carpio	Valladolid	0
Casasola de Ari??n	Valladolid	0
Castrej??n de Trabancos	Valladolid	0
Castrillo de Duero	Valladolid	0
Castrillo-Tejeriego	Valladolid	0
Castrobol	Valladolid	0
Castrodeza	Valladolid	0
Castromembibre	Valladolid	0
Castromonte	Valladolid	0
Castronuevo de Esgueva	Valladolid	0
Castronu??o	Valladolid	0
Castroponce	Valladolid	0
Castroverde de Cerrato	Valladolid	0
Ceinos de Campos	Valladolid	0
Cervillego de la Cruz	Valladolid	0
Cigales	Valladolid	0
Cigu??uela	Valladolid	0
Cist??rniga	Valladolid	0
Cogeces de ??scar	Valladolid	0
Cogeces del Monte	Valladolid	0
Corcos	Valladolid	0
Corrales de Duero	Valladolid	0
Cubillas de Santa Marta	Valladolid	0
Cuenca de Campos	Valladolid	0
Curiel de Duero	Valladolid	0
Encinas de Esgueva	Valladolid	0
Esguevillas de Esgueva	Valladolid	0
Fombellida	Valladolid	0
Fompedraza	Valladolid	0
Fontihoyuelo	Valladolid	0
Fresno el Viejo	Valladolid	0
Fuensalda??a	Valladolid	0
Fuente el Sol	Valladolid	0
Fuente-Olmedo	Valladolid	0
Gallegos de Hornija	Valladolid	0
Gat??n de Campos	Valladolid	0
Geria	Valladolid	0
Herr??n de Campos	Valladolid	0
Hornillos de Eresma	Valladolid	0
??scar	Valladolid	0
Laguna de Duero	Valladolid	0
Langayo	Valladolid	0
Lomoviejo	Valladolid	0
Llano de Olmedo	Valladolid	0
Manzanillo	Valladolid	0
Marzales	Valladolid	0
Matapozuelos	Valladolid	0
Matilla de los Ca??os	Valladolid	0
Mayorga	Valladolid	0
Medina del Campo	Valladolid	0
Medina de Rioseco	Valladolid	0
Megeces	Valladolid	0
Melgar de Abajo	Valladolid	0
Melgar de Arriba	Valladolid	0
Mojados	Valladolid	0
Monasterio de Vega	Valladolid	0
Montealegre de Campos	Valladolid	0
Montemayor de Pililla	Valladolid	0
Moral de la Reina	Valladolid	0
Moraleja de las Panaderas	Valladolid	0
Morales de Campos	Valladolid	0
Mota del Marqu??s	Valladolid	0
Mucientes	Valladolid	0
Mudarra, La	Valladolid	0
Muriel	Valladolid	0
Nava del Rey	Valladolid	0
Nueva Villa de las Torres	Valladolid	0
Olivares de Duero	Valladolid	0
Olmedo	Valladolid	0
Olmos de Esgueva	Valladolid	0
Olmos de Pe??afiel	Valladolid	0
Palazuelo de Vedija	Valladolid	0
Parrilla, La	Valladolid	0
Pedraja de Portillo, La	Valladolid	0
Pedrajas de San Esteban	Valladolid	0
Pedrosa del Rey	Valladolid	0
Pe??afiel	Valladolid	0
Pe??aflor de Hornija	Valladolid	0
Pesquera de Duero	Valladolid	0
Pi??a de Esgueva	Valladolid	0
Pi??el de Abajo	Valladolid	0
Pi??el de Arriba	Valladolid	0
Pollos	Valladolid	0
Portillo	Valladolid	0
Pozal de Gallinas	Valladolid	0
Pozaldez	Valladolid	0
Pozuelo de la Orden	Valladolid	0
Puras	Valladolid	0
Quintanilla de Arriba	Valladolid	0
Quintanilla del Molar	Valladolid	0
Quintanilla de On??simo	Valladolid	0
Quintanilla de Trigueros	Valladolid	0
R??bano	Valladolid	0
Ramiro	Valladolid	0
Renedo de Esgueva	Valladolid	0
Roales de Campos	Valladolid	0
Robladillo	Valladolid	0
Roturas	Valladolid	0
Rub?? de Bracamonte	Valladolid	0
Rueda	Valladolid	0
Saelices de Mayorga	Valladolid	0
Salvador de Zapardiel	Valladolid	0
San Cebri??n de Mazote	Valladolid	0
San Llorente	Valladolid	0
San Mart??n de Valven??	Valladolid	0
San Miguel del Arroyo	Valladolid	0
San Miguel del Pino	Valladolid	0
San Pablo de la Moraleja	Valladolid	0
San Pedro de Latarce	Valladolid	0
San Pelayo	Valladolid	0
San Rom??n de Hornija	Valladolid	0
San Salvador	Valladolid	0
Santa Eufemia del Arroyo	Valladolid	0
Santerv??s de Campos	Valladolid	0
Santib????ez de Valcorba	Valladolid	0
Santovenia de Pisuerga	Valladolid	0
San Vicente del Palacio	Valladolid	0
Sard??n de Duero	Valladolid	0
Seca, La	Valladolid	0
Serrada	Valladolid	0
Siete Iglesias de Trabancos	Valladolid	0
Simancas	Valladolid	0
Tamariz de Campos	Valladolid	0
Tiedra	Valladolid	0
Tordehumos	Valladolid	0
Tordesillas	Valladolid	0
Torrecilla de la Abadesa	Valladolid	0
Torrecilla de la Orden	Valladolid	0
Torrecilla de la Torre	Valladolid	0
Torre de Esgueva	Valladolid	0
Torre de Pe??afiel	Valladolid	0
Torrelobat??n	Valladolid	0
Torresc??rcela	Valladolid	0
Traspinedo	Valladolid	0
Trigueros del Valle	Valladolid	0
Tudela de Duero	Valladolid	0
Uni??n de Campos, La	Valladolid	0
Urones de Castroponce	Valladolid	0
Urue??a	Valladolid	0
Valbuena de Duero	Valladolid	0
Valdearcos de la Vega	Valladolid	0
Valdenebro de los Valles	Valladolid	0
Valdestillas	Valladolid	0
Valdunquillo	Valladolid	0
Valoria la Buena	Valladolid	0
Valverde de Campos	Valladolid	0
Valladolid	Valladolid	0
Vega de Ruiponce	Valladolid	0
Vega de Valdetronco	Valladolid	0
Velasc??lvaro	Valladolid	0
Velilla	Valladolid	0
Velliza	Valladolid	0
Ventosa de la Cuesta	Valladolid	0
Viana de Cega	Valladolid	0
Viloria	Valladolid	0
Villab????ez	Valladolid	0
Villabaruz de Campos	Valladolid	0
Villabr??gima	Valladolid	0
Villacarral??n	Valladolid	0
Villacid de Campos	Valladolid	0
Villaco	Valladolid	0
Villafrades de Campos	Valladolid	0
Villafranca de Duero	Valladolid	0
Villafrech??s	Valladolid	0
Villafuerte	Valladolid	0
Villagarc??a de Campos	Valladolid	0
Villag??mez la Nueva	Valladolid	0
Villal??n de Campos	Valladolid	0
Villalar de los Comuneros	Valladolid	0
Villalba de la Loma	Valladolid	0
Villalba de los Alcores	Valladolid	0
Villalbarba	Valladolid	0
Villal??n de Campos	Valladolid	0
Villamuriel de Campos	Valladolid	0
Vill??n de Tordesillas	Valladolid	0
Villanubla	Valladolid	0
Villanueva de Duero	Valladolid	0
Villanueva de la Condesa	Valladolid	0
Villanueva de los Caballeros	Valladolid	0
Villanueva de los Infantes	Valladolid	0
Villanueva de San Mancio	Valladolid	0
Villardefrades	Valladolid	0
Villarmentero de Esgueva	Valladolid	0
Villasexmir	Valladolid	0
Villavaquer??n	Valladolid	0
Villavellid	Valladolid	0
Villaverde de Medina	Valladolid	0
Villavicencio de los Caballeros	Valladolid	0
Wamba	Valladolid	0
Zarat??n	Valladolid	0
Zarza, La	Valladolid	0
Abadi??o	Bizkaia	0
Abanto y Ci??rvana-Abanto Zierbena	Bizkaia	0
Amorebieta-Etxano	Bizkaia	0
Amoroto	Bizkaia	0
Arakaldo	Bizkaia	0
Arantzazu	Bizkaia	0
Munitibar-Arbatzegi Gerrikaitz	Bizkaia	0
Artzentales	Bizkaia	0
Arrankudiaga	Bizkaia	0
Arrieta	Bizkaia	0
Arrigorriaga	Bizkaia	0
Bakio	Bizkaia	0
Barakaldo	Bizkaia	0
Barrika	Bizkaia	0
Basauri	Bizkaia	0
Berango	Bizkaia	0
Bermeo	Bizkaia	0
Berriatua	Bizkaia	0
Berriz	Bizkaia	0
Bilbao	Bizkaia	0
Busturia	Bizkaia	0
Karrantza Harana/Valle de Carranza	Bizkaia	0
Artea	Bizkaia	0
Zeanuri	Bizkaia	0
Zeberio	Bizkaia	0
Dima	Bizkaia	0
Durango	Bizkaia	0
Ea	Bizkaia	0
Etxebarri	Bizkaia	0
Etxebarria	Bizkaia	0
Elantxobe	Bizkaia	0
Elorrio	Bizkaia	0
Ere??o	Bizkaia	0
Ermua	Bizkaia	0
Fruiz	Bizkaia	0
Galdakao	Bizkaia	0
Galdames	Bizkaia	0
Gamiz-Fika	Bizkaia	0
Garai	Bizkaia	0
Gatika	Bizkaia	0
Gautegiz Arteaga	Bizkaia	0
Gordexola	Bizkaia	0
Gorliz	Bizkaia	0
Getxo	Bizkaia	0
G??e??es	Bizkaia	0
Gernika-Lumo	Bizkaia	0
Gizaburuaga	Bizkaia	0
Ibarrangelu	Bizkaia	0
Ispaster	Bizkaia	0
Izurtza	Bizkaia	0
Lanestosa	Bizkaia	0
Larrabetzu	Bizkaia	0
Laukiz	Bizkaia	0
Leioa	Bizkaia	0
Lemoa	Bizkaia	0
Lemoiz	Bizkaia	0
Lekeitio	Bizkaia	0
Mallabia	Bizkaia	0
Ma??aria	Bizkaia	0
Markina-Xemein	Bizkaia	0
Maruri-Jatabe	Bizkaia	0
Mendata	Bizkaia	0
Mendexa	Bizkaia	0
Me??aka	Bizkaia	0
Ugao-Miraballes	Bizkaia	0
Morga	Bizkaia	0
Muxika	Bizkaia	0
Mundaka	Bizkaia	0
Mungia	Bizkaia	0
Aulesti	Bizkaia	0
Muskiz	Bizkaia	0
Otxandio	Bizkaia	0
Ondarroa	Bizkaia	0
Urdu??a/Ordu??a	Bizkaia	0
Orozko	Bizkaia	0
Sukarrieta	Bizkaia	0
Plentzia	Bizkaia	0
Portugalete	Bizkaia	0
Errigoiti	Bizkaia	0
Valle de Tr??paga-Trapagaran	Bizkaia	0
Lezama	Bizkaia	0
Santurtzi	Bizkaia	0
Ortuella	Bizkaia	0
Sestao	Bizkaia	0
Sopelana	Bizkaia	0
Sopuerta	Bizkaia	0
Trucios-Turtzioz	Bizkaia	0
Ubide	Bizkaia	0
Urduliz	Bizkaia	0
Balmaseda	Bizkaia	0
Atxondo	Bizkaia	0
Bedia	Bizkaia	0
Areatza	Bizkaia	0
Igorre	Bizkaia	0
Zaldibar	Bizkaia	0
Zalla	Bizkaia	0
Zaratamo	Bizkaia	0
Derio	Bizkaia	0
Erandio	Bizkaia	0
Loiu	Bizkaia	0
Sondika	Bizkaia	0
Zamudio	Bizkaia	0
Forua	Bizkaia	0
Kortezubi	Bizkaia	0
Murueta	Bizkaia	0
Nabarniz	Bizkaia	0
Iurreta	Bizkaia	0
Ajangiz	Bizkaia	0
Alonsotegi	Bizkaia	0
Zierbena	Bizkaia	0
Arratzu	Bizkaia	0
Ziortza-Bolibar	Bizkaia	0
Abezames	Zamora	0
Alca??ices	Zamora	0
Alcubilla de Nogales	Zamora	0
Alfaraz de Sayago	Zamora	0
Algodre	Zamora	0
Almaraz de Duero	Zamora	0
Almeida de Sayago	Zamora	0
Andav??as	Zamora	0
Arcenillas	Zamora	0
Arcos de la Polvorosa	Zamora	0
Arga????n	Zamora	0
Argujillo	Zamora	0
Arquillinos	Zamora	0
Arrabalde	Zamora	0
Aspariegos	Zamora	0
Asturianos	Zamora	0
Ayo?? de Vidriales	Zamora	0
Barcial del Barco	Zamora	0
Belver de los Montes	Zamora	0
Benavente	Zamora	0
Benegiles	Zamora	0
Bermillo de Sayago	Zamora	0
B??veda de Toro, La	Zamora	0
Bret??	Zamora	0
Bretocino	Zamora	0
Brime de Sog	Zamora	0
Brime de Urz	Zamora	0
Burganes de Valverde	Zamora	0
Bustillo del Oro	Zamora	0
Caba??as de Sayago	Zamora	0
Calzadilla de Tera	Zamora	0
Camarzana de Tera	Zamora	0
Ca??izal	Zamora	0
Ca??izo	Zamora	0
Carbajales de Alba	Zamora	0
Carbellino	Zamora	0
Casaseca de Campe??n	Zamora	0
Casaseca de las Chanas	Zamora	0
Castrillo de la Guare??a	Zamora	0
Castrogonzalo	Zamora	0
Castronuevo	Zamora	0
Castroverde de Campos	Zamora	0
Cazurra	Zamora	0
Cerecinos de Campos	Zamora	0
Cerecinos del Carrizal	Zamora	0
Cernadilla	Zamora	0
Cobreros	Zamora	0
Coomonte	Zamora	0
Coreses	Zamora	0
Corrales del Vino	Zamora	0
Cotanes del Monte	Zamora	0
Cubillos	Zamora	0
Cubo de Benavente	Zamora	0
Cubo de Tierra del Vino, El	Zamora	0
Cuelgamures	Zamora	0
Entrala	Zamora	0
Espada??edo	Zamora	0
Faramontanos de T??bara	Zamora	0
Fariza	Zamora	0
Fermoselle	Zamora	0
Ferreras de Abajo	Zamora	0
Ferreras de Arriba	Zamora	0
Ferreruela	Zamora	0
Figueruela de Arriba	Zamora	0
Fonfr??a	Zamora	0
Fresno de la Polvorosa	Zamora	0
Fresno de la Ribera	Zamora	0
Fresno de Sayago	Zamora	0
Friera de Valverde	Zamora	0
Fuente Encalada	Zamora	0
Fuentelape??a	Zamora	0
Fuentesa??co	Zamora	0
Fuentes de Ropel	Zamora	0
Fuentesecas	Zamora	0
Fuentespreadas	Zamora	0
Galende	Zamora	0
Gallegos del Pan	Zamora	0
Gallegos del R??o	Zamora	0
Gamones	Zamora	0
Gema	Zamora	0
Granja de Moreruela	Zamora	0
Granucillo	Zamora	0
Guarrate	Zamora	0
Hermisende	Zamora	0
Hiniesta, La	Zamora	0
Jambrina	Zamora	0
Justel	Zamora	0
Losacino	Zamora	0
Losacio	Zamora	0
Lubi??n	Zamora	0
Luelmo	Zamora	0
Maderal, El	Zamora	0
Madridanos	Zamora	0
Mahide	Zamora	0
Maire de Castroponce	Zamora	0
Malva	Zamora	0
Manganeses de la Lampreana	Zamora	0
Manganeses de la Polvorosa	Zamora	0
Manzanal de Arriba	Zamora	0
Manzanal del Barco	Zamora	0
Manzanal de los Infantes	Zamora	0
Matilla de Arz??n	Zamora	0
Matilla la Seca	Zamora	0
Mayalde	Zamora	0
Melgar de Tera	Zamora	0
Micereces de Tera	Zamora	0
Milles de la Polvorosa	Zamora	0
Molacillos	Zamora	0
Molezuelas de la Carballeda	Zamora	0
Mombuey	Zamora	0
Monfarracinos	Zamora	0
Montamarta	Zamora	0
Moral de Sayago	Zamora	0
Moraleja del Vino	Zamora	0
Moraleja de Sayago	Zamora	0
Morales del Vino	Zamora	0
Morales de Rey	Zamora	0
Morales de Toro	Zamora	0
Morales de Valverde	Zamora	0
Moralina	Zamora	0
Moreruela de los Infanzones	Zamora	0
Moreruela de T??bara	Zamora	0
Muelas de los Caballeros	Zamora	0
Muelas del Pan	Zamora	0
Muga de Sayago	Zamora	0
Navianos de Valverde	Zamora	0
Olmillos de Castro	Zamora	0
Otero de Bodas	Zamora	0
Pajares de la Lampreana	Zamora	0
Palacios del Pan	Zamora	0
Palacios de Sanabria	Zamora	0
Pedralba de la Prader??a	Zamora	0
Pego, El	Zamora	0
Peleagonzalo	Zamora	0
Peleas de Abajo	Zamora	0
Pe??ausende	Zamora	0
Peque	Zamora	0
Perdig??n, El	Zamora	0
Pereruela	Zamora	0
Perilla de Castro	Zamora	0
P??as	Zamora	0
Piedrahita de Castro	Zamora	0
Pinilla de Toro	Zamora	0
Pino del Oro	Zamora	0
Pi??ero, El	Zamora	0
Pobladura del Valle	Zamora	0
Pobladura de Valderaduey	Zamora	0
Porto	Zamora	0
Pozoantiguo	Zamora	0
Pozuelo de T??bara	Zamora	0
Prado	Zamora	0
Puebla de Sanabria	Zamora	0
Pueblica de Valverde	Zamora	0
Quintanilla del Monte	Zamora	0
Quintanilla del Olmo	Zamora	0
Quintanilla de Urz	Zamora	0
Quiruelas de Vidriales	Zamora	0
Rabanales	Zamora	0
R??bano de Aliste	Zamora	0
Requejo	Zamora	0
Revellinos	Zamora	0
Riofr??o de Aliste	Zamora	0
Rionegro del Puente	Zamora	0
Roales	Zamora	0
Robleda-Cervantes	Zamora	0
Roelos de Sayago	Zamora	0
Rosinos de la Requejada	Zamora	0
Salce	Zamora	0
Samir de los Ca??os	Zamora	0
San Agust??n del Pozo	Zamora	0
San Cebri??n de Castro	Zamora	0
San Crist??bal de Entrevi??as	Zamora	0
San Esteban del Molar	Zamora	0
San Justo	Zamora	0
San Mart??n de Valderaduey	Zamora	0
San Miguel de la Ribera	Zamora	0
San Miguel del Valle	Zamora	0
San Pedro de Ceque	Zamora	0
San Pedro de la Nave-Almendra	Zamora	0
Santa Clara de Avedillo	Zamora	0
Santa Colomba de las Monjas	Zamora	0
Santa Cristina de la Polvorosa	Zamora	0
Santa Croya de Tera	Zamora	0
Santa Eufemia del Barco	Zamora	0
Santa Mar??a de la Vega	Zamora	0
Santa Mar??a de Valverde	Zamora	0
Santib????ez de Tera	Zamora	0
Santib????ez de Vidriales	Zamora	0
Santovenia	Zamora	0
San Vicente de la Cabeza	Zamora	0
San Vitero	Zamora	0
Sanzoles	Zamora	0
T??bara	Zamora	0
Tapioles	Zamora	0
Toro	Zamora	0
Torre del Valle, La	Zamora	0
Torregamones	Zamora	0
Torres del Carrizal	Zamora	0
Trabazos	Zamora	0
Trefacio	Zamora	0
U??a de Quintana	Zamora	0
Vadillo de la Guare??a	Zamora	0
Valcabado	Zamora	0
Valdefinjas	Zamora	0
Valdescorriel	Zamora	0
Vallesa de la Guare??a	Zamora	0
Vega de Tera	Zamora	0
Vega de Villalobos	Zamora	0
Vegalatrave	Zamora	0
Venialbo	Zamora	0
Vezdemarb??n	Zamora	0
Vidayanes	Zamora	0
Videmala	Zamora	0
Villabr??zaro	Zamora	0
Villabuena del Puente	Zamora	0
Villadepera	Zamora	0
Villaescusa	Zamora	0
Villaf??fila	Zamora	0
Villaferrue??a	Zamora	0
Villageriz	Zamora	0
Villalaz??n	Zamora	0
Villalba de la Lampreana	Zamora	0
Villalcampo	Zamora	0
Villalobos	Zamora	0
Villalonso	Zamora	0
Villalpando	Zamora	0
Villalube	Zamora	0
Villamayor de Campos	Zamora	0
Villamor de los Escuderos	Zamora	0
Villan??zar	Zamora	0
Villanueva de Azoague	Zamora	0
Villanueva de Campe??n	Zamora	0
Villanueva de las Peras	Zamora	0
Villanueva del Campo	Zamora	0
Villaralbo	Zamora	0
Villardeciervos	Zamora	0
Villar de Fallaves	Zamora	0
Villar del Buey	Zamora	0
Villardiegua de la Ribera	Zamora	0
Vill??rdiga	Zamora	0
Villardondiego	Zamora	0
Villarr??n de Campos	Zamora	0
Villaseco del Pan	Zamora	0
Villavendimio	Zamora	0
Villaveza del Agua	Zamora	0
Villaveza de Valverde	Zamora	0
Vi??as	Zamora	0
Zamora	Zamora	0
Abanto	Zaragoza	0
Acered	Zaragoza	0
Ag??n	Zaragoza	0
Aguar??n	Zaragoza	0
Aguil??n	Zaragoza	0
Ainz??n	Zaragoza	0
Aladr??n	Zaragoza	0
Alag??n	Zaragoza	0
Alarba	Zaragoza	0
Alberite de San Juan	Zaragoza	0
Albeta	Zaragoza	0
Alborge	Zaragoza	0
Alcal?? de Ebro	Zaragoza	0
Alcal?? de Moncayo	Zaragoza	0
Alconchel de Ariza	Zaragoza	0
Aldehuela de Liestos	Zaragoza	0
Alfajar??n	Zaragoza	0
Alfam??n	Zaragoza	0
Alforque	Zaragoza	0
Alhama de Arag??n	Zaragoza	0
Almochuel	Zaragoza	0
Almolda, La	Zaragoza	0
Almonacid de la Cuba	Zaragoza	0
Almonacid de la Sierra	Zaragoza	0
Almunia de Do??a Godina, La	Zaragoza	0
Alpartir	Zaragoza	0
Ambel	Zaragoza	0
Anento	Zaragoza	0
Ani????n	Zaragoza	0
A????n de Moncayo	Zaragoza	0
Aranda de Moncayo	Zaragoza	0
Ar??ndiga	Zaragoza	0
Ardisa	Zaragoza	0
Ariza	Zaragoza	0
Artieda	Zaragoza	0
As??n	Zaragoza	0
Atea	Zaragoza	0
Ateca	Zaragoza	0
Azuara	Zaragoza	0
Badules	Zaragoza	0
Bag????s	Zaragoza	0
Balconch??n	Zaragoza	0
B??rboles	Zaragoza	0
Bardallur	Zaragoza	0
Belchite	Zaragoza	0
Belmonte de Graci??n	Zaragoza	0
Berdejo	Zaragoza	0
Berrueco	Zaragoza	0
Bijuesca	Zaragoza	0
Biota	Zaragoza	0
Bisimbre	Zaragoza	0
Boqui??eni	Zaragoza	0
Bordalba	Zaragoza	0
Borja	Zaragoza	0
Botorrita	Zaragoza	0
Brea de Arag??n	Zaragoza	0
Bubierca	Zaragoza	0
Bujaraloz	Zaragoza	0
Bulbuente	Zaragoza	0
Bureta	Zaragoza	0
Burgo de Ebro, El	Zaragoza	0
Buste, El	Zaragoza	0
Caba??as de Ebro	Zaragoza	0
Cabolafuente	Zaragoza	0
Cadrete	Zaragoza	0
Calatayud	Zaragoza	0
Calatorao	Zaragoza	0
Calcena	Zaragoza	0
Calmarza	Zaragoza	0
Campillo de Arag??n	Zaragoza	0
Carenas	Zaragoza	0
Cari??ena	Zaragoza	0
Caspe	Zaragoza	0
Castej??n de Alarba	Zaragoza	0
Castej??n de las Armas	Zaragoza	0
Castej??n de Valdejasa	Zaragoza	0
Castiliscar	Zaragoza	0
Cervera de la Ca??ada	Zaragoza	0
Cerveruela	Zaragoza	0
Cetina	Zaragoza	0
Cimballa	Zaragoza	0
Cinco Olivas	Zaragoza	0
Clar??s de Ribota	Zaragoza	0
Codo	Zaragoza	0
Codos	Zaragoza	0
Contamina	Zaragoza	0
Cosuenda	Zaragoza	0
Cuarte de Huerva	Zaragoza	0
Cubel	Zaragoza	0
Cuerlas, Las	Zaragoza	0
Chiprana	Zaragoza	0
Chodes	Zaragoza	0
Daroca	Zaragoza	0
Ejea de los Caballeros	Zaragoza	0
Embid de Ariza	Zaragoza	0
Encinacorba	Zaragoza	0
??pila	Zaragoza	0
Erla	Zaragoza	0
Escatr??n	Zaragoza	0
Fabara	Zaragoza	0
Farlete	Zaragoza	0
Fay??n	Zaragoza	0
Fayos, Los	Zaragoza	0
Figueruelas	Zaragoza	0
Fombuena	Zaragoza	0
Frago, El	Zaragoza	0
Frasno, El	Zaragoza	0
Fr??scano	Zaragoza	0
Fuendejal??n	Zaragoza	0
Fuendetodos	Zaragoza	0
Fuentes de Ebro	Zaragoza	0
Fuentes de Jiloca	Zaragoza	0
Gallocanta	Zaragoza	0
Gallur	Zaragoza	0
Gelsa	Zaragoza	0
Godojos	Zaragoza	0
Gotor	Zaragoza	0
Grisel	Zaragoza	0
Gris??n	Zaragoza	0
Herrera de los Navarros	Zaragoza	0
Ibdes	Zaragoza	0
Illueca	Zaragoza	0
Isuerre	Zaragoza	0
Jaraba	Zaragoza	0
Jarque	Zaragoza	0
Jaul??n	Zaragoza	0
Joyosa, La	Zaragoza	0
Lagata	Zaragoza	0
Langa del Castillo	Zaragoza	0
Layana	Zaragoza	0
L??cera	Zaragoza	0
Leci??ena	Zaragoza	0
Lech??n	Zaragoza	0
Letux	Zaragoza	0
Litago	Zaragoza	0
Litu??nigo	Zaragoza	0
Lobera de Onsella	Zaragoza	0
Longares	Zaragoza	0
Long??s	Zaragoza	0
Lucena de Jal??n	Zaragoza	0
Luceni	Zaragoza	0
Luesia	Zaragoza	0
Luesma	Zaragoza	0
Lumpiaque	Zaragoza	0
Luna	Zaragoza	0
Maella	Zaragoza	0
Magall??n	Zaragoza	0
Mainar	Zaragoza	0
Malanquilla	Zaragoza	0
Malej??n	Zaragoza	0
Mal??n	Zaragoza	0
Maluenda	Zaragoza	0
Mall??n	Zaragoza	0
Manchones	Zaragoza	0
Mara	Zaragoza	0
Mar??a de Huerva	Zaragoza	0
Mediana de Arag??n	Zaragoza	0
Mequinenza	Zaragoza	0
Mesones de Isuela	Zaragoza	0
Mezalocha	Zaragoza	0
Mianos	Zaragoza	0
Miedes de Arag??n	Zaragoza	0
Monegrillo	Zaragoza	0
Moneva	Zaragoza	0
Monreal de Ariza	Zaragoza	0
Monterde	Zaragoza	0
Mont??n	Zaragoza	0
Morata de Jal??n	Zaragoza	0
Morata de Jiloca	Zaragoza	0
Mor??s	Zaragoza	0
Moros	Zaragoza	0
Moyuela	Zaragoza	0
Mozota	Zaragoza	0
Muel	Zaragoza	0
Muela, La	Zaragoza	0
Mun??brega	Zaragoza	0
Murero	Zaragoza	0
Murillo de G??llego	Zaragoza	0
Navard??n	Zaragoza	0
Nig??ella	Zaragoza	0
Nombrevilla	Zaragoza	0
Nonaspe	Zaragoza	0
Novallas	Zaragoza	0
Novillas	Zaragoza	0
Nu??valos	Zaragoza	0
Nuez de Ebro	Zaragoza	0
Olv??s	Zaragoza	0
Orcajo	Zaragoza	0
Orera	Zaragoza	0
Or??s	Zaragoza	0
Oseja	Zaragoza	0
Osera de Ebro	Zaragoza	0
Paniza	Zaragoza	0
Paracuellos de Jiloca	Zaragoza	0
Paracuellos de la Ribera	Zaragoza	0
Pastriz	Zaragoza	0
Pedrola	Zaragoza	0
Pedrosas, Las	Zaragoza	0
Perdiguera	Zaragoza	0
Piedratajada	Zaragoza	0
Pina de Ebro	Zaragoza	0
Pinseque	Zaragoza	0
Pintanos, Los	Zaragoza	0
Plasencia de Jal??n	Zaragoza	0
Pleitas	Zaragoza	0
Plenas	Zaragoza	0
Pomer	Zaragoza	0
Pozuel de Ariza	Zaragoza	0
Pozuelo de Arag??n	Zaragoza	0
Pradilla de Ebro	Zaragoza	0
Puebla de Albort??n	Zaragoza	0
Puebla de Alfind??n, La	Zaragoza	0
Puendeluna	Zaragoza	0
Purujosa	Zaragoza	0
Quinto	Zaragoza	0
Remolinos	Zaragoza	0
Retasc??n	Zaragoza	0
Ricla	Zaragoza	0
Romanos	Zaragoza	0
Rueda de Jal??n	Zaragoza	0
Ruesca	Zaragoza	0
S??daba	Zaragoza	0
Salillas de Jal??n	Zaragoza	0
Salvatierra de Esca	Zaragoza	0
Samper del Salz	Zaragoza	0
San Mart??n de la Virgen de Moncayo	Zaragoza	0
San Mateo de G??llego	Zaragoza	0
Santa Cruz de Gr??o	Zaragoza	0
Santa Cruz de Moncayo	Zaragoza	0
Santa Eulalia de G??llego	Zaragoza	0
Santed	Zaragoza	0
S??stago	Zaragoza	0
Sabi????n	Zaragoza	0
Sediles	Zaragoza	0
Sestrica	Zaragoza	0
Sierra de Luna	Zaragoza	0
Sig????s	Zaragoza	0
Sisam??n	Zaragoza	0
Sobradiel	Zaragoza	0
Sos del Rey Cat??lico	Zaragoza	0
Tabuenca	Zaragoza	0
Talamantes	Zaragoza	0
Tarazona	Zaragoza	0
Tauste	Zaragoza	0
Terrer	Zaragoza	0
Tierga	Zaragoza	0
Tobed	Zaragoza	0
Torralba de los Frailes	Zaragoza	0
Torralba de Ribota	Zaragoza	0
Torralbilla	Zaragoza	0
Torrehermosa	Zaragoza	0
Torrelapaja	Zaragoza	0
Torrellas	Zaragoza	0
Torres de Berrell??n	Zaragoza	0
Torrijo de la Ca??ada	Zaragoza	0
Tosos	Zaragoza	0
Trasmoz	Zaragoza	0
Trasobares	Zaragoza	0
Uncastillo	Zaragoza	0
Undu??s de Lerda	Zaragoza	0
Urrea de Jal??n	Zaragoza	0
Urri??s	Zaragoza	0
Used	Zaragoza	0
Utebo	Zaragoza	0
Valdehorna	Zaragoza	0
Val de San Mart??n	Zaragoza	0
Valmadrid	Zaragoza	0
Valpalmas	Zaragoza	0
Valtorres	Zaragoza	0
Velilla de Ebro	Zaragoza	0
Velilla de Jiloca	Zaragoza	0
Vera de Moncayo	Zaragoza	0
Vierlas	Zaragoza	0
Vilue??a, La	Zaragoza	0
Villadoz	Zaragoza	0
Villafeliche	Zaragoza	0
Villafranca de Ebro	Zaragoza	0
Villalba de Perejil	Zaragoza	0
Villalengua	Zaragoza	0
Villanueva de G??llego	Zaragoza	0
Villanueva de Jiloca	Zaragoza	0
Villanueva de Huerva	Zaragoza	0
Villar de los Navarros	Zaragoza	0
Villarreal de Huerva	Zaragoza	0
Villarroya de la Sierra	Zaragoza	0
Villarroya del Campo	Zaragoza	0
Vistabella	Zaragoza	0
Zaida, La	Zaragoza	0
Zaragoza	Zaragoza	0
Zuera	Zaragoza	0
Biel	Zaragoza	0
Marracos	Zaragoza	0
Villamayor de G??llego	Zaragoza	0
Ceuta	Ceuta	0
Melilla	Melilla	0
El Campello	Alicante/Alacant	3560
\.


--
-- TOC entry 3320 (class 0 OID 24605)
-- Dependencies: 210
-- Data for Name: propietario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propietario (nombre, nif, calle, provincia, poblacion, cp, telefono, correo) FROM stdin;
Oscar Armengol Cort??s	12345678F	callAlguna	Alicante/Alacant	Campello, el	3560	123456789	correo@correo.es
\.


--
-- TOC entry 3176 (class 2606 OID 24611)
-- Name: propietario Propietario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propietario
    ADD CONSTRAINT "Propietario_pkey" PRIMARY KEY (nif);


--
-- TOC entry 3178 (class 2606 OID 24618)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (dni);


--
-- TOC entry 3179 (class 2606 OID 32773)
-- Name: factura fk_factura_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT fk_factura_cliente FOREIGN KEY (dni) REFERENCES public.cliente(dni) NOT VALID;


-- Completed on 2022-01-05 10:45:43

--
-- PostgreSQL database dump complete
--

