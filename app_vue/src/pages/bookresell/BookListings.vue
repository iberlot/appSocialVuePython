<template>
  <v-app class="d-flex">
    <filterMenu></filterMenu>
    <v-row>
      <v-col
        v-for="book in books"
        :key="book"
        class="d-flex child-flex"
        cols="3"
      >
        <VCard class="bookcards">
          <a href="profile">
            <v-img :src="book.bookimage" cover class="bimage">
              <template v-slot:placeholder>
                <v-row class="fill-height ma-0" align="center" justify="center">
                  <v-progress-circular
                    indeterminate
                    color="grey-lighten-5"
                  ></v-progress-circular>
                </v-row>
              </template> </v-img
          ></a>
          <VDivider thickness="2"></VDivider>
          <p>{{ book.bookname }}</p>
          <VDivider class="dividers"></VDivider>
          <p>{{ book.bookclass }}</p>
          <VDivider class="dividers"></VDivider>
          <p>{{ book.price }}</p>
          <VDivider class="dividers"></VDivider>
          <p>{{ book.date }}</p>
        </VCard>
      </v-col>
    </v-row>
  </v-app>
</template>

<script>
import filterMenu from "@/globalcomponents/BookListingsFilter.vue";

export default {
  name: "BookListings",

  components: {
    filterMenu,
  },

  data() {
    return {
      books: [
        {
          id: 1,
          bookname: "History of the World Map by Map",
          bookclass: "HIST 310",
          bookimage: "https://m.media-amazon.com/images/I/81VTod4MpkL.jpg",
          price: "Price",
          edition: "NA",
          date: "2023-01-05",
        },
        {
          id: 2,
          bookname: "The C++ Programming Language",
          bookclass: "CS 135",
          bookimage: "https://m.media-amazon.com/images/I/51iQMFmLFtL.jpg",
          price: "Price",
          edition: "4",
          date: "2023-01-02",
        },
        {
          id: 3,
          bookname: "Campbell Biology 12th Edition",
          bookclass: "BIOL 191",
          bookimage: "https://m.media-amazon.com/images/I/41mqPR4WuCL.jpg",
          price: "Price",
          edition: "NA",
          date: "2023-01-02",
        },
        {
          id: 4,
          bookname: " Mega 2560 Complete Starter Kit",
          bookclass: "CPE 301",
          bookimage:
            "https://m.media-amazon.com/images/I/51K67ltZWdL._AC_SL1000_.jpg",
          price: "Price",
          edition: "NA",
          date: "2023-01-01",
        },
        {
          id: 5,
          bookname: "History of the World Map by Map",
          bookclass: "HIST 310",
          bookimage: "https://m.media-amazon.com/images/I/51iQMFmLFtL.jpg",
          price: "Price",
          edition: "NA",
          date: "2023-01-02",
        },
        {
          id: 6,
          bookname: "History of the World Map by Map",
          bookclass: "HIST 310",
          bookimage: "https://m.media-amazon.com/images/I/51iQMFmLFtL.jpg",
          price: "Price",
          edition: "NA",
          date: "2023-01-02",
        },
        {
          id: 7,
          bookname: "History of the World Map by Map",
          bookclass: "HIST 310",
          bookimage: "https://m.media-amazon.com/images/I/51iQMFmLFtL.jpg",
          price: "Price",
          edition: "NA",
          date: "2023-01-02",
        },
        {
          id: 8,
          bookname: "History of the World Map by Map",
          bookclass: "HIST 310",
          bookimage: "https://m.media-amazon.com/images/I/51iQMFmLFtL.jpg",
          price: "Price",
          edition: "NA",
          date: "2023-01-02",
        },
        {
          id: 9,
          bookname: "History of the World Map by Map",
          bookclass: "HIST 310",
          bookimage: "https://m.media-amazon.com/images/I/51iQMFmLFtL.jpg",
          price: "Price",
          edition: "NA",
          date: "2023-01-02",
        },
        {
          id: 10,
          bookname: "History of the World Map by Map",
          bookclass: "HIST 310",
          bookimage: "https://m.media-amazon.com/images/I/51iQMFmLFtL.jpg",
          price: "Price",
          edition: "NA",
          date: "2023-01-02",
        },
        {
          id: 10,
          bookname: "History of the World Map by Map",
          bookclass: "HIST 310",
          bookimage: "https://m.media-amazon.com/images/I/51iQMFmLFtL.jpg",
          price: "Price",
          edition: "NA",
          date: "2023-01-02",
        },
        {
          id: 11,
          bookname: "History of the World Map by Map",
          bookclass: "HIST 310",
          bookimage: "https://m.media-amazon.com/images/I/51iQMFmLFtL.jpg",
          price: "Price",
          edition: "NA",
          date: "2023-01-01",
        },
      ],
    };
  },
};
</script>

<style scoped>
.bimage {
  height: 300px;
  width: 250px;
}
.bookcards {
  background-color: #5750509d;
  margin-top: 25px;
  margin-left: 25%;
  /* margin: 10%; */
  border-color: #5750509d;
  border-width: 4px;
}
p {
  text-align: center;
  color: white;
}
.dividers {
  border-color: #000000;
  border-width: 2px;
}
</style>
