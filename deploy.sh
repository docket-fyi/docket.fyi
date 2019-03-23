cd ./website
echo 'Building...'
npm run build
echo 'Done.'
echo 'Deploying...'
aws s3 sync ./build/ s3://staging.docket.fyi --acl public-read --profile docket.staging
echo 'Done.'
