#!/bin/sh

AMI_IMAGE_NAME="ubuntu/images/hvm-ssd/ubuntu-*-amd64-server-*"

# http://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region

for region in eu-central-1
do
    printf "\"$region\" : {"
    aws ec2 describe-images --filters "Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-*-amd64-server-2017*" --region eu-central-1 --query "Images[].[Name,ImageId]"
    printf "},\n"
done
