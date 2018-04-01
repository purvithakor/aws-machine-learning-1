# Transfering Files 

## Transferring Files in Amazon Web Services (AWS) using Secure Copy


### First you need to open your computer terminal (Note: NOT THE VM TERMINAL)

* 1. Uploading a file:
```
scp -i "your_aws_key.pem" [file-name] [aws-instance-name]:~/[file-name]
```

For Example:
```
scp -i ~/Documents.aws.pem iris.csv ubuntu@ec2-52-207-225-47.compute-1.amazonaws.com:~/iris.csv
```
* 2. Downloading a file:
```
scp -i "your_aws_key.pem" [aws-instance-name]:~/ .
```

**NOTE: The "."  .(dot) at the end is not a typo, it means 'current directory'**

For Example:
```
scp -i ~/Documents.aws.pem ubuntu@ec2-52-207-225-47.compute-1.amazonaws.com:~/iris.csv .
```
