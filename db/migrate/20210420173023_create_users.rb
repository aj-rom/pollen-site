class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :email
      t.integer :uid
      t.text :provider
      t.string :password_digest
      t.boolean :admin, default: false
      t.timestamps
    end
  end
end
