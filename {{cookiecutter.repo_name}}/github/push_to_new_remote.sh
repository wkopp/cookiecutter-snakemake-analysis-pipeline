#!/bin/bash

curl -u '{{cookiecutter.github_username}}' https://api.github.com/user/repos -d "{\"name\":\"{{cookiecutter.repo_name}}\"}"


git init
git add .
git commit -m "First commit"

# Sets the new remote
git remote add origin {{cookiecutter.github_url}}
# Verifies the new remote URL
git remote -v

# Pushes the changes in your local repository up to the remote repository you specified as the origin
git push --set-upstream origin master
