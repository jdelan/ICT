class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.text :url
      t.string :tag
      t.text :title
      t.integer :company_id
      t.date :date
      t.integer :user_id

      t.timestamps

    end
  end
end
