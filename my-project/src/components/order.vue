<template>
    <div class="main">
        <div class="header">
            <p>成功订单</p>
        </div>
        <div class="content">
            <section class="order">
                <h3>{{shop.sname}}</h3>
                <ul>
                    <li v-for="item in list" :key="item.sid">
                        <img :src="'api/img/'+item.gthumb" alt="">
                        <p>{{item.gname}}</p>
                        <span>x{{item.gcount}}</span>
                        <span>￥{{item.gprice}}</span>
                    </li>
                </ul>
                <ul>
                    <li>
                        <span class="bird">蜂鸟</span>
                        <span style="margin-left:2vw">配送费:</span>
                        <span>￥{{shop.sdistributionFee}}</span>
                    </li>
                    <li>
                        <span style="margin-left:2vw">总价:</span>
                        <span>￥{{total}}</span>
                    </li>
                </ul>
            </section>
        </div>
        <Footernav></Footernav>
    </div>
</template>

<script>
    import Footernav from './footernav'
    export default {
        name: "order",
        data:function(){
            return{
                shop:{},
                goods:[],
            }
        },
        mounted:function () {
            this.shop=JSON.parse(localStorage.shop);
            this.goods=JSON.parse(localStorage["goods"+this.shop.sid]);
            this.$store.state.nav=3;
        },
        computed:{
            list:function(){
                let list=[];
                this.goods.forEach(function(obj){
                    obj.data.forEach(function(goods){
                        if(goods.gcount>0){
                            list.push(goods);
                        }
                    })
                });
                return list;
            },
            //总价
            total:function(){
                let total=0;
                this.goods.forEach(function(obj){
                    obj.data.forEach(function(goods){
                        if(goods.gcount>0){
                            total+=goods.gcount*goods.gprice;
                        }
                    })
                })
                total+=this.shop.sdistributionFee;
                return total;
            }
        },
        components: {  //局部声明
            Footernav
        }
    }
</script>

<style scoped>
    .header{
        width:100%;
        height:1.5rem;
        line-height: 1.5rem;
        background: #5aaeff;
        font-size: .4rem;
        color:#fff;
    }
    .header p{
        float: left;
        width: 92vw;
        text-align: center;
    }
    .header em{
        font-size:.5rem;
        float: left;
        padding-left:4vw;
    }
    .bottom{
        position: fixed;
        bottom: 0;
        left: 0;
        width: 100vw;
        height: 8vh;
        background: rgba(0,0,0,0.8);
        color: #fff;
        line-height: 8vh;
    }
    .bottom .price{
        float: left;
    }
    .price span{
        margin:0 3vw;
        font-size: large;
    }
    .price p{
        padding: 0 3vw;
        color: #ccc;
        display: inline-block;
        width: auto;
        height: 2vh;
        line-height: 2vh;
        border-left: .2vh solid #ccc;
    }
    .bottom .pay{
        float: right;
        width: 20vw;
        height: 8vh;
        background: #00e067;
        text-align: center;
    }
    .content{
        position: absolute;
        top: 8vh;
        left: 0;
        right: 0;
        bottom: 8vh;
        width: 100vw;
        height: auto;
        overflow: auto;
    }
    .address{
        width: 100vw;
        height: 15vh;
        display: flex;
        justify-content: center;
        align-items: center;
        line-height: 15vh;
        background: #fff url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAAAICAYAAAEkWSnHAAAAAXNSR0IArs4c6QAAAUtJREFUSA1jYKAmYIQZpjL1fwOMjUwzMTHMvpXJ+BQk9r9WpY6BkYEJWR7GZmy60wBjU4UGu0xt2v+if/8Z+LCZeCebEW7j/zoVOBtFLRN/F2PD2W8oYoOJAw9/ten/zf79Y/AixXHAiLh3K5txEbqe/3WqwcDY0kUXx8tnYj7E2HBzH141o5J4QgAelcYz/3N9/MNQhkctphQjw787WYxN6BL/W9SkGX79S0UXx8tnYvrE2HCrD6YGnl9JdhTQhNuZDM0wg1BoUh0F1IzsKBSzRjmjIUCTEIDnSWTTgUVtBLCo1UAWowUbmO/2AIvnI8SY/X+SCjvDG8YMYLEtSIx6CtT8Z2BiWcjYcOMBNjNQAkxnwn/xn2wMqf//M7BgU0wtMUZGhq9M7AwzbiYzfibGzP8NqgYM//4HEKOWQjWPGZhi5jM2NPzDZQ4AaBtXeW5GU0UAAAAASUVORK5CYII=) repeat-x 0 100%;
    }
    .address span{
        width: 40vw;
        height: 6vh;
        border: 1px solid #2395ff;
        color: #2395ff;
        font-size: .26rem;
        line-height: 6vh;
        text-align: center;
        border-radius: 6vh;
        /*display: inline-block;*/
    }
    .order{
        margin-top: 5vh;
        width: 100vw;
        height: auto;
        background: #fff;
        width: 100vw;
        padding: 0 3vh;
    }
    .order h3{
        padding: 4vw 0;
        text-align: left;
        color: #333;
        border-bottom: .02vh solid #ccc;
    }
    .order ul li{
        display: flex;
        align-items: center;
        width: 100%;
        padding: 3.2vw 0;
        border-bottom: 1px dotted #eee;
        font-size: .22rem;
    }
    .order ul li img{
        width: 9.6vw;
        height: 9.6vw;
    }
    .order ul li p{
        padding: 0 8vw 0 2vw;
        width: 40vw;
        text-overflow: ellipsis;
        white-space: nowrap;
        overflow: hidden;
    }
    .order ul li span:last-child{
        position: absolute;
        right: 8vw;
        width: 20vw;
        text-align: right;
    }
    .order ul li .bird{
        width: 10vw;
        height: 5vw;
        font-size: .2rem;
        display: inline-block;
        color: #fff;
        background-color: #60acf4;
        text-align: center;
    }
    .order ul li div{
        color: #bbb;
    }
    .order ul li div p{
        font-size: .24rem;
        font-weight: 500;
        color: #333;
        position: absolute;
        right: -5vw;
    }
    .order ul li div:last-child{
        min-height: 3vh;
    }

</style>