const routes = [
  {
    path: '/',
    component: () => import('layouts/MainLayout.vue'),
    children: [
      { path: '', redirect: '/tareas' },
      { path: '/about', component: () => import('pages/SobreEstoPage.vue') },
      { path: '/tareas', component: () => import('pages/HotelPage.vue') },
      {
        path: '/pruebas',
        component: () => import('pages/PaginaDePruebasPage.vue'),
      },
      {
        path: '/pruebas2',
        component: () => import('pages/PaginaDePruebas2Page.vue'),
      },
      {
        path: '/offline',
        component: () => import('pages/OffLinePage.vue'),
      },
      {
        path: '/pruebas3',
        component: () => import('pages/PaginaDePrueba3Page.vue'),
      },
    ],
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: '/:catchAll(.*)*',
    component: () => import('pages/ErrorNotFoundPage.vue'),
  },
];

export default routes;
