class CreateMustHaves < ActiveRecord::Migration
  def change
    create_table :must_haves do |t|
      t.string :item
      t.string :url

      t.timestamps
    end
  end
end
