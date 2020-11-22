// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#07---reverse-a-string-code

export const iterate: (word: string) => string = (word) => {
  let res = "";
  for (const w of word) {
    res = w + res;
  }
  return res;
};

export const std: (word: string) => string = (word) => {
  return [...word].reverse().join("");
};
