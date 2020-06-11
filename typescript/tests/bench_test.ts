import { runBenchmarks, bench } from "https://deno.land/std/testing/bench.ts";
import { iterate, std } from "../src/num_in_list.ts";

bench({
  name: "runs100ForIterate",
  runs: 100,
  func(b): void {
    b.start();
    iterate([1, 2, 3, 4, 5], 5);
    b.stop();
  },
});

bench({
  name: "runs100ForStd",
  runs: 100,
  func(b): void {
    b.start();
    std([1, 2, 3, 4, 5], 5);
    b.stop();
  },
});

runBenchmarks();
