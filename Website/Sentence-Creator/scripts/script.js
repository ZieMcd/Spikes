document
//const lib = require('./fs') 

var Sent = document.getElementById('sent');
var button = document.getElementById('but');

button.addEventListener("click", createSent)
   
function createSent() {
var nouns = ["The Dog","The Cat","The Man","Peter","The Ball","The Girl","The Door","The Car","The Rat"]
var verbs =["ran","jumped","sat","swam","ate","ducked","looked","found"]
return nouns + verbs
}
   
