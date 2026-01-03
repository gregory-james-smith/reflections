---
layout: post
title: VSCode settings
---

# Settings

```json
{
  // Telemetry
  "telemetry.telemetryLevel": "off",
  // Theme
  "workbench.colorTheme": "Default Dark+",
  "settingsSync.ignoredExtensions": [],
  // Save
  "editor.formatOnSave": true,
  "[yaml]": {
    "editor.formatOnSave": false
  },
  "editor.codeActionsOnSave": {
    "sorce.organiseImports": "always"
  },
  // Formatting
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "editor.tabSize": 2,
  "prettier.printWidth": 100,
  "eslint.options": {
    "code": 100
  },
  // Editing
  "files.eol": "\n",
  "typescript.updateImportsOnFileMove.enabled": "always",
  // Terminal
  "terminal.integrated.tabs.enabled": true,
  "terminal.integrated.defaultProfile.windows": "Git Bash",
  "workbench.panel.defaultLocation": "right",
  // View
  "workbench.editor.enabledPreview": false,
  "editor.minimap.enabled": false,
  "diffEditor.ignoreTrimWhitespace": false,
  // Spelling
  "spellright.language": ["en-GB"],
  "spellright.groupDictionaries": true,
  "spellright.latexSpellParameters": [
    "author",
    "title",
    "subtitle",
    "date",
    "chapter",
    "section\\*?",
    "subsection\\*?",
    "subsubsection\\*?",
    "part",
    "paragraph",
    "subparagraph",
    "text(rm|sf|tt|md|bf|up|it|sl|sc|normal)",
    "underline",
    "emph",
    "item",
    "footnote(text)?",
    "caption(of)?",
    "multicolumn",
    "href",
    "hyperref",
    "institute",
    "frametitle",
    "framesubtitle",
    "begin\\{frame\\}"
  ],
  // Other
  "explorer.confirmDelete": false,
  "files.trimFinalNewlines": true,
  "explorer.confirmDragAndDrop": false,
  "git.confirmSync": false,
  "gitlens.statusBar.enabled": false,
  "gitlens.views.repositories.files.compact": false,
  "gitlens.advanced.caching.enabled": false,
  "gitlens.codeLens.authors.enabled": false,
  "gitlens.codeLens.recentChange.enabled": false,
  "gitlens.codeLens.scopes": ["document"],
  "todo-tree.regex.regex": "(//|%|#|<!--|;|/\\*|^|^[ \\t]*(-|\\d+.))\\s*($TAGS)",
  "remote.defaultExtensionsIfInstalledLocally": [
    "GitHub.copilot",
    "GitHub.copilot-chat",
    "GitHub.vscode-pull-request-github"
  ],
  "vscode-pets.theme": "forest"
}
```

# Keybindings

```json
[
  {
    "key": "cmd+s",
    "command": "saveAll"
  }
]
```
