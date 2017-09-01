import pymysql
import config as c
try:
    #获取一个数据库连接，注意如果是UTF-8类型的，需要制定数据库
    conn=pymysql.connect(host='localhost',user=c.mysql_user,passwd=c.mysql_pass,db='db_run',port=3306,charset='utf8')
    cur=conn.cursor()#获取一个游标
    cur.execute('select * from User')
    data=cur.fetchall()
    print(data)
    for d in data :
        #注意int类型需要使用str函数转义
        print(d)
        print("ID: "+str(d[0])+'  用户名： '+d[1]+"  注册时间： "+d[2] + '  余额  ' + str(d[3]))
    cur.close()#关闭游标
    conn.close()#释放数据库资源
except  Exception :print("查询失败")