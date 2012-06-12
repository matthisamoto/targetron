class CreateSpiritAnimals < ActiveRecord::Migration
  def change
    create_table :spirit_animals do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
