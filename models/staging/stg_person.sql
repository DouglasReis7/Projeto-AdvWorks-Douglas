with
    source as (
        select
            /* Primary Key */
            businessentityid

          , persontype
          , namestyle
          , title
          , firstname
          , middlename
          , lastname
          , suffix
          , emailpromotion
          , rowguid
          , modifieddate

          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at

        from {{ source ('adv_works_etl', 'person')}}
    )
select * from source