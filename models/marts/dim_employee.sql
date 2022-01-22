with
    selected as (
        select
             /* Primary Key */
            businessentityid

          , nationalidnumber
          , loginid
          , jobtitle
          , birthdate
          , maritalstatus
          , gender
          , hiredate
          , salariedflag
          , vacationhours
          , sickleavehours
          , currentflag
          , rowguid
          , modifieddate
          , organizationnode

        from {{ ref ('stg_employee')}}
    )
    , transformed as (
        select 
            row_number() over (order by businessentityid) as employee_sk
            , *
        from selected
    )
select * from transformed