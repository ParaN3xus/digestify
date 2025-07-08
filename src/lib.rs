use digest::Digest;
use md4::Md4;
use md5 as md5_crate;
use sha1::Sha1;
use sha2::{Sha224, Sha256, Sha384, Sha512};
use typst_wasm_protocol::wasm_export;

#[wasm_export]
fn sha1(input: &[u8]) -> Result<Vec<u8>, String> {
    let mut hasher = Sha1::new();
    hasher.update(input);
    let hash_result = hasher.finalize();

    Ok(hash_result.to_vec())
}

#[wasm_export]
fn sha224(input: &[u8]) -> Result<Vec<u8>, String> {
    let hash_result = Sha224::digest(input);

    Ok(hash_result.to_vec())
}

#[wasm_export]
fn sha256(input: &[u8]) -> Result<Vec<u8>, String> {
    let hash_result = Sha256::digest(input);

    Ok(hash_result.to_vec())
}

#[wasm_export]
fn sha384(input: &[u8]) -> Result<Vec<u8>, String> {
    let hash_result = Sha384::digest(input);

    Ok(hash_result.to_vec())
}

#[wasm_export]
fn sha512(input: &[u8]) -> Result<Vec<u8>, String> {
    let hash_result = Sha512::digest(input);

    Ok(hash_result.to_vec())
}

#[wasm_export]
fn md4(input: &[u8]) -> Result<Vec<u8>, String> {
    let mut hasher = Md4::new();
    hasher.update(input);
    let hash_result = hasher.finalize();

    Ok(hash_result.to_vec())
}

#[wasm_export]
fn md5(input: &[u8]) -> Result<Vec<u8>, String> {
    let hash_result = md5_crate::compute(input);

    Ok(hash_result.to_vec())
}
