 <!--<div class="main">-->
        <!--&lt;!&ndash; 地址 &ndash;&gt;-->
        <!--&lt;!&ndash;<div class="index_location">&ndash;&gt;-->
            <!--&lt;!&ndash;<div class="location_left ell">&ndash;&gt;-->
                <!--&lt;!&ndash;<p>山西省临汾市向阳路</p>&ndash;&gt;-->
            <!--&lt;!&ndash;</div>&ndash;&gt;-->
        <!--&lt;!&ndash;</div>&ndash;&gt;-->
        <!--<div id="content">-->
            <!--&lt;!&ndash;搜索&ndash;&gt;-->
            <!--<div class="search">-->
                <!--<form action="">-->
                    <!--<input type="text" class="search_content" placeholder="搜索商家、商品名称">-->
                <!--</form>-->
            <!--</div>-->
            <!--&lt;!&ndash;tu&ndash;&gt;-->
            <!--<div class="banner">-->
                <!--<img src="../assets/img/index/guanggao.png" alt="">-->
            <!--</div>-->
            <!--&lt;!&ndash;swiper&ndash;&gt;-->
            <!--<swiper :option="swiperOption">-->
                <!--<swiper-slide>-->
                    <!--<div class="foods_content">-->
                        <!--<router-link :to="{name:'category',query:{id:item.cid,name:item.cname}}" class="foods" v-for="item in cats" :key="item.cid">-->
                            <!--<div class="foods_img"><img :src="'api/img/'+item.cthumb" alt=""></div>-->
                            <!--<p class="foods_title">{{item.cname}}</p>-->
                        <!--</router-link>-->
                    <!--</div>-->
                <!--</swiper-slide>-->
                <!--<swiper-slide>-->
                    <!--<div class="foods_content">-->
                        <!--<router-link :to="{name:'category',query:{id:item.cid,name:item.cname}}" class="foods" v-for="item in elsecats" :key="item.cid">-->
                            <!--<div class="foods_img"><img :src="'api/img/'+item.cthumb" alt=""></div>-->
                            <!--<p class="foods_title">{{item.cname}}</p>-->
                        <!--</router-link>-->
                    <!--</div>-->
                <!--</swiper-slide>-->
                <!--<div class="swiper-pagination" slot="pagination"></div>-->
            <!--</swiper>-->
            <!--&lt;!&ndash;img&ndash;&gt;-->
            <!--<div class="img_content">-->
                <!--<img src="../assets/img/tu.png" alt="">-->
            <!--</div>-->

             <!--&lt;!&ndash;<div class="container">&ndash;&gt;-->
                 <!--&lt;!&ndash;<div class="container_title">&ndash;&gt;-->
                     <!--&lt;!&ndash;<img src="../assets/img/tuijian.png" alt="">&ndash;&gt;-->
                 <!--&lt;!&ndash;</div>&ndash;&gt;-->
                 <!--&lt;!&ndash;<div class="container_select">&ndash;&gt;-->
                     <!--&lt;!&ndash;<div class="containet_select_title">&ndash;&gt;-->
                         <!--&lt;!&ndash;<p class="containet_select_title1">综合排序 &#xe655;</p>&ndash;&gt;-->
                         <!--&lt;!&ndash;<p class="containet_select_title2">好评优先</p>&ndash;&gt;-->
                         <!--&lt;!&ndash;<p class="containet_select_title2">距离最近</p>&ndash;&gt;-->
                         <!--&lt;!&ndash;<p class="containet_select_title2">筛选 &#xe789;</p>&ndash;&gt;-->
                     <!--&lt;!&ndash;</div>&ndash;&gt;-->
                     <!--&lt;!&ndash;<a href="introduce.html">&ndash;&gt;-->
                         <!--&lt;!&ndash;<div class="container_select_desc">&ndash;&gt;-->
                             <!--&lt;!&ndash;<div class="container_select_desc_img">&ndash;&gt;-->
                                 <!--&lt;!&ndash;<img src="../assets/img/bitu.png" alt="">&ndash;&gt;-->
                             <!--&lt;!&ndash;</div>&ndash;&gt;-->
                             <!--&lt;!&ndash;<div class="container_select_desc_jieshao">&ndash;&gt;-->
                                 <!--&lt;!&ndash;<div class="container_jieshao_h1">&ndash;&gt;-->
                                     <!--&lt;!&ndash;<p class="container_jieshao_h1_zi">必胜客宅急客</p>&ndash;&gt;-->
                                 <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                 <!--&lt;!&ndash;<div class="container_jieshao_h2">&ndash;&gt;-->
                                     <!--&lt;!&ndash;<div class="container_jieshao_h2_star">&ndash;&gt;-->
                                         <!--&lt;!&ndash;<p>★★★★★&ndash;&gt;-->
                                             <!--&lt;!&ndash;<span class="container_jieshao_h2_shou">5.0 月售343</span>&ndash;&gt;-->
                                         <!--&lt;!&ndash;</p>&ndash;&gt;-->
                                     <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                 <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                 <!--&lt;!&ndash;<div class="container_jieshao_h3">&ndash;&gt;-->
                                     <!--&lt;!&ndash;<p class="container_jieshao_h3_title1">起送￥0|配送￥9</p>&ndash;&gt;-->
                                     <!--&lt;!&ndash;<p class="container_jieshao_h3_title2">40分钟|1.4km</p>&ndash;&gt;-->
                                 <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                 <!--&lt;!&ndash;<div class="container_jieshao_h4">&ndash;&gt;-->
                                     <!--&lt;!&ndash;<div class="container_jieshao_h4_title">&ndash;&gt;-->
                                         <!--&lt;!&ndash;炸鸡炸串&ndash;&gt;-->
                                     <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                 <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                 <!--&lt;!&ndash;<div class="container_jieshao_h5">&ndash;&gt;-->
                                     <!--&lt;!&ndash;<div class="container_jieshao_h5_title1">满减</div>&ndash;&gt;-->
                                     <!--&lt;!&ndash;<p class="container_jieshao_h5_title2">满60减10，满110减25</p>&ndash;&gt;-->
                                     <!--&lt;!&ndash;<div class="container_select_desc_la">&ndash;&gt;-->
                                         <!--&lt;!&ndash;<img src="img/la.png" alt="">&ndash;&gt;-->
                                     <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                 <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                 <!--&lt;!&ndash;<div class="container_jieshao_h6">&ndash;&gt;-->
                                     <!--&lt;!&ndash;<div class="container_jieshao_h5_title1 huiyuan_color">会员</div>&ndash;&gt;-->
                                     <!--&lt;!&ndash;<p class="container_jieshao_h5_title2">超级会员领6元无门槛红包</p>&ndash;&gt;-->
                                 <!--&lt;!&ndash;</div>&ndash;&gt;-->
                             <!--&lt;!&ndash;</div>&ndash;&gt;-->
                         <!--&lt;!&ndash;</div>&ndash;&gt;-->
                     <!--&lt;!&ndash;</a>&ndash;&gt;-->
                 <!--&lt;!&ndash;</div>&ndash;&gt;-->
             <!--&lt;!&ndash;</div>&ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash;导航&ndash;&gt;-->
        <!--<Footernav></Footernav>-->
    <!--</div>-->
 <template>
    <div class="main">
        <div class="title">欢迎进入周先生的饭</div>
        <!--推荐商家开始-->
        <div class="pin_head">——·  热销美食  ·——</div>
        <div class="stores">
            <ul>
                <router-link :to="{name:'shop',query:{sid:1}}">
                <li>
                    <img src="../assets/img/good1.jpg" alt="">
                    <h6>招牌卤猪蹄</h6>
                    <p>★★★★★</p>
                    <b>4.9  月售731</b>
                    <div class="two">
                        <i>起送￥0|配送￥9</i>
                    </div>
                </li>
                </router-link>
                <router-link :to="{name:'shop',query:{sid:1}}">
                <li>
                    <img src="../assets/img/good2.jpg" alt="">
                    <h6>特色卤大鸡腿</h6>
                    <p>★★★★★</p>
                    <b>4.9  月售731</b>
                    <div class="two">
                        <i>起送￥0|配送￥9</i>
                    </div>
                </li>
                </router-link>
                <router-link :to="{name:'shop',query:{sid:1}}">
                <li>
                    <img src="../assets/img/good3.jpg" alt="">
                    <h6>青菜香菇素包子</h6>
                    <p>★★★★★</p>
                    <b>4.9  月售731</b>
                    <div class="two">
                        <i>起送￥0|配送￥9</i>
                    </div>
                </li>
                </router-link>
            </ul>
        </div>
        <!--推荐商家结束-->
        <router-link :to="{name:'shop',query:{sid:1}}">
            <div class="btn">开始点餐</div>
        </router-link>
        <Footernav></Footernav>
    </div>
</template>

<script>
    import {swiper, swiperSlide} from 'vue-awesome-swiper'
    import 'swiper/dist/css/swiper.css'
    import Footernav from './footernav'
    export default {
        data: function () {
            return {
                cats: [],
                elsecats:[],
                swiperOption: {
                    pagination: {
                        el: '.swiper-pagination'
                    }
                }
            }
        },
        mounted: function () {
            this.$http.get("/api/category").then((res) => {
                this.cats = res.body.slice(0,10);
                this.elsecats=res.body.slice(10)
            })
                this.$store.state.nav=1;
        },
        components: {  //局部声明
            swiper,
            swiperSlide,
            Footernav
        }
    }
</script>

<!--<style scoped>-->
    <!--.index_location {-->
        <!--height: .9rem;-->
        <!--line-height:.9rem;-->
        <!--color: #fff;-->
        <!--width:100%;-->
        <!--font-size: .4rem;-->
        <!--background-color: #02a2ff;-->
    <!--}-->
    <!--.ell {-->
        <!--width: 8rem;-->
        <!--padding-left:.4rem;-->
        <!--overflow: hidden;-->
        <!--white-space: nowrap;-->
        <!--text-overflow: ellipsis;-->
        <!--float: left;-->
    <!--}-->
    <!--.index_login a{-->
        <!--padding-right:.4rem;-->
        <!--float: right;-->
        <!--color: #fff;-->
    <!--}-->

    <!--#content {-->
        <!--overflow-x: hidden;-->
    <!--}-->
    <!--.search {-->
        <!--width: 100%;-->
        <!--height: 1.8rem;-->
        <!--background-color: #02a2ff;-->
        <!--padding:.3rem .3rem 0 .3rem;-->
    <!--}-->

    <!--.search_content {-->
        <!--width: 10.20rem;-->
        <!--height: 1.09rem;-->
        <!--background-color: #ffffff;-->
        <!--border: none;-->
        <!--outline: none;-->
        <!--font-size: 0.33rem;-->
        <!--color: #9a9a9a;-->
        <!--text-align: center;-->
        <!--line-height: 1.09rem;-->
        <!--font-family: 'iconfont';-->
    <!--}-->

    <!--.banner {-->
        <!--width: 100%;-->
        <!--/*height: 4.3rem;*/-->
    <!--}-->

    <!--.banner img {-->
        <!--width: 100%;-->
        <!--height: auto;-->
    <!--}-->

    <!--.swiper-container {-->
        <!--width: 100%;-->
        <!--height: auto;-->
        <!--background-color: #ffffff;-->
        <!--margin-top: .3rem;-->
        <!--position: relative;-->
    <!--}-->


    <!--.foods {-->
        <!--width: 20%;-->
        <!--height: 1.7rem;-->
        <!--float: left;-->
    <!--}-->

    <!--.foods_img {-->
        <!--width: 1.21rem;-->
        <!--height: 1.21rem;-->
        <!--display: block;-->
        <!--margin: 0 auto;-->
    <!--}-->

    <!--.foods_title {-->
        <!--color: #686868;-->
        <!--text-align: center;-->
        <!--margin-top: 0.2rem;-->
        <!--width: 100%;-->
        <!--height:0.29rem;-->
        <!--font-size: 0.29rem;-->
        <!--line-height: 0.29rem;-->
    <!--}-->

    <!--.foods_content {-->
        <!--width: 100%;-->
        <!--height:5rem;-->
        <!--background:#fff;-->
        <!--display: flex;-->
        <!--flex-wrap: wrap;-->
        <!--justify-content: space-between;-->
        <!--align-content:space-around;-->
    <!--}-->

    <!--.img_content {-->
        <!--margin-top: 0.3rem;-->
    <!--}-->

    <!--.container {-->
        <!--width: 100%;-->
        <!--height: auto;-->
        <!--background-color: #ffffff;-->
        <!--margin-top: 0.3rem;-->
    <!--}-->

    <!--.container_title {-->
        <!--width: 100%;-->
        <!--height: 0.63rem;-->
        <!--margin-left: 3.49rem;-->
    <!--}-->

    <!--.container_title img {-->
        <!--width: 3.88rem;-->
    <!--}-->

    <!--.container_select {-->
        <!--width: 100%;-->
        <!--height: auto;-->
    <!--}-->

    <!--.containet_select_title {-->
        <!--width: 100%;-->
        <!--height: 1.26rem;-->
        <!--background-color: #ffffff;-->
        <!--padding-top: 0.47rem;-->
        <!--padding-left: 0.4rem;-->
        <!--padding-right: 0.4rem;-->
        <!--border-bottom: 0.01rem solid #eeeeee;-->
    <!--}-->

    <!--.containet_select_title1 {-->
        <!--font-size: 0.37rem;-->
        <!--color: #000000;-->
        <!--font-family: 'iconfont';-->
        <!--float: left;-->
    <!--}-->

    <!--.containet_select_title2 {-->
        <!--font-size: 0.37rem;-->
        <!--margin-left: 1.2rem;-->
        <!--float: left;-->
        <!--color: #a1a1a1;-->
        <!--font-family: 'iconfont';-->
    <!--}-->

    <!--.container_select_desc {-->
        <!--width: 100%;-->
        <!--height: 4.77rem;-->
        <!--background-color: #ffffff;-->
        <!--padding-top: 0.52rem;-->
        <!--padding-right: 0.3rem;-->
        <!--border-bottom: 0.01rem solid #f1f1f1;-->
    <!--}-->

    <!--.container_select_desc_img {-->
        <!--width: 2.33rem;-->
        <!--height: 3.74rem;-->
        <!--float: left;-->
    <!--}-->

    <!--.container_select_desc_img img {-->
        <!--width: 2.33rem;-->
        <!--height: 1.63rem;-->
    <!--}-->

    <!--.container_select_desc_jieshao {-->
        <!--width: 8.17rem;-->
        <!--height: 4rem;-->
        <!--float: left;-->
    <!--}-->

    <!--.container_jieshao_h1 {-->
        <!--width: 100%;-->
        <!--height: 0.6rem;-->
    <!--}-->

    <!--.container_jieshao_h1_zi {-->
        <!--font-size: 0.41rem;-->
        <!--font-weight: bold;-->
        <!--float: left;-->
        <!--color: #000000;-->
    <!--}-->

    <!--.container_jieshao_h1_dian {-->
        <!--float: right;-->
    <!--}-->

    <!--.container_jieshao_h2 {-->
        <!--width: 100%;-->
        <!--height: 0.79rem;-->
        <!--line-height: 0.79rem;-->
        <!--color: #ffb300;-->
        <!--font-size: 0.25rem;-->
        <!--font-family: 'iconfont';-->
        <!--text-align: left;-->

    <!--}-->

    <!--.container_jieshao_h2_star {-->
        <!--color: #ffb300;-->
        <!--font-size: 0.25rem;-->
        <!--font-family: 'iconfont';-->
        <!--width: 3.9rem;-->
        <!--height: 0.79rem;-->
    <!--}-->

    <!--.container_jieshao_h2_shou {-->
        <!--color: #999999;-->
    <!--}-->

    <!--.container_jieshao_h3 {-->
        <!--width: 100%;-->
        <!--height: 0.84rem;-->
        <!--font-size: 0.28rem;-->
        <!--line-height: 0.84rem;-->
    <!--}-->

    <!--.container_jieshao_h3_title1 {-->
        <!--float: left;-->
        <!--color: #666666;-->
    <!--}-->

    <!--.container_jieshao_h3_title2 {-->
        <!--float: right;-->
        <!--color: #666666;-->
    <!--}-->

    <!--.container_jieshao_h4 {-->
        <!--width: 100%;-->
        <!--height: 0.5rem;-->
    <!--}-->

    <!--.container_jieshao_h4_title {-->
        <!--width: 1.9rem;-->
        <!--height: 0.43rem;-->
        <!--border: 0.02rem solid #efefef;-->
        <!--border-radius: 0.02rem;-->
        <!--font-size: 0.25rem;-->
        <!--line-height: 0.43rem;-->
        <!--text-align: center;-->
        <!--font-family: 'iconfont';-->
        <!--color: #666666;-->
    <!--}-->

    <!--.container_jieshao_h5 {-->
        <!--width: 100%;-->
        <!--height: 0.4rem;-->
        <!--overflow: hidden;-->
        <!--margin-top: 0.2rem;-->
    <!--}-->

    <!--.container_jieshao_h5_title1 {-->
        <!--width: 0.75rem;-->
        <!--height: 0.4rem;-->
        <!--text-align: center;-->
        <!--line-height: 0.4rem;-->
        <!--border: 0.02rem solid #f0eceb;-->
        <!--background-color: #fffcf3;-->
        <!--color: #c5878a;-->
        <!--font-size: 0.24rem;-->
        <!--float: left;-->
    <!--}-->

    <!--.container_jieshao_h5_title2 {-->
        <!--float: left;-->
        <!--font-size: 0.3rem;-->
        <!--color: #666666;-->
    <!--}-->

    <!--.container_select_desc_la {-->
        <!--width: 0.2rem;-->
        <!--height: 0.2rem;-->
        <!--float: right;-->
    <!--}-->

    <!--.container_jieshao_h6 {-->
        <!--width: 100%;-->
        <!--height: 0.45rem;-->
        <!--margin-top: 0.2rem;-->
    <!--}-->

    <!--.huiyuan_color {-->
        <!--border-color: #f0e9df;-->
        <!--background-color: #fffef5;-->
        <!--color: #a28468;-->
    <!--}-->

<!--</style>-->

<style scoped>
    .title{
        width: 100%;
        height: 10vh;
        line-height: 10vh;
        text-align: center;
        background-color: #02a2ff;
        color: #fff;
        font-size: .5rem;
        font-weight: bold;
    }
    .btn{
        width:40vw;
        height:8vh;
        line-height:8vh;
        border-radius:2rem;
        text-align: center;
        background-color: #02a2ff;
        margin: 1rem auto;
        color: #fff;
    }
    /*热销美食开始*/
    .pin_head{
        width: 100%;
        text-align: center;
        position: relative;
        font-size:.42rem;
        font-weight: bold;
        margin-bottom:.5rem;
        color:#000;
        border-top:.3rem solid #f7f7f7;
        padding-top: .45rem
    }
    .pin_head .more{
        font-size:.32rem;
        color:#9c9a9c;
        position: absolute;
        right:0.3rem;
        top:0;
    }
    .pin_contain .item3{
        width: auto;
        height:3.42rem;
    }
    .pin_contain .item3 img{
        width:1.8rem;
        height:1.8rem;
    }
    .pin_contain p{
        font-size:.36rem;
        font-weight: bold;
    }
    .pin_contain i{
        font-size:.3rem;
        color:#00aaff;
        display: -webkit-box;
        /*border:.02rem solid #00aaff;*/
    }
    .shaixuan{
        width:100%;
        height:1rem;
        border-bottom:.02rem solid #f7f7f7;
    }
    .shaixuan ul{
        width:10.2rem;
        margin:0 auto;
        display: flex;
        justify-content:space-between;/* 两端对齐 */
    }
    .shaixuan ul li{
        font-size:.4rem;
        line-height:1rem;
    }
    .shaixuan ul li i{
        font-family: 'iconfont';
        font-size:.3rem;
    }
    .stores{
        width:100%;
        background:#fff;
    }
    .stores ul{
        width:10.2rem;
        margin:0 auto;
    }
    .stores ul li{
        width:100%;
        height:3rem;
        margin-top:.5rem;
        font-size:.3rem;
        color:#636563;
        display: flow-root;
        line-height: .9rem;
    }
    .stores ul li img{
        width:2.8rem;
        height:2.8rem;
        float:left;
    }
    .stores h6{
        font-size:.5rem!important;
        font-weight: bold;
        color: #000;
        display: block;
        padding-left: 3.4rem;
    }
    .stores p{
        color:#ffb618;
        float: left;
        padding-left:.6rem;
    }
    .stores .two i{
        float: left;
        padding-left:.6rem;
    }
    /*热销美食结束*/
</style>