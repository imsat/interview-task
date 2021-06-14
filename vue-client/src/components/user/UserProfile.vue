<template>
  <div class="container-fluid">
    <fpl :isLoading="isLoading"></fpl>
    <div class="row">
      <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4 my-2">
        <div class="row">
          <div class="col-md-3">
            <div class="card shadow">
              <div class="card-body">
                <img
                    src="https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
                    class="img-fluid" alt="User image">
                <h3 class="profile-username text-center">{{user.full_name}}</h3>
                <p class="text-muted text-center"><b>Member Since:</b> {{user.creation_date | difForHuman}}</p>
              </div>
            </div>
          </div>
          <div class="col-md-9">
            <div class="card shadow">
              <div class="card-body">
                <div class="tab-content">
                  <div class="tab-pane active" id="profile">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row no-gutters">
                          <span class="col-sm-4 font-weight-bold">First Name:</span>
                          <div class="col-sm-8">
                            <span>{{user.first_name}}</span>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row no-gutters">
                          <span class="col-sm-4 font-weight-bold">Last Name:</span>
                          <div class="col-sm-8">
                            <span>{{user.last_name}}</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row no-gutters">
                          <span class="col-sm-4 font-weight-bold">Email:</span>
                          <div class="col-sm-8">
                            <span>{{user.email}}</span>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row no-gutters">
                          <span class="col-sm-4 font-weight-bold">DOB:</span>
                          <div class="col-sm-8">
                            <span>{{userProfile.dob}}</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row no-gutters">
                          <span class="col-sm-4 font-weight-bold">Address:</span>
                          <div class="col-sm-8">
                            <span>{{userProfile.address}}</span>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row no-gutters">
                          <span class="col-sm-4 font-weight-bold">Gender:</span>
                          <div class="col-sm-8">
                            <span>{{getGender(userProfile.gender)}}</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>
    </div>

  </div>
</template>

<script>
import {mapActions, mapState} from "vuex";

export default {
  name: "UserProfile",
  async created() {
    let _this = this

    if (_this.users.length === 0) {
      await _this.getUser('/users');
    }
    await _this.getUserProfile(_this.$route.params.id)
  },
  computed: {
    ...mapState('user', [
      'user',
      'users',
      'userProfile'
    ]),
    ...mapState('__helpers', [
      'isLoading',
      'commonErrors',
    ]),
  },
  methods: {
    ...mapActions('user', [
      'getUser',
      'getUserProfile',
    ]),
    getGender(val){
      if(val == 1){
        return 'Male'
      }else if(val== 2){
        return 'Female'
      }else{
        return 'Other'
      }
    }
  },

  // address:"Mirpur 1, Dhaka Bangladesh"
  // avatar:null
  // creation_date:"2021-06-13T20:25:39.000000Z"
  // dob:"1994-09-25"
  // email_verified_at:null
  // gender:"1"

}
</script>