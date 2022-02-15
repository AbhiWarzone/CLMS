PGDMP     (    7                z         	   AWSPortal    13.4    13.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16443 	   AWSPortal    DATABASE     g   CREATE DATABASE "AWSPortal" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE "AWSPortal";
                postgres    false                        2615    16444 	   cloud_lab    SCHEMA        CREATE SCHEMA cloud_lab;
    DROP SCHEMA cloud_lab;
                postgres    false                        2615    16445    srdl_velocis    SCHEMA        CREATE SCHEMA srdl_velocis;
    DROP SCHEMA srdl_velocis;
                postgres    false            �            1259    16446    aws_instance_type    TABLE     �   CREATE TABLE cloud_lab.aws_instance_type (
    id bigint,
    description character varying(255),
    instance_name character varying(255)
);
 (   DROP TABLE cloud_lab.aws_instance_type;
    	   cloud_lab         heap    postgres    false    6            �            1259    16452    batch    TABLE     �   CREATE TABLE cloud_lab.batch (
    batch_id bigint,
    batch_description character varying(255),
    batch_name character varying(255)
);
    DROP TABLE cloud_lab.batch;
    	   cloud_lab         heap    postgres    false    6            �            1259    16458    catalog    TABLE     c   CREATE TABLE cloud_lab.catalog (
    catalog_id bigint,
    catalog_name character varying(255)
);
    DROP TABLE cloud_lab.catalog;
    	   cloud_lab         heap    postgres    false    6            �            1259    16461    global_settings    TABLE     �   CREATE TABLE cloud_lab.global_settings (
    id bigint,
    max_dur_lab character varying(255),
    max_instance_lab integer,
    max_num_instructors integer,
    region character varying(255)
);
 &   DROP TABLE cloud_lab.global_settings;
    	   cloud_lab         heap    postgres    false    6            �            1259    16467    group_details    TABLE     �   CREATE TABLE cloud_lab.group_details (
    id bigint,
    description character varying(255),
    name character varying(255)
);
 $   DROP TABLE cloud_lab.group_details;
    	   cloud_lab         heap    postgres    false    6            �            1259    16473    group_user_details    TABLE     W   CREATE TABLE cloud_lab.group_user_details (
    user_id bigint,
    group_id bigint
);
 )   DROP TABLE cloud_lab.group_user_details;
    	   cloud_lab         heap    postgres    false    6            �            1259    16476    hardware_profile    TABLE     �   CREATE TABLE cloud_lab.hardware_profile (
    id bigint,
    ami_id integer,
    ami_name character varying(255),
    instance_id integer,
    instance_type character varying(255),
    lab_id integer
);
 '   DROP TABLE cloud_lab.hardware_profile;
    	   cloud_lab         heap    postgres    false    6            �            1259    16482 	   image_ami    TABLE     ]   CREATE TABLE cloud_lab.image_ami (
    ami_id bigint,
    ami_name character varying(255)
);
     DROP TABLE cloud_lab.image_ami;
    	   cloud_lab         heap    postgres    false    6            �            1259    16485    instance_details    TABLE     �  CREATE TABLE cloud_lab.instance_details (
    inst_id bigint,
    date character varying(255),
    duration integer,
    instance_id character varying(255),
    instance_name character varying(255),
    start_time character varying(255),
    status character varying(255),
    stop_time character varying(255),
    state character varying(255),
    hw_profile_id bigint,
    public_ip character varying,
    stu_id bigint,
    soft_limit character varying,
    hard_limit character varying
);
 '   DROP TABLE cloud_lab.instance_details;
    	   cloud_lab         heap    postgres    false    6            �            1259    16491    instance_type    TABLE     k   CREATE TABLE cloud_lab.instance_type (
    instance_id bigint,
    instance_name character varying(255)
);
 $   DROP TABLE cloud_lab.instance_type;
    	   cloud_lab         heap    postgres    false    6            �            1259    16494 	   instances    TABLE     �  CREATE TABLE cloud_lab.instances (
    id bigint,
    duration integer,
    end_time character varying(255),
    hw_profile_id integer,
    ip character varying(255),
    launch_time character varying(255),
    name character varying(255),
    start_time character varying(255),
    state character varying(255),
    student_id integer,
    instance_id character varying,
    stu_name character varying(255)
);
     DROP TABLE cloud_lab.instances;
    	   cloud_lab         heap    postgres    false    6            �            1259    16500    lab    TABLE     �  CREATE TABLE cloud_lab.lab (
    lab_id bigint,
    description character varying(255),
    end_date character varying(255),
    hard_limit character varying(255),
    lab_createdby character varying(255),
    lab_createddate character varying(255),
    lab_name character varying(255),
    labuid character varying(255),
    num_of_instances integer,
    soft_limit integer,
    start_date character varying(255),
    state character varying(255)
);
    DROP TABLE cloud_lab.lab;
    	   cloud_lab         heap    postgres    false    6            �            1259    16506    lab_type    TABLE     �   CREATE TABLE cloud_lab.lab_type (
    lab_type_id bigint,
    description character varying(255),
    lab_type_name character varying(255)
);
    DROP TABLE cloud_lab.lab_type;
    	   cloud_lab         heap    postgres    false    6            �            1259    16512    lab_user_details    TABLE     S   CREATE TABLE cloud_lab.lab_user_details (
    lab_id bigint,
    user_id bigint
);
 '   DROP TABLE cloud_lab.lab_user_details;
    	   cloud_lab         heap    postgres    false    6            �            1259    16515    region    TABLE     �   CREATE TABLE cloud_lab.region (
    region_id bigint,
    region_name character varying(255),
    region_value character varying(255)
);
    DROP TABLE cloud_lab.region;
    	   cloud_lab         heap    postgres    false    6            �            1259    16521    role    TABLE     Z   CREATE TABLE cloud_lab.role (
    role_id bigint,
    role_name character varying(255)
);
    DROP TABLE cloud_lab.role;
    	   cloud_lab         heap    postgres    false    6            �            1259    16524    user_details    TABLE     �  CREATE TABLE cloud_lab.user_details (
    user_id bigint,
    created_by character varying(255),
    email character varying(255),
    enabled boolean,
    first_name character varying(255),
    flag boolean,
    last_name character varying(255),
    mobile_no character varying(255),
    user_name character varying(255),
    password character varying(255),
    role_id integer,
    status character varying(255),
    verification_code character varying(64),
    pem_key character varying
);
 #   DROP TABLE cloud_lab.user_details;
    	   cloud_lab         heap    postgres    false    6            �            1259    16716    archive_user_details    TABLE       CREATE TABLE srdl_velocis.archive_user_details (
    user_id bigint NOT NULL,
    created_by character varying(255),
    email character varying(255),
    enabled boolean,
    first_name character varying(255),
    flag boolean,
    last_name character varying(255),
    mobile_no character varying(255),
    user_name character varying(255),
    password character varying(255),
    role_id integer,
    status character varying(255),
    verification_code character varying(64),
    pem_key character varying
);
 .   DROP TABLE srdl_velocis.archive_user_details;
       srdl_velocis         heap    postgres    false    4            �            1259    16530    aws_instance_type    TABLE     �   CREATE TABLE srdl_velocis.aws_instance_type (
    id bigint NOT NULL,
    description character varying(255),
    instance_name character varying(255)
);
 +   DROP TABLE srdl_velocis.aws_instance_type;
       srdl_velocis         heap    postgres    false    4            �            1259    16536 !   aws_instance_type_instance_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.aws_instance_type_instance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE srdl_velocis.aws_instance_type_instance_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16538    batch    TABLE     �   CREATE TABLE srdl_velocis.batch (
    batch_id bigint NOT NULL,
    batch_description character varying(255),
    batch_name character varying(255)
);
    DROP TABLE srdl_velocis.batch;
       srdl_velocis         heap    postgres    false    4            �            1259    16544    batch_batch_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.batch_batch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE srdl_velocis.batch_batch_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16546    catalog    TABLE     o   CREATE TABLE srdl_velocis.catalog (
    catalog_id bigint NOT NULL,
    catalog_name character varying(255)
);
 !   DROP TABLE srdl_velocis.catalog;
       srdl_velocis         heap    postgres    false    4            �            1259    16549    catalog_catalog_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.catalog_catalog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE srdl_velocis.catalog_catalog_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16551    global_settings    TABLE     �   CREATE TABLE srdl_velocis.global_settings (
    id bigint NOT NULL,
    max_dur_lab character varying(255),
    max_instance_lab integer,
    max_num_instructors integer,
    region character varying(255)
);
 )   DROP TABLE srdl_velocis.global_settings;
       srdl_velocis         heap    postgres    false    4            �            1259    16557    global_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.global_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE srdl_velocis.global_settings_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16559    group_details    TABLE     �   CREATE TABLE srdl_velocis.group_details (
    id bigint NOT NULL,
    description character varying(255),
    name character varying(255)
);
 '   DROP TABLE srdl_velocis.group_details;
       srdl_velocis         heap    postgres    false    4            �            1259    16565    group_details_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.group_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE srdl_velocis.group_details_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16567    group_user_details    TABLE     l   CREATE TABLE srdl_velocis.group_user_details (
    user_id bigint NOT NULL,
    group_id bigint NOT NULL
);
 ,   DROP TABLE srdl_velocis.group_user_details;
       srdl_velocis         heap    postgres    false    4            �            1259    16570    hardware_profile    TABLE     �   CREATE TABLE srdl_velocis.hardware_profile (
    id bigint NOT NULL,
    ami_id integer,
    ami_name character varying(255),
    instance_id integer,
    instance_type character varying(255),
    lab_id integer,
    ami_desc character varying(255)
);
 *   DROP TABLE srdl_velocis.hardware_profile;
       srdl_velocis         heap    postgres    false    4            �            1259    16576    hardware_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.hardware_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE srdl_velocis.hardware_profile_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16578 	   image_ami    TABLE     �   CREATE TABLE srdl_velocis.image_ami (
    ami_id bigint NOT NULL,
    ami_name character varying(255),
    description character varying
);
 #   DROP TABLE srdl_velocis.image_ami;
       srdl_velocis         heap    postgres    false    4            �            1259    16584    image_ami_ami_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.image_ami_ami_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE srdl_velocis.image_ami_ami_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16586    instance_details    TABLE     &  CREATE TABLE srdl_velocis.instance_details (
    inst_id bigint NOT NULL,
    date character varying(255),
    duration integer,
    instance_id character varying(255),
    instance_name character varying(255),
    start_time character varying(255),
    status character varying(255),
    stop_time character varying(255),
    state character varying(255),
    hw_profile_id bigint,
    public_ip character varying,
    stu_id bigint,
    soft_limit character varying,
    hard_limit character varying,
    softlimit_reached boolean DEFAULT false
);
 *   DROP TABLE srdl_velocis.instance_details;
       srdl_velocis         heap    postgres    false    4            �            1259    16593    instance_details_inst_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.instance_details_inst_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE srdl_velocis.instance_details_inst_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16595    instance_type    TABLE     w   CREATE TABLE srdl_velocis.instance_type (
    instance_id bigint NOT NULL,
    instance_name character varying(255)
);
 '   DROP TABLE srdl_velocis.instance_type;
       srdl_velocis         heap    postgres    false    4            �            1259    16598    instance_type_instance_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.instance_type_instance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE srdl_velocis.instance_type_instance_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16600 	   instances    TABLE     �  CREATE TABLE srdl_velocis.instances (
    id bigint NOT NULL,
    duration integer,
    end_time character varying(255),
    hw_profile_id integer,
    ip character varying(255),
    launch_time character varying(255),
    name character varying(255),
    start_time character varying(255),
    state character varying(255),
    student_id integer,
    instance_id character varying,
    stu_name character varying(255)
);
 #   DROP TABLE srdl_velocis.instances;
       srdl_velocis         heap    postgres    false    4            �            1259    16606    instances_id_seq    SEQUENCE        CREATE SEQUENCE srdl_velocis.instances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE srdl_velocis.instances_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16608    lab    TABLE     �  CREATE TABLE srdl_velocis.lab (
    lab_id bigint NOT NULL,
    description character varying(255),
    end_date character varying(255),
    hard_limit character varying(255),
    lab_createdby character varying(255),
    lab_createddate character varying(255),
    lab_name character varying(255),
    labuid character varying(255),
    num_of_instances integer,
    soft_limit integer,
    start_date character varying(255),
    state character varying(255)
);
    DROP TABLE srdl_velocis.lab;
       srdl_velocis         heap    postgres    false    4            �            1259    16614    lab_extension    TABLE     �  CREATE TABLE srdl_velocis.lab_extension (
    id bigint NOT NULL,
    lab_id bigint,
    lab_name character varying(255),
    ins_id bigint,
    instance_id character varying(255),
    hard_limit character varying(255),
    assigned_to character varying(255),
    status character varying(255),
    email character varying(250),
    comment character varying(550),
    queue_name character varying(255)
);
 '   DROP TABLE srdl_velocis.lab_extension;
       srdl_velocis         heap    postgres    false    4            �            1259    16620    lab_extension_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.lab_extension_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE srdl_velocis.lab_extension_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16622    lab_lab_id_seq    SEQUENCE     }   CREATE SEQUENCE srdl_velocis.lab_lab_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE srdl_velocis.lab_lab_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16624    lab_type    TABLE     �   CREATE TABLE srdl_velocis.lab_type (
    lab_type_id bigint NOT NULL,
    description character varying(255),
    lab_type_name character varying(255)
);
 "   DROP TABLE srdl_velocis.lab_type;
       srdl_velocis         heap    postgres    false    4            �            1259    16630    lab_type_lab_type_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.lab_type_lab_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE srdl_velocis.lab_type_lab_type_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16632    lab_user_details    TABLE     h   CREATE TABLE srdl_velocis.lab_user_details (
    lab_id bigint NOT NULL,
    user_id bigint NOT NULL
);
 *   DROP TABLE srdl_velocis.lab_user_details;
       srdl_velocis         heap    postgres    false    4            �            1259    16635    region    TABLE     �   CREATE TABLE srdl_velocis.region (
    region_id bigint NOT NULL,
    region_name character varying(255),
    region_value character varying(255)
);
     DROP TABLE srdl_velocis.region;
       srdl_velocis         heap    postgres    false    4            �            1259    16641    region_region_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.region_region_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE srdl_velocis.region_region_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16643    role    TABLE     f   CREATE TABLE srdl_velocis.role (
    role_id bigint NOT NULL,
    role_name character varying(255)
);
    DROP TABLE srdl_velocis.role;
       srdl_velocis         heap    postgres    false    4            �            1259    16646    role_role_id_seq    SEQUENCE        CREATE SEQUENCE srdl_velocis.role_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE srdl_velocis.role_role_id_seq;
       srdl_velocis          postgres    false    4            �            1259    16648    user_details    TABLE     �  CREATE TABLE srdl_velocis.user_details (
    user_id bigint NOT NULL,
    created_by character varying(255),
    email character varying(255),
    enabled boolean,
    first_name character varying(255),
    flag boolean,
    last_name character varying(255),
    mobile_no character varying(255),
    user_name character varying(255),
    password character varying(255),
    role_id integer,
    status character varying(255),
    verification_code character varying(64),
    pem_key character varying
);
 &   DROP TABLE srdl_velocis.user_details;
       srdl_velocis         heap    postgres    false    4            �            1259    16654    user_details_user_id_seq    SEQUENCE     �   CREATE SEQUENCE srdl_velocis.user_details_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE srdl_velocis.user_details_user_id_seq;
       srdl_velocis          postgres    false    4            �           2613    138688    138688    BLOB     '   SELECT pg_catalog.lo_create('138688');
 '   SELECT pg_catalog.lo_unlink('138688');
                postgres    false            �           2613    138689    138689    BLOB     '   SELECT pg_catalog.lo_create('138689');
 '   SELECT pg_catalog.lo_unlink('138689');
                postgres    false            �           2613    140147    140147    BLOB     '   SELECT pg_catalog.lo_create('140147');
 '   SELECT pg_catalog.lo_unlink('140147');
                postgres    false            �           2613    140148    140148    BLOB     '   SELECT pg_catalog.lo_create('140148');
 '   SELECT pg_catalog.lo_unlink('140148');
                postgres    false            �           2613    140149    140149    BLOB     '   SELECT pg_catalog.lo_create('140149');
 '   SELECT pg_catalog.lo_unlink('140149');
                postgres    false            �           2613    140150    140150    BLOB     '   SELECT pg_catalog.lo_create('140150');
 '   SELECT pg_catalog.lo_unlink('140150');
                postgres    false            �           2613    140151    140151    BLOB     '   SELECT pg_catalog.lo_create('140151');
 '   SELECT pg_catalog.lo_unlink('140151');
                postgres    false            �           2613    140152    140152    BLOB     '   SELECT pg_catalog.lo_create('140152');
 '   SELECT pg_catalog.lo_unlink('140152');
                postgres    false            �           2613    140153    140153    BLOB     '   SELECT pg_catalog.lo_create('140153');
 '   SELECT pg_catalog.lo_unlink('140153');
                postgres    false            �           2613    140154    140154    BLOB     '   SELECT pg_catalog.lo_create('140154');
 '   SELECT pg_catalog.lo_unlink('140154');
                postgres    false            �           2613    140155    140155    BLOB     '   SELECT pg_catalog.lo_create('140155');
 '   SELECT pg_catalog.lo_unlink('140155');
                postgres    false            �          0    16446    aws_instance_type 
   TABLE DATA           N   COPY cloud_lab.aws_instance_type (id, description, instance_name) FROM stdin;
 	   cloud_lab          postgres    false    202   9�       �          0    16452    batch 
   TABLE DATA           K   COPY cloud_lab.batch (batch_id, batch_description, batch_name) FROM stdin;
 	   cloud_lab          postgres    false    203   ��       �          0    16458    catalog 
   TABLE DATA           >   COPY cloud_lab.catalog (catalog_id, catalog_name) FROM stdin;
 	   cloud_lab          postgres    false    204   ԰       �          0    16461    global_settings 
   TABLE DATA           l   COPY cloud_lab.global_settings (id, max_dur_lab, max_instance_lab, max_num_instructors, region) FROM stdin;
 	   cloud_lab          postgres    false    205   �       �          0    16467    group_details 
   TABLE DATA           A   COPY cloud_lab.group_details (id, description, name) FROM stdin;
 	   cloud_lab          postgres    false    206   (�       �          0    16473    group_user_details 
   TABLE DATA           B   COPY cloud_lab.group_user_details (user_id, group_id) FROM stdin;
 	   cloud_lab          postgres    false    207   w�       �          0    16476    hardware_profile 
   TABLE DATA           g   COPY cloud_lab.hardware_profile (id, ami_id, ami_name, instance_id, instance_type, lab_id) FROM stdin;
 	   cloud_lab          postgres    false    208   ��       �          0    16482 	   image_ami 
   TABLE DATA           8   COPY cloud_lab.image_ami (ami_id, ami_name) FROM stdin;
 	   cloud_lab          postgres    false    209   �       �          0    16485    instance_details 
   TABLE DATA           �   COPY cloud_lab.instance_details (inst_id, date, duration, instance_id, instance_name, start_time, status, stop_time, state, hw_profile_id, public_ip, stu_id, soft_limit, hard_limit) FROM stdin;
 	   cloud_lab          postgres    false    210   l�       �          0    16491    instance_type 
   TABLE DATA           F   COPY cloud_lab.instance_type (instance_id, instance_name) FROM stdin;
 	   cloud_lab          postgres    false    211   Ĵ       �          0    16494 	   instances 
   TABLE DATA           �   COPY cloud_lab.instances (id, duration, end_time, hw_profile_id, ip, launch_time, name, start_time, state, student_id, instance_id, stu_name) FROM stdin;
 	   cloud_lab          postgres    false    212    �       �          0    16500    lab 
   TABLE DATA           �   COPY cloud_lab.lab (lab_id, description, end_date, hard_limit, lab_createdby, lab_createddate, lab_name, labuid, num_of_instances, soft_limit, start_date, state) FROM stdin;
 	   cloud_lab          postgres    false    213   ��       �          0    16506    lab_type 
   TABLE DATA           N   COPY cloud_lab.lab_type (lab_type_id, description, lab_type_name) FROM stdin;
 	   cloud_lab          postgres    false    214   �       �          0    16512    lab_user_details 
   TABLE DATA           >   COPY cloud_lab.lab_user_details (lab_id, user_id) FROM stdin;
 	   cloud_lab          postgres    false    215   9�       �          0    16515    region 
   TABLE DATA           I   COPY cloud_lab.region (region_id, region_name, region_value) FROM stdin;
 	   cloud_lab          postgres    false    216   e�       �          0    16521    role 
   TABLE DATA           5   COPY cloud_lab.role (role_id, role_name) FROM stdin;
 	   cloud_lab          postgres    false    217   ��       �          0    16524    user_details 
   TABLE DATA           �   COPY cloud_lab.user_details (user_id, created_by, email, enabled, first_name, flag, last_name, mobile_no, user_name, password, role_id, status, verification_code, pem_key) FROM stdin;
 	   cloud_lab          postgres    false    218   �       �          0    16716    archive_user_details 
   TABLE DATA           �   COPY srdl_velocis.archive_user_details (user_id, created_by, email, enabled, first_name, flag, last_name, mobile_no, user_name, password, role_id, status, verification_code, pem_key) FROM stdin;
    srdl_velocis          postgres    false    253   ��       �          0    16530    aws_instance_type 
   TABLE DATA           Q   COPY srdl_velocis.aws_instance_type (id, description, instance_name) FROM stdin;
    srdl_velocis          postgres    false    219   C�       �          0    16538    batch 
   TABLE DATA           N   COPY srdl_velocis.batch (batch_id, batch_description, batch_name) FROM stdin;
    srdl_velocis          postgres    false    221   ��       �          0    16546    catalog 
   TABLE DATA           A   COPY srdl_velocis.catalog (catalog_id, catalog_name) FROM stdin;
    srdl_velocis          postgres    false    223    �       �          0    16551    global_settings 
   TABLE DATA           o   COPY srdl_velocis.global_settings (id, max_dur_lab, max_instance_lab, max_num_instructors, region) FROM stdin;
    srdl_velocis          postgres    false    225   �       �          0    16559    group_details 
   TABLE DATA           D   COPY srdl_velocis.group_details (id, description, name) FROM stdin;
    srdl_velocis          postgres    false    227   Q�       �          0    16567    group_user_details 
   TABLE DATA           E   COPY srdl_velocis.group_user_details (user_id, group_id) FROM stdin;
    srdl_velocis          postgres    false    229   ��       �          0    16570    hardware_profile 
   TABLE DATA           t   COPY srdl_velocis.hardware_profile (id, ami_id, ami_name, instance_id, instance_type, lab_id, ami_desc) FROM stdin;
    srdl_velocis          postgres    false    230   &�       �          0    16578 	   image_ami 
   TABLE DATA           H   COPY srdl_velocis.image_ami (ami_id, ami_name, description) FROM stdin;
    srdl_velocis          postgres    false    232   ��       �          0    16586    instance_details 
   TABLE DATA           �   COPY srdl_velocis.instance_details (inst_id, date, duration, instance_id, instance_name, start_time, status, stop_time, state, hw_profile_id, public_ip, stu_id, soft_limit, hard_limit, softlimit_reached) FROM stdin;
    srdl_velocis          postgres    false    234   j�       �          0    16595    instance_type 
   TABLE DATA           I   COPY srdl_velocis.instance_type (instance_id, instance_name) FROM stdin;
    srdl_velocis          postgres    false    236   ��       �          0    16600 	   instances 
   TABLE DATA           �   COPY srdl_velocis.instances (id, duration, end_time, hw_profile_id, ip, launch_time, name, start_time, state, student_id, instance_id, stu_name) FROM stdin;
    srdl_velocis          postgres    false    238   ^�       �          0    16608    lab 
   TABLE DATA           �   COPY srdl_velocis.lab (lab_id, description, end_date, hard_limit, lab_createdby, lab_createddate, lab_name, labuid, num_of_instances, soft_limit, start_date, state) FROM stdin;
    srdl_velocis          postgres    false    240   �       �          0    16614    lab_extension 
   TABLE DATA           �   COPY srdl_velocis.lab_extension (id, lab_id, lab_name, ins_id, instance_id, hard_limit, assigned_to, status, email, comment, queue_name) FROM stdin;
    srdl_velocis          postgres    false    241   ��       �          0    16624    lab_type 
   TABLE DATA           Q   COPY srdl_velocis.lab_type (lab_type_id, description, lab_type_name) FROM stdin;
    srdl_velocis          postgres    false    244   ��       �          0    16632    lab_user_details 
   TABLE DATA           A   COPY srdl_velocis.lab_user_details (lab_id, user_id) FROM stdin;
    srdl_velocis          postgres    false    246   ��       �          0    16635    region 
   TABLE DATA           L   COPY srdl_velocis.region (region_id, region_name, region_value) FROM stdin;
    srdl_velocis          postgres    false    247   E�       �          0    16643    role 
   TABLE DATA           8   COPY srdl_velocis.role (role_id, role_name) FROM stdin;
    srdl_velocis          postgres    false    249   ��       �          0    16648    user_details 
   TABLE DATA           �   COPY srdl_velocis.user_details (user_id, created_by, email, enabled, first_name, flag, last_name, mobile_no, user_name, password, role_id, status, verification_code, pem_key) FROM stdin;
    srdl_velocis          postgres    false    251   ��       �           0    0 !   aws_instance_type_instance_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('srdl_velocis.aws_instance_type_instance_id_seq', 1, false);
          srdl_velocis          postgres    false    220            �           0    0    batch_batch_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('srdl_velocis.batch_batch_id_seq', 1, false);
          srdl_velocis          postgres    false    222            �           0    0    catalog_catalog_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('srdl_velocis.catalog_catalog_id_seq', 1, false);
          srdl_velocis          postgres    false    224            �           0    0    global_settings_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('srdl_velocis.global_settings_id_seq', 1, false);
          srdl_velocis          postgres    false    226            �           0    0    group_details_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('srdl_velocis.group_details_id_seq', 13, true);
          srdl_velocis          postgres    false    228            �           0    0    hardware_profile_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('srdl_velocis.hardware_profile_id_seq', 205, true);
          srdl_velocis          postgres    false    231            �           0    0    image_ami_ami_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('srdl_velocis.image_ami_ami_id_seq', 28, true);
          srdl_velocis          postgres    false    233            �           0    0    instance_details_inst_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('srdl_velocis.instance_details_inst_id_seq', 1113, true);
          srdl_velocis          postgres    false    235            �           0    0    instance_type_instance_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('srdl_velocis.instance_type_instance_id_seq', 78, true);
          srdl_velocis          postgres    false    237            �           0    0    instances_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('srdl_velocis.instances_id_seq', 73, true);
          srdl_velocis          postgres    false    239            �           0    0    lab_extension_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('srdl_velocis.lab_extension_id_seq', 22, true);
          srdl_velocis          postgres    false    242            �           0    0    lab_lab_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('srdl_velocis.lab_lab_id_seq', 96, true);
          srdl_velocis          postgres    false    243            �           0    0    lab_type_lab_type_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('srdl_velocis.lab_type_lab_type_id_seq', 1, false);
          srdl_velocis          postgres    false    245            �           0    0    region_region_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('srdl_velocis.region_region_id_seq', 1, false);
          srdl_velocis          postgres    false    248            �           0    0    role_role_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('srdl_velocis.role_role_id_seq', 1, false);
          srdl_velocis          postgres    false    250            �           0    0    user_details_user_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('srdl_velocis.user_details_user_id_seq', 142, true);
          srdl_velocis          postgres    false    252            �          0    0    BLOBS    BLOBS                             false    �                  2606    16723 .   archive_user_details archive_user_details_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY srdl_velocis.archive_user_details
    ADD CONSTRAINT archive_user_details_pkey PRIMARY KEY (user_id);
 ^   ALTER TABLE ONLY srdl_velocis.archive_user_details DROP CONSTRAINT archive_user_details_pkey;
       srdl_velocis            postgres    false    253            �           2606    16657 (   aws_instance_type aws_instance_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY srdl_velocis.aws_instance_type
    ADD CONSTRAINT aws_instance_type_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY srdl_velocis.aws_instance_type DROP CONSTRAINT aws_instance_type_pkey;
       srdl_velocis            postgres    false    219            �           2606    16659    batch batch_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY srdl_velocis.batch
    ADD CONSTRAINT batch_pkey PRIMARY KEY (batch_id);
 @   ALTER TABLE ONLY srdl_velocis.batch DROP CONSTRAINT batch_pkey;
       srdl_velocis            postgres    false    221            �           2606    16661    catalog catalog_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY srdl_velocis.catalog
    ADD CONSTRAINT catalog_pkey PRIMARY KEY (catalog_id);
 D   ALTER TABLE ONLY srdl_velocis.catalog DROP CONSTRAINT catalog_pkey;
       srdl_velocis            postgres    false    223            �           2606    16663 $   global_settings global_settings_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY srdl_velocis.global_settings
    ADD CONSTRAINT global_settings_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY srdl_velocis.global_settings DROP CONSTRAINT global_settings_pkey;
       srdl_velocis            postgres    false    225            �           2606    16665     group_details group_details_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY srdl_velocis.group_details
    ADD CONSTRAINT group_details_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY srdl_velocis.group_details DROP CONSTRAINT group_details_pkey;
       srdl_velocis            postgres    false    227            �           2606    16667 *   group_user_details group_user_details_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY srdl_velocis.group_user_details
    ADD CONSTRAINT group_user_details_pkey PRIMARY KEY (user_id, group_id);
 Z   ALTER TABLE ONLY srdl_velocis.group_user_details DROP CONSTRAINT group_user_details_pkey;
       srdl_velocis            postgres    false    229    229            �           2606    16669 &   hardware_profile hardware_profile_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY srdl_velocis.hardware_profile
    ADD CONSTRAINT hardware_profile_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY srdl_velocis.hardware_profile DROP CONSTRAINT hardware_profile_pkey;
       srdl_velocis            postgres    false    230            �           2606    16671    image_ami image_ami_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY srdl_velocis.image_ami
    ADD CONSTRAINT image_ami_pkey PRIMARY KEY (ami_id);
 H   ALTER TABLE ONLY srdl_velocis.image_ami DROP CONSTRAINT image_ami_pkey;
       srdl_velocis            postgres    false    232            �           2606    16673 &   instance_details instance_details_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY srdl_velocis.instance_details
    ADD CONSTRAINT instance_details_pkey PRIMARY KEY (inst_id);
 V   ALTER TABLE ONLY srdl_velocis.instance_details DROP CONSTRAINT instance_details_pkey;
       srdl_velocis            postgres    false    234            �           2606    16675     instance_type instance_type_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY srdl_velocis.instance_type
    ADD CONSTRAINT instance_type_pkey PRIMARY KEY (instance_id);
 P   ALTER TABLE ONLY srdl_velocis.instance_type DROP CONSTRAINT instance_type_pkey;
       srdl_velocis            postgres    false    236            �           2606    16677    instances instances_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY srdl_velocis.instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY srdl_velocis.instances DROP CONSTRAINT instances_pkey;
       srdl_velocis            postgres    false    238                       2606    16679     lab_extension lab_extension_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY srdl_velocis.lab_extension
    ADD CONSTRAINT lab_extension_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY srdl_velocis.lab_extension DROP CONSTRAINT lab_extension_pkey;
       srdl_velocis            postgres    false    241            �           2606    16681    lab lab_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY srdl_velocis.lab
    ADD CONSTRAINT lab_pkey PRIMARY KEY (lab_id);
 <   ALTER TABLE ONLY srdl_velocis.lab DROP CONSTRAINT lab_pkey;
       srdl_velocis            postgres    false    240                       2606    16683    lab_type lab_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY srdl_velocis.lab_type
    ADD CONSTRAINT lab_type_pkey PRIMARY KEY (lab_type_id);
 F   ALTER TABLE ONLY srdl_velocis.lab_type DROP CONSTRAINT lab_type_pkey;
       srdl_velocis            postgres    false    244                       2606    16685 &   lab_user_details lab_user_details_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY srdl_velocis.lab_user_details
    ADD CONSTRAINT lab_user_details_pkey PRIMARY KEY (lab_id, user_id);
 V   ALTER TABLE ONLY srdl_velocis.lab_user_details DROP CONSTRAINT lab_user_details_pkey;
       srdl_velocis            postgres    false    246    246                       2606    16687    region region_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY srdl_velocis.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (region_id);
 B   ALTER TABLE ONLY srdl_velocis.region DROP CONSTRAINT region_pkey;
       srdl_velocis            postgres    false    247            	           2606    16689    role role_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY srdl_velocis.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);
 >   ALTER TABLE ONLY srdl_velocis.role DROP CONSTRAINT role_pkey;
       srdl_velocis            postgres    false    249                       2606    16691    user_details user_details_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY srdl_velocis.user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (user_id);
 N   ALTER TABLE ONLY srdl_velocis.user_details DROP CONSTRAINT user_details_pkey;
       srdl_velocis            postgres    false    251                       2606    16692 ,   lab_user_details fk7jr9btldtk8e8jhcoow7jax7e    FK CONSTRAINT     �   ALTER TABLE ONLY srdl_velocis.lab_user_details
    ADD CONSTRAINT fk7jr9btldtk8e8jhcoow7jax7e FOREIGN KEY (lab_id) REFERENCES srdl_velocis.lab(lab_id);
 \   ALTER TABLE ONLY srdl_velocis.lab_user_details DROP CONSTRAINT fk7jr9btldtk8e8jhcoow7jax7e;
       srdl_velocis          postgres    false    240    3071    246                       2606    16697 -   group_user_details fkdlg1s52e90f83qqbyw8t5722    FK CONSTRAINT     �   ALTER TABLE ONLY srdl_velocis.group_user_details
    ADD CONSTRAINT fkdlg1s52e90f83qqbyw8t5722 FOREIGN KEY (group_id) REFERENCES srdl_velocis.group_details(id);
 ]   ALTER TABLE ONLY srdl_velocis.group_user_details DROP CONSTRAINT fkdlg1s52e90f83qqbyw8t5722;
       srdl_velocis          postgres    false    3057    229    227                       2606    16702 ,   lab_user_details fkoan14g6f2m21du6a6nwvk48k7    FK CONSTRAINT     �   ALTER TABLE ONLY srdl_velocis.lab_user_details
    ADD CONSTRAINT fkoan14g6f2m21du6a6nwvk48k7 FOREIGN KEY (user_id) REFERENCES srdl_velocis.user_details(user_id);
 \   ALTER TABLE ONLY srdl_velocis.lab_user_details DROP CONSTRAINT fkoan14g6f2m21du6a6nwvk48k7;
       srdl_velocis          postgres    false    251    3083    246                       2606    16707 .   group_user_details fkrd6yykjlxm24uu1phhdog32om    FK CONSTRAINT     �   ALTER TABLE ONLY srdl_velocis.group_user_details
    ADD CONSTRAINT fkrd6yykjlxm24uu1phhdog32om FOREIGN KEY (user_id) REFERENCES srdl_velocis.user_details(user_id);
 ^   ALTER TABLE ONLY srdl_velocis.group_user_details DROP CONSTRAINT fkrd6yykjlxm24uu1phhdog32om;
       srdl_velocis          postgres    false    3083    229    251            �   n   x�3�L6Q��+.I�KNUHK��̩
