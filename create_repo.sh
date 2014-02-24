#!/bin/bash

username=$1
passwd=$2
repo=$3
auth="$username:$passwd"
data="{\"name\":\"$repo\",\"private\":false}"
api="https://api.github.com/user/repos"

curl -i -u $auth -d $data $api
