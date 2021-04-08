# Use Python Image
FROM python:3.7
# Copy contents into image
COPY . .
# Run pip dependencies
RUN pip3 install -r requirements.txt
# Expose the correct port
EXPOSE 5000
# Create an entrypoint
ENTRYPOINT ["python3", "app.py"]
