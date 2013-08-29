class Recipe < ActiveRecord::Base
  attr_accessible :ingredients, :method_1, :method_2, :method_3, :method_4, :method_5, :name, :recipe_name, :user_id, :attachment

  belongs_to :user
  has_attached_file :attachment
end
