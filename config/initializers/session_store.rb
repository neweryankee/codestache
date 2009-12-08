# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cucumber-wkshp_session',
  :secret      => 'a0eacb89f7a7009526c0a5c694075384159084de23b321139b179ba690d8c277660971918b840b5984c4ada179d0be28bc50107e7b0814e546ba0fa06c8c0416'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
