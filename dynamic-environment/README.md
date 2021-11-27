# Build

## No login
docker build -t dynamic-environment-for-no-login:latest ./no-login

## All login users
docker build -t dynamic-environment-for-all-login-users:latest ./all-login-users

## Login user
docker build -t dynamic-environment-for-login-user:latest ./login-user

# Run

## No login
docker run -it --rm dynamic-environment-for-no-login:latest

## All login users
docker run -it --rm dynamic-environment-for-all-login-users:latest

## Login user
docker run -it --rm dynamic-environment-for-login-user:latest
