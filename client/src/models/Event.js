const Event = function({title, description, date, imgUrl = "http://placeholder.image.png", hosts = []}){
	this.title = title;
	this.description = description;
	this.date = new Date( date );
	this.imgUrl = imgUrl;
	this.hosts = hosts;
}

Event.parseEvents = function(eventArray){
	return eventArray.map((event)=>{
		return new Event(event)
	})
}

Event.prototype = {
	getRelativeDay: function(currentDate = new Date()){
		// 86400000 mille seconds in day. by dividing by days, rounding up and then multiplying, the milleseconds shows the cut-off for the day (aka, midnight)
		const today = Math.ceil(currentDate.getTime()/86400000)*86400000
		const tomorrow = today + 86400000

		if (this.date.getTime() < today){return "Today"}
		if (this.date.getTime() < tomorrow){return "Tomorrow"}
		return ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"][this.date.getDay()]
	},
	getSimpleTimeString: function(){
		// \[\d]+\ : one or more numbers
		// \[\d]{2}\ a sequence of 2 digits 
		// .* period is any single character, * matches zero or more occurances.
		// "$1$3" picked the first and third section of the regexp match.

		return this.date.toLocaleTimeString().replace(/([\d]+:[\d]{2})(:[\d]{2})(.*)/, "$1$3").toLowerCase()
	}
}

module.exports = Event;