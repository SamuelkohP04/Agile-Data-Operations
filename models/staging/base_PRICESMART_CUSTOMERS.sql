with source as (
      select * from {{ source('PRICESMART', 'CUSTOMERS') }}
),
renamed as (
    select
        {{ adapter.quote("CUSTOMERID") }},
        {{ adapter.quote("CUSTOMERNAME") }},
        {{ adapter.quote("SEGMENT") }},
        {{ adapter.quote("COUNTRY") }},
        {{ adapter.quote("STATE") }}

    from source
)
select * from renamed
  