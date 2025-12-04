; Outline/Symbol navigation for RSX in Zed

; Sections as top-level items
(rust_section) @item

(script_section) @item

(template_section) @item

(style_section) @item

; HTML elements with tag name
(html_element
  tag_name: (tag_name) @name) @item

; Client components with component name
(client_component
  component_name: (component_name) @name) @item

; Control flow blocks
(if_directive) @item

(each_directive) @item
