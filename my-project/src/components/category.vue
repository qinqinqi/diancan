<template>
    <div class="main">
        <header class="header">
            <div class="top">
                <div class="back" @click="goback">&lt;</div>
                {{name}}
            </div>
            <section class="types">
                <div class="left">
                    <div :class="{active:tid==0}" @click="tid=0">全部</div>
                    <div v-for="item in type" :key="item.tid" @click="tid=item.tid" :class="{active:tid==item.tid}">
                        {{item.tname}}
                    </div>
                </div>
                <div class="more" @click="showmore">+</div>
            </section>
        </header>
        <section class="bg" v-show="showbg">
            <div class="menu">
                <div class="menu-title">
                    <span class="title">请选择分类</span>
                    <span class="close" @click="showbg=false">x</span>
                </div>
                <div class="menu-content">
                    <ul class="categorylist">
                        <li v-for="item in cats" :key="item.cid" :class="{active:item.cid==nowtype}"
                            @click="nowtype=item.cid">{{item.cname}}
                        </li>
                    </ul>
                    <ul class="typelist">
                        <li class="active">
                            <img :src="'/api/img/'+nowimg" alt="">
                            <span>全部</span>
                        </li>
                        <li v-for="item in types" :key="item.tid">
                            <img :src="'/api/img/'+item.tthumb" alt="">
                            <span>{{item.tname}}</span>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <div class="shoparea">
            <scroller :on-refresh="refresh" :on-infinite="infinite">
                <ul>
                    <li v-for="item in shops" :key="item.sid">
                        <router-link :to="{name:'shop',query:{sid:item.sid}}">
                            <div class="logo">
                                <img :src="'/api/img/'+item.slogo" alt="">
                            </div>
                            <div class="introduce">
                                <div class="shop-name"><span v-if="item.sbrand==1">品牌</span>{{item.sname}}</div>
                                <div class="star">星级：{{item.sstar}}
                                    <div class="bee" v-if="item.stype==1">蜂鸟专送</div>
                                </div>
                                <div class="fee">
                                    {{item.schargingFee}}¥<span></span>起送 配送费¥<span>{{item.sdistributionFee}}</span>
                                </div>
                            </div>
                        </router-link>
                    </li>
                </ul>
            </scroller>
        </div>
    </div>
</template>

<script>
    export default {
        name: "category",
        data: function () {
            return {
                name: "",   //当前栏目名称
                cid: "",    //当前栏目id
                type: [],   //当前栏目包含的子栏目
                showbg: false, //是否显示顶部菜单
                cats: [],   //顶部菜单包含的栏目信息
                types: [],  //顶部菜单包含的子栏目信息
                nowtype: 1, //顶部菜单当前显示类型
                shops: [],  //当前显示的店铺信息
                page:0,     //当前显示的店铺页数
                tid:0       //当前默认显示的小分类的id
            }
        },
        mounted: function () {
            this.name = this.$route.query.name;
            this.cid = this.$route.query.id;
            this.$http.get("/api/gettype?cid=" + this.cid).then(res => {
                this.type = res.body;
            });
            this.$http.get("/api/getallshop?cid=" + this.cid).then(res => {
                this.shops = res.body;
            });
        },
        computed: {
            nowimg: function () {
                if (this.cats.length === 0) {
                    return "1.jpeg";
                } else {
                    return this.cats.filter(v => v.cid === this.nowtype)[0].cthumb;
                }
            }
        },
        watch: {
            nowtype: function () {
                this.gettype();
            },
            tid:function(){
                this.page=0;
                if(this.tid==0){
                    this.refresh(function(){});
                    return;
                }
                this.$http.get("/api/getsomeshop?tid="+this.tid).then(function(req){
                    this.shops=req.body;
                })
            }
        },
        methods: {
            //返回上级
            goback: function () {
                this.$router.go(-1);
            },
            //打开顶部菜单
            showmore: function () {
                this.showbg = true;
                this.$http.get("/api/category").then(res => {
                    this.cats = res.body;
                });
                this.gettype();
            },
            //获取当前大分类下的小分类
            gettype: function () {
                this.$http.get("/api/gettype?cid=" + this.nowtype).then(res => {
                    this.types = res.body;
                })
            },
            //更新店铺数据
            refresh: function (done) {
                if(this.tid==0) {
                    this.$http.get("/api/getallshop?cid=" + this.cid).then(res => {
                        this.shops = res.body;
                        done();
                    });
                }else{
                    this.$http.get("/api/getsomeshop?tid="+this.tid).then(function(req){
                        this.shops=req.body;
                        done();
                    })
                }
            },
            //加载更多店铺数据
            infinite: function (done) {
                if(this.tid==0) {
                    this.page++;
                    this.$http.get("/api/getallshop?cid=" + this.cid + "&page=" + this.page).then(res => {
                        if (res.body.length === 0) {
                            done(true);
                            return;
                        }
                        this.shops = this.shops.concat(res.body);
                        this.$nextTick(function () {
                            done();
                        });// 在当前dom更新完毕之后
                    });
                }else{
                    this.page++;
                    this.$http.get("/api/getsomeshop?tid="+this.tid+"&page="+this.page).then(function(res){
                        if (res.body.length === 0) {
                            done(true);
                            return;
                        }
                        this.shops = this.shops.concat(res.body);
                        this.$nextTick(function () {
                            done();
                        });// 在当前dom更新完毕之后
                    })
                }
            }

        }
    }
