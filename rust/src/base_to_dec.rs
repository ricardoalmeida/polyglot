pub fn iterate(value: String, base: u32) -> u32 {
    const CHARSET: &str = "0123456789ABCDEF";
    let mut res = 0 as u32;
    let mut multiplier = 1 as u64;
    for c in value.chars().rev() {
        let index = match CHARSET.find(c) {
            Some(x) => x as u32,
            None => panic!("something went wrong!"),
        };
        res += index * multiplier as u32;
        multiplier *= base as u64;
    }
    res
}

pub fn std(value: String, base: u32) -> u32 {
    match u64::from_str_radix(value.as_str(), base) {
        Ok(v) => v as u32,
        Err(_) => panic!("something went wrong!"),
    }
}
