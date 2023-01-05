--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-01-05 14:54:11

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
-- TOC entry 214 (class 1259 OID 16422)
-- Name: user_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_info (
    id character varying NOT NULL,
    password character varying NOT NULL,
    email character varying,
    name character varying
);


ALTER TABLE public.user_info OWNER TO postgres;

--
-- TOC entry 3313 (class 0 OID 16422)
-- Dependencies: 214
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_info (id, password, email, name) FROM stdin;
bivchenko0	Ji0Edcm8	bivchenko0@tinyurl.com	Bartlett Ivchenko
rdockreay1	53OvLGi	rdockreay1@mysql.com	Roana Dockreay
hmcgairl2	477Bfn0bllzd	hmcgairl2@eventbrite.com	Hilarius McGairl
lkores3	Jdzj0V	lkores3@ebay.co.uk	Liva Kores
sbelison4	oTcAyh1U4q	sbelison4@blog.com	Sigismundo Belison
sdundredge5	xwgOIjolt9rF	sdundredge5@privacy.gov.au	Sancho Dundredge
mleveritt6	QPAn9SzxF	mleveritt6@facebook.com	Margalit Leveritt
cwraith7	WPHu6yr6	cwraith7@columbia.edu	Carlos Wraith
hmccahey8	BTthnBRM	hmccahey8@360.cn	Harlene McCahey
krolland9	pG4a2kcc	krolland9@mac.com	Kellyann Rolland
bwixona	yS0aCYFqRj	bwixona@bloglines.com	Brook Wixon
nberwickb	ugi5wQ5xuy	nberwickb@amazon.co.uk	Napoleon Berwick
ckeldc	LNdoFGNEsa	ckeldc@elpais.com	Cully Keld
mambridged	u06YhnWcSFCV	mambridged@prweb.com	Min Ambridge
mbiaggiolie	AUhMo2B	mbiaggiolie@wiley.com	Melessa Biaggioli
wdrummerf	S9IpVtovfD	wdrummerf@slideshare.net	Wald Drummer
gthalg	YI2ZBlfR7K8w	gthalg@netscape.com	Guntar Thal
achalfonth	3Zvyv94Zl	achalfonth@google.pl	Agathe Chalfont
mswiggi	WUbZrePft	mswiggi@senate.gov	Maure Swigg
vcharkj	EApoTbkKTxQi	vcharkj@who.int	Violetta Chark
yblandk	2klV4Ec	yblandk@usgs.gov	Yetta Bland
adobsonl	61QrJO9F	adobsonl@ebay.co.uk	Adan Dobson
rreffem	yDrmqSsKU	rreffem@constantcontact.com	Rourke Reffe
gmeggisonn	5wO10D	gmeggisonn@house.gov	Gaspar Meggison
dmcgaheyo	K15whJ	dmcgaheyo@issuu.com	Doll McGahey
jgoldthorpep	F7TrA933J5j6	jgoldthorpep@rediff.com	Jazmin Goldthorpe
valleboneq	J0kndqp	valleboneq@acquirethisname.com	Valma Allebone
fzarfatir	LflELM	fzarfatir@trellian.com	Franny Zarfati
cvans	gA3HdGp1aPWe	cvans@merriam-webster.com	Chrotoem Van Velde
mrackstrawt	mNAsWydeNe	mrackstrawt@bbc.co.uk	Mozes Rackstraw
wayrsu	JTNvGg	wayrsu@domainmarket.com	Walther Ayrs
scatterillv	SCSxpNwN	scatterillv@noaa.gov	Sherwin Catterill
jkurtw	UEoNYUm	jkurtw@sfgate.com	Jay Kurt
ekhadirx	86kzma9U	ekhadirx@amazon.co.jp	Elnora Khadir
mburnhamsy	qe6S4G5PUwV	mburnhamsy@baidu.com	Mikaela Burnhams
scollishawz	zn2aiOoSUwgh	scollishawz@csmonitor.com	Somerset Collishaw
mswinburn10	In8I8Ixa	mswinburn10@sbwire.com	Mar Swinburn
ggrimsditch11	8w3rEuFGS2	ggrimsditch11@google.co.uk	Gabie Grimsditch
smatyatin12	8oM4z9gobgY	smatyatin12@de.vu	Sid Matyatin
bhasselby13	69oPJf	bhasselby13@barnesandnoble.com	Biddy Hasselby
psymon14	CZF1ZEmzgUx	psymon14@list-manage.com	Pernell Symon
abuttress15	gnxR6NWq	abuttress15@twitter.com	Arluene Buttress
abatchelar16	E6vjXe0	abatchelar16@howstuffworks.com	Avictor Batchelar
jmaulkin17	vkdJfhA2qvy	jmaulkin17@yellowbook.com	Jackquelin Maulkin
tcullen18	YtV6zpe3	tcullen18@sina.com.cn	Talbot Cullen
ngull19	JDrAfh2nX3z	ngull19@bbc.co.uk	Nara Gull
bdomino1a	I11Hw2hhemW4	bdomino1a@meetup.com	Bjorn Domino
dbrannon1b	kEk3ituUW	dbrannon1b@wiley.com	Dianna Brannon
vhunnam1c	kKz5PtzyNc	vhunnam1c@bbc.co.uk	Vinny Hunnam
rlaxen1d	t10lHrMp	rlaxen1d@bbc.co.uk	Ralph Laxen
kkunat1e	qikRk8OPqM	kkunat1e@nytimes.com	Karlis Kunat
bfores1f	vSJe5ImJd8kI	bfores1f@nydailynews.com	Barri Fores
wentissle1g	DMVAyt	wentissle1g@ed.gov	Wernher Entissle
dbradbrook1h	vIH5jj	dbradbrook1h@parallels.com	Darnall Bradbrook
cbeagley1i	6LEuyvW7O	cbeagley1i@google.com	Caleb Beagley
mboundley1j	bIFcoCC6	mboundley1j@netlog.com	Madel Boundley
gjuanes1k	GvJ1Jja	gjuanes1k@narod.ru	Gibb Juanes
astilling1l	ZFRIxKO	astilling1l@odnoklassniki.ru	Adelbert Stilling
wbatting1m	aMfK4QTKV	wbatting1m@prlog.org	Willard Batting
gbellham1n	MqD96S3tFxZw	gbellham1n@prnewswire.com	Gabie Bellham
mhagland1o	bRXHRi4DaE8	mhagland1o@squarespace.com	Myrna Hagland
eoheneghan1p	BpPf0I	eoheneghan1p@seesaa.net	Erda O'Heneghan
pmacmichael1q	jzx1PSylxd	pmacmichael1q@taobao.com	Powell MacMichael
btedder1r	htM2H2	btedder1r@upenn.edu	Bennett Tedder
pcusted1s	BJQ7uvUZn	pcusted1s@yahoo.com	Paco Custed
kbowmaker1t	XZaMtOLuLp	kbowmaker1t@tinyurl.com	Kevyn Bowmaker
bhariot1u	8k6ZJSeL	bhariot1u@google.de	Brigg Hariot
ebrise1v	9k3hGpPluYk	ebrise1v@opera.com	Elinore Brise
wbudibent1w	9txNLh	wbudibent1w@disqus.com	Wang Budibent
mmallord1x	haX7U7FYdyGw	mmallord1x@simplemachines.org	Marci Mallord
jhischke1y	7zCFbhEWwl	jhischke1y@pagesperso-orange.fr	Jenilee Hischke
sgibberd1z	lLkbHu	sgibberd1z@bigcartel.com	Sholom Gibberd
cfleisch20	RYGm2zqH	cfleisch20@google.ru	Carine Fleisch
salbury21	tRkEmZDUDPVG	salbury21@ycombinator.com	Sandye Albury
rbilsford22	hNDK7GZd	rbilsford22@diigo.com	Rubia Bilsford
klarham23	lNOgDf2UZu	klarham23@privacy.gov.au	Kassie Larham
aposse24	uTeKvher33	aposse24@trellian.com	Arden Posse
crosling25	xpgZN54pXeZF	crosling25@nifty.com	Cullie Rosling
gkew26	umG3zaCcv	gkew26@mozilla.org	Gibb Kew
bvinck27	yk2X6cKGgf	bvinck27@jugem.jp	Bonnibelle Vinck
lseverwright28	cvKDx5X	lseverwright28@dropbox.com	Libby Severwright
rhursthouse29	qzVUfBE	rhursthouse29@sciencedirect.com	Rayner Hursthouse
lshatliffe2a	dkoa3xUF1	lshatliffe2a@liveinternet.ru	Lars Shatliffe
psteely2b	Wa2Ar9USQNzN	psteely2b@chron.com	Paxon Steely
lfranciottoi2c	GuNE8Ziyl4l	lfranciottoi2c@zdnet.com	Lisa Franciottoi
bguswell2d	rAELHmOBpUb	bguswell2d@tripadvisor.com	Beale Guswell
cgillum2e	d2ImWbNHcV2x	cgillum2e@upenn.edu	Cordula Gillum
aboscher2f	uErrcqT5ul	aboscher2f@cornell.edu	Alistair Boscher
tbeauly2g	6EIqdL1fZHx	tbeauly2g@msn.com	Torin Beauly
bcrysell2h	4cStgA	bcrysell2h@dagondesign.com	Barney Crysell
mschimaschke2i	M3RYqH	mschimaschke2i@barnesandnoble.com	Marsiella Schimaschke
elitton2j	UMYorAR4BO	elitton2j@cdbaby.com	Emylee Litton
afrancomb2k	pt533caB8	afrancomb2k@wisc.edu	Antonius Francomb
aconkling2l	Hk2ZI971pl	aconkling2l@weather.com	Allys Conkling
mfitkin2m	sQh87B	mfitkin2m@unicef.org	Marv Fitkin
hilyunin2n	NxjdaGCw	hilyunin2n@usatoday.com	Harvey Ilyunin
tlestor2o	ic3wpxP1q	tlestor2o@weather.com	Terza Lestor
kkleinmintz2p	1PVyydp6	kkleinmintz2p@hostgator.com	Kirsten Kleinmintz
aevesque2q	0y5tnC	aevesque2q@weather.com	Atlanta Evesque
ezywicki2r	2Qzz9KT73zAD	ezywicki2r@1und1.de	Ernaline Zywicki
ezywicki2r	2Qzz9KT73zAD	ezywicki2r@1und1.de	Ernaline Zywicki
\.


-- Completed on 2023-01-05 14:54:12

--
-- PostgreSQL database dump complete
--

