# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_votaro_session',
  :secret      => 'ac1c488d7ffa7b7ae718a2f751d5fa250abca968d95f7fc5bb579114b8b2c669b293dc321183a5ccdc75df93626b7780c7ea4cbc9ac9fc94ac662f8e19a8cd4e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
