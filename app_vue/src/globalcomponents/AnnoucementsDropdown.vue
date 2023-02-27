<template>
  <v-card
    class="mx-auto"
    max-width="300"
  >
    <v-list :items="items"></v-list>
  </v-card>
</template>

<script>
    export default {
    name: "AnnoucementsDropdown",
  };
    data: () => ({
      items: [
        { type: 'subheader', title: <center>'Announcements'</center> },
        {
          title: 'Quiz #1 - CS 365',
          value: 1,
        },
        { type: 'divider' },
        {
          title: 'Test 1 Study Session - 2/12/23',
          value: 2,
        },
        { type: 'divider' },
        {
          title: 'No class on 2/13/23',
          value: 3,
        },
        { type: 'divider' },
        {
          title: 'Meeting on Zoom - 2/14/23',
          value: 4,
        },
        { type: 'divider' },
        {
          title: 'Homework Review - 2/16/23',
          value: 5,
        },
        { type: 'divider' },
        {
          title: 'Midterm Review Session - 2/21/23',
          value: 6,
        },
      ],
    }),
</script>

  