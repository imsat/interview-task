/**
 * Module to handle User Authentication
 * This will be imported in the store/index.js file
 */
import HTTP from '../__helpers/http'
import router from '../router'
import axois from 'axios'
import toast from "@/services/Notification";

export default {
    namespaced: true,
    strict: process.env.NODE_ENV !== 'production',
    state: {
        loginInfo: {
            client_id: 2,
            client_secret: 'IRoXTFOT1ilKmRjjaVv7WIfkf1jl1LK87YFDU9Cv',
            grant_type: 'password',
            username: 'admin@mail.com',
            password: '123456'
        },
        registerInfo: {
            first_name: '',
            last_name: '',
            email: '',
            password: '',
            password_confirmation: '',
        },
        token: localStorage.getItem('token') || '',
        user: JSON.parse(localStorage.getItem('user')) || [],
    },
    getters: {
        validToLogin(state) {
            if (state.loginInfo.username && state.loginInfo.password) return true
            return false
        },
        validToRegister(state) {
            if (state.registerInfo.first_name && state.registerInfo.email && state.registerInfo.password && state.registerInfo.password_confirmation) return true
            return false
        },
    },
    mutations: {
        /** Login Email */
        SET_LOGIN_USERNAME(state, value) {
            state.loginInfo.username = value
        },
        /** Login Password */
        SET_LOGIN_PASSWORD(state, value) {
            state.loginInfo.password = value
        },
        /** Register First Name */
        SET_REGISTER_FIRST_NAME(state, value) {
            state.registerInfo.first_name = value
        },
        /** Register Last Name */
        SET_REGISTER_LAST_NAME(state, value) {
            state.registerInfo.last_name = value
        },
        /** Register Email */
        SET_REGISTER_EMAIL(state, value) {
            state.registerInfo.email = value
        },
        /** Register Password */
        SET_REGISTER_PASSWORD(state, value) {
            state.registerInfo.password = value
        },
        /** Register Confirm Password */
        SET_REGISTER_PASSWORD_CONFIRM(state, value) {
            state.registerInfo.password_confirmation = value
        },
        /** User Token Set */
        SET_TOKEN(state, token) {
            state.token = token
        },
        /** Remove token */
        'DESTROY_TOKEN'(state) {
            localStorage.removeItem('token');
            localStorage.removeItem('expiration');
            localStorage.removeItem('user');
            state.token = ''
            // delete axios.defaults.headers.common['Authorization'];
        },
        /** Set User */
        SET_USER(state, user) {
            state.user = user;
        },

    },
    actions: {
        /**
         * Login for User
         *
         * @param commit
         * @param state
         * @returns {Promise<Route>}
         */
        async login({commit, state, dispatch}) {
            try {
                return await HTTP().post('/token', state.loginInfo)
                    .then(response => {

                        const expiration = response.data.expires_in + Date.now();
                        localStorage.setItem('token', response.data.access_token);
                        localStorage.setItem('expiration', expiration);
                        commit('SET_TOKEN', response.data.access_token)
                        dispatch('getUser')
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (loginError) {
                console.log(loginError)
            }
        },
        getUser({commit, state, dispatch}) {
            try {
                return  HTTP().get('/user')
                    .then(response => {
                        localStorage.setItem('user', JSON.stringify(response.data.data));
                        commit('SET_USER', response.data.data)
                        return router.push('/dashboard')
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (loginError) {
                console.log(loginError)
            }
        },
        async register({commit, state, dispatch}) {
            try {
                return await HTTP()
                    .post('/auth/register', state.registerInfo)
                    .then(response => {
                        if(response.data.code == 200){
                            toast.success(response.data.message);
                            commit('SET_LOGIN_USERNAME', state.registerInfo.email)
                            commit('SET_LOGIN_PASSWORD', state.registerInfo.password)
                            dispatch('login')
                        }
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (loginError) {
                console.log(loginError)
            }
        },

        /**
         * Logout for User
         *
         * @param commit
         */
        logout({commit}) {
            try {
                commit('DESTROY_TOKEN')
                return router.push('/')
            } catch (logoutError) {
                console.log(logoutError)
            }
        },
    }
}
