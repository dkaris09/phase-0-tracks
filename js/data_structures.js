var colors = ["blue", "red", "green", "yellow"];

var horses = ["Ed", "Seabiscuit", "California Chrome", "Cigar"];

colors.push("black");

horses.push("Stallion");

var hash = {};

for (var i = 0, i < horses.length, i++)
	hash[horses[i]] = colors[i];
console.log(hash["one"])
console.log(hash.two);

function Car(make, model){
	this.make = make;
	this.model = model;

	this.engine = function(){ console.log("Roar!");};
	console.log("Car Initialization Complete!")
}
console.log("Our new car:", this);
console.log("Let's make a new car");
var newCar = new Car("Ford", "Focus")
console.log(anotherCar.make);
