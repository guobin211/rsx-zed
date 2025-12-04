; Bracket pairs for RSX

; Section tags
("<script>" @open "</script>" @close)
("<style>" @open "</style>" @close)
("<template>" @open "</template>" @close)

; Rust section delimiters
("---" @open "---" @close)

; Template interpolation
("{{" @open "}}" @close)

; HTML tag delimiters
("<" @open ">" @close)
("</" @open ">" @close)

; Self-closing tag
("<" @open "/>" @close)

; Parentheses
("(" @open ")" @close)

; String quotes
("'" @open "'" @close)
("\"" @open "\"" @close)
