with
    source as (
        select
            /* Primary Key */ 
            salesorderdetailid   

            /* Foreign Key */
          , salesorderid
          , productid
          , specialofferid

          , carriertrackingnumber
          , orderqty
          , unitprice
          , unitpricediscount
          , modifieddate
          , rowguid
          
          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at

        from {{ source ('adv_works_etl', 'salesorderdetail')}}
    )
select * from source