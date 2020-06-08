use polyglot::reverse::reverse::iterate;
use polyglot::reverse::reverse::std;

#[test]
fn test_iterate_reverse_string() {
    for (word, want) in TESTS {
        assert_eq!(iterate(word), *want);
    }
}

#[test]
fn test_std_reverse_string() {
    for (word, want) in TESTS {
        assert_eq!(std(word), *want);
    }
}

const TESTS: &[(&'static str, &'static str)] = &[
    ("cat", "tac"),
    ("alphabet", "tebahpla"),
    ("日本語", "語本日"),
];
