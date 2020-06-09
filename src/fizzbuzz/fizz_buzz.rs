pub fn iterate(num: i32) -> String {
  let mut res = "".to_string();

  for n in 1..=num {
    if n % 15 == 0 {
      res.push_str("Fizz Buzz");
    } else if n % 3 == 0 {
      res.push_str("Fizz");
    } else if n % 5 == 0 {
      res.push_str("Buzz");
    } else {
      res = format!("{}{}", res, n)
    }
    if n != num {
      res.push_str(", ");
    }
  }
  res.push_str("\n");
  res
}
