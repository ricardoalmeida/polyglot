import { assertEquals } from "https://deno.land/std/testing/asserts.ts";
import { baseToBase } from "../src/base_to_base.ts";

Deno.test("converts any base to another base", () => {
  for (const tc of TESTS) {
    assertEquals(baseToBase(tc.value, tc.base, tc.newBase), tc.want);
  }
});

const TESTS = [
  { value: "E", base: 16, newBase: 2, want: "1110" },
  {
    value: "11011110101011011011111011101111",
    base: 2,
    newBase: 3,
    want: "100122100210211112102",
  },
  { value: "3735928559", base: 10, newBase: 4, want: "3132223123323233" },
  { value: "8831A383B", base: 12, newBase: 16, want: "DEADBEEF" },
];
