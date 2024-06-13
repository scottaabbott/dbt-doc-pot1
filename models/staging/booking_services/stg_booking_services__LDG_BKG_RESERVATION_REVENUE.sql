with

    source as (
        select * from {{ source('booking_services', 'LDG_BKG_RESERVATION_REVENUE') }}
    ),

    renamed as (

        select
            reservation_id,
            master_reservation_id,
            customer_classification,
            original_booking_date,
            confirmation_number,
            is_agent,
            booking_channel,
            agent_name,
            place,
            cashier,
            cashier_id,
            original_cashier,
            revenue,
            environment,
            transaction_date,
            original_cashier_id,
            datetime_updated

        from source

    )

select * from renamed
