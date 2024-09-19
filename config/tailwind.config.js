const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Lato', '-apple-system', 'BlinkMacSystemFont', '"Segoe UI"', 'Roboto', 'Oxygen', 'Ubuntu', 'Cantarell', '"Open Sans"', '"Helvetica Neue"', 'sans-serif'],
      },
      colors: {
        header: 'hsl(0, 1%, 16%)',
        body: 'hsl(0, 5%, 25%)',
        muted: 'hsl(0, 1%, 44%)',
        primary: {
          default: 'hsl(350, 67%, 50%)',
          rotate: 'hsl(10, 73%, 54%)',
          bg: 'hsl(0, 85%, 96%)',
        },
        secondary: {
          default: 'hsl(101, 45%, 56%)',
          rotate: 'hsl(120, 45%, 56%)',
        },
        tertiary: 'hsl(49, 89%, 64%)',
        glint: 'hsl(210, 100%, 82%)',
        white: 'hsl(0, 0%, 100%)',
        background: 'hsl(30, 50%, 98%)',
        light: 'hsl(0, 6%, 93%)',
        dark: 'hsl(0, 1%, 16%)',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
