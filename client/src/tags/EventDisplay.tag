<EventDisplay>

	<header id="display-title">{opts.focusEvent.title}</header>

	<article id="display-description">
		<p each={paragraph, i in opts.focusEvent.description}>
			{paragraph}
		</p>
	</article>
	<div id="display-time">
		{opts.getDateString(opts.focusEvent.date)} {opts.focusEvent.time}
	</div>

	<div id="hosts">
		Hosts:
		<ul>
			<li each={ host, i in opts.focusEvent.hosts } id="display-hosts">{host}</li>
		</ul>
	</div>


	<style>
		#display-title{
			margin-top:20%;
			margin-bottom:5%;
			font-family: serif;
			font-size: 2em;
			color:#85D4FF;
		}
		#display-description{
			font-family: helvetica, sans-serif;
			font-size:1em;
			margin-bottom: 3%;
		}

	</style>

</EventDisplay>