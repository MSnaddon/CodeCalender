<ui>

	<EventDisplay event='{ opts.events[focusEvent] }'></EventDisplay>


	<EventList></EventList>








	<script>
	// mounting tags
		require('./EventDisplay.tag');
		require('./EventList.tag');
		riot.mount('EventDisplay');
		riot.mount('EventList');

		this.focusEvent = 0;

		let self = this;
		setInterval(function(){

			self.update({ focusEvent: (self.focusEvent + 1) % self.opts.events.length});
		}, 5000)

	</script>

</ui>