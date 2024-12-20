; 文件: queries/injections.scm

; Rust 代码注入
((rust_block) @injection.content
  (#set! injection.language "rust"))

; HTML 代码注入
((template_block) @injection.content
  (#set! injection.language "html"))

; CSS 代码注入
((style_block) @injection.content
  (#set! injection.language "css"))

; JavaScript 代码注入
((script_block) @injection.content
  (#set! injection.language "javascript"))
