# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rubytrends_session',
  :secret      => '60a0b1efe2fbe06f3db641a47445e04e5e467382ab50fb20b49c0a61c290d0e041cbad8b86d299c0acf12e92df95f205d90d93492d90d0c8a9f14309d929b8ca'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
