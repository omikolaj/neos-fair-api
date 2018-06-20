## Neos Fair
Back-end for a React-Redux application inspired by craigslist and offerup. Place where people can buy and sell items. This applications implements security measures for authentication. Upon signing up user's account is charged with $1000.00 dollars. Allowing them to purchase items which are added to their past orders section for future review.

## Features and Technologies
- React for component management and presentation logic
- Redux for state management and asynchronous Javascript back-end API calls
- CSS Modules
- OmniAuth Github strategy (Login with GitHub)
- Custom login and sign up flow system
- Full CRUD support (Create, Retrieve, Update, Delete) with error handling
- Ruby on Rails powered back-end API for database persistence
- Stateless back-end API using JWT (Json Web Token) authentication system
- Each API end-point is guarded to only allow authenticated requests access data
- All requests to the server utilize asynchronous Javascript fetch api with error handeling
- PostgreSQL database

## Usage
This application has been deployed to Heroku. You can find the live version at https://neos-fair.herokuapp.com
Manual install:
  - Make sure you are running postgreSQL server locally
  - run rake db:create > rake db:migrate > rake db:seed

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/omikolaj/neos-fair-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License
This project is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT)

  

