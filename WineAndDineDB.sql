toc.dat                                                                                             0000600 0004000 0002000 00000025112 14005411515 0014434 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       1                     y            WineAndDineDB    13.0    13.0 &    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    18148    WineAndDineDB    DATABASE     s   CREATE DATABASE "WineAndDineDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "WineAndDineDB";
                postgres    false         �            1259    18183 
   cheesedata    TABLE     }   CREATE TABLE public.cheesedata (
    cheeseid integer NOT NULL,
    name character varying NOT NULL,
    regionid integer
);
    DROP TABLE public.cheesedata;
       public         heap    postgres    false         �            1259    18181    cheesedata_cheeseid_seq    SEQUENCE     �   CREATE SEQUENCE public.cheesedata_cheeseid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cheesedata_cheeseid_seq;
       public          postgres    false    205         �           0    0    cheesedata_cheeseid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cheesedata_cheeseid_seq OWNED BY public.cheesedata.cheeseid;
          public          postgres    false    204         �            1259    18199    cheeseflavors    TABLE     j   CREATE TABLE public.cheeseflavors (
    flavorid integer NOT NULL,
    name character varying NOT NULL
);
 !   DROP TABLE public.cheeseflavors;
       public         heap    postgres    false         �            1259    18197    cheeseflavors_flavorid_seq    SEQUENCE     �   CREATE SEQUENCE public.cheeseflavors_flavorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cheeseflavors_flavorid_seq;
       public          postgres    false    208         �           0    0    cheeseflavors_flavorid_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.cheeseflavors_flavorid_seq OWNED BY public.cheeseflavors.flavorid;
          public          postgres    false    207         �            1259    18192    flavorlookups    TABLE     d   CREATE TABLE public.flavorlookups (
    cheeseid integer NOT NULL,
    flavorid integer NOT NULL
);
 !   DROP TABLE public.flavorlookups;
       public         heap    postgres    false         �            1259    18173    winecheesepairingdata    TABLE     ~   CREATE TABLE public.winecheesepairingdata (
    wine character varying NOT NULL,
    cheesename character varying NOT NULL
);
 )   DROP TABLE public.winecheesepairingdata;
       public         heap    postgres    false         �            1259    18157    wineries    TABLE     �   CREATE TABLE public.wineries (
    winery character varying NOT NULL,
    web character varying,
    region character varying,
    country character varying NOT NULL
);
    DROP TABLE public.wineries;
       public         heap    postgres    false         �            1259    18165    wines    TABLE     �  CREATE TABLE public.wines (
    vintage integer NOT NULL,
    country character varying NOT NULL,
    county character varying,
    designation character varying,
    points integer NOT NULL,
    price double precision NOT NULL,
    province character varying NOT NULL,
    title character varying NOT NULL,
    variety character varying NOT NULL,
    winery character varying NOT NULL
);
    DROP TABLE public.wines;
       public         heap    postgres    false         �            1259    18149 
   worldmeats    TABLE     �   CREATE TABLE public.worldmeats (
    name character varying NOT NULL,
    country character varying NOT NULL,
    region character varying,
    description text NOT NULL
);
    DROP TABLE public.worldmeats;
       public         heap    postgres    false         B           2604    18186    cheesedata cheeseid    DEFAULT     z   ALTER TABLE ONLY public.cheesedata ALTER COLUMN cheeseid SET DEFAULT nextval('public.cheesedata_cheeseid_seq'::regclass);
 B   ALTER TABLE public.cheesedata ALTER COLUMN cheeseid DROP DEFAULT;
       public          postgres    false    204    205    205         C           2604    18202    cheeseflavors flavorid    DEFAULT     �   ALTER TABLE ONLY public.cheeseflavors ALTER COLUMN flavorid SET DEFAULT nextval('public.cheeseflavors_flavorid_seq'::regclass);
 E   ALTER TABLE public.cheeseflavors ALTER COLUMN flavorid DROP DEFAULT;
       public          postgres    false    207    208    208         �          0    18183 
   cheesedata 
   TABLE DATA                 public          postgres    false    205       3038.dat �          0    18199    cheeseflavors 
   TABLE DATA                 public          postgres    false    208       3041.dat �          0    18192    flavorlookups 
   TABLE DATA                 public          postgres    false    206       3039.dat �          0    18173    winecheesepairingdata 
   TABLE DATA                 public          postgres    false    203       3036.dat �          0    18157    wineries 
   TABLE DATA                 public          postgres    false    201       3034.dat �          0    18165    wines 
   TABLE DATA                 public          postgres    false    202       3035.dat �          0    18149 
   worldmeats 
   TABLE DATA                 public          postgres    false    200       3033.dat �           0    0    cheesedata_cheeseid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.cheesedata_cheeseid_seq', 1, false);
          public          postgres    false    204         �           0    0    cheeseflavors_flavorid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cheeseflavors_flavorid_seq', 1, false);
          public          postgres    false    207         M           2606    18191    cheesedata cheesedata_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cheesedata
    ADD CONSTRAINT cheesedata_pkey PRIMARY KEY (name);
 D   ALTER TABLE ONLY public.cheesedata DROP CONSTRAINT cheesedata_pkey;
       public            postgres    false    205         Q           2606    18207     cheeseflavors cheeseflavors_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cheeseflavors
    ADD CONSTRAINT cheeseflavors_pkey PRIMARY KEY (flavorid);
 J   ALTER TABLE ONLY public.cheeseflavors DROP CONSTRAINT cheeseflavors_pkey;
       public            postgres    false    208         O           2606    18196     flavorlookups flavorlookups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.flavorlookups
    ADD CONSTRAINT flavorlookups_pkey PRIMARY KEY (cheeseid);
 J   ALTER TABLE ONLY public.flavorlookups DROP CONSTRAINT flavorlookups_pkey;
       public            postgres    false    206         K           2606    18180 0   winecheesepairingdata winecheesepairingdata_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.winecheesepairingdata
    ADD CONSTRAINT winecheesepairingdata_pkey PRIMARY KEY (wine);
 Z   ALTER TABLE ONLY public.winecheesepairingdata DROP CONSTRAINT winecheesepairingdata_pkey;
       public            postgres    false    203         G           2606    18164    wineries wineries_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.wineries
    ADD CONSTRAINT wineries_pkey PRIMARY KEY (winery);
 @   ALTER TABLE ONLY public.wineries DROP CONSTRAINT wineries_pkey;
       public            postgres    false    201         I           2606    18172    wines wines_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.wines
    ADD CONSTRAINT wines_pkey PRIMARY KEY (title);
 :   ALTER TABLE ONLY public.wines DROP CONSTRAINT wines_pkey;
       public            postgres    false    202         E           2606    18156    worldmeats worldmeats_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.worldmeats
    ADD CONSTRAINT worldmeats_pkey PRIMARY KEY (name);
 D   ALTER TABLE ONLY public.worldmeats DROP CONSTRAINT worldmeats_pkey;
       public            postgres    false    200         U           2606    18223 !   cheesedata fk_cheesedata_cheeseid    FK CONSTRAINT     �   ALTER TABLE ONLY public.cheesedata
    ADD CONSTRAINT fk_cheesedata_cheeseid FOREIGN KEY (cheeseid) REFERENCES public.flavorlookups(cheeseid);
 K   ALTER TABLE ONLY public.cheesedata DROP CONSTRAINT fk_cheesedata_cheeseid;
       public          postgres    false    206    2895    205         V           2606    18228 '   flavorlookups fk_flavorlookups_flavorid    FK CONSTRAINT     �   ALTER TABLE ONLY public.flavorlookups
    ADD CONSTRAINT fk_flavorlookups_flavorid FOREIGN KEY (flavorid) REFERENCES public.cheeseflavors(flavorid);
 Q   ALTER TABLE ONLY public.flavorlookups DROP CONSTRAINT fk_flavorlookups_flavorid;
       public          postgres    false    208    2897    206         T           2606    18218 9   winecheesepairingdata fk_winecheesepairingdata_cheesename    FK CONSTRAINT     �   ALTER TABLE ONLY public.winecheesepairingdata
    ADD CONSTRAINT fk_winecheesepairingdata_cheesename FOREIGN KEY (cheesename) REFERENCES public.cheesedata(name);
 c   ALTER TABLE ONLY public.winecheesepairingdata DROP CONSTRAINT fk_winecheesepairingdata_cheesename;
       public          postgres    false    2893    205    203         R           2606    18208    wines fk_wines_variety    FK CONSTRAINT     �   ALTER TABLE ONLY public.wines
    ADD CONSTRAINT fk_wines_variety FOREIGN KEY (variety) REFERENCES public.winecheesepairingdata(wine);
 @   ALTER TABLE ONLY public.wines DROP CONSTRAINT fk_wines_variety;
       public          postgres    false    2891    203    202         S           2606    18213    wines fk_wines_winery    FK CONSTRAINT     z   ALTER TABLE ONLY public.wines
    ADD CONSTRAINT fk_wines_winery FOREIGN KEY (winery) REFERENCES public.wineries(winery);
 ?   ALTER TABLE ONLY public.wines DROP CONSTRAINT fk_wines_winery;
       public          postgres    false    2887    202    201                                                                                                                                                                                                                                                                                                                                                                                                                                                              3038.dat                                                                                            0000600 0004000 0002000 00000000002 14005411515 0014233 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3041.dat                                                                                            0000600 0004000 0002000 00000000002 14005411515 0014225 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3039.dat                                                                                            0000600 0004000 0002000 00000000002 14005411515 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3036.dat                                                                                            0000600 0004000 0002000 00000000002 14005411515 0014231 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3034.dat                                                                                            0000600 0004000 0002000 00000000002 14005411515 0014227 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3035.dat                                                                                            0000600 0004000 0002000 00000000002 14005411515 0014230 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3033.dat                                                                                            0000600 0004000 0002000 00000000002 14005411515 0014226 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000020551 14005411515 0015363 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

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

