use zed_extension_api::{self as zed, Result};

struct RsxExtension;

impl zed::Extension for RsxExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        let path = worktree
            .which("rsx-language-server")
            .ok_or_else(|| "rsx-language-server not found in PATH".to_string())?;

        Ok(zed::Command {
            command: path,
            args: vec!["--stdio".to_string()],
            env: Default::default(),
        })
    }
}

zed::register_extension!(RsxExtension);
