if [ $# -eq 0 ] | [ -z "$1" ]
  then
    echo "SSO profile name is required as a positonal parameter. You can find your SSO profile name(s) in ~/.aws/config."
    exit 1
fi


aws sso login --profile=$1
eval "$(aws2-wrap --profile $1 --export)"
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set aws_session_token $AWS_SESSION_TOKEN