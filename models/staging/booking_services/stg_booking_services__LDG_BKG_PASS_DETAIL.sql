with 

source as (

    select * from {{ source('booking_services', 'LDG_BKG_PASS_DETAIL') }}

),

renamed as (

    select
        customer_id,
        pass_id,
        pass_type,
        age_classification,
        person_count,
        classification,
        start_date,
        end_date,
        status,
        pass_purchase_date,
        pass_creation_source,
        revenue,
        last_modify_date,
        environment,
        datetime_updated

    from source

)

select * from renamed
