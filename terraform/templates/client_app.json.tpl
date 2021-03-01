[
    {
    "name": "client-app",
    "essential": true,
    "memoryReservation": 300,
    "portMappings": [
        {
        "hostPort": 80,
        "protocol": "tcp",
        "containerPort": 80
        }
    ],
    "repositoryCredentials": {
        "credentialsParameter": "arn:aws:secretsmanager:us-east-1:595277504214:secret:github_packages-r7cp9Y"
        },
    "image": "docker.pkg.github.com/nessadc/flask-react-aws/test-driven-client:prod",
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
        "awslogs-group": "flask-react-client-log",
        "awslogs-region": "us-east-1",
        "awslogs-stream-prefix": "client-app-log-stream"
        }
    }
    }
]