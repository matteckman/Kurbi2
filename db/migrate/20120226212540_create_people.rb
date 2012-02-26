class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :social_security
      t.date :birthday
      t.string :email
      t.string :password
      t.string :user_name

      t.timestamps
    end
  end
end
