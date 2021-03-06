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
Alegría-Dulantzi	Araba/Álava	0
Amurrio	Araba/Álava	0
Aramaio	Araba/Álava	0
Artziniega	Araba/Álava	0
Armiñón	Araba/Álava	0
Arrazua-Ubarrundia	Araba/Álava	0
Asparrena	Araba/Álava	0
Ayala/Aiara	Araba/Álava	0
Baños de Ebro/Mañueta	Araba/Álava	0
Barrundia	Araba/Álava	0
Berantevilla	Araba/Álava	0
Bernedo	Araba/Álava	0
Campezo/Kanpezu	Araba/Álava	0
Zigoitia	Araba/Álava	0
Kripan	Araba/Álava	0
Kuartango	Araba/Álava	0
Elburgo/Burgelu	Araba/Álava	0
Elciego	Araba/Álava	0
Elvillar/Bilar	Araba/Álava	0
Iruraiz-Gauna	Araba/Álava	0
Labastida/Bastida	Araba/Álava	0
Lagrán	Araba/Álava	0
Laguardia	Araba/Álava	0
Lanciego/Lantziego	Araba/Álava	0
Lapuebla de Labarca	Araba/Álava	0
Leza	Araba/Álava	0
Laudio/Llodio	Araba/Álava	0
Arraia-Maeztu	Araba/Álava	0
Moreda de Álava/Moreda Araba	Araba/Álava	0
Navaridas	Araba/Álava	0
Okondo	Araba/Álava	0
Oyón-Oion	Araba/Álava	0
Peñacerrada-Urizaharra	Araba/Álava	0
Erriberagoitia/Ribera Alta	Araba/Álava	0
Ribera Baja/Erribera Beitia	Araba/Álava	0
Añana	Araba/Álava	0
Salvatierra/Agurain	Araba/Álava	0
Samaniego	Araba/Álava	0
San Millán/Donemiliaga	Araba/Álava	0
Urkabustaiz	Araba/Álava	0
Valdegovía/Gaubea	Araba/Álava	0
Harana/Valle de Arana	Araba/Álava	0
Villabuena de Álava/Eskuernaga	Araba/Álava	0
Legutio	Araba/Álava	0
Vitoria-Gasteiz	Araba/Álava	0
Yécora/Iekora	Araba/Álava	0
Zalduondo	Araba/Álava	0
Zambrana	Araba/Álava	0
Zuia	Araba/Álava	0
Iruña Oka/Iruña de Oca	Araba/Álava	0
Lantarón	Araba/Álava	0
Abengibre	Albacete	0
Alatoz	Albacete	0
Albacete	Albacete	0
Albatana	Albacete	0
Alborea	Albacete	0
Alcadozo	Albacete	0
Alcalá del Júcar	Albacete	0
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
Carcelén	Albacete	0
Casas de Juan Núñez	Albacete	0
Casas de Lázaro	Albacete	0
Casas de Ves	Albacete	0
Casas-Ibáñez	Albacete	0
Caudete	Albacete	0
Cenizate	Albacete	0
Corral-Rubio	Albacete	0
Cotillas	Albacete	0
Chinchilla de Monte-Aragón	Albacete	0
Elche de la Sierra	Albacete	0
Férez	Albacete	0
Fuensanta	Albacete	0
Fuente-Álamo	Albacete	0
Fuentealbilla	Albacete	0
Gineta, La	Albacete	0
Golosalvo	Albacete	0
Hellín	Albacete	0
Herrera, La	Albacete	0
Higueruela	Albacete	0
Hoya-Gonzalo	Albacete	0
Jorquera	Albacete	0
Letur	Albacete	0
Lezuza	Albacete	0
Liétor	Albacete	0
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
Peñascosa	Albacete	0
Peñas de San Pedro	Albacete	0
Pétrola	Albacete	0
Povedilla	Albacete	0
Pozohondo	Albacete	0
Pozo-Lorente	Albacete	0
Pozuelo	Albacete	0
Recueja, La	Albacete	0
Riópar	Albacete	0
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
Villalgordo del Júcar	Albacete	0
Villamalea	Albacete	0
Villapalacios	Albacete	0
Villarrobledo	Albacete	0
Villatoya	Albacete	0
Villavaliente	Albacete	0
Villaverde de Guadalimar	Albacete	0
Viveros	Albacete	0
Yeste	Albacete	0
Pozo Cañada	Albacete	0
Adsubia	Alicante/Alacant	0
Agost	Alicante/Alacant	0
Agres	Alicante/Alacant	0
Aigües	Alicante/Alacant	0
Albatera	Alicante/Alacant	0
Alcalalí	Alicante/Alacant	0
Alcocer de Planes	Alicante/Alacant	0
Alcoleja	Alicante/Alacant	0
Alcoy/Alcoi	Alicante/Alacant	0
Alfafara	Alicante/Alacant	0
Alfàs del Pi, l	Alicante/Alacant	0
Algorfa	Alicante/Alacant	0
Algueña	Alicante/Alacant	0
Almoradí	Alicante/Alacant	0
Almudaina	Alicante/Alacant	0
Alqueria dAsnar, l	Alicante/Alacant	0
Altea	Alicante/Alacant	0
Aspe	Alicante/Alacant	0
Balones	Alicante/Alacant	0
Banyeres de Mariola	Alicante/Alacant	0
Benasau	Alicante/Alacant	0
Beneixama	Alicante/Alacant	0
Benejúzar	Alicante/Alacant	0
Benferri	Alicante/Alacant	0
Beniarbeig	Alicante/Alacant	0
Beniardá	Alicante/Alacant	0
Beniarrés	Alicante/Alacant	0
Benigembla	Alicante/Alacant	0
Benidoleig	Alicante/Alacant	0
Benidorm	Alicante/Alacant	0
Benifallim	Alicante/Alacant	0
Benifato	Alicante/Alacant	0
Benijófar	Alicante/Alacant	0
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
Callosa dEn Sarrià	Alicante/Alacant	0
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
Dénia	Alicante/Alacant	0
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
Fondó de les Neus, el/Hondón de las Nieves	Alicante/Alacant	0
Hondón de los Frailes	Alicante/Alacant	0
Ibi	Alicante/Alacant	0
Jacarilla	Alicante/Alacant	0
Xaló	Alicante/Alacant	0
Jávea/Xàbia	Alicante/Alacant	0
Jijona/Xixona	Alicante/Alacant	0
Lorcha/Orxa, l	Alicante/Alacant	0
Llíber	Alicante/Alacant	0
Millena	Alicante/Alacant	0
Monforte del Cid	Alicante/Alacant	0
Monóvar/Monòver	Alicante/Alacant	0
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
Penàguila	Alicante/Alacant	0
Petrer	Alicante/Alacant	0
Pinós, el/Pinoso	Alicante/Alacant	0
Planes	Alicante/Alacant	0
Polop	Alicante/Alacant	0
Rafal	Alicante/Alacant	0
Ràfol dAlmúnia, el	Alicante/Alacant	0
Redován	Alicante/Alacant	0
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
Tàrbena	Alicante/Alacant	0
Teulada	Alicante/Alacant	0
Tibi	Alicante/Alacant	0
Tollos	Alicante/Alacant	0
Tormos	Alicante/Alacant	0
Torremanzanas/Torre de les Maçanes, la	Alicante/Alacant	0
Torrevieja	Alicante/Alacant	0
Vall dAlcalà, la	Alicante/Alacant	0
Vall dEbo, la	Alicante/Alacant	0
Cañada	Alicante/Alacant	0
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
Abla	Almería	0
Abrucena	Almería	0
Adra	Almería	0
Albánchez	Almería	0
Alboloduy	Almería	0
Albox	Almería	0
Alcolea	Almería	0
Alcóntar	Almería	0
Alcudia de Monteagud	Almería	0
Alhabia	Almería	0
Alhama de Almería	Almería	0
Alicún	Almería	0
Almería	Almería	0
Almócita	Almería	0
Alsodux	Almería	0
Antas	Almería	0
Arboleas	Almería	0
Armuña de Almanzora	Almería	0
Bacares	Almería	0
Bayárcal	Almería	0
Bayarque	Almería	0
Bédar	Almería	0
Beires	Almería	0
Benahadux	Almería	0
Benitagla	Almería	0
Benizalón	Almería	0
Bentarique	Almería	0
Berja	Almería	0
Canjáyar	Almería	0
Cantoria	Almería	0
Carboneras	Almería	0
Castro de Filabres	Almería	0
Cóbdar	Almería	0
Cuevas del Almanzora	Almería	0
Chercos	Almería	0
Chirivel	Almería	0
Dalías	Almería	0
Enix	Almería	0
Felix	Almería	0
Fines	Almería	0
Fiñana	Almería	0
Fondón	Almería	0
Gádor	Almería	0
Gallardos, Los	Almería	0
Garrucha	Almería	0
Gérgal	Almería	0
Huécija	Almería	0
Huércal de Almería	Almería	0
Huércal-Overa	Almería	0
Illar	Almería	0
Instinción	Almería	0
Laroya	Almería	0
Láujar de Andarax	Almería	0
Líjar	Almería	0
Lubrín	Almería	0
Lucainena de las Torres	Almería	0
Lúcar	Almería	0
Macael	Almería	0
María	Almería	0
Mojácar	Almería	0
Nacimiento	Almería	0
Níjar	Almería	0
Ohanes	Almería	0
Olula de Castro	Almería	0
Olula del Río	Almería	0
Oria	Almería	0
Padules	Almería	0
Partaloa	Almería	0
Paterna del Río	Almería	0
Pechina	Almería	0
Pulpí	Almería	0
Purchena	Almería	0
Rágol	Almería	0
Rioja	Almería	0
Roquetas de Mar	Almería	0
Santa Cruz de Marchena	Almería	0
Santa Fe de Mondújar	Almería	0
Senés	Almería	0
Serón	Almería	0
Sierro	Almería	0
Somontín	Almería	0
Sorbas	Almería	0
Suflí	Almería	0
Tabernas	Almería	0
Taberno	Almería	0
Tahal	Almería	0
Terque	Almería	0
Tíjola	Almería	0
Turre	Almería	0
Turrillas	Almería	0
Uleila del Campo	Almería	0
Urrácal	Almería	0
Velefique	Almería	0
Vélez-Blanco	Almería	0
Vélez-Rubio	Almería	0
Vera	Almería	0
Viator	Almería	0
Vícar	Almería	0
Zurgena	Almería	0
Tres Villas, Las	Almería	0
Ejido, El	Almería	0
Mojonera, La	Almería	0
Adanero	Ávila	0
Adrada, La	Ávila	0
Albornos	Ávila	0
Aldeanueva de Santa Cruz	Ávila	0
Aldeaseca	Ávila	0
Aldehuela, La	Ávila	0
Amavida	Ávila	0
Arenal, El	Ávila	0
Arenas de San Pedro	Ávila	0
Arevalillo	Ávila	0
Arévalo	Ávila	0
Aveinte	Ávila	0
Avellaneda	Ávila	0
Ávila	Ávila	0
Barco de Ávila, El	Ávila	0
Barraco, El	Ávila	0
Barromán	Ávila	0
Becedas	Ávila	0
Becedillas	Ávila	0
Bercial de Zapardiel	Ávila	0
Berlanas, Las	Ávila	0
Bernuy-Zapardiel	Ávila	0
Berrocalejo de Aragona	Ávila	0
Blascomillán	Ávila	0
Blasconuño de Matacabras	Ávila	0
Blascosancho	Ávila	0
Bohodón, El	Ávila	0
Bohoyo	Ávila	0
Bonilla de la Sierra	Ávila	0
Brabos	Ávila	0
Bularros	Ávila	0
Burgohondo	Ávila	0
Cabezas de Alambre	Ávila	0
Cabezas del Pozo	Ávila	0
Cabezas del Villar	Ávila	0
Cabizuela	Ávila	0
Canales	Ávila	0
Candeleda	Ávila	0
Cantiveros	Ávila	0
Cardeñosa	Ávila	0
Carrera, La	Ávila	0
Casas del Puerto	Ávila	0
Casasola	Ávila	0
Casavieja	Ávila	0
Casillas	Ávila	0
Castellanos de Zapardiel	Ávila	0
Cebreros	Ávila	0
Cepeda la Mora	Ávila	0
Cillán	Ávila	0
Cisla	Ávila	0
Colilla, La	Ávila	0
Collado de Contreras	Ávila	0
Collado del Mirón	Ávila	0
Constanzana	Ávila	0
Crespos	Ávila	0
Cuevas del Valle	Ávila	0
Chamartín	Ávila	0
Donjimeno	Ávila	0
Donvidas	Ávila	0
Espinosa de los Caballeros	Ávila	0
Flores de Ávila	Ávila	0
Fontiveros	Ávila	0
Fresnedilla	Ávila	0
Fresno, El	Ávila	0
Fuente el Saúz	Ávila	0
Fuentes de Año	Ávila	0
Gallegos de Altamiros	Ávila	0
Gallegos de Sobrinos	Ávila	0
Garganta del Villar	Ávila	0
Gavilanes	Ávila	0
Gemuño	Ávila	0
Gilbuena	Ávila	0
Gil García	Ávila	0
Gimialcón	Ávila	0
Gotarrendura	Ávila	0
Grandes y San Martín	Ávila	0
Guisando	Ávila	0
Gutierre-Muñoz	Ávila	0
Hernansancho	Ávila	0
Herradón de Pinares	Ávila	0
Herreros de Suso	Ávila	0
Higuera de las Dueñas	Ávila	0
Hija de Dios, La	Ávila	0
Horcajada, La	Ávila	0
Horcajo de las Torres	Ávila	0
Hornillo, El	Ávila	0
Hoyocasero	Ávila	0
Hoyo de Pinares, El	Ávila	0
Hoyorredondo	Ávila	0
Hoyos del Collado	Ávila	0
Hoyos del Espino	Ávila	0
Hoyos de Miguel Muñoz	Ávila	0
Hurtumpascual	Ávila	0
Junciana	Ávila	0
Langa	Ávila	0
Lanzahíta	Ávila	0
Losar del Barco, El	Ávila	0
Llanos de Tormes, Los	Ávila	0
Madrigal de las Altas Torres	Ávila	0
Maello	Ávila	0
Malpartida de Corneja	Ávila	0
Mamblas	Ávila	0
Mancera de Arriba	Ávila	0
Manjabálago	Ávila	0
Marlín	Ávila	0
Martiherrero	Ávila	0
Martínez	Ávila	0
Mediana de Voltoya	Ávila	0
Medinilla	Ávila	0
Mengamuñoz	Ávila	0
Mesegar de Corneja	Ávila	0
Mijares	Ávila	0
Mingorría	Ávila	0
Mirón, El	Ávila	0
Mironcillo	Ávila	0
Mirueña de los Infanzones	Ávila	0
Mombeltrán	Ávila	0
Monsalupe	Ávila	0
Moraleja de Matacabras	Ávila	0
Muñana	Ávila	0
Muñico	Ávila	0
Muñogalindo	Ávila	0
Muñogrande	Ávila	0
Muñomer del Peco	Ávila	0
Muñopepe	Ávila	0
Muñosancho	Ávila	0
Muñotello	Ávila	0
Narrillos del Álamo	Ávila	0
Narrillos del Rebollar	Ávila	0
Narros del Castillo	Ávila	0
Narros del Puerto	Ávila	0
Narros de Saldueña	Ávila	0
Navacepedilla de Corneja	Ávila	0
Nava de Arévalo	Ávila	0
Nava del Barco	Ávila	0
Navadijos	Ávila	0
Navaescurial	Ávila	0
Navahondilla	Ávila	0
Navalacruz	Ávila	0
Navalmoral	Ávila	0
Navalonguilla	Ávila	0
Navalosa	Ávila	0
Navalperal de Pinares	Ávila	0
Navalperal de Tormes	Ávila	0
Navaluenga	Ávila	0
Navaquesera	Ávila	0
Navarredonda de Gredos	Ávila	0
Navarredondilla	Ávila	0
Navarrevisca	Ávila	0
Navas del Marqués, Las	Ávila	0
Navatalgordo	Ávila	0
Navatejares	Ávila	0
Neila de San Miguel	Ávila	0
Niharra	Ávila	0
Ojos-Albos	Ávila	0
Orbita	Ávila	0
Oso, El	Ávila	0
Padiernos	Ávila	0
Pajares de Adaja	Ávila	0
Palacios de Goda	Ávila	0
Papatrigo	Ávila	0
Parral, El	Ávila	0
Pascualcobo	Ávila	0
Pedro Bernardo	Ávila	0
Pedro-Rodríguez	Ávila	0
Peguerinos	Ávila	0
Peñalba de Ávila	Ávila	0
Piedrahíta	Ávila	0
Piedralaves	Ávila	0
Poveda	Ávila	0
Poyales del Hoyo	Ávila	0
Pozanco	Ávila	0
Pradosegar	Ávila	0
Puerto Castilla	Ávila	0
Rasueros	Ávila	0
Riocabado	Ávila	0
Riofrío	Ávila	0
Rivilla de Barajas	Ávila	0
Salobral	Ávila	0
Salvadiós	Ávila	0
San Bartolomé de Béjar	Ávila	0
San Bartolomé de Corneja	Ávila	0
San Bartolomé de Pinares	Ávila	0
Sanchidrián	Ávila	0
Sanchorreja	Ávila	0
San Esteban de los Patos	Ávila	0
San Esteban del Valle	Ávila	0
San Esteban de Zapardiel	Ávila	0
San García de Ingelmos	Ávila	0
San Juan de la Encinilla	Ávila	0
San Juan de la Nava	Ávila	0
San Juan del Molinillo	Ávila	0
San Juan del Olmo	Ávila	0
San Lorenzo de Tormes	Ávila	0
San Martín de la Vega del Alberche	Ávila	0
San Martín del Pimpollar	Ávila	0
San Miguel de Corneja	Ávila	0
San Miguel de Serrezuela	Ávila	0
San Pascual	Ávila	0
San Pedro del Arroyo	Ávila	0
Santa Cruz del Valle	Ávila	0
Santa Cruz de Pinares	Ávila	0
Santa María del Arroyo	Ávila	0
Santa María del Berrocal	Ávila	0
Santa María de los Caballeros	Ávila	0
Santa María del Tiétar	Ávila	0
Santiago del Collado	Ávila	0
Santo Domingo de las Posadas	Ávila	0
Santo Tomé de Zabarcos	Ávila	0
San Vicente de Arévalo	Ávila	0
Serrada, La	Ávila	0
Serranillos	Ávila	0
Sigeres	Ávila	0
Sinlabajos	Ávila	0
Solana de Ávila	Ávila	0
Solana de Rioalmar	Ávila	0
Solosancho	Ávila	0
Sotalbo	Ávila	0
Sotillo de la Adrada	Ávila	0
Tiemblo, El	Ávila	0
Tiñosillos	Ávila	0
Tolbaños	Ávila	0
Tormellas	Ávila	0
Tornadizos de Ávila	Ávila	0
Tórtoles	Ávila	0
Torre, La	Ávila	0
Umbrías	Ávila	0
Vadillo de la Sierra	Ávila	0
Valdecasa	Ávila	0
Vega de Santa María	Ávila	0
Velayos	Ávila	0
Villaflor	Ávila	0
Villafranca de la Sierra	Ávila	0
Villanueva de Gómez	Ávila	0
Villanueva del Aceral	Ávila	0
Villanueva del Campillo	Ávila	0
Villar de Corneja	Ávila	0
Villarejo del Valle	Ávila	0
Villatoro	Ávila	0
Viñegra de Moraña	Ávila	0
Vita	Ávila	0
Zapardiel de la Cañada	Ávila	0
Zapardiel de la Ribera	Ávila	0
San Juan de Gredos	Ávila	0
Santa María del Cubillo	Ávila	0
Diego del Carpio	Ávila	0
Santiago del Tormes	Ávila	0
Villanueva de Ávila	Ávila	0
Acedera	Badajoz	0
Aceuchal	Badajoz	0
Ahillones	Badajoz	0
Alange	Badajoz	0
Albuera, La	Badajoz	0
Alburquerque	Badajoz	0
Alconchel	Badajoz	0
Alconera	Badajoz	0
Aljucén	Badajoz	0
Almendral	Badajoz	0
Almendralejo	Badajoz	0
Arroyo de San Serván	Badajoz	0
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
Calera de León	Badajoz	0
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
Cordobilla de Lácara	Badajoz	0
Coronada, La	Badajoz	0
Corte de Peleas	Badajoz	0
Cristina	Badajoz	0
Cheles	Badajoz	0
Don Álvaro	Badajoz	0
Don Benito	Badajoz	0
Entrín Bajo	Badajoz	0
Esparragalejo	Badajoz	0
Esparragosa de la Serena	Badajoz	0
Esparragosa de Lares	Badajoz	0
Feria	Badajoz	0
Fregenal de la Sierra	Badajoz	0
Fuenlabrada de los Montes	Badajoz	0
Fuente de Cantos	Badajoz	0
Fuente del Arco	Badajoz	0
Fuente del Maestre	Badajoz	0
Fuentes de León	Badajoz	0
Garbayuela	Badajoz	0
Garlitos	Badajoz	0
Garrovilla, La	Badajoz	0
Granja de Torrehermosa	Badajoz	0
Guareña	Badajoz	0
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
Lobón	Badajoz	0
Llera	Badajoz	0
Llerena	Badajoz	0
Magacela	Badajoz	0
Maguilla	Badajoz	0
Malcocinado	Badajoz	0
Malpartida de la Serena	Badajoz	0
Manchita	Badajoz	0
Medellín	Badajoz	0
Medina de las Torres	Badajoz	0
Mengabril	Badajoz	0
Mérida	Badajoz	0
Mirandilla	Badajoz	0
Monesterio	Badajoz	0
Montemolín	Badajoz	0
Monterrubio de la Serena	Badajoz	0
Montijo	Badajoz	0
Morera, La	Badajoz	0
Nava de Santiago, La	Badajoz	0
Navalvillar de Pela	Badajoz	0
Nogales	Badajoz	0
Oliva de la Frontera	Badajoz	0
Oliva de Mérida	Badajoz	0
Olivenza	Badajoz	0
Orellana de la Sierra	Badajoz	0
Orellana la Vieja	Badajoz	0
Palomas	Badajoz	0
Parra, La	Badajoz	0
Peñalsordo	Badajoz	0
Peraleda del Zaucejo	Badajoz	0
Puebla de Alcocer	Badajoz	0
Puebla de la Calzada	Badajoz	0
Puebla de la Reina	Badajoz	0
Puebla del Maestre	Badajoz	0
Puebla del Prior	Badajoz	0
Puebla de Obando	Badajoz	0
Puebla de Sancho Pérez	Badajoz	0
Quintana de la Serena	Badajoz	0
Reina	Badajoz	0
Rena	Badajoz	0
Retamal de Llerena	Badajoz	0
Ribera del Fresno	Badajoz	0
Risco	Badajoz	0
Roca de la Sierra, La	Badajoz	0
Salvaleón	Badajoz	0
Salvatierra de los Barros	Badajoz	0
Sancti-Spíritus	Badajoz	0
San Pedro de Mérida	Badajoz	0
Santa Amalia	Badajoz	0
Santa Marta	Badajoz	0
Santos de Maimona, Los	Badajoz	0
San Vicente de Alcántara	Badajoz	0
Segura de León	Badajoz	0
Siruela	Badajoz	0
Solana de los Barros	Badajoz	0
Talarrubias	Badajoz	0
Talavera la Real	Badajoz	0
Táliga	Badajoz	0
Tamurejo	Badajoz	0
Torre de Miguel Sesmero	Badajoz	0
Torremayor	Badajoz	0
Torremejía	Badajoz	0
Trasierra	Badajoz	0
Trujillanos	Badajoz	0
Usagre	Badajoz	0
Valdecaballeros	Badajoz	0
Valdetorres	Badajoz	0
Valencia de las Torres	Badajoz	0
Valencia del Mombuey	Badajoz	0
Valencia del Ventoso	Badajoz	0
Valverde de Burguillos	Badajoz	0
Valverde de Leganés	Badajoz	0
Valverde de Llerena	Badajoz	0
Valverde de Mérida	Badajoz	0
Valle de la Serena	Badajoz	0
Valle de Matamoros	Badajoz	0
Valle de Santa Ana	Badajoz	0
Villafranca de los Barros	Badajoz	0
Villagarcía de la Torre	Badajoz	0
Villagonzalo	Badajoz	0
Villalba de los Barros	Badajoz	0
Villanueva de la Serena	Badajoz	0
Villanueva del Fresno	Badajoz	0
Villar del Rey	Badajoz	0
Villar de Rena	Badajoz	0
Villarta de los Montes	Badajoz	0
Zafra	Badajoz	0
Zahínos	Badajoz	0
Zalamea de la Serena	Badajoz	0
Zarza-Capilla	Badajoz	0
Zarza, La	Badajoz	0
Valdelacalzada	Badajoz	0
Pueblonuevo del Guadiana	Badajoz	0
Alaró	Balears (Illes)	0
Alaior	Balears (Illes)	0
Alcúdia	Balears (Illes)	0
Algaida	Balears (Illes)	0
Andratx	Balears (Illes)	0
Artà	Balears (Illes)	0
Banyalbufar	Balears (Illes)	0
Binissalem	Balears (Illes)	0
Búger	Balears (Illes)	0
Bunyola	Balears (Illes)	0
Calvià	Balears (Illes)	0
Campanet	Balears (Illes)	0
Campos	Balears (Illes)	0
Capdepera	Balears (Illes)	0
Ciutadella de Menorca	Balears (Illes)	0
Consell	Balears (Illes)	0
Costitx	Balears (Illes)	0
Deyá	Balears (Illes)	0
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
Llubí	Balears (Illes)	0
Llucmajor	Balears (Illes)	0
Maó	Balears (Illes)	0
Manacor	Balears (Illes)	0
Mancor de la Vall	Balears (Illes)	0
Maria de la Salut	Balears (Illes)	0
Marratxí	Balears (Illes)	0
Mercadal, Es	Balears (Illes)	0
Montuïri	Balears (Illes)	0
Muro	Balears (Illes)	0
Palma	Balears (Illes)	0
Petra	Balears (Illes)	0
Pollença	Balears (Illes)	0
Porreres	Balears (Illes)	0
Pobla, Sa	Balears (Illes)	0
Puigpunyent	Balears (Illes)	0
Sant Antoni de Portmany	Balears (Illes)	0
Sencelles	Balears (Illes)	0
Sant Josep de sa Talaia	Balears (Illes)	0
Sant Joan	Balears (Illes)	0
Sant Joan de Labritja	Balears (Illes)	0
Sant Llorenç des Cardassar	Balears (Illes)	0
Sant Lluís	Balears (Illes)	0
Santa Eugènia	Balears (Illes)	0
Santa Eulalia del Río	Balears (Illes)	0
Santa Margalida	Balears (Illes)	0
Santa María del Camí	Balears (Illes)	0
Santanyí	Balears (Illes)	0
Selva	Balears (Illes)	0
Salines, Ses	Balears (Illes)	0
Sineu	Balears (Illes)	0
Sóller	Balears (Illes)	0
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
Ametlla del Vallès, L	Barcelona	0
Arenys de Mar	Barcelona	0
Arenys de Munt	Barcelona	0
Argençola	Barcelona	0
Argentona	Barcelona	0
Artés	Barcelona	0
Avià	Barcelona	0
Avinyó	Barcelona	0
Avinyonet del Penedès	Barcelona	0
Aiguafreda	Barcelona	0
Badalona	Barcelona	0
Bagà	Barcelona	0
Balenyà	Barcelona	0
Balsareny	Barcelona	0
Barcelona	Barcelona	0
Begues	Barcelona	0
Bellprat	Barcelona	0
Berga	Barcelona	0
Bigues i Riells	Barcelona	0
Borredà	Barcelona	0
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
Callús	Barcelona	0
Campins	Barcelona	0
Canet de Mar	Barcelona	0
Canovelles	Barcelona	0
Cànoves i Samalús	Barcelona	0
Canyelles	Barcelona	0
Capellades	Barcelona	0
Capolat	Barcelona	0
Cardedeu	Barcelona	0
Cardona	Barcelona	0
Carme	Barcelona	0
Casserres	Barcelona	0
Castellar del Riu	Barcelona	0
Castellar del Vallès	Barcelona	0
Castellar de nHug	Barcelona	0
Castellbell i el Vilar	Barcelona	0
Castellbisbal	Barcelona	0
Castellcir	Barcelona	0
Castelldefels	Barcelona	0
Castell de lAreny	Barcelona	0
Castellet i la Gornal	Barcelona	0
Castellfollit del Boix	Barcelona	0
Castellfollit de Riubregós	Barcelona	0
Castellgalí	Barcelona	0
Castellnou de Bages	Barcelona	0
Castellolí	Barcelona	0
Castellterçol	Barcelona	0
Castellví de la Marca	Barcelona	0
Castellví de Rosanes	Barcelona	0
Centelles	Barcelona	0
Cervelló	Barcelona	0
Collbató	Barcelona	0
Collsuspina	Barcelona	0
Copons	Barcelona	0
Corbera de Llobregat	Barcelona	0
Cornellà de Llobregat	Barcelona	0
Cubelles	Barcelona	0
Dosrius	Barcelona	0
Esparreguera	Barcelona	0
Esplugues de Llobregat	Barcelona	0
Espunyola, L	Barcelona	0
Estany, L	Barcelona	0
Fígols	Barcelona	0
Fogars de Montclús	Barcelona	0
Fogars de la Selva	Barcelona	0
Folgueroles	Barcelona	0
Fonollosa	Barcelona	0
Font-rubí	Barcelona	0
Franqueses del Vallès, Les	Barcelona	0
Gallifa	Barcelona	0
Garriga, La	Barcelona	0
Gavà	Barcelona	0
Gaià	Barcelona	0
Gelida	Barcelona	0
Gironella	Barcelona	0
Gisclareny	Barcelona	0
Granada, La	Barcelona	0
Granera	Barcelona	0
Granollers	Barcelona	0
Gualba	Barcelona	0
Sant Salvador de Guardiola	Barcelona	0
Guardiola de Berguedà	Barcelona	0
Gurb	Barcelona	0
Hospitalet de Llobregat, L	Barcelona	0
Igualada	Barcelona	0
Jorba	Barcelona	0
Llacuna, La	Barcelona	0
Llagosta, La	Barcelona	0
Llinars del Vallès	Barcelona	0
Lliçà dAmunt	Barcelona	0
Lliçà de Vall	Barcelona	0
Lluçà	Barcelona	0
Malgrat de Mar	Barcelona	0
Malla	Barcelona	0
Manlleu	Barcelona	0
Manresa	Barcelona	0
Martorell	Barcelona	0
Martorelles	Barcelona	0
Masies de Roda, Les	Barcelona	0
Masies de Voltregà, Les	Barcelona	0
Masnou, El	Barcelona	0
Masquefa	Barcelona	0
Matadepera	Barcelona	0
Mataró	Barcelona	0
Mediona	Barcelona	0
Molins de Rei	Barcelona	0
Mollet del Vallès	Barcelona	0
Montcada i Reixac	Barcelona	0
Montgat	Barcelona	0
Monistrol de Montserrat	Barcelona	0
Monistrol de Calders	Barcelona	0
Muntanyola	Barcelona	0
Montclar	Barcelona	0
Montesquiu	Barcelona	0
Montmajor	Barcelona	0
Montmaneu	Barcelona	0
Figaró-Montmany	Barcelona	0
Montmeló	Barcelona	0
Montornès del Vallès	Barcelona	0
Montseny	Barcelona	0
Moià	Barcelona	0
Mura	Barcelona	0
Navarcles	Barcelona	0
Navàs	Barcelona	0
Nou de Berguedà, La	Barcelona	0
Òdena	Barcelona	0
Olvan	Barcelona	0
Olèrdola	Barcelona	0
Olesa de Bonesvalls	Barcelona	0
Olesa de Montserrat	Barcelona	0
Olivella	Barcelona	0
Olost	Barcelona	0
Orís	Barcelona	0
Oristà	Barcelona	0
Orpí	Barcelona	0
Òrrius	Barcelona	0
Pacs del Penedès	Barcelona	0
Palafolls	Barcelona	0
Palau-solità i Plegamans	Barcelona	0
Pallejà	Barcelona	0
Papiol, El	Barcelona	0
Parets del Vallès	Barcelona	0
Perafita	Barcelona	0
Piera	Barcelona	0
Hostalets de Pierola, Els	Barcelona	0
Pineda de Mar	Barcelona	0
Pla del Penedès, El	Barcelona	0
Pobla de Claramunt, La	Barcelona	0
Pobla de Lillet, La	Barcelona	0
Polinyà	Barcelona	0
Pontons	Barcelona	0
Prat de Llobregat, El	Barcelona	0
Prats de Rei, Els	Barcelona	0
Prats de Lluçanès	Barcelona	0
Premià de Mar	Barcelona	0
Puigdàlber	Barcelona	0
Puig-reig	Barcelona	0
Pujalt	Barcelona	0
Quar, La	Barcelona	0
Rajadell	Barcelona	0
Rellinars	Barcelona	0
Ripollet	Barcelona	0
Roca del Vallès, La	Barcelona	0
Pont de Vilomara i Rocafort, El	Barcelona	0
Roda de Ter	Barcelona	0
Rubí	Barcelona	0
Rubió	Barcelona	0
Sabadell	Barcelona	0
Sagàs	Barcelona	0
Sant Pere Sallavinera	Barcelona	0
Saldes	Barcelona	0
Sallent	Barcelona	0
Santpedor	Barcelona	0
Sant Iscle de Vallalta	Barcelona	0
Sant Adrià de Besòs	Barcelona	0
Sant Agustí de Lluçanès	Barcelona	0
Sant Andreu de la Barca	Barcelona	0
Sant Andreu de Llavaneres	Barcelona	0
Sant Antoni de Vilamajor	Barcelona	0
Sant Bartomeu del Grau	Barcelona	0
Sant Boi de Llobregat	Barcelona	0
Sant Boi de Lluçanès	Barcelona	0
Sant Celoni	Barcelona	0
Sant Cebrià de Vallalta	Barcelona	0
Sant Climent de Llobregat	Barcelona	0
Sant Cugat del Vallès	Barcelona	0
Sant Cugat Sesgarrigues	Barcelona	0
Sant Esteve de Palautordera	Barcelona	0
Sant Esteve Sesrovires	Barcelona	0
Sant Fost de Campsentelles	Barcelona	0
Sant Feliu de Codines	Barcelona	0
Sant Feliu de Llobregat	Barcelona	0
Sant Feliu Sasserra	Barcelona	0
Sant Fruitós de Bages	Barcelona	0
Vilassar de Dalt	Barcelona	0
Sant Hipòlit de Voltregà	Barcelona	0
Sant Jaume de Frontanyà	Barcelona	0
Sant Joan Despí	Barcelona	0
Sant Joan de Vilatorrada	Barcelona	0
Vilassar de Mar	Barcelona	0
Sant Julià de Vilatorta	Barcelona	0
Sant Just Desvern	Barcelona	0
Sant Llorenç dHortons	Barcelona	0
Sant Llorenç Savall	Barcelona	0
Sant Martí de Centelles	Barcelona	0
Sant Martí dAlbars	Barcelona	0
Sant Martí de Tous	Barcelona	0
Sant Martí Sarroca	Barcelona	0
Sant Martí Sesgueioles	Barcelona	0
Sant Mateu de Bages	Barcelona	0
Premià de Dalt	Barcelona	0
Sant Pere de Ribes	Barcelona	0
Sant Pere de Riudebitlles	Barcelona	0
Sant Pere de Torelló	Barcelona	0
Sant Pere de Vilamajor	Barcelona	0
Sant Pol de Mar	Barcelona	0
Sant Quintí de Mediona	Barcelona	0
Sant Quirze de Besora	Barcelona	0
Sant Quirze del Vallès	Barcelona	0
Sant Quirze Safaja	Barcelona	0
Sant Sadurní dAnoia	Barcelona	0
Sant Sadurní dOsormort	Barcelona	0
Marganell	Barcelona	0
Santa Cecília de Voltregà	Barcelona	0
Santa Coloma de Cervelló	Barcelona	0
Santa Coloma de Gramenet	Barcelona	0
Santa Eugènia de Berga	Barcelona	0
Santa Eulàlia de Riuprimer	Barcelona	0
Santa Eulàlia de Ronçana	Barcelona	0
Santa Fe del Penedès	Barcelona	0
Santa Margarida de Montbui	Barcelona	0
Santa Margarida i els Monjos	Barcelona	0
Barberà del Vallès	Barcelona	0
Santa Maria de Besora	Barcelona	0
Santa Maria de Corcó	Barcelona	0
Santa Maria de Merlès	Barcelona	0
Santa Maria de Martorelles	Barcelona	0
Santa Maria de Miralles	Barcelona	0
Santa Maria dOló	Barcelona	0
Santa Maria de Palautordera	Barcelona	0
Santa Perpètua de Mogoda	Barcelona	0
Santa Susanna	Barcelona	0
Sant Vicenç de Castellet	Barcelona	0
Sant Vicenç dels Horts	Barcelona	0
Sant Vicenç de Montalt	Barcelona	0
Sant Vicenç de Torelló	Barcelona	0
Cerdanyola del Vallès	Barcelona	0
Sentmenat	Barcelona	0
Cercs	Barcelona	0
Seva	Barcelona	0
Sitges	Barcelona	0
Sobremunt	Barcelona	0
Sora	Barcelona	0
Subirats	Barcelona	0
Súria	Barcelona	0
Tavèrnoles	Barcelona	0
Tagamanent	Barcelona	0
Talamanca	Barcelona	0
Taradell	Barcelona	0
Terrassa	Barcelona	0
Tavertet	Barcelona	0
Teià	Barcelona	0
Tiana	Barcelona	0
Tona	Barcelona	0
Tordera	Barcelona	0
Torelló	Barcelona	0
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
Vilanova del Camí	Barcelona	0
Vilanova de Sau	Barcelona	0
Vilobí del Penedès	Barcelona	0
Vilafranca del Penedès	Barcelona	0
Vilalba Sasserra	Barcelona	0
Vilanova i la Geltrú	Barcelona	0
Viver i Serrateix	Barcelona	0
Rupit i Pruit	Barcelona	0
Vilanova del Vallès	Barcelona	0
Sant Julià de Cerdanyola	Barcelona	0
Badia del Vallès	Barcelona	0
Palma de Cervelló, La	Barcelona	0
Abajas	Burgos	0
Adrada de Haza	Burgos	0
Aguas Cándidas	Burgos	0
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
Arlanzón	Burgos	0
Arraya de Oca	Burgos	0
Atapuerca	Burgos	0
Ausines, Los	Burgos	0
Avellanosa de Muñó	Burgos	0
Bahabón de Esgueva	Burgos	0
Balbases, Los	Burgos	0
Baños de Valdearados	Burgos	0
Bañuelos de Bureba	Burgos	0
Barbadillo de Herreros	Burgos	0
Barbadillo del Mercado	Burgos	0
Barbadillo del Pez	Burgos	0
Barrio de Muñó	Burgos	0
Barrios de Bureba, Los	Burgos	0
Barrios de Colina	Burgos	0
Basconcillos del Tozo	Burgos	0
Bascuñana	Burgos	0
Belbimbre	Burgos	0
Belorado	Burgos	0
Berberana	Burgos	0
Berlangas de Roa	Burgos	0
Berzosa de Bureba	Burgos	0
Bozoó	Burgos	0
Brazacorta	Burgos	0
Briviesca	Burgos	0
Bugedo	Burgos	0
Buniel	Burgos	0
Burgos	Burgos	0
Busto de Bureba	Burgos	0
Cabañes de Esgueva	Burgos	0
Cabezón de la Sierra	Burgos	0
Cavia	Burgos	0
Caleruega	Burgos	0
Campillo de Aranda	Burgos	0
Campolara	Burgos	0
Canicosa de la Sierra	Burgos	0
Cantabrana	Burgos	0
Carazo	Burgos	0
Carcedo de Bureba	Burgos	0
Carcedo de Burgos	Burgos	0
Cardeñadijo	Burgos	0
Cardeñajimeno	Burgos	0
Cardeñuela Riopico	Burgos	0
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
Castrillo Matajudíos	Burgos	0
Castrojeriz	Burgos	0
Cayuela	Burgos	0
Cebrecos	Burgos	0
Celada del Camino	Burgos	0
Cerezo de Río Tirón	Burgos	0
Cerratón de Juarros	Burgos	0
Ciadoncha	Burgos	0
Cillaperlata	Burgos	0
Cilleruelo de Abajo	Burgos	0
Cilleruelo de Arriba	Burgos	0
Ciruelos de Cervera	Burgos	0
Cogollos	Burgos	0
Condado de Treviño	Burgos	0
Contreras	Burgos	0
Coruña del Conde	Burgos	0
Covarrubias	Burgos	0
Cubillo del Campo	Burgos	0
Cubo de Bureba	Burgos	0
Cueva de Roa, La	Burgos	0
Cuevas de San Clemente	Burgos	0
Encío	Burgos	0
Espinosa de Cervera	Burgos	0
Espinosa del Camino	Burgos	0
Espinosa de los Monteros	Burgos	0
Estépar	Burgos	0
Fontioso	Burgos	0
Frandovínez	Burgos	0
Fresneda de la Sierra Tirón	Burgos	0
Fresneña	Burgos	0
Fresnillo de las Dueñas	Burgos	0
Fresno de Río Tirón	Burgos	0
Fresno de Rodilla	Burgos	0
Frías	Burgos	0
Fuentebureba	Burgos	0
Fuentecén	Burgos	0
Fuentelcésped	Burgos	0
Fuentelisendo	Burgos	0
Fuentemolinos	Burgos	0
Fuentenebro	Burgos	0
Fuentespina	Burgos	0
Galbarros	Burgos	0
Gallega, La	Burgos	0
Grijalba	Burgos	0
Grisaleña	Burgos	0
Gumiel de Izán	Burgos	0
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
Hortigüela	Burgos	0
Hoyales de Roa	Burgos	0
Huérmeces	Burgos	0
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
Jurisdicción de Lara	Burgos	0
Jurisdicción de San Zadornil	Burgos	0
Lerma	Burgos	0
Llano de Bureba	Burgos	0
Madrigal del Monte	Burgos	0
Madrigalejo del Monte	Burgos	0
Mahamud	Burgos	0
Mambrilla de Castrejón	Burgos	0
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
Modúbar de la Emparedada	Burgos	0
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
Olmillos de Muñó	Burgos	0
Oña	Burgos	0
Oquillas	Burgos	0
Orbaneja Riopico	Burgos	0
Padilla de Abajo	Burgos	0
Padilla de Arriba	Burgos	0
Padrones de Bureba	Burgos	0
Palacios de la Sierra	Burgos	0
Palacios de Riopisuerga	Burgos	0
Palazuelos de la Sierra	Burgos	0
Palazuelos de Muñó	Burgos	0
Pampliega	Burgos	0
Pancorbo	Burgos	0
Pardilla	Burgos	0
Partido de la Sierra en Tobalina	Burgos	0
Pedrosa de Duero	Burgos	0
Pedrosa del Páramo	Burgos	0
Pedrosa del Príncipe	Burgos	0
Pedrosa de Río Úrbel	Burgos	0
Peñaranda de Duero	Burgos	0
Peral de Arlanza	Burgos	0
Piérnigas	Burgos	0
Pineda de la Sierra	Burgos	0
Pineda Trasmonte	Burgos	0
Pinilla de los Barruecos	Burgos	0
Pinilla de los Moros	Burgos	0
Pinilla Trasmonte	Burgos	0
Poza de la Sal	Burgos	0
Prádanos de Bureba	Burgos	0
Pradoluengo	Burgos	0
Presencio	Burgos	0
Puebla de Arganzón, La	Burgos	0
Puentedura	Burgos	0
Quemada	Burgos	0
Quintanabureba	Burgos	0
Quintana del Pidio	Burgos	0
Quintanaélez	Burgos	0
Quintanaortuño	Burgos	0
Quintanapalla	Burgos	0
Quintanar de la Sierra	Burgos	0
Quintanavides	Burgos	0
Quintanilla de la Mata	Burgos	0
Quintanilla del Coco	Burgos	0
Quintanillas, Las	Burgos	0
Quintanilla San García	Burgos	0
Quintanilla Vivar	Burgos	0
Rabanera del Pinar	Burgos	0
Rábanos	Burgos	0
Rabé de las Calzadas	Burgos	0
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
Royuela de Río Franco	Burgos	0
Rubena	Burgos	0
Rublacedo de Abajo	Burgos	0
Rucandio	Burgos	0
Salas de Bureba	Burgos	0
Salas de los Infantes	Burgos	0
Saldaña de Burgos	Burgos	0
Salinillas de Bureba	Burgos	0
San Adrián de Juarros	Burgos	0
San Juan del Monte	Burgos	0
San Mamés de Burgos	Burgos	0
San Martín de Rubiales	Burgos	0
San Millán de Lara	Burgos	0
Santa Cecilia	Burgos	0
Santa Cruz de la Salceda	Burgos	0
Santa Cruz del Valle Urbión	Burgos	0
Santa Gadea del Cid	Burgos	0
Santa Inés	Burgos	0
Santa María del Campo	Burgos	0
Santa María del Invierno	Burgos	0
Santa María del Mercadillo	Burgos	0
Santa María Rivarredonda	Burgos	0
Santa Olalla de Bureba	Burgos	0
Santibáñez de Esgueva	Burgos	0
Santibáñez del Val	Burgos	0
Santo Domingo de Silos	Burgos	0
San Vicente del Valle	Burgos	0
Sargentes de la Lora	Burgos	0
Sarracín	Burgos	0
Sasamón	Burgos	0
Sequera de Haza, La	Burgos	0
Solarana	Burgos	0
Sordillos	Burgos	0
Sotillo de la Ribera	Burgos	0
Sotragero	Burgos	0
Sotresgudo	Burgos	0
Susinos del Páramo	Burgos	0
Tamarón	Burgos	0
Tardajos	Burgos	0
Tejada	Burgos	0
Terradillos de Esgueva	Burgos	0
Tinieblas de la Sierra	Burgos	0
Tobar	Burgos	0
Tordómar	Burgos	0
Torrecilla del Monte	Burgos	0
Torregalindo	Burgos	0
Torrelara	Burgos	0
Torrepadre	Burgos	0
Torresandino	Burgos	0
Tórtoles de Esgueva	Burgos	0
Tosantos	Burgos	0
Trespaderne	Burgos	0
Tubilla del Agua	Burgos	0
Tubilla del Lago	Burgos	0
Úrbel del Castillo	Burgos	0
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
Valluércanes	Burgos	0
Vid y Barrios, La	Burgos	0
Vid de Bureba, La	Burgos	0
Vileña	Burgos	0
Viloria de Rioja	Burgos	0
Vilviestre del Pinar	Burgos	0
Villadiego	Burgos	0
Villaescusa de Roa	Burgos	0
Villaescusa la Sombría	Burgos	0
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
Villamayor de Treviño	Burgos	0
Villambistia	Burgos	0
Villamedianilla	Burgos	0
Villamiel de la Sierra	Burgos	0
Villangómez	Burgos	0
Villanueva de Argaño	Burgos	0
Villanueva de Carazo	Burgos	0
Villanueva de Gumiel	Burgos	0
Villanueva de Teba	Burgos	0
Villaquirán de la Puebla	Burgos	0
Villaquirán de los Infantes	Burgos	0
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
Vizcaínos	Burgos	0
Zael	Burgos	0
Zarzosa de Río Pisuerga	Burgos	0
Zazuar	Burgos	0
Zuñeda	Burgos	0
Quintanilla del Agua y Tordueles	Burgos	0
Valle de Santibáñez	Burgos	0
Villarcayo de Merindad de Castilla la Vieja	Burgos	0
Valle de las Navas	Burgos	0
Valle de Sedano	Burgos	0
Merindad de Río Ubierna	Burgos	0
Alfoz de Quintanadueñas	Burgos	0
Valle de Losa	Burgos	0
Abadía	Cáceres	0
Abertura	Cáceres	0
Acebo	Cáceres	0
Acehúche	Cáceres	0
Aceituna	Cáceres	0
Ahigal	Cáceres	0
Albalá	Cáceres	0
Alcántara	Cáceres	0
Alcollarín	Cáceres	0
Alcuéscar	Cáceres	0
Aldeacentenera	Cáceres	0
Aldea del Cano	Cáceres	0
Aldea del Obispo, La	Cáceres	0
Aldeanueva de la Vera	Cáceres	0
Aldeanueva del Camino	Cáceres	0
Aldehuela de Jerte	Cáceres	0
Alía	Cáceres	0
Aliseda	Cáceres	0
Almaraz	Cáceres	0
Almoharín	Cáceres	0
Arroyo de la Luz	Cáceres	0
Arroyomolinos de la Vera	Cáceres	0
Arroyomolinos	Cáceres	0
Baños de Montemayor	Cáceres	0
Barrado	Cáceres	0
Belvís de Monroy	Cáceres	0
Benquerencia	Cáceres	0
Berrocalejo	Cáceres	0
Berzocana	Cáceres	0
Bohonal de Ibor	Cáceres	0
Botija	Cáceres	0
Brozas	Cáceres	0
Cabañas del Castillo	Cáceres	0
Cabezabellosa	Cáceres	0
Cabezuela del Valle	Cáceres	0
Cabrero	Cáceres	0
Cáceres	Cáceres	0
Cachorrilla	Cáceres	0
Cadalso	Cáceres	0
Calzadilla	Cáceres	0
Caminomorisco	Cáceres	0
Campillo de Deleitosa	Cáceres	0
Campo Lugar	Cáceres	0
Cañamero	Cáceres	0
Cañaveral	Cáceres	0
Carbajo	Cáceres	0
Carcaboso	Cáceres	0
Carrascalejo	Cáceres	0
Casar de Cáceres	Cáceres	0
Casar de Palomero	Cáceres	0
Casares de las Hurdes	Cáceres	0
Casas de Don Antonio	Cáceres	0
Casas de Don Gómez	Cáceres	0
Casas del Castañar	Cáceres	0
Casas del Monte	Cáceres	0
Casas de Millán	Cáceres	0
Casas de Miravete	Cáceres	0
Casatejada	Cáceres	0
Casillas de Coria	Cáceres	0
Castañar de Ibor	Cáceres	0
Ceclavín	Cáceres	0
Cedillo	Cáceres	0
Cerezo	Cáceres	0
Cilleros	Cáceres	0
Collado	Cáceres	0
Conquista de la Sierra	Cáceres	0
Coria	Cáceres	0
Cuacos de Yuste	Cáceres	0
Cumbre, La	Cáceres	0
Deleitosa	Cáceres	0
Descargamaría	Cáceres	0
Eljas	Cáceres	0
Escurial	Cáceres	0
Fresnedoso de Ibor	Cáceres	0
Galisteo	Cáceres	0
Garciaz	Cáceres	0
Garganta, La	Cáceres	0
Garganta la Olla	Cáceres	0
Gargantilla	Cáceres	0
Gargüera	Cáceres	0
Garrovillas de Alconétar	Cáceres	0
Garvín	Cáceres	0
Gata	Cáceres	0
Gordo, El	Cáceres	0
Granja, La	Cáceres	0
Guadalupe	Cáceres	0
Guijo de Coria	Cáceres	0
Guijo de Galisteo	Cáceres	0
Guijo de Granadilla	Cáceres	0
Guijo de Santa Bárbara	Cáceres	0
Herguijuela	Cáceres	0
Hernán-Pérez	Cáceres	0
Herrera de Alcántara	Cáceres	0
Herreruela	Cáceres	0
Hervás	Cáceres	0
Higuera	Cáceres	0
Hinojal	Cáceres	0
Holguera	Cáceres	0
Hoyos	Cáceres	0
Huélaga	Cáceres	0
Ibahernando	Cáceres	0
Jaraicejo	Cáceres	0
Jaraíz de la Vera	Cáceres	0
Jarandilla de la Vera	Cáceres	0
Jarilla	Cáceres	0
Jerte	Cáceres	0
Ladrillar	Cáceres	0
Logrosán	Cáceres	0
Losar de la Vera	Cáceres	0
Madrigal de la Vera	Cáceres	0
Madrigalejo	Cáceres	0
Madroñera	Cáceres	0
Majadas	Cáceres	0
Malpartida de Cáceres	Cáceres	0
Malpartida de Plasencia	Cáceres	0
Marchagaz	Cáceres	0
Mata de Alcántara	Cáceres	0
Membrío	Cáceres	0
Mesas de Ibor	Cáceres	0
Miajadas	Cáceres	0
Millanes	Cáceres	0
Mirabel	Cáceres	0
Mohedas de Granadilla	Cáceres	0
Monroy	Cáceres	0
Montánchez	Cáceres	0
Montehermoso	Cáceres	0
Moraleja	Cáceres	0
Morcillo	Cáceres	0
Navaconcejo	Cáceres	0
Navalmoral de la Mata	Cáceres	0
Navalvillar de Ibor	Cáceres	0
Navas del Madroño	Cáceres	0
Navezuelas	Cáceres	0
Nuñomoral	Cáceres	0
Oliva de Plasencia	Cáceres	0
Palomero	Cáceres	0
Pasarón de la Vera	Cáceres	0
Pedroso de Acim	Cáceres	0
Peraleda de la Mata	Cáceres	0
Peraleda de San Román	Cáceres	0
Perales del Puerto	Cáceres	0
Pescueza	Cáceres	0
Pesga, La	Cáceres	0
Piedras Albas	Cáceres	0
Pinofranqueado	Cáceres	0
Piornal	Cáceres	0
Plasencia	Cáceres	0
Plasenzuela	Cáceres	0
Portaje	Cáceres	0
Portezuelo	Cáceres	0
Pozuelo de Zarzón	Cáceres	0
Puerto de Santa Cruz	Cáceres	0
Rebollar	Cáceres	0
Riolobos	Cáceres	0
Robledillo de Gata	Cáceres	0
Robledillo de la Vera	Cáceres	0
Robledillo de Trujillo	Cáceres	0
Robledollano	Cáceres	0
Romangordo	Cáceres	0
Ruanes	Cáceres	0
Salorino	Cáceres	0
Salvatierra de Santiago	Cáceres	0
San Martín de Trevejo	Cáceres	0
Santa Ana	Cáceres	0
Santa Cruz de la Sierra	Cáceres	0
Santa Cruz de Paniagua	Cáceres	0
Santa Marta de Magasca	Cáceres	0
Santiago de Alcántara	Cáceres	0
Santiago del Campo	Cáceres	0
Santibáñez el Alto	Cáceres	0
Santibáñez el Bajo	Cáceres	0
Saucedilla	Cáceres	0
Segura de Toro	Cáceres	0
Serradilla	Cáceres	0
Serrejón	Cáceres	0
Sierra de Fuentes	Cáceres	0
Talaván	Cáceres	0
Talaveruela de la Vera	Cáceres	0
Talayuela	Cáceres	0
Tejeda de Tiétar	Cáceres	0
Toril	Cáceres	0
Tornavacas	Cáceres	0
Torno, El	Cáceres	0
Torrecilla de los Ángeles	Cáceres	0
Torrecillas de la Tiesa	Cáceres	0
Torre de Don Miguel	Cáceres	0
Torre de Santa María	Cáceres	0
Torrejoncillo	Cáceres	0
Torrejón el Rubio	Cáceres	0
Torremenga	Cáceres	0
Torremocha	Cáceres	0
Torreorgaz	Cáceres	0
Torrequemada	Cáceres	0
Trujillo	Cáceres	0
Valdastillas	Cáceres	0
Valdecañas de Tajo	Cáceres	0
Valdefuentes	Cáceres	0
Valdehúncar	Cáceres	0
Valdelacasa de Tajo	Cáceres	0
Valdemorales	Cáceres	0
Valdeobispo	Cáceres	0
Valencia de Alcántara	Cáceres	0
Valverde de la Vera	Cáceres	0
Valverde del Fresno	Cáceres	0
Viandar de la Vera	Cáceres	0
Villa del Campo	Cáceres	0
Villa del Rey	Cáceres	0
Villamesías	Cáceres	0
Villamiel	Cáceres	0
Villanueva de la Sierra	Cáceres	0
Villanueva de la Vera	Cáceres	0
Villar del Pedroso	Cáceres	0
Villar de Plasencia	Cáceres	0
Villasbuenas de Gata	Cáceres	0
Zarza de Granadilla	Cáceres	0
Zarza de Montánchez	Cáceres	0
Zarza la Mayor	Cáceres	0
Zorita	Cáceres	0
Rosalejo	Cáceres	0
Vegaviana	Cáceres	0
Alagón del Río	Cáceres	0
Alcalá de los Gazules	Cádiz	0
Alcalá del Valle	Cádiz	0
Algar	Cádiz	0
Algeciras	Cádiz	0
Algodonales	Cádiz	0
Arcos de la Frontera	Cádiz	0
Barbate	Cádiz	0
Barrios, Los	Cádiz	0
Benaocaz	Cádiz	0
Bornos	Cádiz	0
Bosque, El	Cádiz	0
Cádiz	Cádiz	0
Castellar de la Frontera	Cádiz	0
Conil de la Frontera	Cádiz	0
Chiclana de la Frontera	Cádiz	0
Chipiona	Cádiz	0
Espera	Cádiz	0
Gastor, El	Cádiz	0
Grazalema	Cádiz	0
Jerez de la Frontera	Cádiz	0
Jimena de la Frontera	Cádiz	0
Línea de la Concepción, La	Cádiz	0
Medina-Sidonia	Cádiz	0
Olvera	Cádiz	0
Paterna de Rivera	Cádiz	0
Prado del Rey	Cádiz	0
Puerto de Santa María, El	Cádiz	0
Puerto Real	Cádiz	0
Puerto Serrano	Cádiz	0
Rota	Cádiz	0
San Fernando	Cádiz	0
Sanlúcar de Barrameda	Cádiz	0
San Roque	Cádiz	0
Setenil de las Bodegas	Cádiz	0
Tarifa	Cádiz	0
Torre Alháquime	Cádiz	0
Trebujena	Cádiz	0
Ubrique	Cádiz	0
Vejer de la Frontera	Cádiz	0
Villaluenga del Rosario	Cádiz	0
Villamartín	Cádiz	0
Zahara	Cádiz	0
Benalup-Casas Viejas	Cádiz	0
San José del Valle	Cádiz	0
Atzeneta del Maestrat	Castellón/Castelló	0
Aín	Castellón/Castelló	0
Albocàsser	Castellón/Castelló	0
Alcalà de Xivert	Castellón/Castelló	0
Alcora, l	Castellón/Castelló	0
Alcudia de Veo	Castellón/Castelló	0
Alfondeguilla	Castellón/Castelló	0
Algimia de Almonacid	Castellón/Castelló	0
Almazora/Almassora	Castellón/Castelló	0
Almedíjar	Castellón/Castelló	0
Almenara	Castellón/Castelló	0
Altura	Castellón/Castelló	0
Arañuel	Castellón/Castelló	0
Ares del Maestrat	Castellón/Castelló	0
Argelita	Castellón/Castelló	0
Artana	Castellón/Castelló	0
Ayódar	Castellón/Castelló	0
Azuébar	Castellón/Castelló	0
Barracas	Castellón/Castelló	0
Betxí	Castellón/Castelló	0
Bejís	Castellón/Castelló	0
Benafer	Castellón/Castelló	0
Benafigos	Castellón/Castelló	0
Benasal	Castellón/Castelló	0
Benicarló	Castellón/Castelló	0
Benicasim/Benicàssim	Castellón/Castelló	0
Benlloch	Castellón/Castelló	0
Borriol	Castellón/Castelló	0
Borriana/Burriana	Castellón/Castelló	0
Cabanes	Castellón/Castelló	0
Càlig	Castellón/Castelló	0
Canet lo Roig	Castellón/Castelló	0
Castell de Cabres	Castellón/Castelló	0
Castellfort	Castellón/Castelló	0
Castellnovo	Castellón/Castelló	0
Castellón de la Plana/Castelló de la Plana	Castellón/Castelló	0
Castillo de Villamalefa	Castellón/Castelló	0
Catí	Castellón/Castelló	0
Caudiel	Castellón/Castelló	0
Cervera del Maestre	Castellón/Castelló	0
Cinctorres	Castellón/Castelló	0
Cirat	Castellón/Castelló	0
Cortes de Arenoso	Castellón/Castelló	0
Costur	Castellón/Castelló	0
Coves de Vinromà, les	Castellón/Castelló	0
Culla	Castellón/Castelló	0
Chert/Xert	Castellón/Castelló	0
Chilches/Xilxes	Castellón/Castelló	0
Chodos/Xodos	Castellón/Castelló	0
Chóvar	Castellón/Castelló	0
Eslida	Castellón/Castelló	0
Espadilla	Castellón/Castelló	0
Fanzara	Castellón/Castelló	0
Figueroles	Castellón/Castelló	0
Forcall	Castellón/Castelló	0
Fuente la Reina	Castellón/Castelló	0
Fuentes de Ayódar	Castellón/Castelló	0
Gaibiel	Castellón/Castelló	0
Geldo	Castellón/Castelló	0
Herbés	Castellón/Castelló	0
Higueras	Castellón/Castelló	0
Jana, la	Castellón/Castelló	0
Jérica	Castellón/Castelló	0
Lucena del Cid	Castellón/Castelló	0
Ludiente	Castellón/Castelló	0
Llosa, la	Castellón/Castelló	0
Mata de Morella, la	Castellón/Castelló	0
Matet	Castellón/Castelló	0
Moncofa	Castellón/Castelló	0
Montán	Castellón/Castelló	0
Montanejos	Castellón/Castelló	0
Morella	Castellón/Castelló	0
Navajas	Castellón/Castelló	0
Nules	Castellón/Castelló	0
Olocau del Rey	Castellón/Castelló	0
Onda	Castellón/Castelló	0
Oropesa del Mar/Orpesa	Castellón/Castelló	0
Palanques	Castellón/Castelló	0
Pavías	Castellón/Castelló	0
Peníscola/Peñíscola	Castellón/Castelló	0
Pina de Montalgrao	Castellón/Castelló	0
Portell de Morella	Castellón/Castelló	0
Puebla de Arenoso	Castellón/Castelló	0
Pobla de Benifassà, la	Castellón/Castelló	0
Pobla Tornesa, la	Castellón/Castelló	0
Ribesalbes	Castellón/Castelló	0
Rossell	Castellón/Castelló	0
Sacañet	Castellón/Castelló	0
Salzadella, la	Castellón/Castelló	0
Sant Jordi/San Jorge	Castellón/Castelló	0
Sant Mateu	Castellón/Castelló	0
San Rafael del Río	Castellón/Castelló	0
Santa Magdalena de Pulpis	Castellón/Castelló	0
Sarratella	Castellón/Castelló	0
Segorbe	Castellón/Castelló	0
Sierra Engarcerán	Castellón/Castelló	0
Soneja	Castellón/Castelló	0
Sot de Ferrer	Castellón/Castelló	0
Sueras/Suera	Castellón/Castelló	0
Tales	Castellón/Castelló	0
Teresa	Castellón/Castelló	0
Tírig	Castellón/Castelló	0
Todolella	Castellón/Castelló	0
Toga	Castellón/Castelló	0
Torás	Castellón/Castelló	0
Toro, El	Castellón/Castelló	0
Torralba del Pinar	Castellón/Castelló	0
Torreblanca	Castellón/Castelló	0
Torrechiva	Castellón/Castelló	0
Torre dEn Besora, la	Castellón/Castelló	0
Torre den Doménec, la	Castellón/Castelló	0
Traiguera	Castellón/Castelló	0
Useras/Useres, les	Castellón/Castelló	0
Vallat	Castellón/Castelló	0
Vall dAlba	Castellón/Castelló	0
Vall de Almonacid	Castellón/Castelló	0
Vall dUixó, la	Castellón/Castelló	0
Vallibona	Castellón/Castelló	0
Vilafamés	Castellón/Castelló	0
Villafranca del Cid/Vilafranca	Castellón/Castelló	0
Villahermosa del Río	Castellón/Castelló	0
Villamalur	Castellón/Castelló	0
Vilanova dAlcolea	Castellón/Castelló	0
Villanueva de Viver	Castellón/Castelló	0
Vilar de Canes	Castellón/Castelló	0
Vila-real	Castellón/Castelló	0
Vilavella, la	Castellón/Castelló	0
Villores	Castellón/Castelló	0
Vinaròs	Castellón/Castelló	0
Vistabella del Maestrazgo	Castellón/Castelló	0
Viver	Castellón/Castelló	0
Zorita del Maestrazgo	Castellón/Castelló	0
Zucaina	Castellón/Castelló	0
Alquerías del Niño Perdido	Castellón/Castelló	0
Sant Joan de Moró	Castellón/Castelló	0
Abenójar	Ciudad Real	0
Agudo	Ciudad Real	0
Alamillo	Ciudad Real	0
Albaladejo	Ciudad Real	0
Alcázar de San Juan	Ciudad Real	0
Alcoba	Ciudad Real	0
Alcolea de Calatrava	Ciudad Real	0
Alcubillas	Ciudad Real	0
Aldea del Rey	Ciudad Real	0
Alhambra	Ciudad Real	0
Almadén	Ciudad Real	0
Almadenejos	Ciudad Real	0
Almagro	Ciudad Real	0
Almedina	Ciudad Real	0
Almodóvar del Campo	Ciudad Real	0
Almuradiel	Ciudad Real	0
Anchuras	Ciudad Real	0
Arenas de San Juan	Ciudad Real	0
Argamasilla de Alba	Ciudad Real	0
Argamasilla de Calatrava	Ciudad Real	0
Arroba de los Montes	Ciudad Real	0
Ballesteros de Calatrava	Ciudad Real	0
Bolaños de Calatrava	Ciudad Real	0
Brazatortas	Ciudad Real	0
Cabezarados	Ciudad Real	0
Cabezarrubias del Puerto	Ciudad Real	0
Calzada de Calatrava	Ciudad Real	0
Campo de Criptana	Ciudad Real	0
Cañada de Calatrava	Ciudad Real	0
Caracuel de Calatrava	Ciudad Real	0
Carrión de Calatrava	Ciudad Real	0
Carrizosa	Ciudad Real	0
Castellar de Santiago	Ciudad Real	0
Ciudad Real	Ciudad Real	0
Corral de Calatrava	Ciudad Real	0
Cortijos, Los	Ciudad Real	0
Cózar	Ciudad Real	0
Chillón	Ciudad Real	0
Daimiel	Ciudad Real	0
Fernán Caballero	Ciudad Real	0
Fontanarejo	Ciudad Real	0
Fuencaliente	Ciudad Real	0
Fuenllana	Ciudad Real	0
Fuente el Fresno	Ciudad Real	0
Granátula de Calatrava	Ciudad Real	0
Guadalmez	Ciudad Real	0
Herencia	Ciudad Real	0
Hinojosas de Calatrava	Ciudad Real	0
Horcajo de los Montes	Ciudad Real	0
Labores, Las	Ciudad Real	0
Luciana	Ciudad Real	0
Malagón	Ciudad Real	0
Manzanares	Ciudad Real	0
Membrilla	Ciudad Real	0
Mestanza	Ciudad Real	0
Miguelturra	Ciudad Real	0
Montiel	Ciudad Real	0
Moral de Calatrava	Ciudad Real	0
Navalpino	Ciudad Real	0
Navas de Estena	Ciudad Real	0
Pedro Muñoz	Ciudad Real	0
Picón	Ciudad Real	0
Piedrabuena	Ciudad Real	0
Poblete	Ciudad Real	0
Porzuna	Ciudad Real	0
Pozuelo de Calatrava	Ciudad Real	0
Pozuelos de Calatrava, Los	Ciudad Real	0
Puebla de Don Rodrigo	Ciudad Real	0
Puebla del Príncipe	Ciudad Real	0
Puerto Lápice	Ciudad Real	0
Puertollano	Ciudad Real	0
Retuerta del Bullaque	Ciudad Real	0
Saceruela	Ciudad Real	0
San Carlos del Valle	Ciudad Real	0
San Lorenzo de Calatrava	Ciudad Real	0
Santa Cruz de los Cáñamos	Ciudad Real	0
Santa Cruz de Mudela	Ciudad Real	0
Socuéllamos	Ciudad Real	0
Solana, La	Ciudad Real	0
Solana del Pino	Ciudad Real	0
Terrinches	Ciudad Real	0
Tomelloso	Ciudad Real	0
Torralba de Calatrava	Ciudad Real	0
Torre de Juan Abad	Ciudad Real	0
Torrenueva	Ciudad Real	0
Valdemanco del Esteras	Ciudad Real	0
Valdepeñas	Ciudad Real	0
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
Viso del Marqués	Ciudad Real	0
Robledo, El	Ciudad Real	0
Ruidera	Ciudad Real	0
Arenales de San Gregorio	Ciudad Real	0
Llanos del Caudillo	Ciudad Real	0
Adamuz	Córdoba	0
Aguilar de la Frontera	Córdoba	0
Alcaracejos	Córdoba	0
Almedinilla	Córdoba	0
Almodóvar del Río	Córdoba	0
Añora	Córdoba	0
Baena	Córdoba	0
Belalcázar	Córdoba	0
Belmez	Córdoba	0
Benamejí	Córdoba	0
Blázquez, Los	Córdoba	0
Bujalance	Córdoba	0
Cabra	Córdoba	0
Cañete de las Torres	Córdoba	0
Carcabuey	Córdoba	0
Cardeña	Córdoba	0
Carlota, La	Córdoba	0
Carpio, El	Córdoba	0
Castro del Río	Córdoba	0
Conquista	Córdoba	0
Córdoba	Córdoba	0
Doña Mencía	Córdoba	0
Dos Torres	Córdoba	0
Encinas Reales	Córdoba	0
Espejo	Córdoba	0
Espiel	Córdoba	0
Fernán-Núñez	Córdoba	0
Fuente la Lancha	Córdoba	0
Fuente Obejuna	Córdoba	0
Fuente Palmera	Córdoba	0
Fuente-Tójar	Córdoba	0
Granjuela, La	Córdoba	0
Guadalcázar	Córdoba	0
Guijo, El	Córdoba	0
Hinojosa del Duque	Córdoba	0
Hornachuelos	Córdoba	0
Iznájar	Córdoba	0
Lucena	Córdoba	0
Luque	Córdoba	0
Montalbán de Córdoba	Córdoba	0
Montemayor	Córdoba	0
Montilla	Córdoba	0
Montoro	Córdoba	0
Monturque	Córdoba	0
Moriles	Córdoba	0
Nueva Carteya	Córdoba	0
Obejo	Córdoba	0
Palenciana	Córdoba	0
Palma del Río	Córdoba	0
Pedro Abad	Córdoba	0
Pedroche	Córdoba	0
Peñarroya-Pueblonuevo	Córdoba	0
Posadas	Córdoba	0
Pozoblanco	Córdoba	0
Priego de Córdoba	Córdoba	0
Puente Genil	Córdoba	0
Rambla, La	Córdoba	0
Rute	Córdoba	0
San Sebastián de los Ballesteros	Córdoba	0
Santaella	Córdoba	0
Santa Eufemia	Córdoba	0
Torrecampo	Córdoba	0
Valenzuela	Córdoba	0
Valsequillo	Córdoba	0
Victoria, La	Córdoba	0
Villa del Río	Córdoba	0
Villafranca de Córdoba	Córdoba	0
Villaharta	Córdoba	0
Villanueva de Córdoba	Córdoba	0
Villanueva del Duque	Córdoba	0
Villanueva del Rey	Córdoba	0
Villaralto	Córdoba	0
Villaviciosa de Córdoba	Córdoba	0
Viso, El	Córdoba	0
Zuheros	Córdoba	0
Abegondo	Coruña (A)	0
Ames	Coruña (A)	0
Aranga	Coruña (A)	0
Ares	Coruña (A)	0
Arteixo	Coruña (A)	0
Arzúa	Coruña (A)	0
Baña, A	Coruña (A)	0
Bergondo	Coruña (A)	0
Betanzos	Coruña (A)	0
Boimorto	Coruña (A)	0
Boiro	Coruña (A)	0
Boqueixón	Coruña (A)	0
Brión	Coruña (A)	0
Cabana de Bergantiños	Coruña (A)	0
Cabanas	Coruña (A)	0
Camariñas	Coruña (A)	0
Cambre	Coruña (A)	0
Capela, A	Coruña (A)	0
Carballo	Coruña (A)	0
Carnota	Coruña (A)	0
Carral	Coruña (A)	0
Cedeira	Coruña (A)	0
Cee	Coruña (A)	0
Cerceda	Coruña (A)	0
Cerdido	Coruña (A)	0
Cesuras	Coruña (A)	0
Coirós	Coruña (A)	0
Corcubión	Coruña (A)	0
Coristanco	Coruña (A)	0
Coruña, A	Coruña (A)	0
Culleredo	Coruña (A)	0
Curtis	Coruña (A)	0
Dodro	Coruña (A)	0
Dumbría	Coruña (A)	0
Fene	Coruña (A)	0
Ferrol	Coruña (A)	0
Fisterra	Coruña (A)	0
Frades	Coruña (A)	0
Irixoa	Coruña (A)	0
Laxe	Coruña (A)	0
Laracha, A	Coruña (A)	0
Lousame	Coruña (A)	0
Malpica de Bergantiños	Coruña (A)	0
Mañón	Coruña (A)	0
Mazaricos	Coruña (A)	0
Melide	Coruña (A)	0
Mesía	Coruña (A)	0
Miño	Coruña (A)	0
Moeche	Coruña (A)	0
Monfero	Coruña (A)	0
Mugardos	Coruña (A)	0
Muxía	Coruña (A)	0
Muros	Coruña (A)	0
Narón	Coruña (A)	0
Neda	Coruña (A)	0
Negreira	Coruña (A)	0
Noia	Coruña (A)	0
Oleiros	Coruña (A)	0
Ordes	Coruña (A)	0
Oroso	Coruña (A)	0
Ortigueira	Coruña (A)	0
Outes	Coruña (A)	0
Oza dos Ríos	Coruña (A)	0
Paderne	Coruña (A)	0
Padrón	Coruña (A)	0
Pino, O	Coruña (A)	0
Pobra do Caramiñal, A	Coruña (A)	0
Ponteceso	Coruña (A)	0
Pontedeume	Coruña (A)	0
Pontes de García Rodríguez, As	Coruña (A)	0
Porto do Son	Coruña (A)	0
Rianxo	Coruña (A)	0
Ribeira	Coruña (A)	0
Rois	Coruña (A)	0
Sada	Coruña (A)	0
San Sadurniño	Coruña (A)	0
Santa Comba	Coruña (A)	0
Santiago de Compostela	Coruña (A)	0
Santiso	Coruña (A)	0
Sobrado	Coruña (A)	0
Somozas, As	Coruña (A)	0
Teo	Coruña (A)	0
Toques	Coruña (A)	0
Tordoia	Coruña (A)	0
Touro	Coruña (A)	0
Trazo	Coruña (A)	0
Valdoviño	Coruña (A)	0
Val do Dubra	Coruña (A)	0
Vedra	Coruña (A)	0
Vilasantar	Coruña (A)	0
Vilarmaior	Coruña (A)	0
Vimianzo	Coruña (A)	0
Zas	Coruña (A)	0
Cariño	Coruña (A)	0
Abia de la Obispalía	Cuenca	0
Acebrón, El	Cuenca	0
Alarcón	Cuenca	0
Albaladejo del Cuende	Cuenca	0
Albalate de las Nogueras	Cuenca	0
Albendea	Cuenca	0
Alberca de Záncara, La	Cuenca	0
Alcalá de la Vega	Cuenca	0
Alcantud	Cuenca	0
Alcázar del Rey	Cuenca	0
Alcohujate	Cuenca	0
Alconchel de la Estrella	Cuenca	0
Algarra	Cuenca	0
Aliaguilla	Cuenca	0
Almarcha, La	Cuenca	0
Almendros	Cuenca	0
Almodóvar del Pinar	Cuenca	0
Almonacid del Marquesado	Cuenca	0
Altarejos	Cuenca	0
Arandilla del Arroyo	Cuenca	0
Arcos de la Sierra	Cuenca	0
Chillarón de Cuenca	Cuenca	0
Arguisuelas	Cuenca	0
Arrancacepas	Cuenca	0
Atalaya del Cañavate	Cuenca	0
Barajas de Melo	Cuenca	0
Barchín del Hoyo	Cuenca	0
Bascuñana de San Pedro	Cuenca	0
Beamud	Cuenca	0
Belinchón	Cuenca	0
Belmonte	Cuenca	0
Belmontejo	Cuenca	0
Beteta	Cuenca	0
Boniches	Cuenca	0
Buciegas	Cuenca	0
Buenache de Alarcón	Cuenca	0
Buenache de la Sierra	Cuenca	0
Buendía	Cuenca	0
Campillo de Altobuey	Cuenca	0
Campillos-Paravientos	Cuenca	0
Campillos-Sierra	Cuenca	0
Canalejas del Arroyo	Cuenca	0
Cañada del Hoyo	Cuenca	0
Cañada Juncosa	Cuenca	0
Cañamares	Cuenca	0
Cañavate, El	Cuenca	0
Cañaveras	Cuenca	0
Cañaveruelas	Cuenca	0
Cañete	Cuenca	0
Cañizares	Cuenca	0
Carboneras de Guadazaón	Cuenca	0
Cardenete	Cuenca	0
Carrascosa	Cuenca	0
Carrascosa de Haro	Cuenca	0
Casas de Benítez	Cuenca	0
Casas de Fernando Alonso	Cuenca	0
Casas de Garcimolina	Cuenca	0
Casas de Guijarro	Cuenca	0
Casas de Haro	Cuenca	0
Casas de los Pinos	Cuenca	0
Casasimarro	Cuenca	0
Castejón	Cuenca	0
Castillejo de Iniesta	Cuenca	0
Castillejo-Sierra	Cuenca	0
Castillo-Albaráñez	Cuenca	0
Castillo de Garcimuñoz	Cuenca	0
Cervera del Llano	Cuenca	0
Cierva, La	Cuenca	0
Cuenca	Cuenca	0
Cueva del Hierro	Cuenca	0
Chumillas	Cuenca	0
Enguídanos	Cuenca	0
Fresneda de Altarejos	Cuenca	0
Fresneda de la Sierra	Cuenca	0
Frontera, La	Cuenca	0
Fuente de Pedro Naharro	Cuenca	0
Fuentelespino de Haro	Cuenca	0
Fuentelespino de Moya	Cuenca	0
Fuentes	Cuenca	0
Fuertescusa	Cuenca	0
Gabaldón	Cuenca	0
Garaballa	Cuenca	0
Gascueña	Cuenca	0
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
Huélamo	Cuenca	0
Huelves	Cuenca	0
Huérguina	Cuenca	0
Huerta de la Obispalía	Cuenca	0
Huerta del Marquesado	Cuenca	0
Huete	Cuenca	0
Iniesta	Cuenca	0
Laguna del Marquesado	Cuenca	0
Lagunaseca	Cuenca	0
Landete	Cuenca	0
Ledaña	Cuenca	0
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
Olivares de Júcar	Cuenca	0
Olmeda de la Cuesta	Cuenca	0
Olmeda del Rey	Cuenca	0
Olmedilla de Alarcón	Cuenca	0
Olmedilla de Eliz	Cuenca	0
Osa de la Vega	Cuenca	0
Pajarón	Cuenca	0
Pajaroncillo	Cuenca	0
Palomares del Campo	Cuenca	0
Palomera	Cuenca	0
Paracuellos	Cuenca	0
Paredes	Cuenca	0
Parra de las Vegas, La	Cuenca	0
Pedernoso, El	Cuenca	0
Pedroñeras, Las	Cuenca	0
Peral, El	Cuenca	0
Peraleja, La	Cuenca	0
Pesquera, La	Cuenca	0
Picazo, El	Cuenca	0
Pinarejo	Cuenca	0
Pineda de Gigüela	Cuenca	0
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
Reíllo	Cuenca	0
Rozalén del Monte	Cuenca	0
Saceda-Trasierra	Cuenca	0
Saelices	Cuenca	0
Salinas del Manzano	Cuenca	0
Salmeroncillos	Cuenca	0
Salvacañete	Cuenca	0
San Clemente	Cuenca	0
San Lorenzo de la Parrilla	Cuenca	0
San Martín de Boniches	Cuenca	0
San Pedro Palmiches	Cuenca	0
Santa Cruz de Moya	Cuenca	0
Santa María del Campo Rus	Cuenca	0
Santa María de los Llanos	Cuenca	0
Santa María del Val	Cuenca	0
Sisante	Cuenca	0
Solera de Gabaldón	Cuenca	0
Talayuelas	Cuenca	0
Tarancón	Cuenca	0
Tébar	Cuenca	0
Tejadillos	Cuenca	0
Tinajas	Cuenca	0
Torralba	Cuenca	0
Torrejoncillo del Rey	Cuenca	0
Torrubia del Campo	Cuenca	0
Torrubia del Castillo	Cuenca	0
Tragacete	Cuenca	0
Tresjuncos	Cuenca	0
Tribaldos	Cuenca	0
Uclés	Cuenca	0
Uña	Cuenca	0
Valdemeca	Cuenca	0
Valdemorillo de la Sierra	Cuenca	0
Valdemoro-Sierra	Cuenca	0
Valdeolivas	Cuenca	0
Valhermoso de la Fuente	Cuenca	0
Valsalobre	Cuenca	0
Valverde de Júcar	Cuenca	0
Valverdejo	Cuenca	0
Vara de Rey	Cuenca	0
Vega del Codorno	Cuenca	0
Vellisca	Cuenca	0
Villaconejos de Trabaque	Cuenca	0
Villaescusa de Haro	Cuenca	0
Villagarcía del Llano	Cuenca	0
Villalba de la Sierra	Cuenca	0
Villalba del Rey	Cuenca	0
Villalgordo del Marquesado	Cuenca	0
Villalpardo	Cuenca	0
Villamayor de Santiago	Cuenca	0
Villanueva de Guadamejud	Cuenca	0
Villanueva de la Jara	Cuenca	0
Villar de Cañas	Cuenca	0
Villar de Domingo García	Cuenca	0
Villar de la Encina	Cuenca	0
Villar del Humo	Cuenca	0
Villar del Infantado	Cuenca	0
Villar de Olalla	Cuenca	0
Villarejo de Fuentes	Cuenca	0
Villarejo de la Peñuela	Cuenca	0
Villarejo-Periesteban	Cuenca	0
Villares del Saz	Cuenca	0
Villarrubio	Cuenca	0
Villarta	Cuenca	0
Villas de la Ventosa	Cuenca	0
Villaverde y Pasaconsol	Cuenca	0
Víllora	Cuenca	0
Vindel	Cuenca	0
Yémeda	Cuenca	0
Zafra de Záncara	Cuenca	0
Zafrilla	Cuenca	0
Zarza de Tajo	Cuenca	0
Zarzuela	Cuenca	0
Campos del Paraíso	Cuenca	0
Valdetórtola	Cuenca	0
Valeras, Las	Cuenca	0
Fuentenava de Jábaga	Cuenca	0
Arcas del Villar	Cuenca	0
Valdecolmenas, Los	Cuenca	0
Pozorrubielos de la Mancha	Cuenca	0
Sotorribas	Cuenca	0
Villar y Velasco	Cuenca	0
Agullana	Girona	0
Aiguaviva	Girona	0
Albanyà	Girona	0
Albons	Girona	0
Far dEmpordà, El	Girona	0
Alp	Girona	0
Amer	Girona	0
Anglès	Girona	0
Arbúcies	Girona	0
Argelaguer	Girona	0
Armentera, L	Girona	0
Avinyonet de Puigventós	Girona	0
Begur	Girona	0
Vajol, La	Girona	0
Banyoles	Girona	0
Bàscara	Girona	0
Bellcaire dEmpordà	Girona	0
Besalú	Girona	0
Bescanó	Girona	0
Beuda	Girona	0
Bisbal dEmpordà, La	Girona	0
Blanes	Girona	0
Bolvir	Girona	0
Bordils	Girona	0
Borrassà	Girona	0
Breda	Girona	0
Brunyola	Girona	0
Boadella i les Escaules	Girona	0
Cabanes	Girona	0
Cabanelles	Girona	0
Cadaqués	Girona	0
Caldes de Malavella	Girona	0
Calonge	Girona	0
Camós	Girona	0
Campdevànol	Girona	0
Campelles	Girona	0
Campllong	Girona	0
Camprodon	Girona	0
Canet dAdri	Girona	0
Cantallops	Girona	0
Capmany	Girona	0
Queralbs	Girona	0
Cassà de la Selva	Girona	0
Castellfollit de la Roca	Girona	0
Castelló dEmpúries	Girona	0
Castell-Platja dAro	Girona	0
Celrà	Girona	0
Cervià de Ter	Girona	0
Cistella	Girona	0
Siurana	Girona	0
Colera	Girona	0
Colomers	Girona	0
Cornellà del Terri	Girona	0
Corçà	Girona	0
Crespià	Girona	0
Darnius	Girona	0
Das	Girona	0
Escala, L	Girona	0
Espinelves	Girona	0
Espolla	Girona	0
Esponellà	Girona	0
Figueres	Girona	0
Flaçà	Girona	0
Foixà	Girona	0
Fontanals de Cerdanya	Girona	0
Fontanilles	Girona	0
Fontcoberta	Girona	0
Fornells de la Selva	Girona	0
Fortià	Girona	0
Garrigàs	Girona	0
Garrigoles	Girona	0
Garriguella	Girona	0
Ger	Girona	0
Girona	Girona	0
Gombrèn	Girona	0
Gualta	Girona	0
Guils de Cerdanya	Girona	0
Hostalric	Girona	0
Isòvol	Girona	0
Jafre	Girona	0
Jonquera, La	Girona	0
Juià	Girona	0
Lladó	Girona	0
Llagostera	Girona	0
Llambilles	Girona	0
Llanars	Girona	0
Llançà	Girona	0
Llers	Girona	0
Llívia	Girona	0
Lloret de Mar	Girona	0
Llosses, Les	Girona	0
Madremanya	Girona	0
Maià de Montcal	Girona	0
Meranges	Girona	0
Masarac	Girona	0
Massanes	Girona	0
Maçanet de Cabrenys	Girona	0
Maçanet de la Selva	Girona	0
Mieres	Girona	0
Mollet de Peralada	Girona	0
Molló	Girona	0
Montagut i Oix	Girona	0
Mont-ras	Girona	0
Navata	Girona	0
Ogassa	Girona	0
Olot	Girona	0
Ordis	Girona	0
Osor	Girona	0
Palafrugell	Girona	0
Palamós	Girona	0
Palau de Santa Eulàlia	Girona	0
Palau-saverdera	Girona	0
Palau-sator	Girona	0
Palol de Revardit	Girona	0
Pals	Girona	0
Pardines	Girona	0
Parlavà	Girona	0
Pau	Girona	0
Pedret i Marzà	Girona	0
Pera, La	Girona	0
Peralada	Girona	0
Planes dHostoles, Les	Girona	0
Planoles	Girona	0
Pont de Molins	Girona	0
Pontós	Girona	0
Porqueres	Girona	0
Portbou	Girona	0
Preses, Les	Girona	0
Port de la Selva, El	Girona	0
Puigcerdà	Girona	0
Quart	Girona	0
Rabós	Girona	0
Regencós	Girona	0
Ribes de Freser	Girona	0
Riells i Viabrea	Girona	0
Ripoll	Girona	0
Riudarenes	Girona	0
Riudaura	Girona	0
Riudellots de la Selva	Girona	0
Riumors	Girona	0
Roses	Girona	0
Rupià	Girona	0
Sales de Llierca	Girona	0
Salt	Girona	0
Sant Andreu Salou	Girona	0
Sant Climent Sescebes	Girona	0
Sant Feliu de Buixalleu	Girona	0
Sant Feliu de Guíxols	Girona	0
Sant Feliu de Pallerols	Girona	0
Sant Ferriol	Girona	0
Sant Gregori	Girona	0
Sant Hilari Sacalm	Girona	0
Sant Jaume de Llierca	Girona	0
Sant Jordi Desvalls	Girona	0
Sant Joan de les Abadesses	Girona	0
Sant Joan de Mollet	Girona	0
Sant Julià de Ramis	Girona	0
Vallfogona de Ripollès	Girona	0
Sant Llorenç de la Muga	Girona	0
Sant Martí de Llémena	Girona	0
Sant Martí Vell	Girona	0
Sant Miquel de Campmajor	Girona	0
Sant Miquel de Fluvià	Girona	0
Sant Mori	Girona	0
Sant Pau de Segúries	Girona	0
Sant Pere Pescador	Girona	0
Santa Coloma de Farners	Girona	0
Santa Cristina dAro	Girona	0
Santa Llogaia dÀlguema	Girona	0
Sant Aniol de Finestres	Girona	0
Santa Pau	Girona	0
Sant Joan les Fonts	Girona	0
Sarrià de Ter	Girona	0
Saus, Camallera i Llampaies	Girona	0
Selva de Mar, La	Girona	0
Cellera de Ter, La	Girona	0
Serinyà	Girona	0
Serra de Daró	Girona	0
Setcases	Girona	0
Sils	Girona	0
Susqueda	Girona	0
Tallada dEmpordà, La	Girona	0
Terrades	Girona	0
Torrent	Girona	0
Torroella de Fluvià	Girona	0
Torroella de Montgrí	Girona	0
Tortellà	Girona	0
Toses	Girona	0
Tossa de Mar	Girona	0
Ultramort	Girona	0
Ullà	Girona	0
Ullastret	Girona	0
Urús	Girona	0
Vall den Bas, La	Girona	0
Vall de Bianya, La	Girona	0
Vall-llobrega	Girona	0
Ventalló	Girona	0
Verges	Girona	0
Vidrà	Girona	0
Vidreres	Girona	0
Vilabertran	Girona	0
Vilablareix	Girona	0
Viladasens	Girona	0
Viladamat	Girona	0
Vilademuls	Girona	0
Viladrau	Girona	0
Vilafant	Girona	0
Vilaür	Girona	0
Vilajuïga	Girona	0
Vilallonga de Ter	Girona	0
Vilamacolum	Girona	0
Vilamalla	Girona	0
Vilamaniscle	Girona	0
Vilanant	Girona	0
Vila-sacra	Girona	0
Vilopriu	Girona	0
Vilobí dOnyar	Girona	0
Biure	Girona	0
Cruïlles, Monells i Sant Sadurní de lHeura	Girona	0
Forallac	Girona	0
Sant Julià del Llor i Bonmatí	Girona	0
Agrón	Granada	0
Alamedilla	Granada	0
Albolote	Granada	0
Albondón	Granada	0
Albuñán	Granada	0
Albuñol	Granada	0
Albuñuelas	Granada	0
Aldeire	Granada	0
Alfacar	Granada	0
Algarinejo	Granada	0
Alhama de Granada	Granada	0
Alhendín	Granada	0
Alicún de Ortega	Granada	0
Almegíjar	Granada	0
Almuñécar	Granada	0
Alquife	Granada	0
Arenas del Rey	Granada	0
Armilla	Granada	0
Atarfe	Granada	0
Baza	Granada	0
Beas de Granada	Granada	0
Beas de Guadix	Granada	0
Benalúa	Granada	0
Benalúa de las Villas	Granada	0
Benamaurel	Granada	0
Bérchules	Granada	0
Bubión	Granada	0
Busquístar	Granada	0
Cacín	Granada	0
Cádiar	Granada	0
Cájar	Granada	0
Calicasas	Granada	0
Campotéjar	Granada	0
Caniles	Granada	0
Cáñar	Granada	0
Capileira	Granada	0
Carataunas	Granada	0
Cástaras	Granada	0
Castilléjar	Granada	0
Castril	Granada	0
Cenes de la Vega	Granada	0
Cijuela	Granada	0
Cogollos de Guadix	Granada	0
Cogollos de la Vega	Granada	0
Colomera	Granada	0
Cortes de Baza	Granada	0
Cortes y Graena	Granada	0
Cúllar	Granada	0
Cúllar Vega	Granada	0
Chauchina	Granada	0
Chimeneas	Granada	0
Churriana de la Vega	Granada	0
Darro	Granada	0
Dehesas de Guadix	Granada	0
Deifontes	Granada	0
Diezma	Granada	0
Dílar	Granada	0
Dólar	Granada	0
Dúdar	Granada	0
Dúrcal	Granada	0
Escúzar	Granada	0
Ferreira	Granada	0
Fonelas	Granada	0
Freila	Granada	0
Fuente Vaqueros	Granada	0
Galera	Granada	0
Gobernador	Granada	0
Gójar	Granada	0
Gor	Granada	0
Gorafe	Granada	0
Granada	Granada	0
Guadahortuna	Granada	0
Guadix	Granada	0
Gualchos	Granada	0
Güejar Sierra	Granada	0
Güevéjar	Granada	0
Huélago	Granada	0
Huéneja	Granada	0
Huéscar	Granada	0
Huétor de Santillán	Granada	0
Huétor Tájar	Granada	0
Huétor Vega	Granada	0
Illora	Granada	0
Itrabo	Granada	0
Iznalloz	Granada	0
Jayena	Granada	0
Jerez del Marquesado	Granada	0
Jete	Granada	0
Jun	Granada	0
Juviles	Granada	0
Calahorra, La	Granada	0
Láchar	Granada	0
Lanjarón	Granada	0
Lanteira	Granada	0
Lecrín	Granada	0
Lentegí	Granada	0
Lobras	Granada	0
Loja	Granada	0
Lugros	Granada	0
Lújar	Granada	0
Malahá, La	Granada	0
Maracena	Granada	0
Marchal	Granada	0
Moclín	Granada	0
Molvízar	Granada	0
Monachil	Granada	0
Montefrío	Granada	0
Montejícar	Granada	0
Montillana	Granada	0
Moraleda de Zafayona	Granada	0
Motril	Granada	0
Murtas	Granada	0
Nigüelas	Granada	0
Nívar	Granada	0
Ogíjares	Granada	0
Orce	Granada	0
Órgiva	Granada	0
Otívar	Granada	0
Otura	Granada	0
Padul	Granada	0
Pampaneira	Granada	0
Pedro Martínez	Granada	0
Peligros	Granada	0
Peza, La	Granada	0
Pinos Genil	Granada	0
Pinos Puente	Granada	0
Píñar	Granada	0
Polícar	Granada	0
Polopos	Granada	0
Pórtugos	Granada	0
Puebla de Don Fadrique	Granada	0
Pulianas	Granada	0
Purullena	Granada	0
Quéntar	Granada	0
Rubite	Granada	0
Salar	Granada	0
Salobreña	Granada	0
Santa Cruz del Comercio	Granada	0
Santa Fe	Granada	0
Soportújar	Granada	0
Sorvilán	Granada	0
Torre-Cardela	Granada	0
Torvizcón	Granada	0
Trevélez	Granada	0
Turón	Granada	0
Ugíjar	Granada	0
Válor	Granada	0
Vélez de Benaudalla	Granada	0
Ventas de Huelma	Granada	0
Villanueva de las Torres	Granada	0
Villanueva Mesía	Granada	0
Víznar	Granada	0
Zafarraya	Granada	0
Zubia, La	Granada	0
Zújar	Granada	0
Taha, La	Granada	0
Valle, El	Granada	0
Nevada	Granada	0
Alpujarra de la Sierra	Granada	0
Gabias, Las	Granada	0
Guajares, Los	Granada	0
Valle del Zalabí	Granada	0
Villamena	Granada	0
Morelábor	Granada	0
Pinar, El	Granada	0
Vegas del Genil	Granada	0
Cuevas del Campo	Granada	0
Zagra	Granada	0
Abánades	Guadalajara	0
Ablanque	Guadalajara	0
Adobes	Guadalajara	0
Alaminos	Guadalajara	0
Alarilla	Guadalajara	0
Albalate de Zorita	Guadalajara	0
Albares	Guadalajara	0
Albendiego	Guadalajara	0
Alcocer	Guadalajara	0
Alcolea de las Peñas	Guadalajara	0
Alcolea del Pinar	Guadalajara	0
Alcoroches	Guadalajara	0
Aldeanueva de Guadalajara	Guadalajara	0
Algar de Mesa	Guadalajara	0
Algora	Guadalajara	0
Alhóndiga	Guadalajara	0
Alique	Guadalajara	0
Almadrones	Guadalajara	0
Almoguera	Guadalajara	0
Almonacid de Zorita	Guadalajara	0
Alocén	Guadalajara	0
Alovera	Guadalajara	0
Alustante	Guadalajara	0
Angón	Guadalajara	0
Anguita	Guadalajara	0
Anquela del Ducado	Guadalajara	0
Anquela del Pedregal	Guadalajara	0
Aranzueque	Guadalajara	0
Arbancón	Guadalajara	0
Arbeteta	Guadalajara	0
Argecilla	Guadalajara	0
Armallones	Guadalajara	0
Armuña de Tajuña	Guadalajara	0
Arroyo de las Fraguas	Guadalajara	0
Atanzón	Guadalajara	0
Atienza	Guadalajara	0
Auñón	Guadalajara	0
Azuqueca de Henares	Guadalajara	0
Baides	Guadalajara	0
Baños de Tajo	Guadalajara	0
Bañuelos	Guadalajara	0
Barriopedro	Guadalajara	0
Berninches	Guadalajara	0
Bodera, La	Guadalajara	0
Brihuega	Guadalajara	0
Budia	Guadalajara	0
Bujalaro	Guadalajara	0
Bustares	Guadalajara	0
Cabanillas del Campo	Guadalajara	0
Campillo de Dueñas	Guadalajara	0
Campillo de Ranas	Guadalajara	0
Campisábalos	Guadalajara	0
Canredondo	Guadalajara	0
Cantalojas	Guadalajara	0
Cañizar	Guadalajara	0
Cardoso de la Sierra, El	Guadalajara	0
Casa de Uceda	Guadalajara	0
Casar, El	Guadalajara	0
Casas de San Galindo	Guadalajara	0
Caspueñas	Guadalajara	0
Castejón de Henares	Guadalajara	0
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
Chillarón del Rey	Guadalajara	0
Driebes	Guadalajara	0
Durón	Guadalajara	0
Embid	Guadalajara	0
Escamilla	Guadalajara	0
Escariche	Guadalajara	0
Escopete	Guadalajara	0
Espinosa de Henares	Guadalajara	0
Esplegares	Guadalajara	0
Establés	Guadalajara	0
Estriégana	Guadalajara	0
Fontanar	Guadalajara	0
Fuembellida	Guadalajara	0
Fuencemillán	Guadalajara	0
Fuentelahiguera de Albatages	Guadalajara	0
Fuentelencina	Guadalajara	0
Fuentelsaz	Guadalajara	0
Fuentelviejo	Guadalajara	0
Fuentenovilla	Guadalajara	0
Gajanejos	Guadalajara	0
Galápagos	Guadalajara	0
Galve de Sorbe	Guadalajara	0
Gascueña de Bornova	Guadalajara	0
Guadalajara	Guadalajara	0
Henche	Guadalajara	0
Heras de Ayuso	Guadalajara	0
Herrería	Guadalajara	0
Hiendelaencina	Guadalajara	0
Hijes	Guadalajara	0
Hita	Guadalajara	0
Hombrados	Guadalajara	0
Hontoba	Guadalajara	0
Horche	Guadalajara	0
Hortezuela de Océn	Guadalajara	0
Huerce, La	Guadalajara	0
Huérmeces del Cerro	Guadalajara	0
Huertahernando	Guadalajara	0
Hueva	Guadalajara	0
Humanes	Guadalajara	0
Illana	Guadalajara	0
Iniéstola	Guadalajara	0
Inviernas, Las	Guadalajara	0
Irueste	Guadalajara	0
Jadraque	Guadalajara	0
Jirueque	Guadalajara	0
Ledanca	Guadalajara	0
Loranca de Tajuña	Guadalajara	0
Lupiana	Guadalajara	0
Luzaga	Guadalajara	0
Luzón	Guadalajara	0
Majaelrayo	Guadalajara	0
Málaga del Fresno	Guadalajara	0
Malaguilla	Guadalajara	0
Mandayona	Guadalajara	0
Mantiel	Guadalajara	0
Maranchón	Guadalajara	0
Marchamalo	Guadalajara	0
Masegoso de Tajuña	Guadalajara	0
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
Miñosa, La	Guadalajara	0
Mirabueno	Guadalajara	0
Miralrío	Guadalajara	0
Mochales	Guadalajara	0
Mohernando	Guadalajara	0
Molina de Aragón	Guadalajara	0
Monasterio	Guadalajara	0
Mondéjar	Guadalajara	0
Montarrón	Guadalajara	0
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
Pálmaces de Jadraque	Guadalajara	0
Pardos	Guadalajara	0
Paredes de Sigüenza	Guadalajara	0
Pareja	Guadalajara	0
Pastrana	Guadalajara	0
Pedregal, El	Guadalajara	0
Peñalén	Guadalajara	0
Peñalver	Guadalajara	0
Peralejos de las Truchas	Guadalajara	0
Peralveche	Guadalajara	0
Pinilla de Jadraque	Guadalajara	0
Pinilla de Molina	Guadalajara	0
Pioz	Guadalajara	0
Piqueras	Guadalajara	0
Pobo de Dueñas, El	Guadalajara	0
Poveda de la Sierra	Guadalajara	0
Pozo de Almoguera	Guadalajara	0
Pozo de Guadalajara	Guadalajara	0
Prádena de Atienza	Guadalajara	0
Prados Redondos	Guadalajara	0
Puebla de Beleña	Guadalajara	0
Puebla de Valles	Guadalajara	0
Quer	Guadalajara	0
Rebollosa de Jadraque	Guadalajara	0
Recuenco, El	Guadalajara	0
Renera	Guadalajara	0
Retiendas	Guadalajara	0
Riba de Saelices	Guadalajara	0
Rillo de Gallo	Guadalajara	0
Riofrío del Llano	Guadalajara	0
Robledillo de Mohernando	Guadalajara	0
Robledo de Corpes	Guadalajara	0
Romanillos de Atienza	Guadalajara	0
Romanones	Guadalajara	0
Rueda de la Sierra	Guadalajara	0
Sacecorbo	Guadalajara	0
Sacedón	Guadalajara	0
Saelices de la Sal	Guadalajara	0
Salmerón	Guadalajara	0
San Andrés del Congosto	Guadalajara	0
San Andrés del Rey	Guadalajara	0
Santiuste	Guadalajara	0
Saúca	Guadalajara	0
Sayatón	Guadalajara	0
Selas	Guadalajara	0
Setiles	Guadalajara	0
Sienes	Guadalajara	0
Sigüenza	Guadalajara	0
Solanillos del Extremo	Guadalajara	0
Somolinos	Guadalajara	0
Sotillo, El	Guadalajara	0
Sotodosos	Guadalajara	0
Tamajón	Guadalajara	0
Taragudo	Guadalajara	0
Taravilla	Guadalajara	0
Tartanedo	Guadalajara	0
Tendilla	Guadalajara	0
Terzaga	Guadalajara	0
Tierzo	Guadalajara	0
Toba, La	Guadalajara	0
Tordelrábano	Guadalajara	0
Tordellego	Guadalajara	0
Tordesilos	Guadalajara	0
Torija	Guadalajara	0
Torrecuadrada de Molina	Guadalajara	0
Torrecuadradilla	Guadalajara	0
Torre del Burgo	Guadalajara	0
Torrejón del Rey	Guadalajara	0
Torremocha de Jadraque	Guadalajara	0
Torremocha del Campo	Guadalajara	0
Torremocha del Pinar	Guadalajara	0
Torremochuela	Guadalajara	0
Torrubia	Guadalajara	0
Tórtola de Henares	Guadalajara	0
Tortuera	Guadalajara	0
Tortuero	Guadalajara	0
Traíd	Guadalajara	0
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
Valdenuño Fernández	Guadalajara	0
Valdepeñas de la Sierra	Guadalajara	0
Valderrebollo	Guadalajara	0
Valdesotos	Guadalajara	0
Valfermoso de Tajuña	Guadalajara	0
Valhermoso	Guadalajara	0
Valtablado del Río	Guadalajara	0
Valverde de los Arroyos	Guadalajara	0
Viana de Jadraque	Guadalajara	0
Villanueva de Alcorón	Guadalajara	0
Villanueva de Argecilla	Guadalajara	0
Villanueva de la Torre	Guadalajara	0
Villares de Jadraque	Guadalajara	0
Villaseca de Henares	Guadalajara	0
Villaseca de Uceda	Guadalajara	0
Villel de Mesa	Guadalajara	0
Viñuelas	Guadalajara	0
Yebes	Guadalajara	0
Yebra	Guadalajara	0
Yélamos de Abajo	Guadalajara	0
Yélamos de Arriba	Guadalajara	0
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
Arrasate/Mondragón	Gipuzkoa	0
Mutriku	Gipuzkoa	0
Mutiloa	Gipuzkoa	0
Olaberria	Gipuzkoa	0
Oñati	Gipuzkoa	0
Orexa	Gipuzkoa	0
Orio	Gipuzkoa	0
Ormaiztegi	Gipuzkoa	0
Oiartzun	Gipuzkoa	0
Pasaia	Gipuzkoa	0
Soraluze-Placencia de las Armas	Gipuzkoa	0
Errezil	Gipuzkoa	0
Errenteria	Gipuzkoa	0
Leintz-Gatzaga	Gipuzkoa	0
Donostia-San Sebastián	Gipuzkoa	0
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
Alájar	Huelva	0
Aljaraque	Huelva	0
Almendro, El	Huelva	0
Almonaster la Real	Huelva	0
Almonte	Huelva	0
Alosno	Huelva	0
Aracena	Huelva	0
Aroche	Huelva	0
Arroyomolinos de León	Huelva	0
Ayamonte	Huelva	0
Beas	Huelva	0
Berrocal	Huelva	0
Bollullos Par del Condado	Huelva	0
Bonares	Huelva	0
Cabezas Rubias	Huelva	0
Cala	Huelva	0
Calañas	Huelva	0
Campillo, El	Huelva	0
Campofrío	Huelva	0
Cañaveral de León	Huelva	0
Cartaya	Huelva	0
Castaño del Robledo	Huelva	0
Cerro de Andévalo, El	Huelva	0
Corteconcepción	Huelva	0
Cortegana	Huelva	0
Cortelazor	Huelva	0
Cumbres de Enmedio	Huelva	0
Cumbres de San Bartolomé	Huelva	0
Cumbres Mayores	Huelva	0
Chucena	Huelva	0
Encinasola	Huelva	0
Escacena del Campo	Huelva	0
Fuenteheridos	Huelva	0
Galaroza	Huelva	0
Gibraleón	Huelva	0
Granada de Río-Tinto, La	Huelva	0
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
Puebla de Guzmán	Huelva	0
Puerto Moral	Huelva	0
Punta Umbría	Huelva	0
Rociana del Condado	Huelva	0
Rosal de la Frontera	Huelva	0
San Bartolomé de la Torre	Huelva	0
San Juan del Puerto	Huelva	0
Sanlúcar de Guadiana	Huelva	0
San Silvestre de Guzmán	Huelva	0
Santa Ana la Real	Huelva	0
Santa Bárbara de Casa	Huelva	0
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
Agüero	Huesca	0
Aisa	Huesca	0
Albalate de Cinca	Huesca	0
Albalatillo	Huesca	0
Albelda	Huesca	0
Albero Alto	Huesca	0
Albero Bajo	Huesca	0
Alberuela de Tubo	Huesca	0
Alcalá de Gurrea	Huesca	0
Alcalá del Obispo	Huesca	0
Alcampell	Huesca	0
Alcolea de Cinca	Huesca	0
Alcubierre	Huesca	0
Alerre	Huesca	0
Alfántega	Huesca	0
Almudévar	Huesca	0
Almunia de San Juan	Huesca	0
Almuniente	Huesca	0
Alquézar	Huesca	0
Altorricón	Huesca	0
Angüés	Huesca	0
Ansó	Huesca	0
Antillón	Huesca	0
Aragüés del Puerto	Huesca	0
Arén	Huesca	0
Argavieso	Huesca	0
Arguis	Huesca	0
Ayerbe	Huesca	0
Azanuy-Alins	Huesca	0
Azara	Huesca	0
Azlor	Huesca	0
Baélls	Huesca	0
Bailo	Huesca	0
Baldellou	Huesca	0
Ballobar	Huesca	0
Banastás	Huesca	0
Barbastro	Huesca	0
Barbués	Huesca	0
Barbuñales	Huesca	0
Bárcabo	Huesca	0
Belver de Cinca	Huesca	0
Benabarre	Huesca	0
Benasque	Huesca	0
Berbegal	Huesca	0
Bielsa	Huesca	0
Bierge	Huesca	0
Biescas	Huesca	0
Binaced	Huesca	0
Binéfar	Huesca	0
Bisaurri	Huesca	0
Biscarrués	Huesca	0
Blecua y Torres	Huesca	0
Boltaña	Huesca	0
Bonansa	Huesca	0
Borau	Huesca	0
Broto	Huesca	0
Caldearenas	Huesca	0
Campo	Huesca	0
Camporrélls	Huesca	0
Canal de Berdún	Huesca	0
Candasnos	Huesca	0
Canfranc	Huesca	0
Capdesaso	Huesca	0
Capella	Huesca	0
Casbas de Huesca	Huesca	0
Castejón del Puente	Huesca	0
Castejón de Monegros	Huesca	0
Castejón de Sos	Huesca	0
Castelflorite	Huesca	0
Castiello de Jaca	Huesca	0
Castigaleu	Huesca	0
Castillazuelo	Huesca	0
Castillonroy	Huesca	0
Colungo	Huesca	0
Chalamera	Huesca	0
Chía	Huesca	0
Chimillas	Huesca	0
Esplús	Huesca	0
Estada	Huesca	0
Estadilla	Huesca	0
Estopiñán del Castillo	Huesca	0
Fago	Huesca	0
Fanlo	Huesca	0
Fiscal	Huesca	0
Fonz	Huesca	0
Foradada del Toscar	Huesca	0
Fraga	Huesca	0
Fueva, La	Huesca	0
Gistaín	Huesca	0
Grado, El	Huesca	0
Grañén	Huesca	0
Graus	Huesca	0
Gurrea de Gállego	Huesca	0
Hoz de Jaca	Huesca	0
Huerto	Huesca	0
Huesca	Huesca	0
Ibieca	Huesca	0
Igriés	Huesca	0
Ilche	Huesca	0
Isábena	Huesca	0
Jaca	Huesca	0
Jasa	Huesca	0
Labuerda	Huesca	0
Laluenga	Huesca	0
Lalueza	Huesca	0
Lanaja	Huesca	0
Laperdiguera	Huesca	0
Lascellas-Ponzano	Huesca	0
Lascuarre	Huesca	0
Laspaúles	Huesca	0
Laspuña	Huesca	0
Loarre	Huesca	0
Loporzano	Huesca	0
Loscorrales	Huesca	0
Monesma y Cajigar	Huesca	0
Monflorite-Lascasas	Huesca	0
Montanuy	Huesca	0
Monzón	Huesca	0
Naval	Huesca	0
Novales	Huesca	0
Nueno	Huesca	0
Olvena	Huesca	0
Ontiñena	Huesca	0
Osso de Cinca	Huesca	0
Palo	Huesca	0
Panticosa	Huesca	0
Peñalba	Huesca	0
Peñas de Riglos, Las	Huesca	0
Peralta de Alcofea	Huesca	0
Peralta de Calasanz	Huesca	0
Peraltilla	Huesca	0
Perarrúa	Huesca	0
Pertusa	Huesca	0
Piracés	Huesca	0
Plan	Huesca	0
Poleñino	Huesca	0
Pozán de Vero	Huesca	0
Puebla de Castro, La	Huesca	0
Puente de Montañana	Huesca	0
Puértolas	Huesca	0
Pueyo de Araguás, El	Huesca	0
Pueyo de Santa Cruz	Huesca	0
Quicena	Huesca	0
Robres	Huesca	0
Sabiñánigo	Huesca	0
Sahún	Huesca	0
Salas Altas	Huesca	0
Salas Bajas	Huesca	0
Salillas	Huesca	0
Sallent de Gállego	Huesca	0
San Esteban de Litera	Huesca	0
Sangarrén	Huesca	0
San Juan de Plan	Huesca	0
Santa Cilia	Huesca	0
Santa Cruz de la Serós	Huesca	0
Santaliestra y San Quílez	Huesca	0
Sariñena	Huesca	0
Secastilla	Huesca	0
Seira	Huesca	0
Sena	Huesca	0
Senés de Alcubierre	Huesca	0
Sesa	Huesca	0
Sesué	Huesca	0
Siétamo	Huesca	0
Sopeira	Huesca	0
Tamarite de Litera	Huesca	0
Tardienta	Huesca	0
Tella-Sin	Huesca	0
Tierz	Huesca	0
Tolva	Huesca	0
Torla	Huesca	0
Torralba de Aragón	Huesca	0
Torre la Ribera	Huesca	0
Torrente de Cinca	Huesca	0
Torres de Alcanadre	Huesca	0
Torres de Barbués	Huesca	0
Tramaced	Huesca	0
Valfarta	Huesca	0
Valle de Bardají	Huesca	0
Valle de Lierp	Huesca	0
Velilla de Cinca	Huesca	0
Beranuy	Huesca	0
Viacamp y Litera	Huesca	0
Vicién	Huesca	0
Villanova	Huesca	0
Villanúa	Huesca	0
Villanueva de Sigena	Huesca	0
Yebra de Basa	Huesca	0
Yésero	Huesca	0
Zaidín	Huesca	0
Valle de Hecho	Huesca	0
Puente la Reina de Jaca	Huesca	0
San Miguel del Cinca	Huesca	0
Sotonera, La	Huesca	0
Lupiñén-Ortilla	Huesca	0
Santa María de Dulcis	Huesca	0
Aínsa-Sobrarbe	Huesca	0
Hoz y Costean	Huesca	0
Vencillón	Huesca	0
Albanchez de Mágina	Jaén	0
Alcalá la Real	Jaén	0
Alcaudete	Jaén	0
Aldeaquemada	Jaén	0
Andújar	Jaén	0
Arjona	Jaén	0
Arjonilla	Jaén	0
Arquillos	Jaén	0
Baeza	Jaén	0
Bailén	Jaén	0
Baños de la Encina	Jaén	0
Beas de Segura	Jaén	0
Begíjar	Jaén	0
Bélmez de la Moraleda	Jaén	0
Benatae	Jaén	0
Cabra del Santo Cristo	Jaén	0
Cambil	Jaén	0
Campillo de Arenas	Jaén	0
Canena	Jaén	0
Carboneros	Jaén	0
Carolina, La	Jaén	0
Castellar	Jaén	0
Castillo de Locubín	Jaén	0
Cazalilla	Jaén	0
Cazorla	Jaén	0
Chiclana de Segura	Jaén	0
Chilluévar	Jaén	0
Escañuela	Jaén	0
Espelúy	Jaén	0
Frailes	Jaén	0
Fuensanta de Martos	Jaén	0
Fuerte del Rey	Jaén	0
Génave	Jaén	0
Guardia de Jaén, La	Jaén	0
Guarromán	Jaén	0
Lahiguera	Jaén	0
Higuera de Calatrava	Jaén	0
Hinojares	Jaén	0
Hornos	Jaén	0
Huelma	Jaén	0
Huesa	Jaén	0
Ibros	Jaén	0
Iruela, La	Jaén	0
Iznatoraf	Jaén	0
Jabalquinto	Jaén	0
Jaén	Jaén	0
Jamilena	Jaén	0
Jimena	Jaén	0
Jódar	Jaén	0
Larva	Jaén	0
Linares	Jaén	0
Lopera	Jaén	0
Lupión	Jaén	0
Mancha Real	Jaén	0
Marmolejo	Jaén	0
Martos	Jaén	0
Mengíbar	Jaén	0
Montizón	Jaén	0
Navas de San Juan	Jaén	0
Noalejo	Jaén	0
Orcera	Jaén	0
Peal de Becerro	Jaén	0
Pegalajar	Jaén	0
Porcuna	Jaén	0
Pozo Alcón	Jaén	0
Puente de Génave	Jaén	0
Puerta de Segura, La	Jaén	0
Quesada	Jaén	0
Rus	Jaén	0
Sabiote	Jaén	0
Santa Elena	Jaén	0
Santiago de Calatrava	Jaén	0
Santisteban del Puerto	Jaén	0
Santo Tomé	Jaén	0
Segura de la Sierra	Jaén	0
Siles	Jaén	0
Sorihuela del Guadalimar	Jaén	0
Torreblascopedro	Jaén	0
Torre del Campo	Jaén	0
Torredonjimeno	Jaén	0
Torreperogil	Jaén	0
Torres	Jaén	0
Torres de Albánchez	Jaén	0
Úbeda	Jaén	0
Valdepeñas de Jaén	Jaén	0
Vilches	Jaén	0
Villacarrillo	Jaén	0
Villanueva de la Reina	Jaén	0
Villanueva del Arzobispo	Jaén	0
Villardompardo	Jaén	0
Villares, Los	Jaén	0
Villarrodrigo	Jaén	0
Cárcheles	Jaén	0
Bedmar y Garcíez	Jaén	0
Villatorres	Jaén	0
Santiago-Pontones	Jaén	0
Arroyo del Ojanco	Jaén	0
Acebedo	León	0
Algadefe	León	0
Alija del Infantado	León	0
Almanza	León	0
Antigua, La	León	0
Ardón	León	0
Arganza	León	0
Astorga	León	0
Balboa	León	0
Bañeza, La	León	0
Barjas	León	0
Barrios de Luna, Los	León	0
Bembibre	León	0
Benavides	León	0
Benuza	León	0
Bercianos del Páramo	León	0
Bercianos del Real Camino	León	0
Berlanga del Bierzo	León	0
Boca de Huérgano	León	0
Boñar	León	0
Borrenes	León	0
Brazuelo	León	0
Burgo Ranero, El	León	0
Burón	León	0
Bustillo del Páramo	León	0
Cabañas Raras	León	0
Cabreros del Río	León	0
Cabrillanes	León	0
Cacabelos	León	0
Calzada del Coto	León	0
Campazas	León	0
Campo de Villavidel	León	0
Camponaraya	León	0
Candín	León	0
Cármenes	León	0
Carracedelo	León	0
Carrizo	León	0
Carrocera	León	0
Carucedo	León	0
Castilfalé	León	0
Castrillo de Cabrera	León	0
Castrillo de la Valduerna	León	0
Castrocalbón	León	0
Castrocontrigo	León	0
Castropodame	León	0
Castrotierra de Valmadrigal	León	0
Cea	León	0
Cebanico	León	0
Cebrones del Río	León	0
Cimanes de la Vega	León	0
Cimanes del Tejar	León	0
Cistierna	León	0
Congosto	León	0
Corbillos de los Oteros	León	0
Corullón	León	0
Crémenes	León	0
Cuadros	León	0
Cubillas de los Oteros	León	0
Cubillas de Rueda	León	0
Cubillos del Sil	León	0
Chozas de Abajo	León	0
Destriana	León	0
Encinedo	León	0
Ercina, La	León	0
Escobar de Campos	León	0
Fabero	León	0
Folgoso de la Ribera	León	0
Fresno de la Vega	León	0
Fuentes de Carbajal	León	0
Garrafe de Torío	León	0
Gordaliza del Pino	León	0
Gordoncillo	León	0
Gradefes	León	0
Grajal de Campos	León	0
Gusendos de los Oteros	León	0
Hospital de Órbigo	León	0
Igüeña	León	0
Izagre	León	0
Joarilla de las Matas	León	0
Laguna Dalga	León	0
Laguna de Negrillos	León	0
León	León	0
Lucillo	León	0
Luyego	León	0
Llamas de la Ribera	León	0
Magaz de Cepeda	León	0
Mansilla de las Mulas	León	0
Mansilla Mayor	León	0
Maraña	León	0
Matadeón de los Oteros	León	0
Matallana de Torío	León	0
Matanza	León	0
Molinaseca	León	0
Murias de Paredes	León	0
Noceda del Bierzo	León	0
Oencia	León	0
Omañas, Las	León	0
Onzonilla	León	0
Oseja de Sajambre	León	0
Pajares de los Oteros	León	0
Palacios de la Valduerna	León	0
Palacios del Sil	León	0
Páramo del Sil	León	0
Peranzanes	León	0
Pobladura de Pelayo García	León	0
Pola de Gordón, La	León	0
Ponferrada	León	0
Posada de Valdeón	León	0
Pozuelo del Páramo	León	0
Prado de la Guzpeña	León	0
Priaranza del Bierzo	León	0
Prioro	León	0
Puebla de Lillo	León	0
Puente de Domingo Flórez	León	0
Quintana del Castillo	León	0
Quintana del Marco	León	0
Quintana y Congosto	León	0
Regueras de Arriba	León	0
Reyero	León	0
Riaño	León	0
Riego de la Vega	León	0
Riello	León	0
Rioseco de Tapia	León	0
Robla, La	León	0
Roperuelos del Páramo	León	0
Sabero	León	0
Sahagún	León	0
San Adrián del Valle	León	0
San Andrés del Rabanedo	León	0
Sancedo	León	0
San Cristóbal de la Polantera	León	0
San Emiliano	León	0
San Esteban de Nogales	León	0
San Justo de la Vega	León	0
San Millán de los Caballeros	León	0
San Pedro Bercianos	León	0
Santa Colomba de Curueño	León	0
Santa Colomba de Somoza	León	0
Santa Cristina de Valmadrigal	León	0
Santa Elena de Jamuz	León	0
Santa María de la Isla	León	0
Santa María del Monte de Cea	León	0
Santa María del Páramo	León	0
Santa María de Ordás	León	0
Santa Marina del Rey	León	0
Santas Martas	León	0
Santiago Millas	León	0
Santovenia de la Valdoncina	León	0
Sariegos	León	0
Sena de Luna	León	0
Sobrado	León	0
Soto de la Vega	León	0
Soto y Amío	León	0
Toral de los Guzmanes	León	0
Toreno	León	0
Torre del Bierzo	León	0
Trabadelo	León	0
Truchas	León	0
Turcia	León	0
Urdiales del Páramo	León	0
Valdefresno	León	0
Valdefuentes del Páramo	León	0
Valdelugueros	León	0
Valdemora	León	0
Valdepiélago	León	0
Valdepolo	León	0
Valderas	León	0
Valderrey	León	0
Valderrueda	León	0
Valdesamario	León	0
Val de San Lorenzo	León	0
Valdevimbre	León	0
Valencia de Don Juan	León	0
Valverde de la Virgen	León	0
Valverde-Enrique	León	0
Vallecillo	León	0
Vecilla, La	León	0
Vegacervera	León	0
Vega de Espinareda	León	0
Vega de Infanzones	León	0
Vega de Valcarce	León	0
Vegaquemada	León	0
Vegas del Condado	León	0
Villablino	León	0
Villabraz	León	0
Villadangos del Páramo	León	0
Toral de los Vados	León	0
Villademor de la Vega	León	0
Villafranca del Bierzo	León	0
Villagatón	León	0
Villamandos	León	0
Villamañán	León	0
Villamartín de Don Sancho	León	0
Villamejil	León	0
Villamol	León	0
Villamontán de la Valduerna	León	0
Villamoratiel de las Matas	León	0
Villanueva de las Manzanas	León	0
Villaobispo de Otero	León	0
Villaquejida	León	0
Villaquilambre	León	0
Villarejo de Órbigo	León	0
Villares de Órbigo	León	0
Villasabariego	León	0
Villaselán	León	0
Villaturiel	León	0
Villazala	León	0
Villazanzo de Valderaduey	León	0
Zotes del Páramo	León	0
Villamanín	León	0
Villaornate y Castro	León	0
Abella de la Conca	Lleida	0
Àger	Lleida	0
Agramunt	Lleida	0
Alamús, Els	Lleida	0
Alàs i Cerc	Lleida	0
Albagés, L	Lleida	0
Albatàrrec	Lleida	0
Albesa	Lleida	0
Albi, L	Lleida	0
Alcanó	Lleida	0
Alcarràs	Lleida	0
Alcoletge	Lleida	0
Alfarràs	Lleida	0
Alfés	Lleida	0
Algerri	Lleida	0
Alguaire	Lleida	0
Alins	Lleida	0
Almacelles	Lleida	0
Almatret	Lleida	0
Almenar	Lleida	0
Alòs de Balaguer	Lleida	0
Alpicat	Lleida	0
Alt Àneu	Lleida	0
Naut Aran	Lleida	0
Anglesola	Lleida	0
Arbeca	Lleida	0
Pont de Bar, El	Lleida	0
Arres	Lleida	0
Arsèguel	Lleida	0
Artesa de Lleida	Lleida	0
Artesa de Segre	Lleida	0
Sentiu de Sió, La	Lleida	0
Aspa	Lleida	0
Avellanes i Santa Linya, Les	Lleida	0
Aitona	Lleida	0
Baix Pallars	Lleida	0
Balaguer	Lleida	0
Barbens	Lleida	0
Baronia de Rialb, La	Lleida	0
Vall de Boí, La	Lleida	0
Bassella	Lleida	0
Bausen	Lleida	0
Belianes	Lleida	0
Bellcaire dUrgell	Lleida	0
Bell-lloc dUrgell	Lleida	0
Bellmunt dUrgell	Lleida	0
Bellpuig	Lleida	0
Bellver de Cerdanya	Lleida	0
Bellvís	Lleida	0
Benavent de Segrià	Lleida	0
Biosca	Lleida	0
Bovera	Lleida	0
Bòrdes, Es	Lleida	0
Borges Blanques, Les	Lleida	0
Bossòst	Lleida	0
Cabanabona	Lleida	0
Cabó	Lleida	0
Camarasa	Lleida	0
Canejan	Lleida	0
Castellar de la Ribera	Lleida	0
Castelldans	Lleida	0
Castellnou de Seana	Lleida	0
Castelló de Farfanya	Lleida	0
Castellserà	Lleida	0
Cava	Lleida	0
Cervera	Lleida	0
Cervià de les Garrigues	Lleida	0
Ciutadilla	Lleida	0
Clariana de Cardener	Lleida	0
Cogul, El	Lleida	0
Coll de Nargó	Lleida	0
Corbins	Lleida	0
Cubells	Lleida	0
Espluga Calba, L	Lleida	0
Espot	Lleida	0
Estaràs	Lleida	0
Esterri dÀneu	Lleida	0
Esterri de Cardós	Lleida	0
Estamariu	Lleida	0
Farrera	Lleida	0
Floresta, La	Lleida	0
Fondarella	Lleida	0
Foradada	Lleida	0
Fuliola, La	Lleida	0
Fulleda	Lleida	0
Gavet de la Conca	Lleida	0
Golmés	Lleida	0
Gósol	Lleida	0
Granadella, La	Lleida	0
Granja dEscarp, La	Lleida	0
Granyanella	Lleida	0
Granyena de Segarra	Lleida	0
Granyena de les Garrigues	Lleida	0
Guimerà	Lleida	0
Guissona	Lleida	0
Guixers	Lleida	0
Ivars de Noguera	Lleida	0
Ivars dUrgell	Lleida	0
Ivorra	Lleida	0
Isona i Conca Dellà	Lleida	0
Juncosa	Lleida	0
Juneda	Lleida	0
Lleida	Lleida	0
Les	Lleida	0
Linyola	Lleida	0
Lladorre	Lleida	0
Lladurs	Lleida	0
Llardecans	Lleida	0
Llavorsí	Lleida	0
Lles de Cerdanya	Lleida	0
Llimiana	Lleida	0
Llobera	Lleida	0
Maldà	Lleida	0
Massalcoreig	Lleida	0
Massoteres	Lleida	0
Maials	Lleida	0
Menàrguens	Lleida	0
Miralcamp	Lleida	0
Molsosa, La	Lleida	0
Mollerussa	Lleida	0
Montgai	Lleida	0
Montellà i Martinet	Lleida	0
Montferrer i Castellbò	Lleida	0
Montoliu de Segarra	Lleida	0
Montoliu de Lleida	Lleida	0
Montornès de Segarra	Lleida	0
Nalec	Lleida	0
Navès	Lleida	0
Odèn	Lleida	0
Oliana	Lleida	0
Oliola	Lleida	0
Olius	Lleida	0
Oluges, Les	Lleida	0
Omellons, Els	Lleida	0
Omells de na Gaia, Els	Lleida	0
Organyà	Lleida	0
Os de Balaguer	Lleida	0
Ossó de Sió	Lleida	0
Palau dAnglesola, El	Lleida	0
Conca de Dalt	Lleida	0
Coma i la Pedra, La	Lleida	0
Penelles	Lleida	0
Peramola	Lleida	0
Pinell de Solsonès	Lleida	0
Pinós	Lleida	0
Poal, El	Lleida	0
Pobla de Cérvoles, La	Lleida	0
Bellaguarda	Lleida	0
Pobla de Segur, La	Lleida	0
Ponts	Lleida	0
Pont de Suert, El	Lleida	0
Portella, La	Lleida	0
Prats i Sansor	Lleida	0
Preixana	Lleida	0
Preixens	Lleida	0
Prullans	Lleida	0
Puiggròs	Lleida	0
Puigverd dAgramunt	Lleida	0
Puigverd de Lleida	Lleida	0
Rialp	Lleida	0
Ribera dUrgellet	Lleida	0
Riner	Lleida	0
Rosselló	Lleida	0
Salàs de Pallars	Lleida	0
Sanaüja	Lleida	0
Sant Guim de Freixenet	Lleida	0
Sant Llorenç de Morunys	Lleida	0
Sant Ramon	Lleida	0
Sant Esteve de la Sarga	Lleida	0
Sant Guim de la Plana	Lleida	0
Sarroca de Lleida	Lleida	0
Sarroca de Bellera	Lleida	0
Senterada	Lleida	0
Seu dUrgell, La	Lleida	0
Seròs	Lleida	0
Sidamon	Lleida	0
Soleràs, El	Lleida	0
Solsona	Lleida	0
Soriguera	Lleida	0
Sort	Lleida	0
Soses	Lleida	0
Sudanell	Lleida	0
Sunyer	Lleida	0
Talarn	Lleida	0
Talavera	Lleida	0
Tàrrega	Lleida	0
Tarrés	Lleida	0
Tarroja de Segarra	Lleida	0
Térmens	Lleida	0
Tírvia	Lleida	0
Tiurana	Lleida	0
Torà	Lleida	0
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
Verdú	Lleida	0
Vielha e Mijaran	Lleida	0
Vilagrassa	Lleida	0
Vilaller	Lleida	0
Vilamòs	Lleida	0
Vilanova de Bellpuig	Lleida	0
Vilanova de lAguda	Lleida	0
Vilanova de Meià	Lleida	0
Vilanova de Segrià	Lleida	0
Vila-sana	Lleida	0
Vilosell, El	Lleida	0
Vilanova de la Barca	Lleida	0
Vinaixa	Lleida	0
Vall de Cardós	Lleida	0
Sant Martí de Riucorb	Lleida	0
Guingueta dÀneu, La	Lleida	0
Castell de Mur	Lleida	0
Ribera dOndara	Lleida	0
Valls dAguilar, Les	Lleida	0
Torrefeta i Florejacs	Lleida	0
Fígols i Alinyà	Lleida	0
Vansa i Fórnols, La	Lleida	0
Josa i Tuixén	Lleida	0
Plans de Sió, Els	Lleida	0
Gimenells i el Pla de la Font	Lleida	0
Riu de Cerdanya	Lleida	0
Ábalos	Rioja (La)	0
Agoncillo	Rioja (La)	0
Aguilar del Río Alhama	Rioja (La)	0
Ajamil de Cameros	Rioja (La)	0
Albelda de Iregua	Rioja (La)	0
Alberite	Rioja (La)	0
Alcanadre	Rioja (La)	0
Aldeanueva de Ebro	Rioja (La)	0
Alesanco	Rioja (La)	0
Alesón	Rioja (La)	0
Alfaro	Rioja (La)	0
Almarza de Cameros	Rioja (La)	0
Anguciana	Rioja (La)	0
Anguiano	Rioja (La)	0
Arenzana de Abajo	Rioja (La)	0
Arenzana de Arriba	Rioja (La)	0
Arnedillo	Rioja (La)	0
Arnedo	Rioja (La)	0
Arrúbal	Rioja (La)	0
Ausejo	Rioja (La)	0
Autol	Rioja (La)	0
Azofra	Rioja (La)	0
Badarán	Rioja (La)	0
Bañares	Rioja (La)	0
Baños de Rioja	Rioja (La)	0
Baños de Río Tobía	Rioja (La)	0
Berceo	Rioja (La)	0
Bergasa	Rioja (La)	0
Bergasillas Bajera	Rioja (La)	0
Bezares	Rioja (La)	0
Bobadilla	Rioja (La)	0
Brieva de Cameros	Rioja (La)	0
Briñas	Rioja (La)	0
Briones	Rioja (La)	0
Cabezón de Cameros	Rioja (La)	0
Calahorra	Rioja (La)	0
Camprovín	Rioja (La)	0
Canales de la Sierra	Rioja (La)	0
Canillas de Río Tuerto	Rioja (La)	0
Cañas	Rioja (La)	0
Cárdenas	Rioja (La)	0
Casalarreina	Rioja (La)	0
Castañares de Rioja	Rioja (La)	0
Castroviejo	Rioja (La)	0
Cellorigo	Rioja (La)	0
Cenicero	Rioja (La)	0
Cervera del Río Alhama	Rioja (La)	0
Cidamón	Rioja (La)	0
Cihuri	Rioja (La)	0
Cirueña	Rioja (La)	0
Clavijo	Rioja (La)	0
Cordovín	Rioja (La)	0
Corera	Rioja (La)	0
Cornago	Rioja (La)	0
Corporales	Rioja (La)	0
Cuzcurrita de Río Tirón	Rioja (La)	0
Daroca de Rioja	Rioja (La)	0
Enciso	Rioja (La)	0
Entrena	Rioja (La)	0
Estollo	Rioja (La)	0
Ezcaray	Rioja (La)	0
Foncea	Rioja (La)	0
Fonzaleche	Rioja (La)	0
Fuenmayor	Rioja (La)	0
Galbárruli	Rioja (La)	0
Galilea	Rioja (La)	0
Gallinero de Cameros	Rioja (La)	0
Gimileo	Rioja (La)	0
Grañón	Rioja (La)	0
Grávalos	Rioja (La)	0
Haro	Rioja (La)	0
Herce	Rioja (La)	0
Herramélluri	Rioja (La)	0
Hervías	Rioja (La)	0
Hormilla	Rioja (La)	0
Hormilleja	Rioja (La)	0
Hornillos de Cameros	Rioja (La)	0
Hornos de Moncalvillo	Rioja (La)	0
Huércanos	Rioja (La)	0
Igea	Rioja (La)	0
Jalón de Cameros	Rioja (La)	0
Laguna de Cameros	Rioja (La)	0
Lagunilla del Jubera	Rioja (La)	0
Lardero	Rioja (La)	0
Ledesma de la Cogolla	Rioja (La)	0
Leiva	Rioja (La)	0
Leza de Río Leza	Rioja (La)	0
Logroño	Rioja (La)	0
Lumbreras	Rioja (La)	0
Manjarrés	Rioja (La)	0
Mansilla de la Sierra	Rioja (La)	0
Manzanares de Rioja	Rioja (La)	0
Matute	Rioja (La)	0
Medrano	Rioja (La)	0
Munilla	Rioja (La)	0
Murillo de Río Leza	Rioja (La)	0
Muro de Aguas	Rioja (La)	0
Muro en Cameros	Rioja (La)	0
Nájera	Rioja (La)	0
Nalda	Rioja (La)	0
Navajún	Rioja (La)	0
Navarrete	Rioja (La)	0
Nestares	Rioja (La)	0
Nieva de Cameros	Rioja (La)	0
Ocón	Rioja (La)	0
Ochánduri	Rioja (La)	0
Ojacastro	Rioja (La)	0
Ollauri	Rioja (La)	0
Ortigosa de Cameros	Rioja (La)	0
Pazuengos	Rioja (La)	0
Pedroso	Rioja (La)	0
Pinillos	Rioja (La)	0
Pradejón	Rioja (La)	0
Pradillo	Rioja (La)	0
Préjano	Rioja (La)	0
Quel	Rioja (La)	0
Rabanera	Rioja (La)	0
Rasillo de Cameros, El	Rioja (La)	0
Redal, El	Rioja (La)	0
Ribafrecha	Rioja (La)	0
Rincón de Soto	Rioja (La)	0
Robres del Castillo	Rioja (La)	0
Rodezno	Rioja (La)	0
Sajazarra	Rioja (La)	0
San Asensio	Rioja (La)	0
San Millán de la Cogolla	Rioja (La)	0
San Millán de Yécora	Rioja (La)	0
San Román de Cameros	Rioja (La)	0
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
Sotés	Rioja (La)	0
Soto en Cameros	Rioja (La)	0
Terroba	Rioja (La)	0
Tirgo	Rioja (La)	0
Tobía	Rioja (La)	0
Tormantos	Rioja (La)	0
Torrecilla en Cameros	Rioja (La)	0
Torrecilla sobre Alesanco	Rioja (La)	0
Torre en Cameros	Rioja (La)	0
Torremontalbo	Rioja (La)	0
Treviana	Rioja (La)	0
Tricio	Rioja (La)	0
Tudelilla	Rioja (La)	0
Uruñuela	Rioja (La)	0
Valdemadera	Rioja (La)	0
Valgañón	Rioja (La)	0
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
Zarratón	Rioja (La)	0
Zarzosa	Rioja (La)	0
Zorraquín	Rioja (La)	0
Abadín	Lugo	0
Alfoz	Lugo	0
Antas de Ulla	Lugo	0
Baleira	Lugo	0
Barreiros	Lugo	0
Becerreá	Lugo	0
Begonte	Lugo	0
Bóveda	Lugo	0
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
Guntín	Lugo	0
Incio, O	Lugo	0
Xove	Lugo	0
Láncara	Lugo	0
Lourenzá	Lugo	0
Lugo	Lugo	0
Meira	Lugo	0
Mondoñedo	Lugo	0
Monforte de Lemos	Lugo	0
Monterroso	Lugo	0
Muras	Lugo	0
Navia de Suarna	Lugo	0
Negueira de Muñiz	Lugo	0
Nogais, As	Lugo	0
Ourol	Lugo	0
Outeiro de Rei	Lugo	0
Palas de Rei	Lugo	0
Pantón	Lugo	0
Paradela	Lugo	0
Páramo, O	Lugo	0
Pastoriza, A	Lugo	0
Pedrafita do Cebreiro	Lugo	0
Pol	Lugo	0
Pobra do Brollón, A	Lugo	0
Pontenova, A	Lugo	0
Portomarín	Lugo	0
Quiroga	Lugo	0
Ribadeo	Lugo	0
Ribas de Sil	Lugo	0
Ribeira de Piquín	Lugo	0
Riotorto	Lugo	0
Samos	Lugo	0
Rábade	Lugo	0
Sarria	Lugo	0
Saviñao, O	Lugo	0
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
Álamo, El	Madrid	0
Alcalá de Henares	Madrid	0
Alcobendas	Madrid	0
Alcorcón	Madrid	0
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
Carabaña	Madrid	0
Casarrubuelos	Madrid	0
Cenicientos	Madrid	0
Cercedilla	Madrid	0
Cervera de Buitrago	Madrid	0
Ciempozuelos	Madrid	0
Cobeña	Madrid	0
Colmenar del Arroyo	Madrid	0
Colmenar de Oreja	Madrid	0
Colmenarejo	Madrid	0
Colmenar Viejo	Madrid	0
Collado Mediano	Madrid	0
Collado Villalba	Madrid	0
Corpa	Madrid	0
Coslada	Madrid	0
Cubas de la Sagra	Madrid	0
Chapinería	Madrid	0
Chinchón	Madrid	0
Daganzo de Arriba	Madrid	0
Escorial, El	Madrid	0
Estremera	Madrid	0
Fresnedillas de la Oliva	Madrid	0
Fresno de Torote	Madrid	0
Fuenlabrada	Madrid	0
Fuente el Saz de Jarama	Madrid	0
Fuentidueña de Tajo	Madrid	0
Galapagar	Madrid	0
Garganta de los Montes	Madrid	0
Gargantilla del Lozoya y Pinilla de Buitrago	Madrid	0
Gascones	Madrid	0
Getafe	Madrid	0
Griñón	Madrid	0
Guadalix de la Sierra	Madrid	0
Guadarrama	Madrid	0
Hiruela, La	Madrid	0
Horcajo de la Sierra-Aoslos	Madrid	0
Horcajuelo de la Sierra	Madrid	0
Hoyo de Manzanares	Madrid	0
Humanes de Madrid	Madrid	0
Leganés	Madrid	0
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
Morata de Tajuña	Madrid	0
Móstoles	Madrid	0
Navacerrada	Madrid	0
Navalafuente	Madrid	0
Navalagamella	Madrid	0
Navalcarnero	Madrid	0
Navarredonda y San Mamés	Madrid	0
Navas del Rey	Madrid	0
Nuevo Baztán	Madrid	0
Olmeda de las Fuentes	Madrid	0
Orusco de Tajuña	Madrid	0
Paracuellos de Jarama	Madrid	0
Parla	Madrid	0
Patones	Madrid	0
Pedrezuela	Madrid	0
Pelayos de la Presa	Madrid	0
Perales de Tajuña	Madrid	0
Pezuela de las Torres	Madrid	0
Pinilla del Valle	Madrid	0
Pinto	Madrid	0
Piñuécar-Gandullas	Madrid	0
Pozuelo de Alarcón	Madrid	0
Pozuelo del Rey	Madrid	0
Prádena del Rincón	Madrid	0
Puebla de la Sierra	Madrid	0
Quijorna	Madrid	0
Rascafría	Madrid	0
Redueña	Madrid	0
Ribatejada	Madrid	0
Rivas-Vaciamadrid	Madrid	0
Robledillo de la Jara	Madrid	0
Robledo de Chavela	Madrid	0
Robregordo	Madrid	0
Rozas de Madrid, Las	Madrid	0
Rozas de Puerto Real	Madrid	0
San Agustín del Guadalix	Madrid	0
San Fernando de Henares	Madrid	0
San Lorenzo de El Escorial	Madrid	0
San Martín de la Vega	Madrid	0
San Martín de Valdeiglesias	Madrid	0
San Sebastián de los Reyes	Madrid	0
Santa María de la Alameda	Madrid	0
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
Torrejón de Ardoz	Madrid	0
Torrejón de la Calzada	Madrid	0
Torrejón de Velasco	Madrid	0
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
Valdepiélagos	Madrid	0
Valdetorres de Jarama	Madrid	0
Valdilecha	Madrid	0
Valverde de Alcalá	Madrid	0
Velilla de San Antonio	Madrid	0
Vellón, El	Madrid	0
Venturada	Madrid	0
Villaconejos	Madrid	0
Villa del Prado	Madrid	0
Villalbilla	Madrid	0
Villamanrique de Tajo	Madrid	0
Villamanta	Madrid	0
Villamantilla	Madrid	0
Villanueva de la Cañada	Madrid	0
Villanueva del Pardillo	Madrid	0
Villanueva de Perales	Madrid	0
Villar del Olmo	Madrid	0
Villarejo de Salvanés	Madrid	0
Villaviciosa de Odón	Madrid	0
Villavieja del Lozoya	Madrid	0
Zarzalejo	Madrid	0
Lozoyuela-Navas-Sieteiglesias	Madrid	0
Puentes Viejas	Madrid	0
Tres Cantos	Madrid	0
Alameda	Málaga	0
Alcaucín	Málaga	0
Alfarnate	Málaga	0
Alfarnatejo	Málaga	0
Algarrobo	Málaga	0
Algatocín	Málaga	0
Alhaurín de la Torre	Málaga	0
Alhaurín el Grande	Málaga	0
Almáchar	Málaga	0
Almargen	Málaga	0
Almogía	Málaga	0
Álora	Málaga	0
Alozaina	Málaga	0
Alpandeire	Málaga	0
Antequera	Málaga	0
Árchez	Málaga	0
Archidona	Málaga	0
Ardales	Málaga	0
Arenas	Málaga	0
Arriate	Málaga	0
Atajate	Málaga	0
Benadalid	Málaga	0
Benahavís	Málaga	0
Benalauría	Málaga	0
Benalmádena	Málaga	0
Benamargosa	Málaga	0
Benamocarra	Málaga	0
Benaoján	Málaga	0
Benarrabá	Málaga	0
Borge, El	Málaga	0
Burgo, El	Málaga	0
Campillos	Málaga	0
Canillas de Aceituno	Málaga	0
Canillas de Albaida	Málaga	0
Cañete la Real	Málaga	0
Carratraca	Málaga	0
Cartajima	Málaga	0
Cártama	Málaga	0
Casabermeja	Málaga	0
Casarabonela	Málaga	0
Casares	Málaga	0
Coín	Málaga	0
Colmenar	Málaga	0
Comares	Málaga	0
Cómpeta	Málaga	0
Cortes de la Frontera	Málaga	0
Cuevas Bajas	Málaga	0
Cuevas del Becerro	Málaga	0
Cuevas de San Marcos	Málaga	0
Cútar	Málaga	0
Estepona	Málaga	0
Faraján	Málaga	0
Frigiliana	Málaga	0
Fuengirola	Málaga	0
Fuente de Piedra	Málaga	0
Gaucín	Málaga	0
Genalguacil	Málaga	0
Guaro	Málaga	0
Humilladero	Málaga	0
Igualeja	Málaga	0
Istán	Málaga	0
Iznate	Málaga	0
Jimera de Líbar	Málaga	0
Jubrique	Málaga	0
Júzcar	Málaga	0
Macharaviaya	Málaga	0
Málaga	Málaga	0
Manilva	Málaga	0
Marbella	Málaga	0
Mijas	Málaga	0
Moclinejo	Málaga	0
Mollina	Málaga	0
Monda	Málaga	0
Montejaque	Málaga	0
Nerja	Málaga	0
Ojén	Málaga	0
Parauta	Málaga	0
Periana	Málaga	0
Pizarra	Málaga	0
Pujerra	Málaga	0
Rincón de la Victoria	Málaga	0
Riogordo	Málaga	0
Ronda	Málaga	0
Salares	Málaga	0
Sayalonga	Málaga	0
Sedella	Málaga	0
Sierra de Yeguas	Málaga	0
Teba	Málaga	0
Tolox	Málaga	0
Torrox	Málaga	0
Totalán	Málaga	0
Valle de Abdalajís	Málaga	0
Vélez-Málaga	Málaga	0
Villanueva de Algaidas	Málaga	0
Villanueva del Rosario	Málaga	0
Villanueva del Trabuco	Málaga	0
Villanueva de Tapia	Málaga	0
Viñuela	Málaga	0
Yunquera	Málaga	0
Torremolinos	Málaga	0
Villanueva de la Concepción	Málaga	0
Abanilla	Murcia	0
Abarán	Murcia	0
Águilas	Murcia	0
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
Campos del Río	Murcia	0
Caravaca de la Cruz	Murcia	0
Cartagena	Murcia	0
Cehegín	Murcia	0
Ceutí	Murcia	0
Cieza	Murcia	0
Fortuna	Murcia	0
Fuente Álamo de Murcia	Murcia	0
Jumilla	Murcia	0
Librilla	Murcia	0
Lorca	Murcia	0
Lorquí	Murcia	0
Mazarrón	Murcia	0
Molina de Segura	Murcia	0
Moratalla	Murcia	0
Mula	Murcia	0
Murcia	Murcia	0
Ojós	Murcia	0
Pliego	Murcia	0
Puerto Lumbreras	Murcia	0
Ricote	Murcia	0
San Javier	Murcia	0
San Pedro del Pinatar	Murcia	0
Torre-Pacheco	Murcia	0
Torres de Cotillas, Las	Murcia	0
Totana	Murcia	0
Ulea	Murcia	0
Unión, La	Murcia	0
Villanueva del Río Segura	Murcia	0
Yecla	Murcia	0
Santomera	Murcia	0
Alcázares, Los	Murcia	0
Abáigar	Navarra	0
Abárzuza/Abartzuza	Navarra	0
Abaurregaina/Abaurrea Alta	Navarra	0
Abaurrepea/Abaurrea Baja	Navarra	0
Aberin	Navarra	0
Ablitas	Navarra	0
Adiós	Navarra	0
Aguilar de Codés	Navarra	0
Aibar/Oibar	Navarra	0
Altsasu/Alsasua	Navarra	0
Allín/Allin	Navarra	0
Allo	Navarra	0
Améscoa Baja	Navarra	0
Ancín/Antzin	Navarra	0
Andosilla	Navarra	0
Ansoáin/Antsoain	Navarra	0
Anue	Navarra	0
Añorbe	Navarra	0
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
Armañanzas	Navarra	0
Arróniz	Navarra	0
Arruazu	Navarra	0
Artajona	Navarra	0
Artazu	Navarra	0
Atez	Navarra	0
Ayegui/Aiegi	Navarra	0
Azagra	Navarra	0
Azuelo	Navarra	0
Bakaiku	Navarra	0
Barásoain	Navarra	0
Barbarin	Navarra	0
Bargota	Navarra	0
Barillas	Navarra	0
Basaburua	Navarra	0
Baztan	Navarra	0
Beire	Navarra	0
Belascoáin	Navarra	0
Berbinzana	Navarra	0
Bertizarana	Navarra	0
Betelu	Navarra	0
Biurrun-Olcoz	Navarra	0
Buñuel	Navarra	0
Auritz/Burguete	Navarra	0
Burgui/Burgi	Navarra	0
Burlada/Burlata	Navarra	0
Busto, El	Navarra	0
Cabanillas	Navarra	0
Cabredo	Navarra	0
Cadreita	Navarra	0
Caparroso	Navarra	0
Cárcar	Navarra	0
Carcastillo	Navarra	0
Cascante	Navarra	0
Cáseda	Navarra	0
Castejón	Navarra	0
Castillonuevo	Navarra	0
Cintruénigo	Navarra	0
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
Egüés	Navarra	0
Elgorriaga	Navarra	0
Noáin (Valle de Elorz)/Noain (Elortzibar)	Navarra	0
Enériz/Eneritz	Navarra	0
Eratsun	Navarra	0
Ergoiena	Navarra	0
Erro	Navarra	0
Ezcároz/Ezkaroze	Navarra	0
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
Fustiñana	Navarra	0
Galar	Navarra	0
Gallipienzo/Galipentzu	Navarra	0
Gallués/Galoze	Navarra	0
Garaioa	Navarra	0
Garde	Navarra	0
Garínoain	Navarra	0
Garralda	Navarra	0
Genevilla	Navarra	0
Goizueta	Navarra	0
Goñi	Navarra	0
Güesa/Gorza	Navarra	0
Guesálaz/Gesalatz	Navarra	0
Guirguillano	Navarra	0
Huarte/Uharte	Navarra	0
Uharte-Arakil	Navarra	0
Ibargoiti	Navarra	0
Igúzquiza	Navarra	0
Imotz	Navarra	0
Irañeta	Navarra	0
Isaba/Izaba	Navarra	0
Ituren	Navarra	0
Iturmendi	Navarra	0
Iza/Itza	Navarra	0
Izagaondoa	Navarra	0
Izalzu/Itzaltzu	Navarra	0
Jaurrieta	Navarra	0
Javier	Navarra	0
Juslapeña	Navarra	0
Beintza-Labaien	Navarra	0
Lakuntza	Navarra	0
Lana	Navarra	0
Lantz	Navarra	0
Lapoblación	Navarra	0
Larraga	Navarra	0
Larraona	Navarra	0
Larraun	Navarra	0
Lazagurría	Navarra	0
Leache	Navarra	0
Legarda	Navarra	0
Legaria	Navarra	0
Leitza	Navarra	0
Leoz/Leotz	Navarra	0
Lerga	Navarra	0
Lerín	Navarra	0
Lesaka	Navarra	0
Lezáun	Navarra	0
Liédena	Navarra	0
Lizoáin-Arriasgoiti	Navarra	0
Lodosa	Navarra	0
Lónguida/Longida	Navarra	0
Lumbier	Navarra	0
Luquin	Navarra	0
Mañeru	Navarra	0
Marañón	Navarra	0
Marcilla	Navarra	0
Mélida	Navarra	0
Mendavia	Navarra	0
Mendaza	Navarra	0
Mendigorría	Navarra	0
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
Muruzábal	Navarra	0
Navascués/Nabaskoze	Navarra	0
Nazar	Navarra	0
Obanos	Navarra	0
Oco	Navarra	0
Ochagavía/Otsagabia	Navarra	0
Odieta	Navarra	0
Oitz	Navarra	0
Olaibar	Navarra	0
Olazti/Olazagutía	Navarra	0
Olejua	Navarra	0
Olite/Erriberri	Navarra	0
Olóriz/Oloritz	Navarra	0
Cendea de Olza/Oltza Zendea	Navarra	0
Ollo	Navarra	0
Orbaizeta	Navarra	0
Orbara	Navarra	0
Orísoain	Navarra	0
Oronz/Orontze	Navarra	0
Oroz-Betelu/Orotz-Betelu	Navarra	0
Oteiza	Navarra	0
Pamplona/Iruña	Navarra	0
Peralta/Azkoien	Navarra	0
Petilla de Aragón	Navarra	0
Piedramillera	Navarra	0
Pitillas	Navarra	0
Puente la Reina/Gares	Navarra	0
Pueyo	Navarra	0
Ribaforada	Navarra	0
Romanzado	Navarra	0
Roncal/Erronkari	Navarra	0
Orreaga/Roncesvalles	Navarra	0
Sada	Navarra	0
Saldías	Navarra	0
Salinas de Oro/Jaitz	Navarra	0
San Adrián	Navarra	0
Sangüesa/Zangoza	Navarra	0
San Martín de Unx	Navarra	0
Sansol	Navarra	0
Santacara	Navarra	0
Doneztebe/Santesteban	Navarra	0
Sarriés/Sartze	Navarra	0
Sartaguda	Navarra	0
Sesma	Navarra	0
Sorlada	Navarra	0
Sunbilla	Navarra	0
Tafalla	Navarra	0
Tiebas-Muruarte de Reta	Navarra	0
Tirapu	Navarra	0
Torralba del Río	Navarra	0
Torres del Río	Navarra	0
Tudela	Navarra	0
Tulebras	Navarra	0
Ucar	Navarra	0
Ujué	Navarra	0
Ultzama	Navarra	0
Unciti	Navarra	0
Unzué/Untzue	Navarra	0
Urdazubi/Urdax	Navarra	0
Urdiain	Navarra	0
Urraul Alto	Navarra	0
Urraul Bajo	Navarra	0
Urroz-Villa	Navarra	0
Urrotz	Navarra	0
Urzainqui/Urzainki	Navarra	0
Uterga	Navarra	0
Uztárroz/Uztarroze	Navarra	0
Luzaide/Valcarlos	Navarra	0
Valtierra	Navarra	0
Bera	Navarra	0
Viana	Navarra	0
Vidángoz/Bidankoze	Navarra	0
Bidaurreta	Navarra	0
Villafranca	Navarra	0
Villamayor de Monjardín	Navarra	0
Hiriberri/Villanueva de Aezkoa	Navarra	0
Villatuerta	Navarra	0
Villava/Atarrabia	Navarra	0
Igantzi	Navarra	0
Valle de Yerri/Deierri	Navarra	0
Yesa	Navarra	0
Zabalza/Zabaltza	Navarra	0
Zubieta	Navarra	0
Zugarramurdi	Navarra	0
Zúñiga	Navarra	0
Barañain	Navarra	0
Berrioplano/Berriobeiti	Navarra	0
Berriozar	Navarra	0
Irurtzun	Navarra	0
Beriáin	Navarra	0
Orkoien	Navarra	0
Zizur Mayor/Zizur Nagusia	Navarra	0
Lekunberri	Navarra	0
Allariz	Ourense	0
Amoeiro	Ourense	0
Arnoia, A	Ourense	0
Avión	Ourense	0
Baltar	Ourense	0
Bande	Ourense	0
Baños de Molgas	Ourense	0
Barbadás	Ourense	0
Barco de Valdeorras, O	Ourense	0
Beade	Ourense	0
Beariz	Ourense	0
Blancos, Os	Ourense	0
Boborás	Ourense	0
Bola, A	Ourense	0
Bolo, O	Ourense	0
Calvos de Randín	Ourense	0
Carballeda de Valdeorras	Ourense	0
Carballeda de Avia	Ourense	0
Carballiño, O	Ourense	0
Cartelle	Ourense	0
Castrelo do Val	Ourense	0
Castrelo de Miño	Ourense	0
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
Gudiña, A	Ourense	0
Irixo, O	Ourense	0
Xunqueira de Ambía	Ourense	0
Xunqueira de Espadanedo	Ourense	0
Larouco	Ourense	0
Laza	Ourense	0
Leiro	Ourense	0
Lobeira	Ourense	0
Lobios	Ourense	0
Maceda	Ourense	0
Manzaneda	Ourense	0
Maside	Ourense	0
Melón	Ourense	0
Merca, A	Ourense	0
Mezquita, A	Ourense	0
Montederramo	Ourense	0
Monterrei	Ourense	0
Muíños	Ourense	0
Nogueira de Ramuín	Ourense	0
Oímbra	Ourense	0
Ourense	Ourense	0
Paderne de Allariz	Ourense	0
Padrenda	Ourense	0
Parada de Sil	Ourense	0
Pereiro de Aguiar, O	Ourense	0
Peroxa, A	Ourense	0
Petín	Ourense	0
Piñor	Ourense	0
Porqueira	Ourense	0
Pobra de Trives, A	Ourense	0
Pontedeva	Ourense	0
Punxín	Ourense	0
Quintela de Leirado	Ourense	0
Rairiz de Veiga	Ourense	0
Ramirás	Ourense	0
Ribadavia	Ourense	0
San Xoán de Río	Ourense	0
Riós	Ourense	0
Rúa, A	Ourense	0
Rubiá	Ourense	0
San Amaro	Ourense	0
San Cibrao das Viñas	Ourense	0
San Cristovo de Cea	Ourense	0
Sandiás	Ourense	0
Sarreaus	Ourense	0
Taboadela	Ourense	0
Teixeira, A	Ourense	0
Toén	Ourense	0
Trasmiras	Ourense	0
Veiga, A	Ourense	0
Verea	Ourense	0
Verín	Ourense	0
Viana do Bolo	Ourense	0
Vilamarín	Ourense	0
Vilamartín de Valdeorras	Ourense	0
Vilar de Barrio	Ourense	0
Vilar de Santos	Ourense	0
Vilardevós	Ourense	0
Vilariño de Conso	Ourense	0
Allande	Asturias	0
Aller	Asturias	0
Amieva	Asturias	0
Avilés	Asturias	0
Belmonte de Miranda	Asturias	0
Bimenes	Asturias	0
Boal	Asturias	0
Cabrales	Asturias	0
Cabranes	Asturias	0
Candamo	Asturias	0
Cangas del Narcea	Asturias	0
Cangas de Onís	Asturias	0
Caravia	Asturias	0
Carreño	Asturias	0
Caso	Asturias	0
Castrillón	Asturias	0
Castropol	Asturias	0
Coaña	Asturias	0
Colunga	Asturias	0
Corvera de Asturias	Asturias	0
Cudillero	Asturias	0
Degaña	Asturias	0
Franco, El	Asturias	0
Gijón	Asturias	0
Gozón	Asturias	0
Grado	Asturias	0
Grandas de Salime	Asturias	0
Ibias	Asturias	0
Illano	Asturias	0
Illas	Asturias	0
Langreo	Asturias	0
Laviana	Asturias	0
Lena	Asturias	0
Valdés	Asturias	0
Llanera	Asturias	0
Llanes	Asturias	0
Mieres	Asturias	0
Morcín	Asturias	0
Muros de Nalón	Asturias	0
Nava	Asturias	0
Navia	Asturias	0
Noreña	Asturias	0
Onís	Asturias	0
Oviedo	Asturias	0
Parres	Asturias	0
Peñamellera Alta	Asturias	0
Peñamellera Baja	Asturias	0
Pesoz	Asturias	0
Piloña	Asturias	0
Ponga	Asturias	0
Pravia	Asturias	0
Proaza	Asturias	0
Quirós	Asturias	0
Regueras, Las	Asturias	0
Ribadedeva	Asturias	0
Ribadesella	Asturias	0
Ribera de Arriba	Asturias	0
Riosa	Asturias	0
Salas	Asturias	0
San Martín del Rey Aurelio	Asturias	0
San Martín de Oscos	Asturias	0
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
Villayón	Asturias	0
Yernes y Tameza	Asturias	0
Abarca de Campos	Palencia	0
Abia de las Torres	Palencia	0
Aguilar de Campoo	Palencia	0
Alar del Rey	Palencia	0
Alba de Cerrato	Palencia	0
Amayuelas de Arriba	Palencia	0
Ampudia	Palencia	0
Amusco	Palencia	0
Antigüedad	Palencia	0
Arconada	Palencia	0
Astudillo	Palencia	0
Autilla del Pino	Palencia	0
Autillo de Campos	Palencia	0
Ayuela	Palencia	0
Baltanás	Palencia	0
Venta de Baños	Palencia	0
Baquerín de Campos	Palencia	0
Bárcena de Campos	Palencia	0
Barruelo de Santullán	Palencia	0
Báscones de Ojeda	Palencia	0
Becerril de Campos	Palencia	0
Belmonte de Campos	Palencia	0
Berzosilla	Palencia	0
Boada de Campos	Palencia	0
Boadilla del Camino	Palencia	0
Boadilla de Rioseco	Palencia	0
Brañosera	Palencia	0
Buenavista de Valdavia	Palencia	0
Bustillo de la Vega	Palencia	0
Bustillo del Páramo de Carrión	Palencia	0
Calahorra de Boedo	Palencia	0
Calzada de los Molinos	Palencia	0
Capillas	Palencia	0
Cardeñosa de Volpejera	Palencia	0
Carrión de los Condes	Palencia	0
Castil de Vela	Palencia	0
Castrejón de la Peña	Palencia	0
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
Dueñas	Palencia	0
Espinosa de Cerrato	Palencia	0
Espinosa de Villagonzalo	Palencia	0
Frechilla	Palencia	0
Fresno del Río	Palencia	0
Frómista	Palencia	0
Fuentes de Nava	Palencia	0
Fuentes de Valdepero	Palencia	0
Grijota	Palencia	0
Guardo	Palencia	0
Guaza de Campos	Palencia	0
Hérmedes de Cerrato	Palencia	0
Herrera de Pisuerga	Palencia	0
Herrera de Valdecañas	Palencia	0
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
Monzón de Campos	Palencia	0
Moratinos	Palencia	0
Mudá	Palencia	0
Nogal de las Huertas	Palencia	0
Olea de Boedo	Palencia	0
Olmos de Ojeda	Palencia	0
Osornillo	Palencia	0
Palencia	Palencia	0
Palenzuela	Palencia	0
Páramo de Boedo	Palencia	0
Paredes de Nava	Palencia	0
Payo de Ojeda	Palencia	0
Pedraza de Campos	Palencia	0
Pedrosa de la Vega	Palencia	0
Perales	Palencia	0
Pino del Río	Palencia	0
Piña de Campos	Palencia	0
Población de Arroyo	Palencia	0
Población de Campos	Palencia	0
Población de Cerrato	Palencia	0
Polentinos	Palencia	0
Pomar de Valdivia	Palencia	0
Poza de la Vega	Palencia	0
Pozo de Urama	Palencia	0
Prádanos de Ojeda	Palencia	0
Puebla de Valdavia, La	Palencia	0
Quintana del Puente	Palencia	0
Quintanilla de Onsoña	Palencia	0
Reinoso de Cerrato	Palencia	0
Renedo de la Vega	Palencia	0
Requena de Campos	Palencia	0
Respenda de la Peña	Palencia	0
Revenga de Campos	Palencia	0
Revilla de Collazos	Palencia	0
Ribas de Campos	Palencia	0
Riberos de la Cueza	Palencia	0
Saldaña	Palencia	0
Salinas de Pisuerga	Palencia	0
San Cebrián de Campos	Palencia	0
San Cebrián de Mudá	Palencia	0
San Cristóbal de Boedo	Palencia	0
San Mamés de Campos	Palencia	0
San Román de la Cuba	Palencia	0
Santa Cecilia del Alcor	Palencia	0
Santa Cruz de Boedo	Palencia	0
Santervás de la Vega	Palencia	0
Santibáñez de Ecla	Palencia	0
Santibáñez de la Peña	Palencia	0
Santoyo	Palencia	0
Serna, La	Palencia	0
Sotobañado y Priorato	Palencia	0
Soto de Cerrato	Palencia	0
Tabanera de Cerrato	Palencia	0
Tabanera de Valdavia	Palencia	0
Támara de Campos	Palencia	0
Tariego de Cerrato	Palencia	0
Torquemada	Palencia	0
Torremormojón	Palencia	0
Triollo	Palencia	0
Valbuena de Pisuerga	Palencia	0
Valdeolmillos	Palencia	0
Valderrábano	Palencia	0
Valde-Ucieza	Palencia	0
Valle de Cerrato	Palencia	0
Velilla del Río Carrión	Palencia	0
Vertavillo	Palencia	0
Villabasta de Valdavia	Palencia	0
Villacidaler	Palencia	0
Villaconancio	Palencia	0
Villada	Palencia	0
Villaeles de Valdavia	Palencia	0
Villahán	Palencia	0
Villaherreros	Palencia	0
Villalaco	Palencia	0
Villalba de Guardo	Palencia	0
Villalcázar de Sirga	Palencia	0
Villalcón	Palencia	0
Villalobón	Palencia	0
Villaluenga de la Vega	Palencia	0
Villamartín de Campos	Palencia	0
Villamediana	Palencia	0
Villameriel	Palencia	0
Villamoronta	Palencia	0
Villamuera de la Cueza	Palencia	0
Villamuriel de Cerrato	Palencia	0
Villanueva del Rebollar	Palencia	0
Villanuño de Valdavia	Palencia	0
Villaprovedo	Palencia	0
Villarmentero de Campos	Palencia	0
Villarrabé	Palencia	0
Villarramiel	Palencia	0
Villasarracino	Palencia	0
Villasila de Valdavia	Palencia	0
Villaturde	Palencia	0
Villaumbrales	Palencia	0
Villaviudas	Palencia	0
Villerías de Campos	Palencia	0
Villodre	Palencia	0
Villodrigo	Palencia	0
Villoldo	Palencia	0
Villota del Páramo	Palencia	0
Villovieco	Palencia	0
Osorno la Mayor	Palencia	0
Valle del Retortillo	Palencia	0
Loma de Ucieza	Palencia	0
Pernía, La	Palencia	0
Agaete	Palmas (Las)	0
Agüimes	Palmas (Las)	0
Antigua	Palmas (Las)	0
Arrecife	Palmas (Las)	0
Artenara	Palmas (Las)	0
Arucas	Palmas (Las)	0
Betancuria	Palmas (Las)	0
Firgas	Palmas (Las)	0
Gáldar	Palmas (Las)	0
Haría	Palmas (Las)	0
Ingenio	Palmas (Las)	0
Mogán	Palmas (Las)	0
Moya	Palmas (Las)	0
Oliva, La	Palmas (Las)	0
Pájara	Palmas (Las)	0
Palmas de Gran Canaria, Las	Palmas (Las)	0
Puerto del Rosario	Palmas (Las)	0
San Bartolomé	Palmas (Las)	0
San Bartolomé de Tirajana	Palmas (Las)	0
Aldea de San Nicolás, La	Palmas (Las)	0
Santa Brígida	Palmas (Las)	0
Santa Lucía de Tirajana	Palmas (Las)	0
Santa María de Guía de Gran Canaria	Palmas (Las)	0
Teguise	Palmas (Las)	0
Tejeda	Palmas (Las)	0
Telde	Palmas (Las)	0
Teror	Palmas (Las)	0
Tías	Palmas (Las)	0
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
Cañiza, A	Pontevedra	0
Catoira	Pontevedra	0
Cerdedo	Pontevedra	0
Cotobade	Pontevedra	0
Covelo	Pontevedra	0
Crecente	Pontevedra	0
Cuntis	Pontevedra	0
Dozón	Pontevedra	0
Estrada, A	Pontevedra	0
Forcarei	Pontevedra	0
Fornelos de Montes	Pontevedra	0
Agolada	Pontevedra	0
Gondomar	Pontevedra	0
Grove, O	Pontevedra	0
Guarda, A	Pontevedra	0
Lalín	Pontevedra	0
Lama, A	Pontevedra	0
Marín	Pontevedra	0
Meaño	Pontevedra	0
Meis	Pontevedra	0
Moaña	Pontevedra	0
Mondariz	Pontevedra	0
Mondariz-Balneario	Pontevedra	0
Moraña	Pontevedra	0
Mos	Pontevedra	0
Neves, As	Pontevedra	0
Nigrán	Pontevedra	0
Oia	Pontevedra	0
Pazos de Borbén	Pontevedra	0
Pontevedra	Pontevedra	0
Porriño, O	Pontevedra	0
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
Salvaterra de Miño	Pontevedra	0
Sanxenxo	Pontevedra	0
Silleda	Pontevedra	0
Soutomaior	Pontevedra	0
Tomiño	Pontevedra	0
Tui	Pontevedra	0
Valga	Pontevedra	0
Vigo	Pontevedra	0
Vilaboa	Pontevedra	0
Vila de Cruces	Pontevedra	0
Vilagarcía de Arousa	Pontevedra	0
Vilanova de Arousa	Pontevedra	0
Illa de Arousa, A	Pontevedra	0
Abusejo	Salamanca	0
Agallas	Salamanca	0
Ahigal de los Aceiteros	Salamanca	0
Ahigal de Villarino	Salamanca	0
Alameda de Gardón, La	Salamanca	0
Alamedilla, La	Salamanca	0
Alaraz	Salamanca	0
Alba de Tormes	Salamanca	0
Alba de Yeltes	Salamanca	0
Alberca, La	Salamanca	0
Alberguería de Argañán, La	Salamanca	0
Alconada	Salamanca	0
Aldeacipreste	Salamanca	0
Aldeadávila de la Ribera	Salamanca	0
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
Aldehuela de la Bóveda	Salamanca	0
Aldehuela de Yeltes	Salamanca	0
Almenara de Tormes	Salamanca	0
Almendra	Salamanca	0
Anaya de Alba	Salamanca	0
Añover de Tormes	Salamanca	0
Arabayona de Mógica	Salamanca	0
Arapiles	Salamanca	0
Arcediano	Salamanca	0
Arco, El	Salamanca	0
Armenteros	Salamanca	0
San Miguel del Robledo	Salamanca	0
Atalaya, La	Salamanca	0
Babilafuente	Salamanca	0
Bañobárez	Salamanca	0
Barbadillo	Salamanca	0
Barbalos	Salamanca	0
Barceo	Salamanca	0
Barruecopardo	Salamanca	0
Bastida, La	Salamanca	0
Béjar	Salamanca	0
Beleña	Salamanca	0
Bermellar	Salamanca	0
Berrocal de Huebra	Salamanca	0
Berrocal de Salvatierra	Salamanca	0
Boada	Salamanca	0
Bodón, El	Salamanca	0
Bogajo	Salamanca	0
Bouza, La	Salamanca	0
Bóveda del Río Almar	Salamanca	0
Brincones	Salamanca	0
Buenamadre	Salamanca	0
Buenavista	Salamanca	0
Cabaco, El	Salamanca	0
Cabezabellosa de la Calzada	Salamanca	0
Cabeza de Béjar, La	Salamanca	0
Cabeza del Caballo	Salamanca	0
Cabrerizos	Salamanca	0
Cabrillas	Salamanca	0
Calvarrasa de Abajo	Salamanca	0
Calvarrasa de Arriba	Salamanca	0
Calzada de Béjar, La	Salamanca	0
Calzada de Don Diego	Salamanca	0
Calzada de Valdunciel	Salamanca	0
Campillo de Azaba	Salamanca	0
Campo de Peñaranda, El	Salamanca	0
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
Castillejo de Martín Viejo	Salamanca	0
Castraz	Salamanca	0
Cepeda	Salamanca	0
Cereceda de la Sierra	Salamanca	0
Cerezal de Peñahorcada	Salamanca	0
Cerralbo	Salamanca	0
Cerro, El	Salamanca	0
Cespedosa de Tormes	Salamanca	0
Cilleros de la Bastida	Salamanca	0
Cipérez	Salamanca	0
Ciudad Rodrigo	Salamanca	0
Coca de Alba	Salamanca	0
Colmenar de Montemayor	Salamanca	0
Cordovilla	Salamanca	0
Cristóbal	Salamanca	0
Cubo de Don Sancho, El	Salamanca	0
Chagarcía Medianero	Salamanca	0
Dios le Guarde	Salamanca	0
Doñinos de Ledesma	Salamanca	0
Doñinos de Salamanca	Salamanca	0
Ejeme	Salamanca	0
Encina, La	Salamanca	0
Encina de San Silvestre	Salamanca	0
Encinas de Abajo	Salamanca	0
Encinas de Arriba	Salamanca	0
Encinasola de los Comendadores	Salamanca	0
Endrinal	Salamanca	0
Escurial de la Sierra	Salamanca	0
Espadaña	Salamanca	0
Espeja	Salamanca	0
Espino de la Orbada	Salamanca	0
Florida de Liébana	Salamanca	0
Forfoleda	Salamanca	0
Frades de la Sierra	Salamanca	0
Fregeneda, La	Salamanca	0
Fresnedoso	Salamanca	0
Fresno Alhándiga	Salamanca	0
Fuente de San Esteban, La	Salamanca	0
Fuenteguinaldo	Salamanca	0
Fuenteliante	Salamanca	0
Fuenterroble de Salvatierra	Salamanca	0
Fuentes de Béjar	Salamanca	0
Fuentes de Oñoro	Salamanca	0
Gajates	Salamanca	0
Galindo y Perahuy	Salamanca	0
Galinduste	Salamanca	0
Galisancho	Salamanca	0
Gallegos de Argañán	Salamanca	0
Gallegos de Solmirón	Salamanca	0
Garcibuey	Salamanca	0
Garcihernández	Salamanca	0
Garcirrey	Salamanca	0
Gejuelo del Barro	Salamanca	0
Golpejas	Salamanca	0
Gomecello	Salamanca	0
Guadramiro	Salamanca	0
Guijo de Ávila	Salamanca	0
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
Linares de Riofrío	Salamanca	0
Lumbrales	Salamanca	0
Macotera	Salamanca	0
Machacón	Salamanca	0
Madroñal	Salamanca	0
Maíllo, El	Salamanca	0
Malpartida	Salamanca	0
Mancera de Abajo	Salamanca	0
Manzano, El	Salamanca	0
Martiago	Salamanca	0
Martinamor	Salamanca	0
Martín de Yeltes	Salamanca	0
Masueco	Salamanca	0
Castellanos de Villiquera	Salamanca	0
Mata de Ledesma, La	Salamanca	0
Matilla de los Caños del Río	Salamanca	0
Maya, La	Salamanca	0
Membribe de la Sierra	Salamanca	0
Mieza	Salamanca	0
Milano, El	Salamanca	0
Miranda de Azán	Salamanca	0
Miranda del Castañar	Salamanca	0
Mogarraz	Salamanca	0
Molinillo	Salamanca	0
Monforte de la Sierra	Salamanca	0
Monleón	Salamanca	0
Monleras	Salamanca	0
Monsagro	Salamanca	0
Montejo	Salamanca	0
Montemayor del Río	Salamanca	0
Monterrubio de Armuña	Salamanca	0
Monterrubio de la Sierra	Salamanca	0
Morasverdes	Salamanca	0
Morille	Salamanca	0
Moríñigo	Salamanca	0
Moriscos	Salamanca	0
Moronta	Salamanca	0
Mozárbez	Salamanca	0
Narros de Matalayegua	Salamanca	0
Navacarros	Salamanca	0
Nava de Béjar	Salamanca	0
Nava de Francia	Salamanca	0
Nava de Sotrobal	Salamanca	0
Navales	Salamanca	0
Navalmoral de Béjar	Salamanca	0
Navamorales	Salamanca	0
Navarredonda de la Rinconada	Salamanca	0
Navasfrías	Salamanca	0
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
Pedroso de la Armuña, El	Salamanca	0
Pelabravo	Salamanca	0
Pelarrodríguez	Salamanca	0
Pelayos	Salamanca	0
Peña, La	Salamanca	0
Peñacaballera	Salamanca	0
Peñaparda	Salamanca	0
Peñaranda de Bracamonte	Salamanca	0
Peñarandilla	Salamanca	0
Peralejos de Abajo	Salamanca	0
Peralejos de Arriba	Salamanca	0
Pereña de la Ribera	Salamanca	0
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
Puerto de Béjar	Salamanca	0
Puerto Seguro	Salamanca	0
Rágama	Salamanca	0
Redonda, La	Salamanca	0
Retortillo	Salamanca	0
Rinconada de la Sierra, La	Salamanca	0
Robleda	Salamanca	0
Robliza de Cojos	Salamanca	0
Rollán	Salamanca	0
Saelices el Chico	Salamanca	0
Sagrada, La	Salamanca	0
Salamanca	Salamanca	0
Saldeana	Salamanca	0
Salmoral	Salamanca	0
Salvatierra de Tormes	Salamanca	0
San Cristóbal de la Cuesta	Salamanca	0
Sancti-Spíritus	Salamanca	0
Sanchón de la Ribera	Salamanca	0
Sanchón de la Sagrada	Salamanca	0
Sanchotello	Salamanca	0
Sando	Salamanca	0
San Esteban de la Sierra	Salamanca	0
San Felices de los Gallegos	Salamanca	0
San Martín del Castañar	Salamanca	0
San Miguel de Valero	Salamanca	0
San Morales	Salamanca	0
San Muñoz	Salamanca	0
San Pedro del Valle	Salamanca	0
San Pedro de Rozados	Salamanca	0
San Pelayo de Guareña	Salamanca	0
Santa María de Sando	Salamanca	0
Santa Marta de Tormes	Salamanca	0
Santiago de la Puebla	Salamanca	0
Santibáñez de Béjar	Salamanca	0
Santibáñez de la Sierra	Salamanca	0
Santiz	Salamanca	0
Santos, Los	Salamanca	0
Sardón de los Frailes	Salamanca	0
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
Tarazona de Guareña	Salamanca	0
Tardáguila	Salamanca	0
Tejado, El	Salamanca	0
Tejeda y Segoyuela	Salamanca	0
Tenebrón	Salamanca	0
Terradillos	Salamanca	0
Topas	Salamanca	0
Tordillos	Salamanca	0
Tornadizo, El	Salamanca	0
Torresmenudas	Salamanca	0
Trabanca	Salamanca	0
Tremedal de Tormes	Salamanca	0
Valdecarros	Salamanca	0
Valdefuentes de Sangusín	Salamanca	0
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
Valverdón	Salamanca	0
Vallejera de Riofrío	Salamanca	0
Vecinos	Salamanca	0
Vega de Tirados	Salamanca	0
Veguillas, Las	Salamanca	0
Vellés, La	Salamanca	0
Ventosa del Río Almar	Salamanca	0
Vídola, La	Salamanca	0
Vilvestre	Salamanca	0
Villaflores	Salamanca	0
Villagonzalo de Tormes	Salamanca	0
Villalba de los Llanos	Salamanca	0
Villamayor	Salamanca	0
Villanueva del Conde	Salamanca	0
Villar de Argañán	Salamanca	0
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
Villaverde de Guareña	Salamanca	0
Villavieja de Yeltes	Salamanca	0
Villoria	Salamanca	0
Villoruela	Salamanca	0
Vitigudino	Salamanca	0
Yecla de Yeltes	Salamanca	0
Zamarra	Salamanca	0
Zamayón	Salamanca	0
Zarapicos	Salamanca	0
Zarza de Pumareda, La	Salamanca	0
Zorita de la Frontera	Salamanca	0
Adeje	Santa Cruz de Tenerife	0
Agulo	Santa Cruz de Tenerife	0
Alajeró	Santa Cruz de Tenerife	0
Arafo	Santa Cruz de Tenerife	0
Arico	Santa Cruz de Tenerife	0
Arona	Santa Cruz de Tenerife	0
Barlovento	Santa Cruz de Tenerife	0
Breña Alta	Santa Cruz de Tenerife	0
Breña Baja	Santa Cruz de Tenerife	0
Buenavista del Norte	Santa Cruz de Tenerife	0
Candelaria	Santa Cruz de Tenerife	0
Fasnia	Santa Cruz de Tenerife	0
Frontera	Santa Cruz de Tenerife	0
Fuencaliente de la Palma	Santa Cruz de Tenerife	0
Garachico	Santa Cruz de Tenerife	0
Garafía	Santa Cruz de Tenerife	0
Granadilla de Abona	Santa Cruz de Tenerife	0
Guancha, La	Santa Cruz de Tenerife	0
Guía de Isora	Santa Cruz de Tenerife	0
Güímar	Santa Cruz de Tenerife	0
Hermigua	Santa Cruz de Tenerife	0
Icod de los Vinos	Santa Cruz de Tenerife	0
San Cristóbal de La Laguna	Santa Cruz de Tenerife	0
Llanos de Aridane, Los	Santa Cruz de Tenerife	0
Matanza de Acentejo, La	Santa Cruz de Tenerife	0
Orotava, La	Santa Cruz de Tenerife	0
Paso, El	Santa Cruz de Tenerife	0
Puerto de la Cruz	Santa Cruz de Tenerife	0
Puntagorda	Santa Cruz de Tenerife	0
Puntallana	Santa Cruz de Tenerife	0
Realejos, Los	Santa Cruz de Tenerife	0
Rosario, El	Santa Cruz de Tenerife	0
San Andrés y Sauces	Santa Cruz de Tenerife	0
San Juan de la Rambla	Santa Cruz de Tenerife	0
San Miguel de Abona	Santa Cruz de Tenerife	0
San Sebastián de la Gomera	Santa Cruz de Tenerife	0
Santa Cruz de la Palma	Santa Cruz de Tenerife	0
Santa Cruz de Tenerife	Santa Cruz de Tenerife	0
Santa Úrsula	Santa Cruz de Tenerife	0
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
Arenas de Iguña	Cantabria	0
Argoños	Cantabria	0
Arnuero	Cantabria	0
Arredondo	Cantabria	0
Astillero, El	Cantabria	0
Bárcena de Cicero	Cantabria	0
Bárcena de Pie de Concha	Cantabria	0
Bareyo	Cantabria	0
Cabezón de la Sal	Cantabria	0
Cabezón de Liébana	Cantabria	0
Cabuérniga	Cantabria	0
Camaleño	Cantabria	0
Camargo	Cantabria	0
Campoo de Yuso	Cantabria	0
Cartes	Cantabria	0
Castañeda	Cantabria	0
Castro-Urdiales	Cantabria	0
Cieza	Cantabria	0
Cillorigo de Liébana	Cantabria	0
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
Herrerías	Cantabria	0
Lamasón	Cantabria	0
Laredo	Cantabria	0
Liendo	Cantabria	0
Liérganes	Cantabria	0
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
Peñarrubia	Cantabria	0
Pesaguero	Cantabria	0
Pesquera	Cantabria	0
Piélagos	Cantabria	0
Polaciones	Cantabria	0
Polanco	Cantabria	0
Potes	Cantabria	0
Puente Viesgo	Cantabria	0
Ramales de la Victoria	Cantabria	0
Rasines	Cantabria	0
Reinosa	Cantabria	0
Reocín	Cantabria	0
Ribamontán al Mar	Cantabria	0
Ribamontán al Monte	Cantabria	0
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
Santa María de Cayón	Cantabria	0
Santander	Cantabria	0
Santillana del Mar	Cantabria	0
Santiurde de Reinosa	Cantabria	0
Santiurde de Toranzo	Cantabria	0
Santoña	Cantabria	0
San Vicente de la Barquera	Cantabria	0
Saro	Cantabria	0
Selaya	Cantabria	0
Soba	Cantabria	0
Solórzano	Cantabria	0
Suances	Cantabria	0
Tojos, Los	Cantabria	0
Torrelavega	Cantabria	0
Tresviso	Cantabria	0
Tudanca	Cantabria	0
Udías	Cantabria	0
Valdáliga	Cantabria	0
Valdeolea	Cantabria	0
Valdeprado del Río	Cantabria	0
Valderredible	Cantabria	0
Val de San Vicente	Cantabria	0
Vega de Liébana	Cantabria	0
Vega de Pas	Cantabria	0
Villacarriedo	Cantabria	0
Villaescusa	Cantabria	0
Villafufre	Cantabria	0
Valle de Villaverde	Cantabria	0
Voto	Cantabria	0
Abades	Segovia	0
Adrada de Pirón	Segovia	0
Adrados	Segovia	0
Aguilafuente	Segovia	0
Alconada de Maderuelo	Segovia	0
Aldealcorvo	Segovia	0
Aldealengua de Pedraza	Segovia	0
Aldealengua de Santa María	Segovia	0
Aldeanueva de la Serrezuela	Segovia	0
Aldeanueva del Codonal	Segovia	0
Aldea Real	Segovia	0
Aldeasoña	Segovia	0
Aldehorno	Segovia	0
Aldehuela del Codonal	Segovia	0
Aldeonte	Segovia	0
Anaya	Segovia	0
Añe	Segovia	0
Arahuetes	Segovia	0
Arcones	Segovia	0
Arevalillo de Cega	Segovia	0
Armuña	Segovia	0
Ayllón	Segovia	0
Barbolla	Segovia	0
Basardilla	Segovia	0
Bercial	Segovia	0
Bercimuel	Segovia	0
Bernardos	Segovia	0
Bernuy de Porreros	Segovia	0
Boceguillas	Segovia	0
Brieva	Segovia	0
Caballar	Segovia	0
Cabañas de Polendos	Segovia	0
Cabezuela	Segovia	0
Calabazas de Fuentidueña	Segovia	0
Campo de San Pedro	Segovia	0
Cantalejo	Segovia	0
Cantimpalos	Segovia	0
Carbonero el Mayor	Segovia	0
Carrascal del Río	Segovia	0
Casla	Segovia	0
Castillejo de Mesleón	Segovia	0
Castro de Fuentidueña	Segovia	0
Castrojimeno	Segovia	0
Castroserna de Abajo	Segovia	0
Castroserracín	Segovia	0
Cedillo de la Torre	Segovia	0
Cerezo de Abajo	Segovia	0
Cerezo de Arriba	Segovia	0
Cilleruelo de San Mamés	Segovia	0
Cobos de Fuentidueña	Segovia	0
Coca	Segovia	0
Codorniz	Segovia	0
Collado Hermoso	Segovia	0
Condado de Castilnovo	Segovia	0
Corral de Ayllón	Segovia	0
Cubillo	Segovia	0
Cuéllar	Segovia	0
Chañe	Segovia	0
Domingo García	Segovia	0
Donhierro	Segovia	0
Duruelo	Segovia	0
Encinas	Segovia	0
Encinillas	Segovia	0
Escalona del Prado	Segovia	0
Escarabajosa de Cabezas	Segovia	0
Escobar de Polendos	Segovia	0
Espinar, El	Segovia	0
Espirdo	Segovia	0
Fresneda de Cuéllar	Segovia	0
Fresno de Cantespino	Segovia	0
Fresno de la Fuente	Segovia	0
Frumales	Segovia	0
Fuente de Santa Cruz	Segovia	0
Fuente el Olmo de Fuentidueña	Segovia	0
Fuente el Olmo de Íscar	Segovia	0
Fuentepelayo	Segovia	0
Fuentepiñel	Segovia	0
Fuenterrebollo	Segovia	0
Fuentesaúco de Fuentidueña	Segovia	0
Fuentesoto	Segovia	0
Fuentidueña	Segovia	0
Gallegos	Segovia	0
Garcillán	Segovia	0
Gomezserracín	Segovia	0
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
Lastras de Cuéllar	Segovia	0
Lastras del Pozo	Segovia	0
Lastrilla, La	Segovia	0
Losa, La	Segovia	0
Maderuelo	Segovia	0
Marazuela	Segovia	0
Martín Miguel	Segovia	0
Martín Muñoz de la Dehesa	Segovia	0
Martín Muñoz de las Posadas	Segovia	0
Marugán	Segovia	0
Matabuena	Segovia	0
Mata de Cuéllar	Segovia	0
Matilla, La	Segovia	0
Melque de Cercos	Segovia	0
Membibre de la Hoz	Segovia	0
Migueláñez	Segovia	0
Montejo de Arévalo	Segovia	0
Montejo de la Vega de la Serrezuela	Segovia	0
Monterrubio	Segovia	0
Moral de Hornuez	Segovia	0
Mozoncillo	Segovia	0
Muñopedro	Segovia	0
Muñoveros	Segovia	0
Nava de la Asunción	Segovia	0
Navafría	Segovia	0
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
Ortigosa de Pestaño	Segovia	0
Otero de Herreros	Segovia	0
Pajarejos	Segovia	0
Palazuelos de Eresma	Segovia	0
Pedraza	Segovia	0
Pelayos del Arroyo	Segovia	0
Perosillo	Segovia	0
Pinarejos	Segovia	0
Pinarnegrillo	Segovia	0
Pradales	Segovia	0
Prádena	Segovia	0
Puebla de Pedraza	Segovia	0
Rapariegos	Segovia	0
Rebollo	Segovia	0
Remondo	Segovia	0
Riaguas de San Bartolomé	Segovia	0
Riaza	Segovia	0
Ribota	Segovia	0
Riofrío de Riaza	Segovia	0
Roda de Eresma	Segovia	0
Sacramenia	Segovia	0
Samboal	Segovia	0
San Cristóbal de Cuéllar	Segovia	0
San Cristóbal de la Vega	Segovia	0
Sanchonuño	Segovia	0
Sangarcía	Segovia	0
Real Sitio de San Ildefonso	Segovia	0
San Martín y Mudrián	Segovia	0
San Miguel de Bernuy	Segovia	0
San Pedro de Gaíllos	Segovia	0
Santa María la Real de Nieva	Segovia	0
Santa Marta del Cerro	Segovia	0
Santiuste de Pedraza	Segovia	0
Santiuste de San Juan Bautista	Segovia	0
Santo Domingo de Pirón	Segovia	0
Santo Tomé del Puerto	Segovia	0
Sauquillo de Cabezas	Segovia	0
Sebúlcor	Segovia	0
Segovia	Segovia	0
Sepúlveda	Segovia	0
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
Turégano	Segovia	0
Urueñas	Segovia	0
Valdeprados	Segovia	0
Valdevacas de Montejo	Segovia	0
Valdevacas y Guijar	Segovia	0
Valseca	Segovia	0
Valtiendas	Segovia	0
Valverde del Majano	Segovia	0
Valle de Tabladillo	Segovia	0
Vallelado	Segovia	0
Valleruela de Pedraza	Segovia	0
Valleruela de Sepúlveda	Segovia	0
Veganzones	Segovia	0
Vegas de Matute	Segovia	0
Ventosilla y Tejadilla	Segovia	0
Villacastín	Segovia	0
Villaverde de Íscar	Segovia	0
Villaverde de Montejo	Segovia	0
Villeguillo	Segovia	0
Yanguas de Eresma	Segovia	0
Zarzuela del Monte	Segovia	0
Zarzuela del Pinar	Segovia	0
Ortigosa del Monte	Segovia	0
Cozuelos de Fuentidueña	Segovia	0
Marazoleja	Segovia	0
Navas de Riofrío	Segovia	0
Cuevas de Provanco	Segovia	0
San Cristóbal de Segovia	Segovia	0
Aguadulce	Sevilla	0
Alanís	Sevilla	0
Albaida del Aljarafe	Sevilla	0
Alcalá de Guadaíra	Sevilla	0
Alcalá del Río	Sevilla	0
Alcolea del Río	Sevilla	0
Algaba, La	Sevilla	0
Algámitas	Sevilla	0
Almadén de la Plata	Sevilla	0
Almensilla	Sevilla	0
Arahal	Sevilla	0
Aznalcázar	Sevilla	0
Aznalcóllar	Sevilla	0
Badolatosa	Sevilla	0
Benacazón	Sevilla	0
Bollullos de la Mitación	Sevilla	0
Bormujos	Sevilla	0
Brenes	Sevilla	0
Burguillos	Sevilla	0
Cabezas de San Juan, Las	Sevilla	0
Camas	Sevilla	0
Campana, La	Sevilla	0
Cantillana	Sevilla	0
Carmona	Sevilla	0
Carrión de los Céspedes	Sevilla	0
Casariche	Sevilla	0
Castilblanco de los Arroyos	Sevilla	0
Castilleja de Guzmán	Sevilla	0
Castilleja de la Cuesta	Sevilla	0
Castilleja del Campo	Sevilla	0
Castillo de las Guardas, El	Sevilla	0
Cazalla de la Sierra	Sevilla	0
Constantina	Sevilla	0
Coria del Río	Sevilla	0
Coripe	Sevilla	0
Coronil, El	Sevilla	0
Corrales, Los	Sevilla	0
Dos Hermanas	Sevilla	0
Écija	Sevilla	0
Espartinas	Sevilla	0
Estepa	Sevilla	0
Fuentes de Andalucía	Sevilla	0
Garrobo, El	Sevilla	0
Gelves	Sevilla	0
Gerena	Sevilla	0
Gilena	Sevilla	0
Gines	Sevilla	0
Guadalcanal	Sevilla	0
Guillena	Sevilla	0
Herrera	Sevilla	0
Huévar del Aljarafe	Sevilla	0
Lantejuela, La	Sevilla	0
Lebrija	Sevilla	0
Lora de Estepa	Sevilla	0
Lora del Río	Sevilla	0
Luisiana, La	Sevilla	0
Madroño, El	Sevilla	0
Mairena del Alcor	Sevilla	0
Mairena del Aljarafe	Sevilla	0
Marchena	Sevilla	0
Marinaleda	Sevilla	0
Martín de la Jara	Sevilla	0
Molares, Los	Sevilla	0
Montellano	Sevilla	0
Morón de la Frontera	Sevilla	0
Navas de la Concepción, Las	Sevilla	0
Olivares	Sevilla	0
Osuna	Sevilla	0
Palacios y Villafranca, Los	Sevilla	0
Palomares del Río	Sevilla	0
Paradas	Sevilla	0
Pedrera	Sevilla	0
Pedroso, El	Sevilla	0
Peñaflor	Sevilla	0
Pilas	Sevilla	0
Pruna	Sevilla	0
Puebla de Cazalla, La	Sevilla	0
Puebla de los Infantes, La	Sevilla	0
Puebla del Río, La	Sevilla	0
Real de la Jara, El	Sevilla	0
Rinconada, La	Sevilla	0
Roda de Andalucía, La	Sevilla	0
Ronquillo, El	Sevilla	0
Rubio, El	Sevilla	0
Salteras	Sevilla	0
San Juan de Aznalfarache	Sevilla	0
Sanlúcar la Mayor	Sevilla	0
San Nicolás del Puerto	Sevilla	0
Santiponce	Sevilla	0
Saucejo, El	Sevilla	0
Sevilla	Sevilla	0
Tocina	Sevilla	0
Tomares	Sevilla	0
Umbrete	Sevilla	0
Utrera	Sevilla	0
Valencina de la Concepción	Sevilla	0
Villamanrique de la Condesa	Sevilla	0
Villanueva del Ariscal	Sevilla	0
Villanueva del Río y Minas	Sevilla	0
Villanueva de San Juan	Sevilla	0
Villaverde del Río	Sevilla	0
Viso del Alcor, El	Sevilla	0
Cañada Rosal	Sevilla	0
Isla Mayor	Sevilla	0
Cuervo de Sevilla, El	Sevilla	0
Abejar	Soria	0
Adradas	Soria	0
Ágreda	Soria	0
Alconaba	Soria	0
Alcubilla de Avellaneda	Soria	0
Alcubilla de las Peñas	Soria	0
Aldealafuente	Soria	0
Aldealices	Soria	0
Aldealpozo	Soria	0
Aldealseñor	Soria	0
Aldehuela de Periáñez	Soria	0
Aldehuelas, Las	Soria	0
Alentisque	Soria	0
Aliud	Soria	0
Almajano	Soria	0
Almaluez	Soria	0
Almarza	Soria	0
Almazán	Soria	0
Almazul	Soria	0
Almenar de Soria	Soria	0
Alpanseque	Soria	0
Arancón	Soria	0
Arcos de Jalón	Soria	0
Arenillas	Soria	0
Arévalo de la Sierra	Soria	0
Ausejo de la Sierra	Soria	0
Baraona	Soria	0
Barca	Soria	0
Barcones	Soria	0
Bayubas de Abajo	Soria	0
Bayubas de Arriba	Soria	0
Beratón	Soria	0
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
Calatañazor	Soria	0
Caltojar	Soria	0
Candilichera	Soria	0
Cañamaque	Soria	0
Carabantes	Soria	0
Caracena	Soria	0
Carrascosa de Abajo	Soria	0
Carrascosa de la Sierra	Soria	0
Casarejos	Soria	0
Castilfrío de la Sierra	Soria	0
Castilruiz	Soria	0
Castillejo de Robledo	Soria	0
Centenera de Andaluz	Soria	0
Cerbón	Soria	0
Cidones	Soria	0
Cigudosa	Soria	0
Cihuela	Soria	0
Ciria	Soria	0
Cirujales del Río	Soria	0
Coscurita	Soria	0
Covaleda	Soria	0
Cubilla	Soria	0
Cubo de la Solana	Soria	0
Cueva de Ágreda	Soria	0
Dévanos	Soria	0
Deza	Soria	0
Duruelo de la Sierra	Soria	0
Escobosa de Almazán	Soria	0
Espeja de San Marcelino	Soria	0
Espejón	Soria	0
Estepa de San Juan	Soria	0
Frechilla de Almazán	Soria	0
Fresno de Caracena	Soria	0
Fuentearmegil	Soria	0
Fuentecambrón	Soria	0
Fuentecantos	Soria	0
Fuentelmonge	Soria	0
Fuentelsaz de Soria	Soria	0
Fuentepinilla	Soria	0
Fuentes de Magaña	Soria	0
Fuentestrún	Soria	0
Garray	Soria	0
Golmayo	Soria	0
Gómara	Soria	0
Gormaz	Soria	0
Herrera de Soria	Soria	0
Hinojosa del Campo	Soria	0
Langa de Duero	Soria	0
Liceras	Soria	0
Losilla, La	Soria	0
Magaña	Soria	0
Maján	Soria	0
Matalebreras	Soria	0
Matamala de Almazán	Soria	0
Medinaceli	Soria	0
Miño de Medinaceli	Soria	0
Miño de San Esteban	Soria	0
Molinos de Duero	Soria	0
Momblona	Soria	0
Monteagudo de las Vicarías	Soria	0
Montejo de Tiermes	Soria	0
Montenegro de Cameros	Soria	0
Morón de Almazán	Soria	0
Muriel de la Fuente	Soria	0
Muriel Viejo	Soria	0
Nafría de Ucero	Soria	0
Narros	Soria	0
Navaleno	Soria	0
Nepas	Soria	0
Nolay	Soria	0
Noviercas	Soria	0
Ólvega	Soria	0
Oncala	Soria	0
Pinilla del Campo	Soria	0
Portillo de Soria	Soria	0
Póveda de Soria, La	Soria	0
Pozalmuro	Soria	0
Quintana Redonda	Soria	0
Quintanas de Gormaz	Soria	0
Quiñonería	Soria	0
Rábanos, Los	Soria	0
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
San Leonardo de Yagüe	Soria	0
San Pedro Manrique	Soria	0
Santa Cruz de Yanguas	Soria	0
Santa María de Huerta	Soria	0
Santa María de las Hoyas	Soria	0
Serón de Nágima	Soria	0
Soliedra	Soria	0
Soria	Soria	0
Sotillo del Rincón	Soria	0
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
Trévago	Soria	0
Ucero	Soria	0
Vadillo	Soria	0
Valdeavellano de Tera	Soria	0
Valdegeña	Soria	0
Valdelagua del Cerro	Soria	0
Valdemaluque	Soria	0
Valdenebro	Soria	0
Valdeprado	Soria	0
Valderrodilla	Soria	0
Valtajeros	Soria	0
Velamazán	Soria	0
Velilla de la Sierra	Soria	0
Velilla de los Ajos	Soria	0
Viana de Duero	Soria	0
Villaciervos	Soria	0
Villanueva de Gormaz	Soria	0
Villar del Ala	Soria	0
Villar del Campo	Soria	0
Villar del Río	Soria	0
Villares de Soria, Los	Soria	0
Villasayas	Soria	0
Villaseca de Arciel	Soria	0
Vinuesa	Soria	0
Vizmanos	Soria	0
Vozmediano	Soria	0
Yanguas	Soria	0
Yelo	Soria	0
Aiguamúrcia	Tarragona	0
Albinyana	Tarragona	0
Albiol, L	Tarragona	0
Alcanar	Tarragona	0
Alcover	Tarragona	0
Aldover	Tarragona	0
Aleixar, L	Tarragona	0
Alfara de Carles	Tarragona	0
Alforja	Tarragona	0
Alió	Tarragona	0
Almoster	Tarragona	0
Altafulla	Tarragona	0
Ametlla de Mar, L	Tarragona	0
Amposta	Tarragona	0
Arbolí	Tarragona	0
Arboç, L	Tarragona	0
Argentera, L	Tarragona	0
Arnes	Tarragona	0
Ascó	Tarragona	0
Banyeres del Penedès	Tarragona	0
Barberà de la Conca	Tarragona	0
Batea	Tarragona	0
Bellmunt del Priorat	Tarragona	0
Bellvei	Tarragona	0
Benifallet	Tarragona	0
Benissanet	Tarragona	0
Bisbal de Falset, La	Tarragona	0
Bisbal del Penedès, La	Tarragona	0
Blancafort	Tarragona	0
Bonastre	Tarragona	0
Borges del Camp, Les	Tarragona	0
Bot	Tarragona	0
Botarell	Tarragona	0
Bràfim	Tarragona	0
Cabacés	Tarragona	0
Cabra del Camp	Tarragona	0
Calafell	Tarragona	0
Cambrils	Tarragona	0
Capafonts	Tarragona	0
Capçanes	Tarragona	0
Caseres	Tarragona	0
Castellvell del Camp	Tarragona	0
Catllar, El	Tarragona	0
Sénia, La	Tarragona	0
Colldejou	Tarragona	0
Conesa	Tarragona	0
Constantí	Tarragona	0
Corbera dEbre	Tarragona	0
Cornudella de Montsant	Tarragona	0
Creixell	Tarragona	0
Cunit	Tarragona	0
Xerta	Tarragona	0
Duesaigües	Tarragona	0
Espluga de Francolí, L	Tarragona	0
Falset	Tarragona	0
Fatarella, La	Tarragona	0
Febró, La	Tarragona	0
Figuera, La	Tarragona	0
Figuerola del Camp	Tarragona	0
Flix	Tarragona	0
Forès	Tarragona	0
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
Llorenç del Penedès	Tarragona	0
Margalef	Tarragona	0
Marçà	Tarragona	0
Mas de Barberans	Tarragona	0
Masdenverge	Tarragona	0
Masllorenç	Tarragona	0
Masó, La	Tarragona	0
Maspujols	Tarragona	0
Masroig, El	Tarragona	0
Milà, El	Tarragona	0
Miravet	Tarragona	0
Molar, El	Tarragona	0
Montblanc	Tarragona	0
Montbrió del Camp	Tarragona	0
Montferri	Tarragona	0
Montmell, El	Tarragona	0
Mont-ral	Tarragona	0
Mont-roig del Camp	Tarragona	0
Móra dEbre	Tarragona	0
Móra la Nova	Tarragona	0
Morell, El	Tarragona	0
Morera de Montsant, La	Tarragona	0
Nou de Gaià, La	Tarragona	0
Nulles	Tarragona	0
Palma dEbre, La	Tarragona	0
Pallaresos, Els	Tarragona	0
Passanant i Belltall	Tarragona	0
Paüls	Tarragona	0
Perafort	Tarragona	0
Perelló, El	Tarragona	0
Piles, Les	Tarragona	0
Pinell de Brai, El	Tarragona	0
Pira	Tarragona	0
Pla de Santa Maria, El	Tarragona	0
Pobla de Mafumet, La	Tarragona	0
Pobla de Massaluca, La	Tarragona	0
Pobla de Montornès, La	Tarragona	0
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
Riera de Gaià, La	Tarragona	0
Riudecanyes	Tarragona	0
Riudecols	Tarragona	0
Riudoms	Tarragona	0
Rocafort de Queralt	Tarragona	0
Roda de Barà	Tarragona	0
Rodonyà	Tarragona	0
Roquetes	Tarragona	0
Rourell, El	Tarragona	0
Salomó	Tarragona	0
Sant Carles de la Ràpita	Tarragona	0
Sant Jaume dels Domenys	Tarragona	0
Santa Bàrbara	Tarragona	0
Santa Coloma de Queralt	Tarragona	0
Santa Oliva	Tarragona	0
Pontils	Tarragona	0
Sarral	Tarragona	0
Savallà del Comtat	Tarragona	0
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
Vandellòs i lHospitalet de lInfant	Tarragona	0
Vendrell, El	Tarragona	0
Vespella de Gaià	Tarragona	0
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
Vimbodí i Poblet	Tarragona	0
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
Aguatón	Teruel	0
Aguaviva	Teruel	0
Aguilar del Alfambra	Teruel	0
Alacón	Teruel	0
Alba	Teruel	0
Albalate del Arzobispo	Teruel	0
Albarracín	Teruel	0
Albentosa	Teruel	0
Alcaine	Teruel	0
Alcalá de la Selva	Teruel	0
Alcañiz	Teruel	0
Alcorisa	Teruel	0
Alfambra	Teruel	0
Aliaga	Teruel	0
Almohaja	Teruel	0
Alobras	Teruel	0
Alpeñés	Teruel	0
Allepuz	Teruel	0
Alloza	Teruel	0
Allueva	Teruel	0
Anadón	Teruel	0
Andorra	Teruel	0
Arcos de las Salinas	Teruel	0
Arens de Lledó	Teruel	0
Argente	Teruel	0
Ariño	Teruel	0
Azaila	Teruel	0
Bádenas	Teruel	0
Báguena	Teruel	0
Bañón	Teruel	0
Barrachina	Teruel	0
Bea	Teruel	0
Beceite	Teruel	0
Belmonte de San José	Teruel	0
Bello	Teruel	0
Berge	Teruel	0
Bezas	Teruel	0
Blancas	Teruel	0
Blesa	Teruel	0
Bordón	Teruel	0
Bronchales	Teruel	0
Bueña	Teruel	0
Burbáguena	Teruel	0
Cabra de Mora	Teruel	0
Calaceite	Teruel	0
Calamocha	Teruel	0
Calanda	Teruel	0
Calomarde	Teruel	0
Camañas	Teruel	0
Camarena de la Sierra	Teruel	0
Camarillas	Teruel	0
Caminreal	Teruel	0
Cantavieja	Teruel	0
Cañada de Benatanduz	Teruel	0
Cañada de Verich, La	Teruel	0
Cañada Vellida	Teruel	0
Cañizar del Olivar	Teruel	0
Cascante del Río	Teruel	0
Castejón de Tornos	Teruel	0
Castel de Cabra	Teruel	0
Castelnou	Teruel	0
Castelserás	Teruel	0
Castellar, El	Teruel	0
Castellote	Teruel	0
Cedrillas	Teruel	0
Celadas	Teruel	0
Cella	Teruel	0
Cerollera, La	Teruel	0
Codoñera, La	Teruel	0
Corbalán	Teruel	0
Cortes de Aragón	Teruel	0
Cosa	Teruel	0
Cretas	Teruel	0
Crivillén	Teruel	0
Cuba, La	Teruel	0
Cubla	Teruel	0
Cucalón	Teruel	0
Cuervo, El	Teruel	0
Cuevas de Almudén	Teruel	0
Cuevas Labradas	Teruel	0
Ejulve	Teruel	0
Escorihuela	Teruel	0
Escucha	Teruel	0
Estercuel	Teruel	0
Ferreruela de Huerva	Teruel	0
Fonfría	Teruel	0
Formiche Alto	Teruel	0
Fórnoles	Teruel	0
Fortanete	Teruel	0
Foz-Calanda	Teruel	0
Fresneda, La	Teruel	0
Frías de Albarracín	Teruel	0
Fuenferrada	Teruel	0
Fuentes Calientes	Teruel	0
Fuentes Claras	Teruel	0
Fuentes de Rubielos	Teruel	0
Fuentespalda	Teruel	0
Galve	Teruel	0
Gargallo	Teruel	0
Gea de Albarracín	Teruel	0
Ginebrosa, La	Teruel	0
Griegos	Teruel	0
Guadalaviar	Teruel	0
Gúdar	Teruel	0
Híjar	Teruel	0
Hinojosa de Jarque	Teruel	0
Hoz de la Vieja, La	Teruel	0
Huesa del Común	Teruel	0
Iglesuela del Cid, La	Teruel	0
Jabaloyas	Teruel	0
Jarque de la Val	Teruel	0
Jatiel	Teruel	0
Jorcas	Teruel	0
Josa	Teruel	0
Lagueruela	Teruel	0
Lanzuela	Teruel	0
Libros	Teruel	0
Lidón	Teruel	0
Linares de Mora	Teruel	0
Loscos	Teruel	0
Lledó	Teruel	0
Maicas	Teruel	0
Manzanera	Teruel	0
Martín del Río	Teruel	0
Mas de las Matas	Teruel	0
Mata de los Olmos, La	Teruel	0
Mazaleón	Teruel	0
Mezquita de Jarque	Teruel	0
Mirambel	Teruel	0
Miravete de la Sierra	Teruel	0
Molinos	Teruel	0
Monforte de Moyuela	Teruel	0
Monreal del Campo	Teruel	0
Monroyo	Teruel	0
Montalbán	Teruel	0
Monteagudo del Castillo	Teruel	0
Monterde de Albarracín	Teruel	0
Mora de Rubielos	Teruel	0
Moscardón	Teruel	0
Mosqueruela	Teruel	0
Muniesa	Teruel	0
Noguera de Albarracín	Teruel	0
Nogueras	Teruel	0
Nogueruelas	Teruel	0
Obón	Teruel	0
Odón	Teruel	0
Ojos Negros	Teruel	0
Olba	Teruel	0
Oliete	Teruel	0
Olmos, Los	Teruel	0
Orihuela del Tremedal	Teruel	0
Orrios	Teruel	0
Palomar de Arroyos	Teruel	0
Pancrudo	Teruel	0
Parras de Castellote, Las	Teruel	0
Peñarroya de Tastavins	Teruel	0
Peracense	Teruel	0
Peralejos	Teruel	0
Perales del Alfambra	Teruel	0
Pitarque	Teruel	0
Plou	Teruel	0
Pobo, El	Teruel	0
Portellada, La	Teruel	0
Pozondón	Teruel	0
Pozuel del Campo	Teruel	0
Puebla de Híjar, La	Teruel	0
Puebla de Valverde, La	Teruel	0
Puertomingalvo	Teruel	0
Ráfales	Teruel	0
Rillo	Teruel	0
Riodeva	Teruel	0
Ródenas	Teruel	0
Royuela	Teruel	0
Rubiales	Teruel	0
Rubielos de la Cérida	Teruel	0
Rubielos de Mora	Teruel	0
Salcedillo	Teruel	0
Saldón	Teruel	0
Samper de Calanda	Teruel	0
San Agustín	Teruel	0
San Martín del Río	Teruel	0
Santa Cruz de Nogueras	Teruel	0
Santa Eulalia	Teruel	0
Sarrión	Teruel	0
Segura de los Baños	Teruel	0
Seno	Teruel	0
Singra	Teruel	0
Terriente	Teruel	0
Teruel	Teruel	0
Toril y Masegoso	Teruel	0
Tormón	Teruel	0
Tornos	Teruel	0
Torralba de los Sisones	Teruel	0
Torrecilla de Alcañiz	Teruel	0
Torrecilla del Rebollar	Teruel	0
Torre de Arcas	Teruel	0
Torre de las Arcas	Teruel	0
Torre del Compte	Teruel	0
Torrelacárcel	Teruel	0
Torre los Negros	Teruel	0
Torremocha de Jiloca	Teruel	0
Torres de Albarracín	Teruel	0
Torrevelilla	Teruel	0
Torrijas	Teruel	0
Torrijo del Campo	Teruel	0
Tramacastiel	Teruel	0
Tramacastilla	Teruel	0
Tronchón	Teruel	0
Urrea de Gaén	Teruel	0
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
Vivel del Río Martín	Teruel	0
Zoma, La	Teruel	0
Ajofrín	Toledo	0
Alameda de la Sagra	Toledo	0
Albarreal de Tajo	Toledo	0
Alcabón	Toledo	0
Alcañizo	Toledo	0
Alcaudete de la Jara	Toledo	0
Alcolea de Tajo	Toledo	0
Aldea en Cabo	Toledo	0
Aldeanueva de Barbarroya	Toledo	0
Aldeanueva de San Bartolomé	Toledo	0
Almendral de la Cañada	Toledo	0
Almonacid de Toledo	Toledo	0
Almorox	Toledo	0
Añover de Tajo	Toledo	0
Arcicóllar	Toledo	0
Argés	Toledo	0
Azután	Toledo	0
Barcience	Toledo	0
Bargas	Toledo	0
Belvís de la Jara	Toledo	0
Borox	Toledo	0
Buenaventura	Toledo	0
Burguillos de Toledo	Toledo	0
Burujón	Toledo	0
Cabañas de la Sagra	Toledo	0
Cabañas de Yepes	Toledo	0
Cabezamesada	Toledo	0
Calera y Chozas	Toledo	0
Caleruela	Toledo	0
Calzada de Oropesa	Toledo	0
Camarena	Toledo	0
Camarenilla	Toledo	0
Campillo de la Jara, El	Toledo	0
Camuñas	Toledo	0
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
Domingo Pérez	Toledo	0
Dosbarrios	Toledo	0
Erustes	Toledo	0
Escalona	Toledo	0
Escalonilla	Toledo	0
Espinoso del Rey	Toledo	0
Esquivias	Toledo	0
Estrella, La	Toledo	0
Fuensalida	Toledo	0
Gálvez	Toledo	0
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
Huerta de Valdecarábanos	Toledo	0
Iglesuela, La	Toledo	0
Illán de Vacas	Toledo	0
Illescas	Toledo	0
Lagartera	Toledo	0
Layos	Toledo	0
Lillo	Toledo	0
Lominchar	Toledo	0
Lucillos	Toledo	0
Madridejos	Toledo	0
Magán	Toledo	0
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
Méntrida	Toledo	0
Mesegar de Tajo	Toledo	0
Miguel Esteban	Toledo	0
Mocejón	Toledo	0
Mohedas de la Jara	Toledo	0
Montearagón	Toledo	0
Montesclaros	Toledo	0
Mora	Toledo	0
Nambroca	Toledo	0
Nava de Ricomalillo, La	Toledo	0
Navahermosa	Toledo	0
Navalcán	Toledo	0
Navalmoralejo	Toledo	0
Navalmorales, Los	Toledo	0
Navalucillos, Los	Toledo	0
Navamorcuende	Toledo	0
Noblejas	Toledo	0
Noez	Toledo	0
Nombela	Toledo	0
Novés	Toledo	0
Numancia de la Sagra	Toledo	0
Nuño Gómez	Toledo	0
Ocaña	Toledo	0
Olías del Rey	Toledo	0
Ontígola	Toledo	0
Orgaz	Toledo	0
Oropesa	Toledo	0
Otero	Toledo	0
Palomeque	Toledo	0
Pantoja	Toledo	0
Paredes de Escalona	Toledo	0
Parrillas	Toledo	0
Pelahustán	Toledo	0
Pepino	Toledo	0
Polán	Toledo	0
Portillo de Toledo	Toledo	0
Puebla de Almoradiel, La	Toledo	0
Puebla de Montalbán, La	Toledo	0
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
San Bartolomé de las Abiertas	Toledo	0
San Martín de Montalbán	Toledo	0
San Martín de Pusa	Toledo	0
San Pablo de los Montes	Toledo	0
San Román de los Montes	Toledo	0
Santa Ana de Pusa	Toledo	0
Santa Cruz de la Zarza	Toledo	0
Santa Cruz del Retamar	Toledo	0
Santa Olalla	Toledo	0
Sartajada	Toledo	0
Segurilla	Toledo	0
Seseña	Toledo	0
Sevilleja de la Jara	Toledo	0
Sonseca	Toledo	0
Sotillo de las Palomas	Toledo	0
Talavera de la Reina	Toledo	0
Tembleque	Toledo	0
Toboso, El	Toledo	0
Toledo	Toledo	0
Torralba de Oropesa	Toledo	0
Torrecilla de la Jara	Toledo	0
Torre de Esteban Hambrán, La	Toledo	0
Torrico	Toledo	0
Torrijos	Toledo	0
Totanés	Toledo	0
Turleque	Toledo	0
Ugena	Toledo	0
Urda	Toledo	0
Valdeverdeja	Toledo	0
Valmojado	Toledo	0
Velada	Toledo	0
Ventas con Peña Aguilera, Las	Toledo	0
Ventas de Retamosa, Las	Toledo	0
Ventas de San Julián, Las	Toledo	0
Villacañas	Toledo	0
Villa de Don Fadrique, La	Toledo	0
Villafranca de los Caballeros	Toledo	0
Villaluenga de la Sagra	Toledo	0
Villamiel de Toledo	Toledo	0
Villaminaya	Toledo	0
Villamuelas	Toledo	0
Villanueva de Alcardete	Toledo	0
Villanueva de Bogas	Toledo	0
Villarejo de Montalbán	Toledo	0
Villarrubia de Santiago	Toledo	0
Villaseca de la Sagra	Toledo	0
Villasequilla	Toledo	0
Villatobas	Toledo	0
Viso de San Juan, El	Toledo	0
Yébenes, Los	Toledo	0
Yeles	Toledo	0
Yepes	Toledo	0
Yuncler	Toledo	0
Yunclillos	Toledo	0
Yuncos	Toledo	0
Santo Domingo-Caudilla	Toledo	0
Ademuz	Valencia/València	0
Ador	Valencia/València	0
Atzeneta dAlbaida	Valencia/València	0
Agullent	Valencia/València	0
Alaquàs	Valencia/València	0
Albaida	Valencia/València	0
Albal	Valencia/València	0
Albalat de la Ribera	Valencia/València	0
Albalat dels Sorells	Valencia/València	0
Albalat dels Tarongers	Valencia/València	0
Alberic	Valencia/València	0
Alborache	Valencia/València	0
Alboraya	Valencia/València	0
Albuixech	Valencia/València	0
Alcàsser	Valencia/València	0
Alcàntera de Xúquer	Valencia/València	0
Alzira	Valencia/València	0
Alcublas	Valencia/València	0
Alcúdia, l	Valencia/València	0
Alcúdia de Crespins, l	Valencia/València	0
Aldaia	Valencia/València	0
Alfafar	Valencia/València	0
Alfauir	Valencia/València	0
Alfara de la Baronia	Valencia/València	0
Alfara del Patriarca	Valencia/València	0
Alfarp	Valencia/València	0
Alfarrasí	Valencia/València	0
Algar de Palancia	Valencia/València	0
Algemesí	Valencia/València	0
Algimia de Alfara	Valencia/València	0
Alginet	Valencia/València	0
Almàssera	Valencia/València	0
Almiserà	Valencia/València	0
Almoines	Valencia/València	0
Almussafes	Valencia/València	0
Alpuente	Valencia/València	0
Alqueria de la Comtessa, l	Valencia/València	0
Andilla	Valencia/València	0
Anna	Valencia/València	0
Antella	Valencia/València	0
Aras de los Olmos	Valencia/València	0
Aielo de Malferit	Valencia/València	0
Aielo de Rugat	Valencia/València	0
Ayora	Valencia/València	0
Barxeta	Valencia/València	0
Barx	Valencia/València	0
Bèlgida	Valencia/València	0
Bellreguard	Valencia/València	0
Bellús	Valencia/València	0
Benagéber	Valencia/València	0
Benaguasil	Valencia/València	0
Benavites	Valencia/València	0
Beneixida	Valencia/València	0
Benetússer	Valencia/València	0
Beniarjó	Valencia/València	0
Beniatjar	Valencia/València	0
Benicolet	Valencia/València	0
Benifairó de les Valls	Valencia/València	0
Benifairó de la Valldigna	Valencia/València	0
Benifaió	Valencia/València	0
Beniflá	Valencia/València	0
Benigánim	Valencia/València	0
Benimodo	Valencia/València	0
Benimuslem	Valencia/València	0
Beniparrell	Valencia/València	0
Benirredrà	Valencia/València	0
Benisanó	Valencia/València	0
Benissoda	Valencia/València	0
Benisuera	Valencia/València	0
Bétera	Valencia/València	0
Bicorp	Valencia/València	0
Bocairent	Valencia/València	0
Bolbaite	Valencia/València	0
Bonrepòs i Mirambell	Valencia/València	0
Bufali	Valencia/València	0
Bugarra	Valencia/València	0
Buñol	Valencia/València	0
Burjassot	Valencia/València	0
Calles	Valencia/València	0
Camporrobles	Valencia/València	0
Canals	Valencia/València	0
Canet dEn Berenguer	Valencia/València	0
Carcaixent	Valencia/València	0
Càrcer	Valencia/València	0
Carlet	Valencia/València	0
Carrícola	Valencia/València	0
Casas Altas	Valencia/València	0
Casas Bajas	Valencia/València	0
Casinos	Valencia/València	0
Castelló de Rugat	Valencia/València	0
Castellonet de la Conquesta	Valencia/València	0
Castielfabib	Valencia/València	0
Catadau	Valencia/València	0
Catarroja	Valencia/València	0
Caudete de las Fuentes	Valencia/València	0
Cerdà	Valencia/València	0
Cofrentes	Valencia/València	0
Corbera	Valencia/València	0
Cortes de Pallás	Valencia/València	0
Cotes	Valencia/València	0
Quart de les Valls	Valencia/València	0
Quart de Poblet	Valencia/València	0
Quartell	Valencia/València	0
Quatretonda	Valencia/València	0
Cullera	Valencia/València	0
Chelva	Valencia/València	0
Chella	Valencia/València	0
Chera	Valencia/València	0
Cheste	Valencia/València	0
Xirivella	Valencia/València	0
Chiva	Valencia/València	0
Chulilla	Valencia/València	0
Daimús	Valencia/València	0
Domeño	Valencia/València	0
Dos Aguas	Valencia/València	0
Eliana, l	Valencia/València	0
Emperador	Valencia/València	0
Enguera	Valencia/València	0
Ènova, l	Valencia/València	0
Estivella	Valencia/València	0
Estubeny	Valencia/València	0
Faura	Valencia/València	0
Favara	Valencia/València	0
Fontanars dels Alforins	Valencia/València	0
Fortaleny	Valencia/València	0
Foios	Valencia/València	0
Font dEn Carròs, la	Valencia/València	0
Font de la Figuera, la	Valencia/València	0
Fuenterrobles	Valencia/València	0
Gavarda	Valencia/València	0
Gandia	Valencia/València	0
Genovés	Valencia/València	0
Gestalgar	Valencia/València	0
Gilet	Valencia/València	0
Godella	Valencia/València	0
Godelleta	Valencia/València	0
Granja de la Costera, la	Valencia/València	0
Guadasséquies	Valencia/València	0
Guadassuar	Valencia/València	0
Guardamar de la Safor	Valencia/València	0
Higueruelas	Valencia/València	0
Jalance	Valencia/València	0
Xeraco	Valencia/València	0
Jarafuel	Valencia/València	0
Xàtiva	Valencia/València	0
Xeresa	Valencia/València	0
Llíria	Valencia/València	0
Loriguilla	Valencia/València	0
Losa del Obispo	Valencia/València	0
Llutxent	Valencia/València	0
Llocnou dEn Fenollet	Valencia/València	0
Llocnou de la Corona	Valencia/València	0
Llocnou de Sant Jeroni	Valencia/València	0
Llanera de Ranes	Valencia/València	0
Llaurí	Valencia/València	0
Llombai	Valencia/València	0
Llosa de Ranes, la	Valencia/València	0
Macastre	Valencia/València	0
Manises	Valencia/València	0
Manuel	Valencia/València	0
Marines	Valencia/València	0
Massalavés	Valencia/València	0
Massalfassar	Valencia/València	0
Massamagrell	Valencia/València	0
Massanassa	Valencia/València	0
Meliana	Valencia/València	0
Millares	Valencia/València	0
Miramar	Valencia/València	0
Mislata	Valencia/València	0
Mogente/Moixent	Valencia/València	0
Moncada	Valencia/València	0
Montserrat	Valencia/València	0
Montaverner	Valencia/València	0
Montesa	Valencia/València	0
Montitxelvo/Montichelvo	Valencia/València	0
Montroy	Valencia/València	0
Museros	Valencia/València	0
Náquera	Valencia/València	0
Navarrés	Valencia/València	0
Novelé/Novetlè	Valencia/València	0
Oliva	Valencia/València	0
Olocau	Valencia/València	0
Olleria, l	Valencia/València	0
Ontinyent	Valencia/València	0
Otos	Valencia/València	0
Paiporta	Valencia/València	0
Palma de Gandía	Valencia/València	0
Palmera	Valencia/València	0
Palomar, el	Valencia/València	0
Paterna	Valencia/València	0
Pedralba	Valencia/València	0
Petrés	Valencia/València	0
Picanya	Valencia/València	0
Picassent	Valencia/València	0
Piles	Valencia/València	0
Pinet	Valencia/València	0
Polinyà de Xúquer	Valencia/València	0
Potríes	Valencia/València	0
Pobla de Farnals, la	Valencia/València	0
Pobla del Duc, la	Valencia/València	0
Puebla de San Miguel	Valencia/València	0
Pobla de Vallbona, la	Valencia/València	0
Pobla Llarga, la	Valencia/València	0
Puig	Valencia/València	0
Puçol	Valencia/València	0
Quesa	Valencia/València	0
Rafelbuñol/Rafelbunyol	Valencia/València	0
Rafelcofer	Valencia/València	0
Rafelguaraf	Valencia/València	0
Ráfol de Salem	Valencia/València	0
Real de Gandía	Valencia/València	0
Real	Valencia/València	0
Requena	Valencia/València	0
Riba-roja de Túria	Valencia/València	0
Riola	Valencia/València	0
Rocafort	Valencia/València	0
Rotglà i Corberà	Valencia/València	0
Rótova	Valencia/València	0
Rugat	Valencia/València	0
Sagunto/Sagunt	Valencia/València	0
Salem	Valencia/València	0
Sant Joanet	Valencia/València	0
Sedaví	Valencia/València	0
Segart	Valencia/València	0
Sellent	Valencia/València	0
Sempere	Valencia/València	0
Senyera	Valencia/València	0
Serra	Valencia/València	0
Siete Aguas	Valencia/València	0
Silla	Valencia/València	0
Simat de la Valldigna	Valencia/València	0
Sinarcas	Valencia/València	0
Sollana	Valencia/València	0
Sot de Chera	Valencia/València	0
Sueca	Valencia/València	0
Sumacàrcer	Valencia/València	0
Tavernes Blanques	Valencia/València	0
Tavernes de la Valldigna	Valencia/València	0
Teresa de Cofrentes	Valencia/València	0
Terrateig	Valencia/València	0
Titaguas	Valencia/València	0
Torrebaja	Valencia/València	0
Torrella	Valencia/València	0
Torrent	Valencia/València	0
Torres Torres	Valencia/València	0
Tous	Valencia/València	0
Tuéjar	Valencia/València	0
Turís	Valencia/València	0
Utiel	Valencia/València	0
Valencia	Valencia/València	0
Vallada	Valencia/València	0
Vallanca	Valencia/València	0
Vallés	Valencia/València	0
Venta del Moro	Valencia/València	0
Villalonga	Valencia/València	0
Vilamarxant	Valencia/València	0
Villanueva de Castellón	Valencia/València	0
Villar del Arzobispo	Valencia/València	0
Villargordo del Cabriel	Valencia/València	0
Vinalesa	Valencia/València	0
Yátova	Valencia/València	0
Yesa, La	Valencia/València	0
Zarra	Valencia/València	0
Gátova	Valencia/València	0
San Antonio de Benagéber	Valencia/València	0
Benicull de Xúquer	Valencia/València	0
Adalia	Valladolid	0
Aguasal	Valladolid	0
Aguilar de Campos	Valladolid	0
Alaejos	Valladolid	0
Alcazarén	Valladolid	0
Aldea de San Miguel	Valladolid	0
Aldeamayor de San Martín	Valladolid	0
Almenara de Adaja	Valladolid	0
Amusquillo	Valladolid	0
Arroyo de la Encomienda	Valladolid	0
Ataquines	Valladolid	0
Bahabón	Valladolid	0
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
Bolaños de Campos	Valladolid	0
Brahojos de Medina	Valladolid	0
Bustillo de Chaves	Valladolid	0
Cabezón de Pisuerga	Valladolid	0
Cabezón de Valderaduey	Valladolid	0
Cabreros del Monte	Valladolid	0
Campaspero	Valladolid	0
Campillo, El	Valladolid	0
Camporredondo	Valladolid	0
Canalejas de Peñafiel	Valladolid	0
Canillas de Esgueva	Valladolid	0
Carpio	Valladolid	0
Casasola de Arión	Valladolid	0
Castrejón de Trabancos	Valladolid	0
Castrillo de Duero	Valladolid	0
Castrillo-Tejeriego	Valladolid	0
Castrobol	Valladolid	0
Castrodeza	Valladolid	0
Castromembibre	Valladolid	0
Castromonte	Valladolid	0
Castronuevo de Esgueva	Valladolid	0
Castronuño	Valladolid	0
Castroponce	Valladolid	0
Castroverde de Cerrato	Valladolid	0
Ceinos de Campos	Valladolid	0
Cervillego de la Cruz	Valladolid	0
Cigales	Valladolid	0
Ciguñuela	Valladolid	0
Cistérniga	Valladolid	0
Cogeces de Íscar	Valladolid	0
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
Fuensaldaña	Valladolid	0
Fuente el Sol	Valladolid	0
Fuente-Olmedo	Valladolid	0
Gallegos de Hornija	Valladolid	0
Gatón de Campos	Valladolid	0
Geria	Valladolid	0
Herrín de Campos	Valladolid	0
Hornillos de Eresma	Valladolid	0
Íscar	Valladolid	0
Laguna de Duero	Valladolid	0
Langayo	Valladolid	0
Lomoviejo	Valladolid	0
Llano de Olmedo	Valladolid	0
Manzanillo	Valladolid	0
Marzales	Valladolid	0
Matapozuelos	Valladolid	0
Matilla de los Caños	Valladolid	0
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
Mota del Marqués	Valladolid	0
Mucientes	Valladolid	0
Mudarra, La	Valladolid	0
Muriel	Valladolid	0
Nava del Rey	Valladolid	0
Nueva Villa de las Torres	Valladolid	0
Olivares de Duero	Valladolid	0
Olmedo	Valladolid	0
Olmos de Esgueva	Valladolid	0
Olmos de Peñafiel	Valladolid	0
Palazuelo de Vedija	Valladolid	0
Parrilla, La	Valladolid	0
Pedraja de Portillo, La	Valladolid	0
Pedrajas de San Esteban	Valladolid	0
Pedrosa del Rey	Valladolid	0
Peñafiel	Valladolid	0
Peñaflor de Hornija	Valladolid	0
Pesquera de Duero	Valladolid	0
Piña de Esgueva	Valladolid	0
Piñel de Abajo	Valladolid	0
Piñel de Arriba	Valladolid	0
Pollos	Valladolid	0
Portillo	Valladolid	0
Pozal de Gallinas	Valladolid	0
Pozaldez	Valladolid	0
Pozuelo de la Orden	Valladolid	0
Puras	Valladolid	0
Quintanilla de Arriba	Valladolid	0
Quintanilla del Molar	Valladolid	0
Quintanilla de Onésimo	Valladolid	0
Quintanilla de Trigueros	Valladolid	0
Rábano	Valladolid	0
Ramiro	Valladolid	0
Renedo de Esgueva	Valladolid	0
Roales de Campos	Valladolid	0
Robladillo	Valladolid	0
Roturas	Valladolid	0
Rubí de Bracamonte	Valladolid	0
Rueda	Valladolid	0
Saelices de Mayorga	Valladolid	0
Salvador de Zapardiel	Valladolid	0
San Cebrián de Mazote	Valladolid	0
San Llorente	Valladolid	0
San Martín de Valvení	Valladolid	0
San Miguel del Arroyo	Valladolid	0
San Miguel del Pino	Valladolid	0
San Pablo de la Moraleja	Valladolid	0
San Pedro de Latarce	Valladolid	0
San Pelayo	Valladolid	0
San Román de Hornija	Valladolid	0
San Salvador	Valladolid	0
Santa Eufemia del Arroyo	Valladolid	0
Santervás de Campos	Valladolid	0
Santibáñez de Valcorba	Valladolid	0
Santovenia de Pisuerga	Valladolid	0
San Vicente del Palacio	Valladolid	0
Sardón de Duero	Valladolid	0
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
Torre de Peñafiel	Valladolid	0
Torrelobatón	Valladolid	0
Torrescárcela	Valladolid	0
Traspinedo	Valladolid	0
Trigueros del Valle	Valladolid	0
Tudela de Duero	Valladolid	0
Unión de Campos, La	Valladolid	0
Urones de Castroponce	Valladolid	0
Urueña	Valladolid	0
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
Velascálvaro	Valladolid	0
Velilla	Valladolid	0
Velliza	Valladolid	0
Ventosa de la Cuesta	Valladolid	0
Viana de Cega	Valladolid	0
Viloria	Valladolid	0
Villabáñez	Valladolid	0
Villabaruz de Campos	Valladolid	0
Villabrágima	Valladolid	0
Villacarralón	Valladolid	0
Villacid de Campos	Valladolid	0
Villaco	Valladolid	0
Villafrades de Campos	Valladolid	0
Villafranca de Duero	Valladolid	0
Villafrechós	Valladolid	0
Villafuerte	Valladolid	0
Villagarcía de Campos	Valladolid	0
Villagómez la Nueva	Valladolid	0
Villalán de Campos	Valladolid	0
Villalar de los Comuneros	Valladolid	0
Villalba de la Loma	Valladolid	0
Villalba de los Alcores	Valladolid	0
Villalbarba	Valladolid	0
Villalón de Campos	Valladolid	0
Villamuriel de Campos	Valladolid	0
Villán de Tordesillas	Valladolid	0
Villanubla	Valladolid	0
Villanueva de Duero	Valladolid	0
Villanueva de la Condesa	Valladolid	0
Villanueva de los Caballeros	Valladolid	0
Villanueva de los Infantes	Valladolid	0
Villanueva de San Mancio	Valladolid	0
Villardefrades	Valladolid	0
Villarmentero de Esgueva	Valladolid	0
Villasexmir	Valladolid	0
Villavaquerín	Valladolid	0
Villavellid	Valladolid	0
Villaverde de Medina	Valladolid	0
Villavicencio de los Caballeros	Valladolid	0
Wamba	Valladolid	0
Zaratán	Valladolid	0
Zarza, La	Valladolid	0
Abadiño	Bizkaia	0
Abanto y Ciérvana-Abanto Zierbena	Bizkaia	0
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
Ereño	Bizkaia	0
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
Güeñes	Bizkaia	0
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
Mañaria	Bizkaia	0
Markina-Xemein	Bizkaia	0
Maruri-Jatabe	Bizkaia	0
Mendata	Bizkaia	0
Mendexa	Bizkaia	0
Meñaka	Bizkaia	0
Ugao-Miraballes	Bizkaia	0
Morga	Bizkaia	0
Muxika	Bizkaia	0
Mundaka	Bizkaia	0
Mungia	Bizkaia	0
Aulesti	Bizkaia	0
Muskiz	Bizkaia	0
Otxandio	Bizkaia	0
Ondarroa	Bizkaia	0
Urduña/Orduña	Bizkaia	0
Orozko	Bizkaia	0
Sukarrieta	Bizkaia	0
Plentzia	Bizkaia	0
Portugalete	Bizkaia	0
Errigoiti	Bizkaia	0
Valle de Trápaga-Trapagaran	Bizkaia	0
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
Alcañices	Zamora	0
Alcubilla de Nogales	Zamora	0
Alfaraz de Sayago	Zamora	0
Algodre	Zamora	0
Almaraz de Duero	Zamora	0
Almeida de Sayago	Zamora	0
Andavías	Zamora	0
Arcenillas	Zamora	0
Arcos de la Polvorosa	Zamora	0
Argañín	Zamora	0
Argujillo	Zamora	0
Arquillinos	Zamora	0
Arrabalde	Zamora	0
Aspariegos	Zamora	0
Asturianos	Zamora	0
Ayoó de Vidriales	Zamora	0
Barcial del Barco	Zamora	0
Belver de los Montes	Zamora	0
Benavente	Zamora	0
Benegiles	Zamora	0
Bermillo de Sayago	Zamora	0
Bóveda de Toro, La	Zamora	0
Bretó	Zamora	0
Bretocino	Zamora	0
Brime de Sog	Zamora	0
Brime de Urz	Zamora	0
Burganes de Valverde	Zamora	0
Bustillo del Oro	Zamora	0
Cabañas de Sayago	Zamora	0
Calzadilla de Tera	Zamora	0
Camarzana de Tera	Zamora	0
Cañizal	Zamora	0
Cañizo	Zamora	0
Carbajales de Alba	Zamora	0
Carbellino	Zamora	0
Casaseca de Campeán	Zamora	0
Casaseca de las Chanas	Zamora	0
Castrillo de la Guareña	Zamora	0
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
Espadañedo	Zamora	0
Faramontanos de Tábara	Zamora	0
Fariza	Zamora	0
Fermoselle	Zamora	0
Ferreras de Abajo	Zamora	0
Ferreras de Arriba	Zamora	0
Ferreruela	Zamora	0
Figueruela de Arriba	Zamora	0
Fonfría	Zamora	0
Fresno de la Polvorosa	Zamora	0
Fresno de la Ribera	Zamora	0
Fresno de Sayago	Zamora	0
Friera de Valverde	Zamora	0
Fuente Encalada	Zamora	0
Fuentelapeña	Zamora	0
Fuentesaúco	Zamora	0
Fuentes de Ropel	Zamora	0
Fuentesecas	Zamora	0
Fuentespreadas	Zamora	0
Galende	Zamora	0
Gallegos del Pan	Zamora	0
Gallegos del Río	Zamora	0
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
Lubián	Zamora	0
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
Matilla de Arzón	Zamora	0
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
Moreruela de Tábara	Zamora	0
Muelas de los Caballeros	Zamora	0
Muelas del Pan	Zamora	0
Muga de Sayago	Zamora	0
Navianos de Valverde	Zamora	0
Olmillos de Castro	Zamora	0
Otero de Bodas	Zamora	0
Pajares de la Lampreana	Zamora	0
Palacios del Pan	Zamora	0
Palacios de Sanabria	Zamora	0
Pedralba de la Pradería	Zamora	0
Pego, El	Zamora	0
Peleagonzalo	Zamora	0
Peleas de Abajo	Zamora	0
Peñausende	Zamora	0
Peque	Zamora	0
Perdigón, El	Zamora	0
Pereruela	Zamora	0
Perilla de Castro	Zamora	0
Pías	Zamora	0
Piedrahita de Castro	Zamora	0
Pinilla de Toro	Zamora	0
Pino del Oro	Zamora	0
Piñero, El	Zamora	0
Pobladura del Valle	Zamora	0
Pobladura de Valderaduey	Zamora	0
Porto	Zamora	0
Pozoantiguo	Zamora	0
Pozuelo de Tábara	Zamora	0
Prado	Zamora	0
Puebla de Sanabria	Zamora	0
Pueblica de Valverde	Zamora	0
Quintanilla del Monte	Zamora	0
Quintanilla del Olmo	Zamora	0
Quintanilla de Urz	Zamora	0
Quiruelas de Vidriales	Zamora	0
Rabanales	Zamora	0
Rábano de Aliste	Zamora	0
Requejo	Zamora	0
Revellinos	Zamora	0
Riofrío de Aliste	Zamora	0
Rionegro del Puente	Zamora	0
Roales	Zamora	0
Robleda-Cervantes	Zamora	0
Roelos de Sayago	Zamora	0
Rosinos de la Requejada	Zamora	0
Salce	Zamora	0
Samir de los Caños	Zamora	0
San Agustín del Pozo	Zamora	0
San Cebrián de Castro	Zamora	0
San Cristóbal de Entreviñas	Zamora	0
San Esteban del Molar	Zamora	0
San Justo	Zamora	0
San Martín de Valderaduey	Zamora	0
San Miguel de la Ribera	Zamora	0
San Miguel del Valle	Zamora	0
San Pedro de Ceque	Zamora	0
San Pedro de la Nave-Almendra	Zamora	0
Santa Clara de Avedillo	Zamora	0
Santa Colomba de las Monjas	Zamora	0
Santa Cristina de la Polvorosa	Zamora	0
Santa Croya de Tera	Zamora	0
Santa Eufemia del Barco	Zamora	0
Santa María de la Vega	Zamora	0
Santa María de Valverde	Zamora	0
Santibáñez de Tera	Zamora	0
Santibáñez de Vidriales	Zamora	0
Santovenia	Zamora	0
San Vicente de la Cabeza	Zamora	0
San Vitero	Zamora	0
Sanzoles	Zamora	0
Tábara	Zamora	0
Tapioles	Zamora	0
Toro	Zamora	0
Torre del Valle, La	Zamora	0
Torregamones	Zamora	0
Torres del Carrizal	Zamora	0
Trabazos	Zamora	0
Trefacio	Zamora	0
Uña de Quintana	Zamora	0
Vadillo de la Guareña	Zamora	0
Valcabado	Zamora	0
Valdefinjas	Zamora	0
Valdescorriel	Zamora	0
Vallesa de la Guareña	Zamora	0
Vega de Tera	Zamora	0
Vega de Villalobos	Zamora	0
Vegalatrave	Zamora	0
Venialbo	Zamora	0
Vezdemarbán	Zamora	0
Vidayanes	Zamora	0
Videmala	Zamora	0
Villabrázaro	Zamora	0
Villabuena del Puente	Zamora	0
Villadepera	Zamora	0
Villaescusa	Zamora	0
Villafáfila	Zamora	0
Villaferrueña	Zamora	0
Villageriz	Zamora	0
Villalazán	Zamora	0
Villalba de la Lampreana	Zamora	0
Villalcampo	Zamora	0
Villalobos	Zamora	0
Villalonso	Zamora	0
Villalpando	Zamora	0
Villalube	Zamora	0
Villamayor de Campos	Zamora	0
Villamor de los Escuderos	Zamora	0
Villanázar	Zamora	0
Villanueva de Azoague	Zamora	0
Villanueva de Campeán	Zamora	0
Villanueva de las Peras	Zamora	0
Villanueva del Campo	Zamora	0
Villaralbo	Zamora	0
Villardeciervos	Zamora	0
Villar de Fallaves	Zamora	0
Villar del Buey	Zamora	0
Villardiegua de la Ribera	Zamora	0
Villárdiga	Zamora	0
Villardondiego	Zamora	0
Villarrín de Campos	Zamora	0
Villaseco del Pan	Zamora	0
Villavendimio	Zamora	0
Villaveza del Agua	Zamora	0
Villaveza de Valverde	Zamora	0
Viñas	Zamora	0
Zamora	Zamora	0
Abanto	Zaragoza	0
Acered	Zaragoza	0
Agón	Zaragoza	0
Aguarón	Zaragoza	0
Aguilón	Zaragoza	0
Ainzón	Zaragoza	0
Aladrén	Zaragoza	0
Alagón	Zaragoza	0
Alarba	Zaragoza	0
Alberite de San Juan	Zaragoza	0
Albeta	Zaragoza	0
Alborge	Zaragoza	0
Alcalá de Ebro	Zaragoza	0
Alcalá de Moncayo	Zaragoza	0
Alconchel de Ariza	Zaragoza	0
Aldehuela de Liestos	Zaragoza	0
Alfajarín	Zaragoza	0
Alfamén	Zaragoza	0
Alforque	Zaragoza	0
Alhama de Aragón	Zaragoza	0
Almochuel	Zaragoza	0
Almolda, La	Zaragoza	0
Almonacid de la Cuba	Zaragoza	0
Almonacid de la Sierra	Zaragoza	0
Almunia de Doña Godina, La	Zaragoza	0
Alpartir	Zaragoza	0
Ambel	Zaragoza	0
Anento	Zaragoza	0
Aniñón	Zaragoza	0
Añón de Moncayo	Zaragoza	0
Aranda de Moncayo	Zaragoza	0
Arándiga	Zaragoza	0
Ardisa	Zaragoza	0
Ariza	Zaragoza	0
Artieda	Zaragoza	0
Asín	Zaragoza	0
Atea	Zaragoza	0
Ateca	Zaragoza	0
Azuara	Zaragoza	0
Badules	Zaragoza	0
Bagüés	Zaragoza	0
Balconchán	Zaragoza	0
Bárboles	Zaragoza	0
Bardallur	Zaragoza	0
Belchite	Zaragoza	0
Belmonte de Gracián	Zaragoza	0
Berdejo	Zaragoza	0
Berrueco	Zaragoza	0
Bijuesca	Zaragoza	0
Biota	Zaragoza	0
Bisimbre	Zaragoza	0
Boquiñeni	Zaragoza	0
Bordalba	Zaragoza	0
Borja	Zaragoza	0
Botorrita	Zaragoza	0
Brea de Aragón	Zaragoza	0
Bubierca	Zaragoza	0
Bujaraloz	Zaragoza	0
Bulbuente	Zaragoza	0
Bureta	Zaragoza	0
Burgo de Ebro, El	Zaragoza	0
Buste, El	Zaragoza	0
Cabañas de Ebro	Zaragoza	0
Cabolafuente	Zaragoza	0
Cadrete	Zaragoza	0
Calatayud	Zaragoza	0
Calatorao	Zaragoza	0
Calcena	Zaragoza	0
Calmarza	Zaragoza	0
Campillo de Aragón	Zaragoza	0
Carenas	Zaragoza	0
Cariñena	Zaragoza	0
Caspe	Zaragoza	0
Castejón de Alarba	Zaragoza	0
Castejón de las Armas	Zaragoza	0
Castejón de Valdejasa	Zaragoza	0
Castiliscar	Zaragoza	0
Cervera de la Cañada	Zaragoza	0
Cerveruela	Zaragoza	0
Cetina	Zaragoza	0
Cimballa	Zaragoza	0
Cinco Olivas	Zaragoza	0
Clarés de Ribota	Zaragoza	0
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
Épila	Zaragoza	0
Erla	Zaragoza	0
Escatrón	Zaragoza	0
Fabara	Zaragoza	0
Farlete	Zaragoza	0
Fayón	Zaragoza	0
Fayos, Los	Zaragoza	0
Figueruelas	Zaragoza	0
Fombuena	Zaragoza	0
Frago, El	Zaragoza	0
Frasno, El	Zaragoza	0
Fréscano	Zaragoza	0
Fuendejalón	Zaragoza	0
Fuendetodos	Zaragoza	0
Fuentes de Ebro	Zaragoza	0
Fuentes de Jiloca	Zaragoza	0
Gallocanta	Zaragoza	0
Gallur	Zaragoza	0
Gelsa	Zaragoza	0
Godojos	Zaragoza	0
Gotor	Zaragoza	0
Grisel	Zaragoza	0
Grisén	Zaragoza	0
Herrera de los Navarros	Zaragoza	0
Ibdes	Zaragoza	0
Illueca	Zaragoza	0
Isuerre	Zaragoza	0
Jaraba	Zaragoza	0
Jarque	Zaragoza	0
Jaulín	Zaragoza	0
Joyosa, La	Zaragoza	0
Lagata	Zaragoza	0
Langa del Castillo	Zaragoza	0
Layana	Zaragoza	0
Lécera	Zaragoza	0
Leciñena	Zaragoza	0
Lechón	Zaragoza	0
Letux	Zaragoza	0
Litago	Zaragoza	0
Lituénigo	Zaragoza	0
Lobera de Onsella	Zaragoza	0
Longares	Zaragoza	0
Longás	Zaragoza	0
Lucena de Jalón	Zaragoza	0
Luceni	Zaragoza	0
Luesia	Zaragoza	0
Luesma	Zaragoza	0
Lumpiaque	Zaragoza	0
Luna	Zaragoza	0
Maella	Zaragoza	0
Magallón	Zaragoza	0
Mainar	Zaragoza	0
Malanquilla	Zaragoza	0
Maleján	Zaragoza	0
Malón	Zaragoza	0
Maluenda	Zaragoza	0
Mallén	Zaragoza	0
Manchones	Zaragoza	0
Mara	Zaragoza	0
María de Huerva	Zaragoza	0
Mediana de Aragón	Zaragoza	0
Mequinenza	Zaragoza	0
Mesones de Isuela	Zaragoza	0
Mezalocha	Zaragoza	0
Mianos	Zaragoza	0
Miedes de Aragón	Zaragoza	0
Monegrillo	Zaragoza	0
Moneva	Zaragoza	0
Monreal de Ariza	Zaragoza	0
Monterde	Zaragoza	0
Montón	Zaragoza	0
Morata de Jalón	Zaragoza	0
Morata de Jiloca	Zaragoza	0
Morés	Zaragoza	0
Moros	Zaragoza	0
Moyuela	Zaragoza	0
Mozota	Zaragoza	0
Muel	Zaragoza	0
Muela, La	Zaragoza	0
Munébrega	Zaragoza	0
Murero	Zaragoza	0
Murillo de Gállego	Zaragoza	0
Navardún	Zaragoza	0
Nigüella	Zaragoza	0
Nombrevilla	Zaragoza	0
Nonaspe	Zaragoza	0
Novallas	Zaragoza	0
Novillas	Zaragoza	0
Nuévalos	Zaragoza	0
Nuez de Ebro	Zaragoza	0
Olvés	Zaragoza	0
Orcajo	Zaragoza	0
Orera	Zaragoza	0
Orés	Zaragoza	0
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
Plasencia de Jalón	Zaragoza	0
Pleitas	Zaragoza	0
Plenas	Zaragoza	0
Pomer	Zaragoza	0
Pozuel de Ariza	Zaragoza	0
Pozuelo de Aragón	Zaragoza	0
Pradilla de Ebro	Zaragoza	0
Puebla de Albortón	Zaragoza	0
Puebla de Alfindén, La	Zaragoza	0
Puendeluna	Zaragoza	0
Purujosa	Zaragoza	0
Quinto	Zaragoza	0
Remolinos	Zaragoza	0
Retascón	Zaragoza	0
Ricla	Zaragoza	0
Romanos	Zaragoza	0
Rueda de Jalón	Zaragoza	0
Ruesca	Zaragoza	0
Sádaba	Zaragoza	0
Salillas de Jalón	Zaragoza	0
Salvatierra de Esca	Zaragoza	0
Samper del Salz	Zaragoza	0
San Martín de la Virgen de Moncayo	Zaragoza	0
San Mateo de Gállego	Zaragoza	0
Santa Cruz de Grío	Zaragoza	0
Santa Cruz de Moncayo	Zaragoza	0
Santa Eulalia de Gállego	Zaragoza	0
Santed	Zaragoza	0
Sástago	Zaragoza	0
Sabiñán	Zaragoza	0
Sediles	Zaragoza	0
Sestrica	Zaragoza	0
Sierra de Luna	Zaragoza	0
Sigüés	Zaragoza	0
Sisamón	Zaragoza	0
Sobradiel	Zaragoza	0
Sos del Rey Católico	Zaragoza	0
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
Torres de Berrellén	Zaragoza	0
Torrijo de la Cañada	Zaragoza	0
Tosos	Zaragoza	0
Trasmoz	Zaragoza	0
Trasobares	Zaragoza	0
Uncastillo	Zaragoza	0
Undués de Lerda	Zaragoza	0
Urrea de Jalón	Zaragoza	0
Urriés	Zaragoza	0
Used	Zaragoza	0
Utebo	Zaragoza	0
Valdehorna	Zaragoza	0
Val de San Martín	Zaragoza	0
Valmadrid	Zaragoza	0
Valpalmas	Zaragoza	0
Valtorres	Zaragoza	0
Velilla de Ebro	Zaragoza	0
Velilla de Jiloca	Zaragoza	0
Vera de Moncayo	Zaragoza	0
Vierlas	Zaragoza	0
Vilueña, La	Zaragoza	0
Villadoz	Zaragoza	0
Villafeliche	Zaragoza	0
Villafranca de Ebro	Zaragoza	0
Villalba de Perejil	Zaragoza	0
Villalengua	Zaragoza	0
Villanueva de Gállego	Zaragoza	0
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
Villamayor de Gállego	Zaragoza	0
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
Oscar Armengol Cortés	12345678F	callAlguna	Alicante/Alacant	Campello, el	3560	123456789	correo@correo.es
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

