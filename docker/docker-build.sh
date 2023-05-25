#!/bin/sh

# Setting versions
VERSION='1.0.1'

cd ..
./gradlew clean bootJar -x test
ROOT_PATH=`pwd`
echo $ROOT_PATH

echo 'api docker imager build...'
cd $ROOT_PATH/api && docker build -t api:$VERSION .
echo 'api docker imager build... Done'

echo 'consumer docker imager build...'
cd $ROOT_PATH/consumer && docker build -t consumer:$VERSION .
echo 'consumer docker imager build... Done'

echo 'css docker imager build...'
cd $ROOT_PATH/css && docker build -t css:$VERSION .
echo 'css docker imager build... Done'

echo 'nginx docker imager build...'
cd $ROOT_PATH/nginx && docker build -t nginx:$VERSION .
echo 'css docker imager build... Done'