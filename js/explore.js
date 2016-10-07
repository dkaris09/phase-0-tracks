// Release 4: Write a JavaScript Program

// reversing a string in JavaScript
// split the string and return an array of separate letters
// run the reverse method to reverse the new array
// rejoin the letters with the join method
function reversestr(str) {
     
    var splitstr = str.split(""); 
    
    var reversestr = splitstr.reverse(); 
 
    var joinstr = reversestr.join(""); 

    return joinstr; 
    newvar = joinstr;
}

newVar = reversestr("hello");

console.log(newVar);
var olleh = true 
if (olleh){
	console.log("I think that was Hello, right?");
} else {
	console.log("Hello!");
}