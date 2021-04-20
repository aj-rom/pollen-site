class CreateProductReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :product_reviews do |t|
      t.belongs_to :user
      t.belongs_to :product
      t.text :description
      t.integer :rating
      t.timestamps
    end
  end
end
