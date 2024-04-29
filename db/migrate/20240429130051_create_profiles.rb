class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string     :username, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :profiles, :username, unique: true
  end
end
