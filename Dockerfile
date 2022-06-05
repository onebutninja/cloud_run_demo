#Base Image to use
FROM python:3.9-slim


ENV PYTHONUNBUFFERED True

#Expose port 8080
# EXPOSE 8080

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

#Copy Requirements.txt file into app directory
#COPY requirements.txt app/requirements.txt

#install all requirements in requirements.txt
#RUN pip install -r app/requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

#Copy all files in current directory into app directory
#COPY . /app

#Change Working Directory to app directory
#WORKDIR /app

#Run the application on port 8080
#ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]


#CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 app:app
CMD python3 app.py