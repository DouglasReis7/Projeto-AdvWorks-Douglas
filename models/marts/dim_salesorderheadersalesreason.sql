with
    selected as (
        select
            /* Primary Key */
            salesreasonid

            /* Foreign Key */
          , salesorderid

          , modifieddate
          
        from {{ ref ('stg_salesorderheadersalesreason')}}
    )
    , transformed as (
        select 
            row_number() over (order by salesreasonid) as salesorderheadersalesreason_sk
            , *
        from selected
    )
select * from transformed