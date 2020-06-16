pub fn iterate(numbers: &[i32], sum: i32) -> (i32, i32) {
    for (i, first) in numbers.iter().enumerate() {
        for (j, second) in numbers.iter().enumerate() {
            if j <= i {
                continue;
            }
            if first + second == sum {
                return (i as i32, j as i32);
            }
        }
    }
    (-1, -1)
}
