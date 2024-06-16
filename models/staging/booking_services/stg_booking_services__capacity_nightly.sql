with

    source as (

        select * from {{ source('booking_services', 'capacity_nightly') }}

    ),

    renamed as (

        select
            inventory_date,
            facility_id,
            facility_type    as facility_type_id,
            facility_name,
            unit_type        as unit_type_id,
            total_available_capacity,
            total_capacity_reduction,
            occupied_units,
            environment      as environment_id,
            datetime_updated as updated_at

        from source

    )

select * from renamed
