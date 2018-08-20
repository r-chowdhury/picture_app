class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :image_url
      t.string :title
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
