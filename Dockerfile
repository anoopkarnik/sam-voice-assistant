FROM python:3.8.12
WORKDIR /app
COPY . /app/
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["gunicorn", "-w 4","-b 0.0.0.0:8101","app:app"]