<EventDisplay>

	<header id="display-title">{opts.event.title}</header>

	<article id="display-description">{opts.event.description}</article>

	<div>
		Hosts:
		<ul>
			<li each={ host, i in opts.event.hosts } id="display-hosts">{host}</li>
		</ul>
	</div>
	<div id="display-time">
		Time: {opts.event.time} 
		Date: {opts.event.date}
	</div>


	<script>
		
	</script>
</EventDisplay>