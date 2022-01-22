with
    selected as (
        select
          /* Primary Key */
            creditcardid

          /* Foreign Key */
          , businessentityid

          , modifieddate

        from {{ ref ('stg_personcreditcard')}}
    )
    , transformed as (
        select 
            row_number() over (order by creditcardid) as personcreditcard_sk
            , *
        from selected
    )
select * from transformed