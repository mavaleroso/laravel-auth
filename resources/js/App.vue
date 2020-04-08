<template>
	<div>
		<v-app>
			<navbar :app="this"></navbar>
			<div id="routerView">
				<spinner v-if="loading"></spinner>
				<div v-else-if="initiated" class="container elevation-15 br-3 rounded-lg mt-5 main-body">
					<router-view :app="this"></router-view>
				</div>
			</div>
			<footerNav :app="this">
			</footerNav>
		</v-app>
	</div>
</template>

<script>
import Navbar from './components/Navbar';
import footerNav from './components/Footer';
export default {
	name: 'app',
	components: {
		Navbar,
		footerNav,
	},
	data() {
		return {
			user: null,
			loading: false,
			initiated: false,
			req: axios.create({
				baseUrl: BASE_URL
			}),
		}
	},
	mounted() {
		this.init();
	},
	methods: {
		init() {

			this.loading = true;

			this.req.get('auth/init').then(response => {
				this.user = response.data.user;
				this.loading = false;
				this.initiated = true;
			})
		}
	}
}
</script>

