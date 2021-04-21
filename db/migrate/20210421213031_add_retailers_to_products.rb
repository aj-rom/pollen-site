class AddRetailersToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :retailer_id, :integer
  end
end
