# Jupyter Notebook Server on AWS Using Putty for Windows
## 1.	Download Putty:
a. 32 bit: https://the.earth.li/~sgtatham/putty/latest/w32/putty.exe<br/>
b.	64 bit: https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe<br/>
## 2.	Download Puttygen:
a.	32 bit: https://the.earth.li/~sgtatham/putty/latest/w32/puttygen.exe<br/>
b.	64 bit: https://the.earth.li/~sgtatham/putty/latest/w64/puttygen.exe<br/>
## 3. Create Private Key Using Puttygen:
#### a.	Open Puttygen and Click on Load:
![](screenshots/1.PNG)
#### b.	Change Putty Private Key Files(*.ppk) to All Files:
![](screenshots/2.PNG)
#### c.	Navigate your AWS  *.pem key and Click Open:
![](screenshots/3.PNG)
#### d.	Click OK:
![](screenshots/4.PNG)
#### e.	Click on Save Private Key:
![](screenshots/5.PNG)
#### f. Click YES:
![](screenshots/6.PNG)
#### g. Click Save:
![](screenshots/7.PNG)
### 4. Connect to AWS Using Putty:
#### a. Open Putty:
![](screenshots/8.PNG)
#### b. Copy Username-Public DNS from AWS:
![](screenshots/9.PNG)
#### c. Paste the Username-Public DNS in Host Name(for IP address):
![](screenshots/10.PNG)
#### d. Click SSH and then Auth:
![](screenshots/11.PNG)
#### e. Browse the *.ppk key which we generate using Puttygen.
![](screenshots/12.PNG)
#### f. After selecting the *.ppk key. Click on Tunnels - Put Source Port: 8888 and Destination: 127.0.0.1:8888  
![](screenshots/13.PNG)
#### g. Click Add after entering Source port and Destiantion.
![](screenshots/14.PNG)
#### h. Click Yes.
![](screenshots/15.PNG)
#### i. SSH is Completed if you are able to see the below screeen:
![](screenshots/16.PNG)
