class CreateUserProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :user_profiles do |t|
      t.string     :username, null: false
      t.references :user_account, null: false, foreign_key: true

      t.timestamps
    end
    add_index :user_profiles, :username, unique: true
  end
end
