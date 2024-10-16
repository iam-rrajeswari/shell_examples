#!/bin/bash


############


#Author :Rajeswari
#30/sep/2024
#
#
#
#
####version: v1
#
#This script will report the AWS resource usage
########################
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users
set -x

# list s3 buckets
echo "list of s3 bucket"
 
aws s3 ls

# list EC2 Instances
echo "list of EC2 Instances"
  
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#list Lambda
echo "list of Lambda"
aws lambda list-functions


#list IAM users

echo "list of IAM users"
aws iam list-users
