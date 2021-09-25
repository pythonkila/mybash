#! /bin/bash
# Write a bash script with following logic: 
# Install NodeJS and NPM and print out which versions were installed
# Download an artifact file from the URL: https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz. 
# Hint: use curl or wget
# Unzip the downloaded file
# Set the following needed environment variables: APP_ENV=dev, DB_USER=myuser, DB_PWD=mysecret
# Change into the unzipped package directory
# Run the NodeJS application by executing the following commands:  npm install and node server.js 

clear

if node -v  > /dev/null 2>&1
 then echo "NodeJS is installed"
else 
  echo "Downloading node and npm binaries..."
  curl -fsSL https://rpm.nodesource.com/setup_16.x | sudo bash -  > /dev/null 
  echo "Installing node and npm..."
  sudo yum install -y nodejs > /dev/null 
fi

cd /tmp
 
  echo "Downloading artifacts..."
curl https://node-envvars-artifact.s3.eu-west-2.amazonaws.com/bootcamp-node-envvars-project-1.0.0.tgz -o bootcamp-node-envvars-project-1.0.0.tgz

echo "Setting environment variables..."
export DB_USER=myuser
export DB_PWD=mysecret
export APP_ENV=dev

echo "extracting artifact..."
tar -xf bootcamp-node-envvars-project-1.0.0.tgz 

cd package 

echo "Running Nodejs and NPM"

npm install &

node server.js &

