; Text objects for RSX

; Function/block objects
(rust_section) @function.outer
(rust_content) @function.inner

(script_section) @function.outer
(script_content) @function.inner

(style_section) @function.outer
(style_content) @function.inner

(template_section) @function.outer
(template_body) @function.inner

; HTML element objects
(html_element) @class.outer
(template_body) @class.inner

; Control flow objects
(if_directive) @conditional.outer
(if_directive
  consequence: (template_body) @conditional.inner)

(each_directive) @loop.outer
(each_directive
  body: (template_body) @loop.inner)

(each_directive_alt) @loop.outer
(each_directive_alt
  body: (template_body) @loop.inner)

; Comment objects
(comment) @comment.outer
(template_comment) @comment.outer

; Parameter objects
(html_attribute) @parameter.outer
(argument_list) @parameter.outer

; Interpolation objects
(template_interpolation) @parameter.outer
