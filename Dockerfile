# Use the official Apache Airflow image
FROM apache/airflow:2.8.2

# Set environment variables
ENV AIRFLOW_HOME=/opt/airflow

# Install additional dependencies if needed (Optional)
# RUN pip install --no-cache-dir <package_name>

# Set the working directory
WORKDIR $AIRFLOW_HOME

# Copy your DAGs or other files (Optional)
# COPY dags/ dags/

# Expose the web server port
EXPOSE 8080

# Start Airflow services
ENTRYPOINT ["airflow", "standalone"]
