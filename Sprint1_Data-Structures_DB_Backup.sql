PGDMP     *    (            	    z           data-structures-sprint1    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    40995    data-structures-sprint1    DATABASE     v   CREATE DATABASE "data-structures-sprint1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Canada.1252';
 )   DROP DATABASE "data-structures-sprint1";
                postgres    false                        2615    40996    secret    SCHEMA        CREATE SCHEMA secret;
    DROP SCHEMA secret;
                postgres    false            �            1259    41020    messages    TABLE     �   CREATE TABLE secret.messages (
    message_id bigint NOT NULL,
    agent_id bigint NOT NULL,
    data text NOT NULL,
    structure_id bigint NOT NULL
);
    DROP TABLE secret.messages;
       secret         heap    postgres    false    6            �            1259    41019    messages_message_id_seq    SEQUENCE     �   ALTER TABLE secret.messages ALTER COLUMN message_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME secret.messages_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            secret          postgres    false    211    6            �            1259    41028 
   retrievals    TABLE     �   CREATE TABLE secret.retrievals (
    retrieval_id bigint NOT NULL,
    retrieving_agent_id bigint NOT NULL,
    retrieved_data text NOT NULL,
    retrieval_structure_id bigint NOT NULL
);
    DROP TABLE secret.retrievals;
       secret         heap    postgres    false    6            �            1259    41027    retrievals_retrieval_id_seq    SEQUENCE     �   ALTER TABLE secret.retrievals ALTER COLUMN retrieval_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME secret.retrievals_retrieval_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            secret          postgres    false    213    6            �          0    41020    messages 
   TABLE DATA           L   COPY secret.messages (message_id, agent_id, data, structure_id) FROM stdin;
    secret          postgres    false    211   �       �          0    41028 
   retrievals 
   TABLE DATA           o   COPY secret.retrievals (retrieval_id, retrieving_agent_id, retrieved_data, retrieval_structure_id) FROM stdin;
    secret          postgres    false    213   �       �           0    0    messages_message_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('secret.messages_message_id_seq', 1, true);
          secret          postgres    false    210            �           0    0    retrievals_retrieval_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('secret.retrievals_retrieval_id_seq', 1, true);
          secret          postgres    false    212            c           2606    41026    messages messages_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY secret.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (message_id);
 @   ALTER TABLE ONLY secret.messages DROP CONSTRAINT messages_pkey;
       secret            postgres    false    211            e           2606    41032    retrievals retrievals_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY secret.retrievals
    ADD CONSTRAINT retrievals_pkey PRIMARY KEY (retrieval_id);
 D   ALTER TABLE ONLY secret.retrievals DROP CONSTRAINT retrievals_pkey;
       secret            postgres    false    213            �      x������ � �      �      x������ � �     