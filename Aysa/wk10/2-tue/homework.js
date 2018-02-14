var array = process.argv;
var stringOfIntegers = array.slice(2, array.length)[0];
stringOfIntegers = stringOfIntegers.split(",");
var result = stringOfIntegers.reduce( function (a, b) {
  return (Number(a)+Number(b));
});
console.log(result);