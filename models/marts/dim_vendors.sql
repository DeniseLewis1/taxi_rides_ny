with trips_unioned as (
    select *
    from {{ ref('int_trips_unioned') }}
),

vendors as (
    select 
        distinct vendorid,
        {{ get_vendor_names('vendorid') }}
    from trips_unioned
)

select * from vendors