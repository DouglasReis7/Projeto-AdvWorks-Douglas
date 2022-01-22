with
    selected as (
        select
          /* Primary Key */
            creditcardid

          , cardtype
          , cardnumber
          , expmonth
          , expyear
          , modifieddate

        from {{ ref ('stg_creditcard')}}
    )
    , transformed as (
        select 
            row_number() over (order by creditcardid) as creditcard_sk
            , *
        from selected
    )
select * from transformed