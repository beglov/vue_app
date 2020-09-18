<template lang="pug">
  div.client
    span fullname - {{ client.fullname }} ;
    span phone - {{ client.phone }} ;
    span email - {{ client.email }}
</template>

<script>
export default {
  name: 'Client',
  props: {
    client: {
      type: Object,
      required: true,
    }
  },
}
</script>
