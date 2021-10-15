# Kiwanis Event Fundraisers

### Requirements

```
ruby 3.0.2
nodejs 16.11.0
yarn 1.22.14
```

### Database creation

Create
`rake db:create`

Migrate
`rake db:migrate`

### Database initialization
`rake db:seed`

### Run the app
`bin/dev`

### Run the test suite
`bin/test`

### About the app

This is using rails 7.0.0.alpha2. Rails 7 is no longer using webpacker so styles are configured a bit differently. This project was spun up with the intention to use [tailwinds.css](https://tailwindcss.com/) for erb page styling, and [Ant Design](https://ant.design/) system for react views.

##### Whats been done

- Events model and associations
- Clubs model and associations
- Membership model and associations
- Users model and associations
- User authentication using devise
- Dashboard view with react ready for events
- Club view with react ready for events
- Club Events view with react ready for events
- Club Event Landing page view with rails ready for events

