# Jupyter Notebook Server on AWS for Mac
### 1.	Go to the following link and sign in with your "CCAS Cloud ID" (different from your GW net id) and password:
http://go.gwu.edu/idpinit<br/>

### 2.	Once you login, make sure you are in "N. Virginia" Region (on the top right) and select "Services" -> "EC2":
![](https://raw.github.com/yuxiaohuang/aws-machine-learning-1/master/aws-machine-learning-1-master/Creating%20a%20DLAMI%20EC2%20Instance%20on%20GWU-AWS/screenshots/1.png)

### 3. You need to start your instance. Select your instance from the list (You can sort the list by Name) and click "Actions" -> "Instance State" -> "Start"
 - It might take a minute or two for your instance to "spin-up" (start)
 - If it seems like it is taking a long time for your Instance State to turn green, try refreshing the page
![](https://raw.github.com/yuxiaohuang/aws-machine-learning-1/master/aws-machine-learning-1-master/Jupyter%20Notebook%20Server%20Mac/screenshots/5.png)

 ### 4.	Once your instance is up and running, select it from the list, and choose "Connect"
![](https://github.com/yuxiaohuang/aws-machine-learning-1/blob/master/aws-machine-learning-1-master/Jupyter%20Notebook%20Server%20Mac/screenshots/2.png?raw=true)

 ### 5.	We now need to modify the permissions of our private key (it can't be publicly viewable). To do this, highlight the first command ("chmod 400 your_key_name.pem") and open a terminal. Navigate to the location/directory on your machine where your private key is located, and run the command that you just copied.
  - To find the directory where your key is located, you can change directories with "cd directory_name"
  - You can then list files in the current directory with "ls"
  - Visit the following link for more information regarding unix terminal commands:
  - https://www.tjhsst.edu/~dhyatt/superap/unixcmd.html<br/>
![](https://github.com/yuxiaohuang/aws-machine-learning-1/blob/master/aws-machine-learning-1-master/Jupyter%20Notebook%20Server%20Mac/screenshots/3.png?raw=true)

 ### 6.	We will now connect (a.k.a. "ssh into") our instance. To establish this connection (assuming you are in the directory where your private key ("your_key_name.pem") is located, copy/paste the third command (shown below) into the terminal.
 ![](https://raw.github.com/yuxiaohuang/aws-machine-learning-1/master/aws-machine-learning-1-master/Jupyter%20Notebook%20Server%20Mac/screenshots/4.png)

### 7. It will ask you if you are sure you want to continue connecting. Type "yes" and press "Enter"
![](https://raw.github.com/yuxiaohuang/aws-machine-learning-1/master/aws-machine-learning-1-master/Jupyter%20Notebook%20Server%20Mac/screenshots/6.png)
 - After you press enter, you will see your terminal prompt change. You will now have a prompt like the one shown below:
  ![](https://raw.github.com/yuxiaohuang/aws-machine-learning-1/master/aws-machine-learning-1-master/Jupyter%20Notebook%20Server%20Mac/screenshots/7.png)

### 8. Now that we have successfully logged-in/ssh'd-in to our DLAMI EC2 instance, we will configure the Jupyter Notebook Server. Run the following 4 commands in order:
  ![](https://raw.github.com/yuxiaohuang/aws-machine-learning-1/master/aws-machine-learning-1-master/Jupyter%20Notebook%20Server%20Mac/screenshots/8.png)

