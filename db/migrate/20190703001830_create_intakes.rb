class CreateIntakes < ActiveRecord::Migration[5.2]
  def change
    create_table :intakes do |t|
      t.integer :Calories
      t.integer :Carbs
      t.integer :Fat
      t.integer :Protein
      t.integer :Sodium
      t.integer :Sugar

      t.timestamps
    end
  end
end
