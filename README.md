# SF2


## Index

1. [Introduction](#Introduction)
2. [Technologies](#Technologies)
3. [Application](#Application)
4. [General Approach](#General_Approach)  
5. [Infrastructure](#Infrastructure)
6. [Project Tracking](#Project_Tracking)
7. [Kubernetes](#Kubernetes)
8. [Jenkins](#Jenkins)
9. [Testing](#Testing)
10. [Risk Assessment](#Risk_Assessment)
11. [Improvements](#Improvements)
12. [Bibliography](#Bibliography)



# Introduction

The application must:

* Be deployed to a Virtual Machine for testing

* Be deployed in a managed Kubernetes Cluster for production

* Make use of a managed Database solution


# Technologies

The technologies I will be using to deploy the Flask Application are: 

- Kanban Board: Jira

- Database: AWS RDS

- Version Control: Git

- Cloud Server: AWS, EC2

- CI Server: Jenkins

- Containerisation: Docker

- Reverse Proxy: NGINX

- Configuration Management: Ansible

- Orchestration Tool: Kubernetes



# Application

The application is a Flask application running in 2 micro-services (frontend and backend).
The database directory is available should you:

* Want to use a MySQL container for your database at any point, or

* Want to make use of the Create.sql file to set up and pre-populate your database.

The application works by:

The frontend service making a GET request to the backend service.
The backend service using a database connection to query the database and return a result.
The frontend service serving up a simple HTML (index.html) to display the result.

# General Approach<a name="General_Approach"></a> 

I will be using Terraform to create a Test and Jenkins Machine through AWS and use Ansible to allow required applications to be installed in the virtual machines that I want.

I will then create a pipeline using Jenkins to clone the repo in order to aquire the latest scripts, upload the image created to Dockerhub and then deploy using Kubernetes 

# Infrastructure
![](https://i.imgur.com/AVSTz9J.png)

The diagram above shows that the vm will be deployed through Terraform and will use Ansible to configure the machines at the same time as it is deployed.

The Virtual Machine will also build a CI Server that can show and track the updates of the development. The updates will be sent to dockerhub after it has been tested and kubernetes will delploy it through pods.
 
Below is a slightly more detailed diagram of what is to occur. 

![](https://i.imgur.com/3Lw19tF.png)

# Project Tracking<a name="Project_Tracking"></a> 

Jira was used to track the progress on my work and it was designed as a Agile Scrum Board.

![](https://i.imgur.com/Vvrh41U.png)
The board has been designed in order for users to make posts of tasks needed for completion. The board allows users to move tasks from left to right from 'To do' to 'Completion'.

# Kubernetes
Below is an image of the kubernetes deployed.

![](https://i.imgur.com/ztlFNLx.png)

# Jenkins

Jenkins was used to deploy the application. From the image below, you can see a sucessfully deployed application with no faults.

![](https://i.imgur.com/VscTz42.png)

# Testing
Testing was done by using pytest before it gets deployed.

![](https://i.imgur.com/rvVwuUd.png)
![](https://i.imgur.com/U2x7gIf.png)


# Risk Assessment<a name="Risk_Assessment"></a> 

The risk assessment of the project can be below.

![](https://i.imgur.com/YoYyROP.png)


# Improvements

There are many different improvements that could have been made to take this Food basket idea to the next level. Some of the improvements would have been:

- To get the nginx pods to work.

- To get the test to 100%.

- To be able to have all the deployment running without entering any commands manually. 


# Bibliography

I would like to thank and acknowledge the QA Trainers and my friends that helped my with obstacles I came across during the development of this application.

Project by Aadil Moghal

