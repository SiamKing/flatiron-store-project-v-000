class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :inventory
      t.string :title
      t.belongs_to :category, index: true
      t.timestamps
    end
  end
end
