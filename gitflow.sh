#!/bin/sh

rm -rf gitflow
git init gitflow
cd gitflow

sleep 1; git commit --allow-empty -m 'existing master'
git tag 0.1

git checkout -b develop
sleep 1; git commit --allow-empty -m 'develop'
sleep 1; git commit --allow-empty -m 'develop'
sleep 1; git commit --allow-empty -m 'develop'
git checkout -b feature-A
git checkout -b feature-B

git checkout feature-B
sleep 1; git commit --allow-empty -m 'feature-B'

git checkout develop
sleep 1; git commit --allow-empty -m 'develop'

git checkout feature-A
sleep 1; git commit --allow-empty -m 'feature-A'

git checkout master -b hotfix-A
sleep 1; git commit --allow-empty -m 'hotfix-A .2'
git checkout master
sleep 1; git merge --no-ff hotfix-A -m 'merge hotfix-A'
git tag 0.2

git checkout feature-B
sleep 1; git commit --allow-empty -m 'feature-B'
git checkout feature-A
sleep 1; git commit --allow-empty -m 'feature-A'

git checkout develop
sleep 1; git merge --no-ff hotfix-A -m 'merge hotfix-A'

git checkout feature-A
sleep 1; git commit --allow-empty -m 'feature-A'

git checkout develop
sleep 1; git merge --no-ff feature-A -m 'merge feature-A'

git checkout -b release-1.0
sleep 1; git commit --allow-empty -m 'release-1.0-bugfix'
sleep 1; git commit --allow-empty -m 'release-1.0-bugfix'

git checkout develop
sleep 1; git merge --no-ff release-1.0 -m 'merge release-1.0 into develop'

git checkout feature-B
sleep 1; git commit --allow-empty -m 'feature-B'

git checkout develop
git checkout -b feature-C
sleep 1; git commit --allow-empty -m 'feature-C'

git checkout release-1.0
sleep 1; git commit --allow-empty -m 'release-1.0-bugfix'
git checkout develop
sleep 1; git merge --no-ff release-1.0 -m 'merge release-1.0 into develop'

git checkout release-1.0
sleep 1; git commit --allow-empty -m 'release-1.0-bugfix'
git checkout develop
sleep 1; git merge --no-ff release-1.0 -m 'merge release-1.0 into develop'

git checkout master
sleep 1; git merge --no-ff release-1.0 -m 'merge release-1.0 into master'
git tag 1.0

git checkout feature-C
sleep 1; git commit --allow-empty -m 'feature-C'

git checkout feature-B
sleep 1; git commit --allow-empty -m 'feature-B'

git checkout develop
sleep 1; git merge --no-ff -m 'merge all features' feature-B feature-C

git checkout -b release-2.0
sleep 1; git commit --allow-empty -m 'release-2.0-bugfix'

git checkout develop
sleep 1; git merge --no-ff release-2.0 -m 'merge release-2.0 into develop'

git checkout master
sleep 1; git merge --no-ff release-2.0 -m 'merge release-2.0 into master'

git lola
