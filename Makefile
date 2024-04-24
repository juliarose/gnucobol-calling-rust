# GnuCOBOL, Rust and Cargo
.RECIPEPREFIX = >
BIN=./bin/

caller: caller.cbl target/release/libcats.so
> mkdir -p $(BIN)
> LD_RUN_PATH=target/release cobc -xj -o bin/caller -lcats -Ltarget/release caller.cbl

target/release/libcats.so: cats.rs
> cargo build --lib --release