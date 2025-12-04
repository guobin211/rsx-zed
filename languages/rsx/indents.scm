; Indentation rules for RSX

; Section blocks indent their contents
(rust_section) @indent
(script_section) @indent
(style_section) @indent
(template_section) @indent

; HTML elements indent their contents
(html_element) @indent

; Control flow directives indent their contents
(if_directive) @indent
(each_directive) @indent
(each_directive_alt) @indent

; Else clauses create dedent then indent
(else_clause) @indent.dedent
(else_if_clause) @indent.dedent
