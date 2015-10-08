## Development

### Set up .env

- rename `example.env` to `.env`

```
RACK_ENV=development
# RACK_ENV=none
RAILS_ENV=development
DOMAIN=.lvh.me
TLD_LENGTH=1
PORT=3000

# S3
S3_BUCKET=placeholder
S3_KEY_ID=placejolder
S3_SECRET=placeholder
S3_REGION=us-west-2

DEVISE_SECRET=placeholder

STRIPE_SECRET=placeholder
STRIPE_PUBLISHABLE=placeholder
```


### Run
- make sure that `log/development.log` exists if not run `rails s`
- then run by calling `foreman start`

### Authenticated Ajax requests

A header has to be passed to authenticate a route

```
{
  'Authorization': `Bearer ${auth_token}`
}
```

The authorization token is passed back after a successful `post` to the `sign_in` route
