class CreateCompanyComments < ActiveRecord::Migration[5.0]
  def change
    create_table :company_comments do |t|
      t.text :comment
      t.integer :company_id
      t.integer :user_id

      t.timestamps

    end
  end
end
