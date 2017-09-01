// For each item in the array
//   Find the length of the word or phrase
//     Compare the length to the next item in the array
//     Store the word or phrase that is longer
// Return the longest string found


function find_longest_word(word_list) {
  var longest_item = '';
  for (var i = 0; i < word_list.length; i++) {
    if (word_list[i].length > longest_item.length) {
      longest_item = word_list[i];
    }
  }
  console.log(longest_item)
}


function key_value_match(first_object, second_object) {
  for (var key_from_first in first_object) {
  	for (var key_from_second in second_object) {
  	  if ((key_from_first == key_from_second) && (first_object[key_from_first] == second_object[key_from_second]))
  	    return true
  	}
  }
  return false
}




var words_and_phrases = ["long phrase","longest phrase","longer phrase"];
find_longest_word(words_and_phrases);

var more_words = ["elephant","penguin","tiger"];
find_longest_word(more_words);

var first = {name: 'Spot', 'age': 3, isGoodDog: true};
var second = {name: 'Joe', 'age': 3, isGoodDog: false};
console.log(key_value_match(first, second))

var third = {name: 'Tome', 'age': 4, isGoodDog: true};
var fourth = {name: 'Joe', 'age': 3, isGoodDog: true};
console.log(key_value_match(third, fourth))

var fifth = {name: 'Tome', 'age': 4, isGoodDog: false};
var sixth = {name: 'Joe', 'age': 3, isGoodDog: true};
console.log(key_value_match(fifth, sixth))

var seventh = {name: 'Tome', 'age': 4, isGoodDog: false};
var eighth = {color: 'red', 'shape': 'square', size: 'small'};
console.log(key_value_match(seventh, eighth))






