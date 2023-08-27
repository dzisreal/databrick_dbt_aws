with source as (

    select * from {{ source('hoand', 'dep_master') }}

),

renamed as (

    select
        etl_date,
        ctr_id,
        ctr_name,
        cst_id,
        gl_code,
        eff_dt,
        mat_dt,
        ccy_code,
        pd_code,
        br_code,
        cls_bal_fcy,
        cls_bal_lcy,
        rate_pct,
        subs_f,
        acr_bal_lcy

    from source

)

select * from renamed

