#! /bin/bash
# The script checks for Java 1.8 and removes it.
echo " Checking if Java is installed"
if java -version >/dev/null 2>&1
 then echo "Java is installed, now removing java"
  yum remove -y java-1.8.0-openjdk
  yum remove -y java-1.8.0-openjdk-headless      
  if java -version >/dev/null 2>&1
   then echo "Java was not successfully removed from the machine"
  else
  echo "Java was successfully removed from the machine"
  fi
else
 echo "Java is not present on this machine..."
fi

