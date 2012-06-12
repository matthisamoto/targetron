class CreateDescriptors < ActiveRecord::Migration
  def change
    create_table :descriptors do |t|
      t.string :copy

      t.timestamps
    end
  end
end
