#!/usr/bin/python
# -*- coding: utf-8 -*-
import requests
import json
import sys
import os
headers = {'Content-Type': 'application/json;charset=utf-8'}
api_url= "https://oapi.dingtalk.com/robot/send?access_token=fb2fc6146f289de3d173b65dacf02335d3109c80c9b927522a11311648e4a388"
def msg(text):
    json_text= {
     "msgtype": "text",
        "text": {
            "content": text
        },
        "at": {
            "atMobiles": [
                 13859993632
            ],
            "isAtAll": False
        }
    }
    requests.post(api_url,json.dumps(json_text),headers=headers).content
if __name__ == '__main__':
    text = sys.argv[1]
    msg(text)
