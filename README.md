# IT Wiki

Awesome resources about IT.

## Getting Started

* Ruby version

2.3.3

* System dependencies

```
$ bundle install
```

* Configuration

```
$ export EMAIL=<EMAIL>
$ export ABOUT_ME=<URL>
```

* Database creation

```
$ rails db:create
```

* Database initialization

```
$ rails db:migration
```

* How to run the test suite

```
$ rspec
```

* Services (job queues, cache servers, search engines, etc.)

None

* Deployment instructions

```
$ heroku config:set EMAIL=[...]
$ heroku config:set ABOUT_ME=[...]
$ heroku run rails db:migrate
$ heroku run rails console
  Admin.create!({ email: '...', password: '...', password_confirmation: '...'  })
```

---

## License

[MIT](http://opensource.org/licenses/MIT)
