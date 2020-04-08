import Dashboard from './pages/Dashboard';
import Messages from './pages/Messages';
import Config from './pages/Config';
import Apis from './pages/Apis';

export default [
	{
		path: '/',
		component: Dashboard,
		name: 'dashboard'
	},
	{
		path: '/messages',
		component: Messages,
		name: 'register'
	},
	{
		path: '/apis',
		component: Apis,
		name: 'apis'
	},
	{
		path: '/config',
		component: Config,
		name: 'config'
	}
]