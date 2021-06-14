<template>
  <div class="container-fluid">
    <fpl :isLoading="isLoading"></fpl>
    <div class="row">
      <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4 my-2">
        <div class="card shadow">
          <div class="card-header">
            <h3 class="card-title float-left">All Roles</h3>
            <button type="button" class="btn btn-info float-right btn-sm"
                    @click.prevent="SET_IS_ACTIVE({modal: true, name: 'create-role'})">
              <i class="fa fa-plus"></i> Add New
            </button>
          </div>
          <div class="card-body">
            <table class="table table-striped table-sm">
              <thead>
              <tr>
                <th style="width: 5%">#</th>
                <th style="width: 85%">Name</th>
                <th style="width: 10%">Action</th>
              </tr>
              </thead>
              <tbody>
              <tr v-for="(role, i) in roles" :key="i">
                <td>{{ i + 1 }}</td>
                <td>{{ role.name }}</td>
                <td>

                  <a href="#"
                     @click.prevent="SET_IS_ACTIVE({modal: true, name: 'edit-role'}), SET_EDIT_FORM(role)"
                     class="mr-2"
                     title="edit">
                    <i class="fas fa-edit text-primary"></i>
                  </a>
                  <a href="#"
                     title="Delete"
                     @click.prevent="deleteRole(role.id)">
                    <i class="fas fa-trash text-danger"></i>
                  </a>
                </td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
      </main>

      <modal v-if="isActive.modal && isActive.name == 'create-role'">
        <h4 slot="title" class="modal-title">Create Role</h4>
        <form>
          <div class="form-group row no-gutters">
            <label for="addRoleName" class="col-sm-2 col-form-label">Role Name</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" :value="roleCreateForm.name"
                     @input="SET_ADD_ROLE_NAME($event.target.value)" id="addRoleName" placeholder="Enter role name">
            </div>
          </div>
        </form>
        <template v-slot:footer>
          <button type="button" class="btn btn-info float-right btn-sm" @click.prevent="addRole"
                  :disabled="!validToCreateRole">
            <i class="fa fa-save"></i> Save
          </button>
          <button type="button" class="btn btn-danger float-right btn-sm"
                  @click.prevent="SET_IS_ACTIVE({modal: false, name: null})">
            <i class="fa fa-times"></i> close
          </button>
        </template>
      </modal>

      <modal v-if="isActive.modal && isActive.name == 'edit-role'">
        <h4 slot="title" class="modal-title">Edit Role</h4>
        <form>
          <div class="form-group row no-gutters">
            <label for="editRoleName" class="col-sm-2 col-form-label">Role Name</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" :value="roleEditForm.name"
                     @input="SET_EDIT_ROLE_NAME($event.target.value)" id="editRoleName" placeholder="Enter role name">
            </div>
          </div>
        </form>
        <template v-slot:footer>
          <button type="button" class="btn btn-info float-right btn-sm" @click.prevent="editRole">
            <i class="fa fa-save"></i> Update
          </button>
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

export default {
  name: "Role",
  data() {
    return {}
  },
  computed: {
    ...mapState('role', [
      'roles',
      'roleCreateForm',
      'roleEditForm'
    ]),
    ...mapState('__helpers', [
      'isActive',
      'isLoading',
      'commonErrors',
      'paginate_links'
    ]),
    ...mapGetters('role', [
      'validToCreateRole',
    ]),
  },
  created() {
    let _this = this
    if (_this.roles.length === 0) {
      _this.getRole();
    }
  },
  methods: {
    ...mapMutations('__helpers', [
      'SET_IS_ACTIVE',
    ]),
    ...mapMutations('role', [
      'SET_ADD_ROLE_NAME',
      'SET_EDIT_ROLE_NAME',
      'SET_EDIT_FORM',
    ]),
    ...mapActions('role', [
      'getRole',
      'addRole',
      'editRole',
      'deleteRole',
    ]),
  },

}
</script>