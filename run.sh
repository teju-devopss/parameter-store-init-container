for param in $PARAMS; do
  PARAM=$(echo $param| awk -F ,'{print $1}')
  KEY=$(echo $param| awk -F ,'{print $2}')
  VALUE=$(aws ssm get-parameter --name $param --region us-east-1 --with-decryption --query "Parameter.Value" -output text)
   echo "export $KEY=\"$VALUE\"" >>/parameters/params
done