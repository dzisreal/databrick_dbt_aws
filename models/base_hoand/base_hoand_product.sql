with source as (

    select * from {{ source('hoand', 'product') }}

),

renamed as (

    select
        etl_date,
        pd_code,
        pd_name,
        pd_cgy_code,
        pd_cgy_name

    from source

)

select * from renamed

