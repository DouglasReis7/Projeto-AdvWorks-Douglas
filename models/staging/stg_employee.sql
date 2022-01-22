with
    source as (
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

          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at

        from {{ source ('adv_works_etl', 'employee')}}
    )
select * from source