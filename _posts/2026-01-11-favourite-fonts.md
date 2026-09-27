---
layout: post
title: Favourite fonts
---

[Inter](https://rsms.me/inter/)
• [Plain](https://optimo.ch/typefaces/plain1)
• [Geist](https://vercel.com/font)
• Helvetica Neue
• Garamond EB
• [Cormorant](https://www.behance.net/gallery/28579883/Cormorant-an-open-source-display-font-family)
• Palatino
• Goudy Initialen
• [Requiem](https://www.typography.com/fonts/requiem/overview)
• [Alegreya](https://fonts.google.com/specimen/Alegreya)
• [Iosevka](https://github.com/be5invis/Iosevka)
• [Iosevka Charon](https://fonts.google.com/specimen/Iosevka+Charon)
• [Hack](https://github.com/source-foundry/Hack)

# Old style

Old style typefaces originate in 15th century Renaissance Venice from a combination of Italian calligraphy and Roman inscriptional capitals.
It is characterised by moderate line contrast, calligraphic stroke modulation, and an even page colour.
The style is restrained, quiet and harmonious.



|                     | EB Garamond                                                                               | Cormorant                                                                                 | Goudy Initialen                                                                               |
|---------------------|-------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|
| Designer            | Georg Duffner & Octavio Pardo                                                             | Christian Thalmann (Catharsis Fonts)                                                      | Dieter Steffmann digitisation of Frederic W. Goudy's original                                 |
| Released            | 2012                                                                                      | 2015                                                                                      | Created early 1900s, digitised 2000                                                           |
| Licence             | SIL OFL 1.1                                                                               | SIL OFL 1.1                                                                               | Proprietary (free for personal & commercial use)                                              |
| Purpose             | Body text                                                                                 | Display                                                                                   | Dropped capitals                                                                              |
| Characteristics     | Faithful scholarly revival, moderate stroke contrast, balanced proportions for text sizes | Elegant sharp details, high stroke contrast, large extravagant counters for display sizes | Decorative, ornate font featuring intricate floral and vine patterns within uppercase letters |
| Optical axis `opsz` | 8pt, 12pt                                                                                 | None                                                                                      |                                                                                               |
| Weight axis `wght`  | Regular (400), Medium (500), SemiBold (600), Bold (700), ExtraBold (800)                  | Continuous (300 - 700)                                                                    |                                                                                               |
| Italics             | True italics                                                                              | True italics                                                                              |                                                                                               |
| Small caps `sc`     | Yes                                                                                       | Yes                                                                                       |                                                                                               |
| Language support    | Latin, Cyrillic, Vietnamese, Greek                                                        | Latin, Cyrillic, Vietnamese                                                               | Latin                                                                                         |

![The 1592 Berner specimen which EB Garamond aims to faithfully reproduce]({{ '/assets/images/2024_garamond-french-typographic-style-berner-egelnoff-type-specimen.png' | relative_url }})

The development of EB Garamond is rather complicated.
There are two versions, the original made by Georg Duffner in 2012 and an expansion by Octavio Pardo released in 2017.
Originally Duffner created the font with support for 8pt and 12pt optical sizes, with aspirations to develop 6pt, 10pt, 18pt and 40pt later.
Subsequently Google commissioned Octavio Pardo to add different weights, but only to the 12pt optical size.
As of now, the project is effectively in a stable but dormant state.

| Feature                 | 8pt     | 12pt            | Notes                                                     |
|-------------------------|---------|-----------------|-----------------------------------------------------------|
| Roman                   | Duffner | Duffner & Pardo | Regular (400)                                             |
| Italics                 | Duffner | Duffner & Pardo |                                                           |
| Bolds                   |         | Pardo           | Medium (500), SemiBold (600), Bold (700), ExtraBold (800) |
| Bold italics            |         | Pardo           | Medium (500), SemiBold (600), Bold (700), ExtraBold (800) |
| Small caps              | Duffner | Duffner & Pardo |                                                           |
| Small caps italics      |         | Duffner & Pardo |                                                           |
| Small caps bold         |         | Pardo           | Bold (700)                                                |
| Small caps bold italics |         | Pardo           | Bold (700)                                                |

Historically, it is anachronistic to use bold for emphasis in old style type.
Bold types were not created until the 19th century and the original old types of Garamond had no bold weights.
Introducing a 19th-century convention into a 16th-century design disrupts the aesthetics.
Old style is characterised by moderate contrast, calligraphic stroke modulation, and an even page colour.
Using bold to increase contrast and add density appears heavy and jarring in Garamond rather than emphatic.
Italics and small caps, *preserves* visual harmony by keeping colour and stoke contrast consistent, but provides emphasis by changing letterform character.

<!-- 
There is some interest in the community for variable weights to support printing and emulate Adobe Garamond.
EB Garamond aims to be a faithful reproduction of the 1592 Berner specimen.
But that specimen was designed for 16th-century printing, its inks, paper and mechanical presses.
The result is that EB Garamond Regular appears visually lighter than Adobe Garamond.
Adobe Garamond (Robert Slimbach's 1989 revival) is the de facto standard for book printing.
Slimbach deliberately made his cut slightly heavier to compensate for modern digital-to-print workflows.
The consensus in the self-publishing community is EB Garamond is a bit light.
In order to match Adobe Garamond the weight would need to be 472.
A weight of 500 is too heavy.
-->

Therefore I prefer to use the Duffner implementation of EB Garamond to take advantage of the 8pt and 12pt optical sizes and then apply the emphasis methods used at the time.

| Method              | Notes                                                                                                           |
|---------------------|-----------------------------------------------------------------------------------------------------------------|
| Italics             | Primary emphasis mechanism. A separate style, not a slant.                                                      |
| Small caps          | For initial emphasis, proper names, headings; per Bringhurst, the standard substitute for bold in oldstyle text |
| All caps            | Strong emphasis or display                                                                                      |
| Switching typefaces | For examples, dropping into blackletter or a different roman for a word or phrase                               |
| Letter-spacing      | Widening the tracking of a word                                                                                 |
Table: The emphasis methods available to a 16th-century printer

Traditional Garamond cuts appear blotted and unsophisticated at sizes needed for headings and titles.
EB Garamond falls into this problem because it does not have optical sizes larger the 12pt.
Cormorant is also inspired by the work of Claude Garamond but is designed as a display font.
Conversely because Cormorant has a single optical size, its fine features nearly dissapear a body sizes, so it is not suited for body text.

While EB Garamond comes with decorative initials, the initials of Goudy Initialen are preffered.
Initially designed by Frederic W. Goudy in the early 1900s as Cloister Initials.
They are acknowledged as some of the most beautifully designed of initials ever created inspired by letter from Medieval manuscripts.

![Example of EB Garamond body text with Cormorant title and Goudy Initialen dropped capital]({{ '/assets/images/Old%20style%20sample.png' | relative_url }})

# Sans serif

- [Inter](https://rsms.me/inter/)
- [Plain](https://optimo.ch/typefaces/plain1) by Optimo
- [Geist](https://vercel.com/font)
- Helvetica Neue

# Serif fonts for prose

- [Alegreya](https://fonts.google.com/specimen/Alegreya)
- [Requiem](https://www.typography.com/fonts/requiem/overview) by Hoefler & Co.

# Monospace fonts for code

- [Iosevka](https://github.com/be5invis/Iosevka) and [Iosevka Charon](https://fonts.google.com/specimen/Iosevka+Charon)
- [Hack](https://github.com/source-foundry/Hack)

# Blackletter

# Special

- Noto
- Nerd font
- Zapfino
