PGDMP     -            
    	    z            users    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16561    users    DATABASE     b   CREATE DATABASE users WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE users;
                postgres    false            �           0    0    DATABASE users    COMMENT     4   COMMENT ON DATABASE users IS 'first test database';
                   postgres    false    3324            �            1259    16583 	   addresses    TABLE     f   CREATE TABLE public.addresses (
    address text NOT NULL,
    neighbourhood text,
    county text
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            �            1259    16576 	   employers    TABLE     X   CREATE TABLE public.employers (
    fullname text NOT NULL,
    age integer NOT NULL
);
    DROP TABLE public.employers;
       public         heap    postgres    false            �            1259    16590    schedule    TABLE     z   CREATE TABLE public.schedule (
    begintime time without time zone NOT NULL,
    endtime time with time zone NOT NULL
);
    DROP TABLE public.schedule;
       public         heap    postgres    false            �          0    16583 	   addresses 
   TABLE DATA           C   COPY public.addresses (address, neighbourhood, county) FROM stdin;
    public          postgres    false    210          �          0    16576 	   employers 
   TABLE DATA           2   COPY public.employers (fullname, age) FROM stdin;
    public          postgres    false    209   )       �          0    16590    schedule 
   TABLE DATA           6   COPY public.schedule (begintime, endtime) FROM stdin;
    public          postgres    false    211   �       f           2606    16589    addresses addresses_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (address);
 B   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_pkey;
       public            postgres    false    210            d           2606    16582    employers employers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT employers_pkey PRIMARY KEY (fullname);
 B   ALTER TABLE ONLY public.employers DROP CONSTRAINT employers_pkey;
       public            postgres    false    209            h           2606    16594    schedule schedule_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (begintime, endtime);
 @   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_pkey;
       public            postgres    false    211    211            �      x������ � �      �   Y   x�.I�S��,��42�
�OJ-*QO�)I-�46�r)�INUp+���̹��Ss|S+�\S.��ļ�D��R #��Ԙ+F��� ��y      �      x������ � �     