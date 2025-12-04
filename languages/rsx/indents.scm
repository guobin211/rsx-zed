; Indentation rules for RSX in Zed
; Reference: https://zed.dev/docs/extensions/languages

; HTML elements - indent after opening tag
(html_element
  tag_name: (tag_name)) @indent

; Closing tags end indent
(html_element
  "</") @end

; Control flow directives
(if_directive) @indent
(each_directive) @indent
(each_directive_alt) @indent

; Section blocks
(rust_section) @indent
(template_section) @indent
(script_section) @indent
(style_section) @indent

; Brackets
("{" @indent)
("}" @end)
("[" @indent)
("]" @end)
("(" @indent)
(")" @end)
