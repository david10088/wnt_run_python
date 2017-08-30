#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from urllib.request import urlopen
import json
from pprint import pprint
import web
import pymysql
import time
import base64
from qiniu import Auth, put_file, etag, urlsafe_base64_encode
import qiniu.config
render = web.template.render('templates/')
urls= (
    '/hello(.*)','hello',
    '/test(.*)','test',
    '/refer(.*)', 'refer',
    '/refer(.*)', 'refer',
    '/user(.*)','user',
    '/(.*)','index',
    )



app= web.application(urls,globals())


def conSQL():
    conn = pymysql.connect(host='localhost', user='root', passwd='123456', db='db_run', port=3306, charset='utf8')

    return conn


class index:
    def GET(self,name):
        print('haha')

class user:
    def GET(self, name):
        conn = conSQL()
        cur = conn.cursor()  # 获取一个游标
        cur.execute('SELECT u.id,u.nickname,u.realname,u.money,sum(r.length) length ,COUNT(r.id) cou FROM (\
                      SELECT u.id,u.nickname,u.realname,sum(m.money) money \
                      FROM `User` u, Money m  WHERE u.id = m.user_id GROUP BY u.id) \
                      u,Run r WHERE u.id = r.user_id GROUP BY u.id')
        data = cur.fetchall()
        #print(data)
        return render.user(data)

#跑步数据写入数据库
def SQL_refer(data):
    #print(data['hour'])
    time = int(data['hour'])*60*60 + int(data['minute'])*60 + int(data['second'])
    print(time)
    conn = conSQL()
    cur = conn.cursor()  # 获取一个游标
    cur.execute("INSERT INTO `Run` (`id`, `user_id`, `time`, `length`, `img`, `date`) \
                  VALUES (NULL,'%d','%d','%f','%s','%d')" \
                %(int(data['user_id']),time,float(data['lenth']),data['key'],int(data['date'])))
    conn.commit()
    print(time)
    #int(data['user_id']),time,float(data['lenth']),data['key'],int(data['date'])


class refer:

    def GET(self,name):
        try:
            i = web.input()
            data = base64.b64decode(i.upload_ret).decode('ascii')
            data = eval(data)
            print(data)
            SQL_refer(data)
        except:
            print('11')

        # 需要填写你的 Access Key 和 Secret Key
        access_key = 'ZRlg9zh_KoUDJy6VTXhUkOnUMyvuXCMmPgIdxEMM'
        secret_key = '0tZQdt65E765j6z3wM1yb1z0ZZm9YX2KHbCf1oOV'
        # 构建鉴权对象
        q = Auth(access_key, secret_key)
        # 要上传的空间
        bucket_name = 'wnt-run'
        # 上传到七牛后保存的文件名
        date = int(time.time())
        key = str(int(time.time())) + '.png';
        # 生成上传 Token，可以指定过期时间等
        token = q.upload_token(bucket_name, key, 3600, {'returnUrl':'http://127.0.0.1:8080/refer', 'returnBody': '{"user_id": $(x:user_id),"hour": $(x:hour),"minute": $(x:minute),"second": $(x:second), "key": $(key),"lenth":$(x:lenth),"date":$(x:date)}'})
        bucket_name = 'wnt-run'
        return render.refer(key,token,date)

    def POST(self, name):

        print('111')
        #return render.refer()
class test:
    def GET(self, name):

        return render.test()
if __name__== "__main__":
    app.run()