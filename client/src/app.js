import Riot from 'riot'

import apiRequester from './models/apiRequester.js'

require('./tags/ui.tag')
require('./tags/error.tag')


window.onload = ()=>{

	apiRequester.GET('/api/events', function(req, rep){
		if(!this.status===200) {
			document.querySelector('body').innerHTML = `<error err=${this.status}></error>`
			Riot.mount('error', {err: this.status});
		}
		else {
			const data = JSON.parse(this.responseText);
			Riot.mount('ui', data);
		}
	})

	// Riot.mount('ui')
}