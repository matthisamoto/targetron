class CreateDemographics < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
      t.string :percentage
      t.text :description

      t.timestamps
    end
  end
end
