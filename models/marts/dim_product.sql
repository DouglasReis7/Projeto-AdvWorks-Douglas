with
    selected as (
        select
          /* Primary Key */
            productid
          /* Foreign Key */
          , productsubcategoryid
          , productmodelid
          , sizeunitmeasurecode
          , weightunitmeasurecode

          , name
          , productnumber
          , makeflag
          , finishedgoodsflag
          , color
          , safetystocklevel
          , reorderpoint
          , standardcost
          , listprice
          , size
          , weight
          , daystomanufacture
          , productline
          , class
          , style
          , sellstartdate
          , sellenddate
          , rowguid
          , modifieddate

        from {{ ref ('stg_product')}}
    )
    , transformed as (
        select 
            row_number() over (order by productid) as product_sk
            , *
        from selected
    )
select * from transformed