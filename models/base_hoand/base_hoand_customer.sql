with source as (

    select * from {{ source('hoand', 'customer') }}

),

renamed as (

    select
        etl_date,
        cst_id,
        cst_name,
        cst_status,
        idy_code,
        cst_mseg_code,
        org_tax_identn_nbr,
        ident_nbr,
        brth_dt,
        cst_perf_st_code,
        cst_perf_st_nm,
        prim_br,
        eff_cst_dt,
        end_cst_dt,
        sector,
        estb_dt,
        prim_cmrcl_nm,
        inr_cst

    from source

)

select * from renamed

