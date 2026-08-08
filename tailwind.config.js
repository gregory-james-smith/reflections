// module.exports = {
//   content: [
//     './_includes/**/*.html',
//     './_layouts/**/*.html',
//     './_posts/**/*.md',
//     './docs/**/*.md',
//     './*.html'
//   ],
//   theme: {
//     extend: {
//       colors: {
//         brand: {
//           50: '#f3f8ff',
//           100: '#dceeff',
//           500: '#2f6fed',
//           700: '#1e4ea8',
//           900: '#142f5f'
//         }
//       },
//       fontFamily: {
//         sans: ['Inter', 'ui-sans-serif', 'system-ui', 'sans-serif']
//       }
//     }
//   },
//   plugins: []
// };

module.exports = {
  darkMode: "class", // use light mode only
  content: [
    "./_layouts/**/*.html",
    "./_includes/**/*.html",
    "./_posts/**/*.md",
    "./assets/**/*.css",
    "./*.html",
  ],
  exclude: ["node_modules"],
  theme: {
    extend: {
      fontFamily: {
        sans: [
          "Inter", // Inter Variable
          "-apple-system",
          "BlinkMacSystemFont",
          '"Helvetica Neue"',
          "Helvetica",
          "Arial",
          "sans-serif",
        ],
      },
      typography: {
        DEFAULT: {
          css: {
            maxWidth: "65ch",
            lineHeight: "1.55",
            h1: { fontWeight: "600", letterSpacing: "-0.01em" },
            h2: { fontWeight: "600", letterSpacing: "-0.01em" },
            h3: { fontWeight: "500" },
            code: { fontSize: "0.9em" },
          },
        },
      },
      opacity: {
        88: "0.88",
        72: "0.72",
        56: "0.56",
      },
    },
  },
  plugins: [require("@tailwindcss/typography")],
};
