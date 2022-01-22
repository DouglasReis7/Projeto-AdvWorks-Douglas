with
    selected as (
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
          , status
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

        from {{ ref ('stg_salesorderheader')}}
    )
    , transformed as (
        select 
            row_number() over (order by salesorderid) as salesorderheader_sk
            , *
        from selected
    )
select * from transformed