class AddImageToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :attachment_file_name, :string
    add_column :recipes, :attachment_content_type, :string
    add_column :recipes, :attachment_file_size, :integer
    add_column :recipes, :attachment_updated_at, :datetime
  end
end
