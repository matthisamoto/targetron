class CreateAudiences < ActiveRecord::Migration
  def change
    create_table :audiences do |t|
      t.text :description

      t.timestamps
    end
  end
end