DROP DATABASE "WineAndDineDB";
--
-- Name: WineAndDineDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "WineAndDineDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE "WineAndDineDB" OWNER TO postgres;

\connect "WineAndDineDB"

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
-- Name: cheesedata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cheesedata (
    cheeseid integer NOT NULL,
    name character varying NOT NULL,
    regionid integer
);


ALTER TABLE public.cheesedata OWNER TO postgres;

--
-- Name: cheesedata_cheeseid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cheesedata_cheeseid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cheesedata_cheeseid_seq OWNER TO postgres;

--
-- Name: cheesedata_cheeseid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cheesedata_cheeseid_seq OWNED BY public.cheesedata.cheeseid;


--
-- Name: cheeseflavors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cheeseflavors (
    flavorid integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.cheeseflavors OWNER TO postgres;

--
-- Name: cheeseflavors_flavorid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cheeseflavors_flavorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cheeseflavors_flavorid_seq OWNER TO postgres;

--
-- Name: cheeseflavors_flavorid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cheeseflavors_flavorid_seq OWNED BY public.cheeseflavors.flavorid;


--
-- Name: flavorlookups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flavorlookups (
    cheeseid integer NOT NULL,
    flavorid integer NOT NULL
);


ALTER TABLE public.flavorlookups OWNER TO postgres;

--
-- Name: winecheesepairingdata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.winecheesepairingdata (
    wine character varying NOT NULL,
    cheesename character varying NOT NULL
);


ALTER TABLE public.winecheesepairingdata OWNER TO postgres;

--
-- Name: wineries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wineries (
    winery character varying NOT NULL,
    web character varying,
    region character varying,
    country character varying NOT NULL
);


ALTER TABLE public.wineries OWNER TO postgres;

--
-- Name: wines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wines (
    vintage integer NOT NULL,
    country character varying NOT NULL,
    county character varying,
    designation character varying,
    points integer NOT NULL,
    price double precision NOT NULL,
    province character varying NOT NULL,
    title character varying NOT NULL,
    variety character varying NOT NULL,
    winery character varying NOT NULL
);


ALTER TABLE public.wines OWNER TO postgres;

--
-- Name: worldmeats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.worldmeats (
    name character varying NOT NULL,
    country character varying NOT NULL,
    region character varying,
    description text NOT NULL
);


ALTER TABLE public.worldmeats OWNER TO postgres;

--
-- Name: cheesedata cheeseid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cheesedata ALTER COLUMN cheeseid SET DEFAULT nextval('public.cheesedata_cheeseid_seq'::regclass);


--
-- Name: cheeseflavors flavorid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cheeseflavors ALTER COLUMN flavorid SET DEFAULT nextval('public.cheeseflavors_flavorid_seq'::regclass);


--
-- Data for Name: cheesedata; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3038.dat

--
-- Data for Name: cheeseflavors; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3041.dat

--
-- Data for Name: flavorlookups; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3039.dat

--
-- Data for Name: winecheesepairingdata; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3036.dat

--
-- Data for Name: wineries; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3034.dat

--
-- Data for Name: wines; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3035.dat

--
-- Data for Name: worldmeats; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3033.dat

--
-- Name: cheesedata_cheeseid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cheesedata_cheeseid_seq', 1, false);


--
-- Name: cheeseflavors_flavorid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cheeseflavors_flavorid_seq', 1, false);


--
-- Name: cheesedata cheesedata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cheesedata
    ADD CONSTRAINT cheesedata_pkey PRIMARY KEY (name);


--
-- Name: cheeseflavors cheeseflavors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cheeseflavors
    ADD CONSTRAINT cheeseflavors_pkey PRIMARY KEY (flavorid);


--
-- Name: flavorlookups flavorlookups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flavorlookups
    ADD CONSTRAINT flavorlookups_pkey PRIMARY KEY (cheeseid);


--
-- Name: winecheesepairingdata winecheesepairingdata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.winecheesepairingdata
    ADD CONSTRAINT winecheesepairingdata_pkey PRIMARY KEY (wine);


--
-- Name: wineries wineries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wineries
    ADD CONSTRAINT wineries_pkey PRIMARY KEY (winery);


--
-- Name: wines wines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wines
    ADD CONSTRAINT wines_pkey PRIMARY KEY (title);


--
-- Name: worldmeats worldmeats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worldmeats
    ADD CONSTRAINT worldmeats_pkey PRIMARY KEY (name);


--
-- Name: cheesedata fk_cheesedata_cheeseid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cheesedata
    ADD CONSTRAINT fk_cheesedata_cheeseid FOREIGN KEY (cheeseid) REFERENCES public.flavorlookups(cheeseid);


--
-- Name: flavorlookups fk_flavorlookups_flavorid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flavorlookups
    ADD CONSTRAINT fk_flavorlookups_flavorid FOREIGN KEY (flavorid) REFERENCES public.cheeseflavors(flavorid);


--
-- Name: winecheesepairingdata fk_winecheesepairingdata_cheesename; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.winecheesepairingdata
    ADD CONSTRAINT fk_winecheesepairingdata_cheesename FOREIGN KEY (cheesename) REFERENCES public.cheesedata(name);


--
-- Name: wines fk_wines_variety; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wines
    ADD CONSTRAINT fk_wines_variety FOREIGN KEY (variety) REFERENCES public.winecheesepairingdata(wine);


--
-- Name: wines fk_wines_winery; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wines
    ADD CONSTRAINT fk_wines_winery FOREIGN KEY (winery) REFERENCES public.wineries(winery);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       