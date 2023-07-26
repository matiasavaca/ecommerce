class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true,
            uniqueness:true,
            length: { in: 3..15 },
            format: { with: /\A[a-zA-Z0-9_]+\z/, message: :invalid}
  validates :password_digest, length: { minimum: 6 }

  private

  def downcase_attributes
    self.email.downcase!
    self.username.downcase!
  end
end
