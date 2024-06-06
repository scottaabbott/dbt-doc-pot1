with 
    place_detail as 
    (
        select  
                PLACE_ID,
                PLACE_NAME,
                PLACE_ALLOW_CHECK_OCCUPANCY,
                PLACE_MAX_OCCUPANCY,
                SAP_ID,
                PLACE_ADDRESS_1,
                PLACE_ADDRESS_2,
                PLACE_CITY,
                PLACE_POST_CODE,
                PLACE_PHONE,
                LAST_MODIFY_DATE,
                DATETIME_UPDATED,
                ENVIRONMENT

        from    SANDPIT_SABBOTT.LANDING.LDG_BKG_PLACE_DETAIL
    )

select * from place_detail
