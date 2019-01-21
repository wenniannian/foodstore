const express=require("express");
const pool=require("../pool");
const router=express.Router();
router.post('/regist',(req,res)=>{
    var uname=req.body.uname;
    var email=req.body.email;
    var upwd=req.body.upwd;
    var tel=req.body.tel;
    if(!uname){
        res.send({code:1,msg:"用户名不能为空"});
        return;
    }
    if(!email){
        res.send({code:2,msg:"邮箱不能为空"});
        return;
    }
    if(!upwd){
        res.send({code:3,msg:"用户密码不能为空"});
        return;
    }
    if(!tel){
        res.send({code:4,msg:"用户电话不能为空"});
        return;
    }
    var sql="select * from fs_user where uname=?";
    pool.query(sql,[uname],(err,result)=>{
        if (err)throw err;
        if(result.length>0){
            console.log("用户已经注册，不能使用！");
            return;
        }else{
            console.log("可以注册！");
        }
    })
    var sql="insert into fs_user values(null,?,?,?,?)";
    pool.query(sql,[tel,uname,email,upwd],(err,result)=>{
        if (err) throw err;
        if(result.affectedRows>0){
            res.send({code:1,msg:"添加成功"});
        }else{
            res.send({code:-1,msg:"添加失败"});
        }
    })
})

module.exports=router;