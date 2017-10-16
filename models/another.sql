{{config(materialized='view')}}

select *
from "public"."orders_log"
