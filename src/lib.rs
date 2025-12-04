use zed_extension_api as zed;

struct RsxExtension;

impl zed::Extension for RsxExtension {
    fn new() -> Self {
        Self
    }
}

zed::register_extension!(RsxExtension);
