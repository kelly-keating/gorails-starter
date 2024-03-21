# email: string
# password_digest: string

#  v-- not stored in db, but used by bcrypt to confirm and then make digest
# password: string virtual
# password_confirmation: string virtual

# rails c
# user = User.create({email: "kelly", password: 'hi', password_confirmation: "hi" })
# user.errors.any?

# rails db:migrate
# rails db:rollback
# rails db:migrate:redo    <-- is the combo rollback & latest

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email" }
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'invalid email address provided' }
end
