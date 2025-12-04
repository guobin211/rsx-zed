; RSX Syntax Highlighting for Zed
; Based on tree-sitter-rsx grammar

; ============================================
; Comments (highest priority)
; ============================================
(template_comment) @comment

; ============================================
; Keywords - Control flow directives
; ============================================
; If directive keywords
"{{@if" @keyword.control.conditional
"{{:else if" @keyword.control.conditional
"{{:elseif" @keyword.control.conditional
"{{:else}}" @keyword.control.conditional
"{{/if}}" @keyword.control.conditional

; Each directive keywords
"{{@each" @keyword.control.repeat
"{{/each}}" @keyword.control.repeat

; Raw HTML directive
"{{@html" @keyword.directive

; Other keywords
"as" @keyword

; ============================================
; Section delimiters
; ============================================
"---" @punctuation.special

; ============================================
; Section tags
; ============================================
"<script>" @tag.delimiter
"</script>" @tag.delimiter
"<style>" @tag.delimiter
"</style>" @tag.delimiter
"<template>" @tag.delimiter
"</template>" @tag.delimiter

; ============================================
; HTML Elements
; ============================================
(html_element
  tag_name: (tag_name) @tag)

; ============================================
; Client Components (PascalCase)
; ============================================
(client_component
  component_name: (component_name) @type)

; ============================================
; HTML Attributes
; ============================================
(html_attribute
  name: (attribute_name) @attribute)

; Special client attribute
(html_attribute
  name: (attribute_name) @attribute.special
  (#eq? @attribute.special "client"))

; ============================================
; Literals
; ============================================
(number_literal) @number
(string_literal) @string
(quoted_attribute_value) @string
(boolean_literal) @constant.builtin

; ============================================
; Function calls
; ============================================
(function_call
  function: (identifier) @function)

(function_call
  function: (property_access
    property: (identifier) @function.method))

; ============================================
; Property access
; ============================================
(property_access
  property: (identifier) @property)

(property_access
  object: (identifier) @variable)

; ============================================
; Directive variables
; ============================================
; If directive condition
(if_directive
  condition: (identifier) @variable)

(else_if_clause
  condition: (identifier) @variable)

; Each directive variables
(each_directive
  iterable: (identifier) @variable)

(each_directive
  item: (identifier) @variable.parameter)

(each_directive
  index: (identifier) @variable.parameter)

; Raw HTML content
(raw_html_directive
  content: (identifier) @variable)

; ============================================
; Operators
; ============================================
(binary_expression
  operator: _ @operator)

(unary_expression
  operator: _ @operator)

(conditional_expression "?" @operator)
(conditional_expression ":" @operator)

"=" @operator

; ============================================
; Punctuation
; ============================================
; Template interpolation
"{{" @punctuation.special
"}}" @punctuation.special

; Delimiters
"." @punctuation.delimiter
"," @punctuation.delimiter

; Brackets
"(" @punctuation.bracket
")" @punctuation.bracket

; HTML tag delimiters
"<" @tag.delimiter
">" @tag.delimiter
"/>" @tag.delimiter
"</" @tag.delimiter

; ============================================
; Template text
; ============================================
(template_text) @text

; ============================================
; Identifiers (fallback - lowest priority)
; ============================================
(identifier) @variable
