// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#05---determine-if-a-number-is-in-a-list-code

pub fn iterate(list: &[i32], num: i32) -> bool {
    for n in list {
        if *n == num {
            return true;
        }
    }
    return false;
}

pub fn std(list: &[i32], num: i32) -> bool {
    return list.contains(&num);
}
