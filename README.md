## Developer setup

This site is powered by [Zola], currently using the [Terminimal](https://github.com/pawroman/zola-theme-terminimal) theme.

The theme is linked as a [Git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules).
When you check out the repo for the first time, or perhaps when changing branches, you may need to run `git submodule init themes/terminimal` or `git submodule update themes/terminimal`

Running locally will mean that "section pages" (?) don't have a trailing `/` but when hosted on GitHub Pages they will... e.g. you will be on `/releases` locally but when on GHP it is really `/releases/` *which makes a difference for relative URLS!*


[Zola]: https://www.getzola.org
