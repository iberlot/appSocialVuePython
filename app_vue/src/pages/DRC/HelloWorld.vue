<template>
<v-app :theme="theme">
    <v-app-bar>
      <v-spacer></v-spacer>

      <v-btn
        :prepend-icon="theme === 'light' ? 'mdi-weather-sunny' : 'mdi-weather-night'"
        @click="onClick"
      >Toggle Theme</v-btn>
    </v-app-bar>

    <v-main>
      <v-app id="inspire">

    <v-main class="bg-grey-lighten-3">
      <v-navigation-drawer expand-on-hover rail color="black" permanent="">
    <v-list>
      <v-list-item
        prepend-avatar="https://pbs.twimg.com/profile_images/1237550450/mstom_400x400.jpg"
        title="Tom Anderson"
        subtitle="TomA@gmail.com"
      ></v-list-item>
    </v-list>
    <v-divider color="white"></v-divider>
    <v-list density="compact" nav>
      <v-list-item
        prepend-icon="mdi-home"
        title="Home"
        value="home"
      ></v-list-item>
      <v-list-item
        prepend-icon="mdi-domain"
        title="Explore"
        value="explore"
      ></v-list-item>
      <v-list-item
        prepend-icon="mdi-tag"
        title="Book Resell"
        value="resell"
      ></v-list-item>
      <v-list-item
        prepend-icon="mdi-pen"
        title="Study"
        value="study"
      ></v-list-item>
      <v-list-item
        prepend-icon="mdi-note"
        title="Notes"
        value="notes"
      ></v-list-item>
    </v-list>
    <v-divider color="white"></v-divider>
    <v-list density="compact" nav>
      <v-list-item
        prepend-icon="mdi-logout"
        title="Sign Out"
        value="signout"
      ></v-list-item>
    </v-list>
  </v-navigation-drawer>
      <v-container>
        <v-row>
          <v-col cols="2">
            <v-sheet rounded="lg">
              <v-list rounded="lg">
                <v-list-item
                  v-for="n in 5"
                  :key="n"
                  link
                >
                  <v-list-item-title>
                    List Item {{ n }}
                  </v-list-item-title>
                </v-list-item>

                <v-divider class="my-2"></v-divider>

                <v-list-item
                  link
                  color="grey-lighten-4"
                >
                  <v-list-item-title>
                    Refresh
                  </v-list-item-title>
                </v-list-item>
              </v-list>
            </v-sheet>
          </v-col>

          <v-col>
            <v-sheet
              min-height="70vh"
              rounded="lg"
            >
            <center>
              <br><h1><b>UNR Disability Resource Center</b></h1>
              <div>

        <v-card-text class="pt-6">

          <div class="font-weight-light text-h6 mb-2">
            <i>Assisting students with disabilities in higher education.</i>
          </div>

          <h3 class="text-h6 font-weight-light text-blue mb-2">
            (775) 784-6000 <br> 
            William N. Pennington Student Achievement Center Room 230
          </h3>

        </v-card-text>

    <v-hover v-slot="{ isHovering, props }">
      <v-card
        class="mx-auto"
        color="grey-lighten-4"
        max-width="600"
        v-bind="props"
      >
        <v-img

          :aspect-ratio="7/10"
          cover
          src="https://www.unr.edu/main/images/divisions/administration-finance/parking-services/images/campus-ada-access.jpg"
        >
          <v-expand-transition>
            <div
              v-if="isHovering"
              class="d-flex transition-fast-in-fast-out bg-blue-darken-2 v-card--reveal text-body-1"
              style="height: 100%;"
            >
              <caption><b>Alt Text:</b> University of Nevada, Reno map of ADA parking and pathways.</caption>
              <br>
            </div>
          </v-expand-transition>
        </v-img>

        
      </v-card>
    </v-hover>
  </div>
            </center>
              <!--  -->
            </v-sheet>
          </v-col>
        </v-row>
      </v-container>
    </v-main>
  </v-app>

    </v-main>
  </v-app>
</template>

<script>
  export default {
    data: () => ({
      links: [
        'Dashboard',
        'Messages',
        'Profile',
        'Updates',
      ],
    }),
  }
  
</script>

<script setup>
  import { ref } from 'vue'

const theme = ref('light')

function onClick () {
  theme.value = theme.value === 'light' ? 'dark' : 'light'
}

</script>

<style scoped>
  .v-card--reveal  {
    align-items: center;
    bottom: 0;
    justify-content: center;
    opacity: .9;
    position: absolute;
    width: 100%;
  }
</style>