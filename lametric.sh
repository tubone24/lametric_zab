#!/bin/bash
js1='{"frames": [{"text": "'
js2='","icon": "i13561","index": 0}]}'
message=$js1$1$js2

echo $message

curl -X POST \
-H "Accept: application/json" \
-H "X-Access-Token: 'your Access-Token'" \
-H "Cache-Control: no-cache" \
-d "`echo $message`" \
https://developer.lametric.com/api/v1/dev/widget/update/com.lametric.1d769249ad7f01c8ef3cfffec1b752aa/1
