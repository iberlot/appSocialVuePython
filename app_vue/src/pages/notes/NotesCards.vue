<template>
  <v-app>
    <filterMenu></filterMenu>
    <v-content>
      <v-container>
          <v-row>
            <v-col
              align="center"
              col="3"
              sm="3"
              v-for="note in notes"
              :key="note.id"
            >
              <v-card :class="{ 'elevation-12': hover }">
                <v-img
                  :src="require('@/assets/' + note.image)"
                  :aspect-ratio="1"
                ></v-img>
              </v-card>
            </v-col>
          </v-row>
      </v-container>
    </v-content>
  </v-app>
</template>

<script>
import filterMenu from '@/globalcomponents/BookListingsFilter.vue'
export default {
  components: {
    filterMenu,
  },

  data() {
    return {
      notes: [
        {
          id: 0,
          lecture: "1",
          professor: "Monica Nicolescu",
          image: "note.jpg",
        },
        {
          id: 1,
          lecture: "2",
          professor: "Monica Nicolescu",
          image: "note2.jpg",
        },
        {
          id: 2,
          lecture: "3",
          professor: "Monica Nicolescu",
          image: "note3.jpg",
        },
        {
          id: 3,
          lecture: "4",
          professor: "Monica Nicolescu",
          image: "note4.jpg",
        },
        {
          id: 4,
          lecture: "4",
          professor: "Monica Nicolescu",
          image: "note5.jpg",
        },
        {
          id: 5,
          lecture: "4",
          professor: "Monica Nicolescu",
          image: "note5.jpg",
        },
        {
          id: 6,
          lecture: "4",
          professor: "Monica Nicolescu",
          image: "note5.jpg",
        },
        {
          id: 7,
          lecture: "4",
          professor: "Monica Nicolescu",
          image: "note5.jpg",
        },
        {
          id: 8,
          lecture: "4",
          professor: "Monica Nicolescu",
          image: "note5.jpg",
        },
      ],
    };
  },
  methods: {},
};
</script>

<style scoped>
#rounded-card {
  border-radius: 50%;
  min-height: 500px;
  min-width: 500px;
}

.v-card.v-hover {
  background-color: rgba(0, 0, 0, 0);
}

</style>
