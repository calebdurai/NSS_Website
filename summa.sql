PGDMP  7    '            
    |            NSS    16.3    16.3 %               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    41009    NSS    DATABASE     x   CREATE DATABASE "NSS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "NSS";
                postgres    false                        2615    49281 	   SEProject    SCHEMA        CREATE SCHEMA "SEProject";
    DROP SCHEMA "SEProject";
                postgres    false            �            1259    41011 
   attendance    TABLE     �   CREATE TABLE public.attendance (
    id integer NOT NULL,
    date date NOT NULL,
    type character varying(50) NOT NULL,
    topic character varying(255),
    attended boolean NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.attendance;
       public         heap    postgres    false            �            1259    41010    attendance_id_seq    SEQUENCE     �   CREATE SEQUENCE public.attendance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.attendance_id_seq;
       public          postgres    false    217                       0    0    attendance_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.attendance_id_seq OWNED BY public.attendance.id;
          public          postgres    false    216            �            1259    49269    master_attendance    TABLE     �   CREATE TABLE public.master_attendance (
    id integer NOT NULL,
    reg_no character varying(50) NOT NULL,
    meetings_id integer NOT NULL,
    status character varying(20) NOT NULL,
    unit integer DEFAULT 99
);
 %   DROP TABLE public.master_attendance;
       public         heap    postgres    false            �            1259    49268    master_attendance_id_seq    SEQUENCE     �   CREATE SEQUENCE public.master_attendance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.master_attendance_id_seq;
       public          postgres    false    223                       0    0    master_attendance_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.master_attendance_id_seq OWNED BY public.master_attendance.id;
          public          postgres    false    222            �            1259    41069    meetings    TABLE     �  CREATE TABLE public.meetings (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    venue character varying(255),
    description text,
    purpose text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(50) DEFAULT 'Not taken'::character varying
);
    DROP TABLE public.meetings;
       public         heap    postgres    false            �            1259    41068    meetings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meetings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.meetings_id_seq;
       public          postgres    false    221                       0    0    meetings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.meetings_id_seq OWNED BY public.meetings.id;
          public          postgres    false    220            �            1259    41027    students    TABLE     _  CREATE TABLE public.students (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    register_no text NOT NULL,
    branch character varying(50) NOT NULL,
    year_of_study character varying(100) NOT NULL,
    dob date NOT NULL,
    gender character varying(10) NOT NULL,
    blood_group character varying(10),
    email character varying(50) NOT NULL,
    mobile character varying(15) NOT NULL,
    aadhar_no character varying(20) NOT NULL,
    role character varying(50) DEFAULT 'volunteer'::character varying,
    password character varying(255) NOT NULL,
    unit integer DEFAULT 99
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    41026    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public          postgres    false    219                       0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public          postgres    false    218            `           2604    41014    attendance id    DEFAULT     n   ALTER TABLE ONLY public.attendance ALTER COLUMN id SET DEFAULT nextval('public.attendance_id_seq'::regclass);
 <   ALTER TABLE public.attendance ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            g           2604    49272    master_attendance id    DEFAULT     |   ALTER TABLE ONLY public.master_attendance ALTER COLUMN id SET DEFAULT nextval('public.master_attendance_id_seq'::regclass);
 C   ALTER TABLE public.master_attendance ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            d           2604    41072    meetings id    DEFAULT     j   ALTER TABLE ONLY public.meetings ALTER COLUMN id SET DEFAULT nextval('public.meetings_id_seq'::regclass);
 :   ALTER TABLE public.meetings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            a           2604    41030    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                      0    41011 
   attendance 
   TABLE DATA           N   COPY public.attendance (id, date, type, topic, attended, user_id) FROM stdin;
    public          postgres    false    217   �+                 0    49269    master_attendance 
   TABLE DATA           R   COPY public.master_attendance (id, reg_no, meetings_id, status, unit) FROM stdin;
    public          postgres    false    223   R,                 0    41069    meetings 
   TABLE DATA           l   COPY public.meetings (id, title, date, "time", venue, description, purpose, created_at, status) FROM stdin;
    public          postgres    false    221   �,       
          0    41027    students 
   TABLE DATA           �   COPY public.students (id, name, register_no, branch, year_of_study, dob, gender, blood_group, email, mobile, aadhar_no, role, password, unit) FROM stdin;
    public          postgres    false    219   �.                  0    0    attendance_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.attendance_id_seq', 6, true);
          public          postgres    false    216                       0    0    master_attendance_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.master_attendance_id_seq', 19, true);
          public          postgres    false    222                       0    0    meetings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.meetings_id_seq', 12, true);
          public          postgres    false    220                       0    0    students_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.students_id_seq', 35, true);
          public          postgres    false    218            j           2606    41016    attendance attendance_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.attendance DROP CONSTRAINT attendance_pkey;
       public            postgres    false    217            v           2606    49275 (   master_attendance master_attendance_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.master_attendance
    ADD CONSTRAINT master_attendance_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.master_attendance DROP CONSTRAINT master_attendance_pkey;
       public            postgres    false    223            t           2606    41077    meetings meetings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.meetings
    ADD CONSTRAINT meetings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.meetings DROP CONSTRAINT meetings_pkey;
       public            postgres    false    221            l           2606    41057    students students_aadhar_no_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_aadhar_no_key UNIQUE (aadhar_no);
 I   ALTER TABLE ONLY public.students DROP CONSTRAINT students_aadhar_no_key;
       public            postgres    false    219            n           2606    41055    students students_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.students DROP CONSTRAINT students_email_key;
       public            postgres    false    219            p           2606    41034    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    219            r           2606    41053 !   students students_register_no_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_register_no_key UNIQUE (register_no);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_register_no_key;
       public            postgres    false    219            w           2606    49276 4   master_attendance master_attendance_meetings_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.master_attendance
    ADD CONSTRAINT master_attendance_meetings_id_fkey FOREIGN KEY (meetings_id) REFERENCES public.meetings(id);
 ^   ALTER TABLE ONLY public.master_attendance DROP CONSTRAINT master_attendance_meetings_id_fkey;
       public          postgres    false    221    223    4724               o   x�3�4202�50�50��M�KI,�/��tN�-�,�4�2���"�;�&&g(8�&�e楃U�UY����7�ʛ�!ɇ�eg�Cl3��12CRR��	�dN� D�0�         c   x�Uϻ
�0@ѹ�i��ctWqv�:���������i���洜�jǝȀ_���u	]�k\�?P����&���]? ԃ��l����D:         �  x���ώ�0�ϓ��y���-�zX�nm�ZiՋ��lj������d{ʡ����Oߘ<����]��8��G1��j��QӾ3��+���}%1�Xo�/*]�����s�Y���t9�i�,��M;�DCj��M+I9�m;�F����Q�F[];-!;J�g��iVI[�2EGf�� u~����rI�nC� d�DN��	-��h��Z�Ğ|89��AV�hYO�֦ʯ:H:��ꓰ�G�ncY���{��Mc���h�t�Y�t���Ojԅ��L\(�N�����@��o�a;��^�M��zbHqd�hU�!uIe9��A2�s{:q�{��[*�p7�9솮{�qU�?�m����$��⩯�Ԙ�c�f��^��?��]|1�3����8��D׷4��(^����;������Z��Ĉ/�3.�4�'g<�r�9��f�%      
   F  x���Qo�6��g�S�!o��H��[�4m��H��6[��R&+i�O����I�4���Ù�S1j�iuzݭ�]ת�.�k06W���i���n����V�.�?�W�ef��3��w����j~��p���[�}��o�V�/�|Qf�_5��n��uݫu�[�����k�/�*�Ī��!��6�:X��P/�U�,�Mzٮ�?ܴ+�w��L��!x�O�C�0�de�]nh5�k hp��4uz�w_�	/u��C�Jdz��pL:?�ngjq��DE�F(���i�E&��z�Tm�~���KA���h����k��YV�WF�h.3���Y���W��U�~��z^��K�o���������t����qF�a@��:�hP�F�N0�%�a������v�ǔ.sq�tx��)�S�Iܞ���ˮ����j[5��<���%�����8���4N�:����̷�n�x��j�����}>_�~����ݿ���j��2Mq�)��m�?__]�Z�O˺RM��{}�g����cf�?\@�-;t�{7��L�����~�	ޏ/ �� ~l�sR��Ф�;�����*M�F4 �`0�`�`�PFv4�9��60rb�/�E9o�ً!�F0�����Ƞ�7��p�"g�NA�=)<) ��)��E�cC.|0d(�`��b�)�Q��'0��(�Q�F�P�R4l���Dd\���s��31:%;
�XY���I�t�nj-�B��g)�S+� �SS:]4��`h1�@�,2)��2J�����"���AB[T��`��O\PMu����Y���`"F'TSC}��09N�!F,3������jʨ�d�O��!��%RHqe� �TSJ}$�09Tx��-����,28��j�#5��s�!bM�3D�).�Ω���HOar�0C*̐�����pQ���#E��Ӆ��ĤB�)��2J8�@I����䀡}
bRM�)��l����(%�G�
GGCĢ.�G!@��@E�Ѣ��f�E5\T-�E��>Zԣ#�%bR'UKIŕQ�IJjI���W1�������y���$I�N��(     