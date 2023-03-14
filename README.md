A [Jekyll] site for Phase 1 of kglw.net.

Note that the theme is [v2.5 of Minima](https://github.com/jekyll/minima/tree/2.5-stable) (not the latest 3.0 branch)


## local setup

Clone this repo, or download the `.zip` and unzip it, and then `cd` into that folder.

Ensure that Ruby 2.5 (?) is set up locally (perhaps using asdf [+ ruby](https://github.com/asdf-vm/asdf-ruby))  
(note that if using a Ruby version manager, the following `gem` and `bundle` commands may need to be prefixed, e.g. with `asdf exec`)

Install Bundler: `gem install bundler`

Use Bundler to install the things specified in the Gemfile: `bundle install`

### running the server

`bundle exec jekyll serve`

To see drafts, use `bundle exec jekyll serve --drafts`

Control how links are built using the `baseurl` command-line flag: https://jekyllrb.com/docs/github-pages/#running-and-testing-locally




[Jekyll]: https://jekyllrb.com
