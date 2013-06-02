class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.integer :user_id
      t.string :name
      t.text :method_1
      t.text :method_2
      t.text :method_3
      t.text :method_4
      t.text :method_5
      t.text :ingredients

      t.timestamps
    end
  end
end
