with
    selected as (
        select
            /* Primary Key */
            customerid

            /* Foreign Key */
          , personid
          , territoryid
          , storeid

          , modifieddate
          , rowguid

        from {{ ref ('stg_customer')}}
    )
    , transformed as (
        select 
            row_number() over (order by customerid) as customer_sk
            , *
        from selected
    )
select * from transformed