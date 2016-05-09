##Install and Run
> bundle install

> rake db:migrate

> rake  # to run specs

> rails s

###Task A: Ruby on Rails FizzBuzz application
1. Standard FizzBuzz rules, divisible by 3 is Fizz, divisible by 5 is Buzz

   went ahead and included 'FizzBuzz' for 15
2. Should display values from 1 to 100 on the homepage
3. Should allow viewing values up to 100,000,000,000

  limited to 100B, warning as this will bloat memory and uses keys. Make sure you are using ruby > 2.2!
  
4. Should have pagination
  
  just using a gem, but since its a hashed/array extending the library 'will_paginate/array'
5. Should allow changing of the page size

  done via get request ?max=100&min=1&per_page=10

  assume page size is the pagination size
6. User should be able to mark certain numbers as their favourites, these should indicate that they are favourites on the UI and be persisted

  assume single user app.. aka no log-in/log-out

  persisted via favorites model similar to polymorphic but kept simple - not using 
   
  sqlite is fine for rapid development
   
  Stripped it down to eliminate the complexity of log/in log out logic
   
  also felt that since there was no user model to associate with favorites, I went ahead and stripped params checking to keep it simple
  
7.  Should provide a JSON API with all the above mentioned functionality
  tests successful

###Task B: Client to consume the JSON API
  in folder examples
  
1. Create a client to consume the FizzBuzz application API
2. Should be available from the command line
3. Should be written in a language other than Ruby
