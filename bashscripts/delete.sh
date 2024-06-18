#!/bin/bash

function deleteFile(){
    local backupDir=$1
    cd "${backupDir}" || exit

    local file_count
    file_count=$(ls | wc -l)

    if [ "$file_count" -gt 2 ];then
        ls -t | tail -n +3 | xargs rm -- 
}

