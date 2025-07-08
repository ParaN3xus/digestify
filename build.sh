#!/bin/bash

build_package() {
    echo "Building WASM..."
    cargo build --target wasm32-unknown-unknown --release
    cp target/wasm32-unknown-unknown/release/digestify.wasm typst-package/src/digestify.wasm

    cp ./README.md ./LICENSE ./typst-package/
}

test_action() {
    build_package

    cd typst-package
    echo "Running typship dev..."
    typship dev
    echo "Running tinymist test..."
    tinymist test examples/tests.typ
}

publish_action() {
    build_package
    echo "Running typship publish..."
    cd typst-package
    typship publish
}

case "$1" in
    "test")
        test_action
        ;;
    "publish")
        publish_action
        ;;
    *)
        echo "Usage: $0 {test|publish}"
        exit 1
        ;;
esac
