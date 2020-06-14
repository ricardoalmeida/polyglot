use crate::base_to_dec;
use crate::dec_to_base;

pub fn base_to_base(value: String, base: u32, new_base: u32) -> String {
    dec_to_base::iterate(base_to_dec::iterate(value, base), new_base)
}
