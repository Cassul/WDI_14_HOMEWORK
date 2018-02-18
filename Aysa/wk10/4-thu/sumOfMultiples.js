var number = Number(process.argv[2]);
var iterator = 1;
var numbers = [];
while (iterator < number) {
  if (iterator % 3 == 0) {
    numbers.push(iterator);
  } 
  if (iterator % 5 == 0) {
    numbers.push(iterator);
  } 
  iterator++;
}
var result = numbers.reduce(function(a,b) {
  return a+b;
});
console.log(result);

