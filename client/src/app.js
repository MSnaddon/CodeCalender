import Riot from 'riot'

// import models
import Event from './models/Event.js'
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
			const events = Event.parseEvents(data.events)
			Riot.mount('ui', data);
		}
	})

	// Riot.mount('ui')
}