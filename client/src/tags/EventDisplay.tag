<EventDisplay>
	<header id="display-title">{opts.event.title}</header>

	<article id="display-description">{opts.event.description}</article>

	<div each={ host, i in opts.event.hosts } id="display-hosts">{host}</div>

	<div id="display-time">
		Time: {opts.event.time} 
		Date: {opts.event.date}
	</div>


	<script>
		
	</script>
</EventDisplay>