import Vue from 'vue'
import Router from 'vue-router'
import VueResource from "vue-resource"
import VueScroller from 'vue-scroller'
import Index from '@/components/index'
import Category from '@/components/category'
import Shop from '@/components/shop'
import Login from '@/components/login'
import Sign from '@/components/sign'
import Checkout from '@/components/checkout'
import Personal from '@/components/personal'
import Order from '@/components/order'
Vue.use(Router);
Vue.use(VueResource);
Vue.use(VueScroller);
export default new Router({
    routes: [
        {
            path: '/',
            name: 'index',
            component: Index
        },
        {
            path:"/category",
            name:"category",
            component:Category
        },
        {
            path:"/shop",
            name:"shop",
            component:Shop
        },
        {
            path:"/login",
            name:"login",
            component:Login
        },
        {
            path:"/checkout",
            name:"checkout",
            component:Checkout
        },
        {
            path:"/personal",
            name:"personal",
            component:Personal
        },
    {
        path:"/sign",
        name:"sign",
        component:Sign
    },
        {
            path:"/order",
            name:"order",
            component:Order
        },
    ]
})
