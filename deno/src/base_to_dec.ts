const CHARSET = "0123456789ABCDEF";

export const iterate: (value: string, base: number) => number = (
  value,
  base,
) => {
  let res: number = 0;
  let multiplier: number = 1;

  let index: number = -1;
  for (let i = value.length - 1; i >= 0; i--) {
    index = CHARSET.indexOf(value[i]);
    if (index === -1) throw new Error("something went wrong!");

    res += index * multiplier;
    multiplier *= base;
  }
  return res;
};

export const std: (value: string, base: number) => number = (value, base) => {
  return parseInt(value, base);
};
