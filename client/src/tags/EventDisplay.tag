<EventDisplay>

	<header id="display-title">{opts.focusEvent.title}</header>

	<article id="display-description">{opts.focusEvent.description}</article>

	<div id="hosts">
		Hosts:
		<ul>
			<li each={ host, i in opts.focusEvent.hosts } id="display-hosts">{host}</li>
		</ul>
	</div>
	<div id="display-time">
		{opts.getDateString(opts.focusEvent.date)} {opts.focusEvent.time}
	</div>

	<style>
		#display-title{
			margin-top:20%;
			margin-bottom:5%;
			font-family: serif;
			font-size: 2em;
		}
		#display-description{
			font-family: helvetica, sans-serif;
			font-size:1em;
		}

	</style>

</EventDisplay>