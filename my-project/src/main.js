// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router/index.js'
import "./assets/rem.js"
Vue.config.productionTip = false
/* eslint-disable no-new */
/*vue vue-router vue-resource vuex vue-cli 组件状态管理*/
// vuex多个组件共享一些属性 数据
// 安装 cnpm i vuex -save-dev
// 储藏方式：创建一个或者多个储藏处store然后注入store到实例中
import Vuex from "vuex";
Vue.use(Vuex);
let store=new Vuex.Store({
    state:{
      nav:1
    }
})
new Vue({
  el: '#app',
  router,
    store,
  components: { App },
  template: '<App/>'
});
