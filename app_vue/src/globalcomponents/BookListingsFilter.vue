<template>
  <v-container class="dropdowncontainer pa-2" fluid>
    <v-toolbar class="toolbar">
      <v-autocomplete
        :items="['HIST 310', 'CS 135', 'BIOL 191', 'CPE 301']"
        label="Classes"
        class="dropdown"
        clearable="true"
      ></v-autocomplete>

      <v-autocomplete
        :items="[
          'History of the World Map by Map',
          'The C++ Programming Language',
          'Campbell Biology 12th Edition',
          'Mega 2560 Complete Starter Kit',
        ]"
        filled
        label="Books"
        class="dropdown"
        clearable="true"
      ></v-autocomplete>
      ></v-toolbar>
  </v-container>
</template>

<script>
export default {
  name: "BookListingsFilter",
};
</script>

<style scoped>
.dropdowncontainer {
  background-color: rgb(0, 0, 0);
}
.dropdown {
  margin: 5%;
  background-color: whitesmoke;
}
.toolbar {
  width: 50%;
  height: 75%;
  margin: auto;
  background-color: rgb(0, 0, 0);
}
</style>
