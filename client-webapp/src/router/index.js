import { route } from 'quasar/wrappers'
import { createRouter, createMemoryHistory, createWebHistory, createWebHashHistory } from 'vue-router'
import routes from './routes'

/*
 * If not building with SSR mode, you can
 * directly export the Router instantiation;
 *
 * The function below can be async too; either use
 * async/await or return a Promise which resolves
 * with the Router instance.
 */

const routeGuard = ((to, from, next) => {
  if (to.meta.requiresAuth && !localStorage.getItem('token')) {
    next({ name: 'login' })
  } else if (!to.meta.requiresAuth && localStorage.getItem('token')) {
    next({ name: 'home' })
  } else {
    next()
  }
})

const passGuard = ((to, from, next) => {
  const requiresToken = to.meta.requiresToken;
  const authToken = to.params.token;

  if (requiresToken) {
    if (!authToken) {
      next({ name: "login" }); // Redirect to login page if token is missing
    } else {
      // Perform additional token validation if necessary
      next();
    }
  } else {
    next(); // No token required, proceed to the requested route
  }
})

export default route(function (/* { store, ssrContext } */) {
  const createHistory = process.env.SERVER
    ? createMemoryHistory
    : (process.env.VUE_ROUTER_MODE === 'history' ? createWebHistory : createWebHashHistory)

  const Router = createRouter({
    scrollBehavior: () => ({ left: 0, top: 0 }),
    routes,

    // Leave this as is and make changes in quasar.conf.js instead!
    // quasar.conf.js -> build -> vueRouterMode
    // quasar.conf.js -> build -> publicPath
    history: createHistory(process.env.VUE_ROUTER_BASE)
  })

  Router.beforeEach(routeGuard)
  Router.beforeEach(passGuard);
  return Router
})


