
INSERT INTO question (question, subject) VALUES ('What is Java Script?', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('JS is a web-technology. Light weight scripting (programming) language (does not create any apps). JS is executed by a browser as soon as the page loads.
It is also a mechanism that validate data before going to server.', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('Define HTML, CSS, and JS perpose', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('HTML is to define the content of the web page;
CSS is to specify the layout of the web page;
Java Script is to program the functionality of the web page;
They are all executed on the client side', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('JS location in HTML document', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('The best practice is to place JS code at the very bottom of <body> section, so it will speed up the loading process of the page.
Can also be placed in <head> section or as an external link.', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('Tags for JS in HTML document', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('<script type="text/javascript">code goes here</script>;
for external link:
<body><link src = "assets/javascript/game.js"></script></body>', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('Is JS case sensitive?', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('Yes JS is case sensitive, while HTML is not case sensitive.', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('Var Strings concatenation
// make a variable named word and set it to an empty string
// on the next line add the word hello to it
// on the next line add a space to it
// on the next line add world to it
// on the next line console.log the word variable', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var word = "";
word += "hello";  //word = word + "hello";
word += " "; //word = word + " ";
word += "world"; //word = word + "world";
console.log(word);', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('For loop output
// create a for loop to loop over the word variable and console.log each character inside of it', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('//one way
 for (var i=0; i<word.length; i++){
 console.log(word[i]);
 }
//another way
 for (var i=0; i<word.length; i++){
 console.log(word.charAt(i)); //hello world
 }
// i = will print all characters in the string, 0 = will print first letter "h"
//The charAt() method returns the character at the specified index in a string.
//another way
 for (var i in word){
 console.log(word.charAt(i));
 }', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('charAt()
character = str.charAt(index)
// console.log the e in this word without using the letter e', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var word = "fiesta";
//one way
 console.log(word[2]);
//another way
 console.log(word.charAt(2));', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('indexOf
// using indexOf console.log the index of the letter f in the animal variable.', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var animal = "the fox says";
// console.log(4); // you cannot just do this. Instead of 4 you have to use the animal variable 
console.log(animal.indexOf("f"));', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('Var Strings concatenation
// make a variable named word and set it to an empty string
// on the next line add the word hello to it
// on the next line add a space to it
// on the next line add world to it
// on the next line console.log the word variable', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var word = "";
word += "hello"; //word = word + "hello";
word += " "; //word = word + " ";
word += "world"; //word = word + "world";
console.log(word);', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('For loop output
// create a for loop to loop over the word variable and console.log each character inside of it', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('//one way
 for (var i=0; i<word.length; i++){
 console.log(word[i]);
 }
//another way
 for (var i=0; i<word.length; i++){
 console.log(word.charAt(i)); //hello world
 }
// i = will print all characters in the string, 0 = will print first letter "h"
//The charAt() method returns the character at the specified index in a string.
//another way
 for (var i in word){
 console.log(word.charAt(i));
 }', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('charAt()
character = str.charAt(index)
// console.log the e in this word without using the letter e', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('// console.log the e in this word without using the letter e
var word = "fiesta";
//one way
 console.log(word[2]);
//another way
 console.log(word.charAt(2));', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('indexOf// using indexOf console.log true if the word giraffe is in the animal variable and false otherwise
// using indexOf console.log true if the word cat is in the animal variable and false otherwise.', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var animal = "the giraffe says sup";
//one way
 console.log(animal.indexOf("giraffe") >= 0);
//another way
 console.log(animal.indexOf("giraffe") > -1);
//another way
 console.log(animal.indexOf("giraffe") != -1);
//another way
 if (animal.indexOf("giraffe") > -1){
 console.log(true);
 }else {
 console.log(false);
 }
//another way
if (animal.indexOf("cat") != -1){
 console.log(true)}else{console.log(false)}', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('Index 
The first position of any string is ___.  ', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('the first position of any string is ___.
0
//The index of the first character is 0, the second character is 1, and so on.
//The index of the last character in a string is string.length-1, the second last character is string.length-2, and so on', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('replace()
string.replace(searchvalue, newvalue)
The replace() method searches a string for a specified value, or a regular expression, and returns a new string where the specified values are replaced.
This method does not change the original string!', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var greeting = "hello world";
greeting = greeting.replace(/o/g, "c") 
// what is the value of the variable greeting?
"hellc wcrld"
//g is global modifier means all specified values will be replaced
//gi for case-insensitive replacement', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('replace(par, par)var str = "Visit Microsoft!";', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var str = "Visit Microsoft!";
var res = str.replace("Microsoft", "W3Schools");', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('substr()
string.substr(start, length)
The substr() method extracts parts of a string, beginning at the character at the specified position, and returns the specified number of characters. // write code to console.log ppl in the variable f without using the letters ppl 
// I want you to use the variable f', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var f = "apple";
// write code to console.log ppl in the variable f without using the letters ppl 
// I want you to use the variable f
//one way
 f[1]+f[2]+f[3];
//another way
 f.substr(1,3);
//another way
 f.substring(1,4);
//another way
 f.slice(1,4);', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('substring()
string.substring(start, end)
The substring() method extracts the characters from a string, between two specified indices, and returns the new sub string.
This method extracts the characters in a string between "start" and "end", not including "end" itself.', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var f = "apple";
// write code to console.log ppl in the variable f without using the letters ppl 
// I want you to use the variable f
//one way
 f[1]+f[2]+f[3];
//another way
 f.substr(1,3);
//another way
 f.substring(1,4);
//another way
 f.slice(1,4);', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('slice()
array.slice(start, end)
The slice() method returns the selected elements in an array, as a new array object.
The slice() method selects the elements starting at the given start argument, and ends at, but does not include, the given end argument.', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var fruits = ["Banana", "Orange", "Lemon", "Apple", "Mango"];
var citrus = fruits.slice(1, 3);
//Orange, Apple', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('slice() with negative arguments', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var fruits = ["Banana", "Orange", "Lemon", "Apple", "Mango"];
var myBest = fruits.slice(-3, -1);
//Orange, Apple
//the re is no index 0 at the end, it is starting from -1; Only one element with index of 0', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('toUpperCase()', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('// the variable cat below will console log out MEESES
// var cat = "meeses";
// console.log(cat.toUpperCase());', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('toUpperCase() the first letter of a string
// Capitalize the first letter in gg
var gg = "the giraffe said hi";', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('// Capitalize the first letter in gg
var gg = "the giraffe said hi";
console.log(gg[0].toUpperCase() + gg.slice(1));
//gg[0] is "t"
//another way
gg.charAt(0).toUpperCase() + gg.substr(1);', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('Substring and join
var animal = "moose";
//write code here to change the middle o to z', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('
//one way
 var animal_arr = animal.split("");
 animal_arr[2] = "z";
 var answer = animal_arr.join("");
//another way
 console.log(animal.substr(0,1) + "z" + animal.substr(3,4))', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('push
// make a variable named dogs and initialize it to an empty array
// on the next line append a string named rover into the dogs array
// on the next line append a string named hunter into the dogs array
// on the next line append a string named oak into the dogs array
// on the next line console.log out the length of the dogs array', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('// make a variable named dogs and initialize it to an empty array
// on the next line append a string named rover into the dogs array
// on the next line append a string named hunter into the dogs array
// on the next line append a string named oak into the dogs array
// on the next line console.log out the length of the dogs array
var dogs = [];
dogs.push("rover");
dogs.push("hunter");
dogs.push("oak");
console.log(dogs.length);', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('arrays
//part one
 var letters = ["h", "c", "i", "r"];
 // on the next line reverse the letters array
 // on the next line convert the letters array into a string and console log it out	', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('var letters = ["h", "c", "i", "r"];  //one way
 letters.reverse();
 console.log(letters.join(""));
 //another way donot do this
 // var word = "";
 // for(var i=letters.length-1; i>=0; i--){
 // word += letters[i];}
 //part two 
 //write code below famousToms to replace "Tom Hanks" with "Tom Petty"
 var famousToms = ["Tom Cruise", "Tom Hanks", "Tom Keel"];
 famousToms[1] = "Tom Petty";
//part three
 // make a variable named nums and set it to an empty array
 // on the next line write code to add numbers 1 to 1000 into the nums array
 //one way
 var nums = [];
 for (var i=1; i<1001; i++){
 nums.push(i);}
 //another way
 var nums = [];
 for (var i=1; i<=1000; i++){
 nums.push(i);}
 //another way
 var nums = [];
 for (var i=0; i<1000; i++){
 nums.push(i+1);}
 //another way
 var nums = [];
 for (var i=0; i<1000; i++){
 nums[i] = i+1;
 }', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('doublelength // write a function named doubleLength that takes in an argument of str and returns the length of str * 2;
// call the doubleLength function with a value of "allen" and console log the value	', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('// write a function named doubleLength that takes in an argument of str and returns the length of str * 2
function doubleLength(str){
 return str.length*2;}
// call the doubleLength function with a value of "allen" and console log the value
console.log(doubleLength("allen"));', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('array // make a variable named nums and set it to an array with the numbers 1002 and 1001 in it.
// on the next line write code to push numbers 1000 to 1 into the nums array', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('// make a variable named nums and set it to an array with the numbers 1002 and 1001 in it.
// on the next line write code to push numbers 1000 to 1 into the nums array
//one way
 var nums = [1002, 1001];
 for(var i=1000; i>=1; i--){
 nums.push(i);}
//another way
 var nums = [1002, 1001];
 for(var i=1000; i>0; i--){
 nums.push(i);
 }', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('function, array // write a function named arrayMerge that takes in an argument named arr, and returns a string of all the elements combined', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('// write a function named arrayMerge that takes in an argument named arr, and returns a string of all the elements combined
//one way
function arrayMerge(arr){
 var everything = "";
 for (var i=0; i<arr.length; i++){
 everything += arr[i];}
 return everything;}
//another way
function arrayMerge(arr){
 return arr.join("");
}', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('function with arguments // write a function named arrSum that takes in an array and returns the sum of the elements in the array', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('// write a function named arrSum that takes in an array and returns the sum of the elements in the array
//one way
function arrSum(arr){
 var sum = 0;
 for (var i=0; i<arr.length; i++){
 sum += arr[i];}
 return sum;}
//another way 
function arrSum(arr){
 return arr.reduce(function(a,b){
 return a+b;
 });
}
//1,2,3
//3,3
//6', LAST_INSERT_ID());

INSERT INTO question (question, subject) VALUES ('variables operations', 'Java Script');
INSERT INTO answer (answer, question_id) VALUES ('//part one
 //what does the following code console log out
 var a = 5;
 var b = 6;
 function returnSum(a,b){
 return a + b;}
 console.log(returnSum());
 //NaN 
 //17 part two
 //what does the following code console log out
 var a = 5; 
 var b = 6;
 function returnSum(){
 var a = 9;
 return a + b;}
 console.log(returnSum());
 //15
 //17 part 3
 //what does the following code console log out
 var a = 5;
 var b = 6;
 function returnSum(){
 return a + b;
 var a = 9;}
 console.log(returnSum());
 NaN', LAST_INSERT_ID());

-- INSERT INTO question (question, subject) VALUES ('', 'Java Script');
-- INSERT INTO answer (answer, question_id) VALUES ('', LAST_INSERT_ID());



















