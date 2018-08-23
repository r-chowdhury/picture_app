class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :picture_tags
  has_many :tags, through: :picture_tags
  def name=(name)

    this_tag = self.tags.create(name: name)

  end
  # accepts_nested_attributes_for :tags
end
