class AddDescriptionToSymptomCategories < ActiveRecord::Migration
  def change
  	add_column :symptom_categories, :category_description, :text, after: :category
  end
end
