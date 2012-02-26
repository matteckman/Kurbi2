class CreateSystemErrors < ActiveRecord::Migration
  def change
    create_table :system_errors do |t|
      t.string :error
      t.text :description

      t.timestamps
    end
  end
end
