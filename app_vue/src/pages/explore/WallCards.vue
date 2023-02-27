
<template>
  <v-container class="mt-12" color="grey-lighten-1" style="overflow-x: hidden; overflow-y: scroll; max-width: 100%; max-height: 580px;">
    <v-card-title class="text-h4 bottom-border" style="text-align:center;">Community Walls</v-card-title>
    <v-card v-for="category in categories" :key="category.title" class="mt-2" color="grey-lighten-1">
      <div class="d-flex flex-wrap justify-space-between">
        <div>
          <v-card-title class="text-h4 mt-3">
            {{category.title}}
          </v-card-title>

          <v-card-actions>
            <v-btn class="ml-2"  variant="text" @click="category.fill = !category.fill" icon>
             <v-icon>{{ !category.fill ? "mdi-heart-outline"  : "mdi-heart" }}</v-icon> 
            </v-btn>
          </v-card-actions>
        </div>

        <v-icon class="ma-3" size="75" color="black">{{category.icon}}</v-icon>
      </div>
    </v-card>
  </v-container>
</template>

<script>
export default {
  data: () => ({
    categories: [
      {title: 'Art', icon: 'mdi-palette', fill: false},
      {title: 'Cars', icon: 'mdi-car', fill: false},
      {title: 'Coding', icon: 'mdi-code-tags', fill: false},
      {title: 'Cooking', icon: 'mdi-food', fill: false},
      {title: 'Gaming', icon: 'mdi-gamepad-variant', fill: false},
      {title: 'Movies', icon: 'mdi-movie', fill: false},
      {title: 'Music', icon: 'mdi-music-note', fill: false},
      {title: 'Photography', icon: 'mdi-camera', fill: false},
        
    ],
   
  }),
}
</script>

<style scoped>
.bottom-border{

  border-bottom: 1px solid #000;
  
}

</style>