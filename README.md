# Capstone Project

#### GitGUI and SourceTree Tutorials created by Cornelius Donley

## Setting up project using Git GUI

#### Git GUI
Press the Windows key<br>
Type in 'git'<br>
Select 'Git GUI'<br>
Choose Create New Repository<br>
Select a folder where you want to store the application<br>
<pre><code>example: F:\Capstone\Alumbook</code></pre>
On the menu bar click Edit -> Options type in your full name and email then click Save<br>
In the menu bar select Repository -> Create Desktop Icon, save it in the parent directory<br>
<pre><code>example: F:\Capstone\</code></pre>
Double clicking that icon will now open the gui loaded with the project<br>

#### Setting up remotes
On the menu bar click Remote -> Add...<br>
Under name type in 'upstream'<br>
Under location type in 'https://github.com/NCC-Capstone-2015/The-Alumbook.git'<br>
Click Add<p>
In the menu bar click Remote -> Add...<br>
Under name type in 'origin'<br>
Under location type paste the https link from your own forked repository on GitHub<br>
Click Add<p>
On the menu bar click Tools -> Add...<br>
Under name type 'Pull upstream'<br>
Under command type 'git pull upstream master'<p>
On the menu bar click Tools -> Add...<br>
Under name type 'Pull origin'<br>
Under command type 'git pull origin master'<p>
Under Tools click Pull origin<br>
Under Tools click Pull upstream<br>

#### Commit and Push
First click Rescan to get all the changes
To commit changes, click Stage Changes, enter a commit message, then click Commit<br>
To push comitted changes, click Push, make sure origin is selected under Destination Repository, then click Push<br>
Enter your GitHub username and password<br>

## Setting up project using SourceTree

#### Git Client
Go to https://github.com/NCC-Capstone-2015/The-Alumbook<br>
On the far right, click Fork and fork to personal GitHub account<br>
Go to https://www.sourcetreeapp.com/ to download and install SourceTree<br>
Run SourceTree<br>
Login with your GitHub account<br>
In the list of repositories, select The-Alumbook where you are listed as owner<br>
Choose a destination path and click Clone<br>
In the top right corner click Settings, then Add<br>
Make sure Default remote is NOT checked<br>
Enter upstream for the Remote name field<br>
Enter https://github.com/NCC-Capstone-2015/The-Alumbook.git in the URL / Path field<br>
Click OK<br>

#### Using Pull
Click the Pull button on the top of the SourceTree application<br>
Select NCC-Capstone-2015 in the Pull from remote dropdown<br>
Select master from the Remote branch to pull dropdown<br>
Click OK<br>

#### Commit Changes
Click the Commit button on the top of the SourceTree application<br>
Select the files to commit<br>
Enter comments of changes in the bottom text box<br>
Optional: Under Commit Options in the bottom right, you can select Create Pull Request instead of using GitHub.com<br>
Click Commit in the bottom right<br>

#### Using Push
Click the Push button on the top of the SourceTree application<br>
Click OK<br>

#### Creating Pull Request via Browser
Go to GitHub.com<br>
Select your The-Alumbook repository<br>
Click the green button on the left side of the page<br>
Click the green Create Pull Request button<br>

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


