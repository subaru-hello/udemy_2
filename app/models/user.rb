# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_name  (name) UNIQUE
#
class User < ApplicationRecord
  has_secure_password
  VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{8,16}\z/
  validates :name,
    presence: true,
    uniqueness: true,
    length: {maximum: 16},
    format: {
     with: /\A[a-z0-9]+\z/, 
     message: 'は小文字英数字で入力してください'

    }
     validates :password,
     presence: true,
      length: { minimum: 8},
      format: {
        with: VALID_PASSWORD_REGEX,
        message: 'は半角6~12文字英大文字・小文字・数字それぞれ１文字以上含む必要があります'
   
       }
end
