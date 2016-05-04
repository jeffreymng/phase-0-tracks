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
