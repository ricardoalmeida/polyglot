import { iterate as baseToDec } from "./base_to_dec.ts";
import { iterate as decToBase } from "./dec_to_base.ts";
export const baseToBase: (
  value: string,
  base: number,
  newBase: number,
) => string = (value, base, newBase) => {
  return decToBase(baseToDec(value, base), newBase);
};
