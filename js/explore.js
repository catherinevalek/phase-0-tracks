// move the last character of a string to the first position
// for each new last character
//   add it behind the previously moved character
// print the reversed string


function reverse(string) {
  var reversedString = "";
  for (var i = string.length - 1; i >= 0; i--) {
    reversedString += string[i];
}
  return reversedString;
}


var final = reverse('pumpkin');

if (1 ==1) {
	console.log(final);
}

