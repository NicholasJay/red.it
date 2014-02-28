# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Reddit::Application.config.secret_key_base = '3f5078d9b87ff3b79f67a600ac752baf35fbeb65e8e9fc54666b0b19e8bab6c7d6c10fc29bc82cc2ddbdbb095e8ab08aa1d51b5b55532fb49eec80bb2bf50f13'
