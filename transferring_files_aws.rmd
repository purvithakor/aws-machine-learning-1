# Transfering Files 

## Transferring Files in Amazon Web Services (AWS)


### First you need to open your computer terminal (Note: NOT THE VM TERMINAL)

* 1. Uploading a file:
```
scp -i "your_aws_key.pem" [file-name] [aws-instance-name]:~/[file-name]
```

Example:
```
scp -i ~/Documents.aws.pem iris.csv ubuntu@ec2-52-207-225-47.compute-1.amazonaws.com:~/iris.csv
```
* 2. Downloading a file:
```
scp -i "your_aws_key.pem" [aws-instance-name]:~/ .
```
NOTE:->  .(dot) - Means current directory

Example:
```
scp -i ~/Documents.aws.pem ubuntu@ec2-52-207-225-47.compute-1.amazonaws.com:~/iris.csv .
```
