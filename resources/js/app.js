require('./bootstrap');

window.Vue = require('vue');
import App from './App.vue';
import Login from './Login.vue';
import VueRouter from 'vue-router';
import routes from './routes';
import Vuetify from '../vuetify/vuetify';
import NProgress from 'nprogress';
import 'nprogress/nprogress.css';
import VueNotification from "@kugatsu/vuenotification";
import SmallDialog from "./components/SmallDialog";

Vue.use(VueNotification, {
    timer: 5,
    error: {
        background: "#F46A1F",
        color: "white"
    },
    success: {
        background: "#F77F00",
        color: "white"
    }
});

Vue.use(VueRouter);

const router = new VueRouter({ routes });

Vue.component('spinner', require('vue-simple-spinner'));
Vue.component('sDialog', SmallDialog);

// router.beforeResolve((to, from, next) => {
//     if (to.path) {
//         NProgress.start();
//     }
//     next();
// });

// router.afterEach(() => {
//     NProgress.done();
// });



const app = new Vue({
	el: '#app',
	components: {App, Login},
    router,
    vuetify: Vuetify,
});