</script>

<style scoped>
    .header {
        width: 100vw;
        height: 15vh;
        text-align: center;
        line-height: 10vh;
        background: #01a1ff;
        position: fixed;
        left: 0;
        top: 0;
        color: #fff;
    }

    .top {
        width: 100vw;
        height: 10vh;
    }

    .back {
        width: 5vw;
        height: 10vh;
        position: absolute;
        left: 5vw;
        top: 0;
        line-height: 10vh;
        color: #fff;
    }

    .types {
        width: 100vw;
        height: 5vh;
    }

    .types .left {
        width: 90vw;
        height: 5vh;
        float: left;
        white-space: nowrap;
        overflow-x: auto;
        text-align: left;
        overflow-y: hidden;
    }

    .types .left div {
        display: inline-block;
        margin: 0 2vw;
        height: 4.5vh;
        line-height: 5vh;
        vertical-align: top;
        color: #f4eded;
    }

    .types .more {
        width: 10vw;
        height: 5vh;
        float: left;
        text-align: center;
        line-height: 5vh;
    }

    .types .left div.active {
        color:#fff;
        font-weight: bold;
        border-bottom: 2px solid #fff;
    }

    .bg {
        position: fixed;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.53);
        z-index: 9999;
    }

    .menu {
        width: 100vw;
        height: 70vh;
        background: #fff;
    }

    .menu-title {
        width: 100vw;
        height: 6vh;
        line-height: 6vh;
        background: #eee;
    }

    .menu-title .title {
        float: left;
        padding-left: 10vw;
    }

    .menu-title .close {
        float: right;
        width: 10vw;
        text-align: center;
    }

    .menu-content {
        width: 100vw;
        height: 64vh;
    }

    .categorylist {
        width:35vw;
        height: 100%;
        overflow: auto;
        float: left;
        background:#eeecec;
    }

    .typelist {
        width: 65vw;
        height: 100%;
        overflow: auto;
        float: left;
        padding-left: .3rem;
    }

    .categorylist li {
        width: 100%;
        /* height: 4vh; */
        line-height: 4vh;
        /* margin: 2vh 0; */
        text-align: center;
        border-left: 4px solid transparent;
        color: #333;
        padding: 3vw 2vh;
    }

    .categorylist li.active {
        background:#fff;
        border-left: 4px solid #2395ff;
    }

    .typelist li {
        width: 100%;
        height: 12.8vw;
        line-height: 12.8vw;
        color: #333;
    }

    .typelist img {
        width: 9.8vw;
        height: 9.8vw;
        float: left;
    }

    .typelist span {
        float: left;
        margin-left: 3vw;
    }

    .typelist li.active {
        color: #2395ff;
    }

    .shoparea {
        width: 100vw;
        height: 85vh;
        background:#eeecec;
        margin-top: 15vh;
        overflow: hidden;
        position: relative;
    }

    .shoparea ul {
        width: 100vw;
        height: auto;
    }

    .shoparea ul li {
        width: 100vw;
        height: 20vh;
        background: #fff;
        text-align: left;
        padding-top: .8rem;
    }

    .shoparea ul li .logo {
        width: 20vw;
        height: 20vh;
        float: left;
    }

    .shoparea ul li .logo img {
        width: 16vw;
        height: auto;
        margin: 2vw auto;
    }

    .shoparea ul li a {
        color: #333;
    }

    .introduce {
        width: 80vw;
        height: 20vh;
        float: left;
        padding-left: 5vw;
    }

    .shop-name {
        width: 75vw;
        height: 4vh;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .shop-name span {
        background: yellow;
        padding: 2px;
        font-size: 14px;
        color: #ff3f44;
    }

    .star {
        height: 4vh;
    }

    .fee {
        height: 4vh;
        font-size: 12px;
        color: #ccc;
    }

    .bee {
        float: right;
        padding: 2px;
        background: #2395ff;
        color: #fff;
        font-size: 12px;
        margin-right: 5px;
    }

</style>