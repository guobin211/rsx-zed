; Indentation rules for RSX in Zed

; Section blocks - indent children
(rust_section) @indent
(template_section) @indent
(script_section) @indent
(style_section) @indent

; HTML elements - indent children
(html_element) @indent

; Client components - indent children
(client_component) @indent

; Control flow directives - indent children
(if_directive) @indent
(each_directive) @indent

; Dedent on closing tags/directives
"---" @outdent
"</script>" @outdent
"</style>" @outdent
"</template>" @outdent
"{{/if}}" @outdent
"{{/each}}" @outdent
"{{:else}}" @outdent
"{{:else if" @outdent
"{{:elseif" @outdent
"/>" @outdent
(html_element "</" @outdent)
(client_component "</" @outdent)
