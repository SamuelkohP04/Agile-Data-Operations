{{ config (materialized='table')}}

select * from
{{  source('PRICESMART', 'CUSTOMERS') }}
