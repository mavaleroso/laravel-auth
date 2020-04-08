<template>
    <v-row justify="center">
        <v-dialog
        v-model="dialog"
        max-width="290"
        >
        <v-card>
            <v-card-title>Alert</v-card-title>

            <v-card-text>
            {{ messageDialog }}
            </v-card-text>

            <v-card-actions>
            <v-spacer></v-spacer>

            <v-btn
                color="orange darken-4"
                text
                @click="dialog = false"
            >
                No
            </v-btn>

            <v-btn
                color="orange darken-4"
                text
                @click="deleteAPI"
            >
                Yes
            </v-btn>
            </v-card-actions>
        </v-card>
        </v-dialog>
    </v-row>
</template>

<script>
    export default {
        name: 'sDialog',
        props: {
            messageDialog: String,
            deleteAPI: Function,
        },
        data () {
            return {
                dialog: false,
            }
        },
        mounted() {
            this.$root.$on('dialogComponent',  () => {
                this.dialog = true;
            });
            this.$root.$on('dialogDelete',  () => {
                this.dialog = false;
            });
        },
    }
</script>

<style lang="scss" scoped>

</style>