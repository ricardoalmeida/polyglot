pub fn iterate(list: &[i32]) -> i32 {
    let mut sum = 0;
    for n in list {
        sum += n;
    }
    return sum;
}

pub fn std(list: &[i32]) -> i32 {
    list.iter().sum()
}
