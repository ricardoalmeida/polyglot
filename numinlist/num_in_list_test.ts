import { assertEquals } from "https://deno.land/std/testing/asserts.ts";
import { iterate, std } from "./num_in_list.ts";

const tests: { list: number[]; num: number; want: boolean }[] = [
  { list: [1, 2, 3, 4, 5], num: 1, want: true },
  { list: [1, 2, 3, 4, 5], num: 3, want: true },
  { list: [1, 2, 3, 4, 5], num: 5, want: true },
  { list: [1, 2, 3, 4, 5], num: 0, want: false },
  { list: [1, 2, 3, 4, -1], num: -1, want: true },
  { list: [-1, -1, -1, -1, -1, -1, -1, -1], num: -1, want: true },
  { list: [-1, -1, -1, -1, -1, -1, -1, -1], num: 1, want: false },
];

Deno.test("finds number in list", () => {
  tests.forEach((tc) => {
    assertEquals(iterate(tc.list, tc.num), tc.want);
  });
});

Deno.test("finds number in list", () => {
  tests.forEach((tc) => {
    assertEquals(std(tc.list, tc.num), tc.want);
  });
});
