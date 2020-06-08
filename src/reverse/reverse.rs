pub fn iterate(word: &'static str) -> String {
    let mut res = String::from("");
    for w in word.chars(){
        res.insert(0, w)
    }
    res
}

pub fn std(word: &'static str) -> String {
    word.chars().rev().collect()
}