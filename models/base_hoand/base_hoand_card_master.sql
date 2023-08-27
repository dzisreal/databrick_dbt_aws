with source as (

    select * from {{ source('hoand', 'card_master') }}

),

renamed as (

    select
        cst_id,
        card_no,
        gl_code,
        eff_dt,
        mat_dt,
        ccy_code,
        ou_code,
        subs_f,
        cls_bal_lcy,
        cls_bal_fcy

    from source

)

select * from renamed

