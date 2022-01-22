with
    source as (
        select
            /* Primary Key */
            addressid
            /* Foreign Key */
          , stateprovinceid

          , addressline1
          , addressline2
          , city          
          , postalcode
          , modifieddate          
          , spatiallocation
          , rowguid          
          

          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at      

        from {{ source ('adv_works_etl', 'address')}}
    )
select * from source