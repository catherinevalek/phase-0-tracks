var colors =["blue", "green", "red", "pink"];
var names =["Jon", "Sansa", "Arya", "Bran"];

colors.push("black");
names.push("Robb");

console.log(colors);
console.log(names);

horses = {};
for (var i=0; i < colors.length; i++){
  horses[names[i]] = colors[i];
}

console.log(horses);

function Car(numberOfPeople, color, isFast){
  console.log("Our new car:", this);

  this.numberOfPeople = numberOfPeople;
  this.color = color;
  this.isFast = isFast;

  this.vroom = function() { console.log("Vroom!");};

  console.log("CAR INITIALIZATION COMPLETE");
}

var car = new Car(5, "blue", false);
console.log(car);
car.vroom();

var anotherCar = new Car(2, "white", true);
console.log(anotherCar);
anotherCar.vroom();

var yetAnotherCar = new Car(7, "red", false);
console.log(yetAnotherCar);
yetAnotherCar.vroom();