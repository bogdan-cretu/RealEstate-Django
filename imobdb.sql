PGDMP                          y           imobdb    13.4    13.4 z    b           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            c           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            d           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            e           1262    16591    imobdb    DATABASE     [   CREATE DATABASE imobdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE imobdb;
                postgres    false            �            1259    16623 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16621    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            f           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    16633    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16631    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            g           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    16615    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16613    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            h           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    16641 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16651    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16649    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            i           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            �            1259    16639    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            j           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            �            1259    16659    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16657 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            k           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            �            1259    16752    contacts_contact    TABLE     |  CREATE TABLE public.contacts_contact (
    id bigint NOT NULL,
    listing character varying(200) NOT NULL,
    listing_id integer NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    message text NOT NULL,
    contact_date timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 $   DROP TABLE public.contacts_contact;
       public         heap    postgres    false            �            1259    16750    contacts_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contacts_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.contacts_contact_id_seq;
       public          postgres    false    219            l           0    0    contacts_contact_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.contacts_contact_id_seq OWNED BY public.contacts_contact.id;
          public          postgres    false    218            �            1259    16719    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16717    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            m           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            �            1259    16605    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16603    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            n           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    16594    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16592    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            o           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    16789    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16774    listings_listing    TABLE     �  CREATE TABLE public.listings_listing (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    zipcode character varying(20) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    bedrooms integer NOT NULL,
    bathrooms numeric(2,1) NOT NULL,
    garage integer NOT NULL,
    sqft integer NOT NULL,
    lot_size numeric(5,1) NOT NULL,
    photo_main character varying(100) NOT NULL,
    photo_1 character varying(100) NOT NULL,
    photo_2 character varying(100) NOT NULL,
    photo_3 character varying(100) NOT NULL,
    photo_4 character varying(100) NOT NULL,
    photo_5 character varying(100) NOT NULL,
    photo_6 character varying(100) NOT NULL,
    is_published boolean NOT NULL,
    list_date timestamp with time zone NOT NULL,
    realtor_id bigint NOT NULL
);
 $   DROP TABLE public.listings_listing;
       public         heap    postgres    false            �            1259    16772    listings_listing_id_seq    SEQUENCE     �   CREATE SEQUENCE public.listings_listing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.listings_listing_id_seq;
       public          postgres    false    223            p           0    0    listings_listing_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.listings_listing_id_seq OWNED BY public.listings_listing.id;
          public          postgres    false    222            �            1259    16763    realtors_realtor    TABLE     W  CREATE TABLE public.realtors_realtor (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    photo character varying(100) NOT NULL,
    description text NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    is_mvp boolean NOT NULL,
    hire_date timestamp with time zone NOT NULL
);
 $   DROP TABLE public.realtors_realtor;
       public         heap    postgres    false            �            1259    16761    realtors_realtor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.realtors_realtor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.realtors_realtor_id_seq;
       public          postgres    false    221            q           0    0    realtors_realtor_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.realtors_realtor_id_seq OWNED BY public.realtors_realtor.id;
          public          postgres    false    220            {           2604    16626    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            |           2604    16636    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            z           2604    16618    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            }           2604    16644    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            ~           2604    16654    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213                       2604    16662    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16755    contacts_contact id    DEFAULT     z   ALTER TABLE ONLY public.contacts_contact ALTER COLUMN id SET DEFAULT nextval('public.contacts_contact_id_seq'::regclass);
 B   ALTER TABLE public.contacts_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16722    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            y           2604    16608    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            x           2604    16597    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �           2604    16777    listings_listing id    DEFAULT     z   ALTER TABLE ONLY public.listings_listing ALTER COLUMN id SET DEFAULT nextval('public.listings_listing_id_seq'::regclass);
 B   ALTER TABLE public.listings_listing ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16766    realtors_realtor id    DEFAULT     z   ALTER TABLE ONLY public.realtors_realtor ALTER COLUMN id SET DEFAULT nextval('public.realtors_realtor_id_seq'::regclass);
 B   ALTER TABLE public.realtors_realtor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            N          0    16623 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   &�       P          0    16633    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   C�       L          0    16615    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   `�       R          0    16641 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   �       T          0    16651    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   v�       V          0    16659    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ��       Z          0    16752    contacts_contact 
   TABLE DATA           w   COPY public.contacts_contact (id, listing, listing_id, name, email, phone, message, contact_date, user_id) FROM stdin;
    public          postgres    false    219   ��       X          0    16719    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   ��       J          0    16605    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   ��       H          0    16594    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   {�       _          0    16789    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    224   Q�       ^          0    16774    listings_listing 
   TABLE DATA           �   COPY public.listings_listing (id, title, address, city, state, zipcode, description, price, bedrooms, bathrooms, garage, sqft, lot_size, photo_main, photo_1, photo_2, photo_3, photo_4, photo_5, photo_6, is_published, list_date, realtor_id) FROM stdin;
    public          postgres    false    223   
�       \          0    16763    realtors_realtor 
   TABLE DATA           i   COPY public.realtors_realtor (id, name, photo, description, phone, email, is_mvp, hire_date) FROM stdin;
    public          postgres    false    221   N�       r           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            s           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            t           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    204            u           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            v           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    210            w           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            x           0    0    contacts_contact_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contacts_contact_id_seq', 3, true);
          public          postgres    false    218            y           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 32, true);
          public          postgres    false    216            z           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    202            {           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
          public          postgres    false    200            |           0    0    listings_listing_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.listings_listing_id_seq', 9, true);
          public          postgres    false    222            }           0    0    realtors_realtor_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.realtors_realtor_id_seq', 4, true);
          public          postgres    false    220            �           2606    16748    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    16675 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    16638 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    16628    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    16666 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    16620 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            �           2606    16656 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            �           2606    16690 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            �           2606    16646    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            �           2606    16664 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            �           2606    16704 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            �           2606    16742     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            �           2606    16760 &   contacts_contact contacts_contact_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.contacts_contact
    ADD CONSTRAINT contacts_contact_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.contacts_contact DROP CONSTRAINT contacts_contact_pkey;
       public            postgres    false    219            �           2606    16728 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            �           2606    16612 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    16610 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    16602 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            �           2606    16796 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    224            �           2606    16782 &   listings_listing listings_listing_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.listings_listing DROP CONSTRAINT listings_listing_pkey;
       public            postgres    false    223            �           2606    16771 &   realtors_realtor realtors_realtor_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.realtors_realtor
    ADD CONSTRAINT realtors_realtor_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.realtors_realtor DROP CONSTRAINT realtors_realtor_pkey;
       public            postgres    false    221            �           1259    16749    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    16686 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    16687 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    16672 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            �           1259    16702 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            �           1259    16701 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            �           1259    16716 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            �           1259    16715 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            �           1259    16743     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            �           1259    16739 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            �           1259    16740 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            �           1259    16798 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    224            �           1259    16797 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    224            �           1259    16788 $   listings_listing_realtor_id_90583529    INDEX     g   CREATE INDEX listings_listing_realtor_id_90583529 ON public.listings_listing USING btree (realtor_id);
 8   DROP INDEX public.listings_listing_realtor_id_90583529;
       public            postgres    false    223            �           2606    16681 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    209    205    3215            �           2606    16676 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    3220    207            �           2606    16667 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3210    203    205            �           2606    16696 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3220    207    213            �           2606    16691 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3228    211    213            �           2606    16710 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3215    205    215            �           2606    16705 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    215    3228    211            �           2606    16729 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    217    3210    203            �           2606    16734 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3228    217    211            �           2606    16783 L   listings_listing listings_listing_realtor_id_90583529_fk_realtors_realtor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id FOREIGN KEY (realtor_id) REFERENCES public.realtors_realtor(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.listings_listing DROP CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id;
       public          postgres    false    221    3251    223            N      x������ � �      P      x������ � �      L   q  x�]��n�0F����	�� -�{�Jj#�� A��o?p�p�G��ٙ�n*���S\�ƙ���k(m	�㻛����b��c�L-+ �𧰣�PMfKX�m�ɔ���H9��`��O�((�+*גe�ί�x��u)��腈�NADJV� X�ؓ�k��@�xZW��8��	��vpyލcX��W������Z�K05`��Xw�"'��J��~�//�y�AW�����~�a�l���z����&��X�I�-So��SeKrf��eL囱|}�f(�^F8�k��8��FXY������&��UֺG4-�l����K�H`�9Y	��сJe�@������u      R   �  x�m�͎�0���`c.6�H���mB3�@��&�T�� !���%��Y`Y>ґuu?@uX�;�#3�P���Q��tX�K�M�m�`[�M�ʦ����tcP�l�kU8�W��Y�u�Z�Uv��w�{/��� ������?XĴ0U9a%S��jE��͇�2?$2���W��]dU�Fձ��|������@3��ϛ�㐖8����A-6���jv�9*7��[-HQz��3qN��-����$?��v�,����hL�A���8�89��<�-/t蟙�1�fX���� m��S=/]{�l�"��gJ���t���������;a`��hɸ{�2��6�Q� ��L��Aa�ƢD�C�礹��fC�#4�	��E�����ou2��i`��      T      x������ � �      V      x������ � �      Z   �   x�u�;�0D��)�GX��	�+�鐨hV���|P@t܁r� �)�F��oFê;ey���	S.C���ʚ��ۼmzB౑����u-Ӻ R���M�Ae��}�HKz�e��ç���˼: ���U�`2v��e��{G�^[��i�j6����t=��>;	p�q�������y"o9I�qT��B<N�Ph      X   f  x���M��F�לS4�M����N�d���4�h���E�ȌP�B��À��*�IN�����H��!�{���^5����.c1���TXc����G/���dR�u��o?�|���(&>~|و_A I7N�2mvy�� Y�mZ��7s�z�߭���3T�TP%ĊQ����� ���rW��'_����iO�2`)���Rh��e��6-�&���ED�sF�rOM�f��d��yy�����lˇ,�5��j��sE��G|s+M�S z��� o���cG���y�ǟoG����ѷd�'��ѻ�j&T31sT8��}ΥiR6���I-�������I������'��&��%�ʱI�lY2ߎ����l�B�,gd:�,n���xՃ�,��X*�s���8Ԅi�_Wٮ���K+8t���� ���$	�nʺ���xr�x��*!9w���DA
h#��-A�I�!��'*y�^�x3K��ʘv�s*�T�c�9��\x���.�h�^���áG��WY��I�C�:���8��V�Ⱦ���B�esc��|0$�fOv�C��7�ߗٵ���,4疙�K���Q���c&������ G���m�����p��ۑ�]��iP��%��(E&���R�m}��MA�*�G˘��.�����.�1
�ǻ�)7~�,}�Ծ��N9�R�4f�Y��7�	����N�����"��I�u�~&c\��6-Ɬ&��f�����òK� �Ӂ98�D����b�u�I��J��d���|{2����+~�w��v�`Xb�����wѼ���u����2�gIZ�{i<�A�j��>-�Y+;���,PƘ�^d��P�ӫ��?����      J   q   x�M�K
�0�z�)����K7&����$/r��Cw3�M��k��Y�6�)��Pc[�{Q��X�io�ҝ7ZT�����39���j�(�} d�j�� <�������79�      H   �  x����n� ��ݫ���6��#�Z���]jIT,`ӽ�Zv�ڬ'���8�� 4g7E3�x�Mh!��d��C��tπOH_9�b��������K|?��\P��ї�N�#H �v��\�
�W���>�J�wJ_.�`�Af���)��9Z7��A�����9�e!���/]�S�v���h�Q\b+3���P�!�f�GB.)�ը��`�>���j�dŒ�(����f�vxH�-�L�*��S��港���:. ����1����e�:���"�ݏ����xWY���Z�m?ۭ�O=؋�·2}��j4!����S.P�i�8�k�fF;F��X%u�B	�H�F�?( ��n��a$H,�DŀZ�Ȩٻ���F��ᄖՁ�̀�=�Y�)�ʵ)Y�X��~G:��r�oҧ�t�PRQbH���h��H�1N�v!4�lb�8����������C�
      _   �  x����r�@  �s���Oi��pC���"3�TY,��*���)o3���	/͒�J�n �n�~�Z�!���Y����t�w�=暳��kY�t:Z����>{�6��L�X�"qx1�Z�C욣q;�D�k��F���c��K�}>����v�~�ER�@}�H�s/h^?���#��c��f�;���vtg��'��c��R�=��xt�Sau*�B�>Ů~MCڧ�/>���[��&��[�X����\e��(�PR!�`�(�?^�S�`s��)l�cԶ��I�
)K�0��[U��6of"ըךщ��z���/��}��ֵ1���>���a�,?�D�T}��9��q��ܲ��p�X�eQ�\��b�߉��Cn[��l�ͩ��T��|�[m�o�*���6L� �g���j���Z�      ^      x��\�rGv]�"��C�V�рV�@��l�6�ՉFR��z�)�&�{o�R�N��O���w̗���Y M�TS^Q!Q@W��׽�{2���i^�U�����ƪ�����ū��'y_͂�*�rS�68
��|2	^ܘ\Yn�F�i�Og:/ul�R���?禧V&Lc��t��_БVY�f���e��*L���+[*�(����h�SW�ׯ���B]�_�x��L�z�LuiTU�ȖU満���B�1h��S��*3�Mu�{*N��c(F�Yiӄ}i[_���)St"���/���b��2ͭ|-��خt_a�1'a�L���^doʾ��Ą��J�������˪���.`e�O�̝���t0F��?��� ���Sv��i�5ff��������v��Vfo����h���޲^�����^�Vuo8��G���7���۝� ��?��D��2�ս���p�����p0�j0FO���*���Ƶ�wp�?��\\]�\�
�L�PÞ��W�?���;x��wՃ�>�5��JL��Iik)\2��*q~k�ߩ��.g"keZ1~,ZT���+Б��4��H��S��#tE�'�����
nM�G�b�T���T��՛�P7�#�Vzvc��}�}��.]�xVp�ߝ*+�e��+[pp�1R�ݘ�b�8�?ղ�Մ a�2g���2�*��6mU�Ē�U�v:`�zE� �4�����o��Rׯ�;�h_pS�Ʋ����1Qc��6��������ߚ4_�uec,�)��������צh:yP�$��ݼ���f$�ì���{����b�iYE�򗟣̪?5"�|�ɘ�h�W�*�쇿Y��_6QT e�S��@�I0�\>�F�@k�.���K؃%�p�Ey����z��5c<�#1�i� ��6��	��`�2oK��x�+�X�:�����q�Q�t�ʊ BX�K��+�����<��Õ͍.2������3]<�8�P��=�RE���3W�hg��kD���JB|k���J�!'��"ӂU�7�	oM쇟hs�H�un&�����ea�1"-V����T��4���&7�	0�r:��*����0�Y��0��2��"�D��Y����|L�t(�:E첲�}R�Q�7��%�o�����V�א�׫*�g�Q�Q�f�"�e�K4�,B��1�u��p� �z�<�>���������>��a����Y��L�n"S`e���0�oc�w6Jl����(��i�uY��y��&';�(=�`��Ȃ���@o5A��|6o�ZƸ�
��mڸ69����`�A��p_ V�%c�y�~�؀x�X�^����HB.�ib�\�8��5�m۶��1-���0่{���)K��[��wL@9�/���	���cA����)N���$��\F�i0vc-�u�A��@+��]	�c���or��M�?����org>����Qɇ�l4:��ˆO��UY�l*�Xs3|�D�Uüཹ�G0�n����h<�������3�9T�x%� z�X�a�������uO]#�oҤ�Ȍ���&��"�cfW�!�`�&TNRs��?s���J�oH�G�Ji�P-��m+�K�+�D׬)�3��`Q���|-T��3Éȥ6Y+���N���cGWFbѦ��zi�t�{�h��E��{B>%$�P�R�j�!� 6�=T'.��E��p���GL��HI��t(�j�����:�
fR�!.�Ȟ����6�BQ�&��"��b��� ��������@i�)�i^�U��/UU��a}�!��풺��c�C�qv��� �%H�kѣ'��l�F���m�^���\�H
���3�oP�b��d��/�Yt1����&��|�kICw��rTĢB�F8��BbD��ܾ�R�����I�B���*�󿋊�Y���}|�K�?��,L�Ɯ�Р�pSe���z�.��#"�����9G詗��#����d�|2e>�G>�OY"�q8�G���xW��bsg`}ls�s�zl�`��m�S_I����hr8�'`��L�����������}�^�����ɒJ�z�CE�zZgj:
��ꍺ�(up�-�{
��֡/��@���0��-��jk�n��@��%�Z�l���i�e��i���*��S�@�U��a��+���%��{�^`@J{]ԩ�=8�	>��$펉�
���7)�:W�]}�.QώO�R������u+m)�
)���ժ{5[�#�鈔o܈tu-��:�Y�߯���]J�?G�*�$ 9�U,�A,�S�[-J&��+4LN��F�!�G_9�z���:>�j� ��j��T��� 5��u��r��E�(����6�
e��G�r�+���"܂���ӵS!1M��>��I( ��U�ݸ\{�:�TX/E�;�������#H��T�^?
�θ� ��Ql]΀ӓ�xbi�Y�[(1�˰N�^�b�U�eN��K��f��bx%��M��I���Q6Y���&c��}5/`_UnW�i�2C���x�c.\���Hb}i�:e���I������"�;�}OR�=� B�wZJ�\J]�IFG�a�����گ�����k�"�m�&�1���0� ��.EJȡ[/�uV����
H��ߴ�jG�w��tpK��H�߀���mVBZ�o@O<n��jQ��!�eQ���Β��֊C~"�.�yk�&,���eva#ܱp�h�����M*�9"��)c��};�R.��4�KR�����q�k��5a�S�?Sq,#�Z�-�OO^J?�4⋀jDEw�g��3}+��<3����q>��<y��9�Ef�
��"�o��!�<��g�2lE�p�;�>Y٤�
���t��#��Q�t�BrZ��1��V� lT&[kV�������t��s���)���~�L�=�,�i�Xq�$��YU���UBqUm0=����?��Z�3���N!��+BR��%��f��Ah�7c��a�]�����UZ�������^U/�h���A渰�ȼ��U $ ��SK�;y����8�W��奶jqt�6�.��9���A�����}����E�6�� .(8�Ɏ�_,	:�U�ꜣ;}z�8SW���˧Mݷ-�'��(jge�턂x����Ȋ��g�TI�K��/���^2E��ǻr���%�,�9�}�HP�#U���:�%�pI�֤5!C�I�XR��#e0<��æ�b��x4g�0�ͳA0��sNw,2�t{���`2<��B=���v�}{;�O]{�>k�F��΅�={��������������z[�?*{ِ�;�ҹs"�x�SGQ_�\�1��� >����`<G�,.�׆P�dTg)� ��GT�k7�A�eoL�}o/����٫��קW�'�.8�ő)���^9Jj�u#��< f��D���	��'�*ܞ�^U��gǅl� V����$��tv>�<׹Pw|)NW2�p���e$�$f����+��MEEQ�ێ9�qZ�Ҡ�@B���Y�� ۶�YZO������Aʪݙ�K�����+��gG=�������?FV�ij	�����UR���Np�$��̊���n��J��旜9��Ŷ�	��܉���+]vN�$��}nZ�Y]���o������u֡�����E�']t[)t#�-���?q����02�u-"�<��ڔ�,�FJJ>�L���/x�|�~�.ls#⾆��m���7�\����*��ft�[�?������S|��.��r�o*�g�F�2��ñY�е+R�����R�e@�m9dnj5s(&C2r?�Xb�XR�u��!;���C���"���̆2ꜥH�kN�0�<���c��r~�%Un���Z��/�bOnVW{p��L	'�,J���X�ܭOY�fn$�K����n/>c��\f�Ǉ���K)���2J�*�у�[9�0�S�8�C
�I�H���JNE5���(�7F7\�U3�.�X�ғz|z���B���oiEa=�����~�.����`L�	��8��� /  ��ш�G���qں��O����2�N&�������|������N&����LnW]w2��x?k4:���ɓ�Vy�Ht��Ir2�׈�����d~����6�o�B]���_��/J�%��E	���~QB�(�_��?^	����F0�k��$F�P��^��w���r�;퍦�y}������������ų/�t�i_�V��9�ʝG��<O�W�����`�A :�d�=����¤7r�e�U�����q�וּ�ť�砽0�<�߈k}C�H'���7<��/��t����J� �QV�j�9ps��++5�G�]Y_�2)�(�U ψ�Ɲ�g~��L���o���O����e&wX}؛�b�t�mx��
�K�Len�6vB�jx��˯&'���g�Wy�V�B�݊��> D�;��~���m��!^�yZ�"]ȕ'��p�g�us ]���|R�&�����A��,�_/Qs�X����d��*�M"��pt�)rqi��Q-ńl�J#�'l�����]��r���Q�KJ��]4��$O':>�-u��[���$s��y�B+�n���8�y:���S�D�K�4sc!�[��0�:��fm�s�vK\���Zc�>���^�E�T�Iy��|8\o���8������1���rI�#����'8k�B����Er���%�3���R+\�;Hwp5O�Z_l�W����,��îr�N���b�ݣ�`��;h�NYd�#?}R�!�ۤz�#���)�*��=��)w�)ݩQ5:	��L��F�ɍ	$���l2���������'d�����p6��	L����bq���],n?&����h۱Cd���o��H��gv}[�����;�����0�#�W�-�&?&��d�ՄK��D����m:f��o�]�����
�6ݜ�@�M��f�l]	�M�,κ���&�y��2&v�"҃n��9Z�����U&lg��-Wd�uW��[������z�������z�F���ro,�ǂ�ue3;����ݻY3��vA@R�F8�D�LB`6�Y�|�ʁ4��߶k?ą'�%�}�ux��( �w�	Q{�y�"���^�W�&$˾��Z���8�vy����h���k����#2'uy��{��s	T�E#�y��+b��[w�w+���<��p�0�kSB|�K��کnXnWsv/�[�]a���a�Qʨ�*OݕNYg��܅6�[��p[u����ھ��hk8sWP���EQ�Y���,J�MD��E��d�~J��O�[�2������=h!��/�i���EĪ �3ܝ>����K�|�B,����V���i�+y��!i�e��P?�.0f�ub�R��PBw�_��3ڶ}��l]���8c6��"N3�š:k֘=�MB٦��_s�[�NhaH��[m�b����)��4s:U�#�����3�Kv%P�h�Ȕ91�m�S2�w���{�x��3��-^U���%i�M-)�c/����\7���أ��ZtV��� �لg'�p+�y΋����7���1��7����+��ү�l��%�5��PP�������NQ�5_�@�jo�K�Tq�����V5���mdd�������SX�s)����IT�B�cd"}��~�5��XTſ4M>�\�u�^w���'��^�\k�4���d������7�
6�����c{���~rn`��G�m��yr�K�����ԴBQ\�1#z)G;Dɧ��o�^G�]��P����V�q�労�2��:QۮuӀt�=���,pV��V[�z�U��aQ�Ų�6�s����xLE	��ѧl����4۟G�;3���>mc����TO���<h��������Tv���/Q;Q [<�m�y}���=�O�^��S�9�߾Ay�#� ��*������<�����;�{���G��Y�����V~���W#��k�z��ds!�zV�WQw�{�We�b�g���ވo��7��F7��w��|殧��z�x6&[��B�5?ٽ$e-:�Lg;k���3�|����̻��Y��n�ڂg�4�g���<y�V���      \     x�m��n�0���S���vى����m؀a�#3[2$9���������2�������n�D��e�HG]��B/��|Q�	[�ٳ��f��N��Zu���n��5g��E�(D�0Zؓ�~=٘�����6 �B�؍&���>s��� h��^��պ*�B���?xt.�NTʗ�lQBQl�r��E9+�7���!|�$������D ��K�'6���+���� �p�#��7��γA���Q �	� �3�w�~U����V�%�.<�ms�����P��rB��w��ƈ�@���l��P�����G�!%����JH՟҈�Rf���$�)aizNО�pp��Y/���RR+�,]��o�W�K[s�^�����Z]c����ƛ��Bou���k���)�o����e�"�Mm��}p�H���Z�~��a Z�9[߲!�n�x��^d�)�&j���oi3���<����$��jYn�IY����v��ƨ���r[։�g>���&$�     