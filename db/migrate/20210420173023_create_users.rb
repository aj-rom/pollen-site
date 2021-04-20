class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :email
      t.integer :uid
      t.text :provider
      t.timestamps
    end
  end
end
