<template>
  <form class="form-signin">
    <fpl :isLoading="isLoading"></fpl>
    <div class="text-center mb-4">
      <img class="mb-4" src="https://getbootstrap.com/docs/4.6/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Register</h1>
    </div>

    <div class="form-label-group">
      <input type="text" id="inputFirstName" :value="registerInfo.first_name" @input="SET_REGISTER_FIRST_NAME($event.target.value)" class="form-control" placeholder="Email address" required autofocus>
      <label for="inputFirstName">First Name</label>
      <span class="text-danger" v-if="commonErrors.first_name" v-html="commonErrors.first_name[0]"></span>
    </div>
    <div class="form-label-group">
      <input type="text" id="inputLastName" :value="registerInfo.last_name" @input="SET_REGISTER_LAST_NAME($event.target.value)" class="form-control" placeholder="Email address" required autofocus>
      <label for="inputLastName">Last Name</label>
    </div>
    <div class="form-label-group">
      <input type="email" id="inputEmail" :value="registerInfo.email" @input="SET_REGISTER_EMAIL($event.target.value)"
             class="form-control" placeholder="Email address" required autofocus>
      <label for="inputEmail">Email address</label>
      <span class="text-danger" v-if="commonErrors.email" v-html="commonErrors.email[0]"></span>
    </div>

    <div class="form-label-group">
      <input type="password" id="inputPassword" :value="registerInfo.password"
             @input="SET_REGISTER_PASSWORD($event.target.value)" class="form-control" placeholder="Password" >
      <label for="inputPassword">Password</label>
      <span class="text-danger" v-if="commonErrors.password" v-html="commonErrors.password[0]"></span>
    </div>
    <div class="form-label-group">
      <input type="password" id="inputPasswordConfirm" :value="registerInfo.password_confirmation"
             @input="SET_REGISTER_PASSWORD_CONFIRM($event.target.value)" class="form-control" placeholder="Password" >
      <label for="inputPasswordConfirm">Confirm Password</label>
    </div>

    <button class="btn btn-success btn-block text-white my-3" type="button" @click.prevent="register" :disabled="!validToRegister">Register</button>
    <router-link to="/" class="btn btn-info float-right">Login</router-link>
  </form>
</template>

<script>
import {mapActions, mapGetters, mapMutations, mapState} from "vuex";

export default {
  name: "Register",
  computed: {
    ...mapState('__helpers', [
      'isLoading',
      'commonErrors'
    ]),
    ...mapState('authentication', [
        'token',
      'registerInfo',
    ]),
    ...mapGetters('authentication', [
      'validToRegister',
    ]),
  },
  methods: {
    ...mapMutations('authentication', [
      'SET_REGISTER_FIRST_NAME',
      'SET_REGISTER_LAST_NAME',
      'SET_REGISTER_EMAIL',
      'SET_REGISTER_PASSWORD',
      'SET_REGISTER_PASSWORD_CONFIRM',
    ]),
    ...mapActions('authentication', [
      'register',
    ]),
  }
}
</script>


<style scoped>
html,
body {
  height: 100%;
}

body {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 420px;
  padding: 15px;
  margin: auto;
}

.form-label-group {
  position: relative;
  margin-bottom: 1rem;
}

.form-label-group input,
.form-label-group label {
  height: 3.125rem;
  padding: .75rem;
}

.form-label-group label {
  position: absolute;
  top: 0;
  left: 0;
  display: block;
  width: 100%;
  margin-bottom: 0; /* Override default `<label>` margin */
  line-height: 1.5;
  color: #495057;
  pointer-events: none;
  cursor: text; /* Match the input under the label */
  border: 1px solid transparent;
  border-radius: .25rem;
  transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
  color: transparent;
}

.form-label-group input::-moz-placeholder {
  color: transparent;
}

.form-label-group input:-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::placeholder {
  color: transparent;
}

.form-label-group input:not(:-moz-placeholder-shown) {
  padding-top: 1.25rem;
  padding-bottom: .25rem;
}

.form-label-group input:not(:-ms-input-placeholder) {
  padding-top: 1.25rem;
  padding-bottom: .25rem;
}

.form-label-group input:not(:placeholder-shown) {
  padding-top: 1.25rem;
  padding-bottom: .25rem;
}

.form-label-group input:not(:-moz-placeholder-shown) ~ label {
  padding-top: .25rem;
  padding-bottom: .25rem;
  font-size: 12px;
  color: #777;
}

.form-label-group input:not(:-ms-input-placeholder) ~ label {
  padding-top: .25rem;
  padding-bottom: .25rem;
  font-size: 12px;
  color: #777;
}

.form-label-group input:not(:placeholder-shown) ~ label {
  padding-top: .25rem;
  padding-bottom: .25rem;
  font-size: 12px;
  color: #777;
}

.form-label-group input:-webkit-autofill ~ label {
  padding-top: .25rem;
  padding-bottom: .25rem;
  font-size: 12px;
  color: #777;
}

/* Fallback for Edge
-------------------------------------------------- */
@supports (-ms-ime-align: auto) {
  .form-label-group {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column-reverse;
    flex-direction: column-reverse;
  }

  .form-label-group label {
    position: static;
  }

  .form-label-group input::-ms-input-placeholder {
    color: #777;
  }
}
</style>