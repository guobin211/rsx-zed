; Text objects for RSX in Zed

; HTML elements as text objects
(html_element) @class.around
(html_element) @class.inside

; Sections as text objects
(rust_section) @function.around
(rust_section (rust_content) @function.inside)

(template_section) @function.around
(template_section) @function.inside

(script_section) @function.around
(script_section (script_content) @function.inside)

(style_section) @function.around
(style_section (style_content) @function.inside)

; Control flow blocks
(if_directive) @conditional.around
(if_directive) @conditional.inside

(each_directive) @loop.around
(each_directive) @loop.inside

(each_directive_alt) @loop.around
(each_directive_alt) @loop.inside

; Comments
(comment) @comment.around
(comment) @comment.inside
(template_comment) @comment.around
(template_comment) @comment.inside

; Function calls
(function_call) @call.around
(function_call) @call.inside

; Attributes
(html_attribute) @parameter.around
(html_attribute) @parameter.inside
