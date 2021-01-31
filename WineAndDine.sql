toc.dat                                                                                             0000600 0004000 0002000 00000020446 14005375654 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP            %                 y            WineAndDine    13.0    13.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    17813    WineAndDine    DATABASE     q   CREATE DATABASE "WineAndDine" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "WineAndDine";
                postgres    false         �            1259    18102 
   cheesedata    TABLE     }   CREATE TABLE public.cheesedata (
    cheeseid integer NOT NULL,
    name character varying NOT NULL,
    regionid integer
);
    DROP TABLE public.cheesedata;
       public         heap    postgres    false         �            1259    18115    cheeseflavors    TABLE     j   CREATE TABLE public.cheeseflavors (
    flavorid integer NOT NULL,
    name character varying NOT NULL
);
 !   DROP TABLE public.cheeseflavors;
       public         heap    postgres    false         �            1259    18110    flavorlookups    TABLE     d   CREATE TABLE public.flavorlookups (
    cheeseid integer NOT NULL,
    flavorid integer NOT NULL
);
 !   DROP TABLE public.flavorlookups;
       public         heap    postgres    false         �            1259    18094    winecheesepairingdata    TABLE     ~   CREATE TABLE public.winecheesepairingdata (
    wine character varying NOT NULL,
    cheesename character varying NOT NULL
);
 )   DROP TABLE public.winecheesepairingdata;
       public         heap    postgres    false         �            1259    18078    wineries    TABLE     �   CREATE TABLE public.wineries (
    winery character varying NOT NULL,
    web character varying,
    region character varying,
    country character varying NOT NULL
);
    DROP TABLE public.wineries;
       public         heap    postgres    false         �            1259    18086    wines    TABLE     �  CREATE TABLE public.wines (
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
       public         heap    postgres    false         �            1259    18070 
   worldmeats    TABLE     �   CREATE TABLE public.worldmeats (
    name character varying NOT NULL,
    country character varying NOT NULL,
    region character varying,
    description text NOT NULL
);
    DROP TABLE public.worldmeats;
       public         heap    postgres    false         �          0    18102 
   cheesedata 
   TABLE DATA                 public          postgres    false    204       3031.dat �          0    18115    cheeseflavors 
   TABLE DATA                 public          postgres    false    206       3033.dat �          0    18110    flavorlookups 
   TABLE DATA                 public          postgres    false    205       3032.dat �          0    18094    winecheesepairingdata 
   TABLE DATA                 public          postgres    false    203       3030.dat �          0    18078    wineries 
   TABLE DATA                 public          postgres    false    201       3028.dat �          0    18086    wines 
   TABLE DATA                 public          postgres    false    202       3029.dat �          0    18070 
   worldmeats 
   TABLE DATA                 public          postgres    false    200       3027.dat G           2606    18109    cheesedata cheesedata_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cheesedata
    ADD CONSTRAINT cheesedata_pkey PRIMARY KEY (name);
 D   ALTER TABLE ONLY public.cheesedata DROP CONSTRAINT cheesedata_pkey;
       public            postgres    false    204         K           2606    18122     cheeseflavors cheeseflavors_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cheeseflavors
    ADD CONSTRAINT cheeseflavors_pkey PRIMARY KEY (flavorid);
 J   ALTER TABLE ONLY public.cheeseflavors DROP CONSTRAINT cheeseflavors_pkey;
       public            postgres    false    206         I           2606    18114     flavorlookups flavorlookups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.flavorlookups
    ADD CONSTRAINT flavorlookups_pkey PRIMARY KEY (cheeseid);
 J   ALTER TABLE ONLY public.flavorlookups DROP CONSTRAINT flavorlookups_pkey;
       public            postgres    false    205         E           2606    18101 0   winecheesepairingdata winecheesepairingdata_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.winecheesepairingdata
    ADD CONSTRAINT winecheesepairingdata_pkey PRIMARY KEY (wine);
 Z   ALTER TABLE ONLY public.winecheesepairingdata DROP CONSTRAINT winecheesepairingdata_pkey;
       public            postgres    false    203         A           2606    18085    wineries wineries_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.wineries
    ADD CONSTRAINT wineries_pkey PRIMARY KEY (winery);
 @   ALTER TABLE ONLY public.wineries DROP CONSTRAINT wineries_pkey;
       public            postgres    false    201         C           2606    18093    wines wines_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.wines
    ADD CONSTRAINT wines_pkey PRIMARY KEY (title);
 :   ALTER TABLE ONLY public.wines DROP CONSTRAINT wines_pkey;
       public            postgres    false    202         ?           2606    18077    worldmeats worldmeats_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.worldmeats
    ADD CONSTRAINT worldmeats_pkey PRIMARY KEY (name);
 D   ALTER TABLE ONLY public.worldmeats DROP CONSTRAINT worldmeats_pkey;
       public            postgres    false    200         O           2606    18138 !   cheesedata fk_cheesedata_cheeseid    FK CONSTRAINT     �   ALTER TABLE ONLY public.cheesedata
    ADD CONSTRAINT fk_cheesedata_cheeseid FOREIGN KEY (cheeseid) REFERENCES public.flavorlookups(cheeseid);
 K   ALTER TABLE ONLY public.cheesedata DROP CONSTRAINT fk_cheesedata_cheeseid;
       public          postgres    false    204    205    2889         P           2606    18143 '   flavorlookups fk_flavorlookups_flavorid    FK CONSTRAINT     �   ALTER TABLE ONLY public.flavorlookups
    ADD CONSTRAINT fk_flavorlookups_flavorid FOREIGN KEY (flavorid) REFERENCES public.cheeseflavors(flavorid);
 Q   ALTER TABLE ONLY public.flavorlookups DROP CONSTRAINT fk_flavorlookups_flavorid;
       public          postgres    false    206    205    2891         N           2606    18133 9   winecheesepairingdata fk_winecheesepairingdata_cheesename    FK CONSTRAINT     �   ALTER TABLE ONLY public.winecheesepairingdata
    ADD CONSTRAINT fk_winecheesepairingdata_cheesename FOREIGN KEY (cheesename) REFERENCES public.cheesedata(name);
 c   ALTER TABLE ONLY public.winecheesepairingdata DROP CONSTRAINT fk_winecheesepairingdata_cheesename;
       public          postgres    false    2887    203    204         L           2606    18123    wines fk_wines_variety    FK CONSTRAINT     �   ALTER TABLE ONLY public.wines
    ADD CONSTRAINT fk_wines_variety FOREIGN KEY (variety) REFERENCES public.winecheesepairingdata(wine);
 @   ALTER TABLE ONLY public.wines DROP CONSTRAINT fk_wines_variety;
       public          postgres    false    2885    202    203         M           2606    18128    wines fk_wines_winery    FK CONSTRAINT     z   ALTER TABLE ONLY public.wines
    ADD CONSTRAINT fk_wines_winery FOREIGN KEY (winery) REFERENCES public.wineries(winery);
 ?   ALTER TABLE ONLY public.wines DROP CONSTRAINT fk_wines_winery;
       public          postgres    false    201    2881    202                                                                                                                                                                                                                                  3031.dat                                                                                            0000600 0004000 0002000 00000000002 14005375654 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3033.dat                                                                                            0000600 0004000 0002000 00000000002 14005375654 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3032.dat                                                                                            0000600 0004000 0002000 00000000002 14005375654 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3030.dat                                                                                            0000600 0004000 0002000 00000000002 14005375654 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3028.dat                                                                                            0000600 0004000 0002000 00000000002 14005375654 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3029.dat                                                                                            0000600 0004000 0002000 00000000002 14005375654 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3027.dat                                                                                            0000600 0004000 0002000 00000000002 14005375654 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000015224 14005375654 0015401 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

DROP DATABASE "WineAndDine";
--
-- Name: WineAndDine; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "WineAndDine" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE "WineAndDine" OWNER TO postgres;

\connect "WineAndDine"

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
-- Name: cheeseflavors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cheeseflavors (
    flavorid integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.cheeseflavors OWNER TO postgres;

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
-- Data for Name: cheesedata; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3031.dat

--
-- Data for Name: cheeseflavors; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3033.dat

--
-- Data for Name: flavorlookups; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3032.dat

--
-- Data for Name: winecheesepairingdata; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3030.dat

--
-- Data for Name: wineries; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3028.dat

--
-- Data for Name: wines; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3029.dat

--
-- Data for Name: worldmeats; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3027.dat

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

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            