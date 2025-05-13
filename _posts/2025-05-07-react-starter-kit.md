---
layout: post
title: Web application guide with React
tags: draft
---

This is my recommendation for how to develop a **web application**.

I also recommend **MDN Web Docs** for a source of documentation.

# Conceptual design

The implementation is a **Single Page Application (SPA)** that loads a single HTML page and, using the React framework and JavaScript, dynamically updates the content as the user interacts with it without refreshing the entire page.
The implementation can also support advanced features of a **Progressive Web Application (PWA)**.

# Getting started

Use **Vite** to initialise the web application.

# Technical stack

The Facebook technical stack is recommended.
[This article by Facebook](https://engineering.fb.com/2020/05/08/web/facebook-redesign/) discusses the reasoning behind some of their technology choices.

| Tool | Description |
|-|-|
| commitizen | Release management tool |
| pnpm | Package manager |
| Vite | Build tool |
| Typescript | Programming language |
| React | Web application framework |
| Tailwind | CSS framework |

# Structure

The project should be **structured by feature** not by type or by function.
In user interfaces this means the primary structure is around the **pages** of the user interface.

| Folder | Description |
|-|-|
| `./src/pages/` | The pages of the web app |
| `./src/features/` | Smart UI components coupled to the domain or implementation |
| `./src/components/` | Dumb UI components decoupled from the domain and implementation. These should really be in a separate library so they can be shared but for expediency or other reasons are held here. |
| `./src/utils/` | Utilities |
| `./src/api/` | Functions for making API calls |

Each component or feature should have its own folder.
Its parts should be broken down into different files with the following "dot" naming convention.
There may be other parts than those illustrated here.

| Filename | Description |
|-|-|
| `button.tsx` | The feature or component |
| `button.hooks.ts` | React hooks specific to the feature or component |
| `button.reducer.ts` | React reducers specific to the feature of component |
| `button.constants.ts` | Constant values specific to the feature of component |
| `button.modules.css` | CSS module |

# State

Since this is a web application, there will be mutable state...

Options...

| State | Description |
|-|-|
| React hook | |
| React reducer | |

See also...

# Configuration

How to...

# Testing

| Tool | Description |
|-|-|
| Vitest | Unit test framework |
| Lighthouse | Non-function test tool |
| Cypress & Cucumber | Behaviour test framework |

It is customary to co-locate the unit tests in `./__test__` next to the code it is testing.
Typically unit tests will only be needed for utilities and some state management logic, such as complex reducers.

Lighthouse ships with and can be run in the Chrome browser or can be run headlessly in a CICD pipeline.

Sometimes when doing Cypress testing you need to access data in memory or data in a library.
You can assign the data to the `window` object in the application and this will make it available to Cypress.
For example, if using Chart.js you can include `window.Chart = Chart` and then the data in the chart can be tested by Cypress.

# Styling

The Google **Material Design** design language should be used.

Tailwind should be used for styling.
Avoid using the `@apply` directive, use composition of components instead.

There may sometimes be a need to use CSS, in these cases use CSS modules which work with Vite out-of-the-box.


rem


Most UI component libraries are bloated.
You can use **shadcn** 

* Importing SVGs etc.
Use SVGs, not fonts... -- icons

Import Inter font...
Noto -- No TOFU

---


