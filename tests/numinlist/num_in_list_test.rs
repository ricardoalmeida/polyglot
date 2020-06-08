use polyglot::numinlist::num_in_list::iterate;
use polyglot::numinlist::num_in_list::std;

#[test]
fn test_iterate_find_num_in_list() {
    for (list, num, want) in TESTS {
        assert_eq!(iterate(list, *num), *want);
    }
}

#[test]
fn test_std_find_num_in_list() {
    for (list, num, want) in TESTS {
        assert_eq!(std(list, *num), *want);
    }
}

const TESTS: &[(&[i32], i32, bool)] = &[
    (&[1, 2, 3, 4, 5], 1, true),
    (&[1, 2, 3, 4, 5], 3, true),
    (&[1, 2, 3, 4, 5], 5, true),
    (&[1, 2, 3, 4, 5], 0, false),
    (&[1, 2, 3, 4, -1], -1, true),
    (&[-1, -1, -1, -1, -1, -1, -1, -1], -1, true),
    (&[-1, -1, -1, -1, -1, -1, -1, -1], 2, false),
];
