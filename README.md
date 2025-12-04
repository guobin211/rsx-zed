# RSX Language Support for Zed

RSX 语言的 Zed 编辑器扩展，提供语法高亮支持。

## 功能

- **语法高亮** - 完整的 RSX 文件语法高亮
- **语言注入** - 嵌入式 Rust、TypeScript、SCSS 高亮
- **代码折叠** - 折叠 sections、HTML 元素、控制流块
- **括号匹配** - 自动闭合括号和模板分隔符
- **大纲视图** - 导航 sections 和指令
- **文本对象** - Vim 风格的文本对象

## RSX 语言

RSX 是一个全栈 Web 框架，结合了：

- **Rust** (`---` section) - 服务端逻辑
- **TypeScript** (`<script>` section) - 客户端逻辑
- **Handlebars** (`<template>` section) - 模板渲染
- **SCSS** (`<style>` section) - 样式

## 安装

### 开发模式安装（推荐）

1. 打开 Zed 编辑器
2. 打开命令面板 (`Cmd+Shift+P`)
3. 输入 `zed: install dev extension`
4. 选择 `rsx-zed` 目录

### 从 Zed 扩展商店安装

1. 打开 Zed
2. 进入 `Extensions` 面板 (`Cmd+Shift+X`)
3. 搜索 "RSX"
4. 点击 Install

## 开发

```bash
# 编译扩展
cd extensions/rsx-zed
cargo build --release --target wasm32-wasip1

# 复制 wasm 文件
cp target/wasm32-wasip1/release/rsx_zed.wasm extension.wasm
```

## 目录结构

```
rsx-zed/
├── extension.toml          # 扩展配置
├── extension.wasm          # 编译后的 WASM
├── Cargo.toml              # Rust 配置
├── src/lib.rs              # 扩展入口
├── grammars/
│   └── rsx.wasm            # Tree-sitter grammar
└── languages/rsx/
    ├── config.toml         # 语言配置
    ├── highlights.scm      # 语法高亮
    ├── injections.scm      # 语言注入
    ├── brackets.scm        # 括号匹配
    ├── folds.scm           # 代码折叠
    ├── indents.scm         # 自动缩进
    ├── outline.scm         # 大纲导航
    ├── overrides.scm       # 作用域覆盖
    └── textobjects.scm     # 文本对象
```

## Grammar

使用 [tree-sitter-rsx](https://github.com/guobin211/tree-sitter-rsx) 进行语法解析。

## License

MIT
