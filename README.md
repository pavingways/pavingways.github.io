# Paving Ways Homepage

## Getting Started

```
$ gem install jekyll bundler
```

## Structure

### Portfolio

- Portfolio projects are in '/_posts'
- Images are in '/img/portfolio'

### About

- Images are in '/img/about/'

### Team

- Team members and info are in '_config.yml'
- Images are in '/img/team/'

## Workflow

Work on Branch `develop`.
```
$ git checkout develop
$ code .
```

Serve and watch files while editing:
```
$ bundle exec jekyll serve --watch
````

Jekyll-build new version:
```
$ bundle exec jekyll build
```

Snapshot a new version while on branch develop
```
$ git add -A
$ git commit -m "development update `date +'%Y-%m-%d %H:%M:%S'`"
$ git push
```

Deploy to [GitHub Pages](https://pages.github.com) using [deploy.sh](./deploy.sh):

```bash
# snapshot new version while on branch develop
git add -A
git commit -m "development update `date +'%Y-%m-%d %H:%M:%S'`"
git push -f origin develop


# only during development
mv index.html new.html

git add -A
git commit -m "site update on `date +'%Y-%m-%d %H:%M:%S'`"
git push -f origin master
cd ..
```
## Credits

Based on [Jekyll](https://jekyllrb.com) and [Agency Jekyll theme](http://jekyllthemes.org/themes/agency/), which is based on [Agency bootstrap theme ](https://startbootstrap.com/template-overviews/agency/).
