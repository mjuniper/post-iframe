
ENV="$1"

echo "deploying to: $ENV"

if [ "$ENV" = "devext" ] ; then
  # dev
  aws s3 cp post-iframe.html s3://dev-od-umbrella --acl public-read
elif [ "$ENV" = "qaext" ] ; then
  # qa
  aws s3 cp post-iframe.html s3://open-data-qa-umbrella-tng --acl public-read
elif [ "$ENV" = "prod" ] ; then
  # prod
  aws s3 cp post-iframe.html s3://open-data-prod-umbrella-tng --acl public-read --profile=prod
else
  echo "Environment not found!"
fi
