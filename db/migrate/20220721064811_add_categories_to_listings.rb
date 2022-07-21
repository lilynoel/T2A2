class AddCategoriesToListings < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :category
  end
end
