/**
 * Module to handle User
 * This will be imported in the store/index.js file
 */
import HTTP from '../__helpers/http'
import toast from '../services/Notification';
import swal from '../services/SweetAlert';

export default {
    namespaced: true,
    strict: process.env.NODE_ENV !== 'production',
    state: {
        users: [],
        user: {},
        userProfile: {},
        roleAssignForm: {},
    },
    getters: {},
    mutations: {
        /** Set USERS */
        SET_USERS(state, users) {
            state.users = users
        },
        /** Set USER */
        SET_USER(state, id) {
            state.user =  state.users.find(user => user.id == id);
        },
        /** Set USER Profile */
        SET_USER_PROFILE(state, profile) {
            state.userProfile = profile
        },
        SET_ROLE_ASSIGN_FORM(state, value) {
            state.roleAssignForm = value
        },
        ASSIGN_USER_TO_ROLE(state, value) {
            state.roleAssignForm.roles.push(value)
        },
        DELETE_USER_ROLE(state, value) {
            const index = state.roleAssignForm.roles.map(role => role.id).indexOf(value.id)
            if (index > -1) state.roleAssignForm.roles.splice(index, 1)
        },
    },
    actions: {

        /**
         *  Get all roles
         *
         * @param commit
         * @param state
         * @param link
         * @returns {Promise<void>}
         */
        getUser({commit, state}, link) {
            try {
                return HTTP()
                    .get(link)
                    .then(response => {
                        commit('SET_USERS', response.data.data)
                        commit('__helpers/SET_PAGINATE_LINKS', response.data.links, {root: true})
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (loginError) {
                console.log(loginError)
            }
        },
        /**
         *  Get user profile
         *
         * @param commit
         * @param state
         * @param link
         * @returns {Promise<void>}
         */
        getUserProfile({commit, state}, id) {
            try {
                return HTTP()
                    .get(`/users/${id}/profile`)
                    .then(response => {
                        commit('SET_USER', id)
                        commit('SET_USER_PROFILE', response.data.data)
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (loginError) {
                console.log(loginError)
            }
        },
        assignUserRole({commit, state}, e) {
            try {
                let data = {
                    role_ids: [e.id]
                }
                return HTTP()
                    .post(`/users/${state.roleAssignForm.id}/add-role`, data)
                    .then(response => {
                        commit('ASSIGN_USER_TO_ROLE', e)
                        toast.success(response.data);
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (loginError) {
                console.log(loginError)
            }
        },
        deleteUserRole({commit, state}, e) {
            try {
                let data = {
                    role_id: e.id
                }
                return HTTP()
                    .post(`/users/${state.roleAssignForm.id}/delete-role`, data)
                    .then(response => {
                        commit('DELETE_USER_ROLE', e)
                        toast.success(response.data);
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (loginError) {
                console.log(loginError)
            }
        },


    }
}
