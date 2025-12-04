use std::{collections::HashSet, env, path::PathBuf};
use zed_extension_api::{self as zed, Result};

struct RsxExtension {
    installed: HashSet<String>,
}

const PACKAGE_NAME: &str = "rsx-language-server";
const TS_PLUGIN_PACKAGE_NAME: &str = "typescript-rsx-plugin";

fn get_package_path(package_name: &str) -> Result<PathBuf> {
    let path = env::current_dir()
        .map_err(|e| e.to_string())?
        .join("node_modules")
        .join(package_name);
    Ok(path)
}

impl RsxExtension {
    fn install_package_if_needed(&mut self, id: &zed::LanguageServerId, package_name: &str) -> Result<()> {
        Ok(())
    }
}

impl zed::Extension for RsxExtension {
    fn new() -> Self {
        Self {
            installed: HashSet::new(),
        }
    }
}

zed::register_extension!(RsxExtension);
