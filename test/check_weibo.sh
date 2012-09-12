#! /bin/sh -

# get weibo.cn/pub
curl -b 3gweibo.cookie -H "Host: weibo.cn" -H "Connection: keep-alive" -H "User-Agent: Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/14.0.835.186 Safari/535.1" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Charset:GBK,utf-8;q=0.7,*;q=0.3" -H "Accept-Encoding: gzip,deflate,sdch" -H "Accept-Language: zh-CN,zh;q=0.8" -H "Accept-Charset: GBK,utf-8;q=0.7,*;q=0.3" -o weibo.cn.html http://weibo.cn/pub
