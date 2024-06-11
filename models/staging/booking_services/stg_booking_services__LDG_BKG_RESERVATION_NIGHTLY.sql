with 

    source as 
    (
        select * from {{ source('booking_services', 'LDG_BKG_RESERVATION_NIGHTLY') }}
    ),

    renamed as 
    (
        select
            inventory_date,
            unit_id,
            reservation_id,
            age_classification,
            person_reservation_count,
            usage_classification,
            status,
            last_modify_date,
            occupant_details_name,
            inputted_pass_numbers,
            environment,
            datetime_updated

        from source
    )

select * from renamed
