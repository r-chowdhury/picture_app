class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags

  def self.most_popular
    new_hash = Hash.new(0)
    PictureTag.all.each do |picture_tag|
      new_hash[picture_tag.tag] += 1
    end
    x = new_hash.sort_by {|k,v| v}
    x_reversed = x.reverse
    return [x_reversed[0], x_reversed[1], x_reversed[2]]
  end

  def self.trending
    #Tag from last 10 pictures
    #with most comments
    ordered_pictures = PictureTag.order("created_at DESC").all

  end



end
