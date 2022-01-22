with
    selected as (
        select
            /* Primary Key */
            salesreasonid

          , name
          , reasontype
          , modifieddate
              
        from {{ ref ('stg_salesreason')}}
    )
    , transformed as (
        select 
            row_number() over (order by salesreasonid) as salesreason_sk
            , *
        from selected
    )
select * from transformed