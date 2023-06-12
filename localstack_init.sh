docker rm /localstack_main
export DEBUG=0
export LOCALSTACK_VOLUME_DIR='/home/iamtanmay/localstack'
export AWS_ACCESS_KEY_ID="test"
export AWS_SECRET_ACCESS_KEY="test"
export AWS_DEFAULT_REGION="eu-west-1"

#Add alias
if ! grep -q "awslocal" ~/.bashrc ; then
  echo $'alias awslocal=\'aws --endpoint-url https://localhost.localstack.cloud:4566\'' >> ~/.bashrc
fi

cd $LOCALSTACK_VOLUME_DIR
docker compose up
