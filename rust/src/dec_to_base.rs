use radix_fmt::radix;

// https://github.com/joncalhoun/algorithmswithgo.com/tree/master/module01#09---decimal-to-another-base-code

const CHARSET: &str = "0123456789ABCDEF";

pub fn iterate(mut dec: u32, base: u32) -> String {
	let mut res = "".to_string();

	loop {
		let div = dec / base;
		if dec == 0 {
			break;
		}
		res = format!(
			"{}{}",
			CHARSET.chars().nth((dec % base) as usize).unwrap(),
			res
		);
		dec = div;
	}
	res
}

pub fn recursive(dec: u32, base: u32) -> String {
	let mut res = "".to_string();
	let div = dec / base;
	if div != 0 {
		res = recursive(div, base)
	}
	format!(
		"{}{}",
		res,
		CHARSET.chars().nth((dec % base) as usize).unwrap()
	)
}

pub fn std(num: u32, base: u32) -> String {
	format!("{}", radix(num, base as u8)).to_uppercase()
}
