# __0x1A. Application server__

![alt text](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2018/9/c7d1ed0a2e10d1b4e9b3.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20221109%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221109T104332Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=b30a380d821224bb419eb4be8648ed8095020dfd61e947991b0c45ec7f46b0a2)


While a web server can also serve dynamic content, this task is usually given to an application server. In this project you will add this piece to your infrastructure, plug it to your Nginx and make is serve your Airbnb clone project.

## Tasks

__0. Set up development with Python__

This task is an exercise in setting up your development environment, which is used for testing and debugging your code before deploying it to production.
The tasks involves running a flask app on my server.

__1. Set up production with Gunicorn__

Requirements:

* Install Gunicorn and any other libraries required by your application.
* The Flask application object should be called app. (This will allow us to run and check your code)
* You will serve the same content from the same route as in the previous task. You can verify that it’s working by binding a Gunicorn instance to localhost listening on port 5000 with your application object as the entry point.
* In order to check your code, the checker will bind a Gunicorn instance to port 6000, so make sure nothing is listening on that port.

