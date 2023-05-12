import MainLayoutVue from "layouts/MainLayout.vue";


const routes = [
  {
    path: '/home',
    name: 'home',
    component: MainLayoutVue,
    meta: {
      requiresAuth: true,
    },
    children: [
      {
        path: '', name: 'home', component: () => import("pages/card/CardViewPage.vue"),
        meta: {
          requiresAuth: true,
        },
      },
      {
        path: "/loans",
        name: "loans",
        component: () => import("pages/loan/LoanPage.vue"),
        meta: {
          requiresAuth: true,
        },
      },
      {
        path: '/loan-application',
        name: 'application',
        component: () => import("pages/loan/apply/ApplyLoan.vue"),
      },
      {
        path: "/petty-cash",
        name: "petty-cash",
        component: () => import("pages/pettycash/PettyCashPage.vue"),
        meta: {
          requiresAuth: true,
        },
      },
      {
        path: "/savings",
        name: "savings",
        component: () => import("pages/savings/SavingsPage.vue"),
        meta: {
          requiresAuth: true,
        },
      },
      {
        path: "/profile",
        name: "profile",
        component: () => import("pages/profile/ProfilePage.vue"),
        meta: {
          requiresAuth: true,
        },
      },
      {
        path: "/notifications",
        name: "notifications",
        component: () => import("pages/notify/NotifyPage.vue"),
        meta: {
          requiresAuth: true,
        },
      },
    ],
  },
  {
    path: "/",
    name: "login",
    component: () => import("pages/login/LoginPage.vue"),
  },
  {
    path: "/reset-password",
    name: "resetpassword",
    component: () => import("pages/reset/ResetPasswordPage.vue"),
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: "/:catchAll(.*)*",
    component: () => import("pages/ErrorNotFound.vue"),
  },
];

export default routes;
