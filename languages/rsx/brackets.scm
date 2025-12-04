; Bracket matching for RSX in Zed
; Reference: https://zed.dev/docs/extensions/languages

; HTML element brackets
(html_element "<" @open ">" @close)
(html_element "</" @open ">" @close)

; Self-closing tag
(html_element "<" @open "/>" @close)

; Template interpolation brackets
("{{" @open "}}" @close)

; Standard brackets
("{" @open "}" @close)
("[" @open "]" @close)
("(" @open ")" @close)

; Section tags
("<template>" @open "</template>" @close)
("<script>" @open "</script>" @close)
("<style>" @open "</style>" @close)
