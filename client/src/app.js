import Riot from 'riot'

import apiRequester from './models/apiRequester.js'

require('./tags/ui.tag')
require('./tags/error.tag')


window.onload = ()=>{

	apiRequester.GET('/api/events', function(req, rep){
		if(!this.status===200) {
			Riot.mount('error');
		}
		else {
			const data = JSON.parse(this.responseText);
			Riot.mount('ui', data);
		}
	})

	// Riot.mount('ui')
}