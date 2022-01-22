with
    source as (
        select
          /* Primary Key */
            productid
          /* Foreign Key */
          , productsubcategoryid
          , productmodelid
          , sizeunitmeasurecode
          , weightunitmeasurecode

          , product.name
          , productnumber
          , makeflag
          , finishedgoodsflag
          , color
          , safetystocklevel
          , reorderpoint
          , standardcost
          , listprice
          , size
          , product.weight
          , daystomanufacture
          , productline
          , class
          , style
          , sellstartdate
          , sellenddate
          , rowguid
          , modifieddate
          
          /* Stitch columns */
          , _sdc_received_at
          , _sdc_sequence
          , _sdc_table_version
          , _sdc_batched_at

        from {{ source ('adv_works_etl', 'product')}}
    )
select * from source