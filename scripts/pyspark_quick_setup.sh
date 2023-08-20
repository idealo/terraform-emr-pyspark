#!/usr/bin/env bash

# Ensure the script fails on any error
set -e

# Set the paths for PySpark's Python and Jupyter Driver
PYSPARK_PYTHON_PATH="/home/hadoop/conda/bin/python"
PYSPARK_DRIVER_PATH="/home/hadoop/conda/bin/jupyter"
PYSPARK_DRIVER_OPTS="notebook --no-browser --port 8888 --ip='0.0.0.0'"

# Append configurations to spark-env.sh
cat >> /etc/spark/conf/spark-env.sh << EOF

# Bind PySpark to Conda Python installation
export PYSPARK_PYTHON=${PYSPARK_PYTHON_PATH}

# Set Jupyter as the driver for PySpark
export PYSPARK_DRIVER_PYTHON=${PYSPARK_DRIVER_PATH}

# Set options for the Jupyter driver
export PYSPARK_DRIVER_PYTHON_OPTS='${PYSPARK_DRIVER_OPTS}'
EOF
