// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#06---sum-all-the-numbers-in-a-list-code

export const iterate: (list: number[]) => number = (list) => {
  let sum = 0;
  for (const n of list) {
    sum += n;
  }
  return sum;
};

export const recursive: (list: number[]) => number = (list) => {
  if (list.length == 0) {
    return 0;
  }
  return list[0] + recursive(list.slice(1));
};

export const std: (list: number[]) => number = (list) => {
  return list.reduce((sum, x) => sum + x, 0);
};
