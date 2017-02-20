const Event = require("../models/Event.js")

const assert = require("assert");

describe("An event", function(){


	let event;

	beforeEach(()=>{
		event = new Event({
			title: "Dog walking, advanced class",
			date: "2017-02-20 16:30:00",
			description: [
				"Dogs will walk you for 1 hour whilst you bring them tennis balls",
				"Come join the whimsical sniffs and smells of Princes Gardens while our dogs idly slump by playing Pokemon Go.",
				"Ball rental £5 deposit"],
			hosts: ["Rover","Fido"]
		})
	})

	it("Should have a title", ()=>{
		assert.equal(event.title, "Dog walking, advanced class");
	});

	it("Should have a description as array of paragraphs", ()=>{

		assert.equal(event.description[0], "Dogs will walk you for 1 hour whilst you bring them tennis balls");
		assert.equal(event.description[2], "Ball rental £5 deposit");

	});

	it("Should have hosts as array of names", ()=>{

		assert.equal(event.hosts.length, 2)
		assert.equal(event.hosts[0], "Rover")

	});

	it("Should have a date", ()=>{
		assert.equal( event.date.getDay(), 1 )
	})


})

describe("Event prototype", ()=>{
	let jsonObject = [{
			title: "Dog walking, advanced class",
			date: "2017-02-20 16:30:00",
			description: [
				"Dogs will walk you for 1 hour whilst you bring them tennis balls",
				"Come join the whimsical sniffs and smells of Princes Gardens while our dogs idly slump by playing Pokemon Go.",
				"Ball rental £5 deposit"],
			hosts: ["Rover","Fido"]
		},
		{
			"title": "Codebase Weekly Yoga",
			"date": "2017-02-21",
			"time": "4pm",
			"description": [
				"Bring your mat and some water for some stretching, de-stressing and exercise. For information, see Reception.",
				"£8 drop in £45 for six sessions. 1PM, Bruntsfield Links",
				"Weekly Yoga exercise classes for CodeBase tenants.", 
				"Master your breath, let the self be in bliss, contemplate on the sublime within you. T.Krishnamachary."
			],
			"hosts": []
		}]

	it("Should parse JSON to protoypes", ()=>{

		let events = Event.parseEvents(jsonObject);
		assert.equal(Object.getPrototypeOf(events[0]), Event.prototype)
	})

})