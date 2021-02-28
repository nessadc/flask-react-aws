[
    {
    "name": "users-app",
    "image": "docker.pkg.github.com/nessadc/flask-react-aws/test-driven-users:prod",
    "essential": true,
    "portMappings": [
        {
        "hostPort": 5000,
        "protocol": "tcp",
        "containerPort": 5000
        }
    ],
    "command": [
      "gunicorn",
      "manage:app",
      "-b",
      ":5000",
      "-w",
      "3",
      "--log-level=debug"
    ],
    "entrypoint": [
      "/usr/src/app/entrypoint.prod.sh"
    ],
    "environment": [
        {
        "name": "APP_SETTINGS",
        "value": "src.config.ProductionConfig"
        },
        {
        "name": "DATABASE_TEST_URL",
        "value": "postgres://postgres:postgres@api-db:5432/api_test"
        },
        {
        "name": "DATABASE_URL",
        "value": "${database_url}"
        },
        {
        "name": "SECRET_KEY",
        "value": "replaceme!"
        }
    ],
    "repositoryCredentials": {
        "credentialsParameter": "arn:aws:secretsmanager:us-east-1:595277504214:secret:github_packages-r7cp9Y"
    },
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
        "awslogs-group": "flask-react-users-log",
        "awslogs-region": "us-east-1",
        "awslogs-stream-prefix": "client-app-log-stream"
        }
    }
    }
]