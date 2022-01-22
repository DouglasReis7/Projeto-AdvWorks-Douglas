with
    source as (
        select
            /* Primary Key */
            salesorderid

            /* Foreign Key */
          , shipmethodid
          , territoryid
          , billtoaddressid
          , shiptoaddressid
          , creditcardid
          , currencyrateid
          , salespersonid
          , customerid

          , revisionnumber
          , orderdate
          , duedate
          , shipdate
          , salesorderheader.status
          , onlineorderflag
          , purchaseordernumber
          , accountnumber
          , creditcardapprovalcode
          , subtotal
          , taxamt
          , freight
          , totaldue
          , rowguid
          , modifieddate
          
          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at

        from {{ source ('adv_works_etl', 'salesorderheader')}}
    )
select * from source