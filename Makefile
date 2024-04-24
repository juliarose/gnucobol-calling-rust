# GnuCOBOL, Rust and Cargo
.RECIPEPREFIX = >

caller: caller.cbl target/release/libcats.so
> LD_RUN_PATH=target/release cobc -xj caller.cbl -lcats -Ltarget/release

target/release/libcats.so: cats.rs
> cargo build --lib --release