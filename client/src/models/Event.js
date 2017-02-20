const Event = function({title, description, date, hosts = []}){
	this.title = title;
	this.description = description;
	this.date = new Date(date);
	this.hosts = hosts;
}

Event.parseEvents = function(eventArray){
	return eventArray.map((event)=>{
		return new Event(event)
	})
}

Event.prototype = {}

module.exports = Event;