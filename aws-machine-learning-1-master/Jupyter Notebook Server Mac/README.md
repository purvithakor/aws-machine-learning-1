# Jupyter Notebook Server on AWS for Mac
### 1.	Go to the following link and sign in with your "CCAS Cloud ID" (different from your GW net id) and password:
http://go.gwu.edu/idpinit<br/>

### 2.	Once you login, make sure you are in "N. Virginia" Region (on the top right) and select "Services" -> "EC2":
![](https://raw.github.com/yuxiaohuang/aws-machine-learning-1/master/aws-machine-learning-1-master/Creating%20a%20DLAMI%20EC2%20Instance%20on%20GWU-AWS/screenshots/1.png)

 ### 3.	Select your instance from the list, and choose "Connect"
![](https://github.com/yuxiaohuang/aws-machine-learning-1/blob/master/aws-machine-learning-1-master/Jupyter%20Notebook%20Server%20Mac/screenshots/2.png?raw=true)

 ### 4.	We now need to modify the permissions of our private key (it can't be publicly viewable). To do this, highlight the first command ("chmod 400 your_key_name.pem") and open a terminal. Navigate to the location/directory on your machine where your private key is located, and run the command that you just copied.
  - To find the directory where your key is located, you can change directories with "cd directory_name"
  - You can then list files in the current directory with "ls"
  - Visit the following link for more information regarding unix terminal commands:
  - https://www.tjhsst.edu/~dhyatt/superap/unixcmd.html<br/>
![](https://github.com/yuxiaohuang/aws-machine-learning-1/blob/master/aws-machine-learning-1-master/Jupyter%20Notebook%20Server%20Mac/screenshots/3.png?raw=true)
