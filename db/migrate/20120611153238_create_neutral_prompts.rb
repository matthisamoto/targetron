class CreateNeutralPrompts < ActiveRecord::Migration
  def change
    create_table :neutral_prompts do |t|
      t.string :copy

      t.timestamps
    end
  end
end
