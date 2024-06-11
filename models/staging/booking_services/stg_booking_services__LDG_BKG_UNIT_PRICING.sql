with 

    source as 
    (
        select * from {{ source('booking_services', 'LDG_BKG_UNIT_PRICING') }}
    ),

    renamed as 
    (
        select
                environment,
                unit_type,
                facility_id,
                allow_web_booking,
                is_web_viewable,
                rate_name,
                rate_id,
                seq,
                unit_price_type,
                customer_classification,
                usage_classification,
                pricing_unit,
                perperson_weekday_price,
                perperson_weekend_price,
                unit_weekday_price,
                unit_weekend_price,
                duration_start_date_time,
                duration_end_date_time,
                duration_is_date_range_recurrent,
                min_per_person_fees,
                datetime_updated 

        from    source
    )

select * from renamed
