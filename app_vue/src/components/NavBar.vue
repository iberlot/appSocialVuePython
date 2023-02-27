<template>
  <!-- This nav drawer is set to permanent. will always be available on every screen size. -->
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
</template>

<script>
export default {
  name: "NavBar",
};
</script>
