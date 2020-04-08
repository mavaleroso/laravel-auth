<template>
    <div id="apis-body">
        <v-data-table v-if="!loading"
            :headers="header"
            :items="body"
            :loading="loading"
            :items-per-page="10"
            :calculate-widths="true"
            sort-by="app_id"
            class="elevation-1"
        >
            <template v-slot:top>
            <v-toolbar flat color="white">
                <v-toolbar-title>API's</v-toolbar-title>
                <v-divider
                class="mx-4"
                inset
                vertical
                ></v-divider>
                <v-spacer></v-spacer>
                <v-dialog v-model="dialog" max-width="500px">
                <template v-slot:activator="{ on }">
                    <v-btn dark class="mb-2 cust-orange" v-on="on">New API</v-btn>
                </template>
                <v-card class="api-modal-form">
                    <v-card-title>
                    <span class="headline">{{ formTitle }}</span>
                    </v-card-title>

                    <v-card-text>
                    <v-form 
                        ref="form"
                        v-model="valid"
                        :lazy-validation="lazy"
                    >
                    <v-container>
                        <v-row>
                            <v-col cols="12" sm="6" md="4">
                                <v-text-field v-model="editedItem.api_name" label="Name" required :rules="[v => !!v || 'Item is required']"></v-text-field>
                            </v-col>
                            <v-col cols="12" sm="6" md="4">
                                <!-- <v-text-field v-model="editedItem.api_type" label="Type"></v-text-field> -->
                                <v-select
                                    v-model="editedItem.api_type"
                                    :items="types"
                                    :rules="[v => !!v || 'Item is required']"
                                    label="Type"
                                    required
                                ></v-select>
                            </v-col>
                            <v-col cols="12" sm="6" md="4">
                                <!-- <v-text-field v-model="editedItem.status" label="Status" required :rules="[v => !!v || 'Item is required']"></v-text-field>
                                 -->
                                 <v-select
                                    v-model="editedItem.status"
                                    :items="status"
                                    :rules="[v => !!v || 'Item is required']"
                                    label="Status"
                                    required
                                ></v-select>
                            </v-col>
                            <v-col cols="12" sm="6" md="2">
                                <v-btn small @click="genToken" rounded class="mt-5 cust-orange">
                                    <v-icon color="white">vpn_key</v-icon>
                                </v-btn>
                            </v-col>
                            <v-col cols="12" sm="12" md="10">
                                <v-text-field v-model="editedItem.api_token" label="Token" required :rules="[v => !!v || 'Item is required']"></v-text-field>
                            </v-col>
                            </v-row>
                    </v-container>
                    </v-form>
                    </v-card-text>

                    <v-card-actions>
                    <v-spacer></v-spacer>
                    <v-btn color="orange darken-1" text @click="close">Cancel</v-btn>
                    <v-btn color="orange darken-1" :disabled="!valid" text @click="save">Save</v-btn>
                    </v-card-actions>
                </v-card>
                </v-dialog>
            </v-toolbar>
            </template>
            <template v-slot:item.action="{ item }">
            <v-icon
                small
                class="mr-2"
                @click="editItem(item)"
            >
                edit
            </v-icon>
            <v-icon
                small
                @click="deleteItem(item)"
            >
                delete
            </v-icon>
            </template>
        </v-data-table>

        <sDialog :messageDialog="newMsgDialog" :deleteAPI="deleteFunction"></sDialog>
    </div>
</template>

<script>
    import NProgress from 'nprogress';
    export default {
        props: ['app'],
        data: () => ({
                valid: true,
                lazy: false,
                loading: true,
                header: [
                {
                    text: 'ID',
                    align: 'left',
                    value: 'api_id',
                },
                { text: 'Name', value: 'api_name' },
                { text: 'Token', value: 'api_token' },
                { text: 'Type', value: 'api_type' },
                { text: 'Status', value: 'status' },
                { text: 'Created At', value: 'created_at' },
                { text: 'Updated At', value: 'updated_at' },
                { text: 'Actions', value: 'action', sortable: false },
                ],
                dialog: false,
                body: [],
                editedIndex: -1,
                editedItem: {
                    api_id: 0,
                    api_name: '',
                    api_token: '',
                    api_type: null,
                    status: null,
                    created_at: '',
                    updated_at: ''
                },
                defaultItem: {
                    api_id: 0,
                    api_name: '',
                    api_token: '',
                    api_type: null,
                    status: null,
                    created_at: '',
                    updated_at: ''
                },
                newMsgDialog: '',
                deletedVal:'',
                types: [
                    'mobile',
                    'third-party',
                ],
                status: [
                    'active',
                    'inactive'
                ]
        }),
        computed: {
            formTitle () {
                return this.editedIndex === -1 ? 'New API' : 'Edit API'
            },
        },
        watch: {
            dialog (val) {
                val || this.close()
            },
        },
        mounted() {
            NProgress.start();
            this.apis();
        },
        methods: {
            apis() {
                NProgress.set(0.4);
                NProgress.inc();
                this.loading = true;
                this.app.req.get('apis/fetch_apis').then(response => {
                    this.body = response.data.apis;
                    this.loading = false;
                    NProgress.done();
                });
            },

            editItem (item) {
                this.editedIndex = this.body.indexOf(item)
                this.editedItem = Object.assign({}, item)
                this.dialog = true
            },

            deleteItem (item) {
               
                this.deletedVal = item;
                this.newMsgDialog = "Are you sure you want to delete this API?";
                this.$root.$emit("dialogComponent", item);
            },

            close () {
                
                this.dialog = false
                setTimeout(() => {
                this.editedItem = Object.assign({}, this.defaultItem)
                this.editedIndex = -1
                }, 300)
            },

            save () {
                if (this.editedIndex > -1) {
                // Object.assign(this.body[this.editedIndex], this.editedItem)
                    var newIndex = this.editedIndex;
                    this.app.req.put('apis/update_api', this.editedItem).then(response => {
                        Object.assign(this.body[newIndex], response.data.updatedData[0]);
                        this.$notification.success(response.data.res);
                    });

                } else {
                    this.app.req.post('apis/insert_api', this.editedItem).then(response => {
                        this.body.push(response.data.newData[0]);
                        this.$notification.success(response.data.res);
                    });

                }
                this.close()
            },

            genToken () {
                this.app.req.get('apis/generate_token').then(response => {
                    this.editedItem.api_token = response.data.newToken;
                });
            },

            deleteFunction () {
                const index = this.body.indexOf(this.deletedVal);
                const api_id = this.deletedVal.api_id;
                // confirm('Are you sure you want to delete this item?') && this.body.splice(index, 1)
                this.app.req.delete('apis/delete_api', {params: {'id': api_id}}).then(response => {
                    this.body.splice(index, 1);
                    this.messageToast = response.data.res;
                    this.$root.$emit('snackbarFunction');
                    this.$root.$emit('dialogDelete');
                    this.$notification.error(response.data.res);
                });
            }
        },
    }
</script>
