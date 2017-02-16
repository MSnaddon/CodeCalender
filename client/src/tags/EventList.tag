<EventList>
	<h2>What's on</h2>
	<div each={array, day in this.eventDays}>
		<div><h3>{day}</h3></div>
		<!-- use dynamic styling to show focus -->
		<!-- use comparison to this.opts.events[this.opts.focusIndex] -->
		<div each={event, i in array} class={event-list-focus: this.focusEvent === event}>
			<h4>{event.title}</h4>
			<p>@ {event.time}</p>

		</div>

	</div>


	<style>
		.event-list-focus{
			background: grey;
		}
	</style>



	<script>
		this.eventDays = {}
		this.focusEvent = this.opts.events[this.opts.focusEvent];

		
		this.on('update', ()=>{
			this.focusEvent = this.opts.events[this.opts.focusEvent];

		})

		//splits the events into object {day: [events]}
		this.opts.events.forEach((event)=>{
			let eventKey = this.opts.getDateString(event.date);
			this.eventDays[eventKey] ? this.eventDays[eventKey].push(event) : this.eventDays[eventKey] = [event]
		})

	

	</script>
</EventList>