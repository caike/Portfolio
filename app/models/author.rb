class Author < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessible :email, :password, :password_confirmation

  validates :password, presence: true, confirmation: true
  validates :email, presence: true, uniqueness: true

  has_many :talks
end
