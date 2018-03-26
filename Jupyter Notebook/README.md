# Jupyter Notebook Server on AWS Using Putty for Windows
## 1.	Download Putty:
a. 32 bit: https://the.earth.li/~sgtatham/putty/latest/w32/putty.exe<br/>
b.	64 bit: https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe<br/>
## 2.	Download Puttygen:
a.	32 bit: https://the.earth.li/~sgtatham/putty/latest/w32/puttygen.exe<br/>
b.	64 bit: https://the.earth.li/~sgtatham/putty/latest/w64/puttygen.exe<br/>
## 3. Create Private Key Using Puttygen:
#### a.	Open Puttygen and Click on Load:
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/1.PNG)
#### b.	Change Putty Private Key Files(*.ppk) to All Files:
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/2.PNG)
#### c.	Navigate your AWS  *.pem key and Click Open:
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/3.PNG)
#### d.	Click OK:
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/4.PNG)
#### e.	Click on Save Private Key:
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/5.PNG)
#### f. Click YES:
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/6.PNG)
#### g. Click Save:
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/7.PNG)
### 4. Connect to AWS Using Putty:
#### a. Open Putty:
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/8.PNG)
#### b. Copy Username-Public DNS from AWS:
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/9.PNG)
#### c. Paste the Username-Public DNS in Host Name(for IP address):
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/10.PNG)
#### d. Click SSH and then Auth:
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/11.PNG)
#### e. Browse the *.ppk key which we generate using Puttygen.
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/12.PNG)
#### f. After selecting the *.ppk key. Click on Tunnels - Put Source Port: 8888 and Destination: 127.0.0.1:8888  
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/13.PNG)
#### g. Click Add after entering Source port and Destiantion.
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/14.PNG)
#### h. Click Yes.
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/15.PNG)
#### i. SSH is Completed if you are able to see the below screeen:
![](https://github.com/princebirring/aws-machine-learning-1/blob/master/Jupyter%20Notebook/screenshots/16.PNG)
