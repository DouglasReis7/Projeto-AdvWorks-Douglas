with
    selected as (
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

        from {{ ref ('stg_salesorderdetail')}}
    )
    , transformed as (
        select 
            row_number() over (order by salesorderdetailid) as salesorderdetail_sk
            , *
        from selected
    )
select * from transformed