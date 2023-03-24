import { defineShikiSetup } from '@slidev/types'

export default defineShikiSetup(async ({ loadTheme }) => {
  return {
    theme: {
      dark: 'github-dark-dimmed',
      light: 'github-dark-dimmed',
    },
  }
})
