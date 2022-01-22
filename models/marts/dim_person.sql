with
    selected as (
        select
            /* Primary Key */
            businessentityid

          , persontype
          , namestyle
          , title
          , firstname
          , middlename
          , lastname
          , suffix
          , emailpromotion
          , rowguid
          , modifieddate

        from {{ ref ('stg_person')}}
    )
    , transformed as (
        select 
            row_number() over (order by businessentityid) as person_sk
            , *
        from selected
    )
select * from transformed