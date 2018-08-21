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
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 7a3d078ca5afc1e86e7f667402e0e2f81406edbd
    #iterate through the pictures.
    #isolate each of them depending on the tag they have.
    #return 10 pictures with that tag that have the most comments.
    new_hash = Hash.new(0)
    PictureTag.all.each do |picture_tag|
      new_hash[picture_tag.tag] += 1 #this gives a hash with a count
    end
    x = new_hash.sort_by {|k,v| v} #x = most common tag
    most_common_tag_object_array = x.last
    most_common_tag_object = most_common_tag_object_array.first

    pictures_with_most_comments = Hash.new(0)
    PictureTag.all.each do |picture_tag|
      new_hash[picture_tag.picture] = picture_tag.picture.comments.length #this gives a hash with a count
    end
    pictures_with_most_comments = pictures_with_most_comments.max_by {|k,v| v}

    pictures_with_trending_tag = PictureTag.all.select {|picture| picture.tag == most_common_tag_object}

    return pictures_with_trending_tag
  end

end
