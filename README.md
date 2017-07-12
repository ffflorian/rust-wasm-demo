# rust-wasm-demo

Immediately see the result on the [GitHub page](https://ffflorian.github.io/rust-wasm-demo/site/).

## Building Prerequisites
1. Install [Node.js](https://nodejs.org/)
2. Install [Emscripten](http://webassembly.org/getting-started/developers-guide/).
3. Install [Rust](https://rustup.rs/).
4. Install the WASM target for Rust:

    `rustup target add wasm32-unknown-emscripten`

## Building
* On Unix-based systems, run `npm run build`.
* On other systems, please refer to the [Hackernoon's Guide](https://hackernoon.com/compiling-rust-to-webassembly-guide-411066a69fde).

## See the results
* Run `npm run start`.
