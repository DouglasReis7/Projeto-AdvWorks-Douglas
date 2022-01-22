with
    source as (
        select
            /* Primary Key */
            countryregioncode	
            
          , countryregion.name
          , modifieddate           	

          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at      

        from {{ source ('adv_works_etl', 'countryregion')}}
    )
select * from source