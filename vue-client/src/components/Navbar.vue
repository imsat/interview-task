<template>
  <nav class="navbar navbar-expand-md navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">Test App</a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse"
            data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <ul class="navbar-nav px-3 ml-auto">
<!--      <li class="nav-item ">-->
<!--&lt;!&ndash;        <router-link class="nav-link" @click.prevent="logout" to="/">{{user.full_name}}</router-link>&ndash;&gt;-->
<!--        <a class="nav-link" href="javascript:void(0)" @click.prevent="logout">Log out</a>-->
<!--      </li>-->
<!--      <li class="nav-item ">-->
<!--        <a class="nav-link" href="javascript:void(0)" @click.prevent="logout">Log out</a>-->
<!--      </li>-->


      <li class="nav-item dropdown">
        <a id="navbarDropdown" class="nav-link dropdown-toggle text-capitalize" href="#"
           role="button"
           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

          {{user.full_name}} <span class="caret"></span>
        </a>

        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
          <router-link class="dropdown-item" :to="'/users/' + user.id">
            Profile
          </router-link>
          <a class="dropdown-item"  href="javascript:void(0)" @click.prevent="logout">
            Logout
          </a>

        </div>
      </li>
    </ul>
  </nav>
</template>

<script>
import {mapActions, mapMutations, mapState} from "vuex";

export default {
  name: "Navbar",
  computed: {
    ...mapState('authentication', [
      'user',
    ]),
  },
  methods: {
    ...mapActions('authentication', [
      'logout',
    ]),
  }
}
</script>

<style scoped>

</style>