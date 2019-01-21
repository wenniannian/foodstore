#设置编码格式
set names utf8;
#丢弃数据库
drop database if exists foodStore;
#创建数据库，名为商城并设置编码格式为utf8
create database foodStore charset=utf8; 
#使用数据库
use foodStore;

#登录/注册
create table fs_user(
    #用户编号 主键
    uid int primary key auto_increment,
    #手机号码
    tel int(11),
    #用户名称
    uname varchar(25),
    #邮箱
    email varchar(50),
    #用户密码
    upwd varchar(20)
);
#商品总分类
create table fs_Bclass(
    #商品类别号 主键
    bId int primary key auto_increment,
    #商品类别名
    bName varchar(20) 
);

insert into fs_Bclass values
(null,"饼干糕点"),
(null,"坚果炒货"),
(null,"糖果巧克力"),
(null,"蜜饯果干"),
(null,"肉类制品"),
(null,"海味零食"),
(null,"膨化零食"),
(null,"饮料/罐头/牛奶"),
(null,"豆菌笋类"),
(null,"速食/方便面");
           

#商品细分类
create table fs_Sclass(
    #细分类编号  主键
    sId int primary key auto_increment,
    #细类别编号 外键-连大类
    bId int ,
    #细类别名
    sName varchar(20)
);

insert into fs_Sclass values
(null,1,'饼干'),
(null,5,'肉'),
(null,3,'糖'),
(null,4,'果'),
(null,2,'坚果');

#商品详细表
create table fs_detail(
    #商品编号  主键
    dId int primary key auto_increment,
    #细类别编号 外键-小类
    sId int,
    #商品名称
    dName varchar(120),
    #商品价格
    dPrice decimal(10,2),
    #商品品牌
    dBrand varchar(50),
    #商品产地
    dAddr varchar(20),
    #商品口味
    dTaste varchar(20),
    #商品数量
    dMount int,
    #商品保质期
    dTime varchar(20),
    #商品详情图
    dImg varchar(200)
);

insert into fs_detail values
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null),
    (null,1,"嘉友大乃牛炼奶味饼干*250g 约7包","6.00","嘉友","广东","炼奶味",1,"12个月","img/product/lg/f1_01_lg.jpg" ),
    (null,2,"啃馋你酱烤原味小鸡腿42g", "3.80","啃馋你","福建"," 原味",1,"12个月","img/product/lg/f2_01_lg.jpg" ),
    (null,3,"Hello Kitty果汁软糖混合水果味（杯装造型）90g", "13.00","HELLO KITTY","广东","  水果味",1,"12个月",null),
    (null,4,"零度深林零度杨梅原味*275g 约7个","13.80","零度深林"," 浙江","  原味",1,"12个月",null),
    (null,5,"淘豆原味豌豆*100g 约4袋", "3.50","淘豆"," 江苏","  原味",1,"12个月",null);

#图片表
create table fs_imgs(
    #图片编号
    iId int primary key auto_increment,
    #商品编号 外键-商品详细表
    dId int,
    #中图
    iMd varchar(120),
    #小图
    iSm varchar(120)
);

insert into fs_imgs values
(null,1,"img/product/md/f1_01_md1.jpg","img/product/sm/f1_01_sm1.jpg"),
(null,1,"img/product/md/f1_01_md2.jpg","img/product/sm/f1_01_sm2.jpg"),
(null,1,"img/product/md/f1_01_md3.jpg","img/product/sm/f1_01_sm3.jpg"),
(null,1,"img/product/md/f1_01_md4.jpg","img/product/sm/f1_01_sm4.jpg"),
(null,1,"img/product/md/f1_01_md5.jpg","img/product/sm/f1_01_sm5.jpg");




select iSm from fs_imgs a where a.did in (select b.did from fs_detail b where b.sid in (select c.bid from fs_sclass c where c.sid = ? ))