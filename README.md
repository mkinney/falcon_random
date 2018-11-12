[![Build Status](https://travis-ci.org/mkinney/falcon_random.svg?branch=master)](https://travis-ci.org/mkinney/falcon_random)

# Background
Started from [falcon-a-python-framework-for-writing-excellent-microservices-and-apis](https://medium.com/@gurayy/falcon-a-python-framework-for-writing-excellent-microservices-and-apis-fa2354630c5b)

# Development
Make sure the app works locally:

    virtualenv -p python3 venv
    source venv/bin/activate
    pip install -r requirements.txt
    gunicorn -b 0.0.0.0:8000 generateRandom:api

# Build

    make build


# Run

    make run

# Test

Open [http://localhost:8000/number](http://localhost:8000/number)

You can also run:

    make test

# Lint
Ensure that we do not have any pylint issues by running:

    make lint

# Clean

    make clean

# Tips
1. Create a git pre-commit hook to ensure code committed has some checks:

a. Create `.git/hooks/pre-commit`

``` bash
#!/bin/bash
make test
```

b. Ensure the script is executable:

    chmod +x .git/hooks/pre-commit
