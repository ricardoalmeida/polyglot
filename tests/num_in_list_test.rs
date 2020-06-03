#[cfg(test)]
mod tests {
    use polyglot::numinlist::num_in_list::iterate;
    use polyglot::numinlist::num_in_list::std;
    #[test]
    fn iterate_finds_number_in_list() {
        assert_eq!(iterate(&[1, 2], 1), true);
    }

    #[test]
    fn std_finds_number_in_list() {
        assert_eq!(std(&[1, 2], 1), true);
    }
}
