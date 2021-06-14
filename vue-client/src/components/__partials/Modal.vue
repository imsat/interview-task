<template>
  <div>
    <transition name="modal">
      <div class="modal-mask">
        <div class="modal-wrapper">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                  <slot name="title" class="modal-title">
                    Default title
                  </slot>
                <button type="button" class="close" @click="SET_IS_ACTIVE({modal: false, name: null})">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <slot></slot>
              </div>

              <div class="modal-footer">
                <slot name="footer">

                </slot>
              </div>
            </div>
          </div>
        </div>
      </div>
    </transition>
  </div>
</template>

<script>
import {mapMutations, mapState} from "vuex";

export default {
  name: "Modal",
  computed: {
    ...mapState('__helpers', [
      'isActive',
    ]),
  },
  methods: {
    ...mapMutations('__helpers', [
      'SET_IS_ACTIVE',
    ]),
  }

}
</script>

<style scoped>
.modal-mask {
  position: fixed;
  z-index: 9998;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, .5);
  display: table;
  transition: opacity .3s ease;
}

.modal-wrapper {
  display: table-cell;
  vertical-align: middle;
}

</style>