# Use Python 3.6 or later as a base image
FROM python:3.7
# Copy contents into image
 WORKDIR /duo-task
# Install pip dependencies from requirements
RUN pip install Flask
# Set YOUR_NAME environment variable
COPY app.py .
# Expose the correct port
EXPOSE 5500
# Create an entrypoint
ENTRYPOINT ["python", "app.py"]
