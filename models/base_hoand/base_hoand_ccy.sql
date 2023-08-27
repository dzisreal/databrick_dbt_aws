with source as (

    select * from {{ source('hoand', 'ccy') }}

),

renamed as (

    select
        ccy_id,
        unq_id_in_src_stm,
        ccy_code,
        ccy_nm,
        ccy_id_kondor

    from source

)

select * from renamed

