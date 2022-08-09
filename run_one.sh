tool=$1
service=$2
port=5050
duration=300
. ./venv/bin/activate
python3 ./run_small.py ${tool} ${service} ${port} ${duration}
python3 ./report.py ${port} ${service}
cat data/${service}/res.csv
