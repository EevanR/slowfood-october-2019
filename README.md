# SlowFood Application

SlowFood is a web applitcation that users can use to create accounts and navigate through a simulated food delivery service. They may add items to cart to create an order and review their order. The owner of the store may also sign up with future functionality to modify menus.

## Deployed Site
Deployed with continuous deployment through heroku at:
https://slowfood-oct2019.herokuapp.com/

## User Stories
Visitor can navigate the site 
```
As a visitor,
In order to navigate the site
I would like to use a navbar
```
Visitor can see different products on a restaurants menu 
```
As a visitor,
In order to get an overview of the restaurant's products
I would like to be able to see a menu
```
User registration
```
As a user,
In order to be able to finalize an order
I would like to be able to register an account
```
Visitor can see products sorted in different categories
```
As a visitor,
In order to choose product more easily
I would like to see the products sorted in categories
```
Visitor can add to order 
```
As a visitor,
In order to select products I want to buy
I would like to be able to add products to an order
```
User can log in 
```
As a user
In order to access my account
I would like to be able log in
```
Restaurant owner can log in 
```
As a restaurant owner,
In order to make updates to my restaurant page
I would like to be able to log in and access my restaurant page
```
Visitor can review his order 
```
As a visitor,
In order to see my full order and a total price
I would like be able to see a list on an order details page
```

## Dependencies
- Rails v6.0.1
- Ruby v2.5.1
- Unit test Rspec
- Feature test Cucumber
- Devise for security 

## Setup
#### Clone repository
```
$ git clone https://github.com/EevanR/slowfood-october-2019.git
$ cd slowfood-october-2019
```

#### Install dependencies
Install RSpec using bundler if desire to run testing:
```
$ bundle install
```

## Run testing frameworks
In console:
Run Rspec to run unit tests
```
$ rspec
```
Run Cucumber to run feature tests
```
$ cucumber
```

### Actions available to the user

Head to the deployed address listed above to create or read articles!

## Updates/Improvement plans
Further functionality, with subscription options and payment.

## License
Created under the <a href="https://en.wikipedia.org/wiki/MIT_License">MIT License</a>.