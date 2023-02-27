<template>
  <div id="app">
  <v-card
    v-for="post in posts"
    :key="post.name"
    class="ml-16 mt-8"
    color="grey lighten-5"
    theme="dark"
    max-width="800"
    :title="post.name"
  >
    <template v-slot:prepend>
      <v-avatar
        color="grey-darken-3"
        image="https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg"
      ></v-avatar>
    </template>

    <v-card-text class="text-h5 py-2">
      {{ post.content }}
    </v-card-text>

    <v-card-actions>
      <v-list-item class="w-100">
        <div class="justify-self-start">
          <span class="subtitle me-2">{{ post.category }}</span>
        </div>
        <template v-slot:append>
          <div class="justify-self-end">
            <span class="subtitle me-2">{{ post.date }}</span>
            <span class="me-2">·</span>
            <span class="subtitle me-2">{{ post.time }}</span>
            <span class="me-2">·</span>
            <v-icon class="me-1" icon="mdi-heart"></v-icon>
            <span class="subheading me-2">{{ post.likes }}</span>
          </div>
        </template>
      </v-list-item>
    </v-card-actions>
  </v-card>
</div>
</template>

<script>
 
    export default {
    data(){
      return {
        posts: [
          {
            name: "John Smith",
            date: "1/1/23",
            time: "9:00 PM",
            category: "Gaming",
            likes: 256,
            content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
          },
          {
            name: "Jenny Jones",
            date: "1/1/23",
            time: "6:00 PM",
            category: "Coding",
            likes: 98,
            content: "Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
          },
          {
            name: "Sam Smith",
            date: "1/1/23",
            time: "2:45 PM",
            category: "Cooking",
            likes: 325,
            content: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
          },
          {
            name: "Alice Smith",
            date: "1/1/23",
            time: "12:00 PM",
            category: "Movies",
            likes: 500,
            content: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
          },
          {
            name: "Bob Smith",
            date: "1/1/23",
            time: "11:15 AM",
            category: "Music",
            likes: 150,
            content: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
          },
        ]
      }
    }
  };
  
</script>

<style scoped></style>
