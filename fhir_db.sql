PGDMP                         z            fhir    14.4 (Debian 14.4-1.pgdg110+1)    14.3 ?   p           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            r           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            s           1262    16385    fhir    DATABASE     X   CREATE DATABASE fhir WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE fhir;
                postgres    false            ?            1259    16386    bt2_job_instance    TABLE       CREATE TABLE public.bt2_job_instance (
    id character varying(100) NOT NULL,
    job_cancelled boolean NOT NULL,
    cmb_recs_processed integer,
    cmb_recs_per_sec double precision,
    create_time timestamp without time zone NOT NULL,
    cur_gated_step_id character varying(100),
    definition_id character varying(100) NOT NULL,
    definition_ver integer NOT NULL,
    end_time timestamp without time zone,
    error_count integer,
    error_msg character varying(500),
    est_remaining character varying(100),
    params_json character varying(2000),
    params_json_lob oid,
    progress_pct double precision,
    start_time timestamp without time zone,
    stat character varying(20) NOT NULL,
    tot_elapsed_millis integer,
    work_chunks_purged boolean NOT NULL
);
 $   DROP TABLE public.bt2_job_instance;
       public         heap    john    false            ?            1259    16393    bt2_work_chunk    TABLE     S  CREATE TABLE public.bt2_work_chunk (
    id character varying(100) NOT NULL,
    create_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone,
    error_count integer NOT NULL,
    error_msg character varying(500),
    instance_id character varying(100) NOT NULL,
    definition_id character varying(100) NOT NULL,
    definition_ver integer NOT NULL,
    records_processed integer,
    seq integer NOT NULL,
    chunk_data oid,
    start_time timestamp without time zone,
    stat character varying(20) NOT NULL,
    tgt_step_id character varying(100) NOT NULL
);
 "   DROP TABLE public.bt2_work_chunk;
       public         heap    john    false            ?            1259    16400    hfj_binary_storage_blob    TABLE     R  CREATE TABLE public.hfj_binary_storage_blob (
    blob_id character varying(200) NOT NULL,
    blob_data oid NOT NULL,
    content_type character varying(100) NOT NULL,
    blob_hash character varying(128),
    published_date timestamp without time zone NOT NULL,
    resource_id character varying(100) NOT NULL,
    blob_size integer
);
 +   DROP TABLE public.hfj_binary_storage_blob;
       public         heap    john    false            ?            1259    16407    hfj_blk_export_colfile    TABLE     ?   CREATE TABLE public.hfj_blk_export_colfile (
    pid bigint NOT NULL,
    res_id character varying(100) NOT NULL,
    collection_pid bigint NOT NULL
);
 *   DROP TABLE public.hfj_blk_export_colfile;
       public         heap    john    false            ?            1259    16412    hfj_blk_export_collection    TABLE     ?   CREATE TABLE public.hfj_blk_export_collection (
    pid bigint NOT NULL,
    type_filter character varying(1000),
    res_type character varying(40) NOT NULL,
    optlock integer NOT NULL,
    job_pid bigint NOT NULL
);
 -   DROP TABLE public.hfj_blk_export_collection;
       public         heap    john    false            ?            1259    16419    hfj_blk_export_job    TABLE     ?  CREATE TABLE public.hfj_blk_export_job (
    pid bigint NOT NULL,
    created_time timestamp without time zone NOT NULL,
    exp_time timestamp without time zone,
    job_id character varying(36) NOT NULL,
    request character varying(1024) NOT NULL,
    exp_since timestamp without time zone,
    job_status character varying(10) NOT NULL,
    status_message character varying(500),
    status_time timestamp without time zone NOT NULL,
    optlock integer NOT NULL
);
 &   DROP TABLE public.hfj_blk_export_job;
       public         heap    john    false            ?            1259    16426    hfj_blk_import_job    TABLE     ?  CREATE TABLE public.hfj_blk_import_job (
    pid bigint NOT NULL,
    batch_size integer NOT NULL,
    file_count integer NOT NULL,
    job_desc character varying(500),
    job_id character varying(36) NOT NULL,
    row_processing_mode character varying(20) NOT NULL,
    job_status character varying(10) NOT NULL,
    status_message character varying(500),
    status_time timestamp without time zone NOT NULL,
    optlock integer NOT NULL
);
 &   DROP TABLE public.hfj_blk_import_job;
       public         heap    john    false            ?            1259    16433    hfj_blk_import_jobfile    TABLE     ?   CREATE TABLE public.hfj_blk_import_jobfile (
    pid bigint NOT NULL,
    job_contents oid NOT NULL,
    file_description character varying(500),
    file_seq integer NOT NULL,
    tenant_name character varying(200),
    job_pid bigint NOT NULL
);
 *   DROP TABLE public.hfj_blk_import_jobfile;
       public         heap    john    false            ?            1259    16440    hfj_forced_id    TABLE       CREATE TABLE public.hfj_forced_id (
    pid bigint NOT NULL,
    partition_date date,
    partition_id integer,
    forced_id character varying(100) NOT NULL,
    resource_pid bigint NOT NULL,
    resource_type character varying(100) DEFAULT ''::character varying
);
 !   DROP TABLE public.hfj_forced_id;
       public         heap    john    false            ?            1259    16446    hfj_history_tag    TABLE     ?   CREATE TABLE public.hfj_history_tag (
    pid bigint NOT NULL,
    partition_date date,
    partition_id integer,
    tag_id bigint,
    res_ver_pid bigint NOT NULL,
    res_id bigint NOT NULL,
    res_type character varying(40) NOT NULL
);
 #   DROP TABLE public.hfj_history_tag;
       public         heap    john    false            ?            1259    16451    hfj_idx_cmb_tok_nu    TABLE     ?   CREATE TABLE public.hfj_idx_cmb_tok_nu (
    pid bigint NOT NULL,
    partition_date date,
    partition_id integer,
    hash_complete bigint NOT NULL,
    idx_string character varying(500) NOT NULL,
    res_id bigint
);
 &   DROP TABLE public.hfj_idx_cmb_tok_nu;
       public         heap    john    false            ?            1259    16458    hfj_idx_cmp_string_uniq    TABLE     ?   CREATE TABLE public.hfj_idx_cmp_string_uniq (
    pid bigint NOT NULL,
    partition_date date,
    partition_id integer,
    idx_string character varying(500) NOT NULL,
    res_id bigint
);
 +   DROP TABLE public.hfj_idx_cmp_string_uniq;
       public         heap    john    false            ?            1259    16465    hfj_partition    TABLE     ?   CREATE TABLE public.hfj_partition (
    part_id integer NOT NULL,
    part_desc character varying(200),
    part_name character varying(200) NOT NULL
);
 !   DROP TABLE public.hfj_partition;
       public         heap    john    false            ?            1259    16470    hfj_res_link    TABLE     ?  CREATE TABLE public.hfj_res_link (
    pid bigint NOT NULL,
    partition_date date,
    partition_id integer,
    src_path character varying(500) NOT NULL,
    src_resource_id bigint NOT NULL,
    source_resource_type character varying(40) NOT NULL,
    target_resource_id bigint,
    target_resource_type character varying(40) NOT NULL,
    target_resource_url character varying(200),
    target_resource_version bigint,
    sp_updated timestamp without time zone
);
     DROP TABLE public.hfj_res_link;
       public         heap    john    false            ?            1259    16477    hfj_res_param_present    TABLE     ?   CREATE TABLE public.hfj_res_param_present (
    pid bigint NOT NULL,
    partition_date date,
    partition_id integer,
    hash_presence bigint,
    sp_present boolean NOT NULL,
    res_id bigint NOT NULL
);
 )   DROP TABLE public.hfj_res_param_present;
       public         heap    john    false            ?            1259    16482    hfj_res_reindex_job    TABLE     N  CREATE TABLE public.hfj_res_reindex_job (
    pid bigint NOT NULL,
    job_deleted boolean NOT NULL,
    reindex_count integer,
    res_type character varying(100),
    suspended_until timestamp without time zone,
    update_threshold_high timestamp without time zone NOT NULL,
    update_threshold_low timestamp without time zone
);
 '   DROP TABLE public.hfj_res_reindex_job;
       public         heap    john    false            ?            1259    16487    hfj_res_tag    TABLE     ?   CREATE TABLE public.hfj_res_tag (
    pid bigint NOT NULL,
    partition_date date,
    partition_id integer,
    tag_id bigint,
    res_id bigint,
    res_type character varying(40) NOT NULL
);
    DROP TABLE public.hfj_res_tag;
       public         heap    john    false            ?            1259    16492    hfj_res_ver    TABLE     $  CREATE TABLE public.hfj_res_ver (
    pid bigint NOT NULL,
    partition_date date,
    partition_id integer,
    res_deleted_at timestamp without time zone,
    res_version character varying(7),
    has_tags boolean NOT NULL,
    res_published timestamp without time zone NOT NULL,
    res_updated timestamp without time zone NOT NULL,
    res_encoding character varying(5) NOT NULL,
    res_text oid,
    res_id bigint NOT NULL,
    res_text_vc character varying(4000),
    res_type character varying(40) NOT NULL,
    res_ver bigint NOT NULL
);
    DROP TABLE public.hfj_res_ver;
       public         heap    john    false            ?            1259    16499    hfj_res_ver_prov    TABLE     ?   CREATE TABLE public.hfj_res_ver_prov (
    res_ver_pid bigint NOT NULL,
    partition_date date,
    partition_id integer,
    request_id character varying(16),
    source_uri character varying(100),
    res_pid bigint NOT NULL
);
 $   DROP TABLE public.hfj_res_ver_prov;
       public         heap    john    false            ?            1259    16504    hfj_resource    TABLE     \  CREATE TABLE public.hfj_resource (
    res_id bigint NOT NULL,
    partition_date date,
    partition_id integer,
    res_deleted_at timestamp without time zone,
    res_version character varying(7),
    has_tags boolean NOT NULL,
    res_published timestamp without time zone NOT NULL,
    res_updated timestamp without time zone NOT NULL,
    sp_has_links boolean,
    hash_sha256 character varying(64),
    sp_index_status bigint,
    res_language character varying(20),
    sp_cmpstr_uniq_present boolean,
    sp_cmptoks_present boolean,
    sp_coords_present boolean,
    sp_date_present boolean,
    sp_number_present boolean,
    sp_quantity_nrml_present boolean,
    sp_quantity_present boolean,
    sp_string_present boolean,
    sp_token_present boolean,
    sp_uri_present boolean,
    res_type character varying(40) NOT NULL,
    res_ver bigint
);
     DROP TABLE public.hfj_resource;
       public         heap    john    false            ?            1259    16509 
   hfj_search    TABLE       CREATE TABLE public.hfj_search (
    pid bigint NOT NULL,
    created timestamp without time zone NOT NULL,
    search_deleted boolean,
    expiry_or_null timestamp without time zone,
    failure_code integer,
    failure_message character varying(500),
    last_updated_high timestamp without time zone,
    last_updated_low timestamp without time zone,
    num_blocked integer,
    num_found integer NOT NULL,
    preferred_page_size integer,
    resource_id bigint,
    resource_type character varying(200),
    search_param_map oid,
    search_query_string oid,
    search_query_string_hash integer,
    search_type integer NOT NULL,
    search_status character varying(10) NOT NULL,
    total_count integer,
    search_uuid character varying(36) NOT NULL,
    optlock_version integer
);
    DROP TABLE public.hfj_search;
       public         heap    john    false            ?            1259    16516    hfj_search_include    TABLE     ?   CREATE TABLE public.hfj_search_include (
    pid bigint NOT NULL,
    search_include character varying(200) NOT NULL,
    inc_recurse boolean NOT NULL,
    revinclude boolean NOT NULL,
    search_pid bigint NOT NULL
);
 &   DROP TABLE public.hfj_search_include;
       public         heap    john    false            ?            1259    16521    hfj_search_result    TABLE     ?   CREATE TABLE public.hfj_search_result (
    pid bigint NOT NULL,
    search_order integer NOT NULL,
    resource_pid bigint NOT NULL,
    search_pid bigint NOT NULL
);
 %   DROP TABLE public.hfj_search_result;
       public         heap    john    false            ?            1259    16526    hfj_spidx_coords    TABLE     ?  CREATE TABLE public.hfj_spidx_coords (
    sp_id bigint NOT NULL,
    partition_date date,
    partition_id integer,
    sp_missing boolean NOT NULL,
    sp_name character varying(100) NOT NULL,
    res_id bigint NOT NULL,
    res_type character varying(100) NOT NULL,
    sp_updated timestamp without time zone,
    hash_identity bigint,
    sp_latitude double precision,
    sp_longitude double precision
);
 $   DROP TABLE public.hfj_spidx_coords;
       public         heap    john    false            ?            1259    16531    hfj_spidx_date    TABLE     ?  CREATE TABLE public.hfj_spidx_date (
    sp_id bigint NOT NULL,
    partition_date date,
    partition_id integer,
    sp_missing boolean NOT NULL,
    sp_name character varying(100) NOT NULL,
    res_id bigint NOT NULL,
    res_type character varying(100) NOT NULL,
    sp_updated timestamp without time zone,
    hash_identity bigint,
    sp_value_high timestamp without time zone,
    sp_value_high_date_ordinal integer,
    sp_value_low timestamp without time zone,
    sp_value_low_date_ordinal integer
);
 "   DROP TABLE public.hfj_spidx_date;
       public         heap    john    false            ?            1259    16536    hfj_spidx_number    TABLE     q  CREATE TABLE public.hfj_spidx_number (
    sp_id bigint NOT NULL,
    partition_date date,
    partition_id integer,
    sp_missing boolean NOT NULL,
    sp_name character varying(100) NOT NULL,
    res_id bigint NOT NULL,
    res_type character varying(100) NOT NULL,
    sp_updated timestamp without time zone,
    hash_identity bigint,
    sp_value numeric(19,2)
);
 $   DROP TABLE public.hfj_spidx_number;
       public         heap    john    false            ?            1259    16541    hfj_spidx_quantity    TABLE     	  CREATE TABLE public.hfj_spidx_quantity (
    sp_id bigint NOT NULL,
    partition_date date,
    partition_id integer,
    sp_missing boolean NOT NULL,
    sp_name character varying(100) NOT NULL,
    res_id bigint NOT NULL,
    res_type character varying(100) NOT NULL,
    sp_updated timestamp without time zone,
    hash_identity bigint,
    hash_identity_and_units bigint,
    hash_identity_sys_units bigint,
    sp_system character varying(200),
    sp_units character varying(200),
    sp_value double precision
);
 &   DROP TABLE public.hfj_spidx_quantity;
       public         heap    john    false            ?            1259    16548    hfj_spidx_quantity_nrml    TABLE       CREATE TABLE public.hfj_spidx_quantity_nrml (
    sp_id bigint NOT NULL,
    partition_date date,
    partition_id integer,
    sp_missing boolean NOT NULL,
    sp_name character varying(100) NOT NULL,
    res_id bigint NOT NULL,
    res_type character varying(100) NOT NULL,
    sp_updated timestamp without time zone,
    hash_identity bigint,
    hash_identity_and_units bigint,
    hash_identity_sys_units bigint,
    sp_system character varying(200),
    sp_units character varying(200),
    sp_value double precision
);
 +   DROP TABLE public.hfj_spidx_quantity_nrml;
       public         heap    john    false            ?            1259    16555    hfj_spidx_string    TABLE     ?  CREATE TABLE public.hfj_spidx_string (
    sp_id bigint NOT NULL,
    partition_date date,
    partition_id integer,
    sp_missing boolean NOT NULL,
    sp_name character varying(100) NOT NULL,
    res_id bigint NOT NULL,
    res_type character varying(100) NOT NULL,
    sp_updated timestamp without time zone,
    hash_exact bigint,
    hash_identity bigint,
    hash_norm_prefix bigint,
    sp_value_exact character varying(200),
    sp_value_normalized character varying(200)
);
 $   DROP TABLE public.hfj_spidx_string;
       public         heap    john    false            ?            1259    16562    hfj_spidx_token    TABLE     ?  CREATE TABLE public.hfj_spidx_token (
    sp_id bigint NOT NULL,
    partition_date date,
    partition_id integer,
    sp_missing boolean NOT NULL,
    sp_name character varying(100) NOT NULL,
    res_id bigint NOT NULL,
    res_type character varying(100) NOT NULL,
    sp_updated timestamp without time zone,
    hash_identity bigint,
    hash_sys bigint,
    hash_sys_and_value bigint,
    hash_value bigint,
    sp_system character varying(200),
    sp_value character varying(200)
);
 #   DROP TABLE public.hfj_spidx_token;
       public         heap    john    false            ?            1259    16569    hfj_spidx_uri    TABLE     ?  CREATE TABLE public.hfj_spidx_uri (
    sp_id bigint NOT NULL,
    partition_date date,
    partition_id integer,
    sp_missing boolean NOT NULL,
    sp_name character varying(100) NOT NULL,
    res_id bigint NOT NULL,
    res_type character varying(100) NOT NULL,
    sp_updated timestamp without time zone,
    hash_identity bigint,
    hash_uri bigint,
    sp_uri character varying(254)
);
 !   DROP TABLE public.hfj_spidx_uri;
       public         heap    john    false            ?            1259    16574    hfj_subscription_stats    TABLE     ?   CREATE TABLE public.hfj_subscription_stats (
    pid bigint NOT NULL,
    created_time timestamp without time zone NOT NULL,
    res_id bigint
);
 *   DROP TABLE public.hfj_subscription_stats;
       public         heap    john    false            ?            1259    16579    hfj_tag_def    TABLE     ?   CREATE TABLE public.hfj_tag_def (
    tag_id bigint NOT NULL,
    tag_code character varying(200),
    tag_display character varying(200),
    tag_system character varying(200),
    tag_type integer NOT NULL
);
    DROP TABLE public.hfj_tag_def;
       public         heap    john    false            ?            1259    16586    mpi_link    TABLE     G  CREATE TABLE public.mpi_link (
    pid bigint NOT NULL,
    partition_date date,
    partition_id integer,
    created timestamp without time zone NOT NULL,
    eid_match boolean,
    golden_resource_pid bigint NOT NULL,
    new_person boolean,
    link_source integer NOT NULL,
    match_result integer NOT NULL,
    target_type character varying(40),
    person_pid bigint NOT NULL,
    rule_count bigint,
    score double precision,
    target_pid bigint NOT NULL,
    updated timestamp without time zone NOT NULL,
    vector bigint,
    version character varying(16) NOT NULL
);
    DROP TABLE public.mpi_link;
       public         heap    john    false            ?            1259    16591    npm_package    TABLE     ?   CREATE TABLE public.npm_package (
    pid bigint NOT NULL,
    cur_version_id character varying(200),
    package_desc character varying(200),
    package_id character varying(200) NOT NULL,
    updated_time timestamp without time zone NOT NULL
);
    DROP TABLE public.npm_package;
       public         heap    john    false            ?            1259    16598    npm_package_ver    TABLE     P  CREATE TABLE public.npm_package_ver (
    pid bigint NOT NULL,
    current_version boolean NOT NULL,
    pkg_desc character varying(200),
    desc_upper character varying(200),
    fhir_version character varying(10) NOT NULL,
    fhir_version_id character varying(20) NOT NULL,
    package_id character varying(200) NOT NULL,
    package_size_bytes bigint NOT NULL,
    saved_time timestamp without time zone NOT NULL,
    updated_time timestamp without time zone NOT NULL,
    version_id character varying(200) NOT NULL,
    package_pid bigint NOT NULL,
    binary_res_id bigint NOT NULL
);
 #   DROP TABLE public.npm_package_ver;
       public         heap    john    false            ?            1259    16605    npm_package_ver_res    TABLE       CREATE TABLE public.npm_package_ver_res (
    pid bigint NOT NULL,
    canonical_url character varying(200),
    canonical_version character varying(200),
    file_dir character varying(200),
    fhir_version character varying(10) NOT NULL,
    fhir_version_id character varying(20) NOT NULL,
    file_name character varying(200),
    res_size_bytes bigint NOT NULL,
    res_type character varying(40) NOT NULL,
    updated_time timestamp without time zone NOT NULL,
    packver_pid bigint NOT NULL,
    binary_res_id bigint NOT NULL
);
 '   DROP TABLE public.npm_package_ver_res;
       public         heap    john    false                       1259    16814    seq_blkexcol_pid    SEQUENCE     z   CREATE SEQUENCE public.seq_blkexcol_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seq_blkexcol_pid;
       public          john    false                       1259    16815    seq_blkexcolfile_pid    SEQUENCE     ~   CREATE SEQUENCE public.seq_blkexcolfile_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.seq_blkexcolfile_pid;
       public          john    false                       1259    16816    seq_blkexjob_pid    SEQUENCE     z   CREATE SEQUENCE public.seq_blkexjob_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seq_blkexjob_pid;
       public          john    false                       1259    16817    seq_blkimjob_pid    SEQUENCE     z   CREATE SEQUENCE public.seq_blkimjob_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seq_blkimjob_pid;
       public          john    false                       1259    16818    seq_blkimjobfile_pid    SEQUENCE     ~   CREATE SEQUENCE public.seq_blkimjobfile_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.seq_blkimjobfile_pid;
       public          john    false                       1259    16819    seq_cncpt_map_grp_elm_tgt_pid    SEQUENCE     ?   CREATE SEQUENCE public.seq_cncpt_map_grp_elm_tgt_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.seq_cncpt_map_grp_elm_tgt_pid;
       public          john    false            	           1259    16820    seq_codesystem_pid    SEQUENCE     |   CREATE SEQUENCE public.seq_codesystem_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.seq_codesystem_pid;
       public          john    false            
           1259    16821    seq_codesystemver_pid    SEQUENCE        CREATE SEQUENCE public.seq_codesystemver_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.seq_codesystemver_pid;
       public          john    false                       1259    16822    seq_concept_desig_pid    SEQUENCE        CREATE SEQUENCE public.seq_concept_desig_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.seq_concept_desig_pid;
       public          john    false                       1259    16823    seq_concept_map_group_pid    SEQUENCE     ?   CREATE SEQUENCE public.seq_concept_map_group_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.seq_concept_map_group_pid;
       public          john    false                       1259    16824    seq_concept_map_grp_elm_pid    SEQUENCE     ?   CREATE SEQUENCE public.seq_concept_map_grp_elm_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.seq_concept_map_grp_elm_pid;
       public          john    false                       1259    16825    seq_concept_map_pid    SEQUENCE     }   CREATE SEQUENCE public.seq_concept_map_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.seq_concept_map_pid;
       public          john    false                       1259    16826    seq_concept_pc_pid    SEQUENCE     |   CREATE SEQUENCE public.seq_concept_pc_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.seq_concept_pc_pid;
       public          john    false                       1259    16827    seq_concept_pid    SEQUENCE     y   CREATE SEQUENCE public.seq_concept_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.seq_concept_pid;
       public          john    false                       1259    16828    seq_concept_prop_pid    SEQUENCE     ~   CREATE SEQUENCE public.seq_concept_prop_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.seq_concept_prop_pid;
       public          john    false                       1259    16829    seq_empi_link_id    SEQUENCE     z   CREATE SEQUENCE public.seq_empi_link_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seq_empi_link_id;
       public          john    false                       1259    16830    seq_forcedid_id    SEQUENCE     y   CREATE SEQUENCE public.seq_forcedid_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.seq_forcedid_id;
       public          john    false                       1259    16831    seq_historytag_id    SEQUENCE     {   CREATE SEQUENCE public.seq_historytag_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.seq_historytag_id;
       public          john    false                       1259    16832    seq_idxcmbtoknu_id    SEQUENCE     |   CREATE SEQUENCE public.seq_idxcmbtoknu_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.seq_idxcmbtoknu_id;
       public          john    false                       1259    16833    seq_idxcmpstruniq_id    SEQUENCE     ~   CREATE SEQUENCE public.seq_idxcmpstruniq_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.seq_idxcmpstruniq_id;
       public          john    false                       1259    16834    seq_npm_pack    SEQUENCE     v   CREATE SEQUENCE public.seq_npm_pack
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.seq_npm_pack;
       public          john    false                       1259    16835    seq_npm_packver    SEQUENCE     y   CREATE SEQUENCE public.seq_npm_packver
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.seq_npm_packver;
       public          john    false                       1259    16836    seq_npm_packverres    SEQUENCE     |   CREATE SEQUENCE public.seq_npm_packverres
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.seq_npm_packverres;
       public          john    false                       1259    16837    seq_res_reindex_job    SEQUENCE     }   CREATE SEQUENCE public.seq_res_reindex_job
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.seq_res_reindex_job;
       public          john    false                       1259    16838    seq_reslink_id    SEQUENCE     x   CREATE SEQUENCE public.seq_reslink_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.seq_reslink_id;
       public          john    false                       1259    16839    seq_resource_history_id    SEQUENCE     ?   CREATE SEQUENCE public.seq_resource_history_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.seq_resource_history_id;
       public          john    false                       1259    16840    seq_resource_id    SEQUENCE     y   CREATE SEQUENCE public.seq_resource_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.seq_resource_id;
       public          john    false                       1259    16841    seq_resparmpresent_id    SEQUENCE        CREATE SEQUENCE public.seq_resparmpresent_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.seq_resparmpresent_id;
       public          john    false                       1259    16842    seq_restag_id    SEQUENCE     w   CREATE SEQUENCE public.seq_restag_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.seq_restag_id;
       public          john    false                        1259    16843 
   seq_search    SEQUENCE     t   CREATE SEQUENCE public.seq_search
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.seq_search;
       public          john    false            !           1259    16844    seq_search_inc    SEQUENCE     x   CREATE SEQUENCE public.seq_search_inc
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.seq_search_inc;
       public          john    false            "           1259    16845    seq_search_res    SEQUENCE     x   CREATE SEQUENCE public.seq_search_res
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.seq_search_res;
       public          john    false            #           1259    16846    seq_spidx_coords    SEQUENCE     z   CREATE SEQUENCE public.seq_spidx_coords
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seq_spidx_coords;
       public          john    false            $           1259    16847    seq_spidx_date    SEQUENCE     x   CREATE SEQUENCE public.seq_spidx_date
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.seq_spidx_date;
       public          john    false            %           1259    16848    seq_spidx_number    SEQUENCE     z   CREATE SEQUENCE public.seq_spidx_number
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seq_spidx_number;
       public          john    false            &           1259    16849    seq_spidx_quantity    SEQUENCE     |   CREATE SEQUENCE public.seq_spidx_quantity
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.seq_spidx_quantity;
       public          john    false            '           1259    16850    seq_spidx_quantity_nrml    SEQUENCE     ?   CREATE SEQUENCE public.seq_spidx_quantity_nrml
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.seq_spidx_quantity_nrml;
       public          john    false            (           1259    16851    seq_spidx_string    SEQUENCE     z   CREATE SEQUENCE public.seq_spidx_string
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seq_spidx_string;
       public          john    false            )           1259    16852    seq_spidx_token    SEQUENCE     y   CREATE SEQUENCE public.seq_spidx_token
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.seq_spidx_token;
       public          john    false            *           1259    16853    seq_spidx_uri    SEQUENCE     w   CREATE SEQUENCE public.seq_spidx_uri
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.seq_spidx_uri;
       public          john    false            +           1259    16854    seq_subscription_id    SEQUENCE     }   CREATE SEQUENCE public.seq_subscription_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.seq_subscription_id;
       public          john    false            ,           1259    16855    seq_tagdef_id    SEQUENCE     w   CREATE SEQUENCE public.seq_tagdef_id
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.seq_tagdef_id;
       public          john    false            -           1259    16856    seq_valueset_c_dsgntn_pid    SEQUENCE     ?   CREATE SEQUENCE public.seq_valueset_c_dsgntn_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.seq_valueset_c_dsgntn_pid;
       public          john    false            .           1259    16857    seq_valueset_concept_pid    SEQUENCE     ?   CREATE SEQUENCE public.seq_valueset_concept_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.seq_valueset_concept_pid;
       public          john    false            /           1259    16858    seq_valueset_pid    SEQUENCE     z   CREATE SEQUENCE public.seq_valueset_pid
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seq_valueset_pid;
       public          john    false            ?            1259    16612    trm_codesystem    TABLE     ?   CREATE TABLE public.trm_codesystem (
    pid bigint NOT NULL,
    code_system_uri character varying(200) NOT NULL,
    current_version_pid bigint,
    cs_name character varying(200),
    res_id bigint
);
 "   DROP TABLE public.trm_codesystem;
       public         heap    john    false            ?            1259    16617    trm_codesystem_ver    TABLE     ?   CREATE TABLE public.trm_codesystem_ver (
    pid bigint NOT NULL,
    cs_display character varying(200),
    codesystem_pid bigint,
    cs_version_id character varying(200),
    res_id bigint NOT NULL
);
 &   DROP TABLE public.trm_codesystem_ver;
       public         heap    john    false            ?            1259    16622    trm_concept    TABLE     #  CREATE TABLE public.trm_concept (
    pid bigint NOT NULL,
    codeval character varying(500) NOT NULL,
    codesystem_pid bigint,
    display character varying(400),
    index_status bigint,
    parent_pids oid,
    code_sequence integer,
    concept_updated timestamp without time zone
);
    DROP TABLE public.trm_concept;
       public         heap    john    false            ?            1259    16629    trm_concept_desig    TABLE     1  CREATE TABLE public.trm_concept_desig (
    pid bigint NOT NULL,
    lang character varying(500),
    use_code character varying(500),
    use_display character varying(500),
    use_system character varying(500),
    val character varying(2000) NOT NULL,
    cs_ver_pid bigint,
    concept_pid bigint
);
 %   DROP TABLE public.trm_concept_desig;
       public         heap    john    false            ?            1259    16636    trm_concept_map    TABLE     ?   CREATE TABLE public.trm_concept_map (
    pid bigint NOT NULL,
    res_id bigint,
    source_url character varying(200),
    target_url character varying(200),
    url character varying(200) NOT NULL,
    ver character varying(200)
);
 #   DROP TABLE public.trm_concept_map;
       public         heap    john    false            ?            1259    16643    trm_concept_map_group    TABLE     ?  CREATE TABLE public.trm_concept_map_group (
    pid bigint NOT NULL,
    concept_map_url character varying(200),
    source_url character varying(200) NOT NULL,
    source_vs character varying(200),
    source_version character varying(200),
    target_url character varying(200) NOT NULL,
    target_vs character varying(200),
    target_version character varying(200),
    concept_map_pid bigint NOT NULL
);
 )   DROP TABLE public.trm_concept_map_group;
       public         heap    john    false            ?            1259    16650    trm_concept_map_grp_element    TABLE     {  CREATE TABLE public.trm_concept_map_grp_element (
    pid bigint NOT NULL,
    source_code character varying(500) NOT NULL,
    concept_map_url character varying(200),
    source_display character varying(500),
    system_url character varying(200),
    system_version character varying(200),
    valueset_url character varying(200),
    concept_map_group_pid bigint NOT NULL
);
 /   DROP TABLE public.trm_concept_map_grp_element;
       public         heap    john    false            ?            1259    16657    trm_concept_map_grp_elm_tgt    TABLE     ?  CREATE TABLE public.trm_concept_map_grp_elm_tgt (
    pid bigint NOT NULL,
    target_code character varying(500) NOT NULL,
    concept_map_url character varying(200),
    target_display character varying(500),
    target_equivalence character varying(50),
    system_url character varying(200),
    system_version character varying(200),
    valueset_url character varying(200),
    concept_map_grp_elm_pid bigint NOT NULL
);
 /   DROP TABLE public.trm_concept_map_grp_elm_tgt;
       public         heap    john    false            ?            1259    16664    trm_concept_pc_link    TABLE     ?   CREATE TABLE public.trm_concept_pc_link (
    pid bigint NOT NULL,
    child_pid bigint,
    codesystem_pid bigint NOT NULL,
    parent_pid bigint,
    rel_type integer
);
 '   DROP TABLE public.trm_concept_pc_link;
       public         heap    john    false            ?            1259    16669    trm_concept_property    TABLE     S  CREATE TABLE public.trm_concept_property (
    pid bigint NOT NULL,
    prop_codesystem character varying(500),
    prop_display character varying(500),
    prop_key character varying(500) NOT NULL,
    prop_type integer NOT NULL,
    prop_val character varying(500),
    prop_val_lob oid,
    cs_ver_pid bigint,
    concept_pid bigint
);
 (   DROP TABLE public.trm_concept_property;
       public         heap    john    false                        1259    16676    trm_valueset    TABLE     ?  CREATE TABLE public.trm_valueset (
    pid bigint NOT NULL,
    expansion_status character varying(50) NOT NULL,
    expanded_at timestamp without time zone,
    vsname character varying(200),
    res_id bigint,
    total_concept_designations bigint DEFAULT 0 NOT NULL,
    total_concepts bigint DEFAULT 0 NOT NULL,
    url character varying(200) NOT NULL,
    ver character varying(200)
);
     DROP TABLE public.trm_valueset;
       public         heap    john    false                       1259    16685    trm_valueset_c_designation    TABLE     W  CREATE TABLE public.trm_valueset_c_designation (
    pid bigint NOT NULL,
    valueset_concept_pid bigint NOT NULL,
    lang character varying(500),
    use_code character varying(500),
    use_display character varying(500),
    use_system character varying(500),
    val character varying(2000) NOT NULL,
    valueset_pid bigint NOT NULL
);
 .   DROP TABLE public.trm_valueset_c_designation;
       public         heap    john    false                       1259    16692    trm_valueset_concept    TABLE     ?  CREATE TABLE public.trm_valueset_concept (
    pid bigint NOT NULL,
    codeval character varying(500) NOT NULL,
    display character varying(400),
    index_status bigint,
    valueset_order integer NOT NULL,
    source_direct_parent_pids oid,
    source_pid bigint,
    system_url character varying(200) NOT NULL,
    system_ver character varying(200),
    valueset_pid bigint NOT NULL
);
 (   DROP TABLE public.trm_valueset_concept;
       public         heap    john    false            I           2613    17129    17129    BLOB     &   SELECT pg_catalog.lo_create('17129');
 &   SELECT pg_catalog.lo_unlink('17129');
                john    false            J           2613    17131    17131    BLOB     &   SELECT pg_catalog.lo_create('17131');
 &   SELECT pg_catalog.lo_unlink('17131');
                john    false            K           2613    17132    17132    BLOB     &   SELECT pg_catalog.lo_create('17132');
 &   SELECT pg_catalog.lo_unlink('17132');
                john    false            L           2613    17133    17133    BLOB     &   SELECT pg_catalog.lo_create('17133');
 &   SELECT pg_catalog.lo_unlink('17133');
                john    false            M           2613    17134    17134    BLOB     &   SELECT pg_catalog.lo_create('17134');
 &   SELECT pg_catalog.lo_unlink('17134');
                john    false            N           2613    17135    17135    BLOB     &   SELECT pg_catalog.lo_create('17135');
 &   SELECT pg_catalog.lo_unlink('17135');
                john    false            O           2613    17136    17136    BLOB     &   SELECT pg_catalog.lo_create('17136');
 &   SELECT pg_catalog.lo_unlink('17136');
                john    false            P           2613    17137    17137    BLOB     &   SELECT pg_catalog.lo_create('17137');
 &   SELECT pg_catalog.lo_unlink('17137');
                john    false            Q           2613    17138    17138    BLOB     &   SELECT pg_catalog.lo_create('17138');
 &   SELECT pg_catalog.lo_unlink('17138');
                john    false            R           2613    17139    17139    BLOB     &   SELECT pg_catalog.lo_create('17139');
 &   SELECT pg_catalog.lo_unlink('17139');
                john    false            S           2613    17140    17140    BLOB     &   SELECT pg_catalog.lo_create('17140');
 &   SELECT pg_catalog.lo_unlink('17140');
                john    false            T           2613    17141    17141    BLOB     &   SELECT pg_catalog.lo_create('17141');
 &   SELECT pg_catalog.lo_unlink('17141');
                john    false            U           2613    17142    17142    BLOB     &   SELECT pg_catalog.lo_create('17142');
 &   SELECT pg_catalog.lo_unlink('17142');
                john    false            V           2613    17143    17143    BLOB     &   SELECT pg_catalog.lo_create('17143');
 &   SELECT pg_catalog.lo_unlink('17143');
                john    false            W           2613    17144    17144    BLOB     &   SELECT pg_catalog.lo_create('17144');
 &   SELECT pg_catalog.lo_unlink('17144');
                john    false            X           2613    17145    17145    BLOB     &   SELECT pg_catalog.lo_create('17145');
 &   SELECT pg_catalog.lo_unlink('17145');
                john    false            Y           2613    17146    17146    BLOB     &   SELECT pg_catalog.lo_create('17146');
 &   SELECT pg_catalog.lo_unlink('17146');
                john    false            Z           2613    17147    17147    BLOB     &   SELECT pg_catalog.lo_create('17147');
 &   SELECT pg_catalog.lo_unlink('17147');
                john    false            [           2613    17148    17148    BLOB     &   SELECT pg_catalog.lo_create('17148');
 &   SELECT pg_catalog.lo_unlink('17148');
                john    false            \           2613    24576    24576    BLOB     &   SELECT pg_catalog.lo_create('24576');
 &   SELECT pg_catalog.lo_unlink('24576');
                john    false            ]           2613    24577    24577    BLOB     &   SELECT pg_catalog.lo_create('24577');
 &   SELECT pg_catalog.lo_unlink('24577');
                john    false            ^           2613    24578    24578    BLOB     &   SELECT pg_catalog.lo_create('24578');
 &   SELECT pg_catalog.lo_unlink('24578');
                john    false            _           2613    24579    24579    BLOB     &   SELECT pg_catalog.lo_create('24579');
 &   SELECT pg_catalog.lo_unlink('24579');
                john    false            `           2613    24580    24580    BLOB     &   SELECT pg_catalog.lo_create('24580');
 &   SELECT pg_catalog.lo_unlink('24580');
                john    false            a           2613    24581    24581    BLOB     &   SELECT pg_catalog.lo_create('24581');
 &   SELECT pg_catalog.lo_unlink('24581');
                john    false            b           2613    24582    24582    BLOB     &   SELECT pg_catalog.lo_create('24582');
 &   SELECT pg_catalog.lo_unlink('24582');
                john    false            c           2613    24583    24583    BLOB     &   SELECT pg_catalog.lo_create('24583');
 &   SELECT pg_catalog.lo_unlink('24583');
                john    false            d           2613    24584    24584    BLOB     &   SELECT pg_catalog.lo_create('24584');
 &   SELECT pg_catalog.lo_unlink('24584');
                john    false            e           2613    24585    24585    BLOB     &   SELECT pg_catalog.lo_create('24585');
 &   SELECT pg_catalog.lo_unlink('24585');
                john    false            f           2613    24586    24586    BLOB     &   SELECT pg_catalog.lo_create('24586');
 &   SELECT pg_catalog.lo_unlink('24586');
                john    false            g           2613    24587    24587    BLOB     &   SELECT pg_catalog.lo_create('24587');
 &   SELECT pg_catalog.lo_unlink('24587');
                john    false            h           2613    24588    24588    BLOB     &   SELECT pg_catalog.lo_create('24588');
 &   SELECT pg_catalog.lo_unlink('24588');
                john    false            i           2613    24589    24589    BLOB     &   SELECT pg_catalog.lo_create('24589');
 &   SELECT pg_catalog.lo_unlink('24589');
                john    false            j           2613    32768    32768    BLOB     &   SELECT pg_catalog.lo_create('32768');
 &   SELECT pg_catalog.lo_unlink('32768');
                john    false            k           2613    32769    32769    BLOB     &   SELECT pg_catalog.lo_create('32769');
 &   SELECT pg_catalog.lo_unlink('32769');
                john    false            l           2613    32770    32770    BLOB     &   SELECT pg_catalog.lo_create('32770');
 &   SELECT pg_catalog.lo_unlink('32770');
                john    false            ?          0    16386    bt2_job_instance 
   TABLE DATA           9  COPY public.bt2_job_instance (id, job_cancelled, cmb_recs_processed, cmb_recs_per_sec, create_time, cur_gated_step_id, definition_id, definition_ver, end_time, error_count, error_msg, est_remaining, params_json, params_json_lob, progress_pct, start_time, stat, tot_elapsed_millis, work_chunks_purged) FROM stdin;
    public          john    false    209   ?.      ?          0    16393    bt2_work_chunk 
   TABLE DATA           ?   COPY public.bt2_work_chunk (id, create_time, end_time, error_count, error_msg, instance_id, definition_id, definition_ver, records_processed, seq, chunk_data, start_time, stat, tgt_step_id) FROM stdin;
    public          john    false    210   ?.      ?          0    16400    hfj_binary_storage_blob 
   TABLE DATA           ?   COPY public.hfj_binary_storage_blob (blob_id, blob_data, content_type, blob_hash, published_date, resource_id, blob_size) FROM stdin;
    public          john    false    211   ?.      ?          0    16407    hfj_blk_export_colfile 
   TABLE DATA           M   COPY public.hfj_blk_export_colfile (pid, res_id, collection_pid) FROM stdin;
    public          john    false    212   ?.      ?          0    16412    hfj_blk_export_collection 
   TABLE DATA           a   COPY public.hfj_blk_export_collection (pid, type_filter, res_type, optlock, job_pid) FROM stdin;
    public          john    false    213   /      ?          0    16419    hfj_blk_export_job 
   TABLE DATA           ?   COPY public.hfj_blk_export_job (pid, created_time, exp_time, job_id, request, exp_since, job_status, status_message, status_time, optlock) FROM stdin;
    public          john    false    214   1/      ?          0    16426    hfj_blk_import_job 
   TABLE DATA           ?   COPY public.hfj_blk_import_job (pid, batch_size, file_count, job_desc, job_id, row_processing_mode, job_status, status_message, status_time, optlock) FROM stdin;
    public          john    false    215   N/      ?          0    16433    hfj_blk_import_jobfile 
   TABLE DATA           u   COPY public.hfj_blk_import_jobfile (pid, job_contents, file_description, file_seq, tenant_name, job_pid) FROM stdin;
    public          john    false    216   k/      ?          0    16440    hfj_forced_id 
   TABLE DATA           r   COPY public.hfj_forced_id (pid, partition_date, partition_id, forced_id, resource_pid, resource_type) FROM stdin;
    public          john    false    217   ?/      ?          0    16446    hfj_history_tag 
   TABLE DATA           s   COPY public.hfj_history_tag (pid, partition_date, partition_id, tag_id, res_ver_pid, res_id, res_type) FROM stdin;
    public          john    false    218   ?/      ?          0    16451    hfj_idx_cmb_tok_nu 
   TABLE DATA           r   COPY public.hfj_idx_cmb_tok_nu (pid, partition_date, partition_id, hash_complete, idx_string, res_id) FROM stdin;
    public          john    false    219   ?/      ?          0    16458    hfj_idx_cmp_string_uniq 
   TABLE DATA           h   COPY public.hfj_idx_cmp_string_uniq (pid, partition_date, partition_id, idx_string, res_id) FROM stdin;
    public          john    false    220   ?/      ?          0    16465    hfj_partition 
   TABLE DATA           F   COPY public.hfj_partition (part_id, part_desc, part_name) FROM stdin;
    public          john    false    221   0      ?          0    16470    hfj_res_link 
   TABLE DATA           ?   COPY public.hfj_res_link (pid, partition_date, partition_id, src_path, src_resource_id, source_resource_type, target_resource_id, target_resource_type, target_resource_url, target_resource_version, sp_updated) FROM stdin;
    public          john    false    222   70      ?          0    16477    hfj_res_param_present 
   TABLE DATA           u   COPY public.hfj_res_param_present (pid, partition_date, partition_id, hash_presence, sp_present, res_id) FROM stdin;
    public          john    false    223   52      ?          0    16482    hfj_res_reindex_job 
   TABLE DATA           ?   COPY public.hfj_res_reindex_job (pid, job_deleted, reindex_count, res_type, suspended_until, update_threshold_high, update_threshold_low) FROM stdin;
    public          john    false    224   R2      ?          0    16487    hfj_res_tag 
   TABLE DATA           b   COPY public.hfj_res_tag (pid, partition_date, partition_id, tag_id, res_id, res_type) FROM stdin;
    public          john    false    225   o2      ?          0    16492    hfj_res_ver 
   TABLE DATA           ?   COPY public.hfj_res_ver (pid, partition_date, partition_id, res_deleted_at, res_version, has_tags, res_published, res_updated, res_encoding, res_text, res_id, res_text_vc, res_type, res_ver) FROM stdin;
    public          john    false    226   ?2      ?          0    16499    hfj_res_ver_prov 
   TABLE DATA           v   COPY public.hfj_res_ver_prov (res_ver_pid, partition_date, partition_id, request_id, source_uri, res_pid) FROM stdin;
    public          john    false    227   ?4      ?          0    16504    hfj_resource 
   TABLE DATA           ?  COPY public.hfj_resource (res_id, partition_date, partition_id, res_deleted_at, res_version, has_tags, res_published, res_updated, sp_has_links, hash_sha256, sp_index_status, res_language, sp_cmpstr_uniq_present, sp_cmptoks_present, sp_coords_present, sp_date_present, sp_number_present, sp_quantity_nrml_present, sp_quantity_present, sp_string_present, sp_token_present, sp_uri_present, res_type, res_ver) FROM stdin;
    public          john    false    228   T6      ?          0    16509 
   hfj_search 
   TABLE DATA           g  COPY public.hfj_search (pid, created, search_deleted, expiry_or_null, failure_code, failure_message, last_updated_high, last_updated_low, num_blocked, num_found, preferred_page_size, resource_id, resource_type, search_param_map, search_query_string, search_query_string_hash, search_type, search_status, total_count, search_uuid, optlock_version) FROM stdin;
    public          john    false    229   ?:      ?          0    16516    hfj_search_include 
   TABLE DATA           f   COPY public.hfj_search_include (pid, search_include, inc_recurse, revinclude, search_pid) FROM stdin;
    public          john    false    230   ?:                 0    16521    hfj_search_result 
   TABLE DATA           X   COPY public.hfj_search_result (pid, search_order, resource_pid, search_pid) FROM stdin;
    public          john    false    231    ;                0    16526    hfj_spidx_coords 
   TABLE DATA           ?   COPY public.hfj_spidx_coords (sp_id, partition_date, partition_id, sp_missing, sp_name, res_id, res_type, sp_updated, hash_identity, sp_latitude, sp_longitude) FROM stdin;
    public          john    false    232   ;                0    16531    hfj_spidx_date 
   TABLE DATA           ?   COPY public.hfj_spidx_date (sp_id, partition_date, partition_id, sp_missing, sp_name, res_id, res_type, sp_updated, hash_identity, sp_value_high, sp_value_high_date_ordinal, sp_value_low, sp_value_low_date_ordinal) FROM stdin;
    public          john    false    233   :;                0    16536    hfj_spidx_number 
   TABLE DATA           ?   COPY public.hfj_spidx_number (sp_id, partition_date, partition_id, sp_missing, sp_name, res_id, res_type, sp_updated, hash_identity, sp_value) FROM stdin;
    public          john    false    234   ?<                0    16541    hfj_spidx_quantity 
   TABLE DATA           ?   COPY public.hfj_spidx_quantity (sp_id, partition_date, partition_id, sp_missing, sp_name, res_id, res_type, sp_updated, hash_identity, hash_identity_and_units, hash_identity_sys_units, sp_system, sp_units, sp_value) FROM stdin;
    public          john    false    235   ?<                0    16548    hfj_spidx_quantity_nrml 
   TABLE DATA           ?   COPY public.hfj_spidx_quantity_nrml (sp_id, partition_date, partition_id, sp_missing, sp_name, res_id, res_type, sp_updated, hash_identity, hash_identity_and_units, hash_identity_sys_units, sp_system, sp_units, sp_value) FROM stdin;
    public          john    false    236   )>                0    16555    hfj_spidx_string 
   TABLE DATA           ?   COPY public.hfj_spidx_string (sp_id, partition_date, partition_id, sp_missing, sp_name, res_id, res_type, sp_updated, hash_exact, hash_identity, hash_norm_prefix, sp_value_exact, sp_value_normalized) FROM stdin;
    public          john    false    237   F>                0    16562    hfj_spidx_token 
   TABLE DATA           ?   COPY public.hfj_spidx_token (sp_id, partition_date, partition_id, sp_missing, sp_name, res_id, res_type, sp_updated, hash_identity, hash_sys, hash_sys_and_value, hash_value, sp_system, sp_value) FROM stdin;
    public          john    false    238   ?M                0    16569    hfj_spidx_uri 
   TABLE DATA           ?   COPY public.hfj_spidx_uri (sp_id, partition_date, partition_id, sp_missing, sp_name, res_id, res_type, sp_updated, hash_identity, hash_uri, sp_uri) FROM stdin;
    public          john    false    239   e`      	          0    16574    hfj_subscription_stats 
   TABLE DATA           K   COPY public.hfj_subscription_stats (pid, created_time, res_id) FROM stdin;
    public          john    false    240   c      
          0    16579    hfj_tag_def 
   TABLE DATA           Z   COPY public.hfj_tag_def (tag_id, tag_code, tag_display, tag_system, tag_type) FROM stdin;
    public          john    false    241   8c                0    16586    mpi_link 
   TABLE DATA           ?   COPY public.mpi_link (pid, partition_date, partition_id, created, eid_match, golden_resource_pid, new_person, link_source, match_result, target_type, person_pid, rule_count, score, target_pid, updated, vector, version) FROM stdin;
    public          john    false    242   ?c                0    16591    npm_package 
   TABLE DATA           b   COPY public.npm_package (pid, cur_version_id, package_desc, package_id, updated_time) FROM stdin;
    public          john    false    243   ?c                0    16598    npm_package_ver 
   TABLE DATA           ?   COPY public.npm_package_ver (pid, current_version, pkg_desc, desc_upper, fhir_version, fhir_version_id, package_id, package_size_bytes, saved_time, updated_time, version_id, package_pid, binary_res_id) FROM stdin;
    public          john    false    244   ?c                0    16605    npm_package_ver_res 
   TABLE DATA           ?   COPY public.npm_package_ver_res (pid, canonical_url, canonical_version, file_dir, fhir_version, fhir_version_id, file_name, res_size_bytes, res_type, updated_time, packver_pid, binary_res_id) FROM stdin;
    public          john    false    245   
d                0    16612    trm_codesystem 
   TABLE DATA           d   COPY public.trm_codesystem (pid, code_system_uri, current_version_pid, cs_name, res_id) FROM stdin;
    public          john    false    246   'd                0    16617    trm_codesystem_ver 
   TABLE DATA           d   COPY public.trm_codesystem_ver (pid, cs_display, codesystem_pid, cs_version_id, res_id) FROM stdin;
    public          john    false    247   pd                0    16622    trm_concept 
   TABLE DATA           ?   COPY public.trm_concept (pid, codeval, codesystem_pid, display, index_status, parent_pids, code_sequence, concept_updated) FROM stdin;
    public          john    false    248   ?d                0    16629    trm_concept_desig 
   TABLE DATA           w   COPY public.trm_concept_desig (pid, lang, use_code, use_display, use_system, val, cs_ver_pid, concept_pid) FROM stdin;
    public          john    false    249   de                0    16636    trm_concept_map 
   TABLE DATA           X   COPY public.trm_concept_map (pid, res_id, source_url, target_url, url, ver) FROM stdin;
    public          john    false    250   ?e                0    16643    trm_concept_map_group 
   TABLE DATA           ?   COPY public.trm_concept_map_group (pid, concept_map_url, source_url, source_vs, source_version, target_url, target_vs, target_version, concept_map_pid) FROM stdin;
    public          john    false    251   ?e                0    16650    trm_concept_map_grp_element 
   TABLE DATA           ?   COPY public.trm_concept_map_grp_element (pid, source_code, concept_map_url, source_display, system_url, system_version, valueset_url, concept_map_group_pid) FROM stdin;
    public          john    false    252   .f                0    16657    trm_concept_map_grp_elm_tgt 
   TABLE DATA           ?   COPY public.trm_concept_map_grp_elm_tgt (pid, target_code, concept_map_url, target_display, target_equivalence, system_url, system_version, valueset_url, concept_map_grp_elm_pid) FROM stdin;
    public          john    false    253   ?f                0    16664    trm_concept_pc_link 
   TABLE DATA           c   COPY public.trm_concept_pc_link (pid, child_pid, codesystem_pid, parent_pid, rel_type) FROM stdin;
    public          john    false    254   |g                0    16669    trm_concept_property 
   TABLE DATA           ?   COPY public.trm_concept_property (pid, prop_codesystem, prop_display, prop_key, prop_type, prop_val, prop_val_lob, cs_ver_pid, concept_pid) FROM stdin;
    public          john    false    255   ?g                0    16676    trm_valueset 
   TABLE DATA           ?   COPY public.trm_valueset (pid, expansion_status, expanded_at, vsname, res_id, total_concept_designations, total_concepts, url, ver) FROM stdin;
    public          john    false    256   ?g                0    16685    trm_valueset_c_designation 
   TABLE DATA           ?   COPY public.trm_valueset_c_designation (pid, valueset_concept_pid, lang, use_code, use_display, use_system, val, valueset_pid) FROM stdin;
    public          john    false    257   Jh                0    16692    trm_valueset_concept 
   TABLE DATA           ?   COPY public.trm_valueset_concept (pid, codeval, display, index_status, valueset_order, source_direct_parent_pids, source_pid, system_url, system_ver, valueset_pid) FROM stdin;
    public          john    false    258   gh      t           0    0    seq_blkexcol_pid    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.seq_blkexcol_pid', 1, false);
          public          john    false    259            u           0    0    seq_blkexcolfile_pid    SEQUENCE SET     C   SELECT pg_catalog.setval('public.seq_blkexcolfile_pid', 1, false);
          public          john    false    260            v           0    0    seq_blkexjob_pid    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.seq_blkexjob_pid', 1, false);
          public          john    false    261            w           0    0    seq_blkimjob_pid    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.seq_blkimjob_pid', 1, false);
          public          john    false    262            x           0    0    seq_blkimjobfile_pid    SEQUENCE SET     C   SELECT pg_catalog.setval('public.seq_blkimjobfile_pid', 1, false);
          public          john    false    263            y           0    0    seq_cncpt_map_grp_elm_tgt_pid    SEQUENCE SET     L   SELECT pg_catalog.setval('public.seq_cncpt_map_grp_elm_tgt_pid', 51, true);
          public          john    false    264            z           0    0    seq_codesystem_pid    SEQUENCE SET     A   SELECT pg_catalog.setval('public.seq_codesystem_pid', 51, true);
          public          john    false    265            {           0    0    seq_codesystemver_pid    SEQUENCE SET     D   SELECT pg_catalog.setval('public.seq_codesystemver_pid', 51, true);
          public          john    false    266            |           0    0    seq_concept_desig_pid    SEQUENCE SET     D   SELECT pg_catalog.setval('public.seq_concept_desig_pid', 1, false);
          public          john    false    267            }           0    0    seq_concept_map_group_pid    SEQUENCE SET     H   SELECT pg_catalog.setval('public.seq_concept_map_group_pid', 51, true);
          public          john    false    268            ~           0    0    seq_concept_map_grp_elm_pid    SEQUENCE SET     J   SELECT pg_catalog.setval('public.seq_concept_map_grp_elm_pid', 51, true);
          public          john    false    269                       0    0    seq_concept_map_pid    SEQUENCE SET     B   SELECT pg_catalog.setval('public.seq_concept_map_pid', 51, true);
          public          john    false    270            ?           0    0    seq_concept_pc_pid    SEQUENCE SET     A   SELECT pg_catalog.setval('public.seq_concept_pc_pid', 1, false);
          public          john    false    271            ?           0    0    seq_concept_pid    SEQUENCE SET     >   SELECT pg_catalog.setval('public.seq_concept_pid', 51, true);
          public          john    false    272            ?           0    0    seq_concept_prop_pid    SEQUENCE SET     C   SELECT pg_catalog.setval('public.seq_concept_prop_pid', 1, false);
          public          john    false    273            ?           0    0    seq_empi_link_id    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.seq_empi_link_id', 1, false);
          public          john    false    274            ?           0    0    seq_forcedid_id    SEQUENCE SET     >   SELECT pg_catalog.setval('public.seq_forcedid_id', 1, false);
          public          john    false    275            ?           0    0    seq_historytag_id    SEQUENCE SET     A   SELECT pg_catalog.setval('public.seq_historytag_id', 101, true);
          public          john    false    276            ?           0    0    seq_idxcmbtoknu_id    SEQUENCE SET     A   SELECT pg_catalog.setval('public.seq_idxcmbtoknu_id', 1, false);
          public          john    false    277            ?           0    0    seq_idxcmpstruniq_id    SEQUENCE SET     C   SELECT pg_catalog.setval('public.seq_idxcmpstruniq_id', 1, false);
          public          john    false    278            ?           0    0    seq_npm_pack    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.seq_npm_pack', 1, false);
          public          john    false    279            ?           0    0    seq_npm_packver    SEQUENCE SET     >   SELECT pg_catalog.setval('public.seq_npm_packver', 1, false);
          public          john    false    280            ?           0    0    seq_npm_packverres    SEQUENCE SET     A   SELECT pg_catalog.setval('public.seq_npm_packverres', 1, false);
          public          john    false    281            ?           0    0    seq_res_reindex_job    SEQUENCE SET     B   SELECT pg_catalog.setval('public.seq_res_reindex_job', 1, false);
          public          john    false    282            ?           0    0    seq_reslink_id    SEQUENCE SET     >   SELECT pg_catalog.setval('public.seq_reslink_id', 151, true);
          public          john    false    283            ?           0    0    seq_resource_history_id    SEQUENCE SET     G   SELECT pg_catalog.setval('public.seq_resource_history_id', 151, true);
          public          john    false    284            ?           0    0    seq_resource_id    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.seq_resource_id', 151, true);
          public          john    false    285            ?           0    0    seq_resparmpresent_id    SEQUENCE SET     D   SELECT pg_catalog.setval('public.seq_resparmpresent_id', 1, false);
          public          john    false    286            ?           0    0    seq_restag_id    SEQUENCE SET     <   SELECT pg_catalog.setval('public.seq_restag_id', 51, true);
          public          john    false    287            ?           0    0 
   seq_search    SEQUENCE SET     9   SELECT pg_catalog.setval('public.seq_search', 51, true);
          public          john    false    288            ?           0    0    seq_search_inc    SEQUENCE SET     =   SELECT pg_catalog.setval('public.seq_search_inc', 1, false);
          public          john    false    289            ?           0    0    seq_search_res    SEQUENCE SET     =   SELECT pg_catalog.setval('public.seq_search_res', 51, true);
          public          john    false    290            ?           0    0    seq_spidx_coords    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.seq_spidx_coords', 1, false);
          public          john    false    291            ?           0    0    seq_spidx_date    SEQUENCE SET     >   SELECT pg_catalog.setval('public.seq_spidx_date', 101, true);
          public          john    false    292            ?           0    0    seq_spidx_number    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.seq_spidx_number', 1, false);
          public          john    false    293            ?           0    0    seq_spidx_quantity    SEQUENCE SET     A   SELECT pg_catalog.setval('public.seq_spidx_quantity', 51, true);
          public          john    false    294            ?           0    0    seq_spidx_quantity_nrml    SEQUENCE SET     F   SELECT pg_catalog.setval('public.seq_spidx_quantity_nrml', 1, false);
          public          john    false    295            ?           0    0    seq_spidx_string    SEQUENCE SET     @   SELECT pg_catalog.setval('public.seq_spidx_string', 201, true);
          public          john    false    296            ?           0    0    seq_spidx_token    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.seq_spidx_token', 201, true);
          public          john    false    297            ?           0    0    seq_spidx_uri    SEQUENCE SET     =   SELECT pg_catalog.setval('public.seq_spidx_uri', 101, true);
          public          john    false    298            ?           0    0    seq_subscription_id    SEQUENCE SET     B   SELECT pg_catalog.setval('public.seq_subscription_id', 1, false);
          public          john    false    299            ?           0    0    seq_tagdef_id    SEQUENCE SET     <   SELECT pg_catalog.setval('public.seq_tagdef_id', 51, true);
          public          john    false    300            ?           0    0    seq_valueset_c_dsgntn_pid    SEQUENCE SET     H   SELECT pg_catalog.setval('public.seq_valueset_c_dsgntn_pid', 1, false);
          public          john    false    301            ?           0    0    seq_valueset_concept_pid    SEQUENCE SET     G   SELECT pg_catalog.setval('public.seq_valueset_concept_pid', 1, false);
          public          john    false    302            ?           0    0    seq_valueset_pid    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.seq_valueset_pid', 51, true);
          public          john    false    303            m          0    0    BLOBS    BLOBS                             false   ?h      S           2606    16392 &   bt2_job_instance bt2_job_instance_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.bt2_job_instance
    ADD CONSTRAINT bt2_job_instance_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.bt2_job_instance DROP CONSTRAINT bt2_job_instance_pkey;
       public            john    false    209            V           2606    16399 "   bt2_work_chunk bt2_work_chunk_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.bt2_work_chunk
    ADD CONSTRAINT bt2_work_chunk_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.bt2_work_chunk DROP CONSTRAINT bt2_work_chunk_pkey;
       public            john    false    210            Y           2606    16406 4   hfj_binary_storage_blob hfj_binary_storage_blob_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.hfj_binary_storage_blob
    ADD CONSTRAINT hfj_binary_storage_blob_pkey PRIMARY KEY (blob_id);
 ^   ALTER TABLE ONLY public.hfj_binary_storage_blob DROP CONSTRAINT hfj_binary_storage_blob_pkey;
       public            john    false    211            [           2606    16411 2   hfj_blk_export_colfile hfj_blk_export_colfile_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.hfj_blk_export_colfile
    ADD CONSTRAINT hfj_blk_export_colfile_pkey PRIMARY KEY (pid);
 \   ALTER TABLE ONLY public.hfj_blk_export_colfile DROP CONSTRAINT hfj_blk_export_colfile_pkey;
       public            john    false    212            ]           2606    16418 8   hfj_blk_export_collection hfj_blk_export_collection_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.hfj_blk_export_collection
    ADD CONSTRAINT hfj_blk_export_collection_pkey PRIMARY KEY (pid);
 b   ALTER TABLE ONLY public.hfj_blk_export_collection DROP CONSTRAINT hfj_blk_export_collection_pkey;
       public            john    false    213            _           2606    16425 *   hfj_blk_export_job hfj_blk_export_job_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.hfj_blk_export_job
    ADD CONSTRAINT hfj_blk_export_job_pkey PRIMARY KEY (pid);
 T   ALTER TABLE ONLY public.hfj_blk_export_job DROP CONSTRAINT hfj_blk_export_job_pkey;
       public            john    false    214            d           2606    16432 *   hfj_blk_import_job hfj_blk_import_job_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.hfj_blk_import_job
    ADD CONSTRAINT hfj_blk_import_job_pkey PRIMARY KEY (pid);
 T   ALTER TABLE ONLY public.hfj_blk_import_job DROP CONSTRAINT hfj_blk_import_job_pkey;
       public            john    false    215            h           2606    16439 2   hfj_blk_import_jobfile hfj_blk_import_jobfile_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.hfj_blk_import_jobfile
    ADD CONSTRAINT hfj_blk_import_jobfile_pkey PRIMARY KEY (pid);
 \   ALTER TABLE ONLY public.hfj_blk_import_jobfile DROP CONSTRAINT hfj_blk_import_jobfile_pkey;
       public            john    false    216            k           2606    16445     hfj_forced_id hfj_forced_id_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.hfj_forced_id
    ADD CONSTRAINT hfj_forced_id_pkey PRIMARY KEY (pid);
 J   ALTER TABLE ONLY public.hfj_forced_id DROP CONSTRAINT hfj_forced_id_pkey;
       public            john    false    217            r           2606    16450 $   hfj_history_tag hfj_history_tag_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.hfj_history_tag
    ADD CONSTRAINT hfj_history_tag_pkey PRIMARY KEY (pid);
 N   ALTER TABLE ONLY public.hfj_history_tag DROP CONSTRAINT hfj_history_tag_pkey;
       public            john    false    218            w           2606    16457 *   hfj_idx_cmb_tok_nu hfj_idx_cmb_tok_nu_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.hfj_idx_cmb_tok_nu
    ADD CONSTRAINT hfj_idx_cmb_tok_nu_pkey PRIMARY KEY (pid);
 T   ALTER TABLE ONLY public.hfj_idx_cmb_tok_nu DROP CONSTRAINT hfj_idx_cmb_tok_nu_pkey;
       public            john    false    219            {           2606    16464 4   hfj_idx_cmp_string_uniq hfj_idx_cmp_string_uniq_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.hfj_idx_cmp_string_uniq
    ADD CONSTRAINT hfj_idx_cmp_string_uniq_pkey PRIMARY KEY (pid);
 ^   ALTER TABLE ONLY public.hfj_idx_cmp_string_uniq DROP CONSTRAINT hfj_idx_cmp_string_uniq_pkey;
       public            john    false    220            ?           2606    16469     hfj_partition hfj_partition_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.hfj_partition
    ADD CONSTRAINT hfj_partition_pkey PRIMARY KEY (part_id);
 J   ALTER TABLE ONLY public.hfj_partition DROP CONSTRAINT hfj_partition_pkey;
       public            john    false    221            ?           2606    16476    hfj_res_link hfj_res_link_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.hfj_res_link
    ADD CONSTRAINT hfj_res_link_pkey PRIMARY KEY (pid);
 H   ALTER TABLE ONLY public.hfj_res_link DROP CONSTRAINT hfj_res_link_pkey;
       public            john    false    222            ?           2606    16481 0   hfj_res_param_present hfj_res_param_present_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.hfj_res_param_present
    ADD CONSTRAINT hfj_res_param_present_pkey PRIMARY KEY (pid);
 Z   ALTER TABLE ONLY public.hfj_res_param_present DROP CONSTRAINT hfj_res_param_present_pkey;
       public            john    false    223            ?           2606    16486 ,   hfj_res_reindex_job hfj_res_reindex_job_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.hfj_res_reindex_job
    ADD CONSTRAINT hfj_res_reindex_job_pkey PRIMARY KEY (pid);
 V   ALTER TABLE ONLY public.hfj_res_reindex_job DROP CONSTRAINT hfj_res_reindex_job_pkey;
       public            john    false    224            ?           2606    16491    hfj_res_tag hfj_res_tag_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.hfj_res_tag
    ADD CONSTRAINT hfj_res_tag_pkey PRIMARY KEY (pid);
 F   ALTER TABLE ONLY public.hfj_res_tag DROP CONSTRAINT hfj_res_tag_pkey;
       public            john    false    225            ?           2606    16498    hfj_res_ver hfj_res_ver_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.hfj_res_ver
    ADD CONSTRAINT hfj_res_ver_pkey PRIMARY KEY (pid);
 F   ALTER TABLE ONLY public.hfj_res_ver DROP CONSTRAINT hfj_res_ver_pkey;
       public            john    false    226            ?           2606    16503 &   hfj_res_ver_prov hfj_res_ver_prov_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.hfj_res_ver_prov
    ADD CONSTRAINT hfj_res_ver_prov_pkey PRIMARY KEY (res_ver_pid);
 P   ALTER TABLE ONLY public.hfj_res_ver_prov DROP CONSTRAINT hfj_res_ver_prov_pkey;
       public            john    false    227            ?           2606    16508    hfj_resource hfj_resource_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.hfj_resource
    ADD CONSTRAINT hfj_resource_pkey PRIMARY KEY (res_id);
 H   ALTER TABLE ONLY public.hfj_resource DROP CONSTRAINT hfj_resource_pkey;
       public            john    false    228            ?           2606    16520 *   hfj_search_include hfj_search_include_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.hfj_search_include
    ADD CONSTRAINT hfj_search_include_pkey PRIMARY KEY (pid);
 T   ALTER TABLE ONLY public.hfj_search_include DROP CONSTRAINT hfj_search_include_pkey;
       public            john    false    230            ?           2606    16515    hfj_search hfj_search_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.hfj_search
    ADD CONSTRAINT hfj_search_pkey PRIMARY KEY (pid);
 D   ALTER TABLE ONLY public.hfj_search DROP CONSTRAINT hfj_search_pkey;
       public            john    false    229            ?           2606    16525 (   hfj_search_result hfj_search_result_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.hfj_search_result
    ADD CONSTRAINT hfj_search_result_pkey PRIMARY KEY (pid);
 R   ALTER TABLE ONLY public.hfj_search_result DROP CONSTRAINT hfj_search_result_pkey;
       public            john    false    231            ?           2606    16530 &   hfj_spidx_coords hfj_spidx_coords_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.hfj_spidx_coords
    ADD CONSTRAINT hfj_spidx_coords_pkey PRIMARY KEY (sp_id);
 P   ALTER TABLE ONLY public.hfj_spidx_coords DROP CONSTRAINT hfj_spidx_coords_pkey;
       public            john    false    232            ?           2606    16535 "   hfj_spidx_date hfj_spidx_date_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.hfj_spidx_date
    ADD CONSTRAINT hfj_spidx_date_pkey PRIMARY KEY (sp_id);
 L   ALTER TABLE ONLY public.hfj_spidx_date DROP CONSTRAINT hfj_spidx_date_pkey;
       public            john    false    233            ?           2606    16540 &   hfj_spidx_number hfj_spidx_number_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.hfj_spidx_number
    ADD CONSTRAINT hfj_spidx_number_pkey PRIMARY KEY (sp_id);
 P   ALTER TABLE ONLY public.hfj_spidx_number DROP CONSTRAINT hfj_spidx_number_pkey;
       public            john    false    234            ?           2606    16554 4   hfj_spidx_quantity_nrml hfj_spidx_quantity_nrml_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.hfj_spidx_quantity_nrml
    ADD CONSTRAINT hfj_spidx_quantity_nrml_pkey PRIMARY KEY (sp_id);
 ^   ALTER TABLE ONLY public.hfj_spidx_quantity_nrml DROP CONSTRAINT hfj_spidx_quantity_nrml_pkey;
       public            john    false    236            ?           2606    16547 *   hfj_spidx_quantity hfj_spidx_quantity_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.hfj_spidx_quantity
    ADD CONSTRAINT hfj_spidx_quantity_pkey PRIMARY KEY (sp_id);
 T   ALTER TABLE ONLY public.hfj_spidx_quantity DROP CONSTRAINT hfj_spidx_quantity_pkey;
       public            john    false    235            ?           2606    16561 &   hfj_spidx_string hfj_spidx_string_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.hfj_spidx_string
    ADD CONSTRAINT hfj_spidx_string_pkey PRIMARY KEY (sp_id);
 P   ALTER TABLE ONLY public.hfj_spidx_string DROP CONSTRAINT hfj_spidx_string_pkey;
       public            john    false    237            ?           2606    16568 $   hfj_spidx_token hfj_spidx_token_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.hfj_spidx_token
    ADD CONSTRAINT hfj_spidx_token_pkey PRIMARY KEY (sp_id);
 N   ALTER TABLE ONLY public.hfj_spidx_token DROP CONSTRAINT hfj_spidx_token_pkey;
       public            john    false    238            ?           2606    16573     hfj_spidx_uri hfj_spidx_uri_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.hfj_spidx_uri
    ADD CONSTRAINT hfj_spidx_uri_pkey PRIMARY KEY (sp_id);
 J   ALTER TABLE ONLY public.hfj_spidx_uri DROP CONSTRAINT hfj_spidx_uri_pkey;
       public            john    false    239            ?           2606    16578 2   hfj_subscription_stats hfj_subscription_stats_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.hfj_subscription_stats
    ADD CONSTRAINT hfj_subscription_stats_pkey PRIMARY KEY (pid);
 \   ALTER TABLE ONLY public.hfj_subscription_stats DROP CONSTRAINT hfj_subscription_stats_pkey;
       public            john    false    240            ?           2606    16585    hfj_tag_def hfj_tag_def_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.hfj_tag_def
    ADD CONSTRAINT hfj_tag_def_pkey PRIMARY KEY (tag_id);
 F   ALTER TABLE ONLY public.hfj_tag_def DROP CONSTRAINT hfj_tag_def_pkey;
       public            john    false    241            b           2606    16703 #   hfj_blk_export_job idx_blkex_job_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.hfj_blk_export_job
    ADD CONSTRAINT idx_blkex_job_id UNIQUE (job_id);
 M   ALTER TABLE ONLY public.hfj_blk_export_job DROP CONSTRAINT idx_blkex_job_id;
       public            john    false    214            f           2606    16705 #   hfj_blk_import_job idx_blkim_job_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.hfj_blk_import_job
    ADD CONSTRAINT idx_blkim_job_id UNIQUE (job_id);
 M   ALTER TABLE ONLY public.hfj_blk_import_job DROP CONSTRAINT idx_blkim_job_id;
       public            john    false    215            ?           2606    16794 )   trm_codesystem_ver idx_codesystem_and_ver 
   CONSTRAINT     }   ALTER TABLE ONLY public.trm_codesystem_ver
    ADD CONSTRAINT idx_codesystem_and_ver UNIQUE (codesystem_pid, cs_version_id);
 S   ALTER TABLE ONLY public.trm_codesystem_ver DROP CONSTRAINT idx_codesystem_and_ver;
       public            john    false    247    247                       2606    16798    trm_concept idx_concept_cs_code 
   CONSTRAINT     m   ALTER TABLE ONLY public.trm_concept
    ADD CONSTRAINT idx_concept_cs_code UNIQUE (codesystem_pid, codeval);
 I   ALTER TABLE ONLY public.trm_concept DROP CONSTRAINT idx_concept_cs_code;
       public            john    false    248    248            
           2606    16801 #   trm_concept_map idx_concept_map_url 
   CONSTRAINT     b   ALTER TABLE ONLY public.trm_concept_map
    ADD CONSTRAINT idx_concept_map_url UNIQUE (url, ver);
 M   ALTER TABLE ONLY public.trm_concept_map DROP CONSTRAINT idx_concept_map_url;
       public            john    false    250    250            ?           2606    16792     trm_codesystem idx_cs_codesystem 
   CONSTRAINT     f   ALTER TABLE ONLY public.trm_codesystem
    ADD CONSTRAINT idx_cs_codesystem UNIQUE (code_system_uri);
 J   ALTER TABLE ONLY public.trm_codesystem DROP CONSTRAINT idx_cs_codesystem;
       public            john    false    246            ?           2606    16785    mpi_link idx_empi_person_tgt 
   CONSTRAINT     i   ALTER TABLE ONLY public.mpi_link
    ADD CONSTRAINT idx_empi_person_tgt UNIQUE (person_pid, target_pid);
 F   ALTER TABLE ONLY public.mpi_link DROP CONSTRAINT idx_empi_person_tgt;
       public            john    false    242    242            m           2606    16709     hfj_forced_id idx_forcedid_resid 
   CONSTRAINT     c   ALTER TABLE ONLY public.hfj_forced_id
    ADD CONSTRAINT idx_forcedid_resid UNIQUE (resource_pid);
 J   ALTER TABLE ONLY public.hfj_forced_id DROP CONSTRAINT idx_forcedid_resid;
       public            john    false    217            o           2606    16711 #   hfj_forced_id idx_forcedid_type_fid 
   CONSTRAINT     r   ALTER TABLE ONLY public.hfj_forced_id
    ADD CONSTRAINT idx_forcedid_type_fid UNIQUE (resource_type, forced_id);
 M   ALTER TABLE ONLY public.hfj_forced_id DROP CONSTRAINT idx_forcedid_type_fid;
       public            john    false    217    217            ~           2606    16719 0   hfj_idx_cmp_string_uniq idx_idxcmpstruniq_string 
   CONSTRAINT     q   ALTER TABLE ONLY public.hfj_idx_cmp_string_uniq
    ADD CONSTRAINT idx_idxcmpstruniq_string UNIQUE (idx_string);
 Z   ALTER TABLE ONLY public.hfj_idx_cmp_string_uniq DROP CONSTRAINT idx_idxcmpstruniq_string;
       public            john    false    220            ?           2606    16787    npm_package idx_pack_id 
   CONSTRAINT     X   ALTER TABLE ONLY public.npm_package
    ADD CONSTRAINT idx_pack_id UNIQUE (package_id);
 A   ALTER TABLE ONLY public.npm_package DROP CONSTRAINT idx_pack_id;
       public            john    false    243            ?           2606    16789    npm_package_ver idx_packver 
   CONSTRAINT     h   ALTER TABLE ONLY public.npm_package_ver
    ADD CONSTRAINT idx_packver UNIQUE (package_id, version_id);
 E   ALTER TABLE ONLY public.npm_package_ver DROP CONSTRAINT idx_packver;
       public            john    false    244    244            ?           2606    16721    hfj_partition idx_part_name 
   CONSTRAINT     [   ALTER TABLE ONLY public.hfj_partition
    ADD CONSTRAINT idx_part_name UNIQUE (part_name);
 E   ALTER TABLE ONLY public.hfj_partition DROP CONSTRAINT idx_part_name;
       public            john    false    221            u           2606    16714 $   hfj_history_tag idx_reshisttag_tagid 
   CONSTRAINT     n   ALTER TABLE ONLY public.hfj_history_tag
    ADD CONSTRAINT idx_reshisttag_tagid UNIQUE (res_ver_pid, tag_id);
 N   ALTER TABLE ONLY public.hfj_history_tag DROP CONSTRAINT idx_reshisttag_tagid;
       public            john    false    218    218            ?           2606    16730    hfj_res_tag idx_restag_tagid 
   CONSTRAINT     a   ALTER TABLE ONLY public.hfj_res_tag
    ADD CONSTRAINT idx_restag_tagid UNIQUE (res_id, tag_id);
 F   ALTER TABLE ONLY public.hfj_res_tag DROP CONSTRAINT idx_restag_tagid;
       public            john    false    225    225            ?           2606    16735    hfj_res_ver idx_resver_id_ver 
   CONSTRAINT     c   ALTER TABLE ONLY public.hfj_res_ver
    ADD CONSTRAINT idx_resver_id_ver UNIQUE (res_id, res_ver);
 G   ALTER TABLE ONLY public.hfj_res_ver DROP CONSTRAINT idx_resver_id_ver;
       public            john    false    226    226            ?           2606    16743    hfj_search idx_search_uuid 
   CONSTRAINT     \   ALTER TABLE ONLY public.hfj_search
    ADD CONSTRAINT idx_search_uuid UNIQUE (search_uuid);
 D   ALTER TABLE ONLY public.hfj_search DROP CONSTRAINT idx_search_uuid;
       public            john    false    229            ?           2606    16745 %   hfj_search_result idx_searchres_order 
   CONSTRAINT     t   ALTER TABLE ONLY public.hfj_search_result
    ADD CONSTRAINT idx_searchres_order UNIQUE (search_pid, search_order);
 O   ALTER TABLE ONLY public.hfj_search_result DROP CONSTRAINT idx_searchres_order;
       public            john    false    231    231            ?           2606    16780 &   hfj_subscription_stats idx_subsc_resid 
   CONSTRAINT     c   ALTER TABLE ONLY public.hfj_subscription_stats
    ADD CONSTRAINT idx_subsc_resid UNIQUE (res_id);
 P   ALTER TABLE ONLY public.hfj_subscription_stats DROP CONSTRAINT idx_subsc_resid;
       public            john    false    240            ?           2606    16783 "   hfj_tag_def idx_tagdef_typesyscode 
   CONSTRAINT     w   ALTER TABLE ONLY public.hfj_tag_def
    ADD CONSTRAINT idx_tagdef_typesyscode UNIQUE (tag_type, tag_system, tag_code);
 L   ALTER TABLE ONLY public.hfj_tag_def DROP CONSTRAINT idx_tagdef_typesyscode;
       public            john    false    241    241    241                       2606    16808    trm_valueset idx_valueset_url 
   CONSTRAINT     \   ALTER TABLE ONLY public.trm_valueset
    ADD CONSTRAINT idx_valueset_url UNIQUE (url, ver);
 G   ALTER TABLE ONLY public.trm_valueset DROP CONSTRAINT idx_valueset_url;
       public            john    false    256    256            $           2606    16811 (   trm_valueset_concept idx_vs_concept_cscd 
   CONSTRAINT     ?   ALTER TABLE ONLY public.trm_valueset_concept
    ADD CONSTRAINT idx_vs_concept_cscd UNIQUE (valueset_pid, system_url, codeval);
 R   ALTER TABLE ONLY public.trm_valueset_concept DROP CONSTRAINT idx_vs_concept_cscd;
       public            john    false    258    258    258            &           2606    16813 )   trm_valueset_concept idx_vs_concept_order 
   CONSTRAINT     |   ALTER TABLE ONLY public.trm_valueset_concept
    ADD CONSTRAINT idx_vs_concept_order UNIQUE (valueset_pid, valueset_order);
 S   ALTER TABLE ONLY public.trm_valueset_concept DROP CONSTRAINT idx_vs_concept_order;
       public            john    false    258    258            ?           2606    16590    mpi_link mpi_link_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.mpi_link
    ADD CONSTRAINT mpi_link_pkey PRIMARY KEY (pid);
 @   ALTER TABLE ONLY public.mpi_link DROP CONSTRAINT mpi_link_pkey;
       public            john    false    242            ?           2606    16597    npm_package npm_package_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.npm_package
    ADD CONSTRAINT npm_package_pkey PRIMARY KEY (pid);
 F   ALTER TABLE ONLY public.npm_package DROP CONSTRAINT npm_package_pkey;
       public            john    false    243            ?           2606    16604 $   npm_package_ver npm_package_ver_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.npm_package_ver
    ADD CONSTRAINT npm_package_ver_pkey PRIMARY KEY (pid);
 N   ALTER TABLE ONLY public.npm_package_ver DROP CONSTRAINT npm_package_ver_pkey;
       public            john    false    244            ?           2606    16611 ,   npm_package_ver_res npm_package_ver_res_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.npm_package_ver_res
    ADD CONSTRAINT npm_package_ver_res_pkey PRIMARY KEY (pid);
 V   ALTER TABLE ONLY public.npm_package_ver_res DROP CONSTRAINT npm_package_ver_res_pkey;
       public            john    false    245            ?           2606    16616 "   trm_codesystem trm_codesystem_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.trm_codesystem
    ADD CONSTRAINT trm_codesystem_pkey PRIMARY KEY (pid);
 L   ALTER TABLE ONLY public.trm_codesystem DROP CONSTRAINT trm_codesystem_pkey;
       public            john    false    246            ?           2606    16621 *   trm_codesystem_ver trm_codesystem_ver_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.trm_codesystem_ver
    ADD CONSTRAINT trm_codesystem_ver_pkey PRIMARY KEY (pid);
 T   ALTER TABLE ONLY public.trm_codesystem_ver DROP CONSTRAINT trm_codesystem_ver_pkey;
       public            john    false    247                       2606    16635 (   trm_concept_desig trm_concept_desig_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.trm_concept_desig
    ADD CONSTRAINT trm_concept_desig_pkey PRIMARY KEY (pid);
 R   ALTER TABLE ONLY public.trm_concept_desig DROP CONSTRAINT trm_concept_desig_pkey;
       public            john    false    249                       2606    16649 0   trm_concept_map_group trm_concept_map_group_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.trm_concept_map_group
    ADD CONSTRAINT trm_concept_map_group_pkey PRIMARY KEY (pid);
 Z   ALTER TABLE ONLY public.trm_concept_map_group DROP CONSTRAINT trm_concept_map_group_pkey;
       public            john    false    251                       2606    16656 <   trm_concept_map_grp_element trm_concept_map_grp_element_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.trm_concept_map_grp_element
    ADD CONSTRAINT trm_concept_map_grp_element_pkey PRIMARY KEY (pid);
 f   ALTER TABLE ONLY public.trm_concept_map_grp_element DROP CONSTRAINT trm_concept_map_grp_element_pkey;
       public            john    false    252                       2606    16663 <   trm_concept_map_grp_elm_tgt trm_concept_map_grp_elm_tgt_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.trm_concept_map_grp_elm_tgt
    ADD CONSTRAINT trm_concept_map_grp_elm_tgt_pkey PRIMARY KEY (pid);
 f   ALTER TABLE ONLY public.trm_concept_map_grp_elm_tgt DROP CONSTRAINT trm_concept_map_grp_elm_tgt_pkey;
       public            john    false    253                       2606    16642 $   trm_concept_map trm_concept_map_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.trm_concept_map
    ADD CONSTRAINT trm_concept_map_pkey PRIMARY KEY (pid);
 N   ALTER TABLE ONLY public.trm_concept_map DROP CONSTRAINT trm_concept_map_pkey;
       public            john    false    250                       2606    16668 ,   trm_concept_pc_link trm_concept_pc_link_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.trm_concept_pc_link
    ADD CONSTRAINT trm_concept_pc_link_pkey PRIMARY KEY (pid);
 V   ALTER TABLE ONLY public.trm_concept_pc_link DROP CONSTRAINT trm_concept_pc_link_pkey;
       public            john    false    254                       2606    16628    trm_concept trm_concept_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.trm_concept
    ADD CONSTRAINT trm_concept_pkey PRIMARY KEY (pid);
 F   ALTER TABLE ONLY public.trm_concept DROP CONSTRAINT trm_concept_pkey;
       public            john    false    248                       2606    16675 .   trm_concept_property trm_concept_property_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.trm_concept_property
    ADD CONSTRAINT trm_concept_property_pkey PRIMARY KEY (pid);
 X   ALTER TABLE ONLY public.trm_concept_property DROP CONSTRAINT trm_concept_property_pkey;
       public            john    false    255            "           2606    16691 :   trm_valueset_c_designation trm_valueset_c_designation_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.trm_valueset_c_designation
    ADD CONSTRAINT trm_valueset_c_designation_pkey PRIMARY KEY (pid);
 d   ALTER TABLE ONLY public.trm_valueset_c_designation DROP CONSTRAINT trm_valueset_c_designation_pkey;
       public            john    false    257            (           2606    16698 .   trm_valueset_concept trm_valueset_concept_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.trm_valueset_concept
    ADD CONSTRAINT trm_valueset_concept_pkey PRIMARY KEY (pid);
 X   ALTER TABLE ONLY public.trm_valueset_concept DROP CONSTRAINT trm_valueset_concept_pkey;
       public            john    false    258                       2606    16684    trm_valueset trm_valueset_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.trm_valueset
    ADD CONSTRAINT trm_valueset_pkey PRIMARY KEY (pid);
 H   ALTER TABLE ONLY public.trm_valueset DROP CONSTRAINT trm_valueset_pkey;
       public            john    false    256                       1259    16799    fk_conceptdesig_concept    INDEX     \   CREATE INDEX fk_conceptdesig_concept ON public.trm_concept_desig USING btree (concept_pid);
 +   DROP INDEX public.fk_conceptdesig_concept;
       public            john    false    249                       1259    16806    fk_conceptprop_concept    INDEX     ^   CREATE INDEX fk_conceptprop_concept ON public.trm_concept_property USING btree (concept_pid);
 *   DROP INDEX public.fk_conceptprop_concept;
       public            john    false    255                       1259    16804    fk_term_conceptpc_child    INDEX     \   CREATE INDEX fk_term_conceptpc_child ON public.trm_concept_pc_link USING btree (child_pid);
 +   DROP INDEX public.fk_term_conceptpc_child;
       public            john    false    254                       1259    16805    fk_term_conceptpc_parent    INDEX     ^   CREATE INDEX fk_term_conceptpc_parent ON public.trm_concept_pc_link USING btree (parent_pid);
 ,   DROP INDEX public.fk_term_conceptpc_parent;
       public            john    false    254                        1259    16809    fk_trm_valueset_concept_pid    INDEX     r   CREATE INDEX fk_trm_valueset_concept_pid ON public.trm_valueset_c_designation USING btree (valueset_concept_pid);
 /   DROP INDEX public.fk_trm_valueset_concept_pid;
       public            john    false    257            `           1259    16701    idx_blkex_exptime    INDEX     T   CREATE INDEX idx_blkex_exptime ON public.hfj_blk_export_job USING btree (exp_time);
 %   DROP INDEX public.idx_blkex_exptime;
       public            john    false    214            i           1259    16706    idx_blkim_jobfile_jobid    INDEX     ]   CREATE INDEX idx_blkim_jobfile_jobid ON public.hfj_blk_import_jobfile USING btree (job_pid);
 +   DROP INDEX public.idx_blkim_jobfile_jobid;
       public            john    false    216            T           1259    16699    idx_bt2ji_ct    INDEX     P   CREATE INDEX idx_bt2ji_ct ON public.bt2_job_instance USING btree (create_time);
     DROP INDEX public.idx_bt2ji_ct;
       public            john    false    209            W           1259    16700    idx_bt2wc_ii_seq    INDEX     W   CREATE INDEX idx_bt2wc_ii_seq ON public.bt2_work_chunk USING btree (instance_id, seq);
 $   DROP INDEX public.idx_bt2wc_ii_seq;
       public            john    false    210    210                       1259    16802    idx_cncpt_map_grp_cd    INDEX     c   CREATE INDEX idx_cncpt_map_grp_cd ON public.trm_concept_map_grp_element USING btree (source_code);
 (   DROP INDEX public.idx_cncpt_map_grp_cd;
       public            john    false    252                       1259    16803    idx_cncpt_mp_grp_elm_tgt_cd    INDEX     j   CREATE INDEX idx_cncpt_mp_grp_elm_tgt_cd ON public.trm_concept_map_grp_elm_tgt USING btree (target_code);
 /   DROP INDEX public.idx_cncpt_mp_grp_elm_tgt_cd;
       public            john    false    253                       1259    16795    idx_concept_indexstatus    INDEX     W   CREATE INDEX idx_concept_indexstatus ON public.trm_concept USING btree (index_status);
 +   DROP INDEX public.idx_concept_indexstatus;
       public            john    false    248                       1259    16796    idx_concept_updated    INDEX     V   CREATE INDEX idx_concept_updated ON public.trm_concept USING btree (concept_updated);
 '   DROP INDEX public.idx_concept_updated;
       public            john    false    248            p           1259    16707    idx_forceid_fid    INDEX     N   CREATE INDEX idx_forceid_fid ON public.hfj_forced_id USING btree (forced_id);
 #   DROP INDEX public.idx_forceid_fid;
       public            john    false    217            x           1259    16716    idx_idxcmbtoknu_res    INDEX     T   CREATE INDEX idx_idxcmbtoknu_res ON public.hfj_idx_cmb_tok_nu USING btree (res_id);
 '   DROP INDEX public.idx_idxcmbtoknu_res;
       public            john    false    219            y           1259    16715    idx_idxcmbtoknu_str    INDEX     X   CREATE INDEX idx_idxcmbtoknu_str ON public.hfj_idx_cmb_tok_nu USING btree (idx_string);
 '   DROP INDEX public.idx_idxcmbtoknu_str;
       public            john    false    219            |           1259    16717    idx_idxcmpstruniq_resource    INDEX     `   CREATE INDEX idx_idxcmpstruniq_resource ON public.hfj_idx_cmp_string_uniq USING btree (res_id);
 .   DROP INDEX public.idx_idxcmpstruniq_resource;
       public            john    false    220            ?           1259    16790    idx_packverres_url    INDEX     [   CREATE INDEX idx_packverres_url ON public.npm_package_ver_res USING btree (canonical_url);
 &   DROP INDEX public.idx_packverres_url;
       public            john    false    245            ?           1259    16738    idx_res_date    INDEX     L   CREATE INDEX idx_res_date ON public.hfj_resource USING btree (res_updated);
     DROP INDEX public.idx_res_date;
       public            john    false    228            ?           1259    16727    idx_res_tag_res_tag    INDEX     c   CREATE INDEX idx_res_tag_res_tag ON public.hfj_res_tag USING btree (res_id, tag_id, partition_id);
 '   DROP INDEX public.idx_res_tag_res_tag;
       public            john    false    225    225    225            ?           1259    16728    idx_res_tag_tag_res    INDEX     c   CREATE INDEX idx_res_tag_tag_res ON public.hfj_res_tag USING btree (tag_id, res_id, partition_id);
 '   DROP INDEX public.idx_res_tag_tag_res;
       public            john    false    225    225    225            ?           1259    16739    idx_res_type_del_updated    INDEX     ?   CREATE INDEX idx_res_type_del_updated ON public.hfj_resource USING btree (res_type, res_deleted_at, res_updated, partition_id, res_id);
 ,   DROP INDEX public.idx_res_type_del_updated;
       public            john    false    228    228    228    228    228            s           1259    16712    idx_reshisttag_resid    INDEX     R   CREATE INDEX idx_reshisttag_resid ON public.hfj_history_tag USING btree (res_id);
 (   DROP INDEX public.idx_reshisttag_resid;
       public            john    false    218            ?           1259    16726    idx_resparmpresent_hashpres    INDEX     f   CREATE INDEX idx_resparmpresent_hashpres ON public.hfj_res_param_present USING btree (hash_presence);
 /   DROP INDEX public.idx_resparmpresent_hashpres;
       public            john    false    223            ?           1259    16725    idx_resparmpresent_resid    INDEX     \   CREATE INDEX idx_resparmpresent_resid ON public.hfj_res_param_present USING btree (res_id);
 ,   DROP INDEX public.idx_resparmpresent_resid;
       public            john    false    223            ?           1259    16733    idx_resver_date    INDEX     N   CREATE INDEX idx_resver_date ON public.hfj_res_ver USING btree (res_updated);
 #   DROP INDEX public.idx_resver_date;
       public            john    false    226            ?           1259    16732    idx_resver_id_date    INDEX     Y   CREATE INDEX idx_resver_id_date ON public.hfj_res_ver USING btree (res_id, res_updated);
 &   DROP INDEX public.idx_resver_id_date;
       public            john    false    226    226            ?           1259    16731    idx_resver_type_date    INDEX     ]   CREATE INDEX idx_resver_type_date ON public.hfj_res_ver USING btree (res_type, res_updated);
 (   DROP INDEX public.idx_resver_type_date;
       public            john    false    226    226            ?           1259    16737    idx_resverprov_requestid    INDEX     [   CREATE INDEX idx_resverprov_requestid ON public.hfj_res_ver_prov USING btree (request_id);
 ,   DROP INDEX public.idx_resverprov_requestid;
       public            john    false    227            ?           1259    16736    idx_resverprov_sourceuri    INDEX     [   CREATE INDEX idx_resverprov_sourceuri ON public.hfj_res_ver_prov USING btree (source_uri);
 ,   DROP INDEX public.idx_resverprov_sourceuri;
       public            john    false    227            ?           1259    16724    idx_rl_dest    INDEX     R   CREATE INDEX idx_rl_dest ON public.hfj_res_link USING btree (target_resource_id);
    DROP INDEX public.idx_rl_dest;
       public            john    false    222            ?           1259    16723 
   idx_rl_src    INDEX     N   CREATE INDEX idx_rl_src ON public.hfj_res_link USING btree (src_resource_id);
    DROP INDEX public.idx_rl_src;
       public            john    false    222            ?           1259    16722    idx_rl_tpathres    INDEX     `   CREATE INDEX idx_rl_tpathres ON public.hfj_res_link USING btree (src_path, target_resource_id);
 #   DROP INDEX public.idx_rl_tpathres;
       public            john    false    222    222            ?           1259    16741    idx_search_created    INDEX     L   CREATE INDEX idx_search_created ON public.hfj_search USING btree (created);
 &   DROP INDEX public.idx_search_created;
       public            john    false    229            ?           1259    16740    idx_search_restype_hashs    INDEX     {   CREATE INDEX idx_search_restype_hashs ON public.hfj_search USING btree (resource_type, search_query_string_hash, created);
 ,   DROP INDEX public.idx_search_restype_hashs;
       public            john    false    229    229    229            ?           1259    16746    idx_sp_coords_hash    INDEX     s   CREATE INDEX idx_sp_coords_hash ON public.hfj_spidx_coords USING btree (hash_identity, sp_latitude, sp_longitude);
 &   DROP INDEX public.idx_sp_coords_hash;
       public            john    false    232    232    232            ?           1259    16748    idx_sp_coords_resid    INDEX     R   CREATE INDEX idx_sp_coords_resid ON public.hfj_spidx_coords USING btree (res_id);
 '   DROP INDEX public.idx_sp_coords_resid;
       public            john    false    232            ?           1259    16747    idx_sp_coords_updated    INDEX     X   CREATE INDEX idx_sp_coords_updated ON public.hfj_spidx_coords USING btree (sp_updated);
 )   DROP INDEX public.idx_sp_coords_updated;
       public            john    false    232            ?           1259    16750    idx_sp_date_hash_high_v2    INDEX     ?   CREATE INDEX idx_sp_date_hash_high_v2 ON public.hfj_spidx_date USING btree (hash_identity, sp_value_high, res_id, partition_id);
 ,   DROP INDEX public.idx_sp_date_hash_high_v2;
       public            john    false    233    233    233    233            ?           1259    16749    idx_sp_date_hash_v2    INDEX     ?   CREATE INDEX idx_sp_date_hash_v2 ON public.hfj_spidx_date USING btree (hash_identity, sp_value_low, sp_value_high, res_id, partition_id);
 '   DROP INDEX public.idx_sp_date_hash_v2;
       public            john    false    233    233    233    233    233            ?           1259    16752    idx_sp_date_ord_hash_high_v2    INDEX     ?   CREATE INDEX idx_sp_date_ord_hash_high_v2 ON public.hfj_spidx_date USING btree (hash_identity, sp_value_high_date_ordinal, res_id, partition_id);
 0   DROP INDEX public.idx_sp_date_ord_hash_high_v2;
       public            john    false    233    233    233    233            ?           1259    16751    idx_sp_date_ord_hash_v2    INDEX     ?   CREATE INDEX idx_sp_date_ord_hash_v2 ON public.hfj_spidx_date USING btree (hash_identity, sp_value_low_date_ordinal, sp_value_high_date_ordinal, res_id, partition_id);
 +   DROP INDEX public.idx_sp_date_ord_hash_v2;
       public            john    false    233    233    233    233    233            ?           1259    16753    idx_sp_date_resid_v2    INDEX     ?   CREATE INDEX idx_sp_date_resid_v2 ON public.hfj_spidx_date USING btree (res_id, hash_identity, sp_value_low, sp_value_high, sp_value_low_date_ordinal, sp_value_high_date_ordinal, partition_id);
 (   DROP INDEX public.idx_sp_date_resid_v2;
       public            john    false    233    233    233    233    233    233    233            ?           1259    16754    idx_sp_number_hash_val_v2    INDEX        CREATE INDEX idx_sp_number_hash_val_v2 ON public.hfj_spidx_number USING btree (hash_identity, sp_value, res_id, partition_id);
 -   DROP INDEX public.idx_sp_number_hash_val_v2;
       public            john    false    234    234    234    234            ?           1259    16755    idx_sp_number_resid_v2    INDEX     |   CREATE INDEX idx_sp_number_resid_v2 ON public.hfj_spidx_number USING btree (res_id, hash_identity, sp_value, partition_id);
 *   DROP INDEX public.idx_sp_number_resid_v2;
       public            john    false    234    234    234    234            ?           1259    16762    idx_sp_qnty_nrml_hash_sysun_v2    INDEX     ?   CREATE INDEX idx_sp_qnty_nrml_hash_sysun_v2 ON public.hfj_spidx_quantity_nrml USING btree (hash_identity_sys_units, sp_value, res_id, partition_id);
 2   DROP INDEX public.idx_sp_qnty_nrml_hash_sysun_v2;
       public            john    false    236    236    236    236            ?           1259    16761    idx_sp_qnty_nrml_hash_un_v2    INDEX     ?   CREATE INDEX idx_sp_qnty_nrml_hash_un_v2 ON public.hfj_spidx_quantity_nrml USING btree (hash_identity_and_units, sp_value, res_id, partition_id);
 /   DROP INDEX public.idx_sp_qnty_nrml_hash_un_v2;
       public            john    false    236    236    236    236            ?           1259    16760    idx_sp_qnty_nrml_hash_v2    INDEX     ?   CREATE INDEX idx_sp_qnty_nrml_hash_v2 ON public.hfj_spidx_quantity_nrml USING btree (hash_identity, sp_value, res_id, partition_id);
 ,   DROP INDEX public.idx_sp_qnty_nrml_hash_v2;
       public            john    false    236    236    236    236            ?           1259    16763    idx_sp_qnty_nrml_resid_v2    INDEX     ?   CREATE INDEX idx_sp_qnty_nrml_resid_v2 ON public.hfj_spidx_quantity_nrml USING btree (res_id, hash_identity, hash_identity_sys_units, hash_identity_and_units, sp_value, partition_id);
 -   DROP INDEX public.idx_sp_qnty_nrml_resid_v2;
       public            john    false    236    236    236    236    236    236            ?           1259    16758    idx_sp_quantity_hash_sysun_v2    INDEX     ?   CREATE INDEX idx_sp_quantity_hash_sysun_v2 ON public.hfj_spidx_quantity USING btree (hash_identity_sys_units, sp_value, res_id, partition_id);
 1   DROP INDEX public.idx_sp_quantity_hash_sysun_v2;
       public            john    false    235    235    235    235            ?           1259    16757    idx_sp_quantity_hash_un_v2    INDEX     ?   CREATE INDEX idx_sp_quantity_hash_un_v2 ON public.hfj_spidx_quantity USING btree (hash_identity_and_units, sp_value, res_id, partition_id);
 .   DROP INDEX public.idx_sp_quantity_hash_un_v2;
       public            john    false    235    235    235    235            ?           1259    16756    idx_sp_quantity_hash_v2    INDEX        CREATE INDEX idx_sp_quantity_hash_v2 ON public.hfj_spidx_quantity USING btree (hash_identity, sp_value, res_id, partition_id);
 +   DROP INDEX public.idx_sp_quantity_hash_v2;
       public            john    false    235    235    235    235            ?           1259    16759    idx_sp_quantity_resid_v2    INDEX     ?   CREATE INDEX idx_sp_quantity_resid_v2 ON public.hfj_spidx_quantity USING btree (res_id, hash_identity, hash_identity_sys_units, hash_identity_and_units, sp_value, partition_id);
 ,   DROP INDEX public.idx_sp_quantity_resid_v2;
       public            john    false    235    235    235    235    235    235            ?           1259    16766    idx_sp_string_hash_exct_v2    INDEX     s   CREATE INDEX idx_sp_string_hash_exct_v2 ON public.hfj_spidx_string USING btree (hash_exact, res_id, partition_id);
 .   DROP INDEX public.idx_sp_string_hash_exct_v2;
       public            john    false    237    237    237            ?           1259    16764    idx_sp_string_hash_ident    INDEX     ^   CREATE INDEX idx_sp_string_hash_ident ON public.hfj_spidx_string USING btree (hash_identity);
 ,   DROP INDEX public.idx_sp_string_hash_ident;
       public            john    false    237            ?           1259    16765    idx_sp_string_hash_nrm_v2    INDEX     ?   CREATE INDEX idx_sp_string_hash_nrm_v2 ON public.hfj_spidx_string USING btree (hash_norm_prefix, sp_value_normalized, res_id, partition_id);
 -   DROP INDEX public.idx_sp_string_hash_nrm_v2;
       public            john    false    237    237    237    237            ?           1259    16767    idx_sp_string_resid    INDEX     R   CREATE INDEX idx_sp_string_resid ON public.hfj_spidx_string USING btree (res_id);
 '   DROP INDEX public.idx_sp_string_resid;
       public            john    false    237            ?           1259    16769    idx_sp_token_hash_s_v2    INDEX     l   CREATE INDEX idx_sp_token_hash_s_v2 ON public.hfj_spidx_token USING btree (hash_sys, res_id, partition_id);
 *   DROP INDEX public.idx_sp_token_hash_s_v2;
       public            john    false    238    238    238            ?           1259    16770    idx_sp_token_hash_sv_v2    INDEX     w   CREATE INDEX idx_sp_token_hash_sv_v2 ON public.hfj_spidx_token USING btree (hash_sys_and_value, res_id, partition_id);
 +   DROP INDEX public.idx_sp_token_hash_sv_v2;
       public            john    false    238    238    238            ?           1259    16768    idx_sp_token_hash_v2    INDEX     ?   CREATE INDEX idx_sp_token_hash_v2 ON public.hfj_spidx_token USING btree (hash_identity, sp_system, sp_value, res_id, partition_id);
 (   DROP INDEX public.idx_sp_token_hash_v2;
       public            john    false    238    238    238    238    238            ?           1259    16771    idx_sp_token_hash_v_v2    INDEX     n   CREATE INDEX idx_sp_token_hash_v_v2 ON public.hfj_spidx_token USING btree (hash_value, res_id, partition_id);
 *   DROP INDEX public.idx_sp_token_hash_v_v2;
       public            john    false    238    238    238            ?           1259    16772    idx_sp_token_resid_v2    INDEX     ?   CREATE INDEX idx_sp_token_resid_v2 ON public.hfj_spidx_token USING btree (res_id, hash_sys_and_value, hash_value, hash_sys, hash_identity, partition_id);
 )   DROP INDEX public.idx_sp_token_resid_v2;
       public            john    false    238    238    238    238    238    238            ?           1259    16773 
   idx_sp_uri    INDEX     Y   CREATE INDEX idx_sp_uri ON public.hfj_spidx_uri USING btree (res_type, sp_name, sp_uri);
    DROP INDEX public.idx_sp_uri;
       public            john    false    239    239    239            ?           1259    16778    idx_sp_uri_coords    INDEX     M   CREATE INDEX idx_sp_uri_coords ON public.hfj_spidx_uri USING btree (res_id);
 %   DROP INDEX public.idx_sp_uri_coords;
       public            john    false    239            ?           1259    16774    idx_sp_uri_hash_identity    INDEX     c   CREATE INDEX idx_sp_uri_hash_identity ON public.hfj_spidx_uri USING btree (hash_identity, sp_uri);
 ,   DROP INDEX public.idx_sp_uri_hash_identity;
       public            john    false    239    239            ?           1259    16775    idx_sp_uri_hash_uri    INDEX     Q   CREATE INDEX idx_sp_uri_hash_uri ON public.hfj_spidx_uri USING btree (hash_uri);
 '   DROP INDEX public.idx_sp_uri_hash_uri;
       public            john    false    239            ?           1259    16776    idx_sp_uri_restype_name    INDEX     ^   CREATE INDEX idx_sp_uri_restype_name ON public.hfj_spidx_uri USING btree (res_type, sp_name);
 +   DROP INDEX public.idx_sp_uri_restype_name;
       public            john    false    239    239            ?           1259    16777    idx_sp_uri_updated    INDEX     R   CREATE INDEX idx_sp_uri_updated ON public.hfj_spidx_uri USING btree (sp_updated);
 &   DROP INDEX public.idx_sp_uri_updated;
       public            john    false    239            ?           1259    16781    idx_tag_def_tp_cd_sys    INDEX     o   CREATE INDEX idx_tag_def_tp_cd_sys ON public.hfj_tag_def USING btree (tag_type, tag_code, tag_system, tag_id);
 )   DROP INDEX public.idx_tag_def_tp_cd_sys;
       public            john    false    241    241    241    241            .           2606    16884 +   hfj_history_tag fk3gc37g8b2c9qcrrccw7s50inw    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_history_tag
    ADD CONSTRAINT fk3gc37g8b2c9qcrrccw7s50inw FOREIGN KEY (tag_id) REFERENCES public.hfj_tag_def(tag_id);
 U   ALTER TABLE ONLY public.hfj_history_tag DROP CONSTRAINT fk3gc37g8b2c9qcrrccw7s50inw;
       public          john    false    241    218    3557            5           2606    16919 '   hfj_res_tag fk4kiphkwif9illrg0jtooom2w1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_res_tag
    ADD CONSTRAINT fk4kiphkwif9illrg0jtooom2w1 FOREIGN KEY (tag_id) REFERENCES public.hfj_tag_def(tag_id);
 Q   ALTER TABLE ONLY public.hfj_res_tag DROP CONSTRAINT fk4kiphkwif9illrg0jtooom2w1;
       public          john    false    3557    241    225            +           2606    16869 )   hfj_blk_export_collection fk_blkexcol_job    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_blk_export_collection
    ADD CONSTRAINT fk_blkexcol_job FOREIGN KEY (job_pid) REFERENCES public.hfj_blk_export_job(pid);
 S   ALTER TABLE ONLY public.hfj_blk_export_collection DROP CONSTRAINT fk_blkexcol_job;
       public          john    false    214    213    3423            *           2606    16864 .   hfj_blk_export_colfile fk_blkexcolfile_collect    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_blk_export_colfile
    ADD CONSTRAINT fk_blkexcolfile_collect FOREIGN KEY (collection_pid) REFERENCES public.hfj_blk_export_collection(pid);
 X   ALTER TABLE ONLY public.hfj_blk_export_colfile DROP CONSTRAINT fk_blkexcolfile_collect;
       public          john    false    212    213    3421            ,           2606    16874 *   hfj_blk_import_jobfile fk_blkimjobfile_job    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_blk_import_jobfile
    ADD CONSTRAINT fk_blkimjobfile_job FOREIGN KEY (job_pid) REFERENCES public.hfj_blk_import_job(pid);
 T   ALTER TABLE ONLY public.hfj_blk_import_jobfile DROP CONSTRAINT fk_blkimjobfile_job;
       public          john    false    3428    216    215            )           2606    16859     bt2_work_chunk fk_bt2wc_instance    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bt2_work_chunk
    ADD CONSTRAINT fk_bt2wc_instance FOREIGN KEY (instance_id) REFERENCES public.bt2_job_instance(id);
 J   ALTER TABLE ONLY public.bt2_work_chunk DROP CONSTRAINT fk_bt2wc_instance;
       public          john    false    210    3411    209            M           2606    17039 &   trm_codesystem_ver fk_codesysver_cs_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_codesystem_ver
    ADD CONSTRAINT fk_codesysver_cs_id FOREIGN KEY (codesystem_pid) REFERENCES public.trm_codesystem(pid);
 P   ALTER TABLE ONLY public.trm_codesystem_ver DROP CONSTRAINT fk_codesysver_cs_id;
       public          john    false    3579    247    246            N           2606    17044 '   trm_codesystem_ver fk_codesysver_res_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_codesystem_ver
    ADD CONSTRAINT fk_codesysver_res_id FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 Q   ALTER TABLE ONLY public.trm_codesystem_ver DROP CONSTRAINT fk_codesysver_res_id;
       public          john    false    3488    228    247            O           2606    17049 !   trm_concept fk_concept_pid_cs_pid    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept
    ADD CONSTRAINT fk_concept_pid_cs_pid FOREIGN KEY (codesystem_pid) REFERENCES public.trm_codesystem_ver(pid);
 K   ALTER TABLE ONLY public.trm_concept DROP CONSTRAINT fk_concept_pid_cs_pid;
       public          john    false    247    248    3583            Q           2606    17059 )   trm_concept_desig fk_conceptdesig_concept    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept_desig
    ADD CONSTRAINT fk_conceptdesig_concept FOREIGN KEY (concept_pid) REFERENCES public.trm_concept(pid);
 S   ALTER TABLE ONLY public.trm_concept_desig DROP CONSTRAINT fk_conceptdesig_concept;
       public          john    false    248    3589    249            P           2606    17054 %   trm_concept_desig fk_conceptdesig_csv    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept_desig
    ADD CONSTRAINT fk_conceptdesig_csv FOREIGN KEY (cs_ver_pid) REFERENCES public.trm_codesystem_ver(pid);
 O   ALTER TABLE ONLY public.trm_concept_desig DROP CONSTRAINT fk_conceptdesig_csv;
       public          john    false    247    3583    249            Z           2606    17104 +   trm_concept_property fk_conceptprop_concept    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept_property
    ADD CONSTRAINT fk_conceptprop_concept FOREIGN KEY (concept_pid) REFERENCES public.trm_concept(pid);
 U   ALTER TABLE ONLY public.trm_concept_property DROP CONSTRAINT fk_conceptprop_concept;
       public          john    false    3589    248    255            Y           2606    17099 '   trm_concept_property fk_conceptprop_csv    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept_property
    ADD CONSTRAINT fk_conceptprop_csv FOREIGN KEY (cs_ver_pid) REFERENCES public.trm_codesystem_ver(pid);
 Q   ALTER TABLE ONLY public.trm_concept_property DROP CONSTRAINT fk_conceptprop_csv;
       public          john    false    247    3583    255            D           2606    16994 %   mpi_link fk_empi_link_golden_resource    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpi_link
    ADD CONSTRAINT fk_empi_link_golden_resource FOREIGN KEY (golden_resource_pid) REFERENCES public.hfj_resource(res_id);
 O   ALTER TABLE ONLY public.mpi_link DROP CONSTRAINT fk_empi_link_golden_resource;
       public          john    false    242    3488    228            E           2606    16999    mpi_link fk_empi_link_person    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpi_link
    ADD CONSTRAINT fk_empi_link_person FOREIGN KEY (person_pid) REFERENCES public.hfj_resource(res_id);
 F   ALTER TABLE ONLY public.mpi_link DROP CONSTRAINT fk_empi_link_person;
       public          john    false    242    228    3488            F           2606    17004    mpi_link fk_empi_link_target    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpi_link
    ADD CONSTRAINT fk_empi_link_target FOREIGN KEY (target_pid) REFERENCES public.hfj_resource(res_id);
 F   ALTER TABLE ONLY public.mpi_link DROP CONSTRAINT fk_empi_link_target;
       public          john    false    242    228    3488            -           2606    16879 "   hfj_forced_id fk_forcedid_resource    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_forced_id
    ADD CONSTRAINT fk_forcedid_resource FOREIGN KEY (resource_pid) REFERENCES public.hfj_resource(res_id);
 L   ALTER TABLE ONLY public.hfj_forced_id DROP CONSTRAINT fk_forcedid_resource;
       public          john    false    228    217    3488            /           2606    16889 %   hfj_history_tag fk_historytag_history    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_history_tag
    ADD CONSTRAINT fk_historytag_history FOREIGN KEY (res_ver_pid) REFERENCES public.hfj_res_ver(pid);
 O   ALTER TABLE ONLY public.hfj_history_tag DROP CONSTRAINT fk_historytag_history;
       public          john    false    218    226    3477            0           2606    16894 (   hfj_idx_cmb_tok_nu fk_idxcmbtoknu_res_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_idx_cmb_tok_nu
    ADD CONSTRAINT fk_idxcmbtoknu_res_id FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 R   ALTER TABLE ONLY public.hfj_idx_cmb_tok_nu DROP CONSTRAINT fk_idxcmbtoknu_res_id;
       public          john    false    219    228    3488            1           2606    16899 /   hfj_idx_cmp_string_uniq fk_idxcmpstruniq_res_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_idx_cmp_string_uniq
    ADD CONSTRAINT fk_idxcmpstruniq_res_id FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 Y   ALTER TABLE ONLY public.hfj_idx_cmp_string_uniq DROP CONSTRAINT fk_idxcmpstruniq_res_id;
       public          john    false    220    228    3488            I           2606    17019 -   npm_package_ver_res fk_npm_packverres_packver    FK CONSTRAINT     ?   ALTER TABLE ONLY public.npm_package_ver_res
    ADD CONSTRAINT fk_npm_packverres_packver FOREIGN KEY (packver_pid) REFERENCES public.npm_package_ver(pid);
 W   ALTER TABLE ONLY public.npm_package_ver_res DROP CONSTRAINT fk_npm_packverres_packver;
       public          john    false    3572    244    245            G           2606    17009    npm_package_ver fk_npm_pkv_pkg    FK CONSTRAINT     ?   ALTER TABLE ONLY public.npm_package_ver
    ADD CONSTRAINT fk_npm_pkv_pkg FOREIGN KEY (package_pid) REFERENCES public.npm_package(pid);
 H   ALTER TABLE ONLY public.npm_package_ver DROP CONSTRAINT fk_npm_pkv_pkg;
       public          john    false    3568    243    244            H           2606    17014     npm_package_ver fk_npm_pkv_resid    FK CONSTRAINT     ?   ALTER TABLE ONLY public.npm_package_ver
    ADD CONSTRAINT fk_npm_pkv_resid FOREIGN KEY (binary_res_id) REFERENCES public.hfj_resource(res_id);
 J   ALTER TABLE ONLY public.npm_package_ver DROP CONSTRAINT fk_npm_pkv_resid;
       public          john    false    228    244    3488            J           2606    17024 %   npm_package_ver_res fk_npm_pkvr_resid    FK CONSTRAINT     ?   ALTER TABLE ONLY public.npm_package_ver_res
    ADD CONSTRAINT fk_npm_pkvr_resid FOREIGN KEY (binary_res_id) REFERENCES public.hfj_resource(res_id);
 O   ALTER TABLE ONLY public.npm_package_ver_res DROP CONSTRAINT fk_npm_pkvr_resid;
       public          john    false    3488    245    228            2           2606    16904    hfj_res_link fk_reslink_source    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_res_link
    ADD CONSTRAINT fk_reslink_source FOREIGN KEY (src_resource_id) REFERENCES public.hfj_resource(res_id);
 H   ALTER TABLE ONLY public.hfj_res_link DROP CONSTRAINT fk_reslink_source;
       public          john    false    228    3488    222            3           2606    16909    hfj_res_link fk_reslink_target    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_res_link
    ADD CONSTRAINT fk_reslink_target FOREIGN KEY (target_resource_id) REFERENCES public.hfj_resource(res_id);
 H   ALTER TABLE ONLY public.hfj_res_link DROP CONSTRAINT fk_reslink_target;
       public          john    false    222    228    3488            7           2606    16929 (   hfj_res_ver fk_resource_history_resource    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_res_ver
    ADD CONSTRAINT fk_resource_history_resource FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 R   ALTER TABLE ONLY public.hfj_res_ver DROP CONSTRAINT fk_resource_history_resource;
       public          john    false    228    226    3488            4           2606    16914 *   hfj_res_param_present fk_resparmpres_resid    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_res_param_present
    ADD CONSTRAINT fk_resparmpres_resid FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 T   ALTER TABLE ONLY public.hfj_res_param_present DROP CONSTRAINT fk_resparmpres_resid;
       public          john    false    223    228    3488            6           2606    16924    hfj_res_tag fk_restag_resource    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_res_tag
    ADD CONSTRAINT fk_restag_resource FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 H   ALTER TABLE ONLY public.hfj_res_tag DROP CONSTRAINT fk_restag_resource;
       public          john    false    3488    228    225            8           2606    16934 &   hfj_res_ver_prov fk_resverprov_res_pid    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_res_ver_prov
    ADD CONSTRAINT fk_resverprov_res_pid FOREIGN KEY (res_pid) REFERENCES public.hfj_resource(res_id);
 P   ALTER TABLE ONLY public.hfj_res_ver_prov DROP CONSTRAINT fk_resverprov_res_pid;
       public          john    false    3488    227    228            9           2606    16939 )   hfj_res_ver_prov fk_resverprov_resver_pid    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_res_ver_prov
    ADD CONSTRAINT fk_resverprov_resver_pid FOREIGN KEY (res_ver_pid) REFERENCES public.hfj_res_ver(pid);
 S   ALTER TABLE ONLY public.hfj_res_ver_prov DROP CONSTRAINT fk_resverprov_resver_pid;
       public          john    false    226    227    3477            :           2606    16944 &   hfj_search_include fk_searchinc_search    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_search_include
    ADD CONSTRAINT fk_searchinc_search FOREIGN KEY (search_pid) REFERENCES public.hfj_search(pid);
 P   ALTER TABLE ONLY public.hfj_search_include DROP CONSTRAINT fk_searchinc_search;
       public          john    false    3492    230    229            <           2606    16954    hfj_spidx_date fk_sp_date_res    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_spidx_date
    ADD CONSTRAINT fk_sp_date_res FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 G   ALTER TABLE ONLY public.hfj_spidx_date DROP CONSTRAINT fk_sp_date_res;
       public          john    false    3488    233    228            =           2606    16959 !   hfj_spidx_number fk_sp_number_res    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_spidx_number
    ADD CONSTRAINT fk_sp_number_res FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 K   ALTER TABLE ONLY public.hfj_spidx_number DROP CONSTRAINT fk_sp_number_res;
       public          john    false    234    228    3488            >           2606    16964 %   hfj_spidx_quantity fk_sp_quantity_res    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_spidx_quantity
    ADD CONSTRAINT fk_sp_quantity_res FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 O   ALTER TABLE ONLY public.hfj_spidx_quantity DROP CONSTRAINT fk_sp_quantity_res;
       public          john    false    3488    235    228            ?           2606    16969 ,   hfj_spidx_quantity_nrml fk_sp_quantitynm_res    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_spidx_quantity_nrml
    ADD CONSTRAINT fk_sp_quantitynm_res FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 V   ALTER TABLE ONLY public.hfj_spidx_quantity_nrml DROP CONSTRAINT fk_sp_quantitynm_res;
       public          john    false    228    236    3488            A           2606    16979    hfj_spidx_token fk_sp_token_res    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_spidx_token
    ADD CONSTRAINT fk_sp_token_res FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 I   ALTER TABLE ONLY public.hfj_spidx_token DROP CONSTRAINT fk_sp_token_res;
       public          john    false    238    3488    228            @           2606    16974 %   hfj_spidx_string fk_spidxstr_resource    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_spidx_string
    ADD CONSTRAINT fk_spidxstr_resource FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 O   ALTER TABLE ONLY public.hfj_spidx_string DROP CONSTRAINT fk_spidxstr_resource;
       public          john    false    228    237    3488            C           2606    16989 +   hfj_subscription_stats fk_subsc_resource_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_subscription_stats
    ADD CONSTRAINT fk_subsc_resource_id FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 U   ALTER TABLE ONLY public.hfj_subscription_stats DROP CONSTRAINT fk_subsc_resource_id;
       public          john    false    228    3488    240            T           2606    17074 0   trm_concept_map_grp_element fk_tcmgelement_group    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept_map_grp_element
    ADD CONSTRAINT fk_tcmgelement_group FOREIGN KEY (concept_map_group_pid) REFERENCES public.trm_concept_map_group(pid);
 Z   ALTER TABLE ONLY public.trm_concept_map_grp_element DROP CONSTRAINT fk_tcmgelement_group;
       public          john    false    252    3598    251            U           2606    17079 2   trm_concept_map_grp_elm_tgt fk_tcmgetarget_element    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept_map_grp_elm_tgt
    ADD CONSTRAINT fk_tcmgetarget_element FOREIGN KEY (concept_map_grp_elm_pid) REFERENCES public.trm_concept_map_grp_element(pid);
 \   ALTER TABLE ONLY public.trm_concept_map_grp_elm_tgt DROP CONSTRAINT fk_tcmgetarget_element;
       public          john    false    252    3601    253            S           2606    17069 ,   trm_concept_map_group fk_tcmgroup_conceptmap    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept_map_group
    ADD CONSTRAINT fk_tcmgroup_conceptmap FOREIGN KEY (concept_map_pid) REFERENCES public.trm_concept_map(pid);
 V   ALTER TABLE ONLY public.trm_concept_map_group DROP CONSTRAINT fk_tcmgroup_conceptmap;
       public          john    false    3596    250    251            V           2606    17084 +   trm_concept_pc_link fk_term_conceptpc_child    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept_pc_link
    ADD CONSTRAINT fk_term_conceptpc_child FOREIGN KEY (child_pid) REFERENCES public.trm_concept(pid);
 U   ALTER TABLE ONLY public.trm_concept_pc_link DROP CONSTRAINT fk_term_conceptpc_child;
       public          john    false    3589    248    254            W           2606    17089 (   trm_concept_pc_link fk_term_conceptpc_cs    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept_pc_link
    ADD CONSTRAINT fk_term_conceptpc_cs FOREIGN KEY (codesystem_pid) REFERENCES public.trm_codesystem_ver(pid);
 R   ALTER TABLE ONLY public.trm_concept_pc_link DROP CONSTRAINT fk_term_conceptpc_cs;
       public          john    false    254    3583    247            X           2606    17094 ,   trm_concept_pc_link fk_term_conceptpc_parent    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept_pc_link
    ADD CONSTRAINT fk_term_conceptpc_parent FOREIGN KEY (parent_pid) REFERENCES public.trm_concept(pid);
 V   ALTER TABLE ONLY public.trm_concept_pc_link DROP CONSTRAINT fk_term_conceptpc_parent;
       public          john    false    254    248    3589            \           2606    17114 6   trm_valueset_c_designation fk_trm_valueset_concept_pid    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_valueset_c_designation
    ADD CONSTRAINT fk_trm_valueset_concept_pid FOREIGN KEY (valueset_concept_pid) REFERENCES public.trm_valueset_concept(pid);
 `   ALTER TABLE ONLY public.trm_valueset_c_designation DROP CONSTRAINT fk_trm_valueset_concept_pid;
       public          john    false    3624    257    258            ^           2606    17124 (   trm_valueset_concept fk_trm_valueset_pid    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_valueset_concept
    ADD CONSTRAINT fk_trm_valueset_pid FOREIGN KEY (valueset_pid) REFERENCES public.trm_valueset(pid);
 R   ALTER TABLE ONLY public.trm_valueset_concept DROP CONSTRAINT fk_trm_valueset_pid;
       public          john    false    3615    258    256            ]           2606    17119 -   trm_valueset_c_designation fk_trm_vscd_vs_pid    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_valueset_c_designation
    ADD CONSTRAINT fk_trm_vscd_vs_pid FOREIGN KEY (valueset_pid) REFERENCES public.trm_valueset(pid);
 W   ALTER TABLE ONLY public.trm_valueset_c_designation DROP CONSTRAINT fk_trm_vscd_vs_pid;
       public          john    false    3615    257    256            K           2606    17029 &   trm_codesystem fk_trmcodesystem_curver    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_codesystem
    ADD CONSTRAINT fk_trmcodesystem_curver FOREIGN KEY (current_version_pid) REFERENCES public.trm_codesystem_ver(pid);
 P   ALTER TABLE ONLY public.trm_codesystem DROP CONSTRAINT fk_trmcodesystem_curver;
       public          john    false    3583    246    247            L           2606    17034 #   trm_codesystem fk_trmcodesystem_res    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_codesystem
    ADD CONSTRAINT fk_trmcodesystem_res FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 M   ALTER TABLE ONLY public.trm_codesystem DROP CONSTRAINT fk_trmcodesystem_res;
       public          john    false    3488    246    228            R           2606    17064 $   trm_concept_map fk_trmconceptmap_res    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_concept_map
    ADD CONSTRAINT fk_trmconceptmap_res FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 N   ALTER TABLE ONLY public.trm_concept_map DROP CONSTRAINT fk_trmconceptmap_res;
       public          john    false    250    228    3488            [           2606    17109    trm_valueset fk_trmvalueset_res    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trm_valueset
    ADD CONSTRAINT fk_trmvalueset_res FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 I   ALTER TABLE ONLY public.trm_valueset DROP CONSTRAINT fk_trmvalueset_res;
       public          john    false    256    3488    228            ;           2606    16949 ,   hfj_spidx_coords fkc97mpk37okwu8qvtceg2nh9vn    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_spidx_coords
    ADD CONSTRAINT fkc97mpk37okwu8qvtceg2nh9vn FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 V   ALTER TABLE ONLY public.hfj_spidx_coords DROP CONSTRAINT fkc97mpk37okwu8qvtceg2nh9vn;
       public          john    false    232    3488    228            B           2606    16984 )   hfj_spidx_uri fkgxsreutymmfjuwdswv3y887do    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hfj_spidx_uri
    ADD CONSTRAINT fkgxsreutymmfjuwdswv3y887do FOREIGN KEY (res_id) REFERENCES public.hfj_resource(res_id);
 S   ALTER TABLE ONLY public.hfj_spidx_uri DROP CONSTRAINT fkgxsreutymmfjuwdswv3y887do;
       public          john    false    239    228    3488            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   +   x?3???!CNSKNS΀Ē?Լ.S#????1?L? UQ      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?  x??T?r?0]?W????C?&?6?v????F)?!?N????????{??I0x?v???0?v҂?ݾI?z??`Ý??u?(A?!I? aI?B!?A??uJ??k?~U????
?˅SN?????^?QJ+WV6?:??:RMԉ^/?Bfz$?Z/7Ko?J{PBn??便??g??Z??G?	????!O?&??;??2c	f?"??l?m!b???*?צ??|???n????m?7e?а㭥???s@???O?	o??1p???ľNh݉:?D԰`$zH???.?;_?/????dť~?
?Q@?4?t?j=?~?{???W^?ƴVȈ7???h%x?_$\JN???͇^?s5??7SjQ)_?y???q??s??D0a?0\ ?󐞣??l+\k???y???-ozˀ?CU?b?*???]?l<???rR7]??8???h???O?????^x}i?????+??k;??????3?cM???a???{?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?3???!CNS΀Ē?Լ?=... N??      ?     x????j?0???y?if$ٺnz)4??S.?F	??^??B?????j?vL(????A??h?t?I?P ????h?!~J6d???n{??i?B'塝??OBW?B?G??H????ӸJ?ڃ??\\`Yڎ?m?????G????k'??D??v?uIc?͊O^)O  ?߈l}??é?2nWp?zB?,?~?_pB????c??ƭ??k?Z6/?ٺ???~8N??1?1?n?ZC7??$??Q?RÉ??#4?<XF?Ʋy?k?????wgܰSO7Zy??%R???g?8+fl3<?ݯ?~$????9??????(f?k??v!?ݰ???Is??y?I?صΎ}V?<6?u.;S??Ǳ7????a????N~v??q?͋;???4???iw???/W̾J????v?楐3?bB???8?4?y)T?++Լ????H?\?R????j?p=?ޠWq??7??z?G???9?F?T?Z???<Vi,?sĥPǵ/1????)q?ʿ/?IVU??ڤ?      ?   ?  x?=?I??0 Fϝ??,?EY?F`R}?5?b#????(2U9?W??}??W0?T??}????n?'&e??^?5)?_%?h?NLp?i?;???jtNiw??b???W=6??=_MLh?&Sq?&?M7?ɶ??!?[<?̿?V?׹WÀ,6Wt?S3?????;1?(?W??%Nc???L?m?;?}??ע??:g|?? ??)??cp?.Q??[
@"Yv??6?+?~??oE =?ɱ?u????U??~??9????5?<
B ???_Fr	????v??1@"????lʺ]fps? ???A?'Iu?q???S?D?]C???6??.??˒ ??A?*qk?	?K[?%? ӪO??i?:~O/?op?{l?x?Y}??8?&)?? ?皦'      ?   b  x???ݎG??{???U?)W?o!?	?\qS?6Z)?EKo????^`	=!??f?3???>??`y?˧?/?`B|??9?3??J?r>??YI??=??}??Ľ?{I?gN?'▰?n??????????~>^?n??]?n?
%m?6?+J9??BL<???}?i?B?Rkj0???g2͋$?Upj?̵??P?U?\7,+?YٗQJ?q&?h??V?WLM
!aE?,?ur?6`4։??hC??џ????.???%@?:?nP??|Z??M?T??s?????b??kτ?=?LC?6hE1[??؈???}??j????????Ƹ???????y??Tu j?%???M??@?B.2?JN.?+)?O??˸{?쏜r??l?6?U?Q???}?"?X?????jw?ɚ???Z????X?M?0???\?͹?|??????\'?p??O??2͐=<?أk%?6?^a???h?AƠ??
2G???8?~?ї??????~;?؇???T?*.??ie??K}_JV/:??\T?K????Bl????6S#?<??0?u?????ի?(?5????%Us?4"p???S)??]ݒV?0-γ?1*?a?+?}qw???8?i??3H[??;ѐӺ/YUG??hM???cSr??Z??r???4?b@I???!͵??}??w????q????D}$z4?J???K?neF?S?
?$?YN???"d?C?ht??EHP?\??眿????
ͧq???q????o??(?R-?\f?pP??E??e?y??r+?L??k?ɱ?~??4Ky?7?XD???K?h?H????=??0G?????K.+ ???rϑ?cب?J?C??>????i?>1m ?E|Zɇ?"5Ŧ?C&?#?NpP?Vo??d2?*?b%{?\???o???????K???gS??*&??YW(OE [?-??С??S???&2c??ǳDDa??_qh
??xgj!?<$!??~?T?Cƛ?4Z?'h??/k|R?M?r,?????f?8??j?؀b?6??:H#H&?Cµ?eG???B???ߧ*??t-?"@k?L֐?i}_8??S?Y?<?.???%?P?Z?p???S,?zi?#?m?+N?????zss?7?`??      ?      x?????? ? ?      ?      x?????? ? ?             x?????? ? ?            x?????? ? ?         |  x????n?0?g?)?,?)?Z??i?9?%qR/vp???+;?a߹Y?^????????M???????8?ݯ?ص???H?b?Z??	?fV?OVʚs?ؠ(?Z???>"?? P?ZDO;??K?%P?]??+[???dmX8??>.3????qx???????=??D.&??qF8yH?BH?k?B??H??ù=??E?A??1X?RL?2?1??^?'W??-????????{?ݾ??#?? ??L?s]?S????ɟ??0???u??????܏??v((? ??&??@?Q*X???ꕆ??0?m?????%D?uDx???)Q?"?'?Z?HW??H5"+?*???????K??            x?????? ? ?         6  x???KN?0???s
.?t??{@Y?J%??6????nB???U????Ͽ???????a??q?>u?cZ??f?L?V?n\???OD4ߠ́??۪??X?AT???AʅP+9?@?????????j?EP?4???n>?M?f<??ny??];??i????%??????e??F7V$cL?I*[d?,??
Wt?BL???g???w??????b?hJ"?ë???J\J@ktR???Ge? ?0?8z??9???v????)?A??r~4/S?9?rzo?	??h`??A	[LeU?Ъ?eE?
??s?6M??%	?            x?????? ? ?         a  x??Z?rI]_???8?v%(l??vtw(J?,#  ?۳??lg1˙??rb??ѧ̹??킎??R??y???f??~???c??g?z2?D??֓|??$???mU*&D]??kA?H??.x??w?[9??sR;?l??k?"??s?gl?V?|t{??ۛ?????????w<nno?v{?߯?W?@g?U^???핔\[??&?
`?ϥ??(??x?K#1? ??Jcʿn???ۛ???\Qp???e?Z?@TU???u.<??k^?????6?"(,?Y.?q?`t??.???EGq?ͻ޻?>??X3#???y????[1}U???????K?q??BcL???A,90h#?P?
?q?x???h??v0c?!?v2???XЃ{ ۛ??||Vq .'??Y?`!?b?BV?sD?(E?ǂI-#)3 /*i?-??]?TG???zYf??Z:#? ??*?!`a)\?s?????҈???f?վgOx
B_g?eR??%?-4??AU?R?c8I??,_c??E???>?h8?&4v?"???O?e??%?^???L??"m9F?4??B?tT???AReX??Y?
q??b??HAD?+?mf~?bou5?kjjo?2{??a-R]-1?G0 ??k?(?zB??j??"??5?F?g??G??m=??xk+?3??i^>???q?Oγ3lpQc?|?Bx%???]+??? 6???[?v?VE?CpJ'%bf?2N??H?=??$x??"ܳL_?W?l:?_?R?/"fP??????(??5???E?!?$?:?R	???) ?űU]??25i?FJ?p?	pG????^/?O?5???k+"<ךoC?*?a8?kQ?Q1Ti??_Ͼdy?O??f?T$??
b?E????T?Kb??????:PC?b!8G????M?A????ܢ??S????????Ծǟ????dA?? x??<k)??#????l?g???v?_???T?z???bk-?fbQ??>?KC<\?>?A????E??0?5X???,?&??@???S????ߐ?è@?B?0???i??????ʖy?Z??b5?N??? IX????øS??u???"y
X? a???/"2_?|
??B?O?r??????"f/?癀???A?)<&(´H)돳?|?e?OfTp6/??V???7l??Tj*???l9?.у?(?:7V?Y??[?rIm??L??0???U? ?????4?ʍ???^rH??*\??^?Y+?Ry)T???=?Z?R?lnٵ3???????????E???rPH?H??0?1?,?)?1?D@????`P?A7A???{E?C???F???eQJ????'?s??Q?????/wA??p5?5?FZHk??@$ ?Q@[?7?堊???T??C???ފ?Nf?B????}????1?%1H?d
E=???!
?P0j????\t?b??!<1????*????4~WQ? ?\]?l
?????\F?AE=J?Ɗ??꽢"?????TU?h
H?<=ŋ????p??vY?????T??????1ZI?EA??T?A?#MRFH?M??{??36>j??'+y???????!??ך?{?taڞ?r??(?B @G?0???5-	C?z2??B????뱡???	Ȗ{??f????"?L?̊??A?9?kYs?????3???-RUX?<?+??F4?)?~?\3u,ph??b9?ʖ_?"_~?/?0P?>?X????@|???4?z???C?????#U=?%Q?dQ<?[T?-rc??`?Vx??)?:??f?9
y||t҉?????~??e????jQMʠAJ,?Y?i????5D?(?N?>??RCc!?hC? ???9[ll2g?c?9_"d٧???5>?Ȭp,?9?dٗU??r6Y?_???$?`???zM^??߮?X&??Iw?Zq??NN?b?KY???:q:d??I????k֌????	k??}o0h'M?N???4??v???~4?:?o?e???*_~~^?\???V?@}V!?IQb?Uu???sJ)?|h?P??H?T?蠩#6?k?I?.?ף9???1X???|z}??C????+6_?>?v?E?1?$#{?9i?0???4}u???'?????????D?8?h?5??s??Vu?\8?2PP4?Ɛe??A3??????V@??ʁ@????)A&???i2???r?;/[?"G?q??T?f??Vy?Z	2??z!YI?(̝?P;??y??H迲`"?5???Ăa? ]?<(????<	?/??|:???|~?????y?~H??N???:?^??I?????OW?$F?RR9?2?F??9u?f?O?/???e?)?'S???/\?S???n?a????;?h?;?A?e??????	?a;?T2?}????~<L:Z?XT?*\6? h????ך??????w}.x	???v??~?????Nj?????{?|?.???????߱??T??4'τ?O?L?/v5????&??*??:???\r^???Ly?pd??IC???r?yP?_?V??(??F?i??F??زtr9[E??Ӳ????V??}?6Njja?Ӵ?b?A?}5żX?ˆ?I`?1I{9??/K??????z???]Ϗ??p
???9UCԘ?.&/???.M?Ц??Կp?k?r?C?n?? ??`?1?с??s?bÑ??.??2=YQd?t{iu???hj??]??d???x???Q҅i??"??픹2?%;P???j?A??Mea???h@H'?W???e??v???BZg??5??/&#?????o?a?#d4?M?MH??y?????n??????ݍI?*&??dV?c_??}(;?q?M???q>?T?^JK?>;??}?dF÷??Ym??ƻ?I?Y2??Q}???u??b??x?4?S45??Ip??Ǚh&x?jk?b$???????5ʝ?hyAG???t&;O?6t???☢??g?1?̐^o{?.kt?]???;g??T?9?7?&E????????m	M????A?	ߝF?m??l????+??lz???zK????^???H?5G]Al?ȡȐ?k`C+C$?O? ?`??F@ ?
 G?j??y2?HDGI:??=m7?
???u+??!ݞ"????v??z(???E????D?(?=Y??W??m?wk?}?&{?iw????C?L???'7?Պ?X?-Ŵ?C??5?g?"cF?2??C??~?H?F<H????@?v?Z????!?x #?6w6JEu???@?????-?}@˶????A%?A?|?>?;p???PC01%?'t????LK?'D???`???u?(??Y??4?o??}L?0???v??G??8??Ѵj?l)?P:Tr??PN?ZFV?ɄV??gu?? m;y9|???6c?Cʶ??Q?>????U?M\m???ף5LB3????T??ZՅ??h@?9??u:?t;????\r?????A?@:?DI%â8?h???LmiR3y??+??%??|5ZN
??7N?!?NA????	??ui?h??~?fht??hk?????
??].?Řm`???bG*?u??V?Mf????Na???A?o?f?6m?D?ǔ?0L?)?kw_?j???a5??ƴS?'	?? i/.Aym?U???????c???f??^8E????#l`?u???9̃z=G?(?>??+}???P,~El]??ۭ.1v?,?\???to??q??}?^????p?;'%FGɇ3@nz?$]`??܀ݞ?n)3s??C3?!??L??է?S?̤?(?R?!M??.R?]?? v/??[z:p*?%9I7?D?k<[?7?w?`???0??n??P?^:?D	'cF??K?b3???&]?h&??Ռ?I??Z?R??c??            x?͜[sɑ?????@Cu????o??wV?>?z ?E? *4?~?S 	^@p?Ќ3DP???<y2+{l????ϗ?r????x????t;???????`????Lj????7?T_?u%kL첏>?????????Sy?&s(/s???M??
?!?.6c???^???1`R??????5?????S?>??OI???P\hXM?.? ?MWB?>d?읷Τ?;???K?A?7???P???U?)???^sW??%8?K??).%,\H??a???hP?-1??9?Z??|3]?c????^Lf??><B?????lNO??'S&???5?????L+Vi?֧Z?i;jb5ΖS??dc??????Ç?E???W?\????7??|?]???8ܣ??.?>>bގ??U?r?2??s?lx(ܛ?/???ٌ????
6tl??6??d??"S??E[?>????k~	????Q?̆??긃5??͵sG??[??ͪ???8D?X?Y?J??L686?r-<X?f5?\?&??sbR?????e?BP?????T??g6WM?>??:?8gs)??B?[Y?Mg??c????????bp3,???&??F9 >ˆ?5?`\??$0???X??g????u????sy?7??ns"\?;?v,l?'???s?l?%[?8??!?1?i???e??+L?h:${P׫?????b????^G?,?e(?$g`"???5?: {??Z??R?d>??f??Ѝ?#T?ݭ??q??????"?n{ݳ'?r?;??_xs???{?g???P?~ҡ?&??-nٽJH?v?? ???]?\?	z??&B&?(?ao?????Qa??z٥0DGR???????Yچi]???P??????h?F????95&(B?N? :?5!.??ZN?X? ???=`???????wc ?O+???v>??N??a??????????n??a? ?\7a???5?k?r\???qE??0?D???;%4?m??l??V|()?%???=???bu????%~Y]??~?lǛ??~????m>?G-??2?mYqL??L???V/zm?6?vgGXdN??µ????H<??1?u?D??}
?-???Q I???Jz?"?"ĠE?[?.?b?B??"?WKZDE'RX?j?5i??~??l?ݟ??o??'??v??;???`o??e?<?
???c?a?Tm?_]<'?7JD
?Ͳ??7?3?0????6?????3?L?H?}ތ??-D?!??_??b7Q?^!j&a???H??&????@??cp?`?????v?%?9???<?^??˙`wJR??!?=$?D?"?k?2!V???'?$?i?+eG?G?`?fM9z?yB3Al??+??????0?:J???K8,?SU?2"$?z1??+q?K??R ?Q?t$?"??$j? 	???+?=?'?0]??????ϫ?_(X?a?J???P??9??'?Q-?BI?!)?	?-dH?:?<??????v??)-w?ΧW?????x?Zo_BM?M???WUG$??t?!?<?F?	 ?>*???%?_??%??1lH??m9???B???׻}?M???j??IH????S?g|?G?ڔ$	?"L?ak-?l?F??W?P? aI%}4????????Kϙ???KR!o??%?"E?t??=NJ ??$8?]?jhv?vNd?T??,(5t??.?_??	0c#+??퀌`??UD???g?N?K?????Y??(*L?j?h??h?u??"???Ȼ??%c7{?}?^3A냍?cQA?wBK?58I
?o??L?.??B±P?uO$D?{B???WPT?t=DG?<?"Г1? ????ɌL??????lj??9@J??A(?Ip]哙?l?^+(|?½iLo_?Ñ(U?P?? a|?g#?4??*?%???l?hc9?5?,?t	?D>????G?_?[T?f~????U?;nA?7?y?????|?????W:'Riܕ*86?Zg?B?P?=8t8=P?T*Udrn$)?y?????+????^Hn??g?,K?????e/Y??C	Y?D?8o??6??:?j??jy9??Х'ڠA??Z?E???mŢ?t	UAH?Љ(???|?A?P2OYjG2]m??J?N????cn/??3˜??Ͻ?????Nڇ?+??j?٠???
?)??MH?l>??OK????,??w???a??_~??.)m????1?/???H2 ?~?H?
DX"?8+???N?=?7?%?y?j?x?\݌???????f?%K?????qe?5{????Ys2?WMA????A,?z)?? ??S???"z÷?@˝F*???-???}^?g???r=????6;?@?j?BJ^?T?()赈+?Hl??5??idX/?????Z??Ȫãq???^?T??V*?泱???1?/T?ɐ1D]\Vo"?B?c????u??>??ǧ?F???7?@F?St???W??VS?q.??Y???Y???I#N?Q??2???OȈ??dxRYc1n?>??5??4H?h+:?(?_????*I߷x???Ͼ?던?8?ES????ƳFgt?wo??(I??j?V???B?????yx???F?????????ԲR???	R2?????W?+?kG?.????>??r? ????!?Ɂd>?Kq??}??O東b???G}??$fGEa8??k?"?'????{?????@[ko?uԀ˳q:cH:??vw2U$?x?n?֓,E÷F?K=V:????*m?wjh>??:7??C?LUS?d?????)??:???U?ͨ:N??T??Da?ȼw쉹)??M?ҀN?ML?? ?"Ÿm'F???@?ހ?O/?Ϗ???b+{??L?C?#?E|?I8?{4?A|O??????*???A?űMRd?<?Ѹ>?W?????	<??{ד>??n=w??q9o??޾??Å??$?;`E略??ԕ??K5?7+%?x	??tj?vD?]R????n'???~c?ic;]_??SP?W?1G?Q{_]H?+A}?u?~?'9?T@?????H$???F`:PN???룊??e??H?faH?Q	*&?4?b?t??E??&???A????8?DOR?͇?,???l?aT???F??n??R?z(?$᳾?f??Ih?>?s8????9Q3Q????? y@S???c????J??;?UZ?*?3I?????)?G????P?z???LCb??~??Q?@?f?Ԑ?9܋?U?S???X4?cZ??C8L??(?1kT??xl/?
T?N4	?$?f???*???s?arџ??뼑?O???l{?u????o ???v"g?	*???E??>n6Iv???ZX?׹@???ЀG??QA8XM??nȿM,?r;?^?
 ц?f?f??]?tc???:??NU?????6????.?Z?G???+Ms????S?3????????????????T????k?? ??i?LXVM???m????@Ǭn?.X#?z?N??JRw????g?|44??b?[?H??>=y?-F?bg+?ѩMҤ??,xA???:???vm??h$??z??,?{?X????O0?Ϛ??mOE??P??5?(8??X?o?UQ? ?c?5TbB?Ym??????uwD???*?<>
D???f<\??????*m
?<?ѻ??/?Ts9???}?S?շ1EL?YM?IJ??,U,?}M??2?j??Юv"?v>?Tz?|p?c?wuK????rۗ'S?߶??ʷ??2~BfkΫ??f??,?T?F?#a?21%?D?Tﯝ??/?	N???K???n???r_?+j??]?%q\?2?+~:5????O?<5???	???aȚ?o?^??Һ??Z?ϤMn?k?}jx??΅4:??S:?????Q?!j?e?`y@????Z?}y????r??Y?]jN?h??XC,?aou????@x?L)T?oMWx??e:?wuhq?Zv?d?)?'Vτ6i?$???g?Xi?#?L
?cD????y??^?:ݎ}5gB?F?2??5Hx\???JTi?z??֗??ݬ ?  ?N?8$=
?ܦZ??6???g~??a?Z?????N????hM?E?⚻???GUd?Mh???t??~[???]??Wsk?????O/醚T?޻??P????s}??T?"'??@??z$H?'h
??|?;̭}=S?
??????V^?<?U?W*ԐH?? ???*?????^랆?ݴn?'??Z?4t?-Yϖ?t??撤/???R$! Ǩ??(?Q??K????>?=/?G??.?Y?$??????a??55ʹӑ$???/?;R??M?{?????2??b???|???5p;?l?8?ǏzЪ??????h9?{>?b?+??V<??Q?6U?\}]5?	D???Z5×r?!???\X?5???* ?O_??????b??????~1m????Ӄ??L*???̺r????3?Y?7No?-??Ь?[?O]???????\???9??h)_?r넝??E??/˩8O??>ui??T?????}2??N]ϻ	ә?_m??xPӜ??w!jl,?
?O??G? ?|?F>??ά??T;??{{?/,_χ????l5£?D=?D??.p?????=q$s.??1??1o??N?׀oi*?PűvO??ҽ?y?,=???????QhR(v?0=gH?&???8?Y?o????&}???s?Y?         ?  x????n"G???O???????E?Y$R?(???a?1#?)????%?m?p0?jӅ???9?VC???q-?aZ'??a???߷??0#?Y{? ?FƁٓ????????&,?Q? ???"N???????a?X?6?Ű?>??u?k?????O???{Wga?n?`??zA?R?ŁЭ?+tz?OuY??Y?$???????3<???@?zΎfd?!K?7?m1?E??????wp?
Xvș?ga?86?b	?"#???Ϻo?p9??[p?Ń]???d?V̪??????~?}??;?d?{T\?4?J?j????'ڰ?,????u?ڷ?a:???v????|w'?D??e@?RL??0?& 	??쥔LW??m>}??FE?0??!x?L?D??2? ?l??޹?4??15???P
?f??????????0???C>????M?E;L??.?_m?ݜiaȜzҘ/3D??S6	S2a??`??A?i???~????u?N_fˇ?4??????q~X??(? ^s???7?T????S??g?ű????o?n??????J??h?
~Ù??yd$$¨???8sV?7???ǻ?~??Uݴ?̖E^?1扲??(F??3O??#h#?(?]-?+??nF^B-?(??J??fEG]o??]????y?ݧ?뺿vD
?      	      x?????? ? ?      
   k   x?=˱
? ??Yߥ?ֶ??%???.?;߿rh???k?Ļ8?=???6\??,????\??{?????d??Zǟ?$??B?D*????pD1O?S?^k??"?+?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?         9   x?3??())???????K????L?K???/N-*?LN?4??J?;?e8M??b???? ?-?         $   x?3????ȋw????L?4?4?3?45?????? oTo         ?   x?}?;?0k?\ ?^?!?)??H?4ı??c"C
noI????? &???&??%???z???V?ʢ,Y{e?)?e"?QK̔B?$??l>?7aY??6?xNh???????k??K?e\?S??:=-??э????=MA???ET?C?m???hE?a:????m?9???]            x?????? ? ?         G   x?3?45??())???????K????L?K???OJ-.)N-*?LN????T?RU?[?????T????? ?=         F   x?3?????())???????K????L?K???/N-*?LN)@?)???MM???K??/N.?Jr??qqq ?|?         l   x?3?600??????+I-?K?Q?MM?L??KUp????L?A?!?H??\Z??ZT?E?1H?1? 4(??(3?*?*???hqf??{e^jr~N~:6Sc???? r?/?         ?   x?}??
?0E??W?4??Gݹ???n?t??:?$
??	?R
?.s?eR6+?y1?R?j?6?ђj?'?4a??~4 [ϛ?r?ڝ?]7)?X??t2????	m???6?2@g??????`u???Eu?|I!??4?AO???D?{?Z?0w?V??)z~?Ȅ??A??T??g???X???o?y5??? ??]            x?????? ? ?            x?????? ? ?         ?   x?3?ts??qu???w?p?s????????s????LvJ-.	N-*?LN?45?4 ??+}?,??d????\?$??b???.#?????ŜC?=RsJ2??R???s???1j?nq^~nj
Ȋ=... ?><?            x?????? ? ?            x?????? ? ?      m   ?B      x???O?/?+?52  ?g      ?B   &  x????      ??T???H???O?-???m???$?,?@XON??RY*??-Z-{??[`?????f{???>%?-g???@  l?????{???jݘ.????AY??n,Ov???65???f??Ȍ??M)U????VIl6??&h??t:n
[?+>?U??r???ak?X?4k?l,??z??>OX4??Qԏ???,a?x2???=x?x?觓?Y@?j???=?A?????oj7IS7B?z[[()p Xj?z`? ?$k!??/?+0??????0???i?<s=E]c?\??QWRl)???l?^??u5??}E???55???W??#?z??=ܕ(Q?R??m????o??Oz???M????r*???qJ????[?ͩUe`?7?aW?=?0X????7???*??#"³?$>??
v?J?D	4??5(ʣk?0??C??????BӨ?;?'s|q'5/???	ʱ'?3? j?ε? hʕ?5?&???Z??k??D???Qcz_4ׅ?
\??N??ـ-422c??I?:~υʯ???Z?????<?0?B
??Q$$E.?=??iB???av??????y0)_??R??A!?~\????q??^5?Ϸ???ug'a??u??}?O??l2????+	???;?:??ZY??Gg@?ZkUX??w ???/??c??u???????g7?k??zp?=????Go;O?????@??$O???a<???????ة@?(L=I??$s4"??????_?*Y?U2????,?׽ws?1$???`|_9?n?  ,C?'      ?B   ?  x????      ??R?n?0??gKT?ةU@?H?0?P$>P?ZbK?????%c???Apwgvw8'b?jo،?%Y3'@92!??,O?:???T
s?1??#%^ɱ??~|&?sÒ??????6-?Z,?ع^>?*?6??X?? ???`?>???.)?j?}?????>)i]?aU?X-?7????7!?]?????ë??;?????u^ܤ?|^??l?N_34"^Qw?]?wI-??ހ????Y??+H?<?KC???=??^?&?	o???ӉxD??3$???H??Pm,??u?c?EN?JKݎY'o???4??XG?E????#P?V??[r?b???z-?Vg??
?Y+&S?rϤп?????_?E??A?1<?????@?O??k?????'3 Y?{کw?̯?Y1-p?터Ɖ=F??0!???ޱ^??p?ՈNķX?0K.v$?@?????H?d???V?PpC???bF?/??q?L  ?E??      ?B   ?   x?? C??      ?m???0G?J?9H럥???)R\J??	m??Jr????{?????=n?`#=Bc?q?P?1???ّ??^????@qp??,h???j?O???j?Nvԏĝ??l:?U١?j????M?<[g?Tz??_?U??`\???T?uċ????$?ߓI8?6?|C?aR?0??_??-?   ?iZ?      ?B   s   x????` ?????X/??sK8":rfF??Y??j?4We?;?9?}?>???Vx?/>?`?K????TE??s???Ȭ????Ty??S??){?w+QjΩ?{?K??}~2?o?Β ? }?+L      ?B   ?  x??&??      ??SM??0?+??l>?"V??[?VB@?ˊ?O??MlklB???8)?v?VB\???ޛ7>Ho#հȕ|cjM ?5???au{??'@?Qu? k???'?}??1mnU?ң??ݏy?]?????j?<ኡ?ʪ\?k$???????/????e?a?????j?&????t?????࿺ZfWuHƮ?_?A?w????]?T?4?dh??|?!?9????2?o?e_6g??-??Yt??8?(???)!A?N??
?C+?d?)
X?S&Lv??????I>q??|z{????F??K=/?a??8?N[??<?:`@k???????F??9?ͨ??Y?*+????,_?????`?yxQ=???[3Mv??Hr????&Z?E?V?^?????ׁ???j????^|?DZ???!?=??|^?yh?\szH?%??2?S??^??/??z?  ????      ?B      x???K?M?J,?P?O?/?+?52  K`?      ?B      x???O?/?+?52  ?g      ?B      x???K?M?-.-H??,Q?O?/?+?52  h?l      ?B       x???K?M?-.-H??,?T?O?/?+?52  r3?      ?B      x???O?/?+?52  ?g      ?B      x???O?/?+?52  ?g      ?B      x???O?/?+?52  ?g      ?B   ?  x?{???      ????n?0D%??	q?
(?V?*??v??In#?"?RE??5???+6?b??g?????)a5t@
???`z??V$&??x???b?'v?$?Z??"M{?10*?L?&<?Ƥg?V???|L??Xǜ??Ws?jJ]?dV????BsU??i?r?e??d????`n=1??5?B?~e֦?^?h	??H?h!???Ў???t????2???9A?5Jx?????c"?g	?$4[e????N????3l???????+?/٤?J??V??????????΀;M&??Os??\i??aԊi`?H\ui?N.??|?>?=??y????a{8?sgL5p? ??E?ɍb??i/??	C|??R?  B?      ?B      x???O?/?+?52  ?g      ?B      x???O?/?+?52  ?g      ?B   ?  x??/??      ??R]o?0?+?^?D??&??Z??`?[?٦?dP???????`KOw?Q???K??X?n?h??N???3?؄989?=3???-aЀ?AE?Jt??%:?J?O??\?q~<g???`Ó?z?Oת??R	???w *??T(?
?MԨ?4??o???Q}?RG{???F;?hE??ķ?8Q(xC?C??1???
S?? }?v??p???????_??~A?@?=???	?h'k	Ȳ{2e?Z???? O??3?{W???b?H??????Zj?T????1𕦢??J? [??2?8;?Up??T?8>??8^-<!ҵ?;????????H]z???Ir?q?#??T???xy??/??/?]z??p????7?? r??"???q?L??4N?$???C????CS????????/b6?σ???{??#8??K_?o1??	  ????      ?B   ?  x??M??      ?ݒOo?@ſ?j?8??1?!?$?l????o???B?"??`9?T)?!R???0????}???|	??^??m ?˨??	Q?.??VVj?2B?????'^?J?f|C?`pqc[dYo?u?5??N_?;?d_\?q/s'??Y2!A?Ы(uTc+Z-ё?9[???f?9~??$?)[??Iyyq9O?O???sk?F?<?VZ?짊;&?f?N?ʃe??̈??#??~J?V%??*%?|?,??(#??P???+R ??v??qE?p?P???B.?Y*???g??L\??+???6???F???E?wS?gr?f?Λš
?:?r??b?K?.&?#???2?&????o??QŁ??/f?Hxg?c?-9?v????$?Mc?x?l??GlO?????.?t>ѽ9??7q]?/X_?\?~????  ?W??      ?B   >  x?3???      ?}Q?N?0???&vB"ז;=?zp?MbH??????;?JiAn?f</?d??c??????`p?<???4'Y???E?Cs9?)?Ln??J)????6S?v9?Fm??˅??"?]W??l??X s?4?O:??ΰ?|Zp??????)`.??F?,??w?k]h]???&?????%?bu??J?)o]V??ӫ֕?#|?Q4 ?N7v$8??|?????e?9	??fS0?¶`??q??ZI?C??????<?L???57?PC?U?D?,?T9s0$?-???3X????}V?????+  x7??       `   ?  x????      ??R?o?0?W,????`R?З= ??I??M?q???cG?KӨ??Ηt??$P?)?w??~?:?&Y??դ??6??X??-??<h#???@?(n$?G?+???.E?e??m;m??1m??b????T?^???j?)?A?z??3??"??k?Q?Cejc?1????g???l?g?Z??D7Ƀ????oG?]??Og????Oz?N?3????o??F ??Xd???P<?i8?)????8???4?5v?v??1??Qձ?b0??>??BT ԗ? @7??$4hhz?f([?Oj,????l6vµ7??????>S???⮠Nr??.ŝ+HY?HmbR?h??rA??W??i?F4?&m)u???8cՖQ?V??B?$2R???|?#?;?1????і???|???b??]??}?^l????J2^J??beB??D?`??^?;?Z????t ??C????b~?x3?Z?R_???1)u?0?????? ??k#O  ????      `      x????s 
1      `      x????s 
1      `      x????s 
1      `      x????s 
1      `      x????s 
1      `      x????s 
1      `   l  x?a???      ????N?0E%??M??`?*d)???u??ȱ#{?4???L?>???-ϙ?w?́????є?V?S?
@6a{d??(??T???)S?????`_h???,G,W??u֋к?ϖ?%??X?5??|????Z%o|? ??NI?8?#??4??HyCi?%ԟI?"N?1k'?r????E??(?;??N???Q?>??=t?"u??IZ?BRN_
L????teP?Y?i7\??C?"?U
Cv|??;p^YC?,????^\?nK????{|?EC????WH?TN?Qv?惦?r?f]?w+?)9???-mJ??Sc(*m??%Զ????ɐ  ?s??      `   T  x?I???      ???MO?@??
?s?z????&^?ċ??t?~ewJ!???Y@????v??>???D?	??6eoB?0dC?#?YD?m??,?PS?V;zS?c?7???%k???????&wa??EQ?}?F/YU6?j?????0?-O 46R?!씄Xr"J??2??5Vje?̥3<??a??@]rKN?W??X4???Cr?¤U?2??b}?Yɤ??+??4q???AlRp?Y??{?R?H?T?CD???J?~կl????Vd??????t?ϕ?8iv???dl?4B8??yx ??$??w??*ջ???8????Ѩ8	??'?{??#  ?áU      	`   ?  x??)??      ???_o?0ſJ?g??]?2^x?6??$??V?un?'??? B|?]'??gU??8?=????w?Cp?W𫩀M??Y?Ɋ??t?J??`?K??s????^ɶ46|?g+?j??f?n&C?>JӔoWX?{6?V??w????h?U? ??
jVi[d??3?Yo??JU[ɕ+y??/?u%??S??X??|DH?V?qԈ??P?=ʲG??k4??7????L??҆r???~?(>ЮChɠ?ڰ?????m?si??W'?	!`??(???δտ);IP??T?E1?????"7??`;n??h?b???P???7???4??Zi}.???_??????u??`q????^K????1??s???墦־y?e2??k!?3?m{?M? ???ə?OJ????>??&??s?<j??q?????9]?6?.?q????#?^?D??H?'Ec???c?????`_  S??l      
`   ?  x??w??      ??RMO?0?+UΥeR??'??????!K#ǝ???w?u@%&.?"???gc?????Tf#<X??%OB?7??i?	?*Ka=?ʶ#./|*??k???ӤU?rL??Y?{?'?K?Q@??ņ?M4-S???SG1??c]6k??t??(?QF????T?|????J???m???$9???0X1U.b?u/
i?ף?٥o??1??g?GB/f??_????????Ru?s???i?? g ????yDm??????A???&)?f??H?M ?.?[?yf??Χ??܀??????'o???`?&ٹ?j???[?ӵ.??.??f?ߝ`?K??tz	y???????'??^@??#?@?4m??wG?>  AK??      `   ?  x?{???      ??V?n?@??=;?*U??=??????b????]wv???Y?`??*93;??ycf?֔??? ???2v%?R???h1%)?e?6
?w??Xq6b??i?ԅ/?????!h?Z???4h?t??pB2???z?H|????A??ϽV?ȥu$c'?T*?j?-?R??&j??>S?C???[??dS?)??`??)???V????Do[?I?#??mk??3)?0F??P	ژ0G-??
?i?C?Z???b"?T?4h?????nrNH4?:?
???(??c;-?9?S?9?'Tkd??I????}?IQ?????;}D??ݢ}2l>5??5??Ku???I??<?? ?????ߏ???~WE?????؂F???Ȟ"?5$???Kn0X??e?~w?=RBǿ???K?O/??O??W|?e????J??F=KkC??%cpor???_?????l???,}uk???hw????n^V?{???jJ?M?p?}1+???Z9????X"?l*?@sǩA???w(?t????g?7?b?84??2??q??6??;??y%?|$o?E???dW????\?PsI褚?oL=?nzɯL?L????:M??D??̰?"???	  ??2?      `   e  x?Z???      ??T?k?0?W?>'V?4?b???~??@??????XC??tNjB????$?	?t?N??=??xۻ
?C?`k??	CxAV??G????8?PS??:)iI^?2??k????????u{?-?K?ҢVOls+%|??????[(?ö&)w??/??&)?nUr?J;W???8?!
???-????{M?e#?????(??7?ۻO??p>?1??x???$;??}??f?/??@??%???????????H??N5?KkX???z?H?Q?V?E??V:?A?W?;x?F????y
S#?V(???bek??A???9?????.????c?<?&H?L!?-<?q?g??????~?&???F?Ե??ަ??7nSY???+?I?+??QW?:???j??????<??b+k|??Ku#F9??/???Y??,t#*?:#?a??j??j??G??	??? +FdQ?{D`Z? q?G?J蒬@4????/"??2?Xp+??dC񸿼z???Eq????lFH/&?Ux??Z?@?F(O?k?$
?_揝1?DpZ??~H?8omb?̧???M?.,???e??A[Jr???Z????h  ?I$A      `   e  x?Z???      ??T?k?0?W?>'V?4?b???~??@??????XC??tNjB????$?	?t?N??=??xۻ
?C?`k??	CxAV??G????8?PS??:)iI^?2??k????????u{?-?K?ҢVOls+%|??????[(?ö&)w??/??&)?nUr?J;W???8?!
???-????{M?e#?????(??7?ۻO??p>?1??x???$;??}??f?/??@??%???????????H??N5?KkX???z?H?Q?V?E??V:?A?W?;x?F????y
S#?V(???bek??A???9?????.????c?<?&H?L!?-<?q?g??????~?&???F?Ե??ަ??7nSY???+?I?+??QW?:???j??????<??b+k|??Ku#F9??/???Y??,t#*?:#?a??j??j??G??	??? +FdQ?{D`Z? q?G?J蒬@4????/"??2?Xp+??dC񸿼z???Eq????lFH/&?Ux??Z?@?F(O?k?$
?_揝1?DpZ??~H?8omb?̧???M?.,???e??A[Jr???Z????h  ?I$A       ?   ?  x??f??      ??VMo?0?/>ӄJ+???J??CQU?{?8?d?u??ة@????| ?n{??͛7??? ???^79?H??+&??F?F??(H?o?\n?0|7++??Al?0]!?=y?ˏ???t?1???/pl?N?²9!?z??d}?H|??=[?N?gÕ-ra?؉(???H????????>?_??y?-D??N???%??`?qJVf+@A?s???????ځ????t?3.?0F??P	ژ0C-???n?C?Z???|$?P?49h?	??x7:G$??I?ns?L??'U5?S???'Tqd??I|??a?dRT?=xyE?N???n?>???_h4?<W?i?8????X?,Wp??	0??t0?GL??+#:????\ٍu???,?g?q2????*?J??[??Uj???!M?א?$l???`?4?[?́???)???à??\?}z?? `}?r??I??,????)Գ?67?nPk?2?&????eQ(IA???d?g˗??S???N???͊?Ċ?6?^?????:*?q??t?w???{BWi,??k??v??????i??j??o؞?Qi{ž???????f}ўmK?@	????m=??v?<??0F?d%??L:?fի??{?^𳰞)??@/?h?????v1?x?
  -K      ?   ?  x??z??      ??T???0??sl??z?7?nma!??KQ?q?"KF?????ޑ?l?v驐`Y3o??ͳND?Q?.?: Y3?AZ2!??d'b,????$hf??`?????#8?B??Ϥ???(=?a)???b???ƶ??,}n)?????_?U?<??T#?|?|?T? ??eN??-?
?????@ۡpW?nU5?C??Z~??>?9????ۊ??]z???p??.??g?
{
Tl???(7??$VPB?ċ9???U:O=ӑ6y?l??J?????Z?`?F??{???k???/m?a5??"?v?)???W&???KU??L???kG?A?:?<s???f0Z??Zfܨ????g??=y}y??䚨A?pdm'??lW?l?T?q낷?O?4N?iN?E<˒Y<?i6????߆uKqԩU<ک?6?"Dȫ?!?v3X???Y?'??H??J??V?+x2M???x[*iz?t??l?ѡ;??U??:???w?J??????H???j?r1`??? t?Yn?Ĺ??8(~[???L8????%?i?I??W????/?????~]?w?,??ҷ???+?4????R???0?z?4?Llƛ?}?<-??K%?n?.???7>??g??M????y?א?s?b??x59?????  e?F?      ?   }  x?r???      ??SKO?0?/9?vHHH=?+Bbp?v?w?H?*q????g?V??????C????k??T?솊?K??SgU?g??0??,
????튺!W?Y*??,?Q?-?;-y?????????HX??|?_K????g?E?p?Qd?`??AŪ??x̤o???œ4آ??z1y~ ?X7???]`?~2??:?<??????MA4:??	@?E?t?????	??z?u?N??? ???Ŧ7T??E8M?rԒ?\?̀?@??1 7?7?z?j̔l?r1f?Ŕ???????<
??9?P?9?B?K?c4밙?I??H%۪?ќ???qs????o?????0?Jz-i-????5??  ???          