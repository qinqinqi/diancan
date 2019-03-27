<template>
    <div class="login_box">
        <div class="login-title">
            <em @click="goback"><</em>
            <p>注册</p>
        </div>
        <div class="input_login">
            <form action="">
            <input type="search" placeholder="用户名" v-model="username" maxlength="18">
            <input type="password" placeholder="密码" v-model="password" maxlength="18">
            <input type="button" @click="submit" value="注册">
            </form>
        </div>
    </div>
</template>
<script>
    export default {
        name: "sign",
        data:function(){
            return{
                username:"",
                password:"",
            }
        },
        methods:{
            submit:function(){
                this.$http.post("/api/sign",{user:this.username,pass:this.password}).then(res=>{
                    if(res.body==="1"){
                        this.$router.push({name:"login"});
                    }
                })
            },
            goback: function () {
                this.$router.go(-1);
     }
        }
    }
</script>

<style scoped>
    .login-title{
        width:100%;
        height:1.5rem;
        line-height: 1.5rem;
        background: #5aaeff;
        font-size: .4rem;
        color:#fff;
    }
    .login-title p{
        float: left;
        width: 92vw;
        text-align: center;
    }
    .login-title em{
        font-size:.5rem;
        float: left;
        padding-left:4vw;
    }
    .input_login{
        margin-top:.35rem;
    }
    input{
        height: 1rem;
        width: 10rem;
        padding:.6rem;
        box-sizing:border-box;
        border:none;
        outline:none;
        font-size:.45rem;
        display:block;
        margin: 0 auto;
    }
    input[type='button']{
        margin: .6rem auto;
        display:block;
        width: 9rem;
        height: 1rem;
        padding: 0;
        font-size:.5rem;
        background:#4cd964;
        border:none;
        outline:none;
        color:#fff;
        border-radius:.1rem;
    }


</style>
