class AddCategoryIndexToPredefinedSymptoms < ActiveRecord::Migration
  def change
  	add_column :predefined_symptoms, :category_id, :integer, after: :description
  	add_index :predefined_symptoms, :category_id
  end
end
