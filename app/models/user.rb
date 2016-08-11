class User < ApplicationRecord
  validates :first_name, :last_name, :password, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :role, :inclusion => { :in => %{ admin } }, :allow_nil => true
  has_secure_password

  def full_name
    "#{first_name} #{last_name}"
  end
end
