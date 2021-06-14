/**
 * Module to handle Role
 * This will be imported in the store/index.js file
 */
import HTTP from '../__helpers/http'
import toast from '../services/Notification';
import swal from '../services/SweetAlert';

export default {
    namespaced: true,
    strict: process.env.NODE_ENV !== 'production',
    state: {
        roles: [],
        roleCreateForm: {
            name: '',
        },
        roleEditForm: {
            name: '',
        },
    },
    getters: {
        validToCreateRole(state) {
            if (state.roleCreateForm.name) return true
            return false
        },
    },
    mutations: {
        /** Set Role */
        SET_ROLE(state, roles) {
            state.roles = roles;
        },
        SET_ADD_ROLE_NAME(state, value) {
            state.roleCreateForm.name = value
        },
        SET_EDIT_ROLE_NAME(state, value) {
            state.roleEditForm.name = value
        },
        SET_EDIT_FORM(state, role) {
            state.roleEditForm = role
        },
        ADD_ROLE_COMPLETE(state, role) {
            state.roles.unshift(role)
            state.roleCreateForm.name = ''
        },
        ROLE_DELETE(state, id) {
            const index = state.roles.map(role => role.id).indexOf(id);
            if (index > -1) state.roles.splice(index, 1);
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
        getRole({commit, state}) {
            try {
                return HTTP()
                    .get('/roles')
                    .then(response => {
                        commit('SET_ROLE', response.data.data)
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (loginError) {
                console.log(loginError)
            }
        },
        /**
         *
         * @param commit
         * @param state
         * @returns {Promise<void>}
         */
        addRole({commit, state}) {
            try {
                return HTTP()
                    .post('/roles', state.roleCreateForm)
                    .then(response => {
                        commit('ADD_ROLE_COMPLETE', response.data.data.data)
                        commit('__helpers/SET_IS_ACTIVE', {modal: false, name: null}, {root: true})
                        toast.success(response.data.data.message);
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (loginError) {
                console.log(loginError)
            }
        },
        /**
         *
         * @param commit
         * @param state
         * @returns {Promise<void>}
         */
        editRole({commit, state}) {
            try {
                return HTTP()
                    .put(`/roles/${state.roleEditForm.id}`, state.roleEditForm)
                    .then(response => {
                        commit('__helpers/SET_IS_ACTIVE', {modal: false, name: null}, {root: true})
                        toast.success(response.data.data.message);
                    })
                    .catch(error => {
                        console.log(error)
                    })
            } catch (loginError) {
                console.log(loginError)
            }
        },
        /**
         *
         * @param commit
         * @param state
         * @param id
         */
        deleteRole({commit, state}, id) {
            try {
                swal.confirm((result) => {
                    if (result.value) {
                        return HTTP()
                            .delete(`/roles/${id}`)
                            .then(response => {
                                commit('ROLE_DELETE', id)
                                toast.success(response.data);
                            })
                            .catch(error => {
                                if(error.response.data.errors){
                                    toast.error(error.response.data.errors);
                                }
                            })
                    }
                })

            } catch (loginError) {
                console.log(loginError)
            }
        },

    }
}
