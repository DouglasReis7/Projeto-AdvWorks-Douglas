with
    selected as (
        select
            /* Primary Key */
            addressid
            /* Foreign Key */
          , stateprovinceid

          , addressline1
          , addressline2
          , city          
          , postalcode
          , modifieddate          
          , spatiallocation
          , rowguid            

        from {{ ref ('stg_address')}}
    )
    , transformed as (
        select 
            row_number() over (order by addressid) as address_sk
            , *
        from selected
    )
select * from transformed