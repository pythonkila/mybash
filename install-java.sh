#! /bin/bash

echo " Checking if Java is installed"

if java -version >/dev/null 2>&1
 then echo "Java is already installed"
else
 echo "Java is not present on this machine.. installing Java now....."
 yum install -y java-1.8.0-openjdk
 java -version >/dev/null 2>&1 
  if java -version > /dev/null 2>&1 
    then echo "Java was installed successfully"
  else 
    echo "The Java installation failed."
  fi
fi

