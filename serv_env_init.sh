RAW_STR=$(awslocal ecr create-repository --repository-name test-ecr | grep "repositoryUri")
RAW_STR=(${RAW_STR//:/})
RAW_STR=${RAW_STR[1]}
ECR_URI=$(echo ${RAW_STR}|sed 's/"//g'|sed 's/,//g')
docker build -t ECR_URI .
