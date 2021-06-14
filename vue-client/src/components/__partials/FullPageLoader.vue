<template>
<div v-if="isLoading">
  <div id="overlay"></div>
  <div class="center-c">
    <i class="fas fa-sync fa-spin fa-5x text-info"></i>
  </div>

</div>
</template>

<script>
export default {
  name: "FullPageLoader",
  props: ['isLoading']
}
</script>

<style scoped>
#overlay {
  position: fixed; /* Sit on top of the page content */
  display: block; /* Hidden by default */
  width: 100%; /* Full width (cover the whole page) */
  height: 100%; /* Full height (cover the whole page) */
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, 0.5); /* Black background with opacity */
  z-index: 999991;
  cursor: pointer; /* Add a pointer on hover */
}

.center-c{
  margin: 0;
  position: absolute;
  z-index: 999992;
  top: 50%;
  left: 50%;
  margin-right: -50%;
  transform: translate(-50%, -50%)
}

</style>