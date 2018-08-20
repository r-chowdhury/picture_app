class User < ApplicationRecord
  has_many :pictures
  has_many :comments, through: :pictures
end
