---
layout: post
title: Developing web applications
tags: web
---

This is my recommendation for how to develop a **web application**.

# Design

## Conceptual design

The implementation is a **Single Page Application (SPA)**.
This approach retrieves a single basic HTML page from the web server and, using the React framework and JavaScript, builds and dynamically updates the HTML content when the page loads and as the user interacts with it.
This uses the technique of **client side rendering** as opposed to the alternative of **server side rendering**.

<!-- Add example HTML file and JS file with React code -->

Refreshing the page or calling the web server for different HTML pages is unnecessary.
Multiple URL routes of the application are actually handled by a single HTML page hosted at the URL root.

<!-- Example URL routes -->

The implementation can support advanced features of a **Progressive Web Application (PWA)**.

<!-- List of features -->

## Technical stack

The Facebook technical stack is recommended.
[This article by Facebook](https://engineering.fb.com/2020/05/08/web/facebook-redesign/) discusses the reasoning behind some of their technology choices.

| Tool       | Description               |
|------------|---------------------------|
| commitizen | Release management tool   |
| pnpm       | Package manager           |
| Vite       | Build tool                |
| Typescript | Programming language      |
| React      | Web application framework |
| Tailwind   | CSS styling framework     |

* Installing fonts
* Images... SVG

## Project structure

The project should be **structured by feature** not by **structured by type**.

| Folder | Description |
|-|-|
| `./src/pages/` | The pages of the web application |
| `./src/features/` | Components which are tightly coupled to the domain or implementation |
| `./src/components/` | Components decoupled from the domain and implementation. These components could be considered to be "dumb". <br /> These should really be in a separate library so they can be shared but for expediency or other reasons are held here. |
| `./src/utils/` | Utilities |
| `./src/api/` | Functions for making API calls |

In user interfaces this means the primary structure is around the **pages** of the user interface.

`react-router`

## React components

Each component should have its own folder.
Its parts should be broken down into different files with the following "dot" naming convention.
There may be other parts than those illustrated here.

| Filename                   | Description                       |
|----------------------------|-----------------------------------|
| `button.tsx`               | The React component               |
| `button.hooks.ts`          | React hooks for the component     |
| `button.reducer.ts`        | React reducers for the component  |
| `button.constants.ts`      | Constant values for the component |
| `button.modules.css`       | CSS module for the component      |
| `__tests__/button.test.ts` | Unit tests for the component      |

## Configuration

Host a small Javascript file on the same web server as the web application.

```js
window.config = {
  data: 1
}
```

Add code to the head of the HTML document to run the Javascript file.

```html
<html>
  <head>
    <script src="/env/config.js"></script>
  </head>
  <body>
  </body>
</html>
```

The application source code can then access the configuration data.

```ts
const data = window.config?.data;
```

This can cause problems so it is best to hold the configuration inside a React context.

# Programming

## Getting started

Use **Vite** to generate the web application.

## State

The reason for using React is to handle state and to automatically handle which parts of the application should render when state changes.

| State           | Description |
|-----------------|-------------|
| React hook      |             |
| React reducer   |             |
| React context   |             |
| URL parameters  |             |
| Cookies         |             |
| Session storage |             |
| Local storage   |             |
| IndexedDB       |             |

## React components

Components should be written as React functional components.

## Validation

* Responses from API calls
* URL parameters
* Configuration loaded from scripts
* Data from session storage or local storage

Use zod.

# Testing

| Tool               | Description              |
|--------------------|--------------------------|
| Vitest             | Unit test framework      |
| Lighthouse         | Non-function test tool   |
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

Most UI component libraries are bloated and invasive.
You can use **shadcn** to quickly create your own components.

The fonts **Inter** and **Noto** are recommended.
They can be installed with the `@fontsource` packages.
Self hosting this way prevents late loading of the fonts on the page.

Use SVG for icons.

# Web assemply and WASM

# Deep linking and rison

# Design goals

* Deeply linked