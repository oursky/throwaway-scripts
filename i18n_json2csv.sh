#!/bin/sh

jq '[inputs | to_entries | map([.key, input_filename, .value]) | .[]] | group_by(.[0]) | map([.[0][0]] + map(.[2])) | .[] | @csv' -r -n src/i18n/*.json

# for example:
# src/i18n/en.json: `{"app.name":"App EN"}`
# src/i18n/zh.json: `{"app.name":"App ZH"}`
# result:
# "app.name","App EN","App ZH"
