class CreateSymptomCategories < ActiveRecord::Migration
  def change
    create_table :symptom_categories do |t|
      t.string :category

      t.timestamps
    end
  end
end
