Deface::Override.new(:virtual_path => 'spree/admin/products/index',
                     :name => 'add_publish_status_column_to_product_index',
                     :insert_before => '[data-hook="admin_products_index_row_actions"]',
                     :text => "<td class='text-center'><%= publish_status(product) %></td>")
