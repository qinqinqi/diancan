<template>
    <div class="mian" v-if="showLogin==true">
        <div id="content">
            <header>
                <a href="wode.html">
                    <p class="back" @click="goback">&#xe693;返回</p>
                    <p class="title">登录</p>
                </a>
                <img src="../assets/img/touxiang.jpg" alt="" class="my_img">
                <div class="phone_input">
                    <p class="input_left">用户名</p>
                    <input type="text" class="input1" placeholder="请输入用户名" v-model="username">
                    <div class="input_right">&#xe694;</div>
                </div>
                <div class="phone_input">
                    <p class="input_left">密 码</p>
                    <input type="password" class="input1" placeholder="请输入密码" v-model="password">
                    <div class="input_right">&#xe694;</div>
                </div>
            </header>
            <main>
                <div class="zhuce" @click="login">登录</div>
            </main>
            <div class="line_bar">
                <div class="line_content">
                    <p class="line_content_left" @click="showLogin=false,showTishi=false">没有账号?马上注册</p>
                </div>
            </div>
            <p v-show="showTishi" class="showTishi">{{tishi}}</p>
        </div>
    </div>
    <div class="main2" v-else>
        <div id="content1">
            <header>
                <a href="wode.html">
                    <p class="back" @click="goback">&#xe693;返回</p>
                </a>
                <p class="title">注册</p>
                <img src="../assets/img/touxiang.jpg" alt="" class="my_img">
                <div class="phone_input">
                    <p class="input_left">用户名</p>
                    <input type="text" class="input1" placeholder="请输入用户名" v-model="newusername" @blur.prevent="blurfn">
                    <div class="input_right">&#xe694;</div>
                </div>
                <div class="phone_input">
                    <p class="input_left">密 码</p>
                    <input type="password" class="input1" placeholder="请输入密码" v-model="newpassword">
                    <div class="input_right">&#xe694;</div>
                </div>
            </header>
            <main>
                <div class="zhuce" @click="register">注册</div>
            </main>
            <div class="line_bar">
                <div class="line_content">
                    <p class="line_content_left" @click="showLogin=true,showTishi=false">已有账号?马上登录</p>
                </div>
            </div>
            <p v-show="showTishi" class="showTishi">{{tishi}}</p>
        </div>
    </div>
</template>

<script>
    import {setCookie,getCookie} from "../assets/cookie";
    export default {
        name: "login",
        data:()=>({
            showTishi: false,
            tishi: 'ddd',
            showLogin:true,
            username:"",
            password:"",
            newusername:"",
            newpassword:""

        }),
        mounted(){
            if(getCookie('username')){
                this.$router.push('/personal');
            }
        },
        methods:{
            goback:function(){

                this.$router.go(-1);
            },
            blurfn:function(){
               this.$http.get("/api/checkuser?username="+this.newusername).then(res=>{
                  if(res.body.length!="")
                  {
                      this.tishi="账号已存在";
                      this.showTishi=true;
                      return;
                  }
                  this.showTishi=false;
               })
            },
            login:function(){
                if(this.username==""||this.password=="")
                {
                    alert("请输入用户名和密码");
                }
                else
                {
                    this.$http.get("/api/login?username="+this.username).then(res=>{
                     if(res.body.length===0){
                         this.tishi = "该用户不存在";
                         this.showTishi = true;
                         return;
                     }
                    if(res.body[0].password!=this.password)
                    {
                        this.tishi="密码输入错误";
                        this.showTishi=true;
                    }
                    else
                    {
                        this.tishi="登录成功";
                        this.showTishi=true;
                        setCookie('username',this.username,1000*60)
                        setTimeout(function(){
                            this.$router.push('/personal')
                        }.bind(this),1000)
                    }
                    })
                }
            },
            register:function(){

                if(this.newusername==""||this.newpassword=="")
                {
                    alert("请输入用户名和密码")
                }
                else
                {
                    this.$http.get("/api/sign?newusername="+this.newusername+"&newpassword="+this.newpassword).then(res=>{
                        if(res.body.affectedRows==1)
                        {
                            this.tishi="注册成功"
                            this.showTishi=true
                            this.username = ''
                            this.password= ''
                            setTimeout(function(){
                                this.showTishi=false
                                this.showLogin=true
                            }.bind(this),1000)
                        }

                    })
                }
            }

        }
    }
