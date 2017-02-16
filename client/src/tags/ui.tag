<ui>

	<EventDisplay get-date-string={getDateString} focus-event="{ opts.events[focusEvent] }"></EventDisplay>


	<EventList get-date-string={getDateString} events="{opts.events}" focus-event={focusEvent}></EventList>


	<script>
	// mounting tags
		require("./EventDisplay.tag");
		require("./EventList.tag");
		riot.mount("EventDisplay");
		riot.mount("EventList");

		//setting up focus event loop.
		this.focusEvent = 0;
		let self = this;
		setInterval(function(){
			//works similar to setState from react.
			self.update({ focusEvent: (self.focusEvent + 1) % self.opts.events.length});
		}, 1000)


		//returns today, tomorrow or otherwise
		this.getDateString = (date)=>{
			//get the midnight time for the end of 'today'
			let today = Math.ceil(new Date().getTime()/86400000)*86400000;
			let eventDate = new Date(date);
			//determine if today, tomorrow or which day of the week
			if (eventDate.getTime() < today){
				return "Today";
			} 
			else if(eventDate.getTime() < today + 86400000){
				return "Tomorrow";
			}
			return ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"][eventDate.getDay()];
		}
	</script>

</ui>