class User < ApplicationRecord

  before_save { self.email = email.downcase if email.present? }

  validates :password, length: { minimum: 4 }, allow_nil: true

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

  has_many :json_client_states

  has_secure_password
end
