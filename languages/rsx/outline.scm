; Outline/Symbol navigation for RSX in Zed
; Reference: https://zed.dev/docs/extensions/languages

; Sections as top-level items
(rust_section
  "---" @context
  "---" @name) @item

(template_section
  "<template>" @name) @item

(script_section
  "<script>" @name) @item

(style_section
  "<style>" @name) @item

; HTML elements with id attribute
(html_element
  tag_name: (tag_name) @name
  (html_attribute
    name: (attribute_name) @_attr
    value: (attribute_value) @context
    (#eq? @_attr "id"))) @item

; Control flow blocks
(if_directive
  "{{#if" @name) @item

(each_directive
  "{{#each" @name
  iterable: (identifier) @context) @item

(each_directive_alt
  "{{@each" @name
  iterable: (identifier) @context) @item
