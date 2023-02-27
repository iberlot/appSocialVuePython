<template>

   

        <v-card class="mt-12" color="#C4A484" theme="dark">
              <div class="d-flex flex-wrap justify-space-between">
                <div>
                  <v-card-title class="text-h5">
                    Photography
                  </v-card-title>
  
                  <v-card-subtitle>A wall for all things.</v-card-subtitle>
  
                  <v-card-actions>
                    <v-btn class="ml-2"  variant="text" @click="fill = !fill" icon>
                   <v-icon>{{ !fill ? "mdi-heart-outline"  : "mdi-heart" }}</v-icon> 
                    
                    </v-btn>
                  </v-card-actions>
                </div>
  
                <v-avatar
                  class="ma-3"
                  size="125"
                  rounded="0"
                >
                  <v-img src="https://cdn140.picsart.com/269088551003201.png?type=webp&to=crop&r=256"></v-img>
                </v-avatar>
              </div>
            </v-card>

            <v-card class="mt-12" color="#ffffe0" max-width="100%" >
              <div class="d-flex flex-wrap justify-space-between">
                <div>
                  <v-card-title class="text-h5">
                    Food
                  </v-card-title>
  
                  <v-card-subtitle>A wall for all things food.</v-card-subtitle>
  
                  <v-card-actions>
                    <v-btn class="ml-2"  variant="text" @click="fill = !fill" icon>
                   <v-icon>{{ !fill ? "mdi-heart-outline"  : "mdi-heart" }}</v-icon> 
                    
                    </v-btn>
                  </v-card-actions>
                </div>
  
                <v-avatar
                  class="ma-3"
                  size="125"
                  rounded="0"
                >
                  <v-img src="https://embed.widencdn.net/img/worldkitchen/7rsrtuzsot/256x256px/1050513_CO_Tabletop_Lifestyle_Uncropped_WinterFrostWhite_10.25-In-Divided-Plate_4.jpg"></v-img>
                </v-avatar>
              </div>
            </v-card>


  </template>
<script>

export default {
    data: () => ({
      fill: false,
      
    }),
  }


</script>