��$��rᐭ�H�6�ʛ��7�ʛ␷�ʛq�b���g�C���4�q�8�a�34���� ���
3���Хa���qqq ݹ�]      �      x������ � �      �      x������ � �      �   '   x�3�44�20�4�44��wu�7�2�.���� w
3      �   ?   x�3��M,.I-R�OSp��-(��9}��9��]A�˔������9]]]A�ˌL}1z\\\ G�3      �   $   x�3��4�26�f\� Ӑ��D� ڈ�      �   T   x���1
�0�9�����$��K+U]�<���	�O���슦�<����Ӭ�^ϵSI�9�Z�@�B�^����Ɣ�p8'�      �   M   x��̻�0E��B���.4��H��R��WGW�v_;�k��0e`���� �M"S�W�ϧ�:OK`����9=c1"�      �   H  x�햿r�0�g�)�������]�YdIn3T������jՆL������#>��@�A@�ށ�!e��G��	6�n^w -�Ct-��������6������(��o�cߩU������Y��>[rZ���F�7�R�-����Ϣ)�*Z9@U r0�����)BK�� ��s`Z�1c&6ɇ:ia�9��tE����B��ش~M)TШd���ђq�IpvK��*d�$M��d��mH̐�K����2�����0�ߧ{_�Gm��K���{ɦ��S�	�hk|��b�
�
#��� ����Z��u�����
U4�X�ߙs
O�ʙABR�-�!��	{�뺦�d�������4�}oڷ�����[<�c����?'��.�	��x	�G��'�z�1rh��(S�I�d��@��x��BI&:��{���J��	��5]jZ� ��Ǚvcu�\�h`�c���@L�%�u0�N�y���;���`I�f����ˣ�p_���*�9e@�3O��H7����y*��4@>��4s��ak��ak��ak��ak��a��[/f����B      �   ,   x�32�L6��I,JO�2� �+�K�\����� YG� w      �   �   x�����0�s2@���q:�Һ�@B�؟��FU1 ��e=�?��WG�:��C� '�=B�R�z���ݖم��g�(�d��h�S]�>�S�O������"S�(>�*��/J�2 s�PM6*\U��O���BI��ʑ6���Y��l"��      �   a   x���!�0��+���m���\-��P5U(B���E� zf2S��Y�c;�O�,�e6�i�J$�F�H�A=�	S]+��ķO߾�R~;�ADn�:,      �      x������ � �      �      x���46��46 ����� [0�      �   I   x�3��-�MJ��t���7�2���KO,�/J��:� ��9���2��3�29C��T1%F��� D�*      �   9   x�3�LL����2�,.-H-҅��93�K�J�K�L8�KJSR�J�IQ���� �"y      �      x����Hv�׷����-1-��s�a�b�Oou�όac�Y�"A ԩSU��y~���������S��ߓ��c���~~}>���A$�c�w�Ch�f$H��=�2M����Lɓ{�XG��ND$D��~D�Rm�ϧ���~p��˴&K?AZ�h.���@�����?���+�χ��%���8a{2B:�t��U�8=v���.�I��]���XE?3*;���zYv� �mB�c^�l���~������} ��I,����9��Y��������r�K,ZmP���f����w�]1�,�r��Q���r^t�S�М�O�K�SM� {����.�D�W˦~5,ѣ�W����TQ�S�)Jf(��f�q��*��a<D�����cb���?�I�n[�ޘ�˴P����0�S[�"�]�s���s�T|P|؀"[�8O����$�!O�X]�r4u��f���;��h|�,ۣ%�`�4c��)a��#c��;�,SJ{�Wh��'ڵ�Y�x�^�!���Ѝ���!��%P�@P:�ƾ��U+5��S����Y������q��(�f�k�H
{ c�;��L/j�,�nݶ�G=ch�8e���Ӫ&	�}���%> B�,�.x�}H(�)��I�T��8/�H��yP/��z�9�G�,�NM�.2H�}s��3�]+����pb��N<K�alE�:a�'8�'�1rx�-����-��.��I�UV����r�9��	s֗O���N�n���!�G�z��ϱ�G����Nsg�jR{T�iR�����x��[W��2�F_]� d�#I`����\앍h"���۩p�ĦYVN�d缎�����u��Vɯ�f�"*�e<&uh�vg��q��A�R�d0�x7��.��h�\2.F�'�8�	o�e���$s/�D��Λ�]���컌?�s�R��ҳ-���]&E0,~u�R�{9z`���u���"�e."kt�- �׳��(�%�<����3}ւ�Jw�c~�R�YGO	����XmeW#bJ����Lc�I�r}���c���}u�Ƃ/8_uO�A%�J�]|�6�8��$�Qm����B��l��I�C�e6��n�Ww��&vFa(mv�"��h8)�p���5�[ix6���ENs��=�9����t���ir���u\�����D�~���g��1�5�D��ރ<���YE�7F������v���2,Fs&p��	����x�o��eV�oI�{u�M�}oTV��ð#�n�􍊔����v���W]�d�ͱ&Z��r�lx<RE/�"y~��}�?G=C}� �g;R��n'��!-%���D|�d��$j���V~ʘ(�����#��"�d#�*ׯg2S�],�B{4�%n{u)V�/����[+j�(�3�w�x���.��Z�y�A�Ҙ�N/��*��&�C��!�����Fm��(�M&��uw�d�T��;�-]y��Ga�kWc�¾��s#x%�L]�dR	I��Т�������LX��s~�>i�����R1��j��)�:��:+��1}mQeɗ��+��E��yF�؈ }:�K����~���#�~A���-����'m����������}�Wbv��^�u��~�L'���D��+��֗é�ӓ�0[�`�W7�}���M0Ix)&�b���V���f�ܝ�e\����M�2�z�,i���S9�@[�7���t$�K2h�;p�%f�"�U�c���]�w�y�W8�)����:qB���#z"�U-�
4�O�#��x`�.���x=�0�Zb\o-ͧ�}�^�)S�E�T���X�H����MJ����H���s�QJ�B�:D5�.N�	;��r cx܍c֦s�A�]3�;yt�"{tɀ�%&�Vjx�ug�x;^��X�������Ko�a��ғ��b17�ڎ�à/�y?�]�z#P�~�Yڧ�L 2��C^����1ܛv��"�d׃̛ �D�}��{};�J�y��W�[�����=� ��&8gm��¿�1��p���ѽ�� cE�db\�e�`����:�`W�y��mOw3�U4��?0<9�)�5��c���������Z_��Zir����\%=����Ŝ���EPb$�1�h��ē'�L�=޷�G��)+MՍ�<�Ww�k�m���	����\��~����P�������yh�����wÝ�R"�W�>�?/���䆛����T�y	��j��LВnoN ����"g��ن�ꮞVB�/]?�<�Z5�Lj��"@�N�?%8����8�fUA�����c�̊|u�X�$������RU#d�
z7y�V[�O9���t�nE�{��r����z%��)�l���MҠԨj�F��m��Q�;�3�y��x��vIͭ�x>:Ќ-S�.P|�'fqt�>b�h�.`U1�P�-ꏞ�7����"�m&�«n����B��;���p(d/eF�vD<�Q�:���e���"W���8�L����g?x���9�;y��ݼu3����Tj]�(Ťp�0;H��Rr.����C���\�e���|;QYb��]���F[� j�	R65,G�{uɀ��c�:����8�3՝8e՛���:��A��l7��I�r��e�b\�?;��%�0�R��ݖ\B��m}�b���]�U�C��/i�t9�!5��n«dM��w����hp��4�s�>8NJ��0Z��ë�gh�\�v����_���x�"|���=C��W=,E�>LM;K]E���w��s�Nv��� �W'��f�/iWz�"+s�7K�i���ܲ`ɧ@)��F���������o�ȗ�_Z~i��嗖_Z��%�����aZ����\���!Z8H��n���D]���sJ��`'�{4�t����0���k�ȥ��G�A��em!+�lK��z���QU���ֽ�F��y�S�"����<_]|D����ӕ�
�|{Jb��M��؝�Q=y�V�k�;�3 meP�eS�f��u�$w�bdr�`z�ai��Ȃ3���M͕W�?���1O�H%=����k%�K�a$�	@W� ������U��b?`�\3����b3��� �]y�υMϟ����鷊d��7�W�Q�8{=���]��´��ڤD��qHq򰎯N�>n�{A�
0-�`���fL<?6�	d�oYK+�qK�� Έ�?���d� ��p��?�Cf����A�]�(
D�舍���̊��6I������4�9�1�@��4!;��r��{�*.!��VB�i��T�-�0ɲl6���G��X� z5m]}��͌+P�*��C�i�B׏�ZPFO�y5C�e��A$��O�1�Y5���n�VS��t0|�i0��炢Ρ�l/�Г�#��=P?y�zҧ$	�No2߶��:{�E��u�w� ���F�H��m�.��H�b��.��wc�?Y�l�YF�݉��h�w5W�z�\9r�t�����k���{��:ҩ'���#kR�?������'�#!:J��Lу=�&Y��(���y�g?L��L꼋�� ����Rɵ�WO>�MΛM1���.}�u����-��S�@ bR��%�~��	�ۆl5%H�
���>�?� ���>�Y��)4J�Г�J�����,�`�C��|�%�Q>�F/�k�\;���!����-��b����<�	������'�ct�5���Y52?�&���Ű�zٶ�'�G�������O�q�Z���� :=5�C�d��3|��Ls@� ��3K�W�/;tsoθ���2yxKjC¡m���"z���5�`]Rl�ۡ>���?Z<�$e-�x,V�4���~h����b�vĦ�8w$���[�>3U[uoc��~dȇ�&oz����.��d�jv@t��{���t����ףʀ�=����C�l�O��ӇA<?[�d�o��(\�=o�=|ey�PI�5$ ٢���P����Gs��ks��BY.�:��뇍�;4�7 楏,"��1�K*`M}�(������ހ͡� �   ��ur�-aS0�Sw����7���'���C�ء珱]O �J	�K�����$�M��vnF�=�ǅ\��>���v�ge�Q��+R�$�XpX���������_3�k����5ÿf�����������m���������5ÿ����K�/-�����k����5ÿf���������׿���/�	��k!      �   `  x����n�0�y�>�c�qn�b�D\����Y�<}A�V�Z�˜f4��C��)��'�8U���*;U)��a����n��0Juc�zy��'�N��55.��P.��j"�����sN�	T�1�̀`�̯�V���ӨB�e�}�4�v;���$�4��E!K���Z;��,���o�����Qx�؁�<b�_��	��uG]�ba�Q,����K��Jw1���O�ZK>-�"p>�)�+����;�3�0��̳b0Ͳ±�͖��Em���'mײ��H��kq�Pm),�����U!�Z-�l�I�c�졷M����p�|������A,�Du����N�E���      �   �   x�u�A
� ��s��@2jLz�ޡ���Bj!�}uV�m��aYE7\뻅��%���I�a{&2@�?[����O���^��9nڇ�r���#x��Q�0��SѬ.9n/b��z�C��?�x�w{��<���M�eZ�H      �      x������ � �      �      x������ � �      �   $   x�3�40�26�4�44��wu�7����� Mvf      �   �   x�E˱
� ���ާ�	J�����H���."�oP3�����8�ƕ��E(����F�H�f����>�� W}l��s�{�ٯ!� ��)-�7WWN������"h�$	f��+�P������"~4-.�      �   ,   x�34��44�246�Q�����P@��g 晁9f\1z\\\ J�	�      �   y  x���MO�0���i�ϱ}�;G�^��PEڤ���ׯ�hkWy�=W���<�(��8l�������Z����6۷}/���q�c�﷏��q��%�.\]��_\'{�:��U��4��]�����>߿K�%�<��u�Iݑ���t�V��j�a�v����i�5H�4��ϓ�;��ѵ�<e'G��M�c�r�?T>��������2n$�o4A�x��S�$��}xe�s\�"��H?�ʇ����$�iN��ix���^��#o�Qw+�g_no+ֱ����W�c�gz���wA��8�;px�w��V����#���KN���6/% ���[X ��nvtk��楋]7�O��K��J4v�~1����b�O��7�a���Y�#\ �� �%�k��%"�����V� ��0s��261�tY� /��p�a��#���HX�0���.����qw�eH��c��`���q R���<~{)���/M�q �lyas��ވ��3�_�"^a�q���+�� g_��+�����rw *��˃��{ypC��y rS=�33��r|*��y�"^�G�*�q��v9^���c�X;γ.��.���f���.�#
      �   �   x�]�1�0��/�r-wetwԸ�\{;P�h���A����W+re�Ap	��ةC.ˣ���:�iΥװZ�-"��{h]�N%�Q�����FL�Q,�s.2ާ?�r�8��� �4*���g��xÑ	�g����W.�h�M�Fo[a��?�R}*���Z� �{Js      �   Z
  x��[Ɏ9=�����-y`�̽/�6
��2����̬��HE�����c�O`�~��͆�/�/��a���	�����Md	7;�8�><�|���/�v������?��>>�w�|���돿�Z�jڋ��x[�ǿ����_��<s��i�b�1�-��Φ0q�Gkpb�8�+�ÄN����0�7�J��
�ֶ|�|��f\�;�@/��af������a:5L�ʖ�b(Ӯf�L ͧ���a���}��z�����9��Lq�z�L��;���E8�,�`�0�قI��|0[�����²�y^�Q�� ��
42��|GCl��5�X����������i��g��x�C���äx�w\S
s�����[pD��Ά�;:�g�\rx>�lRЏ�n��&����1и~$���FvpP�y��^A�ݻ���Ŏa��G�X�H=
3��! �a�&̄M�
�a��yMs��,�8�y�G����HƜ�����������������*>��m=��@]�b᳿X�;������j��85�k��5gC���ڳ�ֆp6�ڰ�����Ӗ�ݰ��Ђ|7�"'Xݰ����>r�ұv�s@��E��k�Z�	���3�:
�m��u��#eib(7����z���ʏq4��1p��#�!Ra(3 ��n-��������vd\>BQGu�FQ��08WlgН�Ha\!M8� [X:��i�C��C�г6oDb��)R�ۺ�������E�I��Gv�Q_�� �*y��(���]0Ă�?��o�l���;���hg,[P'�ػ��{�ȯc���z�S.i;�D8�"ɥ����t����	�ߐQ7g�w����2
��@e��o��v�7�j��{�*mا_�tc�~u���܏_AT����+�(�Ͷr��i��D�j58��pR.���3�-^�1��4��Iz�)Li�s:�̓'P��8�����X{�R�8G�f�F����y:g�� N����<��)N��.x�nR�f��u�c�k<f��u����K�B��C�jÐJgs��+5$�M>��Y�����?�~��_������Z]b����"��*�u����P���������O9H��1?��V���p���HZ&�?.;��v�r�9�qZ6��6Nfr��n�H6?`�;��R��B;� ���~�k���\+ل��qm��i�u��T8�Q�	z�L�&0�2��@}|��t׿�m(�w�	�B\p�*�4�Ef�(Cf����C��6��["
-�������шZ�*��A��'�c�PE�&��'2ژ#��@F#���M���ՃN�q�؟�i#���m�c�^��d�n[�Y����9L�uH�H'�z������ox�D��I���q��������s�����N�nYF��́�|b<�::�EO��ʹCu�x��{�/to��+;'
�
S��]���Xn=��D�B!�*]����W�~\��e�u�h-��-�4>���.8��.��.ǖ�o�t�O��=!�wnCsG��l�JZቴ�J޲�T�S��-9{��E�m8������8H�����n�O���o������`��$��Jf)s~Ym\^�ӽb�踄H_�Ȭ�*RgZtR1��me�� �.G=tn+�0����5��#���a�\LU1]�77�v���gk��1�Ur���~�-%x�Y�t�62�8�w�u������?�PPZ�8X�1R���D��;��o�i���x�O�c�֚�����4G�k�(kr�7Nݽ��F[������tO�� �1�3��U������Y��İ����D���oA�#t{ ծ{��]��R��=����y@t{�*@�߇�~^�=�I�,�r�t�����PLaF�N�.�#�yn�����sH}c������������)�������b��y�故�'^_��j�����<m����"�v�VI��E�65S�j\�t%��V/R�ܮ���]��9�t�x�]��\�]1֟e�S��55d�}O"=�RX}��qZO\<���$�.J<�)�^����}���oc
g�m�	c<q��::���2"Mnm,r]-f�ȴ����ѿ��v�-�w~y�[�g*�'mʸ/�}C��*���
�f]_2�t`o7l�<���q�����a���ءH	�Z��8��A�^��u�a�7�	E����qԌ��+ ɬX�3�N
]��Xٻ.9�6Ύ�K�N&]���:�t�r��ɤ�kֆ��uUk����Չ��O�Չt���Kek���:�"RNI�F�8;|��oﻭ ���?@��27=�Y{�5�`p�0��'8[�rO��B�!C��ա���"{ڟL��{�g�UҸ�#K����d����@�J =��:-P��i�*�7���E�q�hfF3g�&���@�~�W�����,�E�v��yRk�����_�T��~uҞ�`ڴ�(��xp��,g��a\%���C7����NgǆX���2��>�ذ@�Y1T�,�OM��7�����w����O5�[��T��i�J�����O~��C?����W�T�'�*BW��!��˗/�]rO�      �   z   x�E�A�0��c��q��/\TU����F8�v4�u�a�����-o�.�e
k����?j�����+�#Ͽ��Ø�1���HfhLA]E��$F�8g�}F��]=�ӫ����qE�DW      �   �   x�}�=�0�99�>��vrNХu[��ظ?I�FU��`Y��n�;����BRk�}��5}��X�=���).�`[QIs[�B?*SzL!(e�4YX�i��I�TA�v*���
�N�;OR5*S���Xri��������D�      �   �  x���Mk1����cKpь�]I7����	r�e[���8�㴴�����fw�C �`�w�󡱱�b�^�/V�b��%��~KP%(ȼI�1����L%�w��]����~�6�z��}/�� ��8�'��R{eZ��[���&��N��q;3F|��ɗ���!|��9H+9CZި7 +��Ǵ�1�[�Kn*�gg��ҵj�k�&Zc=��$,�V���C`�yڗE KDO��d�*F4s���y �e�\c�d�3�p��Y&�?��n�)�n��j��##��G�*��bq�
�t��T�/Y�6H����c3��L�TV�n15�6��"�/�2��Ę,���đ�0h�!�&$�Ny�~�����V�����*��o��FGA�n��X���V�ʣ�f�`�YkP�Z���b�:��YB���pb�m��kYk��A�ÀpUh�n��b�6�8�4��t���׾
]W2�U��	���Ky�Z`�1R\��K�g���>�����a��_#���� n�>��ѿ�	ɗg��|���*�G}%u���J�����a;�l��x`tha�*�O@�pd=�V��9L���x[��д�O�j,��{��*n��z�`;g�2�ցg�ʫi�{Ϸ�C(N�Z�}9�-kz�lW�����t�ɍ1 A�c�@����˫�����DYl����TM� ���*?Q�!�٬����?�]Xz�l$~�(�fUn�w��=��$|�ka�R!F⍳����F�k�.�`�� ta�Ѹ�ě���"��u�ѻ���vz���2P:?�p�u PF/w���j�|"���xçw�XG�.�׾Tq8��ƒ�}�=��\�b��B����A6aQc-3��4���Cv�\�1��4T�{��~�a6��6� �      �   �  x���MoA���_�{�����'A"{��xˊ$uC��ٝ��$J;{=���e��xX���c�l�n�E{L�0;րt��e�m�v�}�����Qd���iX���~���5�k��ݢQ���1A�8a�f��J���o�!��v���&~ �;5
�$��!Fd�bY"V�= �Sa�}�6�`��JAG�mc*�I@��;@�
�]]��v�3��l2��K^���	�R#X������6�0mZ���Q�:@��ak:qK%�gl�Z��Zz��̄E�cViacp�a5o�|Z����>{V��H	gb�o�����0�~3���0ty%Uh~mR�r	���\��Y��Y�V�W��������Y?�{�:����dj9�䂵���g�V6e�c���W��)��)��)�?���Tl��\��䢽�4D0f�y�r��kw��G�#���!�\�Z?�Z�w9�-��j��	�9�V      �      x������ � �      �   �   x�=�A�0��1�ı1���G���iGi=�{��	p�A�<�ܘu�l�9���	�j%��<(s`�%�"�g��C�O+RE� uBfϴ�(G�9���9i+��Y�]hU��Q�(i�4����f���9�      �   E   x�3��-�MJ��t���7�2���KO,�/J��:� ��9���2��3�29C���1z\\\ N>b      �   5   x�3�LL����2�,.-H-҅��93�K�J�K�L8�KJSR�J�b���� �y�      �     x����Ϋ���=E�Q�ކA� �t��-O�����ýUJ�JJ���� �;�}�Z��ۗ����37E�U��<.�܍p�Mu�#k���%ꚯ���z I���1ǿ���ED7�~K��`��0NH�c,N����2"�haaH��R$1�H��B��h.����'�� u�m����Oh����*��T���B�W���\,���~M��仄����/�đN�w�m�o�*�����ί�Ϳ��F"0|������u�?�4/q��V��oC��߿����Ѱߡ��ۇf9A��0��5Cp(��Yb��#�V����$��Y�DV�Sޫ����5���ñ���c�xt*�49�g�$�O���$�d�Y8Ƭ:|��I6����N�@�`iʱ�6g���Ql��>- et"�������C�����+<��'��:ʅ�4�.� )7<R��#�����ݞ�\�'�ް�Q#� �Dp�����&A76�n�6�5V��6�ʇ�B������66�]<b	��A��\ J���s|��MnÌ��}H,�f�P�~ڲ^=r��H�F�:t��+�>l񦕚$��)��.�uFJ�98��VC���Z���W��D��pkzz��5�@ w��fƶ��B���=�S�ZRͩ7�86��Ŷ;����w9�t\,��;و�ף<��y�4�^�l����}�.�b�8��BiF��Bm��u(�&�>o�f�L8.瞎��}xT�]�}��(�m4�Vr8�z:r>$�ӕB���BxQ:��5����4#���rY�у&~��nu��K��'���>��m�L;�R�*U\i�r�Y�q��g����J����SGS�f£�LN�AЮ$:�l�3;�+'8
Hd�!�����',��iw�(�@�t�=⭆�j{�K�b��� Z��a%�z;\�z�i�&���=f��"Ԋ`�G��	q[Z��
��-my��tu5�������"�G�����\{�cR�����v* r�ܫ��:fv|Ρ�`�OUo �D�|#�����`����a�^|���;1�S��z�J����}m�4U*��&g�P5�ֻ�q`��J��|�k���&>Y���B�b�Β|̀� �Y)��!xk��V3{�1��~Zl���l�i�qmX9)�o�A��jDC�0eay}B^;��
*n��bk�е

1�Ǫ�2u܈���;J��2�VI@���ЁS���J�j^}K��R��vY*�?�èCjX"�d>K�F���J�����nGf�r���lG�=2�ا��v�zP|EdO�>Չ[�z����[�
�z4�#�A����yZ�2�|=�>�1�����\�C���p���&�a��q���EѨ�l���~\|ڬ��}�.jJ�}��c7��e�6�CkL(���O���I������Go�µ�@�~�"��J��U��AMz�O�1+�+sP�ה�*M� �Ŏ8XW����ZQp?�h�爇���Е�,�z?��ݵ�M�U��1s���������O��2P�����<���_�w�g���g]�&��N霞)��ڒ�٘V󖰕�
O,�F��v�j�5�z�"IU7�w���W7'����֍�}�qC�S��3�A��u�V���u,���'��L���<�]���~�-E�'����0x�a����8�{%����]�#���nW6"z�amwe�Z�*���1����*°S��l���O )�ӊ2[y�!d��E��4�ѳ��P��`8�px�8uV�ZL�kK/Uo=�2��p֯��K�Y`��ԅ	�=N]Q3�Vq��ߙ瓾39z���jO�� w�cv{JKޒ�^���]{I� �(�,��&vS+ 4��f��9Tp�8���iM��kI�\6w��f��{Hz�aKQ<��L!�@��=OU��{�M�M�"&mjK������#<���f�vs�ѻ���=4��2R|���Tc�<�m+]�7}ټ"v�}A�(���6��2c�6�5Zw.��`��¼}��j�2�@���,��~ݜP�����U���J'�0��ٲ�xX�;$���-�b���'�[�0Ƨ� ����{s�Vн󢪽�Eں���[�"y�*�c<#�ث�`GZ��G��q
=e \���᾽OloIgҷ�q�q��ǔ]���;�~��׺`�dF�������T�E�ғ.C+-��I�
}ԥ�LwW5;,Qh}�{e�o�s3l�.J���p�?�4�\��P㱻��#�_;�]A1=a��$@:D��C�BT|�;c���X�&�֒�*�@�����
)J��M�7>f~�3�4߰ޮ�+���w���x�����6����όٲZ��Du�{C�a�}��Gk٦D���fC�� �finX�i=҉��n&��sL=&4n��ë~wZS�I���BO���p�m�����|9h�iv�'���9ʃ��i�/�P����M��	��c>�3���@p�{>�/s/O�� ^��������&p�?�yu@�?Y.MӜ>�m�;"��m�����&����!,E}��=��ū������䊞�5�C�0}��
v�%�|�NH�-��A	� }��f�Q�']�6�0$ֶ�Yn�:B1�ͨ{�~Ȭ^N}�iYrL��Sʻ�����jM[��hK2P�Pl�h�s�il�#�Cq�
t�������YuG��?��6C_���MHp�C����.�1��vW4�M¿T���	p��2�a�5�m���uZ*c#Q6������q~~�駟�	W�*      �   �  +   x�s�+�,JU�/.QH��+I�+Q(�,�PN�-�I��� �9b      �  +   x�s�+�,JU�/.QH��+I�+Q(�,�PN�-�I��� �9b      s#  +   x�s�+�,JU�/.QH��+I�+Q(�,�PN�-�I��� �9b      t#  +   x�s�+�,JU�/.QH��+I�+Q(�,�PN�-�I��� �9b      u#  +   x�s�+�,JU�/.QH��+I�+Q(�,�PN�-�I��� �9b      v#  +   x�s�+�,JU�/.QH��+I�+Q(�,�PN�-�I��� �9b      w#  +   x�s�+�,JU�/.QH��+I�+Q(�,�PN�-�I��� �9b      x#  +   x�s�+�,JU�/.QH��+I�+Q(�,�PN�-�I��� �9b      y#  +   x�s�+�,JU�/.QH��+I�+Q(�,�PN�-�I��� �9b      z#  +   x�s�+�,JU�/.QH��+I�+Q(�,�PN�-�I��� �9b      {#  +   x�s�+�,JU�/.QH��+I�+Q(�,�PN�-�I��� �9b          