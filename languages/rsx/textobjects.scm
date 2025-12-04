; Text objects for RSX in Zed

; HTML elements as text objects
(html_element) @class.around

; Sections as text objects
(rust_section) @function.around
(template_section) @function.around
(script_section) @function.around
(style_section) @function.around

; Control flow blocks
(if_directive) @conditional.around
(each_directive) @loop.around
(each_directive_alt) @loop.around

; Comments
(comment) @comment.around
(template_comment) @comment.around

; Function calls
(function_call) @call.around

; Attributes
(html_attribute) @parameter.around
