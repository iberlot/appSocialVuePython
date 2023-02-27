<template>
<v-banner 
      :sticky="true"
      lines="two"
      height="80"
      class="no-border"
      style=" background-color:black"
      
    >
    <v-container class="ml-16">
        <v-btn class="banner-button ml-16" style="color:white; background-color: transparent;" elevation="0" >
          <h1>For You</h1>
        </v-btn>

        <v-btn class="banner-button ml-16" style="color:white; background-color: transparent;" elevation="0" >
          <h1>Explore</h1>
        </v-btn>
      </v-container>
    </v-banner>
</template>

<style scoped>
.no-border{
    border:none;
}
</style>