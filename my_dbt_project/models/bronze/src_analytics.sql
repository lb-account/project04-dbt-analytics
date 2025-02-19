-- Bronze Layer: Loading raw sessions data from Google Analytics

with sessions as (
    (select * from {{ source('google_analytics_sample', 'ga_sessions_20170801') }} limit 500)
    union all
    (select * from {{ source('google_analytics_sample', 'ga_sessions_20170731') }} limit 500)
    union all
    (select * from {{ source('google_analytics_sample', 'ga_sessions_20170730') }} limit 500)
)

select
    *
from sessions
