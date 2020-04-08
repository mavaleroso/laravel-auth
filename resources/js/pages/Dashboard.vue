<template>
	<div id="dashboard-body">
		<v-scale-transition hide-on-leave class="dash-scroll">
			<v-sheet
				:color="`grey lighten-4`"
				class="px-3 pt-3 pb-3"
				v-if="skeleton"
			>
				<v-skeleton-loader
				class="mx-auto"
				width="100%"
				height="70"
				type="paragraph"
				></v-skeleton-loader>
				<v-skeleton-loader
				class="mx-auto"
				width="100%"
				height="70"
				type="paragraph"
				></v-skeleton-loader>
				<v-skeleton-loader
				class="mx-auto"
				width="100%"
				height="70"
				type="paragraph"
				></v-skeleton-loader>
				<v-skeleton-loader
				class="mx-auto"
				width="100%"
				height="70"
				type="paragraph"
				></v-skeleton-loader>
				<v-skeleton-loader
				class="mx-auto"
				width="100%"
				height="70"
				type="paragraph"
				></v-skeleton-loader>
				<v-skeleton-loader
				class="mx-auto"
				width="100%"
				height="70"
				type="paragraph"
				></v-skeleton-loader>
				<v-skeleton-loader
				class="mx-auto"
				width="100%"
				height="70"
				type="paragraph"
				></v-skeleton-loader>
				<v-skeleton-loader
				class="mx-auto"
				width="100%"
				height="70"
				type="paragraph"
				></v-skeleton-loader>
			</v-sheet>
			<v-card v-else>
				<v-row v-for="message in messages" :key="message.id">
					<v-col class="text-left" cols="12" sm="2">
						<v-card class="dash-msg-desc">{{message.created_at}}</v-card>
					</v-col>
					<v-col class="text-left" cols="12" sm="10">
						<v-card class="dash-msg-desc">{{message.status}}: {{message.description}}</v-card>
					</v-col>
				</v-row>
				<v-divider></v-divider>
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
			messages: null,
			skeleton: true,
		}
	},
	mounted() {
		NProgress.start();
		this.init();
		this.newPusher();
	},
	methods: {
		init() {
			NProgress.set(0.4);
			NProgress.inc();
			skeleton: true,
			this.app.req.get('messages_group/fetch_messages').then(response => {
				this.messages = response.data.messages;
				this.skeleton = false;
				$('#dashboard-body').animate({ scrollTop: 9999 }, 'slow');
				NProgress.done();
			})
		},
		newPusher() {
			
			Pusher.logToConsole = false;

			var pusher = new Pusher('6ac366ec4bafa5318a93', {
			cluster: 'ap1',
			forceTLS: true
			});

			var channel = pusher.subscribe('dashboard-channel');
			channel.bind('append-message', (data) => {
				this.messages = this.messages.concat(data.message);
				$('#dashboard-body').animate({ scrollTop: 9999 }, 'slow');
			});
		},
		
	}
}
</script>

