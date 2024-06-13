with 
    source as 
    (
        select * from {{ ref('dim_dates_linkedIn') }}
    ),

    renamed as 
    (
        select                     
                    date as v_date,
                    day_of_week_name
        from
                    source
        where
                    date between '2024-06-20' -- a Thursday
                            and '2024-09-22'  -- a Sunday
            and     is_weekend
    )

select * from renamed

