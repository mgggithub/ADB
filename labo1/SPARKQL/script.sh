#!/bin/bash

base_url="http://34.173.34.194:7200"

if [ "$#" -ne "1" ]; then
    echo "Usage => $0 'consulta SPARKQL'";
    exit
fi

sparql_query="$1"
repo_id="test"

curl -X POST "$base_url/repositories/$repo_id" -H "Content-Type: application/x-www-form-urlencoded" --data-urlencode "query=$sparql_query"