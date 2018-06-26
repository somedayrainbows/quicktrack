class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :company_name
      t.string :phone
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_email
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :postal_code

      t.timestamps
    end
  end
end
