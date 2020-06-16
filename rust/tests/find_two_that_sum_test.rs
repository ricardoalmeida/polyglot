use polyglot::find_two_that_sum::iterate;

#[test]
fn test_iterate() {
    for (numbers, sum, possible) in TESTS {
        let (i, j) = iterate(numbers, *sum);
        if *possible {
            assert_eq!(numbers[i as usize] + numbers[j as usize], *sum);
        } else {
            assert_eq!((i, j), (-1, -1))
        }
    }
}

const TESTS: &[(&[i32], i32, bool)] = &[
    (&[1, 2, 3, 4], 7, true),
    (&[0, -1, 1], 0, true),
    (&[0, 1, 1], 0, false),
    (&[10, 1, 12, 3, 7, 2, 2, 1], 4, true),
];
