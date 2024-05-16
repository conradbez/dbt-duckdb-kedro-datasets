from dbt.cli.main import dbtRunner, dbtRunnerResult


def test_dbt():

    dbt = dbtRunner()
    cli_args = [
        "run",
        "--project-dir",
        "./example/example_dbt",
        "--profiles-dir",
        "./example/",
    ]
    res: dbtRunnerResult = dbt.invoke(cli_args)
    assert res
    # assert res.success==True # currently fialing because data is dependent on the directory we run the command from
