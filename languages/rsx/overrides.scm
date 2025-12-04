; Syntax scope overrides for RSX in Zed
; Reference: https://zed.dev/docs/extensions/languages

; String scopes - disable certain behaviors inside strings
(string_literal) @string

; Comment scopes
(comment) @comment
(template_comment) @comment

; Rust section - treat as rust scope
(rust_section
  (rust_content) @rust)

; Script section - treat as typescript scope
(script_section
  (script_content) @typescript)

; Style section - treat as scss scope
(style_section
  (style_content) @scss)
