WIP — exploring a simple [Jekyll] setup for Phase 1

## setup

[Using this guide](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll)

Ensure git is set up

Set up asdf [+ ruby](https://github.com/asdf-vm/asdf-ruby); `asdf install`

`asdf exec gem install bundler`

`asdf exec bundle install`

run the server with `bundle exec jekyll serve`

control how links are built using the `baseurl` command-line flag: https://jekyllrb.com/docs/github-pages/#running-and-testing-locally

Note that the theme is [v2.5 of Minima](https://github.com/jekyll/minima/tree/2.5-stable) (not the latest 3.0 branch)


## branching :brain: :storm:

* production is built from branch `build-prod`
* staging built from `build-stag`
* by GH Actions, hosted on GH Pages...
* add `CNAME` file to each branch, stag gets "staging.kglw.net" ?
  * then `update-index --assume-unchanged` it so that they don't get modified by anyone
* use `main` branch as dev trunk, PRs based on it
  * but then `co build-prod && merge build-prod && push`


[Jekyll]: https://jekyllrb.com
