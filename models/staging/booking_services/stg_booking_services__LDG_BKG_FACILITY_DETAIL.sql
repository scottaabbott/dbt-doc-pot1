with

    source as (

        select * from {{ source('booking_services', 'LDG_BKG_FACILITY_DETAIL') }}

    ),

    renamed as (

        select
            facility_id,
            region_id,
            place_id,
            region_name,
            available_for_cto,
            available_for_educational_group,
            available_for_group,
            available_for_patron,
            facility_type,
            facility_web_bookable,
            facility_name,
            order_by,
            facility_allow_check_occupancy,
            facility_max_occupancy,
            last_modify_date,
            environment,
            datetime_updated

        from source

    )

select * from renamed