</script>

<style scoped>
    .showTishi
    {
        text-align: center;
        color: red;
        font-size: 0.6rem;
    }
    @font-face {
        font-family: 'iconfont';  /* project id 561408 */
        src: url('https://at.alicdn.com/t/font_561408_xllddf4bw29pmn29.eot');
        src: url('https://at.alicdn.com/t/font_561408_xllddf4bw29pmn29.eot?#iefix') format('embedded-opentype'),
        url('https://at.alicdn.com/t/font_561408_xllddf4bw29pmn29.woff') format('woff'),
        url('https://at.alicdn.com/t/font_561408_xllddf4bw29pmn29.ttf') format('truetype'),
        url('https://at.alicdn.com/t/font_561408_xllddf4bw29pmn29.svg#iconfont') format('svg');
    }
    header
    {
        width: 100%;
        height: auto;
        padding:0 0.34rem;
        background: #fff;
        overflow: hidden;
    }
    .title
    {
        font-size: 0.5rem;
        color: #000000;
        text-align: center;
        line-height:2rem;
        /*margin-top: 1.05rem;*/
        /*margin-bottom: 1.05rem;*/
    }
    .back
    {
        font-size: 0.4rem;
        color: #999999;
        font-family: 'iconfont';
        text-align: left;
        line-height: 2rem;
        float: left;
    }
    body
    {

        background: #eeeeee;
    }
    .my_img{
        width: 2.5rem;
        height: 2.5rem;
        border-radius: 50%;
        margin: 1.5rem auto;
    }
    .input1
    {
        width: 55%;
        height: 0.9rem;
        outline: none;
        border-bottom: 0.01rem solid #999999;
        color: #000000;
        line-height: 0.9rem;
        font-size: 0.5rem;
        border-right: none;
        border-left: none;
        border-top: none;
        float: left;
        display: block;
    }
    .input_left
    {
        width: 30%;
        height: 0.9rem;
        font-size: 0.4rem;
        color: #999999;
        line-height: 0.9rem;
        float: left;
        font-family: 'iconfont';
        border-bottom: 0.01rem solid #999999;
    }
    .code
    {
        width: 15%;
        height: 0.9rem;
        font-size: 0.4rem;
        color: #999999;
        text-align: center;
        line-height: 0.9rem;
        float: left;
        background: #b1eaf1;
        color: #ffffff;
    }
    .input_right
    {
        width: 15%;
        height: 0.9rem;
        font-size: 0.4rem;
        color: #999999;
        text-align: right;
        line-height: 0.9rem;
        float: left;
        font-family: 'iconfont';
        border-bottom: 0.01rem solid #999999;
    }
    .phone_input
    {
        margin-bottom: 0.6rem;
        width: 100%;
        height: 0.9rem;
    }
    #content
    {
        width: 100vw;
        height: 100vh;
        background: #fff;
    }
    #content1
    {
        width: 100vw;
        height: 100vh;
        /*margin-top: 2vh;*/
        background: #fff;
    }
    main
    {


        padding:0 0.34rem;
    }
    .zhuce
    {
        width: 100%;
        height: 1.5rem;
        background:#02a2ff;
        text-align: center;
        line-height: 1.5rem;
        font-size: 0.6rem;
        color: #ffffff;
        border-radius: 0.1rem;
        border-radius: 0.8rem;
    }
    .line_bar
    {

        padding: 0 0.34rem;
        margin-top: 0.3rem;
    }
    .line_content
    {
        width: 100%;
        height: 0.6rem;
        font-size: 0.4rem;
        line-height: 0.6rem;
        color: #02a2ff;
        text-align: center;
    }
    .line_content_left
    {
        color: #02a2ff;
    }
    .line_content_right
    {
        float: right;
        color: #02a2ff;
    }
</style>