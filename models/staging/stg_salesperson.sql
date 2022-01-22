with
    source as (
        select
            /* Primary Key */
            businessentityid

            /* Foreign Key */
          , territoryid

          , salesquota
          , bonus
          , commissionpct
          , salesytd
          , saleslastyear
          , rowguid
          , modifieddate
                           
          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at

        from {{ source ('adv_works_etl', 'salesperson')}}
    )
select * from source