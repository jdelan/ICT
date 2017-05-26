class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.text :name
      t.text :description
      t.string :tags
      t.string :hq_address
      t.boolean :active_business
      t.integer :user_id

      t.timestamps

    end
  end
end
