from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.bash import BashOperator
from airflow.operators.email import EmailOperator
from airflow.operators.python import PythonOperator
from airflow.models import Variable

default_args = {
    'owner': 'prabal',
    'depends_on_past': False,
    'email_on_failure': True,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=1),  # Retry in every 1 minute
}

dag = DAG(
    'database_backup',
    default_args=default_args,
    description='Daily backup of database and email notification',
    schedule_interval='*/10 * * * *',  # Every 10 minutes
    start_date=datetime(2024, 6, 18),  
    catchup=False,
)

backup_task=BashOperator(
    task_id='backup_task',
    bash_command='/home/prabal/bashscripts/backup.sh ',
    do_xcom_push=True,
    dag=dag,
)
def parse_message_out(**kwargs):
    ti = kwargs['ti']
    message_out = ti.xcom_pull(task_ids='backup_task')
    if '|' in message_out:
        status, space_check = message_out.split('|', 1)
        formatted_content = f"""
            <p><strong>Status:</strong> {status.strip()}</p>
            <p><strong>Space Check:</strong> {space_check.strip()}</p>
        """
    else:
        formatted_content = f"<p>{message_out.strip()}</p>"

    ti.xcom_push(key='email_content', value=formatted_content)

parse_task = PythonOperator(
    task_id='parse_task',
    python_callable=parse_message_out,
    provide_context=True,
    dag=dag,
)

send_mail = EmailOperator(
    task_id='send_mail',
    to='susmapant@gmail.com',
    subject='Database Backup Status',
    html_content="{{ task_instance.xcom_pull(task_ids='parse_task', key='email_content') }}",
    

    dag=dag,
)

backup_task >> parse_task >> send_mail