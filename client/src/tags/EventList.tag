<EventList>
	<h1 id="whats-on">What's on</h1>
	<div each={array, day in this.eventDays}>

		<div class="day-header">{day}</div>

		<div each={event, i in array}	class={
		event-list-item: true, 
		event-list-focus: this.focusEvent === event
		}>
			<div class="event-list-title">{event.title} </div>
			<div class="event-list-time">{event.getSimpleTimeString()}<div>
		</div>

	</div>


	<style>
		#whats-on{

			text-align: center;
		}
		.event-list-item{
			display:flex;
			flex-flow:row nowrap;
			justify-content: space-between;
			min-height:7vh;
			padding: 0% 2%;
		}
		.day-header{
			font-size:0.9em;
			font-weight: bold;
			padding: 1% 1% 1% 5%;
			border-bottom:2px solid white;
		}
		.event-list-title{
			font-size:1.3em;
			align-self: center;

		}
		.event-list-time{
			align-self: center;
			font-size: 1.3em;
			flex-shrink: 0;

		}

		.event-list-focus{
			/*background: rgba(133,212,255, 0.6);*/
			background: rgba(0,0,0,0.3);
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