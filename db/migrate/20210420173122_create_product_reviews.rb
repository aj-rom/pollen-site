class CreateProductReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :product_reviews do |t|
      t.belongs_to :user
      t.belongs_to :product
      t.timestamps
    end
  end
end
