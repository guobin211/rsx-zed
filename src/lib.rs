use zed_extension_api::{self as zed};

struct RsxExtension;

impl zed::Extension for RsxExtension {
    fn new() -> Self {
        Self
    }
}

zed::register_extension!(RsxExtension);
