class RemoveColumnFromItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :seller_id
    remove_column :items, :buyer_id
  end
end
