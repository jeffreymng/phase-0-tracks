var colors = ["blue", "yellow", "green", "purple"];
var horseNames = ["sparkles", "george", "jerry", "mary"];

colors.push("pink");
horseNames.push("gary");

console.log(colors);
console.log(horseNames);

var horseColors = {};

for (var i = 0; i < colors.length; i++) {
  horseColors[horseNames[i]] = colors[i];
}

console.log(horseColors);

function Car(color, brand, make, price, used) {

  this.color = color;
  this.brand = brand;
  this.make = make;
  this.price = price;
  this.used = used;
  console.log("New car!:", color, brand, make, "price:", price,"used:", used);
  this.rev = function() {console.log("Vroom Vroom!")};
}

var anotherCar = new Car("red", "Mazda", "Miata", 40000, true);
anotherCar.rev();
var anotherCar2 = new Car("purple", "Honda", "Civic", 15000, false);
anotherCar2.rev();