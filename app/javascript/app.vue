<template>
  <div id="app">
    <ul>
      <li v-for="user in users" :key="user.id">
        {{ user.id }}： {{ user.name }}: {{ user.mail }}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      users: "users",
    };
  },
  mounted() {
    this.setUser();
  },
  methods: {
    setUser: function () {
      axios
        .get("/api/v1/users")
        .then((response) => (this.users = response.data));
    },
  },
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
