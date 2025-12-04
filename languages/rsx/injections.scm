; Language injections for RSX in Zed
; Reference: https://zed.dev/docs/extensions/languages

; Rust code in frontmatter section
((rust_section
  (rust_content) @content)
 (#set! injection.language "rust")
 (#set! injection.combined))

; TypeScript in script section
((script_section
  (script_content) @content)
 (#set! injection.language "typescript")
 (#set! injection.combined))

; SCSS/CSS in style section
((style_section
  (style_content) @content)
 (#set! injection.language "scss")
 (#set! injection.combined))
