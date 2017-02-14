<ui>

	<EventDisplay event='{ focusEvent }'></EventDisplay>


	<EventList></EventList>








	<script>
	// mounting tags
		require('./EventDisplay.tag');
		require('./EventList.tag');
		riot.mount('EventDisplay', {event: this.opts.events[0]});
		riot.mount('EventList');

		this.focusEvent = opts.events[0];

		let self = this;
		setInterval(function(){
			let newFocus = self.opts.events[1]
			self.update({ focusEvent: newFocus});
		}, 10000)

	</script>

</ui>