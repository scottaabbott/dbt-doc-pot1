with

    source as (

        select * from {{ source('booking_services', 'reservation_summary') }}

    ),

    renamed as (

        select
            reservation_id,
            master_reservation_id,
            customer_id,
            facility_id,
            occupant_name,
            classification_name,
            usage_classification,
            start_date,
            departure_date,
            original_reservation_creation_source,
            reservation_created_date,
            reservation_entry_creation_source,
            reservation_arrival_status,
            sleeping_unit,
            status,
            last_modify_date,
            unit_id,
            walking_permit_adult,
            walking_permit_child,
            vehicle_count,
            comments,
            confirmation_number,
            environment,
            vehicle_reg_extra,
            datetime_updated

        from source

    )

select * from renamed
