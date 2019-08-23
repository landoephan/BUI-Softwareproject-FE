<template>
  <div class="container">
    <h2>Zertifizierung</h2>
    <div class="d-flex justify-content-around">
      <router-link to="/locations" tag="button" class="btn btn-secondary btn-lg">Standorte</router-link>
      <router-link to="/catalog" tag="button" class="btn btn-secondary btn-lg">Fragenkatalog</router-link>
    </div>
    <div class="sticky"></div>
  </div>
</template>

<script>
export default {
  data: function() {
    return {};
  }
};
</script>

<style scoped lang="sass">
h2
  font-size: 35px
  margin: 40px 0
  text-align: center

.sticky
  min-height: 100px
</style>
