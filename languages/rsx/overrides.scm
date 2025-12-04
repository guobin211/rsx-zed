; Syntax scope overrides for RSX in Zed

; String scopes - disable certain behaviors inside strings
(string_literal) @string

; Comment scopes
(template_comment) @comment

; Content sections for language injection
(rust_content) @content
(script_content) @content
(style_content) @content

; Quoted attribute values
(quoted_attribute_value) @string

; Template text
(template_text) @text
