# Initialize the database
airflow initdb

# To reset the database
airflow resetdb

# Start webserver
airflow webserver

# Start scheduler
airflow scheduler

# Start worker
airflow worker

# List DAGS
airflow list_dags

# List Tasks of a DAG
airflow list_tasks hello_world_dag
airflow list_tasks hello_world_dag --tree # to show the hierarchy

# Perform a test
airflow test hello_world_dag python_task 2019-09-04

# Check documentation
airflow -h