<template>

  <DashboardFriends />
  <MyClasses />
  <ProfileAvatar />
  <WallPost />
  
</template>

<script>
// @ is an alias to /src
import DashboardFriends from "./DashboardFriends.vue";
import MyClasses from "./MyClasses.vue";
import ProfileAvatar from "./ProfileAvatar.vue";
import WallPost from "./WallPost.vue";

export default {
  name: "HomeView",
  components: {
    DashboardFriends,
    MyClasses,
    ProfileAvatar,
    WallPost
  },
};
</script>

<style scoped>
body {
  background-color: #fdf0d5;
}
</style>
