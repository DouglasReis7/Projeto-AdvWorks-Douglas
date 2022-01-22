with
    selected as (
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
              
        from {{ ref ('stg_salesperson')}}
    )
    , transformed as (
        select 
            row_number() over (order by businessentityid) as salesperson_sk
            , *
        from selected
    )
select * from transformed