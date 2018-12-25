# DD
Check Out the code from 
https://github.com/ChiranjeeviRaj/DD

Add ssh key for Check in/out the project 

>cd DD
>ssh-add -K ./id_rsa

Create a My SQL DB account as below

Username : root
Password : root
DB Name : SALESMANAGER

>mvn clean install
>cd sm-shop
>mvn spring-boot:run

Test : http://localhost:8080/shop
Admin : Username/Pass = admin/password
http://localhost:8080/admin/logon.html
