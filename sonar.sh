#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
unzip sonarqube-8.9.6.50800.zip
yum install java-17-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-8.9.6.50800 -R
chmod 777 sonarqube-8.9.6.50800 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-8.9.6.50800/bin/linux/sonar.sh start
#echo "user=admin & password=admin"

#steps after installation :
# 1. cd /opt
# 2. ll
# 3. cd sonarqube-8.9.6.50800/
# 4. ll
# 5. cd bin
# 6. ll
# 7. cd linux-x86-64/
# 8. ll
# 9. ./sonar.sh start
