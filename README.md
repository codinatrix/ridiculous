Detta är en katalog av matleverantörer för matbutiken Ridiculous Hat Fine Foods.

## Demo

[http://www.ridiculoushat.com/](http://www.ridiculoushat.com/)

#### Användare 1:

användarnamn: gus@fring.com

lösenord: bluestuff


#### Användare 2:
användarnamn: gale@boe.com

lösenord: vegansmores

## Setup

Dependencies: 
* Ruby 1.9.3
* Rails 4.04
* Postgres

Kör:
```
git clone git://github.com/codinatrix/ridiculous.git
cd ridiculous
bundle install
rake db:setup
rails s
```
## Deployment

Kör:
```
git init
git add .
git commit -m "init"
heroku create appname
git push heroku master
```
`rake secret` och kopiera resultaten till
`heroku config:set SECRET_TOKEN=MYKEY`

`rake secret` och kopiera resultaten till
`heroku config:set DEVISE_TOKEN=MYKEY`

```
heroku run rake db:setup
```

## Erkännande
Redigeringsikon [Edit](http://www.thenounproject.com/term/edit/22169/) av [Tom Walsh](http://www.thenounproject.com/tomwalshdesign/) under [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/us/).

Raderingsikon [Trash Can](http://www.thenounproject.com/term/trash-can/3823/) av [Ruben Steeman](http://www.thenounproject.com/rubensteeman/) under [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/us/).

Karta stil baserad på [Apple Maps-esque](http://snazzymaps.com/style/42/apple-maps-esque) av [Mike Fowler](http://mikefowler.me/) under [CC BY SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/).

Karta ikon [Free Vector Map Location Pins](http://medialoot.com/item/free-vector-map-location-pins/) av [Tony Thomas](http://medialoot.com/main/team/).

Logo från en mall av Jessica Bory.