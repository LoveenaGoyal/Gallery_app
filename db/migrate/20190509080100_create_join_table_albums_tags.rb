class CreateJoinTableAlbumsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_tags do |t|
      t.integer :album_id
      t.integer :tag_id
    end
  end
end
