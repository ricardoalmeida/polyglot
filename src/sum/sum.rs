pub fn iterate(list: &[i32]) -> i32 {
    let mut sum = 0;
    for n in list {
        sum += n;
    }
    sum
}

pub fn recursive(list: &[i32]) -> i32 {
    if list.len() == 0 {
        return 0;
    }
    list.first().unwrap() + recursive(&list[1..])
}

pub fn std(list: &[i32]) -> i32 {
    list.iter().sum()
}
