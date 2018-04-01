# Jupyter Notebook Server on AWS for Mac
1.	Go to the following link and sign in with your "CCAS Cloud ID" (different from your GW net id) and password
http://go.gwu.edu/idpinit

---

2.	Once you login, make sure you are in "N. Virginia" Region (on the top right) and select "Services" -> "EC2"
![](screenshots/1b.png)

---

3. You need to start your instance. Select your instance from the list (You can sort the list by Name) and select 
 - "Actions" -> "Instance State" -> "Start"
 - It might take a minute or two for your instance to "spin-up" (start)
 - If it seems like it is taking a long time for your Instance State to turn green, try refreshing the page
![](screenshots/5.png)

---

4.	Once your instance is up and running, select it from the list, and choose "Connect"
![](screenshots/2.png)

---

5.	We now need to modify the permissions of our private key (it can't be publicly viewable). To do this, highlight the first command (`chmod 400 your_key_name.pem`) copy this command, and open a terminal. Navigate to the location/directory on your machine where your private key is located, and run the command that you just copied.
  - To find the directory where your key is located, you can change directories with `cd your_directory_name`  
  - You can then list files in the current directory with `ls`
  - Visit the following link for more information regarding unix terminal commands:
  - https://www.tjhsst.edu/~dhyatt/superap/unixcmd.html
![](screenshots/3.png)

---

6.	We will now connect (a.k.a. "ssh into") our instance. To establish this connection (assuming you are in the directory where your private key (`your_key_name.pem`) is located, copy/paste the third command (shown below) into the terminal.
 ![](screenshots/4.png)

---

7. It will ask you if you are sure you want to continue connecting. Type `yes` and press `Enter`
![](screenshots/6.png)
 - After you press enter, you will see your terminal prompt change. You should now have a prompt like the one shown below:
![](screenshots/7.png)

---

8. Now that we have successfully logged-in/ssh'd-in to our DLAMI EC2 instance, we will configure the Jupyter Notebook Server. First, we have to create an ssl certificate. We will be following the instructions from the following AWS documentation  

https://docs.aws.amazon.com/dlami/latest/devguide/setup-jupyter-config.html

Run the following 4 commands in order

`
cd
`

`
mkdir ssl
`

`
cd ssl
`

`
sudo openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout "cert.key" -out "cert.pem" -batch
`

![](screenshots/8.png)

---

9. Next, we need to create a password. You use this password to log in to the Jupyter notebook server from your client (a.k.a. local machine/personal laptop) so you can securely access the notebook being served from your EC2 instance.

Start an ipython kernel

`
ipython  
`

`
Enter  
`

It might take a minute or two for the ipython kernel to start, be patient, you only have to do this once!

![](screenshots/9.png)

---

10. Notice that the prompt will change, it should look similar to the ipython prompt that you see in a Jupyter Notebook. import the `passwd()` method by running the following command

`
from IPython.lib import passwd  
`

![](screenshots/10.png)

Once it's imported, run `passwd()` as shown below  

`
passwd()
`

![](screenshots/11.png)

---

11. You will now be prompted to enter a password. This can be any password you like, but **REMEMBER IT!** You will be asked for this password each and every time you connect to your jupyter notebook server in the future.
 -  Note: You will be asked to enter your password twice.
 -  Your password will not appear when you type.
 -  In case you mess-up typing your password, simply re-run `passwd()` and re-type your password twice again.

It will output an sha-1 cryptographic hash for your password. **COPY THIS!** and save it somewhere. (Perhaps in a new note in the "Notes" application) We will need it shortly.

![](screenshots/12.png)

Once you've copied your hash somewhere, you can exit out of ipython by typing `exit` and pressing `Enter`
![](screenshots/13.png)

---

12. We now need to update the Jupyter Notebook Configuration File to store your password and SSL certificate information. We'll use nano (a simple text editor) to edit this file by typing the following command

`
nano ~/.jupyter/jupyter_notebook_config.py  
`

This will open the config file in nano. Press enter a few times to give yourself some space towards the top of the file. Then copy and paste the following lines  

`
c = get_config()  
`

`
c.NotebookApp.certfile = u'/home/ubuntu/ssl/cert.pem'    
`

`
c.NotebookApp.keyfile = u'/home/ubuntu/ssl/cert.key'   
`

`
c.IPKernelApp.pylab = 'inline'   
`

`
c.NotebookApp.ip = '*'  
`

`
c.NotebookApp.open_browser = False      
`

`
c.NotebookApp.password = 'YOUR_HASH_GOES_HERE'      
`

Replace the "YOUR_HASH_GOES_HERE" on the last line, with the hash that you copied in Step 11. It should look like the following  
 ![](screenshots/14.png)

Once you've entered the lines above, you can press 'control+x' -> 'y' -> 'Enter' to exit nano
you can now exit your ssh session as well. Go ahead and type 'exit' into the terminal
We are done configuring the jupyter notebook server!
 
 ---
 
 # To connect to the jupyter notebook server (for future repeated use)

---

1. Complete Steps 1-3 from above

---

2. Open a **NEW TERMINAL WINDOW** navigate to the location of your private key (to navigate the linux file structure, remember the terminal commands from the link in step 5 above). Then run the following command  
 
 `
 ssh -i mykeypair.pem -L 8157:127.0.0.1:8888 ubuntu@ec2-###-##-##-###.compute-1.amazonaws.com
 `   
  
 - Replace `mykeypair.pem` with your key name   
 - Replace `ec2-###-##-##-###.compute-1.amazonaws.com` with your public DNS  

![](screenshots/16.png)

 - In case you forgot either your key name, or your DNS, they can be found from selecting your instance from the list of running EC2 instances (AWS page) and clicking "Connect"  

![](screenshots/2.png)    

![](screenshots/15.png)  

---

3. Once you have successfully logged in to your DLAMI instance, simply type `jupyter notebook` and press `Enter`

The notebook will be launched and will be served to the following ip address

`https://127.0.0.1:8157/`  

![](screenshots/17.png)

---

4. At this point, you can simply open a browser on **YOUR LOCAL MACHINE/LAPTOP** (Firefox, Chrome, Safari, etc.) and navigate to the following url where your notebook is being served from your EC2 instace

`https://127.0.0.1:8157/`  

![](screenshots/18.png)  

It will warn you that the connection is not private. Don't worry, click "Show Details" (note the screenshots show this process using Safari, but the process will be similar for Chrome or Firefox)  

![](screenshots/19.png)  

Next, click the "visit this website" link  

![](screenshots/20.png)  

It will ask you if you are sure, click "Visit Website" indicating that you understand the risk involved

![](screenshots/21.png)  

Now enter the password that was used in **Step 11** above. Then click "Log in"

![](screenshots/22.png)  

That's it! You've successfully setup a Jupyter Notebook Server on an EC2 instance using Amazon's Deep Learning AMI. There are numerous advantages over the standard jupyter notebook on your laptop, one of these advantages is the fact that you have many deep learning softwares/frameworks available to you, if you choose "New" to create a jupyter notebook, notice how many options are available to you. Feel free to explore the tutorials that come pre-loaded on Amazon's Deep Learning AMI's as well.  

![](screenshots/23.png)   
---

Happy Coding!  


