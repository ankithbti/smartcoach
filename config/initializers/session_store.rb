# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ourtutplus_session',
  :secret      => '13bb37e4995fa7ce951f6cc9c41395dcf6c3147d37cce0ebeb16fb973e13c2ce718dc7284b2e0f5a43e1585cc8a3f982b668c3c27e7810815d23cffc57b22466'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
