To build the container image:

    docker build -t apptest .

To run a container:

    docker run --rm --name apptest -d -p 4001:4001 apptest

Test that it works as expected:

    $ curl localhost:4001
    {"message":"hello world"}
