<EventDisplay>
	<header id="display-title">
		{opts.focusEvent.title}
	</header>

	<div id="display-time">
		{opts.focusEvent.getRelativeDay()}
		{opts.focusEvent.getSimpleTimeString()}
	</div>

	<div if={opts.focusEvent.hosts[0]} id="hosts">
		Hosts:
			<div each={ host, i in opts.focusEvent.hosts } class="host-list-element">
				{ host }
			</div>
	</div>

	<article id="display-description">
		<p each={paragraph, i in opts.focusEvent.description}>
			{paragraph}
		</p>
	</article>


	<style>
		
		#event-display-image{
			width:80%;
		}

		#display-title{
			margin-top:5%;
			margin-bottom:5%;
			font-size: 2em;
		}

		#display-time{
			font-size:1.1em;
		}

		#display-description{
			font-size:0.9em;
		}
		
		#hosts{
			font-size: 1.1em;
			display:flex;
			padding-bottom:2%;
		}

		.host-list-element{
			padding-left: 10px;
		}
	</style>
	console.log(this.opts.focusEvent);
</EventDisplay>