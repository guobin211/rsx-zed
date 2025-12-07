# RSX Language Support for Zed

RSX 语言的 Zed 编辑器扩展，提供语法高亮、括号匹配、缩进和语言注入支持。

## 功能

- ✅ **语法高亮**: 完整的 RSX 语法高亮支持
- ✅ **语言注入**:
    - Rust 代码 (`---` 区块)
    - TypeScript (`<script>` 区块)
    - HTML (`<template>` 区块)
    - SCSS (`<style>` 区块)
- ✅ **括号匹配**: 支持 `{{}}`, `{}`, `[]`, `()`, `<>` 等
- ✅ **自动缩进**: 智能缩进支持
- ✅ **代码折叠**: 支持区域折叠
- ✅ **代码大纲**: 文件结构导航
- ✅ **LSP 支持**: 集成 rsx-language-server

## 安装

### 开发模式安装

1. 打开 Zed 编辑器
2. 按 `Cmd+Shift+P` 打开命令面板
3. 输入 `zed: install dev extension`
4. 选择 `extensions/rsx-zed` 目录

### 从 Zed 扩展市场安装

_即将推出_

## RSX 语法示例

```rsx
---
use rsx::{Request, Response};

async fn get_server_side_props(req: Request) -> Response {
    Response::json!({ "message": "Hello" })
}
---

<script>
const { message } = defineProps<{ message: string }>();
</script>

<template>
    <div class="container">
        {{@if message}}
            <h1>{{ message }}</h1>
        {{:else}}
            <p>No message</p>
        {{/if}}

        {{@each items as item, index}}
            <span>{{ index }}: {{ item.name }}</span>
        {{/each}}
    </div>
</template>

<style>
.container {
    padding: 20px;
}
</style>
```

## 相关链接

- [Tree-sitter RSX Grammar](https://github.com/guobin211/tree-sitter-rsx)
- [RSX Language Server](../rsx-language-server)
- [Zed Extensions Documentation](https://zed.dev/docs/extensions)

## License

MIT
