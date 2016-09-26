Demo: Rails 5 Token Authentication
==================================

[![Build Status](https://travis-ci.org/gonzalo-bulnes/rails-5-token-authentication-demo.svg?branch=master)](https://travis-ci.org/gonzalo-bulnes/rails-5-token-authentication-demo)
[![Dependency Status](https://gemnasium.com/badges/github.com/gonzalo-bulnes/rails-5-token-authentication-demo.svg)](https://gemnasium.com/github.com/gonzalo-bulnes/rails-5-token-authentication-demo)
[![Inline docs](http://inch-ci.org/github/gonzalo-bulnes/rails-5-token-authentication-demo.svg?branch=master)](http://inch-ci.org/github/gonzalo-bulnes/rails-5-token-authentication-demo)

Demonstrate the [Simple Token Authentication][see] usage in a Rails 5 app.

This application aims at demonstrating how token authentication can be implemented and tested and documented in a Rails 5 application.

1. **Implementation**: makes use of [Simple Token Authentication][see]
1. **Testing** and **documentation**: are performed using [RSpec][rspec]

  [see]: https://github.com/gonzalo-bulnes/simple_token_authentication
  [rails-5]: https://github.com/gonzalo-bulnes/simple_token_authentication/issues/214
  [rspec]: https://relishapp.com/rspec

Usage
-----

### Deployment

#### Local

```bash
rackup -p 3000 # see http://localhost:3000
```

#### Heroku

Click the button below to automatically set up the demo in an app running on your Heroku account.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Alternatively, you can manually create a Heroku app and use Git to push and deploy.

### Testing and documentation

The application specification can be [read online][online-docs] or generated locally:

```bash
# Run the test suite and output the app specification
rake
```

  [online-docs]: https://travis-ci.org/gonzalo-bulnes/rails-5-token-authentication-demo/builds/162762979#L305

User Data and Must See
----------------------

The demo user is called Alice, she doesn't need to authenticate to accede `/`, however she can do it through token authentication. See the home page [with authentication][optionnal_with] and [without authentication][optionnal_without].

On the contrary, she must authenticate in ordder to accede to `/restricted_index`. Of course, she can do it through token authentication. See the restricted home page [with authentication][required_with] and [without authentication][required_without].

  [optionnal_with]: https://rails-5-token-authentication.herokuapp.com/?user_email=alice@example.com&user_token=1G8_s7P-V-4MGojaKD7a
  [optionnal_without]: https://rails-5-token-authentication.herokuapp.com/
  [required_with]: https://rails-5-token-authentication.herokuapp.com/restricted_index?user_email=alice@example.com&user_token=1G8_s7P-V-4MGojaKD7a
  [required_without]: https://rails-5-token-authentication.herokuapp.com/restricted_index

### Hooks

Interested in using [hooks][hooks]? Check your server logs for messages of successful token authentication!

  [hooks]: https://github.com/gonzalo-bulnes/simple_token_authentication/issues/217
