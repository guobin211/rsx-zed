; Bracket matching for RSX in Zed

; Template interpolation brackets
("{{" @open "}}" @close)

; Standard brackets
("{" @open "}" @close)
("[" @open "]" @close)
("(" @open ")" @close)

; HTML angle brackets (self-closing and normal)
("<" @open "/>" @close)
("<" @open ">" @close)
("</" @open ">" @close)
