# RSX Language Support for Zed

RSX 语言的 Zed 编辑器扩展，提供语法高亮、括号匹配、缩进和语言注入支持。

## 功能

- ✅ **语法高亮**: 完整的 RSX 语法高亮支持
- ✅ **语言注入**: 
  - Rust 代码 (frontmatter `---` 区块)
  - TypeScript (`<script>` 区块)
  - SCSS (`<style>` 区块)
- ✅ **括号匹配**: 支持 `{{}}`, `{}`, `[]`, `()`, `<>` 等
- ✅ **自动缩进**: 智能缩进支持
- ✅ **代码折叠**: 支持区域折叠
- ✅ **代码大纲**: 文件结构导航

## 快速开始

### 1. 编译扩展

```bash
# 运行构建脚本
./build.sh
```

### 2. 安装到 Zed

**方法 A: 开发模式安装（推荐用于测试）**

1. 打开 Zed 编辑器
2. 按 `Cmd+Shift+P` 打开命令面板
3. 输入并选择 `zed: install dev extension`
4. 选择本项目目录: `/Users/guobin/tencent/rsx/extensions/rsx-zed`
5. 重启 Zed

**方法 B: 手动复制**

```bash
# 复制到 Zed 扩展目录
mkdir -p ~/.local/share/zed/extensions/rsx
cp -r * ~/.local/share/zed/extensions/rsx/
```

### 3. 验证安装

1. 创建一个 `.rsx` 文件
2. 打开文件，应该看到语法高亮
3. 查看 Zed 状态栏，应显示 "RSX"

## RSX 文件格式示例

```rsx
---
// Rust frontmatter
use rsx::prelude::*;

#[derive(Debug)]
pub struct User {
    name: String,
    age: u32,
}
---

<script>
// TypeScript
const users = [
    { name: "Alice", age: 30 },
    { name: "Bob", age: 25 },
];

function greet(name: string) {
    console.log(`Hello, ${name}!`);
}
</script>

<template>
<div class="container">
    <h1>{{title}}</h1>
    
    {{#if users.length > 0}}
        <ul class="user-list">
            {{@each users as user, index}}
                <li>
                    <span>{{user.name}}</span>
                    <span>Age: {{user.age}}</span>
                </li>
            {{/each}}
        </ul>
    {{:else}}
        <p>No users found</p>
    {{/if}}
</div>
</template>

<style>
.container {
    padding: 1rem;
    
    h1 {
        color: #333;
        font-size: 2rem;
    }
    
    .user-list {
        list-style: none;
        
        li {
            padding: 0.5rem;
            border-bottom: 1px solid #eee;
        }
    }
}
</style>
```

## 故障排查

如果语法高亮不工作，请查看 [TROUBLESHOOTING.md](./TROUBLESHOOTING.md)

常见问题:
1. 确保文件扩展名是 `.rsx`
2. 重新加载扩展: `Cmd+Shift+P` → `zed: reload extensions`
3. 检查 Zed 日志: `~/Library/Logs/Zed/Zed.log`
4. 重新编译: `./build.sh`

## 开发

### 项目结构

```
rsx-zed/
├── extension.toml              # 扩展配置
├── extension.wasm              # 编译的扩展
├── src/lib.rs                  # Rust 扩展入口
├── grammars/
│   ├── rsx.wasm                # Grammar WASM
│   └── rsx/
│       ├── grammar.js          # Tree-sitter 语法定义
│       ├── src/parser.c        # 生成的 parser
│       └── queries/            # 查询文件
│           ├── highlights.scm
│           └── injections.scm
└── languages/rsx/
    ├── config.toml             # 语言配置
    ├── highlights.scm          # 语法高亮规则
    ├── brackets.scm            # 括号匹配
    ├── indents.scm             # 缩进规则
    ├── injections.scm          # 语言注入
    ├── folds.scm               # 代码折叠
    ├── outline.scm             # 大纲导航
    ├── overrides.scm           # 作用域覆盖
    └── textobjects.scm         # 文本对象
```

### 修改语法

1. 编辑 `grammars/rsx/grammar.js`
2. 重新生成 parser: `cd grammars/rsx && tree-sitter generate`
3. 编译为 wasm: `tree-sitter build --wasm`
4. 测试: `tree-sitter test`

### 修改高亮

1. 编辑 `languages/rsx/highlights.scm`
2. 同步到 `grammars/rsx/queries/highlights.scm`
3. 重新编译扩展: `cargo build --target wasm32-wasip1 --release`
4. 在 Zed 中重新加载

## 依赖

- [Tree-sitter CLI](https://tree-sitter.github.io/tree-sitter/creating-parsers#installation) >= 0.25
- Rust toolchain with `wasm32-wasip1` target
- Zed editor

```bash
# 安装 tree-sitter CLI
npm install -g tree-sitter-cli

# 添加 wasm32-wasip1 target
rustup target add wasm32-wasip1
```

## 相关链接

- [Tree-sitter RSX Grammar](https://github.com/guobin211/tree-sitter-rsx)
- [Zed Extensions Documentation](https://zed.dev/docs/extensions)
- [Tree-sitter Documentation](https://tree-sitter.github.io/)

## License

MIT
