## API using Ruby on Rails

This repo contains the API of bycoders application.

### To start this project you have to create a folder and put inside of it two subfolders. 
- [This one containing the frontend](https://github.com/jsobralgitpush/bycoders_client) -> named "bycoders_client"
- This one containg the backend ->  named "bycoders_api"

### After building this directory, you should the follow directory tree

![image](https://user-images.githubusercontent.com/63429525/172460711-34d9710f-a25c-4701-af5a-e4056f0e2928.png)

### Install docker and docker-compose in your machine
- [docker-compose](https://docs.docker.com/compose/install/)
- [docker](https://docs.docker.com/engine/install/ubuntu/)

### Run commands
Finally, move the `docker-compose.yml` to the parent folder to build the front and the backend container and run `docker-compose build` to start the containers and `docker-compose up` to build the project

### API Documentation

Check for the [API documentation json file](https://github.com/jsobralgitpush/bycoders_api/blob/main/Bycoders%20API%20documentation.postman_collection.json) to see how to use it

### Tests

To run model tests
`bundle exec rspec spec/models/transaction_spec.rb`

To run requests tests
`bundle exec rspec spec/requests/transactions_spec.rb`
