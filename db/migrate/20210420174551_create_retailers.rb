class CreateRetailers < ActiveRecord::Migration[6.1]
  def change
    create_table :retailers do |t|

      t.timestamps
    end
  end
end
