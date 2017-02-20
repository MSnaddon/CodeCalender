<EventDisplay>

	<header id="display-title">{opts.focusEvent.title}</header>
	<div id="display-time">
		{opts.focusEvent.getRelativeDay()}
	</div>
	<div if={opts.focusEvent.hosts[0]} id="hosts">
		Hosts:
		<ul>
			<li each={ host, i in opts.focusEvent.hosts } id="display-hosts">{host}</li>
		</ul>
	</div>
	<article id="display-description">
		<p each={paragraph, i in opts.focusEvent.description}>
			{paragraph}
		</p>
	</article>


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