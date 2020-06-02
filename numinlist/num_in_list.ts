export const loop = (list: number[], num: number) => {
  for (let n of list) {
    if (n === num) {
      return true;
    }
  }
  return false;
};

export const std = (list: number[], num: number) => {
  return list.includes(num);
};
