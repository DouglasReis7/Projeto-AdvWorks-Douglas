with
    source as (
        select
          /* Primary Key */
            creditcardid

          /* Foreign Key */
          , businessentityid

          , modifieddate

          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at

        from {{ source ('adv_works_etl', 'personcreditcard')}}
    )
select * from source