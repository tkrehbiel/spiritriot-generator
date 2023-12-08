# Theme Name

json-theme

## Features

This is a Hugo theme that renders JSON data files instead of HTML pages.

## Installation

Copy to themes/

## Configuration

Add to hugo.toml:

```
paginate = 25

disableKinds = [ 'taxonomy', 'term', 'sitemap' ]

[Params]
  jsonIncludeKinds = [ "page" ]
  jsonIncludeTypes = [ "post" ]

[outputs]
  home = ["json"]
  section = ["json"]
  taxonomy = ["json"]
  term = ["json"]
  page = ["json"]
```
