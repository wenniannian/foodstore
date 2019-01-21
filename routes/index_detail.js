// 获取细分类 sclass
const express=require("express");
const router=express.Router();
const pool=require("../pool");
router.get("/sClass",(req,res)=>{
    var bid=req.query.bid;
    var sql="select * from fs_sclass where bId=?";
    pool.query(sql,[bid],(err,result)=>{
        if (err) throw err
        res.send({code:1,data:result});
    })
})
router.get("/goods",(req,res)=>{
    var did=req.query.did;
    var sql="select * from fs_imgs i inner join fs_detail d on d.did=i.did";
    pool.query(sql,[did],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result});
    })
})
router.get("/detail",(req,res)=>{
    
})
module.exports=router;