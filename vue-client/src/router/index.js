import Vue from 'vue'
import Router from 'vue-router'

/** Login Section */
import Login from '@/components/auth/Login.vue'
import Register from '@/components/auth/Register.vue'
import Dashboard from '@/components/dashboard/Dashboard.vue'
import Role from '@/components/role/Role.vue'
import User from '@/components/user/User.vue'
import UserProfile from '@/components/user/UserProfile.vue'


/** Live Chat Section */
Vue.use(Router)

export default new Router({
    mode: 'history',
    routes: [
        /** Login */
        {
            path: '/',
            alias: '/login',
            component: Login,
            name: 'login',
            meta: {
                title: 'Login',
                description: 'Login panel',
                requiresAuth: false,

            }
        },
        /** Register */
        {
            path: '/register',
            component: Register,
            name: 'register',
            meta: {
                title: 'Register',
                description: 'Register panel',
                requiresAuth: false,

            }
        },
        /** Dashboard */
        {
            path: '/dashboard',
            component: Dashboard,
            name: 'dashboard',
            meta: {
                title: 'Dashboard',
                description: 'Dashboard',
                requiresAuth: true,

            }
        },
        /** Role */
        {
            path: '/roles',
            component: Role,
            name: 'role',
            meta: {
                title: 'Role',
                description: 'Role management panel',
                requiresAuth: true,

            }
        },
        /** User */
        {
            path: '/users',
            component: User,
            name: 'user',
            meta: {
                title: 'User',
                description: 'User management panel',
                requiresAuth: true,

            }
        },
        /** User Profile*/
        {
            path: '/users/:id',
            component: UserProfile,
            name: 'user-profile',
            meta: {
                title: 'User Profile',
                description: 'User profile panel',
                requiresAuth: true,

            }
        },
    ]
})
