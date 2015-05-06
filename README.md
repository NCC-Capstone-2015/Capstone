# Capstone Project

## Setting up origin
Go to https://github.com/NCC-Capstone-2015/The-Alum-Book<br>
On the far right, click Fork and fork to personal GitHub account<br>
Go to https://www.sourcetreeapp.com/ to download and install SourceTree<br>
In the top right corner click Clone / New<br>
In the window that pops up, click the globe icon in the top right<br>
Select Edit Accounts and login with your GitHub account<br>
In the list of repositories, select The-Alum-Book where you are listed as owner

## Changing mysql password
*** if your username is different from root run this command***<br>
<code>
RENAME USER 'root'@'localhost' TO 'root'@'localhost';
</code>
use the manger in the rubystack file <br>
click on phpmyadmin <br>
click on the console on the bottom <br>
run this command <br>
<code>
SET PASSWORD FOR root@localhost = PASSWORD('password');
</code>
this will change whatever your password was previously to password
