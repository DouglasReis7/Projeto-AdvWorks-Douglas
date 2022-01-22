with
    source as (
        select
            /* Primary Key */
            customerid

            /* Foreign Key */
          , personid
          , territoryid
          , storeid

          , modifieddate
          , rowguid

          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at

        from {{ source ('adv_works_etl', 'customer')}}
    )
select * from source