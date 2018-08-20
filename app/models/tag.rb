class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags

  def self.most_popular
    x = Tag.all.map do |tag|
      tag.pictures.length
    end

     return x.max
  end
end
