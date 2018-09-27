# README

It uses this [free API](https://dog.ceo/dog-api/) to show the user a random picture of a dog of a selected dog breed.

## Features:
* Getting random image of dog of a selected breed
* Caching api response in Redis with one dog
* Caching list of breeds 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.


### Installing


```
bundle install
```

```
rake db:setup
```

```
rails s
```

## Built With

* [Rails](https://rubyonrails.org/) - Web Framework
* [Redis](https://redis.io/) - In-memory data structure store
* [Rest Client](https://github.com/rest-client/rest-client) - Simple HTTP and REST client for Ruby

