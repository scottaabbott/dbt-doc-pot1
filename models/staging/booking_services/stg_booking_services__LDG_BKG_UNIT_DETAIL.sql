with 

source as (

    select * from {{ source('booking_services', 'LDG_BKG_UNIT_DETAIL') }}

),

renamed as (

    select
        unit_id,
        facility_id,
        unit_name,
        unit_short_name,
        unit_type,
        unit_web_bookable,
        max_unit_occupancy,
        min_unit_occupancy,
        last_modify_date,
        datetime_updated,
        environment

    from source

)

select * from renamed
