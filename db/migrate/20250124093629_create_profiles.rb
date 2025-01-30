class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.string :gender
      t.string :matching_gender
      t.string :city
      t.integer :age
      t.integer :matching_min_age
      t.integer :matching_max_age
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :display_name

      t.timestamps
    end
  end
end
