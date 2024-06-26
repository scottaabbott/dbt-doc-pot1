with

    source as (

        select * from {{ source('booking_services', 'customer_detail') }}

    ),

    renamed as (

        select
            customer_id,
            account_number,
            customer_first_name,
            customer_last_name,
            customer_country,
            customer_state,
            customer_zip,
            customer_email,
            customer_primary_phone,
            gender,
            account_creation_date,
            receive_newsletter,
            participant_survey,
            dob,
            classification_expiry_date,
            organization,
            user_type as user_type_id,
            last_modify_date,
            environment,
            customer_classification as customer_classification_id,
            datetime_updated as updated_at

        from source

    )

select * from renamed
