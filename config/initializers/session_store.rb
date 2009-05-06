# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ninjity_session',
  :secret      => 'bd9656bd73a13f52f94edf7a1735f5800ee9b801b3eb31f7f3f4bc1cc6e5a74c6c4d55ec01ec45b378638f0ca76534754201b02651a66847ffae748cc82e67b3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
