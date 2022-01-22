with
    selected as (
        select
             /* Primary Key */
            stateprovinceid	
            /* Foreign Key */
          , territoryid
          	           	
          , name
          , stateprovincecode	
          , countryregioncode          	
          , isonlystateprovinceflag	
    	  , modifieddate   
          , rowguid
              
        from {{ ref ('stg_stateprovince')}}
    )
    , transformed as (
        select 
            row_number() over (order by stateprovinceid) as stateprovince_sk
            , *
        from selected
    )
select * from transformed