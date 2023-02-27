<template>
    <v-app class="ExplorePage">
      <v-main>
        <NavBar />
        <ExploreBanner />
  
          <v-row>
            <v-col class="post-col" xs="12" md="8">
             <PostComp />
            </v-col>
            
            <v-col class="wall-col" xs="12" md="4" style="padding-right: 2rem;">
            <WallCards />
          </v-col>
        
      </v-row>
      </v-main>
    </v-app>
  </template>
  
  <script>
   import WallCards from "./WallCards.vue"
   import NavBar from "@/globalcomponents/NavBar.vue"
   import PostComp from "./PostComp.vue"
   import ExploreBanner from "./ExploreBanner.vue"
  export default {
    name: "ExplorePage",
    
    components: {
      NavBar,
      PostComp,
      ExploreBanner,
      WallCards
    },
  
    data: () => ({
      //
    }),
  }
  </script>
  
  