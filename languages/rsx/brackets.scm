; Bracket matching for RSX in Zed

; Template interpolation brackets
("{{" @open "}}" @close)

; Control flow directive brackets
("{{@if" @open "{{/if}}" @close)
("{{@each" @open "{{/each}}" @close)

; Standard brackets
("{" @open "}" @close)
("[" @open "]" @close)
("(" @open ")" @close)

; HTML angle brackets
("<" @open ">" @close)
("<" @open "/>" @close)
("</" @open ">" @close)

; HTML comments
("<!--" @open "-->" @close)