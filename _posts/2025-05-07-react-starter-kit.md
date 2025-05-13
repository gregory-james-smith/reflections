---
layout: post
title: Web application guide with React
tags: draft
---

This is my recommendation for how to develop a **web application**.

# Conceptual design

The implementation is a **Single Page Application (SPA)** that loads a single HTML page and, using the React framework and JavaScript, dynamically updates the content as the user interacts with it without refreshing the entire page.
The implementation can also support advanced features of a **Progressive Web Application (PWA)**.

# Getting started

Use **Vite** to initialise the web application.

# Technical stack

* React
* Typescript
* Vite
* Tailwind
* Vitest
* ?? for REST
* Apollo for GraphQL
* WebWorkers and ??? pool
* shadcn
* pnpm

Facebook tech stack
* SVGs

# Structure

The project should be **structured by feature** not by type or by function.
In user interfaces this means the primary structure is around the **pages** of the user interface.

| Folder | Description |
|-|-|
| `./src/pages/` | The pages of the web app |
| `./src/features/` | Smart UI components coupled to the domain or implementation |
| `./src/components/` | Dumb UI components decoupled from the domain and implementation. \\ These should really be in a separate library so they can be shared but for expediency or other reasons are held here. |
| `./src/utils/` | Utilities |
| `./src/api/` | Functions for making API calls |

Each component or feature should have its own folder.
Its parts should be broken down into different files with the following "dot" naming convention.
There may be other parts than those illustrated here.

| Filename | Description |
|-|-|
| `button.ts` | The feature or component |
| `button.hooks.ts` | React hooks specific to the feature or component |
| `button.reducer.ts` | React reducers specific to the feature of component |
| `button.constants.ts` | Constant values specific to the feature of component |
| `button.modules.css` | CSS module |

# State

Since this is a web application, there will be mutable state...

Options...

# Configuration

How to...

# Testing 

`__test__`
Lighthouse
Cypress

# Styling

Tailwind
CSS modules
rem

Most libraries are bloated...

# ...

* Micro web apps
* Fracturing JS bundles
* Server side rendering
* back referencing pattern
* Importing SVGs etc.
* CSS modules

# Installing fonts

# Architectural considerations

---

Separate file

* Web storage options
    * URL params
* WebAssembly etc.
* UI/UX design for web
* What is that other thing called... no JS --- JAM stack???
* Links to Typescript config and other config...
