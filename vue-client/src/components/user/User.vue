<template>
  <div class="container-fluid">
    <fpl :isLoading="isLoading"></fpl>
    <div class="row">
      <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4 my-2">
        <div class="card shadow">
          <div class="card-header">
            <h3 class="card-title float-left">All Users</h3>
          </div>
          <div class="card-body">
            <table class="table table-striped table-sm">
              <thead>
              <tr>
                <th style="width: 5%">#</th>
                <th style="width: 15%">First Name</th>
                <th style="width: 15%">Last Name</th>
                <th style="width: 30%">Email</th>
                <th style="width: 20%">Roles</th>
                <th style="width: 15%">Action</th>
              </tr>
              </thead>
              <tbody>
              <tr v-for="(user, i) in users" :key="i">
                <td>{{ i + 1 }}</td>
                <td>{{ user.first_name }}</td>
                <td>{{ user.last_name }}</td>
                <td>{{ user.email }}</td>
                <td>
                  <span class="badge badge-success mr-1" v-for="role in user.roles"
                        :key="role.id">{{ role.name }}</span>
                </td>
                <td>
                  <a href="#"
                     title="Add Role"
                     class="mr-2"
                     @click.prevent="SET_IS_ACTIVE({modal: true, name: 'user-add-role'}), SET_ROLE_ASSIGN_FORM(user)">
                    <i class="fas fa-plus text-success"></i>
                  </a>
                  <router-link
                      :to="'/users/'+user.id"
                      title="User Profile"
                  >
                    <i class="fas fa-search text-info"></i>
                  </router-link>
                </td>
              </tr>
              </tbody>
            </table>
            <nav aria-label="Page navigation example" class="d-flex justify-content-end">
              <ul class="pagination">
                <li class="page-item">
                  <a class="page-link" :class="{'isDisabled ': paginate_links.prev == null}"
                     @click.prevent="getUser(paginate_links.prev)" href="#">Previous</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#" :class="{'isDisabled': paginate_links.next == null}"
                     @click.prevent="getUser(paginate_links.next)">Next</a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </main>

      <modal v-if="isActive.modal && isActive.name == 'user-add-role'">
        <h4 slot="title" class="modal-title">Assign Role To {{ roleAssignForm.full_name }}</h4>
        <form>
          <div class="form-group row no-gutters">
            <label for="addRoleName" class="col-sm-2 col-form-label">Assign Role</label>
            <div class="col-sm-10">
              <multiselect
                  :value="roleAssignForm.roles"
                  :multiple="true"
                  :options="roles"
                  track-by="name"
                  label="name"
                  @select="assignUserRole"
                  @remove="deleteUserRole"
              >
              </multiselect>
            </div>
          </div>
        </form>
        <template v-slot:footer>
          <button type="button" class="btn btn-danger float-right btn-sm"
                  @click.prevent="SET_IS_ACTIVE({modal: false, name: null})">
            <i class="fa fa-times"></i> close
          </button>
        </template>
      </modal>
    </div>

  </div>
</template>

<script>
import {mapActions, mapGetters, mapMutations, mapState} from "vuex";
import Multiselect from 'vue-multiselect'

export default {
  name: "User",
  components: {Multiselect},
  computed: {
    ...mapState('user', [
      'users',
      'roleAssignForm',
    ]),
    ...mapState('role', [
      'roles',
    ]),
    ...mapState('__helpers', [
      'isActive',
      'isLoading',
      'commonErrors',
      'paginate_links'
    ]),
  },
  created() {
    let _this = this

    if (_this.roles.length === 0) {
      _this.getRole('/roles');
    }

    if (_this.users.length === 0) {
      _this.getUser('/users');
    }
  },
  methods: {
    ...mapMutations('__helpers', [
      'SET_IS_ACTIVE',
    ]),
    ...mapMutations('user', [
      'SET_ROLE_ASSIGN_FORM',
    ]),
    ...mapActions('user', [
      'getUser',
      'assignUserRole',
      'deleteUserRole',
    ]),
    ...mapActions('role', [
      'getRole',
    ]),
  },

}
</script>

<style scoped>
@import '~vue-multiselect/dist/vue-multiselect.min.css';
</style>