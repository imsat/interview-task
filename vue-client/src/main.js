import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import moment from 'moment'

import '@fortawesome/fontawesome-free/css/all.min.css'

Vue.config.productionTip = false

window.Popper = require('popper.js').default;
require('bootstrap');


Vue.filter('difForHuman', function(value) {
  if (value) {
    // return moment(String(value)).format('MM/DD/YYYY hh:mm')
    return moment(String(value)).fromNow();
  }
})

// Full page loader global component
/** Full Page Loader */
import FullPageLoader from '@/components/__partials/FullPageLoader'
Vue.component('fpl', FullPageLoader)

import GModal from '@/components/__partials/Modal'
Vue.component('modal', GModal)

/** Navigation Guard */
router.beforeEach((to, from, next) => {

  // Find the nearest title element.
  const nearestWithTitle = to.matched.slice().reverse().find(r => r.meta && r.meta.title);

  // If a route with a title was found, set the document (page) title to that value.
  if(nearestWithTitle) { document.title = nearestWithTitle.meta.title } else { document.title  = 'Vue Client'}

  if (to.matched.some(record => record.meta.requiresAuth)) {
    // this route requires auth, check if logged in. if not, redirect to login page.
    if (!store.state.authentication.token) {
      next({
        path: '/',
        query: {redirect: to.fullPath}
      })
    } else {
      next()
    }

  } else {
    // make sure to always call next()!
    if (store.state.authentication.token) {
      next({
        path: '/dashboard',
      })
    } else {
      next()
    }
  }
})

new Vue({
  router,
  store,
  render: h => h(App),
}).$mount('#app')
