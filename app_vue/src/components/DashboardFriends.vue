<template>
  <VRow>
    <VCol cols="3">
      <VCard :border="true" class="friendslist" variant="outlined">
        <VCardTitle> <h2>Friends</h2> </VCardTitle>
        <VDivider color="black" thickness="2"></VDivider>
        <v-row no-gutters="true">
          <v-col v-for="n in friendsProfile" :key="n" cols="4" align-self="stretch">
            <VCard color="white" density="">
              <a href="profile">
                <v-img
                  :src="n.image"
                  aspect-ratio="1"
                  cover
                  class="bg-grey-lighten-2"
                >
                  <template v-slot:placeholder>
                    <v-row
                      class="fill-height ma-0"
                      align="center"
                      justify="center"
                    >
                      <v-progress-circular
                        indeterminate
                        color="grey-lighten-5"
                      ></v-progress-circular>
                    </v-row>
                  </template> </v-img
              ></a>
              <VDivider color="white" thickness="2"></VDivider>
              <center><p>{{ n.name }}</p></center>
            </VCard>
          </v-col>
        </v-row>
      </VCard>
    </VCol>
  </VRow>
</template>

<script>
export default {
  name: "DashFriends",
  data() {
    return {
      friendsProfile: [
        {
          id: 0,
          image: "https://randomuser.me/api/portraits/men/58.jpg",
          name: "Name 1",
        },
        {
          id: 0,
          image: "https://randomuser.me/api/portraits/women/3.jpg",
          name: "Name 2",
        },
        {
          id: 0,
          image: "https://randomuser.me/api/portraits/men/86.jpg",
          name: "Name 3",
        },
        {
          id: 0,
          image: "https://randomuser.me/api/portraits/women/18.jpg",
          name: "Name 4",
        },
        {
          id: 0,
          image: "https://randomuser.me/api/portraits/men/4.jpg",
          name: "Name 5",
        },
        {
          id: 0,
          image: "https://randomuser.me/api/portraits/women/90.jpg",
          name: "Name 6",
        },
      ],
    };
  },
};
</script>

<style scoped>
h2 {
  text-align: center;
}

.friendslist {
  position: fixed;
  left: 6%;
  top: 55%;
  width: 25%;
  margin: 5px;
}
</style>
