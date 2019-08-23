<template>
  <div id="app">
    <div class="navbar">
      <a href="">
        <div id="title">
          <span class="header-title">
            Green Consulting
          </span>
        </div>
      </a>
      <div class="header-right">
        <router-link class="header-link" to="/">Home</router-link> |
        <router-link class="header-link" to="/locations">Standorte</router-link>
        <span>
          | <router-link class="header-link" to="/catalog">Fragenkatalog</router-link>
        </span>
      </div>
    </div>
    <router-view/>
    <div id="footer">
      <router-link class="footer-link" to="/contact">Kontakt</router-link> |
      <router-link class="footer-link" to="/about">Impressum</router-link>
    </div>
  </div>
</template>

<style lang="sass">
#app
  font-family: "Merriweather", serif
  text-align: justify

.sticky 
  min-height: 40px

h2 
  font-size: 35px
  margin: 20px 10px 10px
  text-align: center

.navbar 
  background-color: #38527f
  padding: 10px
  border: 0
  border-radius: 0

#title 
  text-align: center
  letter-spacing: 2px

.navbar span 
  color: white

.header-title 
  font-size: 25px
  font-weight: bold

.header-right 
  line-height: 30px
  float: right
  color: white
  letter-spacing: 2px
  font-size: 20px

.header-link,
.header-link:hover,
.header-link.router-link-exact-active 
  color: white
  text-decoration: none
  padding: 10px

.header-link.router-link-exact-active 
  color: rgb(204, 204, 204)
  padding-top: 13px
  border-top: 4px solid rgb(204, 204, 204)

.header-link:hover 
  color: rgb(204, 204, 204)
  padding-top: 13px
  border-top: 4px solid rgb(204, 204, 204)

#search-page 
  margin-left: 5px
  margin-right: 5px
  padding: 0 6px
  border-radius: 4px

.footer-link,
.footer-link:hover,
.footer-link.router-link-exact-active 
  color: white
  text-decoration: none
  padding: 10px

.footer-link.router-link-exact-active 
  color: rgb(204, 204, 204)
  border-bottom: 4px solid rgb(204, 204, 204)

.footer-link:hover 
  color: rgb(204, 204, 204)
  border-bottom: 4px solid rgb(204, 204, 204)

#footer 
  position: fixed
  left: 0
  bottom: 0
  width: 100%
  background-color: #38527f
  color: white
  text-align: center
  padding: 10px
</style>
