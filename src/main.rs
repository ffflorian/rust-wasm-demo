use std::os::raw::c_char;
use std::ffi::CString;

#[no_mangle]
pub fn hello() -> *mut c_char {
  CString::new("Hello from Rust 🙂")
    .unwrap()
    .into_raw()
}

fn main() {
  // Nothing to see here.
}
