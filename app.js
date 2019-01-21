const express = require("express");
const bodyParse=require("body-parser");
const user=require("./routes/user");
const pool=require("./pool");
const index_detail=require('./routes/index_detail');

var app=express();
app.listen(8888,function(){
    console.log("服务器创建成功，8888");
});
app.use(express.static(__dirname+"/public"));
app.use(bodyParse.urlencoded({
    extended:false
}));

// 挂载路由
app.use("/user",user);
app.use('/index_detail',index_detail);

// 获取总分类
app.get("/Bclass",(req,res)=>{
    var sql="select * from fs_bclass";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,data: result});
    })
})



