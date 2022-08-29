/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/**/*.{html,js,erb}"],
  theme: {
    extend: {
      colors: {
        pink: colors.pink,
        'wntl-pink':'#ea27c2',
      }
    },
  },
  plugins: [],
}
