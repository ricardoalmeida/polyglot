use polyglot::base_to_base::base_to_base;

#[test]
fn test_base_to_base() {
    for (value, base, new_base, want) in TESTS {
        assert_eq!(base_to_base(value.to_string(), *base, *new_base), *want);
    }
}

const TESTS: &[(&'static str, u32, u32, &'static str)] = &[
    ("E", 16, 2, "1110"),
    (
        "11011110101011011011111011101111",
        2,
        3,
        "100122100210211112102",
    ),
    ("3735928559", 10, 4, "3132223123323233"),
    ("8831A383B", 12, 16, "DEADBEEF"),
];
