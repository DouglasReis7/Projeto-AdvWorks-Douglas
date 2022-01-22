with
    validation as (
        select sum(orderqty) as sum_val
        from {{ref('dim_salesorderdetail')}}

    )
select * from validation where sum_val != 274914