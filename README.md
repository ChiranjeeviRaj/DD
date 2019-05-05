# DD SetUp
Check Out the code from 
https://github.com/ChiranjeeviRaj/DD
$ > cd DD
$ > ssh-add -K ./id_rsa

Add ssh key for Check in/out the project 
SetUP DB:

Donwolad and install MYSQL.
Save the temp passoword.
Login MY SQL using the root and temp password

Change the MySQL passowrd using the below cmd after login

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
Client : I am using 'Sequel Pro' it is one of the best My SQL Client.
https://sequelpro.com/download
Username : root
Password : root
DB Name : SALESMANAGER

$ > mvn clean install
$ > cd sm-shop
$ > mvn spring-boot:run

Test : http://localhost:8080/shop

Admin : Username/Pass = admin/password
http://localhost:8080/admin/logon.html

