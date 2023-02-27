<template>
    <div>
      <p>{{ mensaje }}</p>
    </div>
</template>

<script>
  import axios from 'axios'
  export default {
    name: 'MainTest',
    data () {
      return {
        mensaje: 'Sin mensaje!'
      }
    },
    methods: {
      getMensaje () {
        const path = 'http://localhost:5000/api/account'
        axios.get(path).then((respuesta) => {
          this.mensaje = respuesta.data
        })
        .catch((error) => {
          console.log(error)
        })
      }
    },
    created () {
      this.getMensaje()
    }
  }
</script>