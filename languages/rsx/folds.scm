; Code folding rules for RSX in Zed

; Fold HTML elements with children
(html_element) @fold

; Fold sections
(rust_section) @fold
(template_section) @fold
(script_section) @fold
(style_section) @fold

; Fold control flow blocks
(if_directive) @fold
(each_directive) @fold
(each_directive_alt) @fold

; Fold comments
(comment) @fold
(template_comment) @fold
