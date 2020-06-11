// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#08---fizzbuzz-code

export const iterate: (num: number) => string = (num) => {
  let res = "";
  for (let n = 1; n <= num; n++) {
    if (n % 15 == 0) {
      res += "Fizz Buzz";
    } else if (n % 3 == 0) {
      res += "Fizz";
    } else if (n % 5 == 0) {
      res += "Buzz";
    } else {
      res += n;
    }
    if (n != num) {
      res += ", ";
    }
  }
  return res + "\n";
};
