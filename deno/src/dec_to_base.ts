// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#09---decimal-to-another-base-code

const CHARSET = "0123456789ABCDEF";

export const iterate: (dec: number, base: number) => string = (dec, base) => {
  let res: string = "";
  while (dec != 0) {
    res = CHARSET[(dec % base)] + res;
    dec = Math.floor(dec / base);
  }
  return res;
};

export const recursive: (dec: number, base: number) => string = (dec, base) => {
  let res: string = "";
  if (dec != 0) {
    res = recursive(Math.floor(dec / base), base) + CHARSET[(dec % base)];
  }
  return res;
};

export const std: (dec: number, base: number) => string = (dec, base) => {
  return dec.toString(base).toUpperCase();
};
