// Create way to store longest word
// For each item in the array
//   Find the length of the word or phrase
//     Compare the length to the current longest word
//     Store the word or phrase that is longer
// Return the longest string found


function find_longest_word(word_list) {
  var longest_item = '';
  for (var i = 0; i < word_list.length; i++) {
    if (word_list[i].length > longest_item.length) {
      longest_item = word_list[i];
    }
  }
  return longest_item;
}


// For two objects containing keys and values
//   If the first key-value pair in the first object is the same as the first set in the second_object
//     Return true
//   If not, compare it with second key-value pair in the second object and so on
//   If no matches, move on to the second key-value pair in the first object and compare
//     Keep moving to next item in first object until end is reached
//   If there were no matches
//     Return false


function key_value_match(first_object, second_object) {
  for (var key_from_first in first_object) {
  	for (var key_from_second in second_object) {
  	  if ((key_from_first == key_from_second) && (first_object[key_from_first] == second_object[key_from_second])) {
  	  	return true;
  	  }
  	}
  }
  return false;
}


// Create an empty list to store words
//   For the length of the list given
//     Create a word with random length up to ten characters
//     Add the word to the list
// Return the list

function create_test_data(list_length) {
  var random_words = [];
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  for (var i = 0; i < list_length; i ++) {
  	var word = '';
    var num_char = (Math.floor(Math.random() * 10) + 1);
    for (var j = 0; j < num_char; j++) {
      word += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    }
    random_words.push(word);
  }
  return random_words;
}



var words_and_phrases = ["long phrase","longest phrase","longer phrase"];
console.log(find_longest_word(words_and_phrases));

var more_words = ["elephant","penguin","tiger"];
console.log(find_longest_word(more_words));

var first = {name: 'Spot', 'age': 3, isGoodDog: true};
var second = {name: 'Joe', 'age': 3, isGoodDog: false};
console.log(key_value_match(first, second));

var third = {name: 'Tome', 'age': 4, isGoodDog: true};
var fourth = {name: 'Joe', 'age': 3, isGoodDog: true};
console.log(key_value_match(third, fourth));

var fifth = {name: 'Tome', 'age': 4, isGoodDog: false};
var sixth = {name: 'Joe', 'age': 3, isGoodDog: true};
console.log(key_value_match(fifth, sixth));

var seventh = {name: 'Tome', 'age': 4, isGoodDog: false};
var eighth = {color: 'red', 'shape': 'square', size: 'small'};
console.log(key_value_match(seventh, eighth));


for (var i = 0; i < 10; i++) {
  var current_array = (create_test_data(4));
  console.log(current_array);
  console.log(find_longest_word(current_array));
}





