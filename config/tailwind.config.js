module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim,rb}',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Lato', '-apple-system', 'BlinkMacSystemFont', '"Segoe UI"', 'Roboto', 'Oxygen', 'Ubuntu', 'Cantarell', '"Open Sans"', '"Helvetica Neue"', 'sans-serif'],
      },
      colors: {
        transparent: 'transparent',
        header: 'hsl(0, 1%, 16%)',
        body: 'hsl(0, 5%, 25%)',
        muted: 'hsl(0, 1%, 44%)',
        primary: {
          DEFAULT: 'hsl(350, 67%, 50%)',
          rotate: 'hsl(10, 73%, 54%)',
          bg: 'hsl(0, 85%, 96%)',
        },
        secondary: {
          DEFAULT: 'hsl(101, 45%, 56%)',
          rotate: 'hsl(120, 45%, 56%)',
        },
        tertiary: 'hsl(49, 89%, 64%)',
        glint: 'hsl(210, 100%, 82%)',
        white: 'hsl(0, 0%, 100%)',
        background: 'hsl(30, 50%, 98%)',
        light: 'hsl(0, 6%, 93%)',
        dark: 'hsl(0, 1%, 16%)',
      },
      lineHeight: {
        'header': '1.1',
        'body': '1.5',
      },
      fontSize: {
        xs: '0.75rem',     // 12px
        s: '0.875rem',     // 14px
        m: '1rem',         // 16px
        l: '1.125rem',     // 18px
        xl: '1.25rem',     // 20px
        xxl: '1.5rem',     // 24px
        xxxl: '2rem',      // 32px
        xxxxl: '2.5rem',   // 40px
      },
      spacing: {
        xxxs: '0.25rem',   // 4px
        xxs: '0.375rem',   // 6px
        xs: '0.5rem',      // 8px
        s: '0.75rem',      // 12px
        m: '1rem',         // 16px
        l: '1.5rem',       // 24px
        xl: '2rem',        // 32px
        xxl: '2.5rem',     // 40px
        xxxl: '3rem',      // 48px
        xxxxl: '4rem',     // 64px
      },
    },
    borderRadius: {
      DEFAULT: '0.375rem'
    },
    borderWidth: {
      DEFAULT: '2px'
    },
    borderColor: theme => ({
      light: theme('colors.light')
    }),
    boxShadow: {
      small: '1px 3px 6px rgba(0, 0, 0, 0.1)',
      large: '2px 4px 10px rgba(0, 0, 0, 0.1)'
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
