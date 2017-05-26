class CreateTrackings < ActiveRecord::Migration[5.0]
  def change
    create_table :trackings do |t|
      t.integer :user_id
      t.integer :company_id

      t.timestamps

    end
  end
end
