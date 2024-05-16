{# {{ config(
    materialized='external', 
    plugin='dbt_duckdb_kedro_datasets', 
    kedro_yml_config={
            "type": "pandas.CSVDataset",
            "filepath": "./data/5_final/bikes.csv",
            "save_args": {
                "index": False,
                "date_format": "%Y-%m-%d %H:%M",
                "decimal": "."
            }
        }
        ) }} #}

select *
from {{ ref('my_first_dbt_model') }}
where bike = 'a'
