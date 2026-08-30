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
        serif: [
          'Alegreya',
          'Georgia',
          'Cambria',
          '"Times New Roman"',
          'Times',
          'serif',
        ],
      },
    //   typography: {
    //     DEFAULT: {
    //       css: {
    //         maxWidth: "65ch",
    //         lineHeight: "1.55",
    //         h1: { fontWeight: "600", letterSpacing: "-0.01em" },
    //         h2: { fontWeight: "600", letterSpacing: "-0.01em" },
    //         h3: { fontWeight: "500" },
    //         code: { fontSize: "0.9em" },
    //       },
    //     },
    //   },
      opacity: {
        88: "0.88",
        72: "0.72",
        56: "0.56",
      },
    },
  },
  plugins: [require("@tailwindcss/typography")],
};
