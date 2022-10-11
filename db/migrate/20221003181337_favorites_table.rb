class FavoritesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :genre
      t.integer :rating
      t.string :comments
    end
  end
end
