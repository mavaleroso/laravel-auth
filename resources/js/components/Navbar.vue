<template>
	<!-- <v-app style="height: 30px;"> -->
	<div>
    <v-app-bar
      color="orange darken-4"
      dark
	  min-height="auto"
	  short
    >
			<v-spacer></v-spacer>
			<v-spacer></v-spacer>
			<v-toolbar-title>Text Query</v-toolbar-title>
			<v-spacer></v-spacer>
			<v-spacer></v-spacer>
			<v-spacer></v-spacer>
			<v-spacer></v-spacer>
			<v-spacer></v-spacer>
			<v-spacer></v-spacer>
			<v-spacer></v-spacer>
			<v-spacer></v-spacer>
			<v-spacer></v-spacer>
			<v-row
			no-gutters
			>
			<v-btn
				v-for="link in links"
				:key="link.id"
				color="white"
				text
				rounded
				class="my-2 ml-2"
				:to="link.path"
			>
			{{link.name}}
			</v-btn>
			<v-btn
				color="white"
				text
				rounded
				class="my-2 ml-2"
				href="auth/logout_request"
			>
			Logout
			</v-btn>
			</v-row>
			<v-spacer></v-spacer>
    </v-app-bar>
	</div>
  <!-- </v-app> -->
</template>

<script>
export default {
	name: 'navbar',
	props: ['app'],
	data() {
		return {
			links: [
				{
					id: 1,
					name: 'Dashboard',
					path: '/'
				},
				{
					id: 2,
					name: 'Messages',
					path: '/Messages'
				},
				{
					id: 3,
					name: 'Apis',
					path: '/apis'
				},
				{
					id: 4,
					name: 'Config',
					path: '/Config'
				}
			],
		}
	},
	methods: {
		logout() {
			window.location.href = 'auth/logout_request'
		}
	}
}
</script>

