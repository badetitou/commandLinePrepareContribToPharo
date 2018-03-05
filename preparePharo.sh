#!/bin/bash

SRC="src"

while getopts t:l: option
do
case "${option}"
in
t) TAG=${OPTARG};;
l) LOCATION=${OPTARG};;
esac
done

echo "move to $TAG"
mkdir $TAG
cd $TAG

wget -O- https://get.pharo.org/70+vm | sh

# ./$LOCATION/git

cd $LOCATION
git checkout development
git pull pharo development
cd -

./pharo Pharo.image eval --save "
| repository |
repository := IceRepositoryCreator new
    location: '$LOCATION' asFileReference;
    subdirectory: 'src';
    createRepository.
  repository register; createBranch: '$TAG'
".
