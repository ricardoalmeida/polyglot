// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#05---determine-if-a-number-is-in-a-list-code

export const iterate: (list: number[], num: number) => boolean = (
  list,
  num,
) => {
  for (let n of list) {
    if (n === num) {
      return true;
    }
  }
  return false;
};

export const std: (list: number[], num: number) => boolean = (list, num) => {
  return list.includes(num);
};
