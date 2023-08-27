with source as (

    select * from {{ source('hoand', 'branch') }}

),

renamed as (

    select
        etl_date,
        br_code,
        br_name,
        region_code,
        region_name

    from source

)

select * from renamed

