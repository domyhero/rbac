# rbac
用户权限管理系统


1.设置数据库 [ 默认数据库名 bool]
bool\App\Common\Conf\config.php

2.新建数据库,把admin.sql 导入到数据库

3.访问 http://localhost/bool/admin.php

4.管理员密码 admin,admin   test,test

【安装完以后可以删除本目录】




数据库介绍
--------------------------------------------------------------------
[ slider 轮播图 ]
id			主键
title		标题
img			图片
sort_id		排序
link		链接
status		是否显示
---------------------------------------------------------------------
[ node 节点表 ]
id			主键
name		节点名称
controller	控制器
action		方法
pid			父类id
add_time	添加时间
-----------------------------------------------------------------------
[ role 角色表 ]
id			主键
name		名字
node_ids	节点id
add_time	添加时间
-----------------------------------------------------------------------
[ admin 管理员 ]
id			主键
username	用户名
password	密码
role_id		角色id
email		邮箱
phone		手机
remark		备注
create_time	创建时间
------------------------------------------------------------------------
[ log 日志表 ]
id			主键
uid			用户id
desc		内容
time		时间
------------------------------------------------------------------------
[ config 网站设置表 ]
id			主键
title		标题
desc		描述
keyword	关键字
copy		备案号
statistics	统计
logo		logo
-----------------------------------------------------------------------
