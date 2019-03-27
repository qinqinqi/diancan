const express = require("express");
const app = express();
const con = require("./sql.js");
const path = require("path");
const async = require("async");
// 中间件
const bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({extended:false}));
// const adminRouter=require("../../5.16vue-cli/server/router/admin");
const adminRouter=require("./router/admin");
app.use("/admin/api",adminRouter);
app.use("/static",express.static("static/admin/static"))
app.get("/admin/*",function(req,res){
    res.sendFile(path.resolve("static/admin/index.html"))
})
app.use("/static",express.static("static/admin/static"))
app.get("/index/*",function(req,res){
    res.sendFile(path.resolve("static/admin/index.html"))
})

app.get("/api/category", function (req, res) {
    con.query("select * from category order by corder", function (err, result) {
        res.json(result);
    })
});
app.get("/api/img/:src", function (req, res) {
    res.sendFile(path.resolve(__dirname + "/upload/" + req.params.src))
});
app.get("/api/gettype", function (req, res) {
    let cid = req.query.cid;
    con.query("select * from type where cid=" + cid, function (err, result) {
        res.json(result);
    })
});
// 查询某个大分类下的所有小分类中包含的店铺信息
app.get("/api/getallshop", function (req, res) {
    let cid = req.query.cid;
    let page = req.query.page || 0;
    async.waterfall([
        function (cb) {
            con.query("select * from type where cid=" + cid, function (err, types) {
                cb(err, types);
            })
        },
        function (types, cb) {
            let shops = [];
            async.each(types, function (type, cb1) {
                con.query("select * from shop,sat where shop.sid=sat.sid and sat.tid=" + type.tid, function (err, shopdata) {
                    shops = shops.concat(shopdata);
                    cb1(err);
                })
            }, function (err) {
                cb(err, shops);
            });
        }
    ],
        function (err, data) {
        let obj = {};
        data = data.filter(function (o) {
            if (obj[o.sid] === undefined) {
                obj[o.sid] = true;
                return true;
            } else {
                return false;
            }
        });
        data = data.slice(page*8,page*8+8);
        res.json(data);
    });
});
// 获取某个小分类下所有店铺
app.get("/api/getsomeshop",function(req,res){
    let tid=req.query.tid;
    let page=req.query.page||0;
    con.query(`select * from shop,sat where shop.sid=sat.sid and sat.tid=${tid} limit ${page*8},8`,function(err,result){
        res.json(result);
    })
});
// 获取某个店铺信息
app.get("/api/getshop",function(req,res){
    let sid=req.query.sid;
    con.query("select * from shop where sid="+sid,function(err,result){
        res.json(result);
    })
});
// 获取某个店铺商品类型
app.get("/api/getgoodstype",function(req,res){
    let sid=req.query.sid;
    con.query("select * from goodstype where sid=?order by torder",sid,function(err,result){
        res.json(result);
    })
});
// 获取某个店铺商品信息
app.get("/api/getgoods",function(req,res){
    let sid=req.query.sid;
    async.waterfall([
        function (cb) {
            con.query("select * from goodstype where sid=? order by torder",sid, function (err, types) {
                cb(err, types);
            })
        },
        // result是数组所有的分类
        function (result, cb) {
            let data= [];
            async.each(result, function (type, cb1) {
                con.query("select * from goods where tid="+type.gid, function (err, result) {
                    let obj={};
                    obj.name=type.tname;
                    obj.tid=type.gid;
                    obj.data=result;
                    data.push(obj);
                    cb1(err);
                })
            }, function (err) {
                cb(err,data);
            });
        }
    ],function (err,data) {
        res.json(data);
    });
});
// // 注册的请求
// app.post("/api/sign",function(req,res){
//     // console.log(req.body.user)
//     con.query("insert into users (username,password) values(?,?)",[req.body.user,req.body.pass],function(err,result){
//     if(result){
//         res.send("1")
//     }else{
//         res.send("0")
//     }
//     })
// });
// //用户登录
// app.get("/api/login",function(req,res){
//     let username=req.query.username;
//     con.query("select * from users where username=?",username,function(err,result){
//         res.json(result);
//     })
// })
//检查用户登录
app.get("/api/login",function(req,res){
    let username=req.query.username;
    con.query("select * from users where username=?",username,function(err,result){
        res.json(result);
    })
})
//注册用户
app.get("/api/sign",function(req,res){
    let newusername=req.query.newusername;
    let newpassword=req.query.newpassword;
    con.query(`insert into users (username,password) values ('${newusername}','${newpassword}')`,function(err,result){
        res.json(result);
    })
})
//检查用户是否存在
app.get("/api/checkuser",function(req,res){
    let username=req.query.username;
    con.query("select * from users where username=?",username,function(err,result){
        res.json(result);
    })
})
app.listen(8888, function () {
    console.log("服务器开启成功");
});