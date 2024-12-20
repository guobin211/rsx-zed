; 文件: queries/folds.scm

; 定义可折叠区域
(rust_block) @fold
(template_block) @fold
(style_block) @fold
(script_block) @fold

; 多行注释折叠
((comment) @fold
  (#match? @fold "/\\*[^*]*\\*+(?:[^/*][^*]*\\*+)*/"))
