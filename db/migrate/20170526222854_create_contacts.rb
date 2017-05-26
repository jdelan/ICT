class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :role
      t.text :email
      t.string :phone_number
      t.text :notes
      t.integer :company_id
      t.integer :user_id

      t.timestamps

    end
  end
end
