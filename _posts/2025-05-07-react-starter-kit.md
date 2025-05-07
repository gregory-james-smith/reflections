---
layout: post
title: React starter kit
tags: draft
---

This is my recommendation for how to develop a **web application**.

# Conceptual design

The implementation is a **Single Page Application (SPA)** that loads a single HTML page and, using the React framework and JavaScript, dynamically updates the content as the user interacts with it without refreshing the entire page.
The implementation can also support advanced features of a **Progressive Web Application (PWA)**.

# Starting

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

Structure by feature... not by ??? -- therefore primary structuring is the page

- src
    - pages
    - features
    - components
    - utils
    - api

| Folder | Description |
|-|-|
| `/src/components/` | Dumb UI components decoupled from the domain and implementation. Should really be in a separate library. |
| `/src/features/` | UI components coupled to the domain or implementation |

| Filename | Description |
|-|-|
| button.ts | |
| button.hooks.ts | |
| button.reducer.ts | |
| button.modules.css | |

# State

* ...


# ...

* Micro web apps
* Fracturing JS bundles
* Server side rendering
* back referencing pattern

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
