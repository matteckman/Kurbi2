class AddAuthTokenToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :auth_token, :string
  end
end
