# 一个简单的JavaWeb学生基本信息管理系统

基于Servlet+JSP+JQuery+Tomcat+MySQL

V1.0    正式发布版本


V1.0.01   更新login.html，添加登录按钮绑定回车事件，实现回车登录功能

bug回顾:  mysql更新中文数据后数据库中中文显示问号，Servlet和JSP编码设置无问题，定位到mysql的配置文件中，修改[mysql]下面的语句：default-character-set=utf8、修改[mysqld]下面的语句 character-set-server=utf8。
