; 文件: queries/indents.scm

; 块级缩进
[
  (rust_block)
  (template_block)
  (style_block)
  (script_block)
] @indent

; 结束标记减少缩进
[
  "---"
  "</template>"
  "</style>"
  "</script>"
] @outdent
