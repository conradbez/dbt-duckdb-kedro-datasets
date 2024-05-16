select *
from {{ source('dbt_duckdb_kedro_datasets_source', 'dbt_duckdb_kedro_datasets_table') }}
