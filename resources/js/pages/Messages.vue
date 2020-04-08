<template>
    <div id="messages-body">
        <v-scale-transition
            hide-on-leave
        >
            <v-sheet
                :color="`grey lighten-4`"
                v-if="skeleton"
            >
                <v-skeleton-loader
                class="mx-auto"
                width="100%"
                height="40"
                type="table-thead"
                >
                </v-skeleton-loader>
                <v-skeleton-loader
                    class="mx-auto"
                    width="100%"
                    height="70"
                    type="table-tbody"
                    >
                </v-skeleton-loader>
                <v-skeleton-loader
                    class="mx-auto"
                    width="100%"
                    height="70"
                    type="table-tbody"
                    >
                </v-skeleton-loader>
                <v-skeleton-loader
                    class="mx-auto"
                    width="100%"
                    height="70"
                    type="table-tbody"
                    >
                </v-skeleton-loader>
                <v-skeleton-loader
                    class="mx-auto"
                    width="100%"
                    height="70"
                    type="table-tbody"
                    >
                </v-skeleton-loader>
                <v-skeleton-loader
                    class="mx-auto"
                    width="100%"
                    height="70"
                    type="table-tbody"
                    >
                </v-skeleton-loader>
                <v-skeleton-loader
                    class="mx-auto"
                    width="100%"
                    height="70"
                    type="table-tbody"
                    >
                </v-skeleton-loader>
                <v-skeleton-loader
                    class="mx-auto"
                    width="100%"
                    height="70"
                    type="table-tbody"
                    >
                </v-skeleton-loader>
                <v-skeleton-loader
                    class="mx-auto"
                    width="100%"
                    height="70"
                    type="table-tbody"
                    >
                </v-skeleton-loader>
            </v-sheet>
            <v-card v-else>
                <v-card-title>
                <strong>Messages Data</strong>
                <v-spacer></v-spacer>
                <v-text-field
                    v-model="search"
                    append-icon="search"
                    label="Search"
                    class="search-bar"
                    single-line
                    hide-details
                ></v-text-field>
                </v-card-title>
                 <v-tabs color="orange darken-4">
                    <v-tab ripple>View All</v-tab>
                    <v-tab ripple>Spam</v-tab>
                    <v-tab-item>
                    <v-card flat>
                        <v-data-table
                            :headers="header"
                            :items="body"
                            :search="search"
                            :items-per-page="10"
                            class="elevation-1"
                            :calculate-widths="true"
                            :loading="loading"
                        ></v-data-table>
                    </v-card>
                </v-tab-item>
                <v-tab-item>
                    <v-card flat>
                        <v-data-table
                            :headers="header"
                            :items="body"
                            :search="search"
                            :items-per-page="10"
                            class="elevation-1"
                            :calculate-widths="true"
                            :loading="loading"
                        ></v-data-table>
                    </v-card>
                </v-tab-item>  
                </v-tabs>
                
            </v-card>
        </v-scale-transition>
    </div>
</template>

<script>
    import NProgress from 'nprogress';
    export default {
        props: ['app'],
        data() {
            return {
                search: '',
                skeleton: true,
                loading:true,
                header: [
                    {
                        text: 'ID',
                        align: 'left',
                        value: 'id',
                    },
                    { text: 'Name', value: 'name' },
                    { text: 'Contact #', value: 'contact_no' },
                    { text: 'Description', value: 'description' },
                    { text: 'Status', value: 'status' },
                    { text: 'Date', value: 'created_at' },
                    ],
                body: null,
                header2: [
                    {
                        text: 'ID',
                        align: 'left',
                        value: 'id',
                    },
                    { text: 'Name', value: 'name' },
                    { text: 'Contact #', value: 'contact_no' },
                    { text: 'Description', value: 'description' },
                    { text: 'Status', value: 'status' },
                    { text: 'Date', value: 'created_at' },
                    { text: 'Date', value: 'created_at' },
                    ],
            }
        },
        mounted() {
            this.init();
            NProgress.start();
        },
        methods: {
            init() {
                NProgress.set(0.4);
                NProgress.inc();
                this.app.req.get('messages_group/fetch_messages').then(response => {
                    this.body = response.data.messages;
                    this.skeleton = false;
                    this.loading = false;
                    NProgress.done();
                })
            }
        }
    }
</script>

<style lang="scss" scoped>

</style>