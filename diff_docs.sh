#!/bin/bash

temp1=`mktemp /tmp/docx-temp-file.XXXXXXXXXXXXXXXXXXXXXXXX`
temp2=`mktemp /tmp/docx-temp-file.XXXXXXXXXXXXXXXXXXXXXXXX`
pandoc --to=markdown "${1}" > "${temp1}"
pandoc --to=markdown "${2}" > "${temp2}"

meld "${temp1}" "${temp2}"

rm "${temp1}" "${temp2}"
#rm ".${1}.temp-file" ".${2}.temp-file"


