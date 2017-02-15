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
		{opts.getDateString(opts.focusEvent.date)} {opts.focusEvent.time}
	</div>

	<script>

		


	</script>



</EventDisplay>