<EventList>
	<h2>What's on</h2>
	<div each={array, day in this.eventDays}>

		<div><h3>{day}</h3></div>

		<div each={event, i in array} class={event-list-focus: this.focusEvent === event}>
			<h2>{event.title} @ {event.date.toTimeString().slice(0,5)}</h2>

		</div>

	</div>


	<style>
		.event-list-focus{
			background: rgba(133,212,255, 0.6);
			padding:1px;/*
			transform:scale(1.1);*/
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
			let eventKey = event.getRelativeDay();
			this.eventDays[eventKey] ? this.eventDays[eventKey].push(event) : this.eventDays[eventKey] = [event]
		})

	

	</script>
</EventList>