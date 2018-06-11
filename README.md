# README

# Flight Booker - Ruby on Rails application to practice user authentication and authorization

## Getting started


* System dependencies

Ruby version: 2.3.1
Rails version: 5.2.0
Bundler version: 1.16.1


To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

You must first seed your database with the following command: 

```rails
$ rails db:seed
```

NOTE: The seed file is initially set up to generate 36,500 flights (100 flights / day for the next 365 days). To have a higher rate of successfully finding a flight for all search possibilities requires modifying the seed file to include more flights per day. This however will increase the seeding time signficantly.  For perspective, there are approxmiately 100,000 flights around the globe per day.


Finally run the app in a local server:

```
$ rails server
```

Open your browser at "localhost:3000".


To run the RSpec test suite, first run:

```
$ rails db:seed ENV=test
```

Then run:

```
$ rspec
```

## Authors

* **Kyle Lemon** - [jklemon17](https://github.com/jklemon17)
* **Paul Rail** - [PolarisTLX](https://github.com/PolarisTLX) 
