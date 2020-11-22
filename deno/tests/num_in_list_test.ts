import { assertEquals } from "https://deno.land/std@0.78.0/testing/asserts.ts";
import { iterate, std } from "../src//num_in_list.ts";

Deno.test("iterate finds number in list", () => {
  TESTS.forEach((tc) => {
    assertEquals(iterate(tc.list, tc.num), tc.want);
  });
});

Deno.test("std finds number in list", () => {
  TESTS.forEach((tc) => {
    assertEquals(std(tc.list, tc.num), tc.want);
  });
});

const TESTS: { list: number[]; num: number; want: boolean }[] = [
  { list: [1, 2, 3, 4, 5], num: 1, want: true },
  { list: [1, 2, 3, 4, 5], num: 3, want: true },
  { list: [1, 2, 3, 4, 5], num: 5, want: true },
  { list: [1, 2, 3, 4, 5], num: 0, want: false },
  { list: [1, 2, 3, 4, -1], num: -1, want: true },
  { list: [-1, -1, -1, -1, -1, -1, -1, -1], num: -1, want: true },
  { list: [-1, -1, -1, -1, -1, -1, -1, -1], num: 1, want: false },
];
