var array = process.argv;
var stringOfIntegers = process.argv[2];
stringOfIntegers = stringOfIntegers.split(",");
var result = stringOfIntegers.reduce( function (a, b) {
  return (Number(a)+Number(b));
});
console.log(result);