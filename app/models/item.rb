class Item < ActiveRecord::Base
  belongs_to :category
  has_many :line_items
  has_many :carts, through: :line_items

  def self.available_items
    self.where("inventory > 1")
  end

  def item_price
    self.price.to_f
  end
end
