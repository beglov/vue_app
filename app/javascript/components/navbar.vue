<template lang="pug">
  div
    img(src="/assets/logo.png" width="86" height="130" alt="Logo")
    span Current user: {{ current_user.email }} |
    a(:href="logout_path" rel="nofollow" data-method="delete") Log out
</template>

<script>
export default {
  name: "Navbar",
  props: ["current_user", "logout_path"],
}
</script>
