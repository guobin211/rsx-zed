use zed_extension_api::{self as zed, LanguageServerId, Result};

struct RsxExtension {
    cached_binary_path: Option<String>,
}

impl zed::Extension for RsxExtension {
    fn new() -> Self {
        Self {
            cached_binary_path: None,
        }
    }

    fn language_server_command(
        &mut self,
        language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        // Check if rsx-language-server is available
        let binary_path = self.language_server_binary_path(language_server_id, worktree)?;

        Ok(zed::Command {
            command: binary_path,
            args: vec!["--stdio".to_string()],
            env: Default::default(),
        })
    }
}

impl RsxExtension {
    fn language_server_binary_path(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<String> {
        // Return cached path if available
        if let Some(path) = &self.cached_binary_path {
            return Ok(path.clone());
        }

        // Try to find rsx-language-server in PATH
        if let Some(path) = worktree.which("rsx-language-server") {
            self.cached_binary_path = Some(path.clone());
            return Ok(path);
        }

        // Try global npm installation via npx
        if let Some(npx_path) = worktree.which("npx") {
            // Use npx to run rsx-language-server
            self.cached_binary_path = Some(npx_path.clone());
            return Ok(npx_path);
        }

        // Fallback: assume it's in PATH
        Ok("rsx-language-server".to_string())
    }
}

zed::register_extension!(RsxExtension);
