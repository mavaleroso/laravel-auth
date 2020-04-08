<template>
  <v-app id="inspire">
    <v-content>
      <v-container
        class="fill-height"
        fluid
      >
        <v-row
          align="center"
          justify="center"
        >
          <v-col
            cols="12"
            sm="8"
            md="4"
          >
            <v-card class="elevation-12">
              <v-toolbar
                color="primary"
                dark
                flat
              >
                <v-toolbar-title>Login form</v-toolbar-title>
                <v-spacer />
                
              </v-toolbar>
            <v-alert v-for="(error, index) in errors" :key="index" type="error" class="m-2">
            {{ error }}
            </v-alert>
               
              <v-card-text>
                <v-form>
                  <v-text-field
                    label="Login"
                    name="login"
                    prepend-icon="person"
                    type="text"
                    v-model="username"
                  />

                  <v-text-field
                    id="password"
                    label="Password"
                    name="password"
                    prepend-icon="lock"
                    type="password"
                    v-model="password"
                  />
                </v-form>
              </v-card-text>
              <v-card-actions>
                <v-spacer />
                <v-btn @click="login" color="primary">Login</v-btn>
              </v-card-actions>
              
              
            </v-card>
          </v-col>
        </v-row>
      </v-container>
    </v-content>
  </v-app>
</template>

<script>
    export default {
        name: 'Login2',
        props: {
            source: String,
        },
        data () {
            return {
                username: '',
                password: '',
                errors: [],
                req: axios.create({
                    baseUrl: BASE_URL
                })
            }
        },
        methods: {
            login() {
                this.errors = [];

                if (!this.username) {
                    this.errors.push('Username is required.');
                }

                if (!this.password) {
                    this.errors.push('Password is required.');
                }

                if (!this.errors.length) {
                    const data = {
                        username: this.username,
                        password: this.password
                    }

                    this.req.post('auth/login_request', data).then(response => {
                        window.location = '/';
                    }).catch(error => {
                        this.errors.push(error.response.data.error);
                    });
                }
            }
        }
    }
</script>

<style lang="scss" scoped>

</style>