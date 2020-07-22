# React Docker
A Simple React Web Application created with `create-create-app`.
- Development

#### Requirements:
1. Docker
2. NPM

#### Development
- Hot Reload
- Live Testing Suite
```
# Start 
$ docker-compose up

# Shutdown
$ CTRL + C
```

#### Production
```
# Create Docker Image (inside folder)
$ docker build -t michielswaanen/web-app .

# Start
$ docker run -p <PC_PORT>:80 michielswaanen/web-app
```