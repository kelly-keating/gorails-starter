# email: string

# v-- we don't touch this hash ourselves
# password_digest: string

#  v-- not stored in db, but used by bcrypt to confirm and then make digest
# password: string virtual
# password_confirmation: string virtual

class User < ApplicationRecord
  has_secure_password
end
