; RSX Syntax Highlighting for Zed

; ============================================
; Comments
; ============================================
(comment) @comment
(template_comment) @comment

; ============================================
; Section delimiters
; ============================================
(rust_section "---" @punctuation.special)
(script_section "<script>" @tag)
(script_section "</script>" @tag)
(style_section "<style>" @tag)
(style_section "</style>" @tag)
(template_section "<template>" @tag)
(template_section "</template>" @tag)

; ============================================
; HTML Elements
; ============================================
; Tag names - lowercase for HTML tags
(html_element
  tag_name: (tag_name) @tag)

; Tag delimiters
(html_element "<" @tag.delimiter)
(html_element ">" @tag.delimiter)
(html_element "/>" @tag.delimiter)
(html_element "</" @tag.delimiter)

; ============================================
; HTML Attributes
; ============================================
(html_attribute
  name: (attribute_name) @attribute)

; Quoted attribute values
(quoted_attribute_value) @string

; ============================================
; Template Interpolation
; ============================================
"{{" @punctuation.bracket
"}}" @punctuation.bracket

(template_interpolation
  expression: (identifier) @variable)

(template_interpolation
  expression: (property_access
    object: (identifier) @variable
    property: (identifier) @property))

; ============================================
; Control Flow Directives
; ============================================
"{{#if" @keyword.control
"{{:else" @keyword.control
"{{:else}}" @keyword.control
"{{/if}}" @keyword.control
"{{#each" @keyword.control
"{{@each" @keyword.control
"{{/each}}" @keyword.control
"{{@html" @keyword.directive

"as" @keyword
"if" @keyword.control

; ============================================
; Operators
; ============================================
"=" @operator
"." @punctuation.delimiter
"," @punctuation.delimiter

(binary_expression
  operator: _ @operator)

(unary_expression
  operator: _ @operator)

(conditional_expression "?" @operator)
(conditional_expression ":" @operator)

; ============================================
; Property Access
; ============================================
(property_access
  object: (identifier) @variable)

(property_access
  property: (identifier) @property)

; ============================================
; Function Calls
; ============================================
(function_call
  function: (identifier) @function)

(function_call
  function: (property_access
    property: (identifier) @function.method))

"(" @punctuation.bracket
")" @punctuation.bracket

; ============================================
; Each Directive Variables
; ============================================
(each_directive
  iterable: (identifier) @variable)

(each_directive
  item: (identifier) @variable.parameter)

(each_directive
  index: (identifier) @variable.parameter)

(each_directive_alt
  iterable: (identifier) @variable)

(each_directive_alt
  item: (identifier) @variable.parameter)

(each_directive_alt
  index: (identifier) @variable.parameter)

; ============================================
; If Directive Conditions
; ============================================
(if_directive
  condition: (identifier) @variable)

(if_directive
  condition: (property_access
    object: (identifier) @variable))

(else_if_clause
  condition: (identifier) @variable)

; ============================================
; Raw HTML Directive
; ============================================
(raw_html_directive
  content: (identifier) @variable)

; ============================================
; Literals
; ============================================
(number_literal) @number
(string_literal) @string
(boolean_literal) @constant.builtin

; ============================================
; Fallback - Identifiers
; ============================================
(identifier) @variable
