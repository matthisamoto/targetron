class CreateNickCageFilms < ActiveRecord::Migration
  def change
    create_table :nick_cage_films do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
