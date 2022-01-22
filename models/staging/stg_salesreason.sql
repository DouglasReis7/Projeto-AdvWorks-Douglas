with
    source as (
        select
            /* Primary Key */
            salesreasonid

          , salesreason.name
          , reasontype
          , modifieddate
          
          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at

        from {{ source ('adv_works_etl', 'salesreason')}}
    )
select * from source