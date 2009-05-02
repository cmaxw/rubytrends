# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_drmax_session',
  :secret      => '39f682c1ec7dcb6cb8bf356be768e16f3d40fb81df7feca45ec93200eb4705c1d53dac453779b62b73ae048944c18eb69b9e38a283d35d623668378e2a94f408'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
