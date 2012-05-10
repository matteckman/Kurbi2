class CreateIpAddresses < ActiveRecord::Migration
  def change
    create_table :ip_addresses do |t|
      t.string :ip
      t.integer :patient_id

      t.timestamps
    end
  end
end
