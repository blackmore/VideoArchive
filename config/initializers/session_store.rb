# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_videoArchive_session',
  :secret      => '1b9b27c7e68894e8d48588a20aeeb1a802b62fe9646edc86243b89530079f52a41868e33211108eb9bfa26a381b404308f9232b1c7f4784e77b7f5947de12cf5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
