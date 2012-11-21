# Omniauth Zaim

A Strategy to auth with Zaim in OmniAuth.

Get your ConsumerKey here:https://dev.zaim.net/home

## Usage
Add this line to your app's `Gemfile`:

    gem 'omniauth-zaim'

And add the following to your `config/initializers/omniauth.rb`:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :zaim, "your_consumer_key", "your_consumer_secret"
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
