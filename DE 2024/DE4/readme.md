# Setting Up and Using the Docker Image

## Prerequisites
Docker must be installed on your system. You can download and install Docker from the official Docker website.

## Building the Docker Image
1. Clone the repository to your local machine.
2. Navigate to the project directory: `cd your_repository`.
3. Build the Docker image using the provided Dockerfile: `docker build -t docker_task .`.

## Running the Docker Container
After building the Docker image, you can run the container using the following command: `docker run -d -p 5000:5000 docker_task`. This command will start the Flask server inside a Docker container and map port 5000 of the container to port 5000 on your host machine.

Once the container is running, you can access the Flask server by opening your web browser and navigating to http://127.0.0.1:5000/api/last_10_records.

## Code Description
This project includes a simple REST API server developed using Flask. The server accepts three types of requests: "GET", "POST", "DELETE".

1. POST request at http://localhost:5000/api/add_record/<record> adds the specified record and returns the response: New added record: <record>.
2. GET request at http://localhost:5000/api/last_10_records displays the last 10 added records in json format: {'last 10 added records': [r1, r2, r3 ...]}.
3. DELETE request at http://localhost:5000/api/delete_record/<record> removes the specified record and returns the response: Removed record: <record>.

The code is described in the main.py file. After successful testing of the developed API server, a Dockerfile based on Linux is described, in which Python3 is installed, a working folder code is added and the main.py code is moved to this folder. The container is launched and any request is executed to check the operation of the REST API server using Docker.

