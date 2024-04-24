use std::ffi::c_char;

#[no_mangle]
pub extern fn get_cat_name() -> *const u8 {
    "Coffee\0".as_ptr()
}

#[no_mangle]
pub extern fn say_hello_cat(s: *const c_char) {
    println!("Hello, {}!", unsafe { std::ffi::CStr::from_ptr(s) }.to_string_lossy());
}