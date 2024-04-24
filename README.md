A simple example of calling a dynamic library compiled from Rust in GNUCobol. Most of this is from <https://gnucobol.sourceforge.io/faq/index.html#can-gnucobol-interface-with-rust>, but with an added example that takes an argument.

## Requirements
- (GNUCobol)[https://gnucobol.sourceforge.io/]
- (Rust)[https://www.rust-lang.org/tools/install]

## Building
Build and run
```
make -B
```

Build then run
```
make
./caller
```