<template>
    <div id="app">
        <router-view></router-view>
    </div>
</template>

<script>
    export default {
        name: 'App'
    }
</script>

<style>
    #app {
        font-family: 'Avenir', Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }

    * {
        margin: 0;
        /* body-8 */
        padding: 0;
        text-decoration: none;
        /* 文本修饰 无 */
        font-style: normal;
        list-style: none;
        /* 选中高亮的颜色清楚 */
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        /* 设置自动计算宽高到border */
        box-sizing: border-box;
    }

    img {
        width: 100%;
        height: 100%;
        border: 0; /* 因为默认有边框 */
        display: block;
    }

    body {
        background-color: #f5f5f5;
        font-size:16px;
    }

    .main {
        position: absolute;
        width: 100%;
        height: 100%;
    }
    @font-face {
        font-family: 'iconfont';  /* project id 621045 */
        src: url('https://at.alicdn.com/t/font_621045_3ty9insks2zw7b9.eot');
        src: url('https://at.alicdn.com/t/font_621045_3ty9insks2zw7b9.eot?#iefix') format('embedded-opentype'),
        url('https://at.alicdn.com/t/font_621045_3ty9insks2zw7b9.woff') format('woff'),
        url('https://at.alicdn.com/t/font_621045_3ty9insks2zw7b9.ttf') format('truetype'),
        url('https://at.alicdn.com/t/font_621045_3ty9insks2zw7b9.svg#iconfont') format('svg');
    }
    a{
        color:#000;
    }
</style>
