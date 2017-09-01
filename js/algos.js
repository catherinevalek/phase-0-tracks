// In algos.js, write a function that takes an array of words 
// or phrases and returns the longest word or phrase in the array. 
// So if we gave your function the array of ["long phrase","longest 
// phrase","longer phrase"], it would return "longest phrase". 
// This is a logical reasoning challenge, so try to reason through 
// this based on what you already know, rather than Googling the 
// fanciest solution or looking up built-in sorting functions. 
// Note that "some string".length will do what you expect in JS.
// Add driver code that tests your function on a few arrays.


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
  console.log(longest_item);
}

var words_and_phrases = ["long phrase","longest phrase","longer phrase"];

find_longest_word(words_and_phrases);