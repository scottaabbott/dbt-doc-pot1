with

    source as (

        select * from {{ source('booking_services', 'place_detail') }}

    ),

    renamed as (

        select
            place_id,
            place_name,
            place_allow_check_occupancy,
            place_max_occupancy,
            sap_id,
            place_address_1,
            place_address_2,
            place_city,
            place_post_code,
            place_phone,
            last_modify_date,
            datetime_updated,
            environment

        from source

    )

select * from renamed
