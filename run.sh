#!/bin/bash

for item in $PARAMS; do
  PARAM=$(echo $item | awk -F, '{print $1}')
  KEY=$(echo $item | awk -F, '{print $2}')
  VALUE=$(aws ssm get-parameter --name "$PARAM" --region us-east-1 --with-decryption --query "Parameter.Value" --output text)
  echo "export $KEY=\"$VALUE\"" >> /parameters/params
done
