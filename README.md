## Aim test Project

Example implementation Heroku

[a link](https://aimws2.herokuapp.com/login)



## Installation

1. `bundle install`
2. `rake db:create`
3. `rake db:migrate`
4. `rake db:seed`
5. create and configure file in the root of folder with name `.env` for local or set your environment vars for the server
```
WS1: 'http://localhost:3000/rest/login'
WS2: 'http://localhost:3001/rest/verify_user/'
WS2_USER: 'secret user'
WS2_PASS: 'secret password'
```

## Usage

run the project with `rails s` and test the 2 cases.

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

TODO: Write history

## Credits

TODO: Write credits

## License
