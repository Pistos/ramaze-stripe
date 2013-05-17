# Stripe with Ramaze

This package/repository contains functional example code for how to use Stripe
with Ramaze.

1. Create an account at https://stripe.com/ .
1. Find your API keys at https://manage.stripe.com/account/apikeys .
1. cp config.yaml.example config.yaml
1. Edit config.yaml: put your test keys in there.
1. Execute `bundle install` or `gem install ramaze stripe`.
1. Execute `ruby app.rb`.  (prefix with "bundle exec" if using Bundler)
1. Visit http://localhost:5005 .
1. Click "Pay with Card" button.
1. Fill in credit card form.
1. See successful charge page, or index page with error message.
1. Visit https://manage.stripe.com/test/dashboard to see the test charge(s).

Send comments to Pistos in irc.freenode.net#ramaze .
