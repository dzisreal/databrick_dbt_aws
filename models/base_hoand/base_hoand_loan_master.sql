with source as (

    select * from {{ source('hoand', 'loan_master') }}

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
        acr_bal_lcy,
        loan_pps_code,
        dsbr_dt,
        rate_pct,
        thoai_lai,
        mrtg_tp,
        sec_f,
        subs_f,
        tot_dsbr_amt_lcy,
        spc_ln_idc_tp_code

    from source

)

select * from renamed

