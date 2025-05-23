# Jorge's Personal professional website

Personal web page with jekyll

```sh
gem update
gem install bundler
bundle update
bundle exec jekyll server
```

```sh   
docker run --rm -p 4000:4000 -v $(pwd):/srv/jekyll jekyll/jekyll jekyll serve --watch --drafts
docker run -it --rm -v $(pwd):/usr/src/app -p "4000:4000" starefossen/github-pages
```