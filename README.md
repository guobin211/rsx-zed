# Zed RSX Extension

A RSX language extension for [Zed](https://zed.dev).

## Features

- **Syntax Highlighting** - Full syntax highlighting for RSX files
- **Language Injection** - Embedded Rust, TypeScript, and SCSS highlighting
- **Code Folding** - Fold sections, directives, and comments
- **Bracket Matching** - Auto-close brackets and template delimiters
- **Outline View** - Navigate through sections and directives
- **Text Objects** - Vim-style text objects for sections and blocks

## RSX Language

RSX is a full-stack web framework combining:

- **Rust** (`---` section) - Server-side logic
- **TypeScript** (`<script>` section) - Client-side logic
- **Handlebars** (`<template>` section) - Template rendering
- **SCSS** (`<style>` section) - Styling

## Installation

### From Zed Extensions

1. Open Zed
2. Go to `Extensions` panel
3. Search for "rsx"
4. Click Install

### Manual Installation

```bash
cd apps/rsx-zed
cargo build --release
```

## Language Server

This extension integrates with `rsx-language-server` for:

- Auto-completion
- Diagnostics
- Hover information
- Go to definition

## Grammar Reference

[tree-sitter-rsx](https://github.com/guobin211/tree-sitter-rsx)
