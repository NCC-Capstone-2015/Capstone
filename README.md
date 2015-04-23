# Capstone Project

## Setting up origin
Go to https://github.com/kachlikmatt/Capstone<br>
On the far right, click Fork and fork to personal GitHub account<br>
Create a folder to hold the repository on your personal computer<br>
Using git bash, cd into that directory and enter the following commands:
<pre><code>
$ git init
$ git remote add upstream git@github.com:kachlikmatt/Capstone.git<br>
$ git remote add origin git@github.com:cddigi/Capstone.git  #Replace with own fork URL<br>
$ git pull origin master<br>
$ git pull upstream master<br>
$ git remote set-url --push upstream no_push  
</code></pre>
The last command disables ability to push master to upstream<br>
