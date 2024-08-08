from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.utils.dates import days_ago

def print_hello():
    print("Hello, World!")

default_args = {
    'owner': 'airflow',
}

dag = DAG(
    'hello_world_dag',
    default_args=default_args,
    description='A simple hello world DAG',
    schedule_interval=None,
    start_date=days_ago(2),
    tags=['example'],
)

t1 = PythonOperator(
    task_id='print_hello',
    python_callable=print_hello,
    dag=dag,
)
