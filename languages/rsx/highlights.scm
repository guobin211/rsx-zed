; 文件: queries/highlights.scm

; Rust 块
(rust_block
  "---" @punctuation.delimiter)

(rust_content) @rust

; HTML 模板块
(template_block
  "<template>" @tag
  "</template>" @tag)

(html_content) @html

; CSS 样式块
(style_block
  "<style>" @tag
  "</style>" @tag)

(css_content) @css

; JavaScript 脚本块
(script_block
  "<script>" @tag
  "</script>" @tag)

(js_content) @javascript

; 注释
(comment) @comment

; 块分隔符
"---" @punctuation.delimiter
"<template>" @tag.delimiter
"</template>" @tag.delimiter
"<style>" @tag.delimiter
"</style>" @tag.delimiter
"<script>" @tag.delimiter
"</script>" @tag.delimiter
