#!/usr/bin/env sh

# Change to script's directory to ensure we're in the correct folder.
# http://stackoverflow.com/questions/3349105/how-to-set-current-working-directory-to-the-directory-of-the-script
cd "${0%/*}" || exit 1

BUILD_DIR="target/wasm32-unknown-emscripten/release/deps"
TARGET_DIR="site/"

cargo build --target=wasm32-unknown-emscripten --release --verbose
cp "${BUILD_DIR}/"*.wasm "${TARGET_DIR}/site.wasm"
cp "${BUILD_DIR}/$(ls "${BUILD_DIR}" | grep -P '(?<!asm).js$')" "${TARGET_DIR}/site.js"
