use zed_extension_api::{self as zed};

const LSP_PACKAGE_NAME: &str = "@rsx/language-server";
const LSP_SERVER_PATH: &str = "node_modules/@rsx/language-server/bin/server.js";
const TYPESCRIPT_PACKAGE_NAME: &str = "typescript";
const TYPESCRIPT_TSDK_PATH: &str = "node_modules/typescript/lib";

#[allow(dead_code)]
struct RsxExtension {
    did_find_server: bool,
    lsp_server_path: String,
    lsp_package_name: String,
    typescript_tsdk_path: String,
    typescript_package_name: String,
}

impl zed::Extension for RsxExtension {
    fn new() -> Self {
        Self {
            did_find_server: false,
            lsp_server_path: LSP_SERVER_PATH.to_owned(),
            lsp_package_name: LSP_PACKAGE_NAME.to_owned(),
            typescript_package_name: TYPESCRIPT_PACKAGE_NAME.to_owned(),
            typescript_tsdk_path: TYPESCRIPT_TSDK_PATH.to_owned(),
        }
    }
}

zed::register_extension!(RsxExtension);
