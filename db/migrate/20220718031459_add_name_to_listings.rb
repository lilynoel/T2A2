class AddNameToListings < ActiveRecord::Migration[6.1]
  def change
    # add_column :listings, :name, :string
    add_reference :listings, :name, foreign_key: true
  end
end
