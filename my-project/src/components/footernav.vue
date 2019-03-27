<template>
        <footer>
            <router-link to="/" :class="{active:$store.state.nav===1}">
                <div class="footer_icon footer_right">
                    <span class="footer_icon1">&#xe60e;</span>
                    <!--<img src="../assets/img/index.png" alt="">-->
                    <span class="footer_wenzi">首页</span>
                </div>
            </router-link>
            <router-link to="/order" :class="{active:$store.state.nav===3}">
                <div class="footer_icon footer_right">
                    <span class="footer_icon1">&#xe634;</span>
                    <!--<img src="../assets/img/order.png" alt="">-->
                    <span class="footer_wenzi">订单</span>
                </div>
            </router-link>
            <router-link to="/personal" :class="{active:$store.state.nav===4}">
                <div class="footer_icon footer_right">
                    <span class="footer_icon1">&#xe696;</span>
                    <!--<img src="../assets/img/personal.png" alt="">-->
                    <span class="footer_wenzi">我的</span>
                </div>
            </router-link>
        </footer>
</template>

<script>
    export default {
        name: "footernav"
    }
</script>

<style scoped>
    footer {
        width: 100%;
        height: 1.5rem;
        background-color: #fff;
        position: fixed;
        bottom: 0;
        padding-left: 1.4rem;
        padding-top: 0.2rem;
        display: flex;
        justify-content: space-between;
    }

    .footer_icon {
        width: 0.75rem;
        height: 1.20rem;
        float: left;
        /* background-color: green; */
        text-align: center;
        display: block;
    }

    .footer_right {
        margin-right: 1.6rem;

    }

    .footer_icon_left {
        margin-left: 0.08rem;
    }

    .footer_icon1 {
        font-family: 'iconfont';
        font-size: 0.70rem;
        color:#000;
        float: left;

    }

    .footer_wenzi {
        font-size: 0.20rem;
        color: #888888;
        float: left;
    }

    .dibu {
        width: 100%;
        height: 1.5rem;
        background-color: #ffffff;
    }

    .seacrh_fiexd {
        position: fixed;
        top: 0;
        left: 0;
        z-index: 999;
    }

    .img_fiexd {
        position: fixed;
        top: 63px;
        left: 0;
        z-index: 999;
    }
    .active .footer_icon1{
        color:#0089dc;
    }
    .active .footer_wenzi{
        color:#0089dc;
    }
    .footer_icon img{
       width:4vh;
        height: auto;
    }
    .item{
        width:auto;
        height:.2rem;
        float:left;
    }
</style>