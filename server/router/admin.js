const express=require("express");
const router=express.Router();
const con=require("./../sql");
const multer=require("multer");
const path=require("path");
//用户管理
router.get("/getusers",function(req,res){
    con.query("select * from users",function(err,result){
        res.send(result);
    });
});
router.get("/delusers",function(req,res){
    let {uid}=req.query;
    con.query("delete from users where uid="+uid,function(err,result){
        if(result){
            res.send("1");
        }else{
            res.send("0");
        }
    })
});
router.post("/adduser",function(req,res){
    let data=req.body;
    con.query("insert into users(username,password,phone)values(?,?,?)",[data.username,data.password,data.phone],function(err,result){
        if(result){
            res.send("1");
        }else{
            res.send("0");
        }
    })
});
router.get("/getuser",function(req,res){
    let {uid}=req.query;
    con.query("select * from users where uid="+uid,function(err,result){
        res.json(result);
    })
});
router.post("/edituser",function(req,res){
    let data=req.body;
    con.query("update users set username=?,password=?,phone=? where uid=?",[data.username,data.password,data.phone,data.uid],function(err,result){
        if(result){
            res.send("1");
        }else{
            res.send("0");
        }
    })
});
//商品管理
router.get("/getgoods",function(req,res){
    con.query("select * from goods",function(err,result){
        res.send(result);
    })
});
router.get("/delgoods",function(req,res){
    let {gid}=req.query;
    con.query("delete from goods where gid="+gid,function(err,result){
        if(result){
            res.send("1");
        }else{
            res.send("0");
        }
    })
});
router.post("/addgoods",function(req,res){
    let data=req.body;
    con.query("insert into goods(gname,gthumb,gprice,gnumber,tid)values(?,?,?,?,?)",[data.gname,data.gthumb,data.gprice,data.gnumber,data.tid],function(err,result){
        if(result){
            res.send("1");
        }else{
            res.send("0");
        }
    })
});
//处理上传
//multer
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, path.resolve("upload"));
    },
    filename: function (req, file, cb) {
        cb(null, file.fieldname + '-' + Date.now()+path.extname(file.originalname))
    }
});
var upload = multer({ storage: storage })
router.post("/upload",upload.single("file"),function(req,res){
    res.send(req.file.filename);
});
module.exports=router;
//用户管理
router.get("/getuser",function (req,res) {
    con.query("select * from users",function (err,result) {
        res.send(result);
    });
});
router.get("/deluser",function (req,res) {
    let {uid}=req.query;
    con.query("delete from users where uid="+uid,function (err,result) {
        if(result){
            res.send("1");
        }else{
            res.send("0");
        }

    });
});
router.post("/adduser",function (req,res) {
    let data=req.body;
    con.query("insert into users(username,password,phone)values(?,?,?)",[data.username,data.password,data.phone],function (err,result) {
        if(result){
            res.send("1")
        }
    });
});
//商品管理
router.get("/getgoods",function (req,res) {
    con.query("select * from goods",function (err,result) {
        res.send(result);
    });
});

router.get("/delgoods",function (req,res) {
    let {gid}=req.query;
    con.query("delete from goods where gid="+gid,function (err,result) {
        if(result){
            res.send("1");
        }else{
            res.send("0");
        }

    });
});
module.exports=router;