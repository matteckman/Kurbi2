class AddSymptomCategoryToPredefinedSymptoms < ActiveRecord::Migration
  def change
  add_column :predefined_symptoms, :symptom_category, :string, after: :description
  
  end
end
