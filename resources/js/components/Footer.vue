<template>
    <v-footer
    class="font-weight-medium"
    color="grey lighten-2"
    height="50"
    >
    <v-col
        class="text-center"
        cols="12"
    >
        {{ new Date().getFullYear() }} — <strong>TxtQuery</strong>
    </v-col>
    </v-footer>
</template>


<script>
    export default {
        name: 'footerNav',
        props: ['app'],
        data() {
            return {
                
            }
        }
    }
</script>

<style scoped>

</style>