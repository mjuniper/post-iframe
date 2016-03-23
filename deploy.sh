
# dev
aws s3 cp post-iframe.html s3://dev-od-umbrella --acl public-read

# qa
aws s3 cp post-iframe.html s3://open-data-qa-umbrella-tng --acl public-read

# prod
# aws s3 cp post-iframe.html s3://open-data-prod-umbrella-tng --acl public-read --profile=prod
