#!/bin/bash

git clone "https://stellar-jenkins@github.com/stellar/bower-js-stellar-base.git" bower
cp dist/* bower
cd bower
git add .
git commit -m $TRAVIS_TAG
git tag -a $TRAVIS_TAG -m $TRAVIS_TAG
git push origin --tags
