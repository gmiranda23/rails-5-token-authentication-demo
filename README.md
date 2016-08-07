Demo: Rails 5 Token Authentication
==================================

Demonstrate the [Simple Token Authentication][see] usage in a Rails 5 app.

  [see]: https://github.com/gonzalo-bulnes/simple_token_authentication
  [rails-5]: https://github.com/gonzalo-bulnes/simple_token_authentication/issues/214

Usage
-----

### Local

```bash
rackup -p 3000 # see http://localhost:3000
```

### Heroku

Click the button below to automatically set up the demo in an app running on your Heroku account.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Alternatively, you can manually create a Heroku app and use Git to push and deploy.

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
