; RSX Syntax Highlighting for Zed
; Based on tree-sitter-rsx grammar

; ============================================
; Comments (highest priority)
; ============================================
(comment) @comment
(template_comment) @comment

; ============================================
; Keywords - Control flow directives
; ============================================
"{{#if" @keyword
"{{:else" @keyword
"{{:else}}" @keyword
"{{/if}}" @keyword
"{{#each" @keyword
"{{@each" @keyword
"{{/each}}" @keyword
"{{@html" @keyword
"as" @keyword
"if" @keyword

; ============================================
; Section delimiters & Tags
; ============================================
"---" @punctuation.special

"<script>" @tag
"</script>" @tag
"<style>" @tag
"</style>" @tag
"<template>" @tag
"</template>" @tag

(tag_name) @tag

; ============================================
; HTML Attributes
; ============================================
(attribute_name) @attribute

; ============================================
; Literals (before expressions)
; ============================================
(number_literal) @number
(string_literal) @string
(quoted_attribute_value) @string
(boolean_literal) @boolean

; ============================================
; Function calls
; ============================================
(function_call
  function: (identifier) @function.call)

(function_call
  function: (property_access
    property: (identifier) @function.method))

; ============================================
; Property access
; ============================================
(property_access
  property: (identifier) @property)

; ============================================
; Function parameters
; ============================================
(each_directive
  item: (identifier) @variable.parameter)

(each_directive
  index: (identifier) @variable.parameter)

(each_directive_alt
  item: (identifier) @variable.parameter)

(each_directive_alt
  index: (identifier) @variable.parameter)

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
"{{" @punctuation.special
"}}" @punctuation.special
"." @punctuation.delimiter
"," @punctuation.delimiter
"(" @punctuation.bracket
")" @punctuation.bracket
"<" @punctuation.bracket
">" @punctuation.bracket
"/>" @punctuation.bracket
"</" @punctuation.bracket

; ============================================
; Identifiers (fallback - lowest priority)
; ============================================
(identifier) @variable
