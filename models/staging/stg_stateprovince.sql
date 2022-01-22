with
    source as (
        select
            /* Primary Key */
            stateprovinceid	
            /* Foreign Key */
          , territoryid
          	           	
          , stateprovince.name
          , stateprovincecode	
          , countryregioncode          	
          , isonlystateprovinceflag	
    	  , modifieddate   
          , rowguid

          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at      

        from {{ source ('adv_works_etl', 'stateprovince')}}
    )
select * from source