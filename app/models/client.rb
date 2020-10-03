class Client < ApplicationRecord
  include Authenticatable

  validates :email, :fullname, :phone, presence: true
end
