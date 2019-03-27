<template>
   <div class="main">

       <div class="my">
           <!-- 头像部分开始 -->
           <div class="touxiang">
               <div class="tx_content">
                   <a href="information.html"><div class="tx_content_img"></div></a>
                   <div class="tx_content_img2">
                       <div class="tx_nicheng">
                           <h1>欢迎{{name}}登录</h1>
                       </div>
                       <div class="tx_car">拼单卡收藏馆</div>
                   </div>
               </div>
           </div>
           <!-- 头像部分结束 -->
           <div class="clear"></div>
           <!-- 我的会员开始 -->
           <img src="../assets/img/my.png" alt="" class="my_img">
           <!-- 我的会员结束 -->

           <!-- 优惠卷部分开始 -->
           <div class="yh">
               <ul>
                   <li>
                       <img src="../assets/img/134.png" alt="">
                       <p>我的优惠卷</p>
                   </li>
                   <li>
                       <img src="../assets/img/134.png" alt="">
                       <p>我的收藏</p>
                   </li>
                   <li>
                       <img src="../assets/img/134.png" alt="">
                       <p>我的足迹</p>
                   </li>
                   <li>
                       <img src="../assets/img/134.png" alt="">
                       <p>退款/售后</p>
                   </li>
               </ul>
           </div>
           <!-- 优惠卷部分结束 -->

           <!-- 收货地址部分开始 -->
           <div class="address">
               <ul>
                   <li>
                       <img src="../assets/img/135.png" alt="">
                       <p>邀请好友免费领好礼</p>
                       <span>〉</span>
                   </li>
                   <router-link to="/order">
                       <li>
                           <img src="../assets/img/132.png" alt="">
                           <p>我的订单</p>
                           <span>〉</span>
                       </li>
                   </router-link>
                   <li>
                       <img src="../assets/img/132.png" alt="">
                       <p>我的免单卷</p>
                       <span>〉</span>
                   </li>
                   <li>
                       <img src="../assets/img/132.png" alt="">
                       <p>收货地址</p>
                       <span>〉</span>
                   </li>
               </ul>
               <div class="exit" @click="quit">
                   退出登录
               </div>
           </div>
           <!-- 收货地址部分结束 -->
       </div>
       <!--导航-->
       <Footernav></Footernav>
   </div>
</template>

<script>
    import Footernav from './footernav'
    import {setCookie,getCookie,delCookie} from "../assets/cookie";
    export default {
        name: "personal",
        data(){
            return{
                name: ''
            }
        },
        mounted(){
            this.$store.state.nav=4;
            let uname=getCookie('username');
            this.name=uname;
            if(uname=="")
            {
                this.$router.push("/login")
            }
        },
        methods:{
            quit:function(){
                delCookie('username');
                this.$router.push("/");
            }
        },
        components:{  //局部声明
            Footernav
        }
    }
</script>

<style scoped>
    body{
        background:#f7f3f7;
    }
    .clear{
        clear: both;
    }
    .my::-webkit-scrollbar{
        display: none;
    }
    .my{
        width:100%;
        height:18rem;
        overflow-y:scroll;
    }
    .touxiang{
        background: #00aaff;
        width:100%;
        height:4.3rem;
        float: left;
    }
    .tx_content{
        width:9.89rem;
        height:1.88rem;
        /* background:yellow; */
        margin-top:1.33rem;
        margin-left:.47rem;
    }
    .tx_content_img{
        width:1.88rem;
        height:1.88rem;
        border-radius:50%;
        border:.05rem solid #fff ;
        background:url('../assets/img/touxiang.jpg');
        background-repeat:no-repeat;
        background-size:100% 100%;
        float: left;
    }
    .tx_content_img2{
        width:7.6rem;
        height:1.1rem;
        /* background:blue; */
        margin-top:.3rem;
        float: right;
    }
    .tx_nicheng h1{
        width:auto;
        color:#fff;
        font-size: .4rem;
    }
    .tx_nicheng h1 a{
        color:#fff;
        font-size:.4rem;
        float: left;
    }
    .tx_nicheng img{
        width:.77rem;
        height: .48rem;
    }
    .tx_nicheng h2{
        color:#fff;
        font-weight:normal;
        font-size:.26rem;
        float: left;
        margin-top:.24rem;
    }
    .tx_car{
        width:3.54rem;
        height:.76rem;
        background:blue;
        float: right;
        border-radius:.5rem;
        margin-top:-.2rem;
        font-size:.36rem;
        color:#fff;
        line-height:.76rem;
        text-align:center;
    }
    .order{
        width:100%;
        height:3.5rem;
        background:#fff;
    }
    .order_center{
        width:10.1rem;
        height:3.5rem;
        margin: 0 auto;
        /* background:pink; */
    }
    .oc_title{
        width:100%;
        height:1.36rem;
        /* text-align:center; */
        line-height:1.36rem;
        border-bottom:.02rem solid #e7e3e7;
    }
    .oc_title h1{
        font-weight:bold;
        font-size:.46rem;
        float: left;
    }
    .oc_title h2{
        font-weight:normal;
        font-size:.32rem;
        color: #9c9e9c;
        float: right;
    }
    .order_center ul{
        display:flex;
        justify-content:space-between;
    }
    .order_center ul li{
        width:1.06rem;
        height:2.04rem;
        float: left;
        text-align: center;
    }
    .order_center ul li span{
        font-family: 'iconfont';
        font-size:.56rem;
        color: #9c9e9c;
        font-weight:bold;
    }
    .order_center ul li p{
        font-size:.3rem;
    }
    .yh{
        width:100%;
        height:2.38rem;
        background:#fff;
        margin: 0 0 .24rem;
    }
    .yh ul{
        width:9.77rem;
        display:flex;
        justify-content:space-between;
        margin: 0 auto;
    }
    .yh ul li{
        width:1.79rem;
        height:2.31rem;
        text-align:center;
    }
    .yh ul li img{
        width:.7rem;
        height:1.5rem;
        margin:0 auto;
    }
    .yh ul li p{
        font-size:.34rem;
    }
    .address{
        width: 100%;
        height:5.5rem;
        background:#fff;
    }
    .address ul{
        width:10.1rem;
        margin: 0 auto;
    }
    .address ul li{
        width:100%;
        height:1.38rem;
        line-height:1.38rem;
        float: left;
        border-bottom:.02rem solid #e7e3e7;
    }
    .address ul li img{
        width:.49rem;
        height:.57rem;
        margin-top: .38rem;
        margin-right:.44rem;
        float:left;
    }
    .address ul li p{
        font-size:.44rem;
        font-weight:bold;
        float:left;
    }
    .address ul li span{
        float: right;
        font-size:.38rem;
        color: #9c9e9c;
        font-weight:bold;
    }
    .my_img{
        width:100%;
        height: auto;
        margin:.24rem auto 0;
    }
    .exit{
        color:red;
        text-align: center;
        border:0;
        display: block;
        font-weight: 900;
        padding-top: 6.5rem;
    }
</style>