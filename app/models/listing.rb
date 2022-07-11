class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_rich_text :description


  enum location: {
    NSW: 1,
    QLD: 2,
    TAS: 3,
    VIC: 4,
    WA: 5,
    SA: 6,
    NT: 7,
    ACT: 8
  }
end
