with 

    source as 
    (
        select * from {{ source('booking_services', 'LDG_BKG_CAPACITY_NIGHTLY') }}
    ),

    renamed as 
    (
        select
            inventory_date,
            facility_id,
            facility_type,
            facility_name,
            unit_type,
            total_available_capacity,
            total_capacity_reduction,
            occupied_units,
            environment,
            datetime_updated

        from source
    )

select * from renamed
