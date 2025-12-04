; Code folding rules for RSX in Zed

; Fold sections
(rust_section) @fold
(script_section) @fold
(template_section) @fold
(style_section) @fold

; Fold HTML elements with children
(html_element) @fold

; Fold client components
(client_component) @fold

; Fold control flow blocks
(if_directive) @fold
(each_directive) @fold

; Fold comments
(template_comment) @fold
