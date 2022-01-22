with
    selected as (
        select
            /* Primary Key */
            countryregioncode	
            
          , name
          , modifieddate           	   

        from {{ ref ('stg_countryregion')}}
    )
    , transformed as (
        select 
            row_number() over (order by countryregioncode) as countryregion_sk
            , *
        from selected
    )
select * from transformed