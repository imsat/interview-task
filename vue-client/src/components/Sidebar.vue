<template>
  <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
    <div class="sidebar-sticky pt-3">
      <ul class="nav flex-column">
        <li class="nav-item">
          <router-link class="nav-link " to="/dashboard">
            <i class="fa fa-tachometer-alt"></i>
            Dashboard
          </router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/roles">
            <i class="fa fa-key"></i>
            Role Management
          </router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/users">
            <i class="fa fa-user-alt"></i>
            User Management
          </router-link>
        </li>
      </ul>
    </div>
  </nav>
</template>

<script>
export default {
name: "Sidebar"
}
</script>

<style scoped>

</style>