<ui>

	<EventDisplay focus-event="{ opts.events[focusEvent] }"></EventDisplay>


	<EventList events="{opts.events}" focus-event={focusEvent}></EventList>


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
		}, 10000)

	</script>

</ui>