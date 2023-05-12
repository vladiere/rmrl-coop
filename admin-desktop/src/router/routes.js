const routes = [
  {
    path: "/",
    component: () => import("pages/LoginPage.vue"),
  },
  {
    path: "/home",
    component: () => import("layouts/HomeLayout.vue"),
    children: [
      {
        path: "",
        component: () => import("pages/MembersPage.vue"),
      },
    ],
  },
  {
    path: "/employees",
    component: () => import("layouts/HomeLayout.vue"),
    children: [
      {
        path: "",
        component: () => import("pages/EmployeesPage.vue"),
      },
    ],
  },
  {
    path: "/piti_cash",
    component: () => import("layouts/HomeLayout.vue"),
    children: [
      {
        path: "",
        component: () => import("pages/PettyCashPage.vue"),
      },
    ],
  },
  {
    path: "/savings",
    component: () => import("layouts/HomeLayout.vue"),
    children: [
      {
        path: "",
        component: () => import("pages/SavingsPage.vue"),
      },
    ],
  },
  {
    path: "/loan",
    component: () => import("layouts/HomeLayout.vue"),
    children: [
      {
        path: "",
        component: () => import("pages/LoanPage.vue"),
        children: [
          {
            path: "",
            component: () => import("components/LoansTable.vue"),
          },
          {
            path: "/loan-request",
            name: "loan-request",
            component: () => import("layouts/LoanRequests.vue"),
          },
        ],
      },
    ],
  },
  {
    path: "/admin",
    component: () => import("layouts/HomeLayout.vue"),
    children: [
      {
        path: "",
        component: () => import("pages/AdminpanelPage.vue"),
      },
    ],
  },
  {
    path: "/loginlog",
    component: () => import("layouts/HomeLayout.vue"),
    children: [
      {
        path: "",
        component: () => import("pages/LoginLogPage.vue"),
      },
    ],
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: "/:catchAll(.*)*",
    component: () => import("pages/ErrorNotFound.vue"),
  },
];

export default routes;
