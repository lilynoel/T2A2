class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_rich_text :description
  has_one_attached :picture


  enum location: {
    QLD: 1,
    NSW: 2,
    ACT: 3,
    VIC: 4
  }
end
