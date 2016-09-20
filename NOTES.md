User:
  has_many :carts
  columns - email, password, role

Cart:
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items
  columns - user_id:integer, status:string

Item:
  belongs_to :category
  columns - category_id:integer, inventory:integer, title:string

LineItem
  belongs_to :cart
  belongs_to :item
  columns - quantity:integer, default: 1, cart_id:integer, item_id:integer

Category
  has_many :items
  Columns - title:string
