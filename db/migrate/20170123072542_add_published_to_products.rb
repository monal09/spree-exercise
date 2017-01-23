class AddPublishedToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :published, :boolean, default: true, index: true
  end
end
