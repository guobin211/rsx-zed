; Indentation rules for RSX in Zed

; HTML elements - indent children
(html_element) @indent

; Control flow directives
(if_directive) @indent
(each_directive) @indent
(each_directive_alt) @indent

; Section blocks
(rust_section) @indent
(template_section) @indent
(script_section) @indent
(style_section) @indent

; Dedent on closing tags
">" @end
"/>" @end
"{{/if}}" @end
"{{/each}}" @end
"{{:else}}" @end
"---" @end
"</script>" @end
"</style>" @end
"</template>" @end
