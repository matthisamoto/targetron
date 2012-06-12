class CreateNegativePrompts < ActiveRecord::Migration
  def change
    create_table :negative_prompts do |t|
      t.string :copy

      t.timestamps
    end
  end
end
