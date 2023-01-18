#!/bin/bash# package updates
#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo chmod 777 /var/www/html/
sudo echo '<h1>Hello World from $(hostname -f)</h1>' > /var/www/html/index.html
# sudo systemctl status httpd | grep Active# firewall installation, start and status check
# sudo yum install firewalld
# sudo systemctl start firewalld
# sudo systemctl status firewalld | grep Active# adding http and https services
# sudo firewall-cmd --permanent --add-service=http
# sudo firewall-cmd --permanent --add-service=https# reloading the firewall
# sudo firewall-cmd --reload# acquiring the ip address for access to the web server
# sudo echo "this is the public IP address:" `curl -4 icanhazip.com`# adding the needed permissions for creating and editing the index.html file
# sudo chown -R $USER:$USER /var/www# creating the html landing page
# sudo cd /var/www/html/
# sudo echo '<!DOCTYPE html>' > index.html
# sudo echo '<html>' >> index.html
# sudo echo '<head>' >> index.html
# sudo echo '<head>' >> index.html
# sudo echo '<title>Level It Up</title>' >> index.html
# sudo echo '<meta charset="UTF-8">' >> index.html
# sudo echo '</head>' >> index.html
# sudo echo '<body>' >> index.html
# sudo echo '<h1>Welcome to Level Up in Tech</h1>' >> index.html
# sudo echo '<h3>Red Team</h3>' >> index.html
# sudo echo '</body>' >> index.html
# sudo echo '</html>' >> index.html

