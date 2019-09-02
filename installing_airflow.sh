# Creating environment
conda create -n airflow python=3.7 pandas boto3
conda activate airflow

# Installing AirFlow
AIRFLOW_GPL_UNICODE=yes pip install "apache-airflow[celery, crypto, postgres, hive, rabbitmq, redis]"
pip install ‘Flask==1.1.1’
# Set home folder for AirFlow
export AIRFLOW_HOME=/home/gabriel/Documents/Repos/AirFlow_HCV

# Database settings
airflow initdb
airflow upgradedb

# Creating folder for Dags
grep dags_folder airflow.cfg
mkdir -p /home/gabriel/Documents/Repos/AirFlow_HCV/dags

# Change values on airflow.cfg

# 1) Change base_url
# From: base_url = http://localhost:8080
# To:   base_url = http://localhost:8083

# 2) Change web_server_port
# From: web_server_port = 8080
# To:   web_server_port = 8083

# 3) Change load_examples
# From: load_examples = True
# To:   load_examples = False

# Reset the database
airflow resetdb

# Run the scheduler (on another terminal)
airflow scheduler

# Run the server
