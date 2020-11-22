import { assertEquals } from "https://deno.land/std@0.78.0/testing/asserts.ts";
import { iterate, std } from "../src/reverse.ts";

Deno.test("iterate should reverse a string", () => {
  TESTS.forEach((tc) => {
    assertEquals(iterate(tc.word), tc.want);
  });
});

Deno.test("std should reverse a string", () => {
  TESTS.forEach((tc) => {
    assertEquals(std(tc.word), tc.want);
  });
});

const TESTS = [
  { word: "cat", want: "tac" },
  { word: "alphabet", want: "tebahpla" },
  { word: "日本語", want: "語本日" },
];
