class CreateRetailers < ActiveRecord::Migration[6.1]
  def change
    create_table :retailers do |t|
      t.belongs_to :user
      t.string :name, unique: true
      t.text :description

      t.timestamps
    end
  end
end
