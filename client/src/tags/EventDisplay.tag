<EventDisplay>

	<header id="display-title">{opts.focusEvent.title}</header>

	<article id="display-description">{opts.focusEvent.description}</article>

	<div>
		Hosts:
		<ul>
			<li each={ host, i in opts.focusEvent.hosts } id="display-hosts">{host}</li>
		</ul>
	</div>
	<div id="display-time">
		Time: {opts.focusEvent.time} 
		Date: {opts.focusEvent.date}
	</div>

	<script>
		console.log(opts)
		
	</script>



</EventDisplay